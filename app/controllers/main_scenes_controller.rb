class MainScenesController < ApplicationController

  def index
    @@word = ''
    @sa = "#{@@word} fdsf"
  end

  def new
  end

  
  def create

    #проверяем что информация передаётся в контроллер и к ней есть доступ
    # render plain: main_scene_params.inspect


    @@word = main_scene_params
    render action: 'index'

  end

  def show
    # @sa == @@word
  end



  private 
  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:word)
  end

end
