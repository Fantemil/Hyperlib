-- Extorius Hub - Raise a Floppa 2

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game:GetService("Players") and game:GetService("Workspace") and game:GetService("ReplicatedStorage") and
    game:GetService("UserInputService")

getgenv().SecureMode = false
local LocalPlayer = game:GetService("Players").LocalPlayer
local At_Feed = 75
local At_Pet = 50
loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local function returnHRP()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
end
local function returnHUM()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Humanoid") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("Humanoid")
    end
end
repeat
    task.wait()
until returnHRP() and returnHUM()

local Window =
    Rayfield:CreateWindow(
    {
        Name = "Raise a Floppa 2",
        LoadingTitle = "Extorius Hub",
        LoadingSubtitle = "by Extorius Scripts",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "Extorius Hub", -- Create a custom folder for your hub/game
            FileName = "Raise a Floppa 2"
        },
        Discord = {
            Enabled = false,
            Invite = "sirius", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = false,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    }
)

local Tab = Window:CreateTab("Auto Farm", 4483362458)
local Section = Tab:CreateSection("Cash / Money")
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Click Floppa",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClick = Value
            while Toggle_AutoClick and task.wait() do
             fireclickdetector(workspace.Floppa.ClickDetector)
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Collect Cash",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoCollectCash = Value
            while Toggle_AutoCollectCash and task.wait() do
             for _,v in ipairs(workspace:GetChildren()) do
              if v.Name == "Money" or v.Name == "Money Bag" then
               firetouchinterest(v, returnHRP(), 0)
               wait()
               firetouchinterest(v, returnHRP(), 1)
     end
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Claim Rent",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClaimRent = Value
            while Toggle_AutoClaimRent and task.wait() do
    game:GetService("ReplicatedStorage").Events["Collect Rent"]:FireServer()
    task.wait(2)
    if workspace:FindFirstChild("Rent") then
     firetouchinterest(workspace:FindFirstChild("Rent"), returnHRP(), 0)
     firetouchinterest(workspace:FindFirstChild("Rent"), returnHRP(), 1)
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Unlock Items",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoUnlockItems = Value
            while Toggle_AutoUnlockItems and task.wait() do
             for _,v in ipairs(LocalPlayer.PlayerGui.PlayerUI["the_interwebs"].Unlocks:GetChildren()) do
              if v:IsA("Frame") and not v.Name:match("Food") and not v.Name:match("food") then
               task.wait(.2)
      game:GetService("ReplicatedStorage").Events.Unlock:FireServer(table.unpack({
       [1] = v.Name,
       [2] = "the_interwebs",
      }))
     end
    end
   end
        end
    }
)

local Section = Tab:CreateSection("Caring For Floppa")
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Feed Floppa",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoFeedFloppa = Value
            while Toggle_AutoFeedFloppa and task.wait() do
             Hunger = string.gsub(workspace.Floppa.Display.Frame.Hunger.Text, "%D", "")
             Hunger = tonumber(Hunger)
             if Hunger <= 20 then
     game:GetService("ReplicatedStorage").Events.Unlock:FireServer(table.unpack({
      [1] = "Floppa Food",
      [2] = "the_interwebs",
     }))
     task.wait(2)
     for i =1,10 do
      task.wait()
      returnHRP().CFrame = workspace["Key Parts"].Bowl.Part.CFrame
      fireproximityprompt(workspace["Key Parts"].Bowl.Part.ProximityPrompt)
     end
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Clean Poop",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoCleanPoop = Value
            while Toggle_AutoCleanPoop and task.wait() do
             for _,v in ipairs(workspace["Key Parts"]["Litter Box"]:GetChildren()) do
              if v.Name == "Poop" then
               returnHRP().CFrame = v.PoopPart.CFrame
               fireproximityprompt(v.ProximityPrompt)
     end
    end
   end
        end
    }
)

