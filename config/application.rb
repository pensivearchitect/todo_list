require_relative 'boot'

require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
# require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module TodoList
  # configure the application
  class Application < Rails::Application
    config.load_defaults 5.2
    config.active_job.queue_adapter = :sucker_punch
  end
end
