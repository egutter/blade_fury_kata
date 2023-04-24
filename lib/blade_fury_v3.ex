defmodule BladeFuryV3 do
  def fight_vs(warrior_with_weapon_one, warrior_with_weapon_two) do
    warrior_one_power = calculate_power(warrior_with_weapon_one)
    warrior_two_power = calculate_power(warrior_with_weapon_two)

    cond do
      warrior_one_power > warrior_two_power -> {:ok, :warrior_one}
      warrior_one_power < warrior_two_power -> {:ok, :warrior_two}
      true -> {:ok, :draw}
    end
  end

  def calculate_power(
        warrior: %BladeFury.Warrior.Samurai{strength: warrior_strength},
        weapon: %BladeFury.Weapon.Katana{strength: weapon_strenth}
      ) do
    warrior_strength * weapon_strenth
  end

  def calculate_power(
        warrior: %BladeFury.Warrior.Shaolin{strength: warrior_strength},
        weapon: %BladeFury.Weapon.Katana{strength: weapon_strenth}
      ) do
    warrior_strength + weapon_strenth
  end

  def calculate_power(warrior: warrior, weapon: weapon) do
    raise "This game doesn't support a #{warrior.__struct__} with a #{weapon.__struct__}"
  end

  def calculate_power(warrior: warrior) do
    warrior.strength
  end
end
