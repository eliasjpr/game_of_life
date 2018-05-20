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
      grid = Grid.build_for(living_cells)
      assert_equal true, grid[5,5]
    end

    def test_it_finds_living_neighbors_for_cell
      current_cell = [1,1]
      living_cells = [[0,1], [1,2], [2,0]]
      grid = Grid.build_for(living_cells)

      Neighbors.living_aorund current_cell, grid do
        assert_equal 3, grid.living_neighbors_for([1,1])
      end
    end
  end
end
