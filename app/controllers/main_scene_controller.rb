class MainSceneController < ApplicationController

  def new
  end

  
  def create
    @word = params[:word]
  end


  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:word)
  end
end
