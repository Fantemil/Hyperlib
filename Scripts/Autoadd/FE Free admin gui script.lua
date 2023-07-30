--[[
___          _                     _                     
  / __\___   __| |  ___   _ __  __ _ | |_  _   _  _ __ ___  
 / _\ / _ \ / _` | / _ \ | '__|/ _` || __|| | | || '_ ` _ \ 
/ /  |  __/| (_| || (_) || |  | (_| || |_ | |_| || | | | | |
\/    \___| \__,_| \___/ |_|   \__,_| \__| \__,_||_| |_| |_|

Fedoratum Admin Abuser

Games that it works well on :
FREE ADMIN (This is the main game)

(Other admin games works but might be broken)

Since im a nice guy i will leave this open source hahehahee, credits to me guys please or else :gun emoji:

Made By Fedoratum
--]]
-- // Set your admin prefix // --
local AdminPrefix = ";"
-- // It will automatically set it // --
-- It does not accept more than 2 characters
-- or an unknown character

-- // Option // --

local AffectAllPlayer = true
-- false affects not yourself but others
-- true affects everyone including you


-- // Hider does not hide when someone use logs

hider = [[




























]]

function GetPlr(String)
   local Foundex = {}
   local strl = String:lower()
   if strl == "others" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= game.Players.LocalPlayer.Name then
               table.insert(Foundex,v.Name)
           end
       end
   else
       for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
           if v.Name:lower():sub(1, #String) == String:lower() then
               table.insert(Foundex,v.Name)
           end
       end    
   end
end
return Foundex
end

function GetPlayer(String)
   local Found = {}
   local strl = String:lower()
   if strl == "all" then
       for i,v in pairs(game.Players:GetPlayers()) do
           table.insert(Found,v.Name)
       end
   elseif strl == "others" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end   
elseif strl == "me" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name == game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end  
   else
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name:lower():sub(1, #String) == String:lower() then
               table.insert(Found,v.Name)
           end
       end    
   end
   return Found    
end

local waitTime
-- //  Rejoin when kicked sometimes works // --

local Rejoin = game:GetService("Players").LocalPlayer

getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId, Rejoin)
    end
end)

-- // Anti Mute, incase when mega vip destroys you.// --
spawn(function()
while wait() do
if game.StarterGui:GetCoreGuiEnabled("Chat") == false then

game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
end
end
end)

-- // This is a free notification i edited // --

function Notify(titletxt, text, time)
    local GUI = Instance.new("ScreenGui")
    local Main = Instance.new("Frame", GUI)
    local title = Instance.new("TextLabel", Main)
    local message = Instance.new("TextLabel", Main)
    GUI.Name = "Notification"
    GUI.Parent = game.CoreGui
    Main.Name = "MainFrame"
    Main.BackgroundColor3 = Color3.new(0, 0, 0)
    Main.BorderColor3 = Color3.new(255, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(1, 5, 0, 50)
    Main.Size = UDim2.new(0, 330, 0, 100)

    title.BackgroundColor3 = Color3.new(0, 0, 0)
    title.BackgroundTransparency = 0.8
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Font = Enum.Font.SourceSansSemibold
    title.Text = titletxt
    title.BorderColor3 = Color3.new(255, 0, 0)
    title.TextColor3 = Color3.new(255, 0, 0)
    title.TextSize = 17

    local t = 5;
local tick = tick
local fromHSV = Color3.fromHSV
local RunService = game:GetService("RunService")

spawn(function()
RunService:BindToRenderStep("Rainbow", 1000, function()
 local hue = tick() % t / t
 local color = fromHSV(hue, 1, 1)
 title.TextColor3 = color
end)
end)

spawn(function()
while wait() do
title.Font = Enum.Font.SourceSans
wait(0.1)
title.Font = Enum.Font.Bodoni
wait(0.1)
title.Font = Enum.Font.Arcade
wait(0.1) 
title.Font = Enum.Font.Antique
wait(0.1)
title.Font = Enum.Font.Fantasy
end
end)
    message.BackgroundColor3 = Color3.new(0, 0, 0)
    message.BackgroundTransparency = 1
    message.Position = UDim2.new(0, 0, 0, 30)
    message.Size = UDim2.new(1, 0, 1, -30)
    message.Font = Enum.Font.Gotham
    message.BorderColor3 = Color3.new(255, 0, 0)
    message.Text = text
    message.TextColor3 = Color3.new(255, 0, 0)
    message.TextSize = 16
    message.TextWrapped = true
local notif = Instance.new("Sound")
notif.Parent = game:GetService("SoundService")
notif.SoundId = "rbxassetid://9086208751"
notif.Volume = 5
notif.Looped = false
    wait(0.1)
notif:Play()
spawn(function()
    Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
    wait(time)
    Main:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.5)
    wait(0.6)
    GUI:Destroy();
end)
end

-- // Automatically set up prefix // --

local plrgui = game.Players.LocalPlayer.PlayerGui
local hdadmin =
plrgui:FindFirstChild("HDAdminGUIs")
if hdadmin then
local hdadmin2 = hdadmin.MainFrame.Pages.Settings
local c = hdadmin2.Custom["AE1 Prefix"].SettingValue.TextBox
c:CaptureFocus()
task.wait(0.1)
c.Text = AdminPrefix
task.wait(0.1)
local vs = game:GetService("VirtualUser")
vs:SetKeyDown("0x0D")
task.wait()
vs:SetKeyUp("0x0D")
end

-- // GUI Variables // --
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Title2 = Instance.new("TextButton")
local Mute = Instance.new("TextButton")
local AllCMD = Instance.new("TextButton")
local LoopCMD = Instance.new("TextButton")
local DestructCMD = Instance.new("TextButton")
local SpamCMD = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local TextBox2 = Instance.new("TextBox")
local Exit = Instance.new("TextButton")
Players = game:GetService("Players")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.117575757, 0, 0.152334154, 0)
Main.Size = UDim2.new(0, 334, 0, 334)
Main.Active = true
Main.Draggable = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(255, 0, 0)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.Position = UDim2.new(0.0109580846, 0, 0.90000000, 0)
Title.Size = UDim2.new(0, 162, 0, 50)
Title.Font = Enum.Font.Highway
Title.Text = "Getting Time"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0, 0, 0)
Title.TextWrapped = true


