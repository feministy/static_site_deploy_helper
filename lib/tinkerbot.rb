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
  end

  Slop.parse do |o|
    o.on "help", "-help", "-h", "help me oh god HOW DOES THIS WORK" do
      puts "#{'-' * 70}"
      puts "* ~ * ~ * TINKERBOT!! * ~ * ~ *"
      puts "oh hey, so you want to see how tinkerbot works?"
      puts ""
      puts ">> GETTING STARTED:"
      puts "run the following command in terminal:"
      puts "$ tinkerbot config"
      puts "and follow the on-screen prompts."
      puts ""
      puts ">> MORE HELP:"
      puts "more comprehensive documentation can be found on github:"
      puts "https://github.com/feministy/tinkerbot"
      puts ""
      puts ">> OPTIONS:"
      puts "all passed options are conveniently printed below."
      puts "#{'-' * 70}"
      puts opts
    end
  end
end
