local Config = {
    WindowName = "Anime Master",
    Color = Color3.fromRGB(182,41,243),
    Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Main")


local Section1 = Tab1:CreateSection("Cheats")
local Section2 = Tab1:CreateSection("Credits")

local player = game.Players.LocalPlayer
local humPos = game.Workspace[player.Name].HumanoidRootPart.Position

local RunService = game:GetService("RunService")

local timeRemaining = 0
 
local autofarm
local bLocation
local eggString
local appearanceData

function teleport(loc)
    bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end
-------------


Section2:CreateLabel("Credits : Purples")
Section2:CreateLabel("v3rmillion.net : Purples")
Section2:CreateLabel("Discord Purple#0666")
Section2:CreateLabel("UI Lib : AlexR32")
Section2:CreateLabel(" ")
Section2:CreateLabel(" ")
Section2:CreateLabel(" ")
Section2:CreateLabel("En mode gothique ou quoi ?")



-------------
local Toggle1 = Section1:CreateToggle("Autofarm", nil, function(State)
     shared.toggle = State
    autofarm = RunService.Stepped:Connect(function()
        if shared.toggle == true then
            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.3").knit.Services.PlayerService.RE.Punch:FireServer()
            else
            autofarm:Disconnect()
        end
    end)
end)
Toggle1:CreateKeybind("C", function(Key)
end)

local Toggle4 = Section1:CreateToggle("Always SafeZone", nil, function(State)
     shared.toggle = State
        if shared.toggle == true then
            player.SessionData.InSafezone.Value = true
            else
             player.SessionData.InSafezone.Value = false
        end
end)

local Dropdown1 = Section1:CreateDropdown("Items", {"Common","Uncommon"}, function(String)
    eggSring = String
end)

local Button3 = Section1:CreateButton("Buy Egg's", function()
local args = {
    [1] = eggSring.."Egg",
    [2] = false
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.3").knit.Services.PetService.RF.Hatch:InvokeServer(unpack(args))
end)
Section1:CreateLabel("Gamepass Unlocker")

local Toggle2 = Section1:CreateToggle("Auto Punch", nil, function(State)
     shared.toggle = State
        if shared.toggle == true then
            player.Settings["Auto Punch"].Value = true
            else
             player.Settings["Auto Punch"].Value = false
        end
end)

local Toggle3 = Section1:CreateToggle("Auto Rebirth", nil, function(State)
     shared.toggle = State
        if shared.toggle == true then
            player.Settings["Auto Rebirth"].Value = true
            else
             player.Settings["Auto Rebirth"].Value = false
        end
end)

Section1:CreateLabel("Appearance Changer")
local TextBox1 = Section1:CreateTextBox("GuyID", "Only numbers", false, function(Value)
    appearanceData = Value
end)
TextBox1:AddToolTip("Guy1 to Guy54")
local Button4 = Section1:CreateButton("Change", function()
     for i, v in pairs(game.Workspace[player.Name]:GetChildren()) do
        if v:IsA("Pants") or v:IsA("Shirt") or v:IsA("BodyColors") then
            v:Destroy()
        end
    end   
wait(1)
local fuckedUp = game:GetService("ReplicatedStorage").Assets.Characters[appearanceData].Appearance.Clothes.Pants:Clone()
fuckedUp.Parent = game.Workspace[player.Name]

local fuckedUp = game:GetService("ReplicatedStorage").Assets.Characters[appearanceData].Appearance.Clothes.Shirt:Clone()
fuckedUp.Parent = game.Workspace[player.Name]

local fuckedUp = game:GetService("ReplicatedStorage").Assets.Characters[appearanceData].Color["Body Colors"]:Clone()
fuckedUp.Parent = game.Workspace[player.Name]
end)