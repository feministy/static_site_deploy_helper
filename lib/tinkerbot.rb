# ruby libraries
require "slop"

# very special things
require "tinkerbot/version"

# hey look, actual code
require "tinkerbot/config"
require "tinkerbot/git"
require "tinkerbot/middleman"

module Tinkerbot
  opts = Slop.parse do |o|
    o.on '--version', '-v', '--v', 'print the version' do
      puts VERSION
      exit
    end
  end
end
