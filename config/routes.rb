Rails.application.routes.draw do

  devise_for :users
  root to: "fronts#index"
  resources :musics
  resources :divisions, only: [:index]
  # get "musics/show" =>"musics#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


