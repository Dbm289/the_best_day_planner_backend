class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :event_start, :event_end, :detail
  belongs_to :list
end
