--[[

█ █ ▀▄▀ █▀▀   █▀ █▀▀ █▀█ █ ▀█▀ █▀█ █▀
▀▄▀ █ █ █▄▄   ▄█ █▄▄ █▀▄ █  █  █▀▀ ▄█

]]--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("💿eat stuf get fat - MADE BY VXC SCRIPTS💿", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Rejoin", "yes", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

MainSection:NewButton("IY", "infinity yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- AUTOFARM
local FarmSection = Main:NewSection("AutoFarm")

local isTeleportingEnabled = false


local function teleportToClosestObject(objectName)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")

    local objectsFolder = game.Workspace:FindFirstChild("Cakes") 

    if objectsFolder then
        local objects = objectsFolder:GetChildren()

        local closestObject
        local closestDistance = math.huge

        for _, object in pairs(objects) do
            if object.Name == objectName then
                local distance = (object.Position - character.PrimaryPart.Position).Magnitude
                if distance < closestDistance then
                    closestObject = object
                    closestDistance = distance
                end
            end
        end

        if closestObject then
            local location = CFrame.new(closestObject.Position)
            wait(0.1)
            character:SetPrimaryPartCFrame(location)
        else
            warn("food '" .. objectName .. "' Not found '" .. objectsFolder.Name .. "'.")
        end
    else
        warn("Folder '" .. objectsFolder.Name .. "' Not found in Workspace.")
    end
end


FarmSection:NewToggle("AutoFarm", "Auto Farm", function(state)
    isTeleportingEnabled = state
    if isTeleportingEnabled then
        while isTeleportingEnabled do
            teleportToClosestObject("Bloxy Cola")
            wait(0)
            teleportToClosestObject("Cheezeburger")
            wait(0)
            teleportToClosestObject("Cake")
            wait(0)
            teleportToClosestObject("Chicken")
            wait(0)   
            teleportToClosestObject("Choc")
            wait(0)
            teleportToClosestObject("Donuts")
            wait(0) 
            teleportToClosestObject("Grapes")
            wait(0)
            teleportToClosestObject("Ice Cream")
            wait(0) 
            teleportToClosestObject("Space Sand")
            wait(0)
            teleportToClosestObject("Watermelon")
            wait(0) 
                
        end
    end
end)

-- INFO
local InfoSection = Main:NewSection("Info")

InfoSection:NewKeybind("HideGui", "I DONT WANNA SEE THIS SHIT", Enum.KeyCode.T, function()
    Library:ToggleUI()
end)
