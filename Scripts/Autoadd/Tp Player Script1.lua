--// Made By Zans \\--
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Tp Player Script", HidePremium = false, SaveConfig = true, ConfigFolder = "TeleportConfig"})

local Tab = Window:MakeTab({
    Name = "Player Tp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Dropdown"
})

local selectedPlayer
local function updateDropdown()
    local players = game:GetService("Players"):GetPlayers()
    local playerNames = {}

    for _, player in ipairs(players) do
        table.insert(playerNames, player.Name)
    end

    return playerNames
end

local d
Tab:AddButton({
    Name = "Refresh Player List",
    Callback = function()
    d:Refresh(updateDropdown(), true)
    end
})

d = Tab:AddDropdown({
    Name = "Select Player",
    Default = "",
    Options = updateDropdown(),
    Callback = function(value)
        selectedPlayer = value
    end
})

local function teleportToPlayer(playerName)
    local player = game:GetService("Players"):FindFirstChild(playerName)
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = player.Character.HumanoidRootPart
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hrp.CFrame
    end
end

local function teleportToPlayer2(playerName)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = playerName
end

Tab:AddButton({
    Name = "Tp To Player",
    Callback = function()
        if selectedPlayer then
            teleportToPlayer(selectedPlayer)
        else
            print("No player selected.")
        end
    end
})

local Section = Tab:AddSection({
	Name = "TextBox(Very Good)"
})

local function getPlayerByName(name)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name:lower():find(name:lower()) or player.DisplayName:lower():find(name:lower()) then
            return player
        end
    end
    return nil
end

Tab:AddTextbox({
	Name = "Player Username",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		user = Value
	end	  
})

Tab:AddButton({
    Name = "Tp To Player",
    Callback = function()
    local nameuser = getPlayerByName(user)
        if nameuser then
            teleportToPlayer2(nameuser.Character.HumanoidRootPart.CFrame)
        else
            print("No player selected.")
        end
    end
})

OrionLib:Init()