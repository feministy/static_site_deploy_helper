module Tinkerbot
  module Notify
    module Tinkerbot
      extend self

      def help
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
      end
    end
  end
end