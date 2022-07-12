class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  include ContentfulRenderable

  self.space_id = YOUR_SPACE_ID
  self.access_token = YOUR_ACCESS_TOKEN
  self.content_type_id = YOUR_CONTENT_TYPE_ID
end
