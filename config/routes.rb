Rails.application.routes.draw do

  devise_for :people, controllers: {
    sessions:      'people/sessions',
    passwords:     'people/passwords',
    registrations: 'people/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :person do
    post 'people/sign_up/confirm' => 'people/registrations#confirm'
    post 'people/sign_up/complete' => 'people/registrations#complete'
  end

  devise_scope :user do
    post 'users/sign_up/confirm' => 'users/registrations#confirm'
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end

  root to: "home#index"
  get "people/complete" => "people#complete", as: "people/complete"

  resources :users, :only => [:index, :show]
  resources :people, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
