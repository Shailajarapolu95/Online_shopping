class Product < ApplicationRecord
    mount_uploader :image_url , ImageUrlUploader # Tells rails to use this uploader for this model.
    validates_presence_of :name, :price, :quantity, :image_url 
   
    has_many :line_items
    
end