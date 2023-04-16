---- This is open source and do whatever you want to do with it 

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "This is open source so do whatever you want to do with it ",
 Duration = 5
})

wait (5)


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "So yeah have fun",
 Duration = 2
})

----------------------------
wait (2.3)

--------------------------------------------------------------------------------------------------------------------------------------------------------
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("universal hub", "BloodTheme")

---- Main
local Main = Window:NewTab("Main")
local Main = Main:NewSection("Main")

Main:NewKeybind("Toggls >", "you can Toggl", Enum.KeyCode.LeftControl, function()
 Library:ToggleUI()
end)

Main:NewLabel("Made by ")

Main:NewLabel("chatgpt")



---- Player
local Player = Window:NewTab("Player")
local Player = Player:NewSection("Player")

Player:NewSlider("WalkSpeed", "bruh", 400, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Player:NewSlider("jumpower", "bruh", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

---- fun
local fun = Window:NewTab("fun")
local fun = fun:NewSection("Do whatever you want it is up to you")

fun:NewButton("Teleport to the end", "bruh", function()
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local TowerTop = game:GetService("Workspace").TowerSpawn.TowerTop

if TowerTop then
    local EndingButton = TowerTop.EndingButton
    if EndingButton and EndingButton.TipTop and EndingButton.TipTop.go then
        local destinationCFrame = EndingButton.TipTop.go.CFrame
        Character.HumanoidRootPart.CFrame = destinationCFrame
    end
end

end)







fun:NewToggle("Kill aura", "The Max distance is 30", function(state)
 if state then
  _G.aura = true
while _G.aura == true do
wait()
 
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MAX_DISTANCE = 30
    local closestPlayer, closestDistance
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local distance = (player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude) or math.huge
            if distance < MAX_DISTANCE and (not closestDistance or distance < closestDistance) then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end
    
    if closestPlayer then
        local A_1 = closestPlayer.Character.HumanoidRootPart.Position
        local A_2 = Vector3.new(0, -2.75, -50)
        local Event = LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
        Event:FireServer(A_1, A_2)
    end
    
  

 end
 else
  _G.aura = false
while _G.aura == true do
wait()
 
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MAX_DISTANCE = 30
    local closestPlayer, closestDistance
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local distance = (player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude) or math.huge
            if distance < MAX_DISTANCE and (not closestDistance or distance < closestDistance) then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end
    
    if closestPlayer then
        local A_1 = closestPlayer.Character.HumanoidRootPart.Position
        local A_2 = Vector3.new(0, -2.75, -50)
        local Event = LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
        Event:FireServer(A_1, A_2)
    end
    
  

 end
 end
end)

fun:NewButton("Kill everybody ", "bruh", function()
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Event = game:GetService("Players").LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
local MAX_DISTANCE = math.huge -- Maximum distance to find the closest player

-- Find all players' positions relative to the local player and fire the event
for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local distance = (HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        if distance < MAX_DISTANCE then
            local A_1 = player.Character.HumanoidRootPart.Position
            local A_2 = Vector3.new(0, -2.75, -90)
            Event:FireServer(A_1, A_2)
        end
    end
end

end)


fun:NewKeybind("Place infinite minds", "no", Enum.KeyCode.Q, function()
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local distance = 8
local A_1 = LocalPlayer.Character.HumanoidRootPart.Position + LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * distance
local A_2 = Vector3.new(0, -2.75, -90)
local Event = game:GetService("Players").LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
Event:FireServer(A_1, A_2)
end)















---- draw  
local draw  = Window:NewTab("draw ")
local draw  = draw:NewSection("draw ")

draw:NewButton("draw a circle ", "bruh", function()
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Event = game:GetService("Players").LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
local MAX_DISTANCE = 10 -- Maximum distance to find the closest player
local NUM_SCRIPTS = 100 -- Number of scripts to fire
local SCRIPT_DISTANCE = 20 -- Distance from the player to place the scripts
local SCRIPT_ANGLE_INCREMENT = 360 / NUM_SCRIPTS -- Angle increment between each script

-- Create a highlight part to show where the scripts will fire
local highlight = Instance.new("Part")
highlight.Size = Vector3.new(5, 0.2, 5)
highlight.Anchored = true
highlight.CanCollide = false
highlight.Transparency = 0.5
highlight.BrickColor = BrickColor.new("Bright blue")
highlight.Parent = workspace

-- Place the highlight at the player's position
highlight.Position = HumanoidRootPart.Position

-- Freeze the player in place
HumanoidRootPart.Anchored = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "You are free to move around when it is finished",
 Duration = 3.5
})

-- Fire the scripts in a circle around the player
for i = 1, NUM_SCRIPTS do
    -- Calculate the angle for this script
    local angle = math.rad((i - 1) * SCRIPT_ANGLE_INCREMENT)
    
    -- Calculate the position for this script
    local x = SCRIPT_DISTANCE * math.cos(angle)
    local y = HumanoidRootPart.Position.Y
    local z = SCRIPT_DISTANCE * math.sin(angle)
    local scriptPosition = Vector3.new(x, y, z) + HumanoidRootPart.Position
    
    -- Fire the script at this position
    local A_1 = scriptPosition
    local A_2 = Vector3.new(0, -2.75, -90)
    Event:FireServer(A_1, A_2)
    
    -- Update the highlight position
    highlight.Position = scriptPosition
    
    -- Wait for a short amount of time before firing the next script
    wait(0.1)
end

-- Remove the highlight after firing all scripts
highlight:Destroy()

-- Unfreeze the player
HumanoidRootPart.Anchored = false
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "You are free to move around",
 Duration = 3.5
})

