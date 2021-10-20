Rails.application.routes.draw do
  devise_for :users
  #top page(ログイン)
  root to: 'homes#top'
  
  #投稿/投稿内容詳細画面
  resources :books, only: [:new, :create, :index, :show, :destroy]
  
  #ユーザー画面
  resources :users, only: [:show, :edit, :update]
  
end
