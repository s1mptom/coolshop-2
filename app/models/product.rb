class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :category_id, :img
  belongs_to :category
end
