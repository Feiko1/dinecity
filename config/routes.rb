Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } #used for facebook login API

  resources :restaurants, only: [:index, :show, :create, :new] do  #basic filtering has distinct form on index page; this search box passes
    collection do
      post :registration
    end
    resources :reviews, only: :create

    resources :bookings, only: [:new, :create, :update, :show] do
        member do
          get :summary
          get :confirm
        end
      end
      #   get 'booking', to: 'restaurants#booking'
     # end
   end
   resources :bookings, only: [:index]


   namespace :owner do
    resource :account, only: [:edit, :update]

    resources :restaurants, only: [:index, :show, :edit, :update] do
      resources :deals, only: :create
    end
      resources :bookings, only: [:index, :edit, :update]
      resources :deals, only: [:index, :edit, :create, :new, :update, :destroy]
      resources :billings, only: [:index]
      resources :dashboards, only: [:index]

      # do we'll solve the 'delete and edit' links in the controller. if current.user == restaurant.user, delete //
      #resources :deals
      # resources :cms
    #end
  end
end


#@ MAtt, if we want to add :booking to resources :restaurants only then we should do it outside
# since only only works for the basic 7 methods
# put inside member cause it needs to be linkee to the restaurant ID
# collection =   url/restaurant/booking
# member     =   url/restaurant/id/booking

# Namespace allows for a sub folder with multiple controllers inside app/controllers so that
# you can seperate the code for the controller based on their goals.
#
