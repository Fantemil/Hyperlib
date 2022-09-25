--[[
 ██▒   █▓ ▒█████ ▓██   ██▓ ▄▄▄        ▄████ ▓█████  ██▀███     ▒██   ██▒
▓██░   █▒▒██▒  ██▒▒██  ██▒▒████▄     ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒   ▒▒ █ █ ▒░
 ▓██  █▒░▒██░  ██▒ ▒██ ██░▒██  ▀█▄  ▒██░▄▄▄░▒███   ▓██ ░▄█ ▒   ░░  █   ░
  ▒██ █░░▒██   ██░ ░ ▐██▓░░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄      ░ █ █ ▒ 
   ▒▀█░  ░ ████▓▒░ ░ ██▒▓░ ▓█   ▓██▒░▒▓███▀▒░▒████▒░██▓ ▒██▒   ▒██▒ ▒██▒
   ░ ▐░  ░ ▒░▒░▒░   ██▒▒▒  ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░   ▒▒ ░ ░▓ ░
   ░ ░░    ░ ▒ ▒░ ▓██ ░▒░   ▒   ▒▒ ░  ░   ░  ░ ░  ░  ░▒ ░ ▒░   ░░   ░▒ ░
     ░░  ░ ░ ░ ▒  ▒ ▒ ░░    ░   ▒   ░ ░   ░    ░     ░░   ░     ░    ░  
      ░      ░ ░  ░ ░           ░  ░      ░    ░  ░   ░         ░    ░  
     ░            ░ ░                                                   ~Nexxor#1824
]]

function getgun(gun)
 local head = game.Players.LocalPlayer.Character.Head
 local part = game:GetService("Workspace").AREA51[gun][gun.. " Giver"]["PUT THE WEAPON IN THIS BRICK"]
 firetouchinterest(part, head, 0)
 wait(0.01)
 firetouchinterest(part, head, 1)
end

function pap(gun)
 game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(gun)
end

function noti(text)
 game.StarterGui:SetCore("SendNotification", {
  Title = "Voyager X Code Checker"; 
  Text = text; 
  Duration = 5;
 })
end

function checkcode(code)
 local coderemote = game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("Check Code"):InvokeServer(code)
 if coderemote == true then
  noti("Correct! " ..code.. " Is The Correct Code!")
 else
  noti("Incorrect! " ..code.. " Is Not Correct")
 end
end














-- Kavo Loadstring
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Voyager X", "DarkTheme")
--

-- Tabs
local main = Window:NewTab("Teleports")
local gun = Window:NewTab("Guns")
local pack = Window:NewTab("Pack A Puncher")
local misc = Window:NewTab("Misc")
local code = Window:NewTab("Alien Code Checker")
local cred = Window:NewTab("Credits")
--

-- main Sections
local guns = gun:NewSection("Guns")
local areas = main:NewSection("Area Teleports")
--

guns:NewButton("M14", "Get Gun", function()
    getgun("M14")
end)
guns:NewButton("MP5k", "Get Gun", function()
    getgun("MP5k")
end)
guns:NewButton("M4A1", "Get Gun", function()
    getgun("M4A1")
end)
guns:NewButton("R870", "Get Gun", function()
    getgun("R870")
end)
guns:NewButton("M16A2/M203", "Get Gun", function()
    getgun("M16A2/M203")
end)
guns:NewButton("RayGun", "Get Gun", function()
    getgun("RayGun")
end)
guns:NewButton("M1014", "Get Gun", function()
    getgun("M1014")
end)
guns:NewButton("M1911", "Get Gun", function()
    getgun("M1911")
end)
guns:NewButton("AK-47", "Get Gun", function()
    getgun("AK-47")
end)
guns:NewButton("AWP", "Get Gun", function()
    getgun("AWP")
end)
areas:NewButton("Spawn", "TP To Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(324, 511, 419)
end)
areas:NewButton("Code Area", "TP To Alien Code", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138, 333, 535)
end)
areas:NewButton("Pack A Punch", "TP To Pack A Punch", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(278, 323, 784)
end)
local misca = misc:NewSection("Misc Functions")
misca:NewButton("Get All Guns", "Gets All Guns", function()
    getgun("M14")
 wait(0.4)
 getgun("MP5k")
 wait(0.4)
 getgun("M4A1")
 wait(0.4)
 getgun("R870")
 wait(0.4)
 getgun("M16A2/M203")
 wait(0.4)
 getgun("RayGun")
 wait(0.4)
 getgun("M1014")
 wait(0.4)
 getgun("M1911")
 wait(0.4)
 getgun("AK-47")
 wait(0.4)
 getgun("AWP")
end)

local packer = pack:NewSection("Pack A Puncher")

packer:NewButton("M14", "Pack A Punch Weapon", function()
    pap("M14")
end)
packer:NewButton("MP5k", "Pack A Punch Weapon", function()
    pap("MP5k")
end)
packer:NewButton("M4A1", "Pack A Punch Weapon", function()
    pap("M4A1")
end)
packer:NewButton("R870", "Pack A Punch Weapon", function()
    pap("R870")
end)
packer:NewButton("M16A2/M203", "Pack A Punch Weapon", function()
    pap("M16A2/M203")
end)
packer:NewButton("RayGun", "Pack A Punch Weapon", function()
    pap("RayGun")
end)
packer:NewButton("M1014", "Pack A Punch Weapon", function()
    pap("M1014")
end)
packer:NewButton("M1911", "Pack A Punch Weapon", function()
    pap("M1911")
end)
packer:NewButton("AK-47", "Pack A Punch Weapon", function()
    pap("AK-47")
end)
packer:NewButton("AWP", "Pack A Punch Weapon", function()
    pap("AWP")
end)

local acode = code:NewSection("Code Checker")

local code

acode:NewTextBox("Code To Check", "Checks Alien Code", function(txt)
 code = txt
end)


acode:NewButton("Check", "Checks The Code", function()
    checkcode(code)
end)
local credits = cred:NewSection("Credits")
credits:NewLabel("Made By Nexxor#1824")