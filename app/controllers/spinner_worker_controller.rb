# frozen_string_literal: true

class SpinnerWorkerController < ApplicationController
  # DEVELOPMENT PURPOSES ONLY
  skip_before_action :verify_authenticity_token

  # GET /spinner_worker
  def index; end

  # POST /spinner_worker/start
  def start
    @job_id = SpinnerWorker.perform_async
    session[:counter] = 0
    render partial: 'run'
  end

  # GET /spinner_worker/run
  def run
    @job_id = params[:job_id]

    # If a job_id was provided, check if it is complete.
    if Sidekiq::Status::complete? @job_id
      render partial: 'complete' and return
    end

    # If the job_id was provided, and it is incomplete, continue running.
    session[:counter] += 1
    render partial: 'run'
  end
end
