Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root to: 'restaurants#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } #used for facebook login API
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :restaurants, only: [:index, :show] do  #basic filtering has distinct form on index page; this search box passes
    resources :reviews, only: :create
    # collection do
    #   get 'top', to: 'restaurants#top'
    #   get 'booking', to: 'restaurants#booking' ## CHECK
    resources :bookings, only: [:new, :create] do
        member do
          get :confirm
        end
      end
      #   get 'booking', to: 'restaurants#booking'
     # end
   end

   namespace :owner do
    resources :restaurants, only: [:index, :show, :edit, :update] do
      resources :deals, only: :create
    end

    resources :bookings, only: [:index]

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
