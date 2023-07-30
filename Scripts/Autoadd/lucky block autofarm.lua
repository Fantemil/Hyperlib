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

local loop = false
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local me = Players.LocalPlayer

workspace.Map.FloorPart.Size = Vector3.new(2048,200.134,2048)
workspace.Map.FloorPart.CFrame = CFrame.new(-327.00299072265625, -97.72601318359375, -430.1109924316406)

-- define a function to set the CFrame of the BaseParts in CubeFolder to the position of the player's HumanoidRootPart
local function setCubeFolderCFrames()
    for i, v in pairs(workspace.PropsFolder.LUCK_BLOCK:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "MeshPart" then
            v.CanCollide = false
            v.CFrame = CFrame.new(me.Character.HumanoidRootPart.Position)
            v.Anchored = true
        end
    end
end

-- connect the function to the "e" key press event
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.E then
        loop = not loop
    end
    while loop do
       setCubeFolderCFrames()
       wait(0.1)
       if loop ~= true then
           return
       end
    end
end)