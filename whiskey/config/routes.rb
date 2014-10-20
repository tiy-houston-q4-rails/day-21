Rails.application.routes.draw do

  resources :dranks

  root 'pages#welcome'

end
