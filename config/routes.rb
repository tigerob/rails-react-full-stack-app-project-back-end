Rails.application.routes.draw do
    resources :prices
    resources :bookings
    resources :users

    scope '/auth' do
        post '/signup', to: 'users#create'
        post '/login', to: 'users#log_in'
    end
end
