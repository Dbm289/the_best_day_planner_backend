class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :detail
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
