class Character < ApplicationRecord
  belongs_to :user

  def level_up
    totalExp = @character.character_exp
    levelSetting = LevelSetting.find_by(level: @character.character_level)

    if levelSetting.thresold <= totalExp
      @character.character_level += 1
      @character.update(character_level: @character.character_level)
      @character.save
      binding.pry
    else
      @character.save
    end
  end
end
