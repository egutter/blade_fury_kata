defmodule BladeFuryV3 do
  alias BladeFury.Warrior.Samurai
  alias BladeFury.Warrior.Shaolin
  alias BladeFury.Weapon.Katana

  def fight_vs(warrior_with_weapon_one, warrior_with_weapon_two) do
    warrior_one_power = calculate_power(warrior_with_weapon_one)
    warrior_two_power = calculate_power(warrior_with_weapon_two)

    cond do
      warrior_one_power > warrior_two_power -> :warrior_one
      warrior_one_power < warrior_two_power -> :warrior_two
      true -> :draw
    end
  end

  def calculate_power(
        warrior: %Samurai{strength: warrior_strength},
        weapon: %Katana{damage: weapon_damage}
      ) do
    warrior_strength * weapon_damage
  end

  def calculate_power(
        warrior: %Shaolin{strength: warrior_strength},
        weapon: %Katana{damage: weapon_damage}
      ) do
    warrior_strength + weapon_damage
  end

  def calculate_power(warrior: warrior) do
    warrior.strength
  end
end
