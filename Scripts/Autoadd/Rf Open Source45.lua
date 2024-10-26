


game:GetService("ReplicatedStorage").KAIEvent:Destroy()
game:GetService("ReplicatedStorage").network:Destroy()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = " Gaxify Hub | Rf24 ",
   LoadingTitle = " Real Futboll 24 ",
   LoadingSubtitle = "Gax ",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/tB27Zucm", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = trueevery time they load it up
   },
   KeySystem = true,
   KeySettings = {
      Title = "Key | Gaxify Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", 
      SaveKey = no, 
      GrabKeyFromSite = true, 
      Key = {"https://pastebin.com/raw/JHsF6G3C"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Reach Stuff", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the Gaxify script",
   Content = "Best SBS/BBSA/REVAMP/GCA/Rf24 Script",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "i know nigga",
         Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
})

local Slider1 = MainTab:CreateSlider({
   Name = "Legs Size",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Size",
   CurrentValue = 2,
   Callback = function(Value)
      game.Players.LocalPlayer.Character["LeftUpperLeg"].CanCollide = false
      game.Players.LocalPlayer.Character["LeftUpperLeg"].CanCollide = false
      game.Players.LocalPlayer.Character["RightLowerLeg"].Massless = true
      game.Players.LocalPlayer.Character["LeftLowerLeg"].Massless = true
      game.Players.LocalPlayer.Character["LeftLowerLeg"].CanCollide = false
      game.Players.LocalPlayer.Character["LeftLowerLeg"].CanCollide = false
      game.Players.LocalPlayer.Character["RightUpperLeg"].Massless = true
      game.Players.LocalPlayer.Character["LeftUpperLeg"].Massless = true
      game.Players.LocalPlayer.Character["LeftUpperLeg"].Size = Vector3.new(Value, 2, Value)
      game.Players.LocalPlayer.Character["LeftUpperLeg"].Size = Vector3.new(Value, 2, Value)
      game.Players.LocalPlayer.Character["RightLowerLeg"].Size = Vector3.new(Value, 2, Value)
      game.Players.LocalPlayer.Character["LeftLowerLeg"].Size = Vector3.new(Value, 2, Value)
   end
})

local Slider2 = MainTab:CreateSlider({
   Name = "Legs Transparency",
   Range = {0, 1},
   Increment = 0.01,
   Suffix = "",
   CurrentValue = 0,
   Callback = function(Value)
      game.Players.LocalPlayer.Character["RightUpperLeg"].Transparency = Value
      game.Players.LocalPlayer.Character["LeftUpperLeg"].Transparency = Value
      game.Players.LocalPlayer.Character["RightLowerLeg"].Transparency = Value
      game.Players.LocalPlayer.Character["LeftLowerLeg"].Transparency = Value
   end
})

local Slider3 = MainTab:CreateSlider({
   Name = "Arms Size",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Size",
   CurrentValue = 2,
   Callback = function(Value)
      game.Players.LocalPlayer.Character["Right Arm"].Size = Vector3.new(Value, Value, 1)
      game.Players.LocalPlayer.Character["Left Arm"].Size = Vector3.new(Value, Value, 1)
      game.Players.LocalPlayer.Character["Right Arm"].CanCollide = false
      game.Players.LocalPlayer.Character["Left Arm"].CanCollide = false
      game.Players.LocalPlayer.Character["Right Arm"].Massless = true
      game.Players.LocalPlayer.Character["Left Arm"].Massless = true
   end
})

local Slider4 = MainTab:CreateSlider({
   Name = "Arms Transparency",
   Range = {0, 1},
   Increment = 0.01,
   Suffix = "",
   CurrentValue = 0,
   Callback = function(Value)
      game.Players.LocalPlayer.Character["Left Arm"].Transparency = Value
      game.Players.LocalPlayer.Character["Right Arm"].Transparency = Value
   end
})


local Slider5 = MainTab:CreateSlider({
   Name = "Chest Size",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Size",
   CurrentValue = 2,
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Torso.Size = Vector3.new(Value, Value, Value)
      game.Players.LocalPlayer.Character.Torso.CanCollide = true
      game.Players.LocalPlayer.Character.Torso.Massless = true
   end
})


local Slider6 = MainTab:CreateSlider({
   Name = "Chest Transparency",
   Range = {0, 1},
   Increment = 0.01,
   Suffix = "",
   CurrentValue = 0,
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Torso.Transparency = Value
   end
})

