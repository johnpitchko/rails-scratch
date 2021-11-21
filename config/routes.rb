# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  # htmx Progress Bar
  get '/progress_bar', to: 'progress_bar#index'
  post '/progress_bar/start', to: 'progress_bar#start'
  get '/progress_bar/job', to: 'progress_bar#job'

  # ProgressBarWorker
  get '/progress_bar_worker', to: 'progress_bar_worker#index'
  post '/progress_bar_worker/start', to: 'progress_bar_worker#start'
  get '/progress_bar_worker/job', to: 'progress_bar_worker#job'
end
