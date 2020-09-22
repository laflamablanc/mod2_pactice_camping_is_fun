Rails.application.routes.draw do
  resources :activities, except: [:destroy]
  resources :campers, except: [:destroy]
  resources :signups, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
