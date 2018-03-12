Rails.application.routes.draw do

  resources :images
  resources :carrierwave_images
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :businesses
  resources :articles
  resources :players
  resources :industries

end
