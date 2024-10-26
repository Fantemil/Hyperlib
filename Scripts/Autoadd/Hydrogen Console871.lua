local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/S33dedL0rdzOfficial/Edited/main/Source%20code%20%3D.lua"))()

library.rank = "User"
local Wm = library:Watermark("Status:Online | v" .. library.version ..  " | " .. library:GetUsername() .. " | rank: " .. library.rank)
local FpsWm = Wm:AddWatermark("fps: " .. library.fps)
coroutine.wrap(function()
    while wait(.75) do
        FpsWm:Text("fps: " .. library.fps)
    end
end)()


local Notif = library:InitNotifications()

for i = 20,0,-1 do 
    task.wait(0.05)
    local LoadingXSX = Notif:Notify("Running Hydrogen Console.., please wait for the injection finished...", 10, "information") -- notification, alert, error, success, information
end 

library.title = "Hydrogen Console"

library:Introduction()
wait(1)
local Init = library:Init()

local Tab1 = Init:NewTab("Console")
local Tab2 = Init:NewTab("Scripts")
local Tab3 = Init:NewTab("Admin Commands")

local Section1 = Tab1:NewSection("Console Exploits")
local Section2 = Tab1:NewSection("Console Scripts")
local Section3 = Tab1:NewSection("Console Command Script Runner")

local Button1 = Tab1:NewButton("Scan Backdoor", function()
    local remotes = game:GetDescendants()

if #remotes > 0 then
    print("Backdoor Found!")
else
    print("No Backdoor found.")
end
end)
local Label1 = Tab1:NewLabel("Scanned remotes will be printed in Roblox Console.", "left")--"left", "center", "right"

local Button2 = Tab1:NewButton("Anti-Ban", function()
   print("Anti-ban-On!")
end)

local Textbox1 = Tab1:NewTextbox("Set Speed here.. [medium]", "", "2", "all", "medium", true, false, function(val)
   game.Players.LocalPlayer.WalkSpeed = (val)
end)

local Button3 = Tab1:NewButton("K00pgui v102", function()
   require(1690758917).Rozx(LocalPlayer)
end)

local Button4 = Tab1:NewButton("John Doe", function()
  loadstring(game:HttpGet("https://pastebin.com/QnvR8fgt"))()
end)

local Textbox2 = Tab1:NewTextbox("command script here", "", "2", "all", "medium", true, false, function(val)
end)

local Button5 = Tab1:NewButton("Run command script.", function()
end)

local Textbox3 = Tab1:NewTextbox("Text box 3 [large]", "", "3", "all", "large", true, false, function(val)
end)

local Button6 = Tab1:NewButton("Execute lua Script", function()
end)

----------Tab 2----------

local SSe = Tab2:NewSection("FE Scripts")

local BGG1 = Tab2:NewButton("FE Goner", function()
end)

local BGG2 = Tab2:NewButton("FE Red Guy", function()
   local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local color = Color3.new(1, 0, 0)

for _, partName in ipairs({"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}) do
    local part = character:FindFirstChild(partName)
    if part and part:IsA("BasePart") then
        local partMesh = part:FindFirstChildOfClass("SpecialMesh")
        if partMesh then
            partMesh.TextureId = ""
        end
        part.BrickColor = BrickColor.new(color)
    end
end
end)

local BGG3 = Tab2:NewButton("FE Grass Man", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local grassMaterial = "rbxassetid://260426079"

for _, part in ipairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        local newMaterial = Instance.new("SurfaceAppearance")
        newMaterial.Name = "GrassMaterial"
        newMaterial.Face = Enum.NormalId.Front
        newMaterial.Transparency = 0
        newMaterial.Texture = grassMaterial
        newMaterial.Parent = part
    end
end
end)

local BGG4 = Tab2:NewButton("FE Huge head", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local head = character:WaitForChild("Head")
if head then
    local remoteEvent = Instance.new("RemoteEvent")
    remoteEvent.Name = "ScaleHeadEvent"
    remoteEvent.Parent = character

    local function scaleHead()
        head.Size = Vector3.new(6, 3, 6) -- Scale head to 3 times bigger than a normal block
    end

    remoteEvent.OnServerEvent:Connect(scaleHead)
end
end)

local LLC = Tab2:NewLabel("{Backdoor Executer Scripts}", "left")

local BBG1 = Tab2:NewButton("Backdoor.exe", function(val)
end)

----------Tab 3----------

local TT1 = Tab3:NewTextbox("Player name here", "", "2", "all", "medium", true, false, function(val)
end)

local Bxx1 = Tab3:NewButton("Fling Player", function()
     local function flingPlayer()
    local targetPlayer = game.Players:FindFirstChild(TT1.Text)
    if targetPlayer then
        local humanoid = targetPlayer.Character and targetPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity", targetPlayer.Character.HumanoidRootPart)
            bodyVelocity.Velocity = Vector3.new(0, 100, 0)
            bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        end
    end
end

button.MouseButton1Click:Connect(flingPlayer)
end)

local Bxx2 = Tab3:NewButton("Fling All", function()
   local players = game.Players:GetPlayers()

local function flingPlayer(player)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(0, 100, 0)
            bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
            bodyVelocity.Parent = character.HumanoidRootPart
        end
    end
end

for _, player in ipairs(players) do
    flingPlayer(player)
end
end)

local Bxx3 = Tab3:NewButton("Kill Random", function()
  local players = game.Players:GetPlayers()
local randomIndex = math.random(1, #players)
local randomPlayer = players[randomIndex]

local humanoid = randomPlayer.Character and randomPlayer.Character:FindFirstChildOfClass("Humanoid")
if humanoid then
    humanoid.Health = 0
end
end)

local Bxx4 = Tab3:NewButton("Kick Random", function()
local players = game.Players:GetPlayers()
local selfPlayer = game.Players.LocalPlayer

local randomPlayer
repeat
    randomPlayer = players[math.random(1, #players)]
until randomPlayer ~= selfPlayer

randomPlayer:Kick("You have been picked by Roblox to kick you out from the game.")
end)

local Bxx5 = Tab3:NewButton("Turn all black", function()
    local players = game:GetService("Players"):GetPlayers()

for _, player in ipairs(players) do
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

        for _, bodyColor in ipairs(player.Character:GetDescendantsByType("BodyColors")) do
            bodyColor:SetColor("Head", Color3.fromRGB(255, 0, 0))
            bodyColor:SetColor("LeftArm", Color3.fromRGB(0, 0, 0))
            bodyColor:SetColor("LeftLeg", Color3.fromRGB(0, 0, 0))
            bodyColor:SetColor("RightArm", Color3.fromRGB(0, 0, 0))
            bodyColor:SetColor("RightLeg", Color3.fromRGB(0, 0, 0))
            bodyColor:SetColor("Torso", Color3.fromRGB(0, 0, 0))
        end
    end
end
end)


