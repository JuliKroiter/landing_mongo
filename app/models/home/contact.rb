class Home::Contact
  include Mongoid::Document

  field :title,type: String
  field :desc, type: String

  field :title_style,  type: Hash, default: {}
  field :desc_style,    type: Hash, default: {}

  has_many :blocks, as: :nested_block, class_name: 'Home::Block', dependent: :destroy
end