local Slider5 = MainTab:CreateSlider({
    Name = "Head Size",
    Range = {1, 350},
    Increment = 1,
    Suffix = "Size",
    CurrentValue = 2,
    Callback = function(Value)
       game.Players.LocalPlayer.Character.Head.Size = Vector3.new(Value, Value, Value)
       game.Players.LocalPlayer.Character.Head.CanCollide = false
       game.Players.LocalPlayer.Character.Head.Massless = true
    end
 })

 local Slider2 = MainTab:CreateSlider({
    Name = "Head Trasparency",
    Range = {0, 1},
    Increment = 0.01,
    Suffix = "",
    CurrentValue = 0,
    Callback = function(Value)
       game.Players.LocalPlayer.Character["Head"].Transparency = Value
       game.Players.LocalPlayer.Character["Head"].Transparency = Value
    end
 })

 local MainTab = Window:CreateTab("Fake Parts", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button1 = MainTab:CreateButton({
   Name = "Left Fake Leg",
   Callback = function()
      local Players = game:GetService("Players")
      local Player = Players.LocalPlayer
      local solBacak = Player.Character["Left Leg"]
      local sahteBacak = Instance.new("Part")
      sahteBacak.Name = "Left Leg"
      sahteBacak.Size = Vector3.new(1, 2, 1) 
      sahteBacak.Transparency = 0 
      sahteBacak.Parent = Player.Character
      local sahteBacakMotor6D = Instance.new("Motor6D")
      sahteBacakMotor6D.Name = "SahteSolBacakMotor6D"
      sahteBacakMotor6D.Part0 = Player.Character.Torso
      sahteBacakMotor6D.Part1 = sahteBacak
      sahteBacakMotor6D.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
      sahteBacakMotor6D.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
      sahteBacakMotor6D.Parent = Player.Character.Torso
   end
})

local Button2 = MainTab:CreateButton({
   Name = "Right Fake Leg",
   Callback = function()
      local Players = game:GetService("Players")
      local Player = Players.LocalPlayer
      local sagBacak = Player.Character["Right Leg"]
      local sahteBacak = Instance.new("Part")
      sahteBacak.Name = "Right Leg"
      sahteBacak.Size = Vector3.new(1, 2, 1) 
      sahteBacak.Transparency = 0 
      sahteBacak.Parent = Player.Character
      local sahteBacakMotor6D = Instance.new("Motor6D")
      sahteBacakMotor6D.Name = "SahteSaÄBacakMotor6D"
      sahteBacakMotor6D.Part0 = Player.Character.Torso
      sahteBacakMotor6D.Part1 = sahteBacak
      sahteBacakMotor6D.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
      sahteBacakMotor6D.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) -- 
      sahteBacakMotor6D.Parent = Player.Character.Torso
   end
})

local Button3 = MainTab:CreateButton({
   Name = "Both Fake Arms",
   Callback = function()
    local function createFakeLimb(character, originalLimb, color)
        local fakeLimb = Instance.new("Part")
        fakeLimb.Size = originalLimb.Size
        fakeLimb.Color = color
        fakeLimb.Anchored = false
        fakeLimb.CanCollide = false
        fakeLimb.Massless = true -- Hafif yap
        fakeLimb.Transparency = 0 -- Tamamen opak yap
        fakeLimb.Parent = character
    
        local weld = Instance.new("Weld")
        weld.Part0 = originalLimb
        weld.Part1 = fakeLimb
        weld.Parent = originalLimb
    end
    
    local function getSkinColor(character)

 
        return Color3.fromRGB(1, 1, 1)
    end
    
    local function createFakeLimbs(character)
        local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")
        local leftArm = character:FindFirstChild("Left Arm") or character:FindFirstChild("LeftHand")
    
        local skinColor = getSkinColor(character)
    
        if rightArm then
            createFakeLimb(character, rightArm, skinColor)
        end
    
        if leftArm then
            createFakeLimb(character, leftArm, skinColor)
        end
    end
    
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    createFakeLimbs(character)
   end
})
local Button5 = MainTab:CreateButton({
    Name = "Fake Chest",
    Callback = function()
        local function createFakeLimb(character, originalLimb, color)
            local fakeLimb = Instance.new("Part")
            fakeLimb.Size = originalLimb.Size
            fakeLimb.Color = color
            fakeLimb.Anchored = false
            fakeLimb.CanCollide = false
            fakeLimb.Massless = true
            fakeLimb.Transparency = 0 -- Make it completely opaque
            fakeLimb.Parent = character
        
            local weld = Instance.new("Weld")
            weld.Part0 = originalLimb
            weld.Part1 = fakeLimb
            weld.Parent = originalLimb
        
            return fakeLimb
        end
        
        local function createFakeChest(character)
            local skinColor = character.Torso.Color
            local torso = character:FindFirstChild("Torso")
        
            if torso then
                createFakeLimb(character, torso, skinColor)
            else
                warn("Torso not found in character")
            end
        end
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        createFakeChest(character)
    end
})

local Button5 = MainTab:CreateButton({
    Name = "Fake Head",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local fakeHead = Instance.new("Part")
fakeHead.Name = "FakeHead"
fakeHead.Size = Vector3.new(2, 1, 1)
fakeHead.Color = Color3.new(1, 0.8, 0.6)  
fakeHead.Anchored = false
fakeHead.CanCollide = false

local mesh = Instance.new("SpecialMesh", fakeHead)
mesh.MeshType = Enum.MeshType.Head
mesh.Scale = Vector3.new(1.25, 1.25, 1.25)

local head = character:WaitForChild("Head")
fakeHead.CFrame = head.CFrame

local weld = Instance.new("WeldConstraint")
weld.Part0 = head
weld.Part1 = fakeHead
weld.Parent = head

fakeHead.Parent = character
end
})


local MainTab = Window:CreateTab("Miscellaneous", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button4 = MainTab:CreateButton({
   Name = "Night Time",
   Callback = function()
      local Lighting = game:GetService("Lighting")
      Lighting.TimeOfDay = "1:00:00"
   end
})


local Button5 = MainTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
