#!/usr/bin/env ruby

require "logger"
require "optparse"

Options = Struct.new(:sink)

def logger
  @logger ||= Logger.new(STDOUT)
end

def parse(args)
  options = Options.new

  parser = OptionParser.new do |opts|
    opts.banner = "Usage: [options]"

    opts.separator ""
    opts.separator "Specific options:"

    opts.on("-s", "--sink SINK", "Pulseaudio sink index (pacmd --list-sinks)") do |index|
      options.sink = index
    end

    opts.separator ""
    opts.separator "Common options:"

    opts.on_tail("-h", "--help", "Show this message") do
      puts opts
      exit
    end
  end

  parser.parse!(args)

  if options.sink.nil?
    abort("Missing --sink argument")
  end

  options
end

def set_default_sink(options)
  system("pacmd set-default-sink #{options.sink}")
end

def reroute_inputs(options)
  sink_inputs.each do |input_index|
    system("pacmd move-sink-input #{input_index} #{options.sink}")
  end
end

def sink_inputs
  output = `pacmd list-sink-inputs | grep index`.split("\n")
  output.map { |sink| sink.gsub(/.*index: (\d+)\Z/, '\1').strip }
end

options = parse(ARGV)

logger.info("Setting sink to #{options.sink}")
set_default_sink(options)
reroute_inputs(options)

