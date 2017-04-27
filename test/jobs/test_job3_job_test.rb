require 'test_helper'

class TestJob3JobTest < ActiveJob::TestCase
  def test_perform
    TestJob3Job.perform_now
  end
end