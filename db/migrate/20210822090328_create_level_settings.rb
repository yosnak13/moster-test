class CreateLevelSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :level_settings do |t|
      t.integer :level, default: 1, null: false
      t.integer :thresold, default: 100, null: false
      t.references :character, foreign_key: :true
      t.timestamps
    end
  end
end
