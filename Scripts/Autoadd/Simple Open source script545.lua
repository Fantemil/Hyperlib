local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

for i,v in pairs(game.workspace:GetChildren()) do
    if v.Name == "Orbs" then
		if not v:FindFirstChildOfClass("Model") then
			game.workspace.Orbs:Destroy()
        end
    end
end

local OldNameCall
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...)
    if not checkcaller()  and (B == "WalkSpeed" or B == "JumpPower") then
        return
    end
    return OldNameCall(A, B, ...)
end)

local Neverlose_Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mana42138/Neverlose-UI/main/Source.lua"))()
local win = Neverlose_Main:Window({
    Title = "NEVERLOSE",
    CFG = "Neverlose",
    Key = Enum.KeyCode.H,
    External = {
        KeySystem = false,
        Key = {
            "Test",
            "Beta"
        }
    }
})

local TabSection1 = win:TSection("Misc - Main")

local tab = TabSection1:Tab("Main")

local FarmSection = tab:Section("Farms")
local RebirthSection = tab:Section("Rebirth")
local AutoBuySection = tab:Section("Auto Buy")
local TeleportSection = tab:Section("Teleport")
local CreditSection = tab:Section("Credits")
local ohString1 = "Rebirth2"
local ohNumber2 = 500

game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohNumber2)
CreditSection:Slider("Mana#9724", 0, 1, 0, function() end)

CreditSection:Slider("Walk Speed", 16, 250, 0, function(v)
    Client.Character.Humanoid.WalkSpeed = v
end)

CreditSection:Slider("Jump Power", 50, 250, 0, function(v)
    Client.Character.Humanoid.JumpPower = v
end)

local JoinDiscord = CreditSection:Toggle("Discord", function(t)
    Neverlose_Main:Notify({
        Text = "Discord Copied to Clipboard",
        Time = 2
    })
    setclipboard("https://discord.gg/qq6WgyMwkw")
    hasclicked = t
end)

task.spawn(function()
    while task.wait() do
        if hasclicked then
            JoinDiscord:Set(false)
        end
    end
end)

FarmSection:Toggle("Auto Collect Energy", function(t)
    AutoCollectEnergy = t
end)

task.spawn(function()
    while task.wait(.5) do
        if AutoCollectEnergy then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Orbs:GetChildren()) do
					local ohString1 = "Orbs"
					local ohString2 = "Absorb"
					local ohString3 = tostring(v.Name)
					
					game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohString2, ohString3)
                end
            end)
        end
    end
end)

RebirthSection:Slider("Ammount of Rebirths", 1, 10000, 500, function(t)
    RebirthsAmmount = t
end)

RebirthSection:Toggle("Auto Farm Rebirths", function(t)
    AutoFarmRebirths = t
end)

task.spawn(function()
    while task.wait(.5) do
        if AutoFarmRebirths then
            pcall(function()
                local ohString1 = "Rebirth2"
                local ohNumber2 = RebirthsAmmount
                
                game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohNumber2)
            end)
        end
    end
end)


AutoBuySection:Toggle("Auto Buy Range", function(t)
    AutoBuyRange = t
    if AutoBuyRange then
        Neverlose_Main:Notify({
            Text = "Auto Buy Range will execute ever 3 minutes!",
            Time = 2
        })
    end
end)

task.spawn(function()
    while task.wait() do
        if AutoBuyRange then
            pcall(function()
                local Range_Table = {"Wood","Electric","Chemical","Tech %s 3000","Starry","Flux 1.0","Honey","Toxic","Magic","Town","Utility","Crystal","Horror","Spark","Lava","Underworld","Inferno","Futuristic","%s 16000","Upgraded","Heavenly","Beam","Steam Punker's","Future Tech","Juice","Gold","Rocket"}
                for i,v in pairs(Range_Table) do
                    local ohString1 = "Shop"
                    local ohString2 = "Buy"
                    local ohString3 = v
                    game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohString2, ohString3)
                end
            end)
        end
        task.wait(3*60)
    end
end)

local Egg_Table = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    table.insert(Egg_Table, v.Name)
end

AutoBuySection:Dropdown("Select Egg", Egg_Table, function(t)
    SelectedEgg = t
end)

AutoBuySection:Toggle("Auto Buy Egg", function(t)
    AutoBuyEgg = t
end)

task.spawn(function()
    while task.wait(.5) do
        if AutoBuyEgg then
            pcall(function()
                local ohString1 = "Pet"
                local ohString2 = "Egg"
                local ohString3 = "Hatch"
                local ohString4 = SelectedEgg
                local ohNumber5 = 1

                game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohString2, ohString3, ohString4, ohNumber5)
            end)
        end
    end
end)

AutoBuySection:Toggle("Auto Buy Zones", function(t)
    AutoBuyZone = t
end)

task.spawn(function()
    while task.wait(.5) do
        if AutoBuyZone then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace")["Zone Sets"]:GetChildren()) do
                    local ohString1 = "Area"
                    local ohString2 = "Buy Zone"
                    local ohString3 = v.Name
                    
                    game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohString2, ohString3)
                end
            end)
        end
    end
end)

AutoBuySection:Toggle("Auto Equip Best Pet", function(t)
    AutoEquipBestPet = t
end)

task.spawn(function()
    while task.wait(.5) do
        if AutoEquipBestPet then
            pcall(function()
                local ohString1 = "Pet"
                local ohString2 = "Pet"
                local ohString3 = "Equip Best"

                game:GetService("ReplicatedStorage").Remote:FireServer(ohString1, ohString2, ohString3)
            end)
        end
    end
end)

-- local Zones_Table = {}
-- for i,v in paris(game:GetService("Workspace")["Zone Sets"]:GetChildren()) do
--     table.insert(Zones_Table, v.Name)
-- end

local Zones_Table = {}
for i,v in pairs(game:GetService("Workspace")["Zone Sets"]:GetChildren()) do
    table.insert(Zones_Table, v.Name)
end

TeleportSection:Dropdown("Select Zone", Zones_Table, function(t)
    SelectedZone = t
end)

local TeleportButton = TeleportSection:Toggle("Teleport", function(t)
    -- game:GetService("Workspace")["Zone Sets"].Desert
    HasTeleported = t
    if HasTeleported then
        Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Zone Sets"][SelectedZone].CFrame
        Neverlose_Main:Notify({
            Text = "TP Complete | "..SelectedZone,
            Time = 2
        })
    end
end)

task.spawn(function()
    while task.wait() do
        if HasTeleported then
            TeleportButton:Set(false)
        end
    end
end)