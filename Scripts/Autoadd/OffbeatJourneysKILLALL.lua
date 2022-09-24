local players = game:GetService("Players")
local player = players.LocalPlayer
local egg, salad = game:GetService("ReplicatedStorage").EffectsEvent.Event12, game:GetService("ReplicatedStorage").Logic.hitbox

if (not player.Character:FindFirstChild("The World")) then egg:FireServer("TW") end

while true do task.wait()
pcall(function() player.Character:FindFirstChild("Head").playerbgui:Destroy() end)

for _,v in next, players:GetPlayers() do
  local chara = v.Character or v.CharacterAdded:Wait()
  local hum = chara:FindFirstChild("Humanoid", true)

  if (v ~= player and hum and hum.Health > 0) then
    player.Character.HumanoidRootPart.CFrame = chara:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,10)

    for i = 1, 10 do
      task.spawn(function()
        salad:FireServer("BasicHit3", player.Character.Stand, hum, player.Character.TheWorld)
      end)
    end

    end
  end
end