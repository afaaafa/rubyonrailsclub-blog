# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  namespace :administrate do
    resources :articles
  end

  get "/inicio", to: "welcome#index"

end
