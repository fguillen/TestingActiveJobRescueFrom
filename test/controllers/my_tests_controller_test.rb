require 'test_helper'

class MyTestsControllerTest < ActionDispatch::IntegrationTest
  def test_raise_exception
    get raise_exception_url
    assert_equal("Rescuing the exception: 'This is an Exception'", @response.body)
  end

  def test_raise_standard_error
    get raise_standard_error_url
    assert_equal("Rescuing the exception: 'This is an StandardError'", @response.body)
  end
end
