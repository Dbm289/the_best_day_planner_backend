class Event < ApplicationRecord
  belongs_to :list, optional: true
end
