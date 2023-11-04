local WallyLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local Window = WallyLib:CreateWindow("Tower Of Easy OP")
local Folder = Window:CreateFolder("Main")

local enteredCoins = "0" -- Default value

Folder:Box("Coins Amount To Get)", enteredCoins, function(coinsValue)
    enteredCoins = coinsValue
end)

Folder:Button("Button", function()
    local args = {
        [1] = enteredCoins
    }
    game:GetService("ReplicatedStorage"):WaitForChild("GrantCoins"):InvokeServer(unpack(args))
end)

Folder:Button("Teleport To End", function()
    local player = game.Players.LocalPlayer

if player and player.Character then
    local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart.CFrame = CFrame.new(77.6506348, 231.599915, 61.626442, -0.0347697996, -6.48372449e-08, -0.99939537, -6.84762824e-08, 1, -6.24941237e-08, 0.99939537, 6.62619755e-08, -0.0347697996)  -- This sets the CFrame to the origin (0, 0, 0)
        print("CFrame set to new position!")
    else
        warn("HumanoidRootPart not found!")
    end
else
    warn("Player or Character not found!")
end
end)