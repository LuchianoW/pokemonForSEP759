require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module A3
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    config.action_controller.default_url_options = {
      host: 'pokemonforsep759.onrender.com',
      protocol: 'https'
    }
    config.action_mailer.default_url_options = {
      host: 'pokemonforsep759.onrender.com',
      protocol: 'https'
    }
  end
end
