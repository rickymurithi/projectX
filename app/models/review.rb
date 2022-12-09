class Review < ApplicationRecord
    # has_many :users
    # has_many :reviews, through: :users
    belongs_to :user
    belongs_to :product


    validates :user, presence: true
    validates :name, presence: true

    # belongs_to :user
    # belongs_to :product
end
