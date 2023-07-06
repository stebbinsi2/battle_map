defmodule Wizard do
  defstruct []
end

defimpl Character, for: Wizard do
  def can_attack?(_character, {init_x, init_y}, {x, y}) do
    cond do
      abs(init_x - x) == abs(init_y - y) -> true
      init_x == x -> true
      init_y == y -> true
      :otherwise -> false
    end
  end
end
