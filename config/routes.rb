Rails.application.routes.draw do
  root 'pages#home'
  resources :doctors do
    resources :educations, only: [:new, :create]
  end
  resources :patients

end
