module GameOfLife
  module Neighbors
    def self.living_aorund(cell, grid)
      row, column = cell
      rows = [row - 1, row, row + 1]
      columns = [column - 1, column, column + 1]
      locations = rows.product(columns)
      locations.delete(cell)
      locations.select { |row, col| grid.alive?([row, col]) }.compact
    end
  end
end