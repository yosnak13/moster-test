class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :character_type
      t.integer :character_level
      t.integer :character_exp
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
