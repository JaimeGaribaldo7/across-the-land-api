Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :lists, except: [:new, :edit] do
    resources :places, only: [:index, :create]
  end
  resources :places, only: [:show, :update, :destroy]
end
