Rails.application.routes.draw do
  root to: "main_scene#index" # попадание по умолчанию на эту страницу

  resource :main_scene #создаём REST пути
  get 'new' => 'main_scene#new' #переадресация страниц
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
