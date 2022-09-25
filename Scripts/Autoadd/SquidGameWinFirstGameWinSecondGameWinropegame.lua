local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SaveTheNoob/Fat/main/Ase7930/UILIBGOOD"))()

local Window = lib:CreateWindow("Squid Game", Color3.fromRGB(205, 76, 255))
local Tab1 = Window:CreateTab("Squid Game")

Tab1:CreateLabel("Main")

Tab1:CreateButton("Win First Game", function(fg)
    local Person = game:GetService("Workspace").Game1.Person
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Person:FindFirstChild('HumanoidRootPart', true).CFrame
end)

Tab1:CreateButton("Win Second Game", function(fg)
    game:GetService("ReplicatedStorage").Remotes.SugarHoneycomb:FireServer(true) 
end)

Tab1:CreateButton("Win Third Game", function(fg)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
end)

local RopeGame = false

Tab1:CreateToggle("Win rope game", function(state)
    RopeGame = state
end)

while wait() do
    if RopeGame then
        game:GetService("ReplicatedStorage").TugRemote:FireServer()
    end
end