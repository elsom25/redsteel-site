RedSteelSite::Application.routes.draw do
  postmarkdown as: :blog

  get '/about' => 'pages#about', as: 'about'
  post '/about' => 'pages#about_create', as: 'about_registration'

  get '/team' => 'pages#team', as: 'team'

  post '/' => 'registration#create', as: 'registration'
  root to: 'registration#new'
end
