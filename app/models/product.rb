class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :category_id

  belongs_to :category
  belongs_to :quantity

end