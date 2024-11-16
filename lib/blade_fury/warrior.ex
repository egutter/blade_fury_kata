defmodule BladeFury.Warrior do
  import Map, only: [put: 3]
  import BladeFury.Weapon.Armory, only: [punch_kick: 0]

  def unarmed(warrior) do
    warrior |> put(:weapon, punch_kick())
  end

  def armed_with(warrior, weapon) do
    warrior |> put(:weapon, weapon)
  end

  def armored_with(warrior, armor) do
    warrior |> put(:armor, armor)
  end
end
