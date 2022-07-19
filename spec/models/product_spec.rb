require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {Product.new(name: "Shailaja", price: "230", quantity: "2" , image_url: "img.jpg")}

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:image_url) }

 
  it { should have_many(:line_items) }
end
