class Product < ActiveRecord::Base
  attr_accessible :name, :description, :master_product_id
  has_ancestry

  belongs_to :master_product, class_name: "Product"
  has_many :sub_products, class_name: "Product", foreign_key: "master_product_id"

  def is_master?
  	master_product_id == nil or master_product_id == ''
  end

  def is_sub_product?
  	master_product_id != nil
  end
end