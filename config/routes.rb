Rails.application.routes.draw do
  root to: 'simulations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :vegetables
resources :simulations

end
