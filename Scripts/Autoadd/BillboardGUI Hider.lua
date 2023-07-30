local function RemoveBillboard(instance)
    if instance:IsA("BillboardGui") then
        instance:Destroy()
        print(instance:GetFullName() .. " is a BillboardGui; Removed!")
    end
end

local function HideRobloxOverheadName(player)
    local PlayerCharacter = nil
    if not player.CharacterAppearanceLoaded then
        print(player.Name .. "'s Character isn't loaded. Waiting until it is.")
        player.CharacterAppearanceLoaded:Wait()
        print("Their Character supposedly loaded.")
        task.wait(0.063)
        PlayerCharacter = player.Character
    else
        print("Found " .. player.Name .. "'s Character! Let's hope this doesn't error.")
        PlayerCharacter = player.Character
    end
    
    if PlayerCharacter then
        local Humanoid = PlayerCharacter:WaitForChild("Humanoid",5)
        
        if Humanoid then
            Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            print("Removed their default nametag!")
        end
    end
end

for _, i in ipairs(workspace:GetDescendants()) do
    RemoveBillboard(i)
end

for _, p in ipairs(game.Players:GetPlayers()) do
    HideRobloxOverheadName(p)
end

workspace.ChildAdded:Connect(RemoveBillboard)
game.Players.PlayerAdded:Connect(HideRobloxOverheadName)