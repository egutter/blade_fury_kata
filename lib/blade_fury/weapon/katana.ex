defmodule BladeFury.Weapon.Katana do
  defstruct damage: 2

  defimpl BladeFury.Weapon do
    def increase_samurai_power(weapon, warrior_strength) do
      weapon.damage * warrior_strength
    end
    def increase_shaolin_power(weapon, warrior_strength) do
      weapon.damage + warrior_strength
    end
  end
end
