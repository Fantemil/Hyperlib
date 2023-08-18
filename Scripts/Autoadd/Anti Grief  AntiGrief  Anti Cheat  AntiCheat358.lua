--[[

    Blockate Anti-Grief

    This Script Prevents These Types of Griefing:

    ✅ Block Deletion
    ✅ Paint Griefing
    ✅ Command-based griefing (!warp, !kill, !cannon, etc.)

    HOW TO USE:
    1. Run !logs
    2. Run script
    3. Enjoy

]]

-- // Configuration \\ --
getgenv().MAX_BLOCK_DELETE = 30 -- how many blocks have to be deleted per 2 seconds for the check to trigger
getgenv().MAX_BLOCK_PAINT = 300 -- how many blocks have to be painted per 2 seconds for the check to trigger
getgenv().MAX_BLOCK_CHANGED = 30 -- how many !warp, !cannon commands have to be run per 2 seconds on a block for the check to trigger
getgenv().MAX_CHANCES = 3 -- how many times does the person need to be hubbed before they get banned
getgenv().WARNING_COOLDOWN = 3
-- // Services \\ --
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local SOUND_BLOCK_COMMAND = "soundblock"
-- // Setup \\ --
if not isfolder("./BlockateAntiGrief") then
    makefolder("./BlockateAntiGrief")
end
if not isfile("./BlockateAntiGrief/GrieferList.json") then
    writefile("./BlockateAntiGrief/GrieferList.json", "{}")
end

-- // Variables \\ --

local playerDestroyCount = {}
local playerPaintCount = {}
local grieferList = HttpService:JSONDecode(readfile("./BlockateAntiGrief/GrieferList.json"))
local destroyWarningCooldown = {} -- Add the destroy warning cooldown table
local paintWarningCooldown = {}   -- Add the paint warning cooldown table

local exemptedPlayers = {
    "void1z", 
    "Player2",
    -- Add more player names as needed
}

-- Function to check if a player is exempted
local function isPlayerExempted(playerName)
    return table.find(exemptedPlayers, playerName) ~= nil
end

-- // Functions \\ --
local function shout(message)
    game:GetService("ReplicatedStorage").Sockets.Command:InvokeServer("!shout "..message)
end

-- Function to ban a player (modified to check for exemption)
local function ban(playerName, reason)
    if reason == nil then reason = "No reason given." end
    if not isPlayerExempted(playerName) then
        game:GetService("ReplicatedStorage").Sockets.Command:InvokeServer("!ban " .. playerName)
        shout("\n\n\n\n\n\n\n✅ Banned Player: " .. playerName .. " with reason: " .. reason)
        return true
    else
        print(playerName .. " is exempted from ban.")
    end
    return false
end

-- Function to hub a player (modified to check for exemption)
local function hub(playerName, reason)
    if reason == nil then reason = "No reason given." end
    if not isPlayerExempted(playerName) then
        local response = game:GetService("ReplicatedStorage").Sockets.Command:InvokeServer("!hub " .. playerName)
        print(response)
        if response:find("Hubbed") then
            shout("\n\n\n\n\n\n\n✅ Hubbed Player: " .. playerName .. " with reason: " .. reason .. ".\nThey have " .. (grieferList[playerName] or 0) .. "/" .. getgenv().MAX_CHANCES .. " chances left until they get banned.")
            return true
        else
            shout("\n\n\n\n\n\n\n❗ Failed to hub player: " .. playerName)
            return false
        end
    else
        print(playerName .. " is exempted from hub.")
    end
    return false
end

local function increment(person)
    if not grieferList[person] then
        grieferList[person] = 0
    end
    grieferList[person] = grieferList[person] + 1
    writefile("./BlockateAntiGrief/GrieferList.json", HttpService:JSONEncode(grieferList))
    if grieferList[person] >= getgenv().MAX_CHANCES then
        ban(person, "Griefer")
    end
end

-- // Events \\ --
Players.LocalPlayer.PlayerGui:WaitForChild("MainGUI"):WaitForChild("Logs").Visible = true -- opens the logs gui so the event below wont freak out and hub/ban randoms
shout("\n\n\n\n\n\n\nBlockate Anti-Grief Started.")
Players.LocalPlayer.PlayerGui.MainGUI.Logs.LogsList.ChildAdded:Connect(function(child)
    if string.find(child.Text, "destroyed") then
        local Args = child.Text:split(" ")
        local player = Args[1]

        playerDestroyCount[player] = (playerDestroyCount[player] or 0) + 1
        print("Block deleted by "..player..", their destroy count per two seconds is currently: "..playerDestroyCount[player])
    elseif string.find(child.Text, "painted") then
        local Args = child.Text:split(" ")
        local player = Args[1]
        local paintedBlocks = Args[3] == "a" and 1 or Args[3]
        playerPaintCount[player] = (playerPaintCount[player] or 0) + paintedBlocks
        print("Block painted by "..player..", their paint count per two seconds is currently: "..playerPaintCount[player])
    elseif string.find(child.Text, "warp") then
        local playerName = child.Text:split(" ")[1]
        shout("\n\n\n\n\n\n\n[BLOCK GUARD] Hubbing Player for using !warp: "..playerName)
        hub(playerName, "Used !warp")
        increment(playerName)
    elseif string.find(child.Text, "changed block with '"..SOUND_BLOCK_COMMAND.."'") then
        -- Player used the soundblock command, hub them
        local Args = child.Text:split(" ")
        local player = Args[1]
        -- Add a check to prevent the local player from being hubbed or banned
        if player == game.Players.LocalPlayer.Name then
            return
        end
        shout("\n\n\n\n\n\n\n[BLOCK GUARD] Hubbing Potential Griefer (Used Soundblock Command): "..player)
        hub(player, "Used Soundblock Command")
        playerDestroyCount[player] = nil
        playerPaintCount[player] = nil
        increment(player)
    elseif string.find(child.Text, "ran '!tp all me'") then
        -- Player used the command "tp all me," hub them
        local playerName = child.Text:split(" ")[1]
        shout("\n\n\n\n\n\n\n[BLOCK GUARD] Hubbing Player for using 'tp all me': " .. playerName)
        hub(playerName, "Used 'tp all me' command")
        increment(playerName)
    end
end)

