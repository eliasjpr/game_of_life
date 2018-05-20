module GameOfLife
  module Rules
    module DeadCell
      NUMBER_OF_LIVE_NEIGHBORS_FOR_REVIVAL = 3

      def self.revives?(living_neighbors)
        living_neighbors == NUMBER_OF_LIVE_NEIGHBORS_FOR_REVIVAL
      end
    end
  end
end