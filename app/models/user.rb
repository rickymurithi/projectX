class User < ApplicationRecord
    has_secure_password
    has_many :products
    has_many :reviews


    validates :username, presence: true
    validates :password, presence: true
    
end
