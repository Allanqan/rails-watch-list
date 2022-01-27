Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'movies#index'
=======
  resources :articles
>>>>>>> f25bf81a69c34532ccf213a4107fa8a03c937177
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
end
