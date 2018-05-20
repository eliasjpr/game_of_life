require "test_helper"

module GameOfLife
  module Rules
    class LiveCellTest < Minitest::Test
      def test_when_fewer_than_two_live_neighbors_dies
        assert_equal false, LiveCell.survives?(1)
      end

      def test_with_two_or_three_live_neighbors_lives_on_to_the_next_generation
        assert_equal true, LiveCell.survives?(2)
        assert_equal true, LiveCell.survives?(3)
      end

      def test_with_more_than_three_live_neighbors_dies
        assert_equal false, LiveCell.survives?(4)
      end
    end
  end
end
