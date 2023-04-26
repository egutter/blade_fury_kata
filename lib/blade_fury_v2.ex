defmodule BladeFuryV2 do

  def fight_vs(warrior_with_weapon_one, warrior_with_weapon_two) do
    warrior_one_power = calculate_power(warrior_with_weapon_one)
    warrior_two_power = calculate_power(warrior_with_weapon_two)

    cond do
      warrior_one_power > warrior_two_power -> :warrior_one
      warrior_one_power < warrior_two_power -> :warrior_two
      true -> :draw
    end
  end

  def calculate_power([warrior: warrior, weapon: weapon]) do
    warrior.strength * weapon.damage
  end

  def calculate_power([warrior: warrior]) do
    warrior.strength
  end
end
