module GameOfLife
  module Neighbors
    def self.living_aorund(cell, world)
      row, column = cell
      rows = [row - 1, row, row + 1]
      columns = [column - 1, column, column + 1]
      locations = rows.product(columns)
      locations.delete(cell)
      locations.select { |row, col| !world[row, col].nil? }.compact
    end
  end
end