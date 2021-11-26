# frozen_string_literal: true

class PreserveContentController < ApplicationController
  # DEVELOPMENT PURPOSES ONLY
  skip_before_action :verify_authenticity_token

  def click
    session[:counter] = 0 unless session[:counter]

    session[:counter] += 1
    render partial: 'refresh'
  end
end
