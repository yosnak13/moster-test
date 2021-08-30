class CharactersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_character, only: [:show, :edit, :update, :level_up]
  before_action :need_exp, only: [:index, :show, :edit, :update]

  def index
    @characters = Character.all
  end

  def show
  end

  def edit
  end

  def update
    @current_exp = @character.character_exp
    if @character.update(post_params)
      @character.increment(:character_exp, @current_exp)
      @character.save
      @character.level_up
      redirect_to character_path
    else
      redirect_to edit_character_path
    end
  end

  # def level_up
  #   totalExp = @character.character_exp

  #   levelSetting = LevelSetting.find_by(level: character.level + 1)

  #   if levelSetting.thresold <= totalExp
  #     character.level = @character.level + 1
  #     character.update(level: @character.level)
  #   end
  # end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def need_exp
    @level_setting = LevelSetting.first
    @needed_exp = @level_setting.thresold -  @character.character_exp
  end

  def post_params
    params.require(:character).permit(:character_exp)
  end
end
