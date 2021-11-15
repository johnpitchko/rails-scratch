# frozen_string_literal: true

class ProgressBarWorkerController < ApplicationController
  # DEVELOPMENT PURPOSES ONLY
  skip_before_action :verify_authenticity_token

  def index; end

  def start
    @job_id = ProgressBarWorker.perform_async
    @percent = 0
    render partial: 'progress'
  end

  def job
    @job_id = params[:job_id]
    @percent = Sidekiq::Status.at(@job_id).to_d / Sidekiq::Status.total(@job_id).to_d * 100

    render partial: 'finished' and return if Sidekiq::Status.complete? @job_id

    render partial: 'progress'
  end
end
