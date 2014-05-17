require File.expand_path('../boot', __FILE__)

# We manually include all rails requirements *except* active_record
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module RedSteelSite
  class Application < Rails::Application
    config.time_zone = 'Central Time (US & Canada)'
    config.assets.precompile += %w(
      modernizr.min.js
      feature_tests.js
      loading_indicator_ie.js
      foundation_setup.js
    )
  end
end
