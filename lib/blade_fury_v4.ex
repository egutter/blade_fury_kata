defmodule BladeFuryV4 do
  import BladeFury.Warrior.Power, only: [power: 1]

  def fight_vs(warrior_one, warrior_two) do
    warrior_one_power = warrior_one |> power()
    warrior_two_power = warrior_two |> power()

    cond do
      warrior_one_power > warrior_two_power -> :warrior_one
      warrior_one_power < warrior_two_power -> :warrior_two
      true -> :draw
    end
  end
end
