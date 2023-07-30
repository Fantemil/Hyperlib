local HttpService = game:GetService("HttpService")
local BlockedUsersFolder = game:FindFirstChild("BlockedUsers")
local BlockedUsersFile = "BlockedUsers.json" -- JSON file name to store blocked users

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

            local blockedUsers = {}

            if isfile(BlockedUsersFile) then
                local data = readfile(BlockedUsersFile)
                blockedUsers = HttpService:JSONDecode(data)
            end

            table.insert(blockedUsers, player.Name)

            writefile(BlockedUsersFile, HttpService:JSONEncode(blockedUsers))
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

            if isfile(BlockedUsersFile) then
                local data = readfile(BlockedUsersFile)
                local blockedUsers = HttpService:JSONDecode(data)

                for i, blockedUser in ipairs(blockedUsers) do
                    if blockedUser == player.Name then
                        table.remove(blockedUsers, i)
                        break
                    end
                end
                writefile(BlockedUsersFile, HttpService:JSONEncode(blockedUsers))
            end
        end
    end
end

-- Block users listed in the JSON file
if isfile(BlockedUsersFile) then
    local data = readfile(BlockedUsersFile)
    local blockedUsers = HttpService:JSONDecode(data)

    for _, blockedUser in ipairs(blockedUsers) do
        BlockUser(blockedUser)
    end
end

-- BlockUser('ROBLOX')
-- UnblockUser('ROBLOX')