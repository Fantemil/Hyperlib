--Created by CHEATAKK
--[[if it's not difficult for you, 
please support me to motivate me to 
further develop and publish free scripts.

2R$
https://www.roblox.com/game-pass/99279298/Bundle-Headless-Horseman

25R$
https://www.roblox.com/game-pass/98701273/UGC-Super-Super-Happy-Face

50R$
https://www.roblox.com/game-pass/98700251/UGC-Spiky-Halloween-Shades

299R$
https://www.roblox.com/game-pass/91773640/Byc-moze

499R$
https://www.roblox.com/game-pass/100004473/unnamed
or
https://www.roblox.com/game-pass/95369835/unnamed

999R$
https://www.roblox.com/game-pass/93509866/unnamed
or
https://www.roblox.com/game-pass/95367555/unnamed

1990R$
https://www.roblox.com/game-pass/98404426/unnamed

10000R$
https://www.roblox.com/game-pass/99608232/UGC-Dominus-Aureus

thank you
]]

if game.PlaceId==3360853050 then
    local placeid = 3533208812 --league place ID
    for i,v in pairs(game:FindFirstChildOfClass("Players"):GetPlayers()) do
        if v~= game.Players.LocalPlayer then
            game:GetService("TeleportService"):Teleport(placeid, v)
        end
    end
elseif _G.actSHNC==nil then
spawn(function()
_G.actSHNC=true
_G.time = 2
_G.dist = 3
_G.speed = 2
loadstring([[local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.HumanoidRootPart
local uis = game:GetService("UserInputService")

local keys = {
    W = false,
    A = false,
    S = false,
    D = false
}
uis.InputBegan:Connect(function(key,t)
    if not t then
        if keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] ~= nil then
            keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] = true
        end
    end
end)

uis.InputEnded:Connect(function(key,t)
    if not t then   
        if keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] ~= nil then
            keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] = false
        end
    end
end)

repeat task.wait(_G.time)
    if keys.W then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.LookVector*_G.speed,i/_G.dist)
        end
    elseif keys.S then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.LookVector*(-_G.speed),i/_G.dist)
        end
    elseif keys.A then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.RightVector*(-_G.speed),i/_G.dist)
        end
    elseif keys.D then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.RightVector*_G.speed,i/_G.dist)
        end
    end
until char.Humanoid.Health <= 0]])()
print('SH Loaded')
end)
spawn(function()
Players = game:GetService("Players")
speaker = Players.LocalPlayer
RunService = game:GetService("RunService")
local function NoclipLoop()
 if speaker.Character ~= nil then
  for _, child in pairs(speaker.Character:GetDescendants()) do
   if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
    child.CanCollide = false
   end
  end
 end
end
Noclipping = RunService.Stepped:Connect(NoclipLoop)
print('Noclip Loaded')
end)
else 
    local tpservice= game:GetService("TeleportService")
    local plr = game.Players.LocalPlayer
    tpservice:Teleport(game.PlaceId, plr)
end