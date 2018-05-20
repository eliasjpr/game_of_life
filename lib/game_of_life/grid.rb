require "matrix"
require "game_of_life/neighbors"
require "game_of_life/rules"

module GameOfLife
  class Grid < Matrix
    WIDTH = 10

    def self.build_for(living_cells = [])
      grid = build(WIDTH) do |row, column|
        [row, column]
      end
      grid.cells = living_cells
      grid
    end

    def next_generation
      survivors = []
      each { |cell| survivors << cell if survives?(cell) }
      cells = survivors.compact
    end

    def cells=(cells)
      @cells = cells
    end

    def alive?(cell)
      @cells.include?(cell)
    end

    private

    def cells
      @cells ||= []
    end

    def survives?(cell)
      Rules::Handler.call alive?(cell), living_neighbors_for(cell)
    end

    def living_neighbors_for(cell)
      Neighbors.living_aorund(cell, self).count
    end
  end
end
