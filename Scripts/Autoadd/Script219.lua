local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vateq/EZZ/main/nextui3coregui"))()

local main = lib.Load("Survival")
local TabNum1 = main:AddTab("Main")
main:SelectTab(1) -- Selects the first tab

_G.main = {
    collectwood = false,
    collect_collectables = false,
    attackbears = false
}

local section = TabNum1:AddSection("Main")

section:AddToggle({
    Name = "Collect Collectables",
    Default = false,
    Callback = function(Value)
        _G.main.collect_collectables = Value

        while _G.main.collect_collectables and task.wait() do
            for i, item in workspace:GetChildren() do
                if item:FindFirstChild("ProximityPrompt") then
                    fireproximityprompt(item:FindFirstChild("ProximityPrompt"),1)
                end
            end
        end
    end
})

section:AddToggle({
    Name = "Collect Wood",
    Default = false,
    Callback = function(Value)
        _G.main.collectwood = Value
        while _G.main.collectwood and task.wait() do
            for i, item in workspace:GetChildren() do
                if item.Name == "wood" then
                    firetouchinterest(item, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    firetouchinterest(item, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end
    end
})

section:AddButton({
    Title = "Quick Truck Complete",
    Callback = function()
        local item = workspace.truck

        for i, zack in item:GetChildren() do
            if zack:FindFirstChild("ProximityPrompt") then
                fireproximityprompt(zack:FindFirstChild("ProximityPrompt"),1)
            end
        end
    end
})

section:AddToggle({
    Name = "Faster Character",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})