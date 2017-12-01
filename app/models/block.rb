class Block
  include Mongoid::Document

  field :name,      type: String
  field :bg_img,    type: String

  mount_uploader :bg_img, ImageUploader
end