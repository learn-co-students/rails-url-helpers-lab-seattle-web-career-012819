Rails.application.routes.draw do
  resources :students, only: [:index, :show, :activate]
  resources :activate, to: 'students#activate', as: 'activate_student'
end
