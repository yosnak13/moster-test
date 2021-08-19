class Character < ApplicationRecord
  belongs_to :user

  def current_exp
    @current_exp = @character.character.exp
  end

  def sum_exp # カラムを足し算したい
    @current_exp + params[:character_exp]
  end

  def sample_exp
    {:character_exp => sum_exp}
  end
end
