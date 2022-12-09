class Product < ApplicationRecord
    # has_many :reviews
    has_many :users, through: :reviews
    # belongs_to :user
    has_many :reviews, dependent: :destroy
    
    validates :name, presence: true
    # validates :user_id, presence: true
    
end