Title2.Name = "Title2"
Title2.Parent = Main
Title2.BackgroundColor3 = Color3.new(255, 0, 0)
Title2.BackgroundTransparency = 1
Title2.BorderColor3 = Color3.new(0, 0, 0)
Title2.Position = UDim2.new(0.514970064, 0, 0.90000000, 0)
Title2.Size = UDim2.new(0, 162, 0, 50)
Title2.Font = Enum.Font.Highway
Title2.Text = "LoudRandomMusic"
Title2.TextColor3 = Color3.new(255, 0, 0)
Title2.TextSize = 14
Title2.TextStrokeColor3 = Color3.new(0, 0, 0)
Title2.TextWrapped = true

Mute.Name = "Mute"
Mute.Parent = Main
Mute.BackgroundColor3 = Color3.new(255, 0, 0)
Mute.BorderColor3 = Color3.new(0, 0, 0)
Mute.Position = UDim2.new(0.0209580846, 0, 0.594202876, 0)
Mute.Size = UDim2.new(0, 162, 0, 50)
Mute.Font = Enum.Font.Gotham
Mute.Text = "Loop (cmd) nil (string)"
Mute.TextColor3 = Color3.new(1, 1, 1)
Mute.TextSize = 14
Mute.TextStrokeColor3 = Color3.new(1, 1, 1)
Mute.TextWrapped = true

AllCMD.Name = "AllCMD"
AllCMD.Parent = Main
AllCMD.BackgroundColor3 = Color3.new(255, 0, 0)
AllCMD.BorderColor3 = Color3.new(0, 0, 0)
AllCMD.Position = UDim2.new(0.514970064, 0, 0.594202876, 0)
AllCMD.Size = UDim2.new(0, 152, 0, 50)
AllCMD.Font = Enum.Font.Gotham
AllCMD.Text = "(cmd) nil"
AllCMD.TextColor3 = Color3.new(1, 1, 1)
AllCMD.TextSize = 14
AllCMD.TextStrokeColor3 = Color3.new(1, 1, 1)
AllCMD.TextWrapped = true

