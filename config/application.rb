require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BcwWebsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    require 'contentful'

client = Contentful::Client.new(
  space: 'a85lv0q5pkmu',  # This is the space ID. A space is like a project folder in Contentful terms
  access_token: '85QLSeAynKRB0vvA7zOK-DthZkQIvj75Os4C6ClEd4g'  # This is the access token for this space. Normally you get both ID and the token in the Contentful web app
)
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
