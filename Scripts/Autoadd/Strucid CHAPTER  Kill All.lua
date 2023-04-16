-- // Networker | FeIix was here <3
local NetworkModule = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/Strucid_NetworkModuler')))()
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
function IsFFA()
return LocalPlayer.PlayerGui.GameUI.CoreFrames.RoundStats.Gamemode.Text == " FFA"  
end
function GetKILLPLR()
for i, v in pairs(Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and not v.Character:GetAttribute("IsMenuChar") then
if IsFFA() or game.PlaceId == 3606833500 then
return v
else
if v.Team ~= game.Players.LocalPlayer.Team then
return v
end
end
end
end
return
end

game:GetService("RunService").RenderStepped:Connect(function()
      pcall(function()
          task.spawn(function()
              if GetKILLPLR() then
                  NetworkModule.InvokeServer('PickaxeDamage', GetKILLPLR().Character.Head)
              end
          end)
      end)
end)