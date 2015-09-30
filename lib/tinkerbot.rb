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
    o.string '-h', '--host', 'a hostname'
    o.integer '--port', 'custom port', default: 80
    o.bool '-v', '--verbose', 'enable verbose mode'
    o.bool '-q', '--quiet', 'suppress output (quiet mode)'
    o.bool '-c', '--check-ssl-certificate', 'check SSL certificate for host'
    o.on '--version', 'print the version' do
      puts Slop::VERSION
      exit
    end
  end
end
