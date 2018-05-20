require "test_helper"

module GameOfLife
  class GridTest < Minitest::Test
    def test_it_builds_a_new_grid
      grid = Grid.build(5, 5)
      assert_equal grid.first, [0,0]
      assert_equal grid.count, 25
    end
  end
end
