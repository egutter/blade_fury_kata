defmodule BladeFury.Warrior.Samurai do
  import BladeFury.Weapon, only: [increase_samurai_power: 2]

  defstruct [:weapon, strength: 6]

  defimpl BladeFury.Warrior.Power do
    def power(warrior) do
      warrior.weapon |> increase_samurai_power(warrior.strength)
    end
  end
end
