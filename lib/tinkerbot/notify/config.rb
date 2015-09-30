module Tinkerbot
  module Notify
    module Config
      extend self

      def get_project_type
        puts "what type of project are you working on?"
        print "middleman? Y/n > "
        middleman = STDIN.gets.chomp
        return Middleman.new if middleman == 'Y'
        puts ""
        print "compass? Y/n > "
        print "static folder? Y/n > "
        puts "you don't appear to have selected a supported project type."
      end
    end
  end
end