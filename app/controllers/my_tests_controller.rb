class MyTestsController < ApplicationController
  rescue_from Exception do |exception|
    render plain: "Rescuing the exception: '#{exception}'", status: 500
  end

  def raise_exception
    raise Exception.new("This is an Exception")
  end

  def raise_standard_error
    raise StandardError.new("This is an StandardError")
  end
end
