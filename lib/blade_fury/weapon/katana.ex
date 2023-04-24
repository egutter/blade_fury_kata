defmodule BladeFury.Weapon.Katana do
  defstruct strength: 2

  defimpl BladeFury.Weapon do
    def increase_samurai_power(weapon, warrior_strength) do
      weapon.strength * warrior_strength
    end
    def increase_shaolin_power(weapon, warrior_strength) do
      weapon.strength + warrior_strength
    end
  end
end
