class Product < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :master_product, class_name: "Product"
  has_many :sub_products, class_name: "Product", foreign_key: "master_product_id"
end
