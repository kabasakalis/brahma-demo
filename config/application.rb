require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
     I18n.available_locales = [:el, :en]
      config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
      config.i18n.default_locale = :en

    #config.autoload_paths += %W(#{config.root}/app/concerns)
      config.autoload_paths += [
    config.root.join('app')
     ]
  config.autoload_paths << Rails.root.join('lib')
  Rails.application.config.autoload_paths += %W(#{config.root}/app/models/ckeditor)

config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
#config.autoload_paths += %W(#{config.root}/app/concerns)

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

 console do
      ARGV.push "-r", root.join("lib/console.rb")
    end

    # # Enable the asset pipeline
    # config.assets.enabled = true
    # # Version of your assets, change this if you want to expire all your assets
    # config.assets.version = '1.0'

    # # Bower asset paths
    # root.join('vendor', 'assets', 'components').to_s.tap do |bower_path|
    #   config.sass.load_paths << bower_path
    #   config.assets.paths << bower_path
    # end

    #  config.assets.paths << "#{Rails.root}/app/assets/images/metronic"
    # config.autoload_paths += [
    #   config.root.join('app')
    # ]


    # # Precompile Bootstrap fonts
    # config.assets.precompile << %r(bootstrap-sass-official/assets/fonts/bootstrap/[\w-]+\.(?:eot|svg|ttf|woff)$)
    # # Minimum Sass number precision required by bootstrap-sass
    # ::Sass::Script::Number.precision = [10, ::Sass::Script::Number.precision].max



  end
end
