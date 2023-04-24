defmodule BladeFury.Warrior.Shaolin do
  import BladeFury.Weapon, only: [increase_shaolin_power: 2]

  defstruct strength: 10

  defimpl BladeFury.Warrior.Power do
    def power(warrior) do
      warrior.weapon |> increase_shaolin_power(warrior.strength)
    end
  end
end
