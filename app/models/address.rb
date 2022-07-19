class Address < ApplicationRecord
    validates_presence_of :address_line_1, :address_line_2, :city, :state, :zip
    belongs_to :user
    has_many :orders
end
