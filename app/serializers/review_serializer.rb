class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :name, :description
end
