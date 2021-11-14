# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :progress_bar, only: [:index] do
  end

  post '/progress_bar/start', to: 'progress_bar#start'
  get '/progress_bar/job', to: 'progress_bar#job'
end
