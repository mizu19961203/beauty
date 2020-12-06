Rails.application.routes.draw do

  root 'home#index'
  get 'home/index' => 'home#index'
  get 'registration/stylists' => 'stylists#new'

  devise_for :users,:controllers => {
        :registrations => 'users/registrations',
        :sessions => 'users/sessions',
        omniauth_callbacks: "users/omniauth_callbacks"
    }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :shops
  resources :stylists

end
