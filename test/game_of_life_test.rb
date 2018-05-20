require "test_helper"

class GameOfLifeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GameOfLife::VERSION
  end

  def test_that_it_starts_the_game_with_a_pattern
    pattern  = [[0,1], [1,2], [2,0]]
    grid = MiniTest::Mock.new
    grid.expect(:tick, true)

    GameOfLife::Grid.stub(:build_for, grid) do
      GameOfLife.play(pattern)
    end

    grid.verify
  end
end
