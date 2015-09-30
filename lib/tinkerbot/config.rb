module Tinkerbot
  module Config
    extend self

    # kicks off allthethings
    def init
      detect_project
      project = Notify::Config.get_project_type
      if project.class == "Tinkerbot::Middleman"
        # do a thing
      end
    end

    def detect_project
      # check if a current project exists
    end
  end
end