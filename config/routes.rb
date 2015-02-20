Rails.application.routes.draw do

  resources :posts


  root 'posts#index'
  get "like/:id" => "posts#likes", :as => :like

end
