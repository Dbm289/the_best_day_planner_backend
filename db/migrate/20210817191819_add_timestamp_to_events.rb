class AddTimestampToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_time, :datetime
  end
end
