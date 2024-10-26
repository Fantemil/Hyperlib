local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

local coinsFolder = game:GetService("Workspace"):FindFirstChild("Coins")

if humanoidRootPart and coinsFolder then
    local function getBananaCoins()
        local bananaCoins = {}
        for _, model in pairs(coinsFolder:GetChildren()) do
            if model:IsA("Model") and model.Name == "BananaCoin" then
                local primaryPart = model.PrimaryPart or model:FindFirstChild("BasePart")
                if primaryPart then
                    table.insert(bananaCoins, primaryPart)
                end
            end
        end
        return bananaCoins
    end

    local function teleportToBananaCoins()
        local bananaCoins = getBananaCoins()
        if #bananaCoins == 0 then
            print("No BananaCoins found.")
            return
        end
        
        while true do
            for _, part in pairs(bananaCoins) do
                humanoidRootPart.CFrame = part.CFrame
                wait(1)
            end
            bananaCoins = getBananaCoins()
            wait(1)
        end
    end

    teleportToBananaCoins()
else
    warn("HumanoidRootPart or Coins folder not found")
end
