if not game:IsLoaded() then game.Loaded:Wait() end
if game.PlaceId ~= 5591597781 then return end
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/jsdnfjdsfdjnsmvkjhlkslzLIB", true))()
local w = library:CreateWindow("Info")
w:Section("f for Commander")
w:Section("e for Gladiator")
w:Section("c for Swarmer")
local event = game.ReplicatedStorage.RemoteFunction
function actc(Name,AName)
for i,v in pairs(game.Workspace.Towers:GetChildren()) do
if v:WaitForChild("Owner").Value == game.Players.LocalPlayer.UserId then
if v.Replicator:GetAttribute("Type") == Name then
event:InvokeServer("Troops","Abilities","Activate",{["Troop"] = v, ["Name"] = AName})
end
end
end
end
game:GetService("UserInputService").InputBegan:Connect(function(input, chatting)
if input.KeyCode == Enum.KeyCode.F and not chatting then
actc("Commander","Call Of Arms")
elseif input.KeyCode == Enum.KeyCode.E and not chatting then
actc("Gladiator", "Warrior's Call")
elseif input.KeyCode == Enum.KeyCode.C and not chatting then
actc("Swarmer","Swarm")
end
end)