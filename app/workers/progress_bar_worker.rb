# frozen_string_literal: true

class ProgressBarWorker
  include Sidekiq::Worker
  include Sidekiq::Status::Worker

  def perform(*_args)
    puts 'Launching job...'
    total 10

    10.times do |i|
      at i
      sleep 1
    end
  end
end
