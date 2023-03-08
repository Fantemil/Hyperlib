local UI = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = UI:CreateWindow({
 Name = 'Legends Re:Written',
 LoadingTitle = 'Script Loading',
 LoadingSubtitle = 'Legends Rewritten',
 ConfigurationSaving = {
  Enabled = true,
  FolderName = nil, 
  FileName = "Legends Rewritten"
 },
        Discord = {
         Enabled = false,
         Invite = "",
         RememberJoins = false 
        },
 KeySystem = false, 
 KeySettings = {
  Title = "Sirius Hub",
  Subtitle = "Key System",
  Note = "Join the discord (discord.gg/sirius)",
  FileName = "SiriusKey",
  SaveKey = true,
  GrabKeyFromSite = false,
  Key = "Hello"
 }
})
UI:Notify({
   Title = "Warning",
   Content = "Using Force random trade and Make random plr trade you too fast causes game to kick you.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
    Ignore = {
     Name = "Okay!",
     Callback = function()
      warn'Ok'
     end
    },
   },
  })
local plrtable = {};
for i,v in pairs(game.Players:GetPlayers()) do
 if not table.find(plrtable, v.Name) then
  table.insert(plrtable, v.Name)
 end
end
game.Players.PlayerAdded:Connect(function()
  for i,v in pairs(game.Players:GetPlayers()) do
  if not table.find(plrtable, v.Name) then
   table.insert(plrtable, v.Name)
  end
 end
end)
local Tab2 = Window:CreateTab('Main', 4483362458)
local Section2 = Tab2:CreateSection('Player Stuff')
local Toggle = Tab2:CreateToggle({
 Name = 'GodMode',
 CurrentValue = false,
 Flag = "Gmode", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(val)
  getgenv().god = val
  while getgenv().god and task.wait() do
   game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.iFrame:FireServer()
  end
 end,
})
local GM2 = Tab2:CreateButton({
 Name = 'GodMode 2',
 Callback = function()
  game.Players.LocalPlayer.Character.Counter:Destroy()
 end,
})
local Section3 = Tab2:CreateSection('Annoy')
local Dropdown = Tab2:CreateDropdown({
 Name = "Target Player",
 Options = plrtable,
 CurrentOption = 'Nil',
 Flag = "target", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Option)
      targetplr = Option
      print(targetplr)
 end,
})
local Dropdown = Tab2:CreateDropdown({
 Name = "Target Player 2",
 Options = plrtable,
 CurrentOption = 'Nil',
 Flag = "target", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(op)
      targetplr2 = op
      print(targetplr2)
 end,
})
local TradePlr = Tab2:CreateButton({
 Name = "Make Target Trade You",
 Callback = function()
  local targ = game.Players[targetplr]
  local lp = game.Players.LocalPlayer
  game:GetService("ReplicatedStorage").Remotes.SendTradeRequest:FireServer(targ, lp)
 end,
})
local ForceTradePlr = Tab2:CreateButton({
 Name = "Force Trade with target",
 Callback = function()
  local targ = game.Players[targetplr]
  local lp = game.Players.LocalPlayer 
  game:GetService("ReplicatedStorage").Remotes.AddTradeFrame:FireServer(targ, lp)
 end,
})

local ForceTradePlrR = Tab2:CreateButton({
 Name = "Force Trade Random",
 Callback = function()
  local targ = game.Players:GetPlayers()[math.random(1, #plrtable)]
  local lp = game.Players.LocalPlayer 
  game:GetService("ReplicatedStorage").Remotes.AddTradeFrame:FireServer(targ, lp)
 end,
})
local ForceTradePlr2P = Tab2:CreateButton({
 Name = "Force Trade Random 2 Players",
 Callback = function()
  local targ = game.Players:GetPlayers()[math.random(1, #plrtable)]
  local targ2 = game.Players:GetPlayers()[math.random(1, #plrtable)] 
  game:GetService("ReplicatedStorage").Remotes.AddTradeFrame:FireServer(targ, targ2)
 end,
})
local ForceTradePlr2P = Tab2:CreateButton({
 Name = "Force Trade 2 Players",
 Callback = function()
  local targ = game.Players[targetplr]
  local targ2 = game.Players[targetplr2]
  game:GetService("ReplicatedStorage").Remotes.AddTradeFrame:FireServer(targ, targ2)
 end,
})
local TradePlrR = Tab2:CreateButton({
 Name = "Make Random Trade You",
 Callback = function()
  local targ = game.Players:GetPlayers()[math.random(1, #plrtable)]
  local lp = game.Players.LocalPlayer 
  game:GetService("ReplicatedStorage").Remotes.SendTradeRequest:FireServer(targ, lp)
 end,
})
local TradePlrR = Tab2:CreateButton({
 Name = "Make Random Trade Another Person",
 Callback = function()
  local targ = game.Players:GetPlayers()[math.random(1, #plrtable)]
  local targ2 = game.Players:GetPlayers()[math.random(1, #plrtable)] 
  game:GetService("ReplicatedStorage").Remotes.SendTradeRequest:FireServer(targ, lp)
 end,
})