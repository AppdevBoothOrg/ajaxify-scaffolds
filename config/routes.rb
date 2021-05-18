Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies

  get "movies/:id/title/edit" => "movies#title_edit", as: :title_edit
  patch "movies/:id/title" => "movies#title_update", as: :title_update

  get "movies/:id/year/edit" => "movies#year_edit", as: :year_edit
  patch "movies/:id/year" => "movies#year_update", as: :year_update

  get "movies/:id/director/edit" => "movies#director_edit", as: :director_edit
  patch "movies/:id/director" => "movies#director_update", as: :director_update
end
