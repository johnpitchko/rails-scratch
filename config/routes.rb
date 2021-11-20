# frozen_string_literal: true

Rails.application.routes.draw do

  # htmx Progress Bar
  get '/progress_bar', to: 'progress_bar#index'
  post '/progress_bar/start', to: 'progress_bar#start'
  get '/progress_bar/job', to: 'progress_bar#job'
end
