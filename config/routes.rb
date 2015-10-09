Rails.application.routes.draw do

  root 'welcome#index'

  get '/auth/genius', as: :login
  get  'auth/genius/callback', to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'

end
