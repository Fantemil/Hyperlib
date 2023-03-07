repeat wait() until game:IsLoaded()

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
  Name = "Strongest Anime Squad Simulator",
  LoadingTitle = "Strongest Anime Squad Simulator",
  LoadingSubtitle = "by Blackout",
  ConfigurationSaving = {
     Enabled = true,
     FolderName = nil, -- Create a custom folder for your hub/game
     FileName = "Hub"
  },
})

Rayfield:Notify({
   Title = "Loaded",
   Content = "Thanks For Using the script",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
      end
   },
},
})

local Main = Window:CreateTab("Main", 4483362458) -- Title, Image
local Main1 = Main:CreateSection("Farming")

local Misc = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Misc1 = Misc:CreateSection("Misc")


--// Main \\--
Main:CreateDropdown({
   Name = "Choose Map",
   Options = {"OnePiece","DemonSlayer","Naruto","DragonBall","HxH","FairyTail","MHA","Bleach","TokyoGhoul","AOT"},
   CurrentOption = "",
   Flag = "Selected Map", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
       getgenv().Map = Option
   end,
})

Main:CreateSlider({
   Name = "Kill Aura Wait",
   Range = {0, 10},
   Increment = 1,
   Suffix = "",
   CurrentValue = 1,
   Flag = "WaitTImeONKa", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       getgenv().WaitTimeForKa = Value
   end,
})

Main:CreateToggle({
   Name = "Kill Aura",
   CurrentValue = false,
   Flag = "KillAllMAp",
   Callback = function(Value)
       getgenv().InsstaKKA = Value
   end,
})

Main:CreateToggle({
   Name = "Use If u can 1 shot them normaly - insta kill",
   CurrentValue = false,
   Flag = "InstaKill",
   Callback = function(Value)
       getgenv().InstaKill = Value
   end,
})

Main:CreateToggle({
   Name = "Auto Sell Downed Mobs",
   CurrentValue = false,
   Flag = "KillAllMAp",
   Callback = function(Value)
       getgenv().AutoSell = Value
   end,
})

Main:CreateToggle({
   Name = "Crash Server",
   CurrentValue = false,
   Flag = "Crashserver",
   Callback = function(Value)
       getgenv().Crash = Value
   end,
})
--// Misc \\--

Misc:CreateToggle({
   Name = "Generate Gems",
   CurrentValue = false,
   Flag = "GerateGems",
   Callback = function(Value)
       getgenv().Gengems = Value
   end,
})

Misc:CreateToggle({
   Name = "Generate Coins",
   CurrentValue = false,
   Flag = "GerateGems",
   Callback = function(Value)
       getgenv().GenCoins = Value
   end,
})

Misc:CreateButton({
   Name = "Give A Random Epic Unit From Your highest World",
   Callback = function()
       local args = {
           [1] = "UpdateIsCodeData",
           [2] = "Char123"
       }
       
       game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))        
   end,
})

Misc:CreateButton({
   Name = "Give A Random Legendary Unit From Your highest World",
   Callback = function()
       local args = {
           [1] = "UpdateIsCodeData",
           [2] = "Char321"
       }
       
       game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))        
   end,
})


Misc:CreateButton({
   Name = "Give Teleport Gamepass",
   Callback = function()
       game:GetService("Players").LocalPlayer.ServerPlayerData.IsTeleport.Value = true
   end,
})
--// Mob Kill Aura \\--

spawn(function()
   while task.wait(getgenv().WaitTimeForKa) do
       pcall(function()
           if getgenv().InsstaKKA ~= true then return end
           for i,v in next, game:GetService("Workspace").Monsters[getgenv().Map]:GetChildren() do
               if v:IsA("Model") then
                   for i=1,10 do
                   local args = {
                       [1] = "AttackMonsterByFollow",
                       [2] = game:GetService("Workspace").Monsters[getgenv().Map][v.Name],
                       [3] = workspace:WaitForChild("FollowModels"):WaitForChild("FollowModels_"..game.Players.LocalPlayer.UserId):WaitForChild("F001_"..game.Players.LocalPlayer.UserId)
                   }
                   
                   game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MonsterRemote"):FireServer(unpack(args))
                   end
               end
           end
       end)
   end
end)

--// Mob Insta Kill Aura \\--

spawn(function()
   while task.wait(0.1) do
       pcall(function()
           if getgenv().InstaKill ~= true then return end
           for i,v in next, game:GetService("Workspace").Monsters[getgenv().Map]:GetChildren() do
               if v:IsA("Model") then
                   local args = {
                       [1] = "OneKillMonster",
                       [2] = game:GetService("Workspace").Monsters[getgenv().Map][v.Name]
                   }
                   
                   game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MonsterRemote"):FireServer(unpack(args))
               end
           end
       end)
   end
end)



--// Auto Sell \\--
spawn(function()
   while task.wait(0.1) do
       pcall(function()
           if getgenv().AutoSell ~= true then return end
           for i,v in next, game:GetService("Workspace").Monsters[getgenv().Map]:GetChildren() do
               if v:IsA("Model") then
                   local args = {
                       [1] = "SellMonster",
                       [2] = game:GetService("Workspace").Monsters[getgenv().Map][v.Name],
                       [3] = false
                   }
                   
                   game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MonsterRemote"):FireServer(unpack(args))
                   
               end
           end
       end)
   end
end)

--// Crash Sever \\--
spawn(function()
   while task.wait() do
       pcall(function()
           if getgenv().Crash ~= true then return end
               local args = {[1] = "EquipSkin",[2] = "AOT001"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "Naruto001"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "JoJo002"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "TrueShadowGod"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "OnePiece002"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "DemonSlayer001"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
               task.wait()
               local args = {[1] = "EquipSkin",[2] = "DragonBall001"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))
       end)
   end
end)

--// Generate Gems \\--
spawn(function()
   while task.wait() do
       pcall(function()
           if getgenv().Gengems ~= true then return end
           local args = {
               [1] = "UpdateIsCodeData",
               [2] = "Gem150"
           }
           
           game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))            
       end)
   end
end)

--// Generate Coins \\--
spawn(function()
   while task.wait() do
       pcall(function()
           if getgenv().GenCoins ~= true then return end
           local args = {
               [1] = "UpdateIsCodeData",
               [2] = "Coin555"
           }
           
           game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerDataRemote"):FireServer(unpack(args))            
       end)
   end
end)