-- Developed and Designed by snakez on Vermillion
-- Credits go to snakez for the whole script.
-- As always a vouch and +rep will be appreciated.
-- Enjoy Exploiting.
 
-- To use this script, just click the rap you want once the timer starts, it will automatically rap.
-- There are currently two songs, more will come soon.
-- All credits go to snakez, so dont leech.
 
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Subscribe to sir meme on youtube")
 
 
 
-- Objects
 
local ScreenGui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local facerap = Instance.new("TextButton")
local facerapfollow = Instance.new("TextButton")
local rapp2 = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local votegui = Instance.new("TextButton")
local infiniteyield = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local spamhats = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local openframe = Instance.new("Frame")
local open = Instance.new("TextButton")
 
-- Properties
 
ScreenGui.Parent = game.CoreGui
 
mainframe.Name = "mainframe"
mainframe.Parent = ScreenGui
mainframe.BackgroundColor3 = Color3.new(0.937255, 1, 0.968628)
mainframe.BackgroundTransparency = 0.40000000596046
mainframe.Position = UDim2.new(0, 413, 0, 21)
mainframe.Size = UDim2.new(0, 464, 0, 474)
mainframe.Active = true
mainframe.Selectable = true
mainframe.Draggable = true
 
TextLabel.Parent = mainframe
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0, 16)
TextLabel.Size = UDim2.new(0, 464, 0, 51)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "AutoRapX"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
 
TextLabel_2.Parent = mainframe
TextLabel_2.BackgroundColor3 = Color3.new(0.517647, 1, 0)
TextLabel_2.BackgroundTransparency = 0.5
TextLabel_2.Position = UDim2.new(0, 0, 0, 78)
TextLabel_2.Size = UDim2.new(0, 464, 0, 11)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 14
 
TextLabel_3.Parent = mainframe
TextLabel_3.BackgroundColor3 = Color3.new(0.517647, 1, 0)
TextLabel_3.BackgroundTransparency = 0.5
TextLabel_3.Size = UDim2.new(0, 464, 0, 11)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextSize = 14
 
facerap.Name = "facerap"
facerap.Parent = mainframe
facerap.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
facerap.BackgroundTransparency = 0.5
facerap.Position = UDim2.new(0, 0, 0, 104)
facerap.Size = UDim2.new(0, 464, 0, 50)
facerap.Font = Enum.Font.Highway
facerap.Text = "Face Rap"
facerap.TextColor3 = Color3.new(0, 0, 0)
facerap.TextSize = 14
facerap.TextWrapped = true
 
facerapfollow.Name = "facerapfollow"
facerapfollow.Parent = mainframe
facerapfollow.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
facerapfollow.BackgroundTransparency = 0.5
facerapfollow.Position = UDim2.new(0, 0, 0, 155)
facerapfollow.Size = UDim2.new(0, 464, 0, 50)
facerapfollow.Font = Enum.Font.Highway
facerapfollow.Text = "Face Rap Follow Up"
facerapfollow.TextColor3 = Color3.new(0, 0, 0)
facerapfollow.TextSize = 14
facerapfollow.TextWrapped = true
 
rapp2.Name = "rapp2"
rapp2.Parent = mainframe
rapp2.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
rapp2.BackgroundTransparency = 0.5
rapp2.Position = UDim2.new(0, 0, 0, 206)
rapp2.Size = UDim2.new(0, 464, 0, 49)
rapp2.Font = Enum.Font.Highway
rapp2.Text = "Hot'n Ready"
rapp2.TextColor3 = Color3.new(0, 0, 0)
rapp2.TextSize = 14
rapp2.TextWrapped = true
 
TextLabel_4.Parent = mainframe
TextLabel_4.BackgroundColor3 = Color3.new(0.517647, 1, 0)
TextLabel_4.BackgroundTransparency = 0.5
TextLabel_4.Position = UDim2.new(0, 0, 0, 262)
TextLabel_4.Size = UDim2.new(0, 464, 0, 11)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = ""
TextLabel_4.TextColor3 = Color3.new(0, 0, 0)
TextLabel_4.TextSize = 14
 
votegui.Name = "votegui"
votegui.Parent = mainframe
votegui.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
votegui.BackgroundTransparency = 0.5
votegui.Position = UDim2.new(0, 0, 0, 281)
votegui.Size = UDim2.new(0, 464, 0, 50)
votegui.Font = Enum.Font.Highway
votegui.Text = "Vote GUI"
votegui.TextColor3 = Color3.new(0, 0, 0)
votegui.TextSize = 14
votegui.TextWrapped = true
 
infiniteyield.Name = "infiniteyield"
infiniteyield.Parent = mainframe
infiniteyield.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
infiniteyield.BackgroundTransparency = 0.5
infiniteyield.Position = UDim2.new(0, 0, 0, 337)
infiniteyield.Size = UDim2.new(0, 464, 0, 50)
infiniteyield.Font = Enum.Font.Highway
infiniteyield.Text = "Infinite Yield"
infiniteyield.TextColor3 = Color3.new(0, 0, 0)
infiniteyield.TextSize = 14
infiniteyield.TextWrapped = true
 
TextLabel_5.Parent = mainframe
TextLabel_5.BackgroundColor3 = Color3.new(0.517647, 1, 0)
TextLabel_5.BackgroundTransparency = 0.5
TextLabel_5.Position = UDim2.new(0, 0, 0, 451)
TextLabel_5.Size = UDim2.new(0, 464, 0, 23)
TextLabel_5.Font = Enum.Font.Highway
TextLabel_5.Text = "CREATED BY SNAKEZ ON VERMILLION"
TextLabel_5.TextColor3 = Color3.new(0, 0, 0)
TextLabel_5.TextSize = 14
 
spamhats.Name = "spamhats"
spamhats.Parent = mainframe
spamhats.BackgroundColor3 = Color3.new(0.882353, 0.894118, 1)
spamhats.BackgroundTransparency = 0.5
spamhats.Position = UDim2.new(0, 0, 0, 393)
spamhats.Size = UDim2.new(0, 464, 0, 50)
spamhats.Font = Enum.Font.Highway
spamhats.Text = "Spam Hats"
spamhats.TextColor3 = Color3.new(0, 0, 0)
spamhats.TextSize = 14
spamhats.TextWrapped = true
 
TextButton.Parent = mainframe
TextButton.BackgroundColor3 = Color3.new(0.713726, 0.713726, 0.713726)
TextButton.BackgroundTransparency = 0.69999998807907
TextButton.Position = UDim2.new(0, 0, 0, 18)
TextButton.Size = UDim2.new(0, 37, 0, 52)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
 
openframe.Name = "openframe"
openframe.Parent = ScreenGui
openframe.BackgroundColor3 = Color3.new(0.890196, 0.909804, 0.905882)
openframe.BackgroundTransparency = 0.5
openframe.Position = UDim2.new(0, 0, 0, 398)
openframe.Size = UDim2.new(0, 122, 0, 30)
 
open.Name = "open"
open.Parent = openframe
open.BackgroundColor3 = Color3.new(0.858824, 0.866667, 0.858824)
open.BackgroundTransparency = 0.5
open.Size = UDim2.new(0, 122, 0, 30)
open.Font = Enum.Font.Highway
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 14
 
-- Scripts 
 
TextButton.MouseButton1Click:connect(function()
mainframe.Visible = false
end)
 
open.MouseButton1Click:connect(function()
mainframe.Visible = true
end)
 
-- Rap Number One
-- Lots of Fire Spat out.
 
facerap.MouseButton1Click:connect(function()
wait(0.1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You best be ready for some fire, 'cuz you'll be in an urn by the time I'm finished!" ,"All")
wait(8)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm telling you, it's gonna BURN, so hard it'll need to be extinguished." ,"All")
wait(7)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("C'mon, what you looking at? You think that you're so far above?" ,"All")
   wait(8)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I find that hard to believe, considering you've got a face only a mother could love." ,"All")
   wait(8)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You'd think that someone with a face like yours would go to school getting pushed and shoved," ,"All")
   wait(7)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("but all that happens is they're too scared to look at you, so you can't even be made fun of!" ,"All")
end)
 
-- Follow Up to Rap Number One.
-- Spitting Fire!
 
facerapfollow.MouseButton1Click:connect(function()
wait(0.1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Don't worry, I've already burned your face well enough." ,"All")
wait(7)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("But it doesn't matter, I promise this time it'll be even more rough." ,"All")
wait(8)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("First of all, why the ###k you trying to act so tough?" ,"All")
   wait(7)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Heh. That's a bluff. I could just pik you up like a cat by the scruff." ,"All")
   wait(4)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Woooop!, I hope you enjoyed this little rap battle, it really wasn't a challenge." ,"All")
   wait(8)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Analyze my lyrics and you'll probably find some rhymes that you can scavenge." ,"All")
end)
 
-- Rap Number Two.
-- Fire in the booth!
 
rapp2.MouseButton1Click:connect(function()
wait(0.1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I've got an order for a heavy roast, hot and ready!" ,"All")
wait(9)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("When I spit my lyrics, you'll find it hard to even keep yourself steady." ,"All")
wait(7)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yo head lookin like Jimmy from Ed, Edd, n' Eddy!" ,"All")
   wait(8)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Another thing, that outfit! It's the worst I've ever seen." ,"All")
   wait(7)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("At least I'm versed in wearing things that look clean!" ,"All")
   wait(8)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ya look terrible from head to toe and everything inbetween." ,"All")
end)
 
-- Infinite Yield Script
-- Best Admin Exploit
 
infiniteyield.MouseButton1Click:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/MjBzRjmT'),true))()
end)
 
-- Spam Hats
-- This one is great!
 
spamhats.MouseButton1Click:connect(function()
for i=1,500 do
print (i)
game.Workspace.Hats:FireServer("Dominus Empyreus'", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
wait(0.25)
game.Workspace.Hats:FireServer("Backwards Baseball Cap", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
wait(0.25)
game.Workspace.Hats:FireServer("Acheo's Pot", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
wait(0.25)
game.Workspace.Hats:FireServer("Golden Headphones", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
wait(0.25)
game.Workspace.Hats:FireServer("Black Fedora", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end)
 
votegui.MouseButton1Click:connect(function()
loadstring(game:HttpGet(("https://pastebin.com/raw/a7jy3wwA"),true))()
end)
 
 
-- Developed and Designed by snakez on Vermillion
-- Leave a vouch and +rep.
-- Do not leech as i keep saying.
-- Enjoy Exploiting..