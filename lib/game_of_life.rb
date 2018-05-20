require "game_of_life/version"
require "game_of_life/grid"

module GameOfLife
  def self.play(pattern)
    Grid.build_for(pattern).tick
  end
end
