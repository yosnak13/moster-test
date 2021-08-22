class CreateLevelSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :level_settings do |t|
      t.integer :level, default: 1, null: false
      t.integer :thresold, default: 100, null: false

      t.timestamps
    end
  end
end
