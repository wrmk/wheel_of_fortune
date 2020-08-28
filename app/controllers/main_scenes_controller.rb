class MainScenesController < ApplicationController

  def init_table
    #проверка загадано ли слово, если да, создавать на форме табло
    #с удалением пробелов и ентер
    defined?(@@secret_word) ? @table = @@secret_word.chomp.gsub(/ /,'').split(//) : @table = ''
    

  end

  def new
  end

  
  def create

    #проверяем что информация передаётся в контроллер и к ней есть доступ
    # render plain: main_scene_params.inspect


    @@secret_word = main_scene_params[:secret_word]

    init_table

    render action: 'show'

  end

  def show

    init_table
    
  end



  private 
  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:secret_word)
  end

end
