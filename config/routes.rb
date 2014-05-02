RoommatesSite::Application.routes.draw do
  get '/about' => 'pages#about', as: 'about'

  root to: 'pages#home'
end
