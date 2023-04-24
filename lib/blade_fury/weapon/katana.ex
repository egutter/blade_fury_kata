defmodule BladeFury.Weapon.Katana do
  defstruct strength: 2

  defimpl BladeFury.Weapon do
    def increase_samurai_power(weapon, strength) do
      weapon.strength * strength
    end
    def increase_shaolin_power(weapon, strength) do
      weapon.strength + strength
    end
  end
end
