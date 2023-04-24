defmodule BladeFury.Weapon.PunchKick do
  defstruct strength: 0

  alias BladeFury.Weapon.PunchKick

  defimpl BladeFury.Weapon do
    defdelegate increase_shaolin_power(weapon, strength), to: PunchKick, as: :increase_power
    defdelegate increase_samurai_power(weapon, strength), to: PunchKick, as: :increase_power
  end

  def increase_power(_weapon, strength) do
    strength
  end
end
