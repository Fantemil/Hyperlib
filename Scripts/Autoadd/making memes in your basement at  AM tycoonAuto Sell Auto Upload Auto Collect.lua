local Threads = {}
local AutoSellBool = false
local AutoUploadBool = false
local AutoCollectMemes = false
local OwnedHouse = nil

function getOwnedHouse() 
 for i,Tycoon in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
  if string.sub(Tycoon.Name,1,string.len("Tycoon")) == "Tycoon" then 
   print(Tycoon.TycoonOwner.Value)
   if Tycoon.TycoonOwner.Value == game.Players.LocalPlayer.Name then
    OwnedHouse = Tycoon
   else
    
   end
  end
 end
end

function sell()
 if not AutoSellBool then return end
 game:GetService("ReplicatedStorage").Events.UploadCurrentMemes:FireServer()
end
function upload()
 if not AutoUploadBool then return end
 game:GetService("ReplicatedStorage").Events.MemeToStorage:FireServer()
end

function collect()
 if not AutoCollectMemes then return end
 if OwnedHouse ~= nil then
  for i,v in pairs(OwnedHouse.StaticItems:GetChildren()) do
   if string.sub(v.Name,1,4) == "Belt" then
    fireproximityprompt(v.Collect.CollectPart.ProximityPrompt)
   end
  end
 end
end
getOwnedHouse()
print(OwnedHouse)

local function SpawnToggleLoop(Value,Callback)
 local Thread = task.spawn(function()
  while task.wait() do
   Callback()
  end
 end)
 table.insert(Threads,Thread)
end

SpawnToggleLoop(AutoUploadBool,upload)
SpawnToggleLoop(AutoSellBool,sell)
SpawnToggleLoop(AutoCollectMemes,collect)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
 Name = "Meme Tycoon Hub",
 LoadingTitle = "Meme Tycoon Hub",
 LoadingSubtitle = "by Knucklehedz.Studio",
 ConfigurationSaving = {
  Enabled = false,
  FolderName = nil, -- Create a custom folder for your hub/game
  FileName = "Big Hub"
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
  SaveKey = true,
  GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
  Key = "Hello"
 }
})
local Auto = Window:CreateTab("AutoFarms", 4483362458) -- Title, Image
local AutoSell = Auto:CreateToggle({
 Name = "Auto Sell Memes",
 CurrentValue = false,
 Flag = "AutoSellBool", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  AutoSellBool = Value
 end,
})

local AutoUpload = Auto:CreateToggle({
 Name = "Auto Upload Memes",
 CurrentValue = false,
 Flag = "AutoUploadBool", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  AutoUploadBool = Value
 end,
})
local AutoCollect = Auto:CreateToggle({
 Name = "Auto Collect Memes",
 CurrentValue = false,
 Flag = "AutoCollectBool", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  AutoCollectMemes = Value
 end,
})
local Settings = Window:CreateTab("Settings",4483362458)

local CloseWindow = Settings:CreateButton({
 Name = "Close Window(Kills Loops)",
 Callback = function()
  for i,v in pairs(Threads) do
   task.cancel(v)
  end
  Rayfield:Destroy()
 end,
})