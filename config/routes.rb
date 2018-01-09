Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  get 'addresses/new'

  get 'addresses/create'

  get 'addresses/show'

  get 'addresses/edit'

  get 'addresses/update'

  get 'addresses/destroy'

  get 'courses/index'

  get 'courses/new'

  get 'courses/create'

  get 'courses/show'

  get 'courses/edit'

  get 'courses/update'

  get 'courses/destroy'

  get 'studios/index'

  get 'studios/new'

  get 'studios/create'

  get 'studios/show'

  get 'studios/edit'

  get 'studios/update'

  get 'studios/destroy'

  get 'appointments/index'

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/show'

  get 'appointments/edit'

  get 'appointments/update'

  get 'appointments/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/appointments'

  get 'users/reviews'

  get 'users/courses'

  get 'users/studios'

  get 'users/addresses'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :studios, only: [:index, :show] do
  resources :courses, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create, :update, :destroy]
    end
  end



  root to: 'pages#home'


end
