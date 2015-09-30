# ruby libraries
require "slop"

# very special things
require "tinkerbot/version"

# long-winded terminal print outs
require "tinkerbot/notify"

# hey look, actual code
require "tinkerbot/config"
require "tinkerbot/git"
require "tinkerbot/middleman"

module Tinkerbot
  opts = Slop.parse do |o|
    # o.string "-h", "--host", "a hostname"
    # o.integer "--port", "custom port", default: 80
    # o.bool "-v", "--verbose", "enable verbose mode"
    # o.bool "-q", "--quiet", "suppress output (quiet mode)"
    # o.bool "-c", "--check-ssl-certificate", "check SSL certificate for host"
    o.on "-v", "version", "print the version" do
      puts VERSION
      exit
    end

    o.on "config", "configure tinkerbot to a new project" do
      Config.init
    end

    o.on "help", "-help", "-h", "help me oh god HOW DOES THIS WORK" do
      Notify::Tinkerbot.help
      puts o
    end
  end
end
