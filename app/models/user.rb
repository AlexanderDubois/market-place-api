class User < ApplicationRecord
    has_many :products
    
    validates :email, uniqueness: true
    validates :email, presence: true
    validates :name, presence: true

    has_secure_password
end
