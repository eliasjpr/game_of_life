require "game_of_life/rules/live_cell"
require "game_of_life/rules/dead_cell"

module GameOfLife
  module Rules
    class Handler
      def self.call(cell, living_neighbors)
        if cell
          LiveCell.survives?(living_neighbors)
        else
          DeadCell.revives?(living_neighbors)
        end
      end
    end
  end
end