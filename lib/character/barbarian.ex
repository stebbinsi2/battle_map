defimpl BattleMap.Character, for: BattleMap.Barbarian do
  def can_attack?(_character, {init_x, init_y}, {x, y}) do
    x_diff = init_x - x
    y_diff = init_y - y

    abs(x_diff) <= 2 && abs(y_diff) <= 2
  end
end
