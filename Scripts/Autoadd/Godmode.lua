while wait(0.5) do
  pcall(function()
    for _, Amogus in ipairs(Workspace.BattleMap.Monster:GetDescendants()) do
      Amogus.Damage:Destroy()
    end
  end)
end
