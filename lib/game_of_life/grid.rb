require "matrix"
require "game_of_life/neighbors"
require "game_of_life/rules"

module GameOfLife
  class Grid < Matrix
    WIDTH = 10
    HEIGHT = 20

    def self.build_for(living_cells)
      build(WIDTH, HEIGHT) do |row, column|
        living_cells.include?([row, column]) ? [row, column] : nil
      end
    end

    def living_neighbors_for(cell)
      Neighbors.living_aorund(cell, self).count
    end
  end
end
