#!/usr/bin/env ruby

HEADPHONES_SINK="0"
SPEAKERS_SINK="1"

def current_sink
  `pacmd list-sinks | grep '* index' | awk '{print $3}'`.strip
end

def switch(sink)
  system("~/dotfiles/scripts/audio-switch.rb --sink #{sink}")
end

case current_sink
when HEADPHONES_SINK then switch(SPEAKERS_SINK)
when SPEAKERS_SINK then switch(HEADPHONES_SINK)
end
