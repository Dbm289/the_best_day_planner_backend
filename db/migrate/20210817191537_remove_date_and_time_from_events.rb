class RemoveDateAndTimeFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :date, :string
    remove_column :events, :time, :string
  end
end
