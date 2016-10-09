class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def next
    Product.where("id > ?", id).limit(1).first
  end

  def prev
    Product.where("id < ?", id).limit(1).first
  end
end
