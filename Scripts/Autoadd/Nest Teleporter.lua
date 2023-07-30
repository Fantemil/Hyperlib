local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Obby But You're a bird Teleporter", "DarkTheme")

--Main
local Main = Window:NewTab("Teleports")
local MainSection = Main:NewSection("Checkpoints")

MainSection:NewButton("Nest Spawn (Spawn)", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local SomeNests = workspace.Nests
local pCount = 0

-- Count the number of parts in the Nests folder
for _, part in ipairs(SomeNests:GetChildren()) do
    if part:IsA("BasePart") then
        pCount = pCount + 1
    end
end

-- Create MainSection buttons for each part in the Nests folder
for i = 1, pCount do
    local part = SomeNests:FindFirstChild(tostring(i))
    if part then
        local part1 = part.Name
        local button1 = "Nest " .. part1 .. " (" .. (i * 10) .. " meters)"
        
        MainSection:NewButton(button1, "", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
        end)
    end
end