local ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()

local window = ui:Window({
    Text = "Idle Heroes Simulator"
})

local client = game.Players.LocalPlayer
local attackEvent = game:GetService("ReplicatedStorage").Packages["_Index"]["sleitnick_knit@1.4.7"].knit.Services.WeaponService.RE.Swing

local Settings = {
    Autofarm = false,
    Autolevel = false,
}

local Utils = {} do
    function Utils.GetPlate()
        for _, plate in next, workspace:WaitForChild("Plots"):GetChildren() do
            if plate.Owner.Value == client then
                return plate.Name
            end
        end
    end

    function Utils.EnemyName()
        for _, enemy in next, workspace:WaitForChild("Plots")[Utils.GetPlate()].Enemy:GetChildren() do
            if enemy and enemy:IsA("BasePart") then
                return enemy.Name
            end
        end
    end

    function Utils.EnemyAttack()
        local enemyPlot = Utils.GetPlate()
        local enemyName = Utils.EnemyName()

        if enemyPlot and enemyName then
            attackEvent:FireServer(workspace.Plots[enemyPlot].Enemy[enemyName])
        end
    end

    function Utils.IsPlayerAlive()
        local humanoid = client.Character and client.Character.Humanoid
        local root = client.Character and client.Character:WaitForChild("HumanoidRootPart", 5)

        if root and (humanoid and humanoid.Health > 0) then
            return true
        end
    end

    function Utils.Teleport(part)
        if part and Utils.IsPlayerAlive() then
            client.Character.PrimaryPart:PivotTo(part)
        end
    end

    function Utils.GetEnemyLocation()
        for _, enemy in next, workspace:WaitForChild("Plots")[Utils.GetPlate()].Enemy:GetChildren() do
            if enemy and enemy:IsA("BasePart") then
                return enemy.CFrame * CFrame.new(0, 0, -5)
            end
        end
    end

    function Utils.Farm()
        Utils.Teleport(Utils.GetEnemyLocation()) do
            Utils.EnemyAttack()
        end
    end

    function Utils.CanLevel()
        for _, button in next, workspace:WaitForChild("Plots")[Utils.GetPlate()].Buttons:GetChildren() do
            local levelButton = string.find(button.Name, "NextLevel")
            if levelButton then
                return true
            end
        end
    end

    function Utils.LevelPosition()
        if Utils.IsPlayerAlive() and Utils.CanLevel() then
            for _, level in next, workspace:WaitForChild("Plots")[Utils.GetPlate()].Buttons.NextLevel:GetChildren() do
                if level:IsA("Part") and level.Name:find("Touch") then
                    return level.CFrame
                end
            end
        end
    end

    function Utils.AutoLevel()
        if Utils.IsPlayerAlive() and Utils.CanLevel() then
            for _, level in next, workspace:WaitForChild("Plots")[Utils.GetPlate()].Buttons.NextLevel:GetChildren() do
                local touch = string.find(level.Name, "Touch")
                if touch then
                    Utils.Teleport(Utils.LevelPosition())
                end
            end
        end
    end
end

local Tabs = {}
Tabs.Autofarm = window:Tab({ Text = "Main" }) do
    local Autofarm = Tabs.Autofarm:Section({ Text = "Autofarm" }) do
        Autofarm:Toggle({ Text = "Auto kill", Callback = function(value)
            Settings.Autofarm = value
        end})

        Autofarm:Toggle({ Text = "Auto level", Callback = function(value)
            Settings.Autolevel = value
        end})
    end
end

task.spawn(function()
    while task.wait() do
        if Settings.Autofarm then
            Utils.Farm()
        end
        if Settings.Autolevel then
            Utils.AutoLevel()
        end
    end
end)