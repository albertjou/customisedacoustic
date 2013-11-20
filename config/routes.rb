Customacoustic::Application.routes.draw do

  root :to => 'pages#index'

  resources :guitars, except: :destroy

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => {sessions: 'sessions'}
  ActiveAdmin.routes(self)


end
