class Home::Block
  include Mongoid::Document

  field :icon, type: String
  field :img,    type: String
  field :title,  type: String
  field :desc,   type: String
  field :button, type: String

  field :title_style,  type: Hash, default: {}
  field :desc_style,   type: Hash, default: {}
  field :btn_style,    type: Hash, default: {}

  belongs_to :nested_block, polymorphic: true

  mount_uploader :img, ImageUploader
end