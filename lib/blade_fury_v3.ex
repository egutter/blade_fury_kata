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
        weapon: %Katana{strength: weapon_strenth}
      ) do
    warrior_strength * weapon_strenth
  end

  def calculate_power(
        warrior: %Shaolin{strength: warrior_strength},
        weapon: %Katana{strength: weapon_strenth}
      ) do
    warrior_strength + weapon_strenth
  end

  def calculate_power(warrior: warrior, weapon: weapon) do
    raise "This game doesn't support a #{warrior.__struct__} armed with a #{weapon.__struct__}"
  end

  def calculate_power(warrior: warrior) do
    warrior.strength
  end
end
