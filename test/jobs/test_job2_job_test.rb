require 'test_helper'

class TestJob2JobTest < ActiveJob::TestCase
  def test_perform
    TestJob2Job.perform_now
  end
end