LoopCMD.Name = "LoopCMD"
LoopCMD.Parent = Main
LoopCMD.BackgroundColor3 = Color3.new(255, 0, 0)
LoopCMD.BorderColor3 = Color3.new(0, 0, 0)
LoopCMD.Position = UDim2.new(0.0209580846, 0, 0.794202876, 0)
LoopCMD.Size = UDim2.new(0, 152, 0, 50)
LoopCMD.Font = Enum.Font.Gotham
LoopCMD.Text = "Loop (cmd) nil"
LoopCMD.TextColor3 = Color3.new(1, 1, 1)
LoopCMD.TextSize = 14
LoopCMD.TextStrokeColor3 = Color3.new(1, 1, 1)
LoopCMD.TextWrapped = true

DestructCMD.Name = "DestructCMD"
DestructCMD.Parent = Main
DestructCMD.BackgroundColor3 = Color3.new(255, 0, 0)
DestructCMD.BorderColor3 = Color3.new(0, 0, 0)
DestructCMD.Position = UDim2.new(0.514970064, 0, 0.794202876, 0)
DestructCMD.Size = UDim2.new(0, 152, 0, 50)
DestructCMD.Font = Enum.Font.Gotham
DestructCMD.Text = "(cmd) nil (string)"
DestructCMD.TextColor3 = Color3.new(1, 1, 1)
DestructCMD.TextSize = 14
DestructCMD.TextStrokeColor3 = Color3.new(1, 1, 1)
DestructCMD.TextWrapped = true

SpamCMD.Name = "SpamCMD"
SpamCMD.Parent = Main
SpamCMD.BackgroundColor3 = Color3.new(255, 0, 0)
SpamCMD.BorderColor3 = Color3.new(0, 0, 0)
SpamCMD.Position = UDim2.new(0.514970064, 0, 0.394202876, 0)
SpamCMD.Size = UDim2.new(0, 152, 0, 50)
SpamCMD.Font = Enum.Font.Gotham
SpamCMD.Text = "Spam (cmd)"
SpamCMD.TextColor3 = Color3.new(1, 1, 1)
SpamCMD.TextSize = 14
SpamCMD.TextStrokeColor3 = Color3.new(1, 1, 1)
SpamCMD.TextWrapped = true

TextBox.Name = "TextBox"
TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BorderColor3 = Color3.new(255, 0, 0)
TextBox.Position = UDim2.new(0.0209580846, 0, 0.159420297, 0)
TextBox.Size = UDim2.new(0, 317, 0, 50)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderColor3 = Color3.new(255, 0, 0)
TextBox.PlaceholderText = "Command"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 30
TextBox.TextWrapped = true

TextBox2.Name = "TextBox2"
TextBox2.Parent = Main
TextBox2.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox2.BorderColor3 = Color3.new(255, 0, 0)
TextBox2.Position = UDim2.new(0.0209580846, 0, 0.394202876, 0)
TextBox2.Size = UDim2.new(0, 152, 0, 50)
TextBox2.ClearTextOnFocus = false
TextBox2.Font = Enum.Font.Gotham
TextBox2.PlaceholderColor3 = Color3.new(255, 0, 0)
TextBox2.PlaceholderText = "String"
TextBox2.Text = ""
TextBox2.TextColor3 = Color3.new(255, 255, 255)
TextBox2.TextScaled = true
TextBox2.TextSize = 14
TextBox2.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.new(255, 0, 0)
Exit.BorderColor3 = Color3.new(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.952095807, 0, 0, 0)
Exit.Size = UDim2.new(0, 16, 0, 16)
Exit.Font = Enum.Font.Bodoni
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true

-- // Audio Might Be Outdated // --

local music = {
"6911766512",
"6781116057",
"5216738441",
"6819593773",
"6846153394"
}

-- // Functions // --

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local plrname = LocalPlayer.Name
local haha = false
local bruv = false
local losing = false
local spamtime = 1.5

local function getNumberOfPlayers()
    return #Players:GetPlayers()
end

spawn(function()
while wait() do
waitTime = getNumberOfPlayers()
Title.Text = "PlayerInGame:"..waitTime
end
end)

