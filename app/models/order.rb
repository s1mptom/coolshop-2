class Order < ActiveRecord::Base

  has_many :order_products

  attr_accessible :comment, :email, :name, :phonenumber, :order_products_attributes

  accepts_nested_attributes_for :order_products

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  :presence => true,
            :length   => { :maximum => 50 }

  validates :email, :presence => true,
            :format   => { :with => email_regex }

  validates :phonenumber, :presence => true

  def items_from_product_ids(product_ids)
    product_ids.present? && product_ids.each do |product_id|
      self.order_products.build(product_id: product_id)
    end
  end
end
