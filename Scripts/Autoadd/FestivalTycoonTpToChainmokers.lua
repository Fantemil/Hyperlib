local PEPESWASHERE = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local WOWPEPES = PEPESWASHERE.CreateLib("Chainsmokers BodyGuard", "BloodTheme")
local YESPEPES = WOWPEPES:NewTab("Main")
local MHMPEPES = YESPEPES:NewSection("Main")

MHMPEPES:NewButton("Go to Chainsmokers #1", "Go to Chainsmokers #1", function()
    local cframe1 = CFrame.new(-1154.87732, 19.0743427, -743.766174)
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = cframe1
    task.wait(1) -- ISLAND LOAD
    local cframe = CFrame.new(-859.44397, 190.509644, -713.861145)
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = cframe
end)

MHMPEPES:NewButton("Go to Chainsmokers #2", "Go to Chainsmokers #2", function()
    local cframe1 = CFrame.new(427.601807, 33.1867371, 1184.68884)
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = cframe1
    task.wait(1) -- ISLAND LOAD
    local cframe = CFrame.new(681.657898, 264.079407, 1320.10364)
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = cframe
end)

MHMPEPES:NewButton("Go to Chainsmokers #3", "Go to Chainsmokers #3", function()
    local args = {
        [1] = "Oliver"
    }
    
    game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
end)

MHMPEPES:NewButton("Go to Chainsmokers #4", "Go to Chainsmokers #4", function()
    local args = {
        [1] = "Mooshu"
    }
    
    game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
end)