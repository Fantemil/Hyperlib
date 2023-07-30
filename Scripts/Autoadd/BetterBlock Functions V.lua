local BlockedUsersFolder = game:FindFirstChild("BlockedUsers")
if not BlockedUsersFolder then
    BlockedUsersFolder = Instance.new("Folder")
    BlockedUsersFolder.Name = "BlockedUsers"
    BlockedUsersFolder.Parent = game
end

local function BlockUser(user)
    local player = nil
    
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p.Name == user or p.DisplayName == user then
            player = p
            break
        end
    end
    
    if player then
        local character = player.Character
        if character then
            character.Parent = BlockedUsersFolder
            print("Blocked user: " .. player.Name)
        end
    end
end

local function UnblockUser(user)
    local player = nil
    
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p.Name == user or p.DisplayName == user then
            player = p
            break
        end
    end
    
    if player then
        local character = player.Character
        if character then
            character.Parent = game.Workspace
            print("Unblocked user: " .. player.Name)
        end
    end
end

--# UnblockUser('ROBLOX')
BlockUser('ROBLOX')