Mute.MouseButton1Click:Connect(function()
bruv = not bruv
haha = false
losing = false
if AffectAllPlayer then
spawn(function()
while wait(waitTime) and bruv do
for i, player in pairs(Players:GetPlayers()) do
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." "..player.Name.." "..TextBox2.Text)
   end
  end
end)
else
spawn(function()
while wait(waitTime) and bruv do
for i, player in pairs(Players:GetPlayers()) do
if player.Name ~= plrname then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." "..player.Name.." "..TextBox2.Text)
   end
  end
end
end)
end
end)

AllCMD.MouseButton1Click:Connect(function()
losing = false
bruv = false
haha = false
for i, player in pairs(Players:GetPlayers()) do
if AffectAllPlayer then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." ".. player.Name)
else
if player.Name ~= plrname then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." ".. player.Name)
     end
 end
end
end)

LoopCMD.MouseButton1Click:Connect(function()
haha = not haha
losing = false
bruv = false
if AffectAllPlayer then
spawn(function()
while wait(waitTime) and haha do
for i, player in pairs(Players:GetPlayers()) do
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." ".. player.Name)
    end
end
end)
else
spawn(function()
while wait(waitTime) and haha do
for i, player in pairs(Players:GetPlayers()) do
if player.Name ~= plrname then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." ".. player.Name)
    end
   end
end
end)
end
end)

DestructCMD.MouseButton1Click:Connect(function()
losing = false
haha = false
bruv = false
for i, player in pairs(Players:GetPlayers()) do
if AffectAllPlayer then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." "..player.Name.." "..TextBox2.Text)
else
if player.Name ~= plrname then
game.Players:Chat(hider..AdminPrefix..TextBox.Text.." "..player.Name.." "..TextBox2.Text)
     end
    end
 end
end)

SpamCMD.MouseButton1Click:Connect(function()
losing = not losing
bruv = false
haha = false
spawn(function()
while wait(spamtime) and losing do
game.Players:Chat(hider..AdminPrefix..TextBox.Text)
  end
end)
end)

local rghes

rghes = game:GetService("RunService").Heartbeat:Connect(function()
if losing then
SpamCMD.Text = "Click to Stop Loop"
else
SpamCMD.Text = "Spam (cmd)"
end
if AffectAllPlayer then
if haha then
LoopCMD.Text = "Click to Stop Loop"
else
LoopCMD.Text = "Loop (cmd) all"
end
if bruv then
Mute.Text = "Click to Stop Loop"
else
Mute.Text = "Loop (cmd) all (string)"
end
else
if haha then
LoopCMD.Text = "Click to Stop Loop"
else
LoopCMD.Text = "Loop (cmd) others"
end
if bruv then
Mute.Text = "Click to Stop Loop"
else
Mute.Text = "Loop (cmd) others (string)"
end

end
end)

