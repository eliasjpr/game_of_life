require "test_helper"
module GameOfLife
  module Rules
    class HandlerTest < Minitest::Test
      def test_when_cell_is_alive_applies_live_cell_rule
        val = "live cell"
        live_cell = [0,0]
        living_neighbors = 3
        LiveCell.stub :survives?, val do
          assert_equal val, Handler.call(live_cell, living_neighbors)
        end
      end

      def test_when_cell_is_dead_applies_dead_cell_rule
        val = "dead cell"
        dead_cell = nil
        living_neighbors = 2

        DeadCell.stub :revives?, val do
          assert_equal val, Handler.call(dead_cell, living_neighbors)
        end
      end
    end
  end
end
