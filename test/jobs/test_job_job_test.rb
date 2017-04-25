require 'test_helper'

class TestJobJobTest < ActiveJob::TestCase
  def test_perform
    TestJobJob.perform_now
  end
end
