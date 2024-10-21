local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cat Clicker ð¾", "Sentinel")

local Main = Window:NewTab("Main")
local ExploitSection = Main:NewSection("Exploit Section")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

_G.AutoFish = false
_G.AutoClick = false
_G.AutoRebirth = false
_G.AutoUpgrade = false

ExploitSection:NewToggle("Increase Fish", "Gives you tons of fishes", function(state)
    _G.AutoFish = state
    while _G.AutoFish do
        ReplicatedStorage:WaitForChild("Fish"):FireServer(2545123990708486000)
        task.wait()
    end
end)

ExploitSection:NewToggle("Auto Click", "Clicks the cat for you", function(state)
    _G.AutoClick = state
    while _G.AutoClick do
        ReplicatedStorage:WaitForChild("Click"):FindFirstChild("Click"):FireServer()
        task.wait()
    end
end)

ExploitSection:NewToggle("Auto Rebirth", "Rebirths for you", function(state)
    _G.AutoRebirth = state
    while _G.AutoRebirth do
        ReplicatedStorage:WaitForChild("Rebirth"):FireServer()
        task.wait()
    end
end)

ExploitSection:NewToggle("Auto Upgrade", "Upgrades for you", function(state)
    _G.AutoUpgrade = state
    while _G.AutoUpgrade do
        ReplicatedStorage:WaitForChild("MultiShop")['x100']:FireServer()
        for _, event in ipairs(ReplicatedStorage.Shop:GetChildren()) do
            event:FireServer()
        end
        task.wait()
    end
end)