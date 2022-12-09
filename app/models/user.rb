class User < ApplicationRecord
    has_secure_password
    has_many :products
    has_many :reviews, through: :products


    validates :username, presence: true
    validates :password, presence: true
    
end
