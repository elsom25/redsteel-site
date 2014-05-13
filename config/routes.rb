RedSteelSite::Application.routes.draw do
  postmarkdown as: :blog

  resources :registration, only: [:new, :create]

  get '/about' => 'pages#about', as: 'about'
  get '/team' => 'pages#team', as: 'team'

  root to: 'registration#new'
end
