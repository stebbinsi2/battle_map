defprotocol BattleMap.Character do
  def can_attack?(character, origin, target)
end
