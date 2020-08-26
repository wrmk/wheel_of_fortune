class MainScenesController < ApplicationController

  def init_secret_word
    #проверка загадано ли слово, если да, создавать на форме табло
    defined?(@@word) ? @secret_word = "#{@@word}" : @secret_word = ''
    @table = @secret_word.split(//)

  end

  def new
  end

  
  def create

    #проверяем что информация передаётся в контроллер и к ней есть доступ
    # render plain: main_scene_params.inspect


    @@word = main_scene_params[:word]

    init_secret_word

    render action: 'show'

  end

  def show

    init_secret_word
    
  end



  private 
  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:word)
  end

end
