require "matrix"
require "game_of_life/neighbors"
require "game_of_life/rules"

module GameOfLife
  class Grid < Matrix
    WIDTH = 20
    Height = 40

    def self.build_for(living_cells = [])
      grid = build(WIDTH, Height) do |row, column|
        [row, column]
      end
      grid.cells = living_cells
      grid
    end

    def tick
      loop do
        print
        next_generation
      end
    end

    def cells=(cells)
      @cells = cells
    end

    def alive?(cell)
      @cells.include?(cell)
    end

    def print
      lines = []
      (0..WIDTH - 1).each do |row_number|
        line = ""
        row(row_number).each do |cell|
          line << print_status(cell)
        end
        lines << line
      end
      puts lines.join("\n")
      puts
    end

    private

    def print_status(cell)
      alive?(cell) ? "🀫" : "🀆"
    end

    def next_generation
      survivors = []
      each { |cell| survivors << cell if survives?(cell) }
      @cells = survivors.compact
    end

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
