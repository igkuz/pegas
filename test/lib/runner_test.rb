require 'test_helper'

class RunnerTest < Minitest::Test

  def test_start
    Pegas::Runner.start
    assert true
  end
end
