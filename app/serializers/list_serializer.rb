class ListSerializer < ActiveModel::Serializer
  has_many :events
  attributes :id, :name
end
