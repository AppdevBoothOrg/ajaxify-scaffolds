Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies

  get "movies/:id/title/edit" => "movies#title_edit", as: :title_edit
end
