RoommatesSite::Application.routes.draw do
  get '/about' => 'pages#about', as: 'about'
  get '/team' => 'pages#team', as: 'team'

  root to: 'pages#home'
end
