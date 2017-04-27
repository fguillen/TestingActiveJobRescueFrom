class MyCustomException < Exception
end

class TestJob3Job < ApplicationJob
  queue_as :default

  rescue_from Exception do |exception|
    Rails.logger.info "I am on rescue_from: #{exception}"
  end

  def perform(*args)
    raise MyCustomException.new("This is the error message")
  end
end
