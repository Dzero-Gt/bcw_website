module ContentfulRenderable
  extend ActiveSupport::Concern

  def self.included(base)
    base.extend(ClassMethods)
  end

  # Overridable
  # Override this method to change the parameters set for your Contentful query on each specific model
  # For more information on queries you can look into: https://www.contentful.com/developers/docs/references/content-delivery-api/#/reference/search-parameters
  def render
    self.class.client.entries(content_type: self.class.content_type_id, include: 2, "sys.id" => contentful_id).first
  end

  module ClassMethods
    def client
      @client ||= Contentful::Client.new(
        access_token: '85QLSeAynKRB0vvA7zOK-DthZkQIvj75Os4C6ClEd4g',
        space: 'a85lv0q5pkmu',
        dynamic_entries: :auto,
        raise_errors: true
      )
    end

    # Overridable
    # Override this method to change the parameters set for your Contentful query on each specific model
    # For more information on queries you can look into: https://www.contentful.com/developers/docs/references/content-delivery-api/#/reference/search-parameters
    def render_all
      client.entries(content_type: content_type_id, include: 2)
    end
  end
end