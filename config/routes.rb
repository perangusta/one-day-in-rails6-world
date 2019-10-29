Rails.application.routes.draw do
  root to: 'changelogs#index'
  resources :changelogs
  get :published_changelogs, to: 'changelogs#published'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
