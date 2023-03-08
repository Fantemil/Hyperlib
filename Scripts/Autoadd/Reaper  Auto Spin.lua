_G.wanted = "Arrogante"
_G.Spinning = true
_G.found = false
warn'running'
repeat task.wait(3)
if (game:GetService("Players").LocalPlayer.Data.Cash.Value) >= 5000 then
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("HUD")
for _, yes in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.SkillTree.List:GetChildren()) do        
  if string.lower(yes.Name) == string.lower(_G.wanted) then
      print("YOU GOT THE ".. yes.Name)
      _G.found = true
  end
end
if _G.found == false then
  print("Rolling Secondary")
  game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer("Roll Secondary")
  task.wait(1)
  local st = game:GetService("Players").LocalPlayer.PlayerGui.ConfirmRaceChange.Frame.Title.Text
st = {string.gsub(st, "You just rolled ", "")}
st = st[1]
st = {string.gsub(st, ". Do you accept it", "")}
st = st[1]
st = string.sub(st, 1, string.len(st) - 1)
if string.lower(st) == string.lower(_G.wanted) then
  game:GetService("ReplicatedStorage").Remotes.ConfirmRaceChange:FireServer("Yes")
  _G.found = true
  else
      game:GetService("ReplicatedStorage").Remotes.ConfirmRaceChange:FireServer("No")
end
  game:GetService("Players").LocalPlayer.PlayerGui.ConfirmRaceChange.Enabled = false
end
end
until _G.found == true or _G.Spinning == false