require "test_helper"

module GameOfLife
  module Rules
    class DeadCellTest < Minitest::Test
      def test_with_exactly_three_live_neighbors_reborns
        assert_equal true, DeadCell.revives?(3)
      end

      def test_with_any_other_number_of_live_neighbors_stays_dead
        assert_equal false, DeadCell.revives?(2)
        assert_equal false, DeadCell.revives?(4)
      end
    end
  end
end
