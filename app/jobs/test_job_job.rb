class TestJobJob < ApplicationJob
  queue_as :default

  rescue_from Exception do |exception|
    Rails.logger.info "I am on rescue_from: #{exception}"
  end

  def perform(*args)
    raise Exception.new("This is the error message")
  end
end
