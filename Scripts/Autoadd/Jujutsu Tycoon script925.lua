local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Jujutsu Tycoon", "BloodTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Collect Cash")
Section:NewButton("Click", "ButtonInfo", function()
    for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "BasicLoot" or v.Name == "NpcBossLoot" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        fireproximityprompt(v.ProximityPrompt)
    end
end
end)
local Section = Tab:NewSection("Kill All Students")
Section:NewButton("Click", "ButtonInfo", function()
    for i,v in pairs(workspace.Characters:GetChildren()) do
    if v.Name == "Student" then
        game:GetService("ReplicatedStorage").DamagePlayer:FireServer(v.Humanoid, 1000)
    end
end
end)
local Section = Tab:NewSection("Kill Boss")
Section:NewButton("Click", "ButtonInfo", function()
    game:GetService("ReplicatedStorage").DamagePlayer:FireServer(game:GetService("Workspace").Characters.Boss.Humanoid, 1000)
end)
local Section = Tab:NewSection("Kill All Players")
Section:NewButton("Click", "ButtonInfo", function()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        game:GetService("ReplicatedStorage").DamagePlayer:FireServer(v.Character.Humanoid, 1000)
    end
end
end)