local MarketplaceService = game:GetService("MarketplaceService")

Players.PlayerAdded:Connect(function(player)
    -- Auto-ban players whose accounts are under 30 days old
    local daysUnderLimit = 30
    if player.AccountAge <= 30 then
        ban(player.Name, "New Account (Under " .. daysUnderLimit .. " days)")
    else
        pcall(function()
            local grieferCount = grieferList[player.Name] or 0 -- Retrieve the griefer count or set to 0 if not found
            if grieferCount >= getgenv().MAX_CHANCES then
                return ban(player.Name, "Griefer")
            end
        end)
        playerDestroyCount[player.Name] = 0
        playerPaintCount[player.Name] = 0
    end
end)

for _,v in pairs(Players:GetPlayers()) do
    pcall(function()
        if grieferList[v.Name] and grieferList[v.Name] >= getgenv().MAX_CHANCES then
            return ban(v.Name, "Griefer")
        end
    end)
    playerDestroyCount[v.Name] = 0
    playerPaintCount[v.Name] = 0
end

local function sendTeamChat(message)
    local args = {
        [1] = message,
        [2] = "Team"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end

while wait(1) do
    local localPlayer = game.Players.LocalPlayer

    -- Block Destroy and Block Paint
    for k, v in pairs(playerDestroyCount) do
        if k ~= localPlayer.Name and not isPlayerExempted(k) then -- Skip processing the local player's data and exempted players
            if v >= getgenv().MAX_BLOCK_DELETE then
                shout("\n\n\n\n\n\n\n[BLOCK GUARD] Hubbing Potential Griefer: "..k)
                hub(k, "Potential Griefer")
                playerDestroyCount[k] = nil
                playerPaintCount[k] = nil
                increment(k)
            elseif v >= 10 then -- Only send the warning when blocks destroyed are 10 or more
                local cooldown = destroyWarningCooldown[k] or 0
                if os.time() > cooldown then
                    sendTeamChat("[BLOCK GUARD] "..k.." has destroyed "..v.." blocks in a short time! Watch out for potential griefing!")
                    destroyWarningCooldown[k] = os.time() + getgenv().WARNING_COOLDOWN
                end
            end
        end
    end

    for k, v in pairs(playerPaintCount) do
        if k ~= localPlayer.Name and not isPlayerExempted(k) then -- Skip processing the local player's data and exempted players
            if v >= getgenv().MAX_BLOCK_PAINT then
                shout("\n\n\n\n\n\n\n[BLOCK GUARD] Hubbing Potential Griefer: "..k)
                hub(k, "Potential Griefer")
                playerPaintCount[k] = nil
                playerDestroyCount[k] = nil
                increment(k)
            elseif v >= 10 then -- Only send the warning when blocks painted are 10 or more
                local cooldown = paintWarningCooldown[k] or 0
                if os.time() > cooldown then
                    sendTeamChat("[BLOCK GUARD] "..k.." has painted "..v.." blocks in a short time! Watch out for potential griefing!")
                    paintWarningCooldown[k] = os.time() + getgenv().WARNING_COOLDOWN
                end
            end
        end
    end

    -- Reset the counters after each 2 seconds
    task.spawn(function()
        for k in pairs(playerDestroyCount) do
            playerDestroyCount[k] = 0
        end

        for k in pairs(playerPaintCount) do
            playerPaintCount[k] = 0
        end
    end)
end

-- Function to open the logs GUI
local function openLogsGUI()
    Players.LocalPlayer.PlayerGui:WaitForChild("MainGUI"):WaitForChild("Logs").Visible = true
end

-- Event handler to check if Logs GUI is closed and reopen it
local function checkLogsGUI()
    while wait(4) do
        local logsGUI = Players.LocalPlayer.PlayerGui:FindFirstChild("MainGUI") and Players.LocalPlayer.PlayerGui.MainGUI.Logs
        if not logsGUI or not logsGUI.Visible then
            openLogsGUI()
        end
    end
end

-- Spawn the event handler in a new thread
task.spawn(checkLogsGUI)