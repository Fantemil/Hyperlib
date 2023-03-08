local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "Sirius Hub | SCP: Site Roleplay",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by wifi#1000",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SiriusHub"
   },
   Discord = {
      Enabled = false,
      Invite = "ABCD", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord!",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sirius W","All")

local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image


local Button = MainTab:CreateButton({
   Name = "Click to TP tool",
   Callback = function()
   mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Equip to Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})


local Button = MainTab:CreateButton({
   Name = "Instant reset",
   Callback = function()
local A_1 = 2
local Event = game:GetService("ReplicatedStorage").Died
Event:FireServer(A_1)

   end,
})


local Button = MainTab:CreateButton({
   Name = "Invisible",
   Callback = function()
   for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
 if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") then
  v:Destroy()
 end
 if v:IsA("Part") or v:IsA("MeshPart") then
  v.Transparency = 1
  if v.Name == "Head" then
   if v:FindFirstChild("face") then
    v.face:Destroy()
   end
  end
 end
end
   end,
})

local Label = MainTab:CreateLabel("For invisible, they will stil be able to see ur head and name.")

local Tab = Window:CreateTab("Spam", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "SCPF COMMUNICATIONS RADIO",
   Callback = function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","SCPF COMMUNICATIONS")
   end,
})

local Button1 = Tab:CreateButton({
   Name = "CLASS-D COMMUNICATIONS RADIO",
   Callback = function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
   end,
})

local Button2 = Tab:CreateButton({
   Name = "Normal Chat",
   Callback = function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
   end,
})