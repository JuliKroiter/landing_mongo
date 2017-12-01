class Home::Portfolio
  include Mongoid::Document

  has_many :blocks, as: :nested_block, class_name: 'Home::Block', dependent: :destroy
end