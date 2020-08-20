Rails.application.routes.draw do
  root to: "main_scenes#show" # попадание по умолчанию на эту страницу

  resource :main_scenes #создаём REST пути
  get 'new' => 'main_scenes#new' #переадресация страниц


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
