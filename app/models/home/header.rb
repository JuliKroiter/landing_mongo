class Home::Header
  include Mongoid::Document

  field   :img,  type: String
  field :title,  type: String
  field :desc,   type: String
  field :button, type: String

  field :title_style,  type: Hash, default: {}
  field :desc_style,   type: Hash, default: {}
  field :btn_style,    type: Hash, default: {}

  mount_uploader :img, ImageUploader
end