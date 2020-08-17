class MainSceneController < ApplicationController

  def new
  end

  
  def create
    @word = params[:word]
    render action: 'new'
  end



  private 
  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:word)
  end
end
