require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
#set template for rails_admin
ENV['RAILS_ADMIN_THEME'] = 'rollincode'

module PresalePlatform
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    Rails.application.config.autoload_paths << Rails.root.join('app/services', '*.rb')
    Rails.application.config.autoload_paths += Dir[File.join(Rails.root, 'lib', '*.rb')].each {|l| require l }
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
