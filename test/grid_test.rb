require "test_helper"

module GameOfLife
  class GridTest < Minitest::Test
    def test_it_builds_a_new_grid
      grid = Grid.build(5, 5)
      assert_equal grid.first, [0,0]
      assert_equal grid.count, 25
    end

    def test_it_builds_a_grid_with_cells
      living_cells = [[5,5]]
      grid = Grid.builds_grid_for(living_cells)
      assert_equal true, grid[5,5]
    end
  end
end
