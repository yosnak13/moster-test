class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :character_type
      t.integer :character_level, defalut: 1
      t.integer :character_exp, defalut: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
