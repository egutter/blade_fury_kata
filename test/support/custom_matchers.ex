defmodule CustomMatchers do
  import ExUnit.Assertions
  import ExMatchers.Custom

  defmodule FightIsDraw do
    def to_match(fight_result) do
      assert fight_result == :draw
    end
    def to_not_match(fight_result) do
      assert fight_result != :draw
    end
  end
  defmatcher be_a_draw, matcher: FightIsDraw

  defmodule FightIsWonByWarriorOne do
    def to_match(fight_result) do
      assert fight_result == :warrior_one
    end
    def to_not_match(fight_result) do
      assert fight_result != :warrior_one
    end
  end
  defmatcher warrior_one_wins, matcher: FightIsWonByWarriorOne

  defmodule FightIsWonByWarriorTwo do
    def to_match(fight_result) do
      assert fight_result == :warrior_two
    end
    def to_not_match(fight_result) do
      assert fight_result != :warrior_two
    end
  end
  defmatcher warrior_two_wins, matcher: FightIsWonByWarriorTwo
end
