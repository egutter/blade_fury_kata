defmodule BladeFuryV3Test do
  use ExUnit.Case
  use ExMatchers

  alias BladeFury.Warrior.Samurai
  alias BladeFury.Warrior.Shaolin
  alias BladeFury.Weapon.Katana
  alias BladeFuryV3, as: BladeFury

  test "when a samurai fights vs a shaolin, the shaolin wins" do
    samurai = %Samurai{}
    shaolin = %Shaolin{}

    result = BladeFury.fight_vs([warrior: samurai], [warrior: shaolin])

    expect result, to: eq({:ok, :warrior_two})
  end

  test "when a shaolin fights vs a samurai, the shaolin wins" do
    shaolin = %Shaolin{}
    samurai = %Samurai{}

    result = BladeFury.fight_vs([warrior: shaolin], [warrior: samurai])

    expect result, to: eq({:ok, :warrior_one})
  end

  test "when a shaolin fights vs a shaolin, it's a draw" do
    shaolin_one = %Shaolin{}
    shaolin_two = %Shaolin{}

    result = BladeFury.fight_vs([warrior: shaolin_one], [warrior: shaolin_two])

    expect result, to: eq({:ok, :draw})
  end
  
  test "when a samurai with a katana fights vs a shaolin, the samurai wins" do
    samurai = %Samurai{}
    shaolin = %Shaolin{}

    katana = %Katana{}

    result =
      BladeFury.fight_vs(
        [warrior: samurai, weapon: katana],
        [warrior: shaolin]
      )

    expect result, to: eq({:ok, :warrior_one})
  end

  test "when a samurai with a katana fights vs a shaolin with a katana, it's a draw" do
    samurai = %Samurai{}
    shaolin = %Shaolin{}

    katana = %Katana{}

    result =
      BladeFury.fight_vs(
        [warrior: samurai, weapon: katana],
        [warrior: shaolin, weapon: katana]
      )

    expect result, to: eq({:ok, :draw})
  end
end