local Section = Tab:CreateSection("Floppa Happiness")
local Slider = Tab:CreateSlider({
 Name = "Pet At",
 Range = {0, 75},
 Increment = 5,
 Suffix = "%",
 CurrentValue = 50,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  At_Pet = Value
 end,
})
local Slider = Tab:CreateSlider({
 Name = "Feed Grilled Cheese At",
 Range = {0, 100},
 Increment = 5,
 Suffix = "%",
 CurrentValue = 75,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  At_Feed = Value
 end,
})
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Pet Floppa",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoPetFloppaGC = Value
            while Toggle_AutoPetFloppaGC and task.wait() do
             Happiness = string.gsub(LocalPlayer.PlayerGui.FloppaUI.Frame.Floppa.Happiness.Percentage.Text, "%D", "")
             Happiness = tonumber(Happiness)
             if Happiness <= At_Pet then
              for i=1,20 do
               returnHRP().CFrame = workspace.Floppa.HumanoidRootPart.CFrame
      task.wait()
      fireproximityprompt(workspace.Floppa.HumanoidRootPart.ProximityPrompt)
     end
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Feed Floppa Grilled Cheese",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoFeedFloppa = Value
            while Toggle_AutoFeedFloppa and task.wait() do
             Happiness = string.gsub(LocalPlayer.PlayerGui.FloppaUI.Frame.Floppa.Happiness.Percentage.Text, "%D", "")
             Happiness = tonumber(Happiness)
             if Happiness <= At_Feed then
              task.wait(4)
              Bread = workspace.Village.FoodMarket["Bread Crate"].Crate["Empty Display Crate"].Primary
              Cheese = workspace.Village.FoodMarket.Cheese
              returnHRP().CFrame = Bread.CFrame*CFrame.new(0,4,0)
     task.wait(.2)
     fireproximityprompt(Bread.ProximityPrompt)
     returnHRP().CFrame = Cheese.CFrame*CFrame.new(0,4,0)
     task.wait(.2)
     fireproximityprompt(Cheese.ProximityPrompt)
     task.wait(1)
     game:GetService("ReplicatedStorage").Events.Cooking:FireServer(table.unpack({
      [1] = "Add Ingredient",
      [2] = "Bread",
     }))
     game:GetService("ReplicatedStorage").Events.Cooking:FireServer(table.unpack({    [1] = "Add Ingredient",    [2] = "Cheese",}))
     game:GetService("ReplicatedStorage").Events.Cooking:FireServer(table.unpack({    [1] = "Change Temperature",    [2] = 3,}))
     game:GetService("ReplicatedStorage").Events.Cooking:FireServer("Cook")
     
     task.wait(20)
     firetouchinterest(workspace:WaitForChild("Grilled Cheese").Handle, returnHRP(), 0)
     firetouchinterest(workspace:WaitForChild("Grilled Cheese").Handle, returnHRP(), 1)
     task.wait(0.5)
     
     for i=1,20 do
               returnHRP().CFrame = workspace.Floppa.HumanoidRootPart.CFrame
      task.wait()
      fireproximityprompt(workspace.Floppa.HumanoidRootPart.ProximityPrompt)
     end
    end
   end
        end
    }
)

