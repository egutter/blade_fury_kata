defmodule BladeFuryV1 do

  def fight_vs(warrior_one, warrior_two) do
    cond do
      warrior_one.strength > warrior_two.strength -> {:ok, :warrior_one}
      warrior_one.strength < warrior_two.strength -> {:ok, :warrior_two}
      true -> {:ok, :draw}
    end
  end
end
