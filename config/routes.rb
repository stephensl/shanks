Rails.application.routes.draw do
  devise_for :members, :controllers => { registrations: 'members/registrations'}

  root 'clubhouse#index'

  resources :courses
  resources :rounds
  resources :member_rounds

end
