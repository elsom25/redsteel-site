RedSteelSite::Application.routes.draw do
  postmarkdown as: :blog

  get '/about' => 'pages#about', as: 'about'
  get '/team' => 'pages#team', as: 'team'

  post '/' => 'registration#create', as: 'registration'
  root to: 'registration#new'
end
