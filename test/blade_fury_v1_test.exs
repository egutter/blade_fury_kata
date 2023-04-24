defmodule BladeFuryV1Test do
  use ExUnit.Case
  use ExMatchers

  alias BladeFury.Warrior.Samurai
  alias BladeFury.Warrior.Shaolin
  alias BladeFuryV1, as: BladeFury

  test "when a samurai fights vs a shaolin, the shaolin wins" do
    samurai = %Samurai{}
    shaolin = %Shaolin{}

    result = BladeFury.fight_vs(samurai, shaolin)

    expect result, to: eq({:ok, :warrior_two})
  end

  test "when a shaolin fights vs a samurai, the shaolin wins" do
    shaolin = %Shaolin{}
    samurai = %Samurai{}

    result = BladeFury.fight_vs(shaolin, samurai)

    expect result, to: eq({:ok, :warrior_one})
  end

  test "when a shaolin fights vs a shaolin, it's a draw" do
    shaolin_one = %Shaolin{}
    shaolin_two = %Shaolin{}

    result = BladeFury.fight_vs(shaolin_one, shaolin_two)

    expect result, to: eq({:ok, :draw})
  end
end
