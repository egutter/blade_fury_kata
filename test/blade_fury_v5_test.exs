defmodule BladeFuryV5Test do
  use ExUnit.Case
  use ExMatchers

  import CustomMatchers
  import BladeFury.Warrior.Gymnasium
  import BladeFury.Weapon.Armory
  import BladeFury.Warrior
  import BladeFuryV5, only: [fight_vs: 2]

  test "when a samurai fights vs a shaolin, the shaolin wins" do
    expect(
      a_samurai() |> unarmed()
      |> fight_vs(
        a_shaolin() |> unarmed()
      ),
      to: warrior_two_wins()
    )
  end

  test "when a shaolin fights vs a samurai, the shaolin wins" do
    expect(
      a_shaolin() |> unarmed()
      |> fight_vs(
        a_samurai() |> unarmed()
      ),
      to: warrior_one_wins()
    )
  end

  test "when a shaolin fights vs a shaolin, it's a draw" do
    expect(
      a_shaolin() |> unarmed()
      |> fight_vs(
        a_shaolin() |> unarmed()
      ),
      to: be_a_draw()
    )
  end

  test "when a samurai with a katana fights vs a shaolin, the samurai wins" do
    expect(
      a_samurai() |> armed_with(a_katana())
      |> fight_vs(
        a_shaolin() |> unarmed()
      ),
      to: warrior_one_wins()
    )
  end

  test "when a samurai with a katana fights vs a shaolin with a katana, it's a draw" do
    expect(
      a_samurai() |> armed_with(a_katana())
      |> fight_vs(
        a_shaolin() |> armed_with(a_katana())
      ),
      to: be_a_draw()
    )
  end

  test "when a shaolin armored with a shield fights vs a shaolin, it's a draw" do
    expect(
      a_shaolin() |> unarmed() |> armored_with(a_shield())
      |> fight_vs(
        a_shaolin() |> unarmed()
      ),
      to: be_a_draw()
    )
  end

  test "when a shaolin armored with a shield fights vs a shaolin armed with a Katana, it's a draw" do
    expect(
      a_shaolin() |> unarmed() |> armored_with(a_shield())
      |> fight_vs(
        a_shaolin() |> armed_with(a_katana())
      ),
      to: be_a_draw()
    )
  end
end
