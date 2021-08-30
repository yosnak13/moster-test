class Character < ApplicationRecord
  belongs_to :user

  def level_up
    # @character = Character.find(params[:id])
    totalExp = @character.character_exp

    levelSetting = LevelSetting.find_by(level: @character.character_level + 1)

    if levelSetting.thresold <= totalExp
      @character.level += 1
      @character.update(level: @character.level)
    end
  end
end