Title2.MouseButton1Click:Connect(function()
game.Players:Chat(hider..AdminPrefix.."music "..music[math.random(#music)])
game.Players:Chat(hider..AdminPrefix.."volume 1000")
end)

if AffectAllPlayer then
DestructCMD.Text = "(cmd) all (string)"
LoopCMD.Text = "Loop (cmd) all"
AllCMD.Text = "(cmd) all"
Mute.Text = "Loop (cmd) all (string)"
else
DestructCMD.Text = "(cmd) others (string)"
LoopCMD.Text = "Loop (cmd) others"
AllCMD.Text = "(cmd) others"
Mute.Text = "Loop (cmd) others (string)"
end

local opening
opening = true
local debonce = true
local cht

function ClearTools()
pcall(function()
for _, g in pairs(LocalPlayer.Character:GetDescendants()) do
if g:IsA("Tool") then
g:Destroy()
end
end
for _, g in pairs(LocalPlayer.Backpack:GetDescendants()) do
if g:IsA("Tool") then
g:Destroy()
end
end
end)
end

function ActivateTools()
pcall(function()
for fuck, ax in pairs(LocalPlayer.Character:GetDescendants()) do
if ax:IsA("Tool") then
repeat wait() until ax ~= nil
ax:Activate()
end
end
end)
end

function EquipTools()
pcall(function()
for fucker, cock in pairs(LocalPlayer.Backpack:GetDescendants()) do
if cock:IsA("Tool") then
repeat wait() until cock ~= nil
cock.Parent = LocalPlayer.Character
end
end
end)
end

function UnequipTools()
pcall(function()
for fucker, cock in pairs(LocalPlayer.Character:GetDescendants()) do
if cock:IsA("Tool") then
repeat wait() until cock ~= nil
cock.Parent = LocalPlayer.Backpack
end
end
end)
end

local lox = true
local chaos = false
local breakit = false
local spammer = false
local spammer2 = false

-- // Custom CMDS // --

cht = LocalPlayer.Chatted:Connect(function(msg)
if msg:sub(1, 11) == AdminPrefix.."customcmds" then
print([[
         
// Meaning of each words //
(prefix)
[Means what symbol called at first line]
(un-cmd)
[Means it could be stopped or started deciding with cmd or uncmd]
(name, other, all me)
[Could be used on other people or yourself]

  // List of custom commands //

[prefix(spamtime) (number)]
Sets the spam cmd button delay, if number lower than 1 it would be broken

[prefix(un-mblind)] blind people with message, very annoying (cmd used : sm m)

[prefix(slash) (name), other] Makes them killed by a gear (cmds used : gear me)

[prefix(rocket) (name) other, all, me] KABOOM PEOPLE WITH ROCKETS (cmds used : gear me)

[prefix(un-chaos)] Makes the server chaos by lateral rockets everywhere (cmds used : gear me)

[prefix(un-spamturkey)] Spams turkey as you like and unclearable like these exists by itself (cmds used : gear me) (CANNOT BE AVOID BY CLEAR COMMAND)

[prefix(un-spamclone)] If you watch anime you will know, spams stupid clones that walk everywhere (cmds used : gear me) (CANNOT BE AVOID BY CLEAR COMMAND)

[prefix(zawarudo)] freezes others and play a zawarudo sound (cmds used : music, freeze)

[prefix(stun) (name), other] Makes them stunned by laser electrocution yes (cmds used : gear me)

(COMMANDS THAT WORK ONLY ON FREE ADMIN GAME WITH 5K PLAYERS PLUS)

// COMMANDS ONLY FOR FREE ADMIN //

[prefix(crash)] make the game unplayable (cmds used : nothing only fireclickdetector, works on free admin only)

]])
Notify("Fedoratum Admin Abuser", "Type /console to check customcmds", 4)
elseif msg:sub(1, 7) == AdminPrefix.."mblind" then
haha = false
bruv = false
losing = false
opening = true
debonce = true
if opening then
opening = false
spawn(function()
while debonce and wait(2.3) do
game.Players:Chat(hider..AdminPrefix.."m "..AdminPrefix.."sm")
end
end)
end

elseif msg:sub(1, 9) == AdminPrefix.."unmblind" then
debonce = false
opening = true

elseif msg:sub(1, 8) == AdminPrefix.."unchaos" then
chaos = false
ClearTools()

elseif msg:sub(1, 6) == AdminPrefix.."chaos" then
losing = false
bruv = false
haha = false
losing = false
spammer = false
spammer2 = false

pcall(function()
chaos = true
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 169602103")
task.wait(1.5)
spawn(function()
      while wait() and chaos do
LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(math.random(-200,200),math.random(0,200),math.random(-200,200)),Vector3.new(math.random(-200,200), math.random(0,50), math.random(-200,200))
)
if chaos == false then
break
end
  end
end)
end)

elseif msg:sub(1, 9) == AdminPrefix.."spamtime" then
spamtime = tostring(msg:sub(11))

elseif msg:sub(1, 6) == AdminPrefix.."slash" then
haha = false
bruv = false
losing = false
spammer = false
spammer2 = false
chaos = false
pcall(function()
breakit = false
ClearTools()
task.wait(1.5)
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 68539623")
task.wait(1.5)
EquipTools()
for _, p in pairs(GetPlr(tostring(msg:sub(8)))) do
if game.Players[p].Character then
spawn(function()
while wait() do
if game.Players[p].Character:FindFirstChild("HumanoidRootPart") ~= nil then
ActivateTools()
game.Players[p].Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 0, -2)
 end
if breakit then
break
end
end
end)
end
end
task.wait(2)
ClearTools()
breakit = true
end)

elseif msg:sub(1, 9) == AdminPrefix.."zawarudo" then
spammer2 = false
spammer = false
chaos = false
losing = false
bruv = false
haha = false
game.Players:Chat(hider..AdminPrefix.."music 5129686200")
task.wait(4)
for i, player in pairs(Players:GetPlayers()) do
if player.Name ~= plrname then
game.Players:Chat(hider..AdminPrefix.."freeze ".. player.Name)
end
end
task.wait(1)
game.Players:Chat(hider..AdminPrefix.."music 0")



elseif msg:sub(1, 5) == AdminPrefix.."stun" then
haha = false
bruv = false
losing = false
spammer = false
spammer2 = false
chaos = false
pcall(function()
breakit = false
ClearTools()
task.wait(1.5)
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 82357123")
task.wait(1.5)
EquipTools()
for _, p in pairs(GetPlr(tostring(msg:sub(7)))) do
if game.Players[p].Character then
spawn(function()
while wait() do
if game.Players[p].Character:FindFirstChild("HumanoidRootPart") ~= nil then
ActivateTools()
game.Players[p].Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 0, -2)
if breakit then
break
end
 end
end
end)
end
end
task.wait(2)
ClearTools()
breakit = true
end)

elseif msg:sub(1, 13) == AdminPrefix.."unspamturkey" then
spammer = false
ClearTools()

elseif msg:sub(1, 12) == AdminPrefix.."unspamclone" then
spammer2 = false
UnequipTools()
task.wait(1)
ClearTools()

elseif msg:sub(1, 11) == AdminPrefix.."spamturkey" then
spammer = true
bruv = false
haha = false
losing = false
spammer2 = false
chaos = false

ClearTools()

task.wait(1)

spawn(function()
while wait() and spammer do
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 40504724")
task.wait(1.5)
EquipTools()
task.wait(0.3)
ActivateTools()
ActivateTools()
ActivateTools()
ActivateTools()
task.wait(0.3)
ClearTools()
end
end)

elseif msg:sub(1, 10) == AdminPrefix.."spamclone" then
spammer2 = true
bruv = false
haha = false
losing = false
spammer = false
chaos = false

ClearTools()
task.wait(1)
spawn(function()
while wait() and spammer2 do
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 72644644")
task.wait(1.5)
EquipTools()
task.wait(0.3)
ActivateTools()
ActivateTools()
ActivateTools()
ActivateTools()
task.wait(0.3)
UnequipTools()
task.wait(1)
ClearTools()
end
end)

elseif msg:sub(1, 7) == AdminPrefix.."rocket" then
haha = false
bruv = false
losing = false
spammer = false
spammer2 = false
pcall(function()
lox = true
game.Players:Chat(hider..AdminPrefix.."gear "..plrname.." 169602103")
task.wait(1.5)
for _, fg in pairs(GetPlayer(tostring(msg:sub(9)))) do
if game.Players[fg].Character:FindFirstChild("HumanoidRootPart") ~= nil then
spawn(function()
while wait() and lox do
local args = {
   [1] = game.Players[fg].Character.HumanoidRootPart.Position - Vector3.new(0,1,0),
   [2] = game.Players[fg].Character.HumanoidRootPart.Position
}
LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
end
end)
end
end
task.wait(4)
lox = false
ClearTools()
end)

--[[
Anyone if they believe i fucking did not create the crash script, you are stupid. This is a reference to a free script on youtube called: Free Admin Server Slower, video by AverageSC.

if who said is the creator and saying me for stealing your idea, this is not your fucking idea. We had the same idea asshole. But im more earlier
--]]

-- // Exclusive Crash Script // --

elseif msg:sub(1, 6) == AdminPrefix.."crash" then
spawn(function()
while wait() do
if fireclickdetector then
  for i,v in pairs(workspace:GetDescendants()) do
   if v:IsA("ClickDetector") then
           v.MaxActivationDistance = math.huge
    fireclickdetector(v)
   end
  end
end
end
end)
        end
end)

Exit.MouseButton1Click:Connect(function()
 ScreenGui:Destroy()
losing = false
haha = false
bruv = false
spammer = false
breakit = true
spammer2 = false
chaos = false
cht:Disconnect()
rghes:Disconnect()
end)

Notify("Fedoratum Admin Abuser", "Anti Kick And Mute Loaded", 4)

task.wait(4)

Notify("Fedoratum Admin Abuser", "Type prefix(customcmds) to see custom commands", 4)

-- // Fedoratum was here // --