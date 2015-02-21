Rails.application.routes.draw do
  resources :authentications

  resources :recipes

  resources :ingredients

  root to: 'visitors#index'
  resources :users

   get '/auth/:provider/callback' => 'authentications#create'
   delete '/authentications"' => 'authentications#destroy'
   devise_for :users, :controllers => {:registrations => "registrations"}
   

   mount Ckeditor::Engine => '/ckeditor'
   
end
