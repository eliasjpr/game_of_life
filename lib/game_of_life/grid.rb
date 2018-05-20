require "matrix"

module GameOfLife
  class Grid < Matrix
    WIDTH = 25
    HEIGHT = 50

    def self.builds_grid_for(living_cells)
      build(WIDTH, HEIGHT) do |row, column|
        living_cells.include?([row, column]) ? true : false
      end
    end
  end
end
