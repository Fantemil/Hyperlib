local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local function displaynamefix(plr)
   local plrname = plr.Name
   plr.DisplayName = plrname
   if plr.Character and plr.Character:FindFirstChildWhichIsA("Humanoid") then
       plr.Character:FindFirstChildWhichIsA("Humanoid").DisplayName = plrname
   end
   connections[plr] = plr.CharacterAdded:Connect(function(char)
       repeat task.wait() until char:FindFirstChildWhichIsA("Humanoid")
       char:FindFirstChildWhichIsA("Humanoid").DisplayName = plrname
   end)
end


Players.PlayerAdded:Connect(displaynamefix)
for i,v in next, Players:GetPlayers() do
   if v ~= lp then
       displaynamefix(v)
   end
end

Players.PlayerRemoving:Connect(function(plr)
   if connections[plr] then
       connections[plr]:Disconnect()
   end
end)

require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings")).PlayerDisplayNamesEnabled = false