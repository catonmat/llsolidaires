Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :flats, only: [:index]
  resources :dashboards, only: [:index]
  get 'dashboards/owner', to: "dashboards#owner"
  get 'dashboards/medical', to: "dashboards#medical"

  get :send_order_mail, to: 'dashboards#send_sos_mail', as: :send_sos_mail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
