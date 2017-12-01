class Home::About
  include Mongoid::Document

  field :title,  type: String
  field :desc,   type: String
  field :button, type: String

  field :title_style,  type: Hash, default: {}
  field :desc_style,   type: Hash, default: {}
  field :btn_style,    type: Hash, default: {}
end