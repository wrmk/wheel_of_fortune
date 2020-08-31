class MainScenesController < ApplicationController

  def init_table
    #проверка загадано ли слово, если да 
    if defined?(@@secret_word) then
      #удаляем пробелы и ентер и создаем массив букв
      @table = @@secret_word.chomp.gsub(/ /,'').split(//)
      #создаем хэш с 
      @table_hash = {}
      @table.each do |c|
        @table_hash[c] = 'X'
      end
    
    else
      @table = ''
    end
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

  def update
    @char = main_scene_params[:char]
  end



  private 
  #какие параметры можно тянуть со страниц
  def main_scene_params
    params.require(:main_scene).permit(:secret_word, :char)
  end

end
