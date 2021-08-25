# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.create!(
  [
    {
      character_name: 'モブ1',
      character_type: '0',
      character_level: '1',
      character_exp: '0',
      user_id: 1,
    },
    {
      character_name: 'モブ2',
      character_type: '0',
      character_level: '1',
      character_exp: '0',
      user_id: 1,
    },
    {
      character_name: 'モブ3',
      character_type: '0',
      character_level: '1',
      character_exp: '0',
      user_id: 1,
    }
  ]
)

# LevelSetting.create!(
#   [
#     {
#       level: 1,
#       thresold: 100,
#       character_id: 1,
#     }
#   ]
# )
 LevelSetting.create(:level => 1, :thresold => 100, :character_id => 1)
