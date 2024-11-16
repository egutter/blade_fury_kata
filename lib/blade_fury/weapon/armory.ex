defmodule BladeFury.Weapon.Armory do
  def a_katana do
    %BladeFury.Weapon.Katana{}
  end

  def punch_kick do
    %BladeFury.Weapon.PunchKick{}
  end

  def a_shield do
    %BladeFury.Armor.Shield{}
  end
end
