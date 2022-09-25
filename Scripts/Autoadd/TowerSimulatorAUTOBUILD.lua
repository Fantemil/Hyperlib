local env = getgenv()

env.Settings = {
    ['AutoAddBricks'] = true;
}

local Settings = env.Settings

env.Players = game:GetService("Players")
env.RunService = game:GetService("RunService")
env.lp = Players['LocalPlayer']

local function getTower()
    for index, value in next, workspace:GetChildren() do 
        if value.Name == "Tower" and value.Owner.Value == lp then 
            return value 
        end
    end
end

local function AddBricksPerSecond(Tower)
    local Bricks = lp.leaderstats.Bricks.Value
    local left = Tower.PurchaseUpgradeButtonLeft or nil 
    local right = Tower.PurchaseUpgradeButtonRight or nil 
    if not left or not right then return end
    

    local price = tonumber( string.split(left.Head.ShopGui.Frame.Price.Text," ")[1] )
    

    if Bricks > price then 
        Bricks = Bricks - price 
        lp.Character.PrimaryPart.CFrame = left.Head.CFrame
        wait()
        firetouchinterest(lp.Character.PrimaryPart, left.Head, 0)
        firetouchinterest(lp.Character.PrimaryPart, left.Head, 1)
    end 
    
    price = tonumber( string.split(right.Head.ShopGui.Frame.Price.Text," ")[1] )
    
    if Bricks > price then 
        lp.Character.PrimaryPart.CFrame = right.Head.CFrame
        wait()
        firetouchinterest(lp.Character.PrimaryPart, right.Head, 0)
        firetouchinterest(lp.Character.PrimaryPart, right.Head, 1)
        
    end 
    
end

local function AddBricks(Tower)
    fireclickdetector(Tower.ClickDetector) 
end

local tower = getTower()

while Settings.AutoAddBricks do 
    RunService.Heartbeat:wait()
    AddBricks(tower)
    AddBricksPerSecond(tower)
end