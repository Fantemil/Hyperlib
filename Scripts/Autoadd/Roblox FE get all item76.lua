-- Script made by Mawin_CK
-- Enjoy Game Link is https://www.roblox.com/games/5050434113/Tool-Crazy-Beta
local localPlayer = game.Players.LocalPlayer

for _, tool in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do
  if tool:IsA("Tool") then
    local toolName = tool.Name
    if toolName then
      local args = {
        [1] = localPlayer.Backpack,
        [2] = tool
      }

      game:GetService("ReplicatedStorage").Events.ToolChosen:FireServer(unpack(args))
    end
  end
end
