class AddAncestryToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :ancestry, :string
  	add_index :products, [:ancestry], :name => 'products_index'
  end
end
