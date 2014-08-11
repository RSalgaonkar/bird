require 'rails_helper'

RSpec.describe Product, :type => :model do
  it { should belong_to(:master_product) }
  it { should have_many(:sub_products) }
end