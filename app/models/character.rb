class Character < ApplicationRecord
  belongs_to :user

  def level_up
    @character = Character.find(1) #変更必要
    totalExp = @character.character_exp
    levelSetting = LevelSetting.find_by(level: @character.character_level)

    if levelSetting.thresold <= totalExp
      @character.character_level += 1
      @character.update(character_level: @character.character_level)
      @character.save
    else
      @character.save
    end
  end

  def next_level #今のレベルから次のレベルまでに必要な経験値を計算したい
    current_level = LevelSetting.find_by(level: @character.character_level)
    current_thresold =
  end

  # for i in 1..levelSetting.id do #レベル
  #   puts i
  # end
end
