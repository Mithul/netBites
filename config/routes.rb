Rails.application.routes.draw do
    resources :authentications

  resources :recipes

  resources :ingredients

  root to: 'visitors#index'

   get '/auth/:provider/callback' => 'authentications#create'
   delete '/authentications"' => 'authentications#destroy'
   devise_for :users, :controllers => {:registrations => "registrations"}
   
  resources :users

   mount Ckeditor::Engine => '/ckeditor'
   
end
