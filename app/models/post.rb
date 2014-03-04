class Post < ActiveRecord::Base
  has_many :comentarios

  accepts_nested_attributes_for :comentarios
end
