module GameOfLife
  module Rules
    module LiveCell
      NEIGHBORS_TO_SURVIVE = [2,3].freeze

      def self.survives?(living_neighbors)
        NEIGHBORS_TO_SURVIVE.include? living_neighbors
      end
    end
  end
end