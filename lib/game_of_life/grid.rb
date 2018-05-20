require "matrix"
require "game_of_life/neighbors"

module GameOfLife
  class Grid < Matrix
    WIDTH = 25
    HEIGHT = 50

    def self.builds_grid_for(living_cells)
      build(WIDTH, HEIGHT) do |row, column|
        living_cells.include?([row, column]) ? true : false
      end
    end

    def living_neighbors_for(cell)
      Neighbors.living_aorund(cell, self).count
    end
  end
end
