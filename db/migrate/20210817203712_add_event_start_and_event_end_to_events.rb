class AddEventStartAndEventEndToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_start, :datetime
    add_column :events, :event_end, :datetime
  end
end
