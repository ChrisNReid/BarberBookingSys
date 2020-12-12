Rails.application.routes.draw do

  resources :reservations
  resources :reviews
  resources :abouts
  resources :employees_emails
  resources :employees
  devise_for :users
  #devise_for :users, :controllers => {:registrations => "registrations"}

  root 'home#home'

  get'contact', to: 'home#contact'
  post'request_contact', to: 'home#request_contact'
end