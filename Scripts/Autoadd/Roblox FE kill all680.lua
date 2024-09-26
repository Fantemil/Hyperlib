-- Equip Sniper to make kill all work
--- execute rapidly to Make sure All enemy Team Died
-- Script by Mawin_CK that me!
while true do
local player = game.Players.LocalPlayer
for i,v in ipairs(game.Players:GetPlayers()) do
  if v.Name ~= player.Name then
    local CP = v.Character.Humanoid or v.Character:FindFirstChild("Humanoid")
    if CP then
      local JK = v.Character.Hitbox or v.Character:FindFirstChild("Hitbox")
      if JK then
        local args = {
        [1] = "Sniper",
        [2] = CP,
        [3] = JK
        }
        game:GetService("ReplicatedStorage").Network:FindFirstChild("Tools: Use"):FireServer(unpack(args))
        wait(0.1)
      end
    end
  end
end
wait(0.1)
end