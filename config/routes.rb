Rails.application.routes.draw do
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  # root to: "homes#top"
  root 'homes#top'
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get 'homes/about', as: 'about'
end
