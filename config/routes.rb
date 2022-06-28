Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do #手動サインアウト用
    get '/users/sign_out' => 'devise/sessions#destroy'
  end      

  root to: 'kaigos#index'
  resources :kaigos, only: :index
end
