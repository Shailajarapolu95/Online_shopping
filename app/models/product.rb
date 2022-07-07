class Product < ApplicationRecord
    mount_uploader :image_url , ImageUrlUploader # Tells rails to use this uploader for this model.
    has_many :line_items
end
