class SpinnerWorker
  include Sidekiq::Worker
  include Sidekiq::Status::Worker

  def perform(*args)
    sleep 10
  end
end
