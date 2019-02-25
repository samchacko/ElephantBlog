Rails.application.routes.draw do
 
  devise_for :authors
  # added on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x @ 8:34
  # 
  root to: 'blog/posts#index'
  namespace :authors do
    # per video # 12
    get '/account' => 'accounts#edit', as: :account
    put '/info' => 'accounts#update_info', as: :info
    put '/change_password' => 'accounts#change_password', as: :change_password

    resources :posts do
      # per video# 7 later decided not needed
      # put 'publish' => 'posts#publish', on: :member, as: :publish
      # put 'unpublish' => 'posts#unpublish', on: :member, as: :unpublish

      put 'publish' => 'posts#publish', on: :member
      put 'unpublish' => 'posts#unpublish', on: :member
    end

  end

  scope module: 'blog' do
    # moved under scop module on 10 23 19
    # added on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x @ 8:34
    get 'about' => 'pages#about', as: :about
  
    get 'contact' => 'pages#contact', as: :contact
    # added on 10 23 18 per video # 3

    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
