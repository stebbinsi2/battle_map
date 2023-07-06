defimpl BattleMap.Character, for: BattleMap.Archer do
  def can_attack?(_character, {init_x, init_y}, {x, y}) do
    x_diff = init_x - x
    y_diff = init_y - y

    if x_diff <= 3 && y_diff <= 3 do
      "You hit!"
    else
      "I can't shoot that!"
    end
  end
end
