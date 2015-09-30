module Tinkerbot
  class Config
    def initialize
      detect_project
      @store = YAML::Store.new("tinkerbot_config.yml")
      @project = Notify::Config.get_project_type
    end

    def detect_project
      # check if a current project exists
    end

    def save
      # @store.transaction do |store|
      #   store['hello'] = "hello"
      # end
    end
  end
end