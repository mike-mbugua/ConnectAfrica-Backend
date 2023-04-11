class TourSerializer < ActiveModel::Serializer
  attributes :id ,:image, :title, :city, :distance, :price, :maxGroupSize, :description, :rating, :featured
end
