module ApplicationHelper
  

  def contentful
    @client ||= Contentful::Client.new(
      space: 'a85lv0q5pkmu',
      access_token: '85QLSeAynKRB0vvA7zOK-DthZkQIvj75Os4C6ClEd4g',
      dynamic_entries: :auto,
      raise_errors: true
    )

    
  end
end
