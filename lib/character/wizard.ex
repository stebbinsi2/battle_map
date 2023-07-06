defimpl BattleMap.Character, for: BattleMap.Wizard do
  def can_attack?(_character, {init_x, init_y}, {x, y}) do

    init_x == x || init_y == y || abs(init_x - x) == abs(init_y - y)

  end
end

