require "test_helper"

class GameOfLifeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GameOfLife::VERSION
  end
end
