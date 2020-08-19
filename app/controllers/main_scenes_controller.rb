class MainScenesController < ApplicationController

  def new
  end

  
  def create
    # @@word = params[:word]
    # render action: 'index'

    render plain: params[:word].inspect
  end

  def show
      @sa == @@word
  end



  private 
  #какие параметры можно тянуть со страниц
  # def main_scene_params
  #   params.require(:main_scene).permit(:word)
  # end

end