local Section = Tab:CreateSection("Gardening")
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Grab Seeds",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoGrabSeeds = Value
            while Toggle_AutoGrabSeeds and task.wait() do
             for _,v in ipairs(workspace.Seeds:GetChildren()) do
              returnHRP().CFrame = v.CFrame
              task.wait(0.2)
              if v:FindFirstChild("ProximityPrompt") then
      fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
     end
    end
   end
        end
    }
)
local PlantSeedsToggle
PlantSeedsToggle =
    Tab:CreateToggle(
    {
        Name = "Auto Plant Seeds",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoPlantSeeds = Value
            while Toggle_AutoPlantSeeds and task.wait() do
             local Seeds = {}
             local function FindSeeds()
              for _,v in ipairs(returnHRP().Parent:GetChildren()) do
      if v.Name:match("Seed") or v.Name:match("Spore") then
       table.insert(Seeds, v)
      end
     end
     for _,v in ipairs(LocalPlayer.Backpack:GetChildren()) do
      if v.Name:match("Seed") or v.Name:match("Spore") then
       table.insert(Seeds, v)
      end
     end
    end
    local function FindPot()
     for _,v in ipairs(workspace.Unlocks:GetChildren()) do
      if v.Name:match("Planter") and #Seeds ~= 0 then
       if v.Plant.Value == nil or v.Plant.Value == "" then
        return v
       end
      end
     end
    end
    FindSeeds()
    for _,v in ipairs(Seeds) do
     v.Parent = returnHRP().Parent
    end
    for i=1,#Seeds do
     if FindPot() ~= nil then
      returnHRP().CFrame = FindPot().Soil.CFrame*CFrame.new(0,4,0)
      task.wait(.2)
      fireproximityprompt(FindPot().Soil.ProximityPrompt)
     end
    end
   end
        end
    }
)
local PlantSeedsToggle
PlantSeedsToggle =
    Tab:CreateToggle(
    {
        Name = "Auto Harvest Plants",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoHarvestPlants = Value
            while Toggle_AutoHarvestPlants and task.wait() do
    local function FindPot()
     for _,v in ipairs(workspace.Unlocks:GetChildren()) do
      if v.Name:match("Planter") then
       if v.Plant.Value ~= nil and v.Growth.Value == 100 then
        return v
       end
      end
     end
    end
    
    Pot = FindPot()
    if Pot ~= nil then
     returnHRP().CFrame = Pot.Soil.CFrame*CFrame.new(0,4,0)
     task.wait(.2)
     fireproximityprompt(Pot.Soil.ProximityPrompt)
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Feed Floppa Catnip",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoFeedCatnip = Value
            while Toggle_AutoFeedCatnip and task.wait() do
             local Catnip = nil
    local function FindCatnip()
              for _,v in ipairs(returnHRP().Parent:GetChildren()) do
      if v.Name:match("Catnip") then
       Catnip = v
      end
     end
     for _,v in ipairs(LocalPlayer.Backpack:GetChildren()) do
      if v.Name:match("Catnip") then
       Catnip = v
      end
     end
     
     return Catnip
    end
    
    Catnip = FindCatnip()
    if Catnip ~= nil then
     Catnip.Parent = returnHRP()
     for i=1,20 do
               returnHRP().CFrame = workspace.Floppa.HumanoidRootPart.CFrame
      task.wait()
      fireproximityprompt(workspace.Floppa.HumanoidRootPart.ProximityPrompt)
     end
    end
   end
        end
    }
)

local Section = Tab:CreateSection("Space")
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Farm Space Crystals",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoGrabCrystals = Value
            while Toggle_AutoGrabCrystals and task.wait() do
             if workspace:FindFirstChild("Gold Bar") then
              firetouchinterest(workspace:FindFirstChild("Gold Bar"), returnHRP(), 0)
              firetouchinterest(workspace:FindFirstChild("Gold Bar"), returnHRP(), 1)
    end
             if workspace.Unlocks:FindFirstChild("Wormhole Machine") and workspace.Unlocks:FindFirstChild("Crystal Converter") then
     for _,v in ipairs(workspace.Unlocks:FindFirstChild("Wormhole Machine").Crystal:GetChildren()) do
      returnHRP().CFrame = v.CFrame
      task.wait(0.2)
      fireproximityprompt(v.ProximityPrompt)
      task.wait()
      returnHRP().CFrame = workspace.Unlocks:FindFirstChild("Crystal Converter").Primary.CFrame
      task.wait(0.2)
      fireproximityprompt(workspace.Unlocks:FindFirstChild("Crystal Converter").Primary.ProximityPrompt)
     end
    end
   end
        end
    }
)

local Tab = Window:CreateTab("Stability", 4483362458)
local AntiIdleToggle =
    Tab:CreateToggle(
    {
        Name = "Anti Idle / Afk",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            for i, connection in pairs(getconnections(LocalPlayer.Idled)) do
             if Value then
     connection:Disable()
    else
     connection:Enable()
    end
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Cap FPS",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            if Value then
             setfpscap(30)
            else
             setfpscap(60)
   end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Rendering Enabled",
        CurrentValue = true,
        Flag = "Toggle1",
        Callback = function(Value)
            game:GetService("RunService"):Set3dRenderingEnabled(Value)
        end
    }
)

AntiIdleToggle:Set(true)