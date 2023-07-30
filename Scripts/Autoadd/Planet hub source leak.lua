-- it was made by my friend (he did not want to disclose his name)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Planet Hub Premium Auto Farm",
    LoadingTitle = "Planet Hub Every Second +1 Ki in DBZ",
    LoadingSubtitle = "by ! AlonE#3302",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Planet Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/8STRm9Nfwj", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Planet Hub Every Second +1 Ki in DBZ",
       Subtitle = "Planet Hub Key System",
       Note = "Come to our discord server to buy keys. https://discord.com/invite/8STRm9Nfwj",
       FileName = "Planet Hub", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Alone00", "129" ,"123" ,"191" ,"169" ,"128" ,"111" ,"184" ,"157" ,"153" ,"197" ,"131" ,"188" ,"167" ,"121" ,"100" ,"102" ,"161" ,"125" ,"149" , "146" ,} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 shared.Settings = {
   autoAttack = false,
   autoRebirth = false,
   autoMartial = false,
}

 local FarmTab = Window:CreateTab("Auto Farm", 4483345998) -- Title, Image

 local MiscTab = Window:CreateTab("Misc", 4384402413) -- Title, Image

 local Toggle = FarmTab:CreateToggle({
    Name = "Auto Attack",
    CurrentValue = false,
    Flag = "am", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        shared.Settings.autoAttack = Value
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

local Toggle = FarmTab:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Flag = "ea", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       shared.Settings.autoRebirth = Value
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = FarmTab:CreateToggle({
   Name = "Auto Martial",
   CurrentValue = false,
   Flag = "nn", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       shared.Settings.autoMartial = Value
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Label = FarmTab:CreateLabel("Click the button exactly or the script may close")

 local functions = {}

 function functions:autoAttack()
   while true do
       task.wait()
       if shared.Settings.autoAttack then
           local worldParts = {"10", "9", "8", "7", "6", "5", "4", "3", "2", "1"}
           for i, partName in ipairs(worldParts) do
               local part = workspace.World:FindFirstChild(partName)
               if part then
                   local args = {
                       [1] = part.Part,
                       [2] = true,
                   }
                   if i == 8 then
                   args[3] = CFrame.new(373.2032775878906, 195.0497283935547, 167.8328857421875) * CFrame.Angles(-0, 0.4945076107978821, 1.7763568394002505e-15)
                   elseif i == 9 then
                       args[3] = CFrame.new(373.2032775878906, 195.0497283935547, 167.8328857421875) * CFrame.Angles(-0, 0.4945076107978821, 1.7763568394002505e-15)
                       args[2] = true
                   elseif i == 10 then
                       args[3] = CFrame.new(446.4244079589844, 195.04971313476562, 165.97938537597656) * CFrame.Angles(-1.1513321593575442e-14, -0.9056829214096069, 9.059220658792083e-15)
                       args[2] = true
                   end
                   game:GetService("ReplicatedStorage").Events.Player.DmgHandle:FireServer(unpack(args))
               end
           end
       end
   end
end

function functions:autoAttack()
   while true do
       task.wait()
       if shared.Settings.autoAttack then
           local worldParts = {"10", "9", "8", "7", "6", "5", "4", "3", "2", "1"}
           for i, partName in ipairs(worldParts) do
               local part = workspace.World:FindFirstChild(partName)
               if part then
                   local args = {
                       [1] = part.Part,
                       [2] = true,
                   }
                   if i == 8 then
                   args[3] = CFrame.new(373.2032775878906, 195.0497283935547, 167.8328857421875) * CFrame.Angles(-0, 0.4945076107978821, 1.7763568394002505e-15)
                   elseif i == 9 then
                       args[3] = CFrame.new(373.2032775878906, 195.0497283935547, 167.8328857421875) * CFrame.Angles(-0, 0.4945076107978821, 1.7763568394002505e-15)
                       args[2] = true
                   elseif i == 10 then
                       args[3] = CFrame.new(446.4244079589844, 195.04971313476562, 165.97938537597656) * CFrame.Angles(-1.1513321593575442e-14, -0.9056829214096069, 9.059220658792083e-15)
                       args[2] = true
                   end
                   game:GetService("ReplicatedStorage").Events.Player.DmgHandle:FireServer(unpack(args))
               end
           end
       end
   end
end


function functions:autoRebirth()
   while true do
       task.wait()
       if shared.Settings.autoRebirth then
           game:GetService("ReplicatedStorage").Events.Player.RebirthEvent:FireServer()
       end
   end
end


function functions:autoMartial()
   while true do
       task.wait()
       if shared.Settings.autoMartial then
           game:GetService("ReplicatedStorage").Events.Tower.TowerDmg:FireServer()
        game:GetService("ReplicatedStorage").Events.Tower.NextRound:FireServer()
       end
   end
end

local Label = MiscTab:CreateLabel("For bugs and issues, contact Discord")

  for _, v in next, functions do
      task.spawn(v)
  end
