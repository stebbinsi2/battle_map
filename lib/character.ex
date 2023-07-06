defprotocol Character do
  def can_attack?(character, origin, target)
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

  defimpl Character, for: Barbarian do
    def can_attack?(_character, {init_x, init_y}, {x, y}) do
      x_diff = init_x - x
      y_diff = init_y - y

      abs(x_diff) <= 2 && abs(y_diff) <= 2
    end
  end
end