end)


draw:NewButton("draw a circle that goes up and down ", "bruh", function()
 local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Event = game:GetService("Players").LocalPlayer.PlayerGui.ObjectsGui.ShopFrame.go.g4.Send
local MAX_DISTANCE = 40 -- Maximum distance to find the closest player
local NUM_SCRIPTS = 100 -- Number of scripts to fire
local SCRIPT_DISTANCE = 20 -- Distance from the player to place the scripts
local SCRIPT_ANGLE_INCREMENT = 540 / NUM_SCRIPTS -- Angle increment between each script
local SCALE_FACTOR = 5 -- Scale factor for the size of the letter

-- Create a highlight part to show where the scripts will fire
local highlight = Instance.new("Part")
highlight.Size = Vector3.new(SCALE_FACTOR, 0.2, SCALE_FACTOR)
highlight.Anchored = true
highlight.CanCollide = false
highlight.Transparency = 0.5
highlight.BrickColor = BrickColor.new("Bright blue")
highlight.Parent = workspace

-- Place the highlight at the player's position
highlight.Position = HumanoidRootPart.Position

-- Freeze the player in place
HumanoidRootPart.Anchored = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "You are free to move around when it is finished",
 Duration = 3
})

-- Fire the scripts to draw the letter "S"
for i = 3, NUM_SCRIPTS do
    -- Calculate the angle for this script
    local angle = math.rad((i - 1) * SCRIPT_ANGLE_INCREMENT)
    
    -- Calculate the position for this script
    local x = SCRIPT_DISTANCE * math.cos(angle)
    local y = SCALE_FACTOR * math.sin(5 * angle) -- Using sine of twice the angle to draw an "S" shape
    local z = SCRIPT_DISTANCE * math.sin(angle)
    local scriptPosition = Vector3.new(x, y, z) + HumanoidRootPart.Position
    
    -- Fire the script at this position
    local A_1 = scriptPosition
    local A_2 = Vector3.new(0, -2.75, -90)
    Event:FireServer(A_1, A_2)
    
    -- Update the highlight position
    highlight.Position = scriptPosition
    
    -- Wait for a short amount of time before firing the next script
    wait(0.1)
end

-- Remove the highlight after firing all scripts
highlight:Destroy()

-- Unfreeze the player
HumanoidRootPart.Anchored = false
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "You are free to move around",
 Duration = 3
})

end)