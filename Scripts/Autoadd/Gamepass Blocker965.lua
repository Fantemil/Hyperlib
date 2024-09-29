local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local function blockPrompts()
    MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, gamePassId, wasPurchased)
        if not wasPurchased then
            print("Purchase attempt blocked for game pass ID:", gamePassId)
        else
            print("Game pass purchased:", gamePassId)
        end
    end)

    MarketplaceService.PromptProductPurchaseFinished:Connect(function(userId, productId, wasPurchased)
        local player = Players:GetPlayerByUserId(userId)
        if not wasPurchased then
            print("Purchase attempt blocked for developer product ID:", productId)
        else
            print("Developer product purchased:", productId)
        end
    end)
end

blockPrompts()
print("Handling game pass and developer product prompts.")