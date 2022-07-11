class Order < ApplicationRecord
has_many :line_items 
belongs_to :user

# def final_price
#   self.quantity * self.product.price
#   end
end
