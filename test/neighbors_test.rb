require "test_helper"

module GameOfLife
  class NeighborsTest < Minitest::Test
    def test_it_finds_living_neighbors_for_cell
      current_cell = [1,1]
      living_cells = [[0,1], [1,2], [2,0]]
      grid = Grid.build_for(living_cells)
      assert_equal living_cells, Neighbors.living_aorund(current_cell, grid)
    end
  end
end