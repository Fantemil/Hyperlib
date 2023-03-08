local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("(STOMP EFFECTS!) Hood Genesis", "DarkTheme")

local Tab = Window:NewTab("Combat")


local Section = Tab:NewSection("Combat")

Section:NewToggle("Instant Kill", "Instant Kill", function(state)
    if state then
        _G.AutoPunch = true
        while _G.AutoPunch do
        game:GetService("ReplicatedStorage").SuperPunch:FireServer("SuperPunch")
        wait(0.1)
end
    else
        _G.AutoPunch = false
    end
end)

Section:NewButton("Goto Random Person", "Gotos Random Person", function()
    for i,v in pairs(game:GetService("Workspace").Players:GetDescendants()) do
        if v:IsA("Part") and v.Name == ("HumanoidRootPart") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(v.Position)
        end
        end
end)

Section:NewButton("Delete All Doors With Locks", "Deletes Doors", function()
    for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
        if v:IsA("Model") then
            v.Parent = nil
        end
        end
end)