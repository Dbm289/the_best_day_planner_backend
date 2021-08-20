class RemoveEventTimeFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :event_time, :datetime
  end
end
