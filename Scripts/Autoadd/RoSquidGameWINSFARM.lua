getgenv().FarmWins = true
getgenv().OpenCrates = false

local WinParts = {}
local ft = firetouchinterest
local rs = game:GetService("RunService").RenderStepped
local function GetParts()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Part") then
            return v
        end
    end
end

for _, v in pairs(game:GetService("Workspace")["WIN TEST T"]:GetChildren()) do
    table.insert(WinParts, v)
end
table.insert(WinParts, game:GetService("Workspace").Winner.Win.Coin)

rs:Connect(function()
    if getgenv().FarmWins then
        for _, v in pairs(WinParts) do
            ft(GetParts(), v, 0)
            ft(GetParts(), v, 1)
        end
    end
end)

while getgenv().OpenCrates and wait(0.3) do
    if game:GetService("Players").LocalPlayer.leaderstats.Points.Value >= 80 then
        game:GetService("ReplicatedStorage").BuyEgg:InvokeServer(workspace.HatShop.NormalCrate, 1)
    end
end