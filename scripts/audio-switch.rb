#!/usr/bin/env ruby

HEADPHONES_SINK="0"
SPEAKERS_SINK="1"

NAMES = {
  "0" => "Headphones",
  "1" => "Speakers",
}

ICONS = {
  "0" => "",
  "1" => "",
}

require "logger"
require "optparse"

Options = Struct.new(:current, :toggle, :sink)

def logger
  @logger ||= Logger.new(STDOUT)
end

def parse(args)
  options = Options.new(false, false, nil)

  parser = OptionParser.new do |opts|
    opts.banner = "Usage: [options]"

    opts.separator ""
    opts.separator "Specific options:"

    opts.on("-c", "--current", "Display current sink") do |_|
      options.current = true
    end

    opts.on("-s", "--sink SINK", "Pulseaudio sink index (pacmd --list-sinks)") do |sink|
      options.sink = sink
    end

    opts.on("-t", "--toggle", "Toggle between speakers and headphones") do |_|
      options.toggle = true
    end

    opts.separator ""
    opts.separator "Common options:"

    opts.on_tail("-h", "--help", "Show this message") do
      puts opts
      exit
    end
  end

  parser.parse!(args)

  if options.current == false && options.toggle == false && options.sink.nil?
    abort("You must provide at least one flag. --help for more details.")
  end

  options
end

def current_sink
  `pacmd list-sinks | grep '* index' | awk '{print $3}'`.strip
end

def display_current_sink
  puts [ICONS[current_sink], NAMES[current_sink]].compact.join(" ")
end

def toggle_sink
  case current_sink
  when HEADPHONES_SINK then set_default_sink(SPEAKERS_SINK)
  when SPEAKERS_SINK then set_default_sink(HEADPHONES_SINK)
  end
end

def set_default_sink(sink)
  logger.info("Setting sink to #{sink}")
  system("pacmd set-default-sink #{sink}")
  reroute_inputs(sink)
end

def reroute_inputs(sink)
  sink_inputs.each do |input_index|
    system("pacmd move-sink-input #{input_index} #{sink}")
  end
end

def sink_inputs
  output = `pacmd list-sink-inputs | grep index`.split("\n")
  output.map { |sink| sink.gsub(/.*index: (\d+)\Z/, '\1').strip }
end

options = parse(ARGV)

display_current_sink if options.current
toggle_sink if options.toggle
set_default_sink(options.sink) unless options.sink.nil?
