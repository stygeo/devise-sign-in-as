require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module ApplicationName
  class Application < Rails::Application
		config.autoload_paths += %W(#{config.root}/lib/sign_in_as)
  end
end
