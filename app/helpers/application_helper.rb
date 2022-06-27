module ApplicationHelper
  
  def contentful
    @client ||= Contentful::Client.new(
      access_token: ENV['85QLSeAynKRB0vvA7zOK-DthZkQIvj75Os4C6ClEd4g'],
      space: ENV['a85lv0q5pkmu'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
