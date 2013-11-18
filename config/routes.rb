Customacoustic::Application.routes.draw do

  root :to => 'pages#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)




end
