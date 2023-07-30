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

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local me = Players.LocalPlayer

-- define a function to set the CFrame of the BaseParts in CubeFolder to the position of the player's HumanoidRootPart
local function setCubeFolderCFrames()
    for i, v in pairs(workspace.CubeFolder:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CFrame = CFrame.new(me.Character.HumanoidRootPart.Position)
            return
        end
    end
end

-- connect the function to the "e" key press event
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.E then
        setCubeFolderCFrames()
    end
end)
