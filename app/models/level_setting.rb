class LevelSetting < ApplicationRecord
  attr_accessor :set_character
  belongs_to :character

  # def define_thresold
  #   thresold = LevelSetting.find(1)
  # end

  def level_up
    @threshold = @character.LevelSetting.thresold
    when @thresold =< @character.character_exp
      @character.level += 1
      @thresold.thresold += 1
      if @character.level == 30 #(キャラクターによって進化するレベルが異なる場合、変数にする)
        flash.now[:notice] = "進化したよー"
      end
    end
  end
end
