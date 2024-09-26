--// Settings
getgenv().InfiniteCurrency = true
getgenv().FreeGamepasses = true
getgenv().CurrencyMultiplier = 500

--// Functions
local function MineChest(Chest)
    game:GetService("ReplicatedStorage").Services.TreasureChestSpawner.ChestHit:FireServer(Chest)
end
local function GetChestHits(Name)
    if Name == "CoinChest" then
        return 10
    else
        return 20
    end
end
local function Gamepass(Path)
    if FreeGamepasses == true then
        Path.Value = true
    else
        Path.Value = false
    end
end

--// Scripts
spawn(function()
    while task.wait(1) and InfiniteCurrency == true do
        for i, v in pairs(game:GetService("Workspace").TreasureChest:GetChildren()) do
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Neon.CFrame
            for i = 1, CurrencyMultiplier * GetChestHits(tostring(v.Name)) do
                MineChest(workspace:WaitForChild("TreasureChest"):WaitForChild(tostring(v.Name)))
            end
        end
    end
end)
spawn(function()
    for i, v in pairs(game:GetService("Players").LocalPlayer.Data.GamePasses:GetChildren()) do
        Gamepass(v)
    end
end)