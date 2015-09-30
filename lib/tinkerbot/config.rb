module Tinkerbot
  class Config
    extend self

    # kicks off allthethings
    def initialize
      detect_project
      @store = YAML::Store.new("tinkerbot_config.yml")
      @project = Notify::Config.get_project_type
    end

    def detect_project
      # check if a current project exists
    end
  end
end