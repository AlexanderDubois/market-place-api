class Product < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :product_images
end
