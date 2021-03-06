require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module EitaFAQApi
  class Application < Rails::Application
    config.api_only = true

    config.middleware.insert_before 0, Rack::Cors do
     allow do
       origins '*'
       resource '*',
         headers: :any,
         methods: %i(get options head)
     end
    end
    
    config.middleware.use Rack::Attack
  end
end
