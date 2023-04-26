defmodule BladeFuryV1 do

  def fight_vs(warrior_one, warrior_two) do
    cond do
      warrior_one.strength > warrior_two.strength -> :warrior_one
      warrior_one.strength < warrior_two.strength -> :warrior_two
      true -> :draw
    end
  end
end
