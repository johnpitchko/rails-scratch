# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :scaffold_samples
  # Admin page for Sidekiq
  mount Sidekiq::Web => '/sidekiq'

  # htmx Progress Bar
  get '/progress_bar', to: 'progress_bar#index'
  post '/progress_bar/start', to: 'progress_bar#start'
  get '/progress_bar/job', to: 'progress_bar#job'

  # ProgressBarWorker
  get '/progress_bar_worker', to: 'progress_bar_worker#index'
  post '/progress_bar_worker/start', to: 'progress_bar_worker#start'
  get '/progress_bar_worker/job', to: 'progress_bar_worker#job'

  # Spinner Worker
  get '/spinner_worker', to: 'spinner_worker#index'
  post '/spinner_worker/start', to: 'spinner_worker#start'
  get '/spinner_worker/run', to: 'spinner_worker#run'

  # Preserve content
  get '/preserve_content', to: 'preserve_content#index'
  post '/preserve_content/click', to: 'preserve_content#click'
end
