local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
_G.closeBind = Enum.KeyCode.C
local win = lib:Window("Autofarm", "Buffer aka Exploitns", Color3.fromRGB(255, 110, 48), _G.closeBind)
local tab = win:Tab("Teleports", "http://www.roblox.com/asset/?id=6023426915")

tab:Line()

tab:Button("25 Wins", "Teleport to 25 wins location", function()
    local targetPosition = Vector3.new(5709.28, 0.40, 15985.13)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    lib:Notification("Teleported to 25 wins location", "Success")
end)

tab:Button("50 Wins", "Teleport to 50 wins location", function()
    local targetPosition = Vector3.new(6726.85, 0.40, 5315.59)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    lib:Notification("Teleported to 50 wins location", "Success")
end)

tab:Button("100 Wins", "Teleport to 100 wins location", function()
    local targetPosition = Vector3.new(8758.84, 0.40, 15297.42)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    lib:Notification("Teleported to 100 wins location", "Success")
end)

tab:Button("600 Wins", "Teleport to 600 wins location", function()
    local targetPosition = Vector3.new(13879.34, 0.40, 38868.24)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    lib:Notification("Teleported to 600 wins location", "Success")
end)

local opTab = win:Tab("OP", "http://www.roblox.com/asset/?id=6023426915")

local autoFarming = false
opTab:Toggle("Autofarm", "Auto teleports the player every 5 seconds", false, function(state)
    autoFarming = state
    
    if autoFarming then
        spawn(function()
            while autoFarming do
                local teleportPositions = {
                    Vector3.new(5709.28, 0.40, 15985.13),
                    Vector3.new(6726.85, 0.40, 5315.59),
                    Vector3.new(8758.84, 0.40, 15297.42),
                    Vector3.new(13879.34, 0.40, 38868.24)
                }
                
                for _, position in ipairs(teleportPositions) do
                    if not autoFarming then break end
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    humanoidRootPart.CFrame = CFrame.new(position)
                    wait(5)
                end
            end
        end)
        
        lib:Notification("Autofarm started", "Success")
    else
        lib:Notification("Autofarm stopped", "Success")
    end
end)

local autoRebirth = false
opTab:Toggle("Auto Rebirth", "Automatically rebirths every 5 seconds", false, function(state)
    autoRebirth = state
    
    if autoRebirth then
        spawn(function()
            while autoRebirth do
                game:GetService("ReplicatedStorage").RebirthEvent:FireServer()
                wait(5)
            end
        end)

        lib:Notification("Auto Rebirth started", "Success")
    else
        lib:Notification("Auto Rebirth stopped", "Success")
    end
end)

local eggsTab = win:Tab("Eggs", "http://www.roblox.com/asset/?id=6023426915")

local function eggToggle(name)
    local toggleState = false
    eggsTab:Toggle(name .. " Egg", "Automatically opens " .. name .. " Egg every 5 seconds", false, function(state)
        toggleState = state
        
        if toggleState then
            spawn(function()
                while toggleState do
                    local args = {[1] = name, [2] = "Single"}
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
                    wait(5)
                end
            end)
            
            lib:Notification(name .. " Egg Auto Open started", "Success")
        else
            lib:Notification(name .. " Egg Auto Open stopped", "Success")
        end
    end)
end

eggToggle("Pro")
eggToggle("Legendary")
eggToggle("Godly")
eggToggle("Candy")
eggToggle("Dark")
eggToggle("Void")
eggToggle("Desert")
eggToggle("Steampunk")
eggToggle("Forest")
eggToggle("Heaven")
eggToggle("Hell")