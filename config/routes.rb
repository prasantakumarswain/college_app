Rails.application.routes.draw do
  resources :students
  resources :dashboard do
    collection do
      get :index
      get :stream_index
      get :assign_student
    end
  end

  get 'users/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :faculties  do
    collection do
      get :index
      get :new
      get :create
    end
  end

resources :college_registrations do
  collection do
    get :index
  end
end

  resources :sections do
    collection do
        get :index
    end
  end
  root 'users#index'


end
