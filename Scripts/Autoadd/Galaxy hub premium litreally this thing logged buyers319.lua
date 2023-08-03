-- Oil Warfare Tycoon

if game.PlaceId == 4639625707 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Oil Warfare Tycoon", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Tabs
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4370345144",
    PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483363527",
	PremiumOnly = false
})

local WeaponsTab = Window:MakeTab({
	Name = "Weapon Mods",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TogglesTab = Window:MakeTab({
	Name = "Toggles",
	Icon = "rbxassetid://4400702947",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

local Section = TeleportTab:AddSection({
	Name = "Teleports"
})

local Section = WeaponsTab:AddSection({
	Name = "Gun Mods (broken right now)"
})

local Section = SettingsTab:AddSection({
	Name = "Credits"
})

OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Values
--getgenv().AimPart = "Head" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
--getgenv().AimlockToggleKey = "RightClick" -- Toggles Aimbot On/Off 
--getgenv().AimRadius = 50 -- How far away from someones character you want to lock on at
--getgenv().ThirdPerson = false -- Locking onto someone in your Third Person POV
--getgenv().FirstPerson = true -- Locking onto someone in your First Person POV
--getgenv().TeamCheck = true -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
--getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
--getgenv().PredictionVelocity = 10 -- The speed of the PredictMovement feature 

function findplayer(stringg)
	for _, v in pairs(game.Players:GetPlayers()) do
		if stringg:lower() == (v.Name:lower()):sub(1, #stringg) then
			return v
		elseif stringg:lower() == (v.DisplayName:lower()):sub(1, #stringg) then
			return v
		end
	end
end

-- Home
HomeTab:AddLabel("Whats New?")
HomeTab:AddLabel("Added Home Tab So You Can See Whats New")
HomeTab:AddLabel("Removed Aimbot For Now As It Kicks")
HomeTab:AddLabel("Working On Auto Buy Feature So Get Ready")

-- Buttons
TeleportTab:AddButton({
	Name = "Capture Flag",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.659584, 46.4903984, -78.4000702, -0.289307326, -0.141220957, 0.946761847, -0.17061758, 0.980827451, 0.0941656828, -0.941908121, -0.134291336, -0.307855427)
  	end    
})

TeleportTab:AddButton({
	Name = "Flag Top Building",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.3060913, 115.159943, -80.5879288, -0.256385237, 0.279112905, -0.925398707, 5.22581249e-05, 0.957404077, 0.288751572, 0.966574907, 0.0739833117, -0.245478824)
  	end    
})

TeleportTab:AddButton({
	Name = "Oil 1",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-224.555756, 43.8045692, 193.599976, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Oil 2",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(407.081421, 43.7250023, -384.400055, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Bravo",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.99792, 64.4950027, -350.003296, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Delta",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-349.998596, 64.4953995, -969.00061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Lima",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1171.99695, 64.4950027, 349.997131, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Victor",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350.000305, 64.4950027, 1076.99792, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Alpha",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1008.99792, 64.4950027, 349.993713, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Echo",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(349.999573, 64.4950027, -1013.00085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Foxtrot",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.286743, 64.4950027, -979.291321, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
  	end    
})

TeleportTab:AddButton({
	Name = "Zulu",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-970.094177, 64.4950027, 970.090332, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
  	end    
})

TeleportTab:AddButton({
	Name = "Charlie",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-924.840759, 64.4950027, -924.845337, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
  	end    
})

TeleportTab:AddButton({
	Name = "Omega",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1029.49316, 64.4950027, 1029.49146, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
  	end    
})

TeleportTab:AddButton({
	Name = "Kilo",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1171.99695, 64.4950027, -350.387054, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Tango",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(349.999664, 64.4950027, 1104.9978, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

WeaponsTab:AddButton({
	Name = "M17",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.M17["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M4A1",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.M4A1["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "AK47",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.AK47["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "MP9",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.MP9["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "UMP45",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.UMP45["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M40 Sniper",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["M40 Sniper"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Micro UZI",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Micro UZI"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Suppressed Mac-10",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Suppressed Mac-10"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "SPAS-12 Shotgun",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["SPAS-12 Shotgun"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "SA80 LSW",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["SA80 LSW"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "MK18 Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["MK18 Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "SVD Sniper",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["SVD Sniper"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Remington 870",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Remington 870"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "SA80 Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["SA80 Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "G36C RapidFire",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["G36C RapidFire"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M4A1 ACOG",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["M4A1 ACOG"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Suppressed Sniper",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Suppressed Sniper"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "MP5",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.MP5["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "G3 Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["G3 Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Modded MK18",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Modded MK18"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "GTE M4A1 ACOG",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["GTE M4A1 ACOG"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Desert Eagle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Desert Eagle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "AUG A3",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["AUG A3"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Suppressed IA2",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Suppressed IA2"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M110 Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["M110 Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M27 IAR",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["M27 IAR"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "L119A2 Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["L119A2 Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Glock 19",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Glock 19"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "MCX Spear",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["MCX Spear"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "MP5 Twitter Edition",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["MP5 Twitter Edition"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "M1911",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.M1911["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "PPSH",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.PPSH["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Kar98K",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.Kar98K["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Gewehr 43",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Gewehr 43"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "CS5 Sniper",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["CS5 Sniper"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "P90",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.P90["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "kriss Vector",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["KRISS Vector"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Scar-L Rifle",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Scar-L Rifle"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Explosive Sniper",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Explosive Sniper"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Barrett M82",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Barrett M82"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "FAL Heavy",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["FAL Heavy"]["ACS_Modulo"].Variaveis.Ammo.Value = 999
  	end    
})

WeaponsTab:AddButton({
	Name = "Stinger",
	Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.Stinger.States.AmmoLeft.Value = 999
  	end    
})

TogglesTab:AddButton({
	Name = "Remove Fall Damage",
	Callback = function()
		game:GetService("ReplicatedStorage")["ACS_Engine"].Events.FDMG:Destroy()
  	end    
})

TogglesTab:AddButton({
	Name = "Remove ACS (Might Work)",
	Callback = function()
		game:GetService("StarterPlayer").StarterCharacterScripts["ACS_Client"]:Destroy()
  	end    
})

TogglesTab:AddToggle({
	Name = "ESP (Synapse Only)",
	Callback = function(Value)
		local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wolfyz152007/script/main/Galaxy%20Hub%20ESP.lua"))()
		ESP:Toggle(Value)
  	end    
})

TogglesTab:AddToggle({
	Name = "ESP (Use If Not Synapse)",
	Default = false,
	Callback = function (bool)
		getgenv().boxes = bool
		local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)
for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen and getgenv().boxes then
                    BoxOutline.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen and getgenv().boxes then
                    BoxOutline.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(2000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)
	end    
})

--- if esp breaks remove lines 521-644

--TogglesTab:AddToggle({
--	Name = "Aimbot",
--	Default = false,
--	Callback = function(Value)
 --   loadstring(game:HttpGet("https://raw.githubusercontent.com/Wolfyz152007/script/main/Galaxy%20Hub%20Aimbot.lua", true))()
--	end    
--})

--TogglesTab:AddToggle({
--	Name = "Team Check",
--	Default = false,
--	Callback = function(Value)
--    getgenv().TeamCheck = Value
--	end    
--})

local plyr = game:GetService("Players").LocalPlayer
getgenv().canGoThru = false

PlayerTab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(Value)
              getgenv().canGoThru = Value
       if getgenv().canGoThru then
           noclip()
       end
   function noclip()
       game:GetService("RunService").Stepped:Connect(function()
           if getgenv().canGoThru == true then
               for i,v in pairs(plyr.Character:GetDescendants()) do
                   if v:IsA("BasePart") and v.CanCollide == true then
                       v.CanCollide = false
                   end
               end
           end
       end)
   end
	end    
})

PlayerTab:AddSlider({
	Name = "Walk Speed",
	Min = 16,
	Max = 1000,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

PlayerTab:AddTextbox({
	Name = "Player Teleport",
	Default = "",
	TextDisappear = true,
	Callback = function(txt)
		local plr = findplayer(txt)
        if plr then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
    	end
	end	  
})

SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Destroy()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://linkvertise.com/466373/oil-warfare-tycoon-key/1",
	Callback = function()
		setclipboard("https://linkvertise.com/466373/oil-warfare-tycoon-key/1")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")


-- Speed Run 4

elseif game.PlaceId == 183364845 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Speed Run 4", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

local TeleportTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://6961018885",
    PremiumOnly = false
})

local Section = TeleportTab:AddSection({
    Name = "Teleports"
})

OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

TeleportTab:AddButton({
	Name = "Level 1",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-283.555603, 155.67804, -427.265198, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 2",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1191.49976, 168.437927, -458.156097, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 3",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2031.78979, 167.657928, -471.87616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 4",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2853.1814, 328.538879, -454.916199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 5",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3863.57153, 295.638428, -407.076172, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 6",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4677.88135, 69.4982834, -429.966125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 7",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5637.9624, 299.838409, 566.423584, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 8",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6539.06348, 210.157867, -474.086365, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 9",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7435.64014, 116.288094, -485.876404, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 10",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8371.61426, 93.4881516, -491.846375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 11",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9226.97266, 41.9682503, -488.936371, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 12",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10105.1699, 297.898376, -488.936371, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 13",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10934.9512, 100.82811, -476.796326, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 14",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11823.1377, 79.2381744, -457.94635, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 15",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12633.1963, 218.767899, -440.036285, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 16",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13578.8828, 139.158005, -468.886292, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 17",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3263.33691, 223.016235, -3782.10156, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 18",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4109.34961, 192.966309, -3791.92163, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 19",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4987.41309, 222.096252, -3791.92163, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 20",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2744.01758, 567.625244, 137.484741, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 21",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5826.41309, 250.096252, -3792.92163, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 22",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6752.64648, 312.086029, -3795.88184, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 23",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8194.28613, 226.286224, -3801.4917, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 24",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9105.28711, 335.046234, -3769.70166, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 25",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10307.2617, 251.655975, -3823.5918, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 26",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11524.1387, 484.227417, -3797.65186, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})


TeleportTab:AddButton({
	Name = "Level 27",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12530.0273, 184.58638, -3807.05176, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 28",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13484.9414, 463.927429, -3819.17188, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 29",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(670.457092, 377.226227, -3731.85962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 30",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4262.65039, 686.543518, -2158.93921, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Level 31",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-732.08905, 440.877808, -3187.29395, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Bonus Level",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6409.68799, 91028.0469, 71820.1875, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
  	end    
})

TeleportTab:AddLabel("Star Teleports")

TeleportTab:AddButton({
	Name = "Star Level 1",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-252.942535, 152.580902, -435.05188, 0.956304908, 0, 0.29237169, 0, 1, 0, -0.292371809, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 2",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1166.87317, 164.98967, -465.328033, 0.82903707, 0, 0.559193432, 0, 1, 0, -0.559192777, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 3",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2003.92993, 164.529678, -478.949677, 0.515035868, 0, -0.857164025, 0, 1, 0, 0.857164025, 0, 0.51503)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 4",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2824.05078, 325.370209, -462.7742, -0.681998789, 0, -0.731354237, 0, 1, 0, 0.731354237, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 5",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3833.3999, 293.189911, -411.972656, 0.933581352, 0, -0.358368784, 0, 1, 0, 0.358367652, 0, 0.93358)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 6",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4644.896, 69.8501816, -443.098053, 0.866025805, 0, -0.500000477, 0, 1, 0, 0.500000477, 0, 0.86602)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 7",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5608.57471, 297.510315, 559.035583, 0.866025388, 0, 0.50000006, 0, 1, 0, -0.5, 0, 0.8660)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 8",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6517.13672, 208.110107, -480.401733, -0.94552058, 0, -0.325568974, 0, 1, 0, 0.325568974, 0, -0.945520)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 9",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7412.23145, 113.960251, -493.97757, 0.707106829, 0, 0.70710665, 0, 1, 0, -0.707106769, 0, 0.7)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 10",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8350.06348, 90.8101883, -500.446259, 0.24192223, 0, -0.97029686, 0, 1, 0, 0.97029686, 0, 0.24192223)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 11",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9204.65332, 39.6602859, -497.021729, 0.754709482, 0, -0.656059027, 0, 1, 0, 0.656059027, 0, 0.75470)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 12",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10069.3213, 295.561768, -496.881409, -0.7986359, 0, -0.601815403, 0, 1, 0, 0.601815403, 0, -0.7986359)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 13",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10902.7705, 98.4301987, -484.81012, 0.156434551, 0, 0.987684965, 0, 1, 0, -0.987693131, 0, 0.156434)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 14",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11776.8789, 76.5203094, -465.24054, -0.999999762, 0, -8.7544322e-08, 0, 1, 0, 8.7544322e-08, 0, -0.9)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 15",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12589.0703, 217.019699, -461.547577, -0.669131458, 0, -0.743145883, 0, 1, 0, 0.743145883, 0, -0.66913)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 16",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13544.1123, 135.911514, -479.066986, 0.906307757, 0, -0.422618508, 0, 1, 0, 0.422618419, 0, 0.90630)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 17",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3227.41162, 220.248032, -3789.62939, -0.173648164, 0, -0.984807909, 0, 1, 0, 0.984807909, 0, -0.17364)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 18",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4076.84497, 190.778351, -3800.02783, -0.573577046, 0, 0.819152892, 0, 1, 0, -0.819152892, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 19",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4967.28516, 219.218338, -3799.63184, 0.30901733, 0, 0.95105648, 0, 1, 0, -0.95105809, 0, 0.309)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 20",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2765.4353, 565.610352, 130.872925, 0.224951059, 0, 0.974369824, 0, 1, 0, -0.97437036, 0, 0.2)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 21",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5792.76025, 247.239838, -3799.93799, -0.945518792, 0, 0.325567573, 0, 1, 0, -0.325568914, 0, -0.94551)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 22",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6726.6123, 308.934174, -3804.98193, 0.190808997, 0, 0.981626391, 0, 1, 0, -0.981628358, 0, 0.190808)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 23",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8165.47168, 223.219696, -3810.31592, 0.984808207, 0, -0.173648044, 0, 1, 0, 0.173648044, 0, 0.9848082)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 24",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9071.74121, 332.168457, -3778.21533, 0.241921917, 0, 0.970295608, 0, 1, 0, -0.970295846, 0, 0.241921)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 25",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10267.5869, 248.419571, -3826.55005, -0.587786436, 0, 0.809018731, 0, 1, 0, -0.809018731, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 26",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11486.3516, 481.019867, -3807.70728, 0.374605924, 0, 0.927184165, 0, 1, 0, -0.927184224, 0, 0.3746058)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 27",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12512.1406, 181.450485, -3815.70068, 0.920505106, 0, -0.390731245, 0, 1, 0, 0.390730947, 0, 0.9205048)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 28",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13454.4219, 461.144135, -3827.68628, -0.999999762, 0, -8.7544322e-08, 0, 1, 0, 8.7544322e-08, 0, -0.9)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 29",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692.201416, 374.057861, -3739.80469, -0.156434566, 0, -0.987688601, 0, 1, 0, 0.987688601, 0, -0.15643)
  	end    
})

TeleportTab:AddButton({
	Name = "Star Level 30",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4279.2666, 683.312317, -2177.09326, -0.629320383, 0, -0.777146041, 0, 1, 0, 0.777146041, 0, -0.62932)
  	end    
})

end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://linkvertise.com/466373/oil-warfare-tycoon-key/1",
	Callback = function()
		setclipboard("https://linkvertise.com/466373/oil-warfare-tycoon-key/1")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")



-- Tapping Legends X

elseif game.PlaceId == 8750997647 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - [ðŸ‘¾RETRO!]âš¡ Tapping Legends X", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Locales
local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

-- Values
_G.autoTap = true
_G.Rebirth = true
_G.AutoHatch = true
_G.AutoDrill = true
_G.selectRebirth = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41



-- Functions

function autoTap()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(.0001)
     end
   end

function Rebirth()
	while _G.Rebirth == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(_G.selectRebirth)
        wait(.0001)
     end
    end

function AutoHatch()
	while _G.AutoHatch == true do
		game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.selectEgg,3)
		wait(.0001)
	 end
	end

function AutoDrill()
	while _G.AutoDrill == true do
		game:GetService("ReplicatedStorage").Remotes.DrillInteraction:InvokeServer("Collect")
		wait(.0001)
	 end
	end

-- Tabs
local FarmTab = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

local PetsTab = Window:MakeTab({
	Name = "Pets",
	Icon = "rbxassetid://3610237052",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://3610254425",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

-- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Toggles
FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
        autoTap()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.Rebirth = Value
        Rebirth()
	end  
})

FarmTab:AddToggle({
	Name = "Auto Collect Drill",
	Default = false,
	Callback = function(Value)
		_G.AutoDrill = Value
        AutoDrill()
	end  
})

EggsTab:AddLabel("NOTE: You Must Be Near Egg To Auto Hatch")

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
        _G.AutoHatch = Value
        AutoHatch()
    end 
})

--- Dropdowns

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "",
	Options = Eggs_Table,
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end 
})

FarmTab:AddLabel("Rebirth List Is Put How The Menu Is")
FarmTab:AddLabel("Option 1 Is 1 Rebirth Option 2 Is 5 Rebirths etc")

FarmTab:AddDropdown({
	Name = "Select Rebirth",
	Default = 1,
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41},
	Callback = function(Value)
		_G.selectRebirth = Value
		print(_G.selectRebirth)
	end 
})

-- Buttons

EggsTab:AddLabel("Egg Teleports")

EggsTab:AddButton({
	Name = "Basic Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.4249496, 157.466873, -796.615173, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
  	end    
})

EggsTab:AddButton({
	Name = "Rare Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.5217514, 153.827438, -798.53009, -0.682983756, -0.183021426, -0.707132995, -0.258811951, 0.96592772, -3.00034881e-05, 0.683044851, 0.182993948, -0.707081079)
  	end    
})

EggsTab:AddButton({
	Name = "Forest Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.4991226, 800.156799, -856.973572, -0.965929747, -0.258804798, 0, -0.258804798, 0.965929627, 0, -0, 0, -1)
  	end    
})

EggsTab:AddButton({
	Name = "Desert Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.3366508, 1387.72241, -944.587402, 0.540155172, 0.144708157, 0.829030812, -0.258814931, 0.965926945, 2.74404883e-05, -0.800779283, -0.214580327, 0.559203029)
  	end    
})

EggsTab:AddButton({
	Name = "Winter Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.9496613, 2102.1582, -872.197571, -0.918660164, -0.246159464, 0.308980465, -0.258823186, 0.96592474, 3.05473804e-06, -0.298452616, -0.0799684972, -0.951068401)
  	end    
})

EggsTab:AddButton({
	Name = "Lava Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.0405922, 2643.44116, -768.513672, -0.298472762, -0.079982996, -0.951060891, -0.258867621, 0.965912819, 8.7544322e-06, 0.91864121, 0.246201456, -0.309003711)
  	end    
})

EggsTab:AddButton({
	Name = "Aqua Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(74.495575, 3167.55811, -830.666443, 0.728959799, 0.195359528, -0.656088591, -0.25884366, 0.965919256, 2.27093697e-05, 0.633733034, 0.169807822, 0.754683852)
  	end    
})

EggsTab:AddButton({
	Name = "Sakura Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16.4281521, 3649.7583, -759.665466, 0.0169151425, 0.00450494885, -0.999846816, -0.25883919, 0.965920448, -2.6896596e-05, 0.96577239, 0.25879997, 0.0175047517)
  	end    
})

EggsTab:AddButton({
	Name = "Mine Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.5877514, 4102.35791, -774.512512, 0.0169151425, 0.00450494885, -0.999846816, -0.25883919, 0.965920448, -2.6896596e-05, 0.96577239, 0.25879997, 0.0175047517)
  	end    
})

EggsTab:AddButton({
	Name = "Galaxy Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.3651161, 4539.57764, -808.306946, -0.050557375, -0.0135500357, -0.998629212, -0.258857429, 0.965915561, -1.02818012e-06, 0.964591503, 0.258502543, -0.0523416996)
  	end    
})

EggsTab:AddButton({
	Name = "Heaven Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.421524, 4998.65576, -857.305664, 0.933025956, 0.249973103, -0.258797228, -0.258797228, 0.965931654, -2.9373914e-05, 0.249973103, 0.0670033991, 0.965931654)
  	end    
})

EggsTab:AddButton({
	Name = "Hell Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.8746033, 5460.65576, -854.815186, 0.933025956, 0.249973103, -0.258797228, -0.258797228, 0.965931654, -2.9373914e-05, 0.249973103, 0.0670033991, 0.965931654)
  	end    
})

EggsTab:AddButton({
	Name = "Tech Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.4973602, 6036.85547, -847.59967, 0.951244235, 0.254912198, -0.17364943, -0.258850515, 0.965917408, -3.42372805e-05, 0.167722285, 0.0449818149, 0.984807551)
  	end    
})

EggsTab:AddButton({
	Name = "Steampunk Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-74.5548019, 6476.45557, -854.672852, -0.964606762, -0.258453757, 0.0523079075, -0.25880757, 0.965928912, 1.02310441e-05, -0.0505283661, -0.0135278106, -0.998631358)
  	end    
})

EggsTab:AddButton({
	Name = "Swamp Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.0263472, 6939.30859, -791.689514, -0.050557375, -0.0135500357, -0.998629212, -0.258857429, 0.965915561, -1.02818012e-06, 0.964591503, 0.258502543, -0.0523416996)
  	end    
})

EggsTab:AddButton({
	Name = "Candy Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.0629158, 7658.14209, -748.186462, -0.0337039232, -0.00899220258, -0.999391437, -0.258808285, 0.965928733, 3.70591879e-05, 0.965340495, 0.258652031, -0.0348827839)
  	end    
})

EggsTab:AddButton({
	Name = "Magic Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13.9827633, 8099.34229, -773.508484, -0.0337039232, -0.00899220258, -0.999391437, -0.258808285, 0.965928733, 3.70591879e-05, 0.965340495, 0.258652031, -0.0348827839)
  	end    
})

EggsTab:AddButton({
	Name = "Fantasy Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.8821859, 8622.86035, -745.225464, 0.033703804, 0.00899221003, -0.999391556, -0.258808315, 0.965928674, -3.70442867e-05, 0.965340614, 0.258652061, 0.0348827243)
  	end    
})

EggsTab:AddButton({
	Name = "Toy Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.41559696, 9062.68262, -743.748535, -0.217248201, -0.0582121462, -0.974379063, -0.258857667, 0.965915442, 8.58306885e-06, 0.941167355, 0.252227366, -0.224912047)
  	end    
})

EggsTab:AddButton({
	Name = "Retro Egg",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.5095358, 9453.48242, -752.905701, 1.2755394e-05, 1.66893005e-06, -0.99999994, -0.258770198, 0.965938926, -1.66893005e-06, 0.965938866, 0.258770198, 1.2755394e-05)
  	end    
})


PetsTab:AddButton({
	Name = "Equip Best",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
  	end    
})

MiscTab:AddButton({
	Name = "Tap Popups",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.Settings:FireServer("Settings_TapPopups")
  	end    
})

MiscTab:AddButton({
	Name = "Tap Particles",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.Settings:FireServer("Settings_TapParticles")
  	end    
})

MiscTab:AddButton({
	Name = "Hide All Pets",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.Settings:FireServer("Settings_HideAllPets")
  	end    
})

-- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Init()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")


-- Tapping Simulator

elseif game.PlaceId == 9498006165 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion.Frame:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - [MOUNTS] Tapping Simulator! ðŸ¾", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

--- Values
_G.AutoTap = true
_G.AutoRebirth = true
_G.AutoEgg = true
_G.selectRebirth = 1, 5, 10, 20, 100, 500, 2000, 4500, 8000, 12500, 18000, 24500, 32000, 40500, 50000, 75000, 125000

-- Locales
local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Shops:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

--- Functions

function AutoTap()
    while _G.AutoTap == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        wait(.0001)
     end
   end

function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.selectRebirth)
		wait(.0001)
	 end
	end

function AutoEgg()
	while _G.AutoEgg == true do
		game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer({},SelectEgg,1)
		wait(.0001)
	 end
	end


--- Tabs
local FarmTab = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})
local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

--- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

--- Toggles
FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.AutoTap = Value
        AutoTap()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Egg",
	Default = false,
	Callback = function(Value)
		_G.AutoEgg = Value
        AutoEgg()
	end    
})

--- Dropdowns
EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "", 
	Options = Eggs_Table,
	Callback = function(Value)
		SelectEgg = Value
	end
})

FarmTab:AddDropdown({
	Name = "Select Rebirth",
	Default = 1,
	Options = {1, 5, 10, 20, 100, 500, 2000, 4500, 8000, 12500, 18000, 24500, 32000, 40500, 50000, 75000, 125000},
	Callback = function(Value)
		_G.selectRebirth = Value
		print(_G.selectRebirth)
	end 
})

--- Buttons
PlayerTab:AddButton({
	Name = "Spawn",
	Callback = function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-108.478584, 16.5514297, -481.572235, 0.00527299242, -2.28725892e-08, 0.999986112, 5.8155547e-10, 1, 2.28698394e-08, -0.999986112, 4.60954885e-10, 0.00527299242))
  	end    
})

PlayerTab:AddButton({
	Name = "Forest Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-163.984467, 987.596497, -403.339417, 1, 0, 0, 0, 1, 0, 0, 0, 1))
  	end    
})

PlayerTab:AddButton({
	Name = "Flower Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-179.51564, 1524.63098, -682.498718, -1, 0, -0, -0, 1, -0, -0, 0, -1))
  	end    
})

PlayerTab:AddButton({
	Name = "Swamp Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-264.358887, 2123.06299, -694.661316, -1, 0, -0, -0, 1, -0, -0, 0, -1))
  	end    
})

PlayerTab:AddButton({
	Name = "Snow Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-201.771973, 2944.48169, -470.408752, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Desert Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-166.285156, 4235.38916, -779.153137, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Death Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-276.201263, 5425.62158, -480.287781, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Beach Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-140.345093, 6881.63086, -495.682129, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Mines Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-243.258667, 8376.5166, -483.889771, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Cloud Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-253.303482, 11262.8818, -237.888596, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Coral Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-511.021118, 13812.0322, -543.241821, 0, 0, -1, 0, 1, -0, 1, 0, -0))
  	end    
})

PlayerTab:AddButton({
	Name = "Darkheart Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(-408.69751, 17180.1387, -552.046448, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Flamelands World",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1137.61401, 170.300522, -2859.72534, 0, 0, -1, 0, 1, -0, 1, 0, -0))
  	end    
})

PlayerTab:AddButton({
	Name = "Molten Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1280.59583, 2193.82812, -2885.14429, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Blue Magma Island",
	Callback = function()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1401.12939, 5240.41943, -2953.91968, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Purple Magma Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1319.70276, 7662.0249, -2958.05762, 0, 0, 1, 0, 1, 0, -1, 0, 0))
  	end    
})

PlayerTab:AddButton({
	Name = "Yellow Magma Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1403.54407, 10404.0977, -2903.13843, -0.707131207, 0, 0.707082391, 0, 1.00000012, 0, -0.707082391, 0, -0.707131207))
  	end    
})

PlayerTab:AddButton({
	Name = "Red Magma Island",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(1426.21277, 13353.7031, -2900.90088, -0.707131207, 0, 0.707082391, 0, 1.00000012, 0, -0.707082391, 0, -0.707131207))
  	end    
})

PlayerTab:AddButton({
	Name = "Secret Magma Egg",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer(CFrame.new(3421.11743, 1019.24817, -1348.25745, 0.602126122, -8.83525857e-08, -0.798400998, 5.33856408e-08, 1, -7.04003327e-08, 0.798400998, -2.3326957e-10, 0.602126122))
  	end    
})

--- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Init()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")



-- Rebirth Champions X

elseif game.PlaceId == 8540346411 then

local GuiService = game:GetService("GuiService")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - [ðŸ”¥UPDATE 25!] Rebirth Champions X", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Locales
local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

-- Values
_G.AutoTap = true
_G.AutoChest = true
_G.AutoSpin = true
_G.AutoRebirth = true
_G.AutoBuy1 = true
_G.AutoBuy2 = true
_G.AutoBuy3 = true
_G.AutoBuy4 = true
_G.AutoBuy5 = true
_G.AutoBuy6 = true
_G.AutoBuy7 = true
_G.AutoBuy8 = true
_G.AutoBuy9 = true
_G.AutoHatch = true
_G.AutoCraft = true
_G.WorldBoost = true
_G.AutoPotions = true
_G.AutoDraw = true
_G.selectRebirth = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57
_G.AmountOfPotions = 1, 10, 100

-- Functions
function AutoTap()
	while _G.AutoTap == true do
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
		wait(.0001)
	 end
    end

function AutoChest()
	while _G.AutoChest == true do
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Spawn")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Beach")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Winter")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Nuclear")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hell")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Space")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Galaxy")
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Shadow")
		wait(.0001)
	 end
	end

function AutoSpin()
	while _G.AutoSpin == true do
		game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
		wait(.0001)
	 end
	end

function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.selectRebirth)
		wait(.0001)
	 end
	end

function AutoBuy1()
	while _G.AutoBuy1 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("ClickMultiplier")
		wait(.0001)
	 end
	end

function AutoBuy2()
	while _G.AutoBuy2 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("FreeAutoClicker")
		wait(.0001)
	 end
	end

function AutoBuy3()
	while _G.AutoBuy3 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("RebirthButtons")
		wait(.0001)
	 end
	end

function AutoBuy4()
	while _G.AutoBuy4 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("WalkSpeed")
		wait(.0001)
	 end
	end

function AutoBuy5()
	while _G.AutoBuy5 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("GemsMultiplier")
		wait(.0001)
	 end
	end

function AutoBuy6()
	while _G.AutoBuy6 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("PetEquip")
		wait(.0001)
	 end
	end

function AutoBuy7()
	while _G.AutoBuy7 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("PetStorage")
		wait(.0001)
	 end
	end

function AutoBuy8()
	while _G.AutoBuy8 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("LuckMultiplier")
		wait(.0001)
	 end
	end

function AutoBuy9()
	while _G.AutoBuy9 == true do
		game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("FasterFreeAutoClicker")
		wait(.0001)
	 end
	end

function AutoHatch()
	while _G.AutoHatch == true do
		game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(_G.selectEgg,"Triple")
		wait(.0001)
	 end
	end

function AutoCraft()
	while _G.AutoCraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		wait(.0001)
	 end
	end

function WorldBoost()
	while _G.WorldBoost == true do
		game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer("Shadow")
		wait(.0001)
	 end
	end

function AutoPotions()
	while _G.AutoPotions == true do
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Clicks", _G.AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Gems", _G.AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Luck", _G.AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Rebirths", _G.AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2PetXP", _G.AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2HatchSpeed", _G.AmountOfPotions)
		wait(.0001)
	 end
	end

function AutoDraw()
	while _G.AutoDraw == true do
		game:GetService("ReplicatedStorage").Events.DestructionMachine:FireServer()
		wait(.0001)
	end
end


-- Tabs
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4370345144",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

local UpgradesTab = Window:MakeTab({
	Name = "Upgrades",
	Icon = "rbxassetid://4370346582",
	PremiumOnly = false
})

local TeleportsTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4370344717",
    PremiumOnly = false
})

local EventsTab = Window:MakeTab({
    Name = "Event",
    Icon = "rbxassetid://6961018885",
    PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

-- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Toggles
FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.AutoTap = Value
        AutoTap()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Collect Chest",
	Default = false,
	Callback = function(Value)
		_G.AutoChest = Value
        AutoChest()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Spin",
	Default = false,
	Callback = function(Value)
		_G.AutoSpin = Value
        AutoSpin()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Buy Boosts",
	Default = false,
	Callback = function(Value)
		_G.AutoPotions = Value
        AutoPotions()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Draw (Destruction Machine)",
	Default = false,
	Callback = function(Value)
		_G.AutoDraw = Value
        AutoDraw()
	end    
})

FarmTab:AddButton({
	Name = "Redeem All Codes",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Codes:FireServer("moon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("heaven")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("nuclear")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("thanksfor50k")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("void")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("spooky")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("cave")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter2")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hell")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("50m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("space")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("mars")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("alien")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("galactic")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("60m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("summer")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("150kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("kraken")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("lab")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fantasy")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("neon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("shadow")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("tutel")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("destruction")
	end	
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Click Multiplier",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy1 = Value
        AutoBuy1()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Free Auto Clicker",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy2 = Value
        AutoBuy2()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Rebirth Buttons",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy3 = Value
        AutoBuy3()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy WalkSpeed",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy4 = Value
        AutoBuy4()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Gems Multiplier",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy5 = Value
        AutoBuy5()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy +1 Pet Equip",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy6 = Value
        AutoBuy6()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy +5 Pet Storage",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy7 = Value
        AutoBuy7()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Luck Multiplier",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy8 = Value
        AutoBuy8()
	end    
})

UpgradesTab:AddToggle({
	Name = "Auto Buy Faster Auto Clicker",
	Default = false,
	Callback = function(Value)
		_G.AutoBuy9 = Value
        AutoBuy9()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.AutoHatch = Value
        AutoHatch()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Craft All",
	Default = false,
	Callback = function(Value)
		_G.AutoCraft = Value
        AutoCraft()
	end    
})


--- Dropdowns
FarmTab:AddDropdown({
	Name = "Select Rebirth",
	Default = 1,
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57},
	Callback = function(Value)
		_G.selectRebirth = Value
		print(_G.selectRebirth)
	end 
})

FarmTab:AddDropdown({
	Name = "Amount Of Boosts",
	Default = 1,
	Options = {1, 10, 100},
	Callback = function(Value)
		_G.AmountOfPotions = Value
		print(_G.AmountOfPotions)
	end 
})


EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic",
	Options = Eggs_Table,
	Callback = function(Value)
		_G.selectEgg = Value
		print(_G.selectEgg)
	end 
})



-- Buttons
FarmTab:AddButton({
	Name = "Best World Boost",
	Callback = function()
		WorldBoost()
  	end    
})

TeleportsTab:AddButton({
	Name = "Spawn",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.6955566, 6.05586386, 66.2401276, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Forest",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-386.710175, 30.5047722, 175.198593, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Beach",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-517.284119, 37.3794289, 458.350983, -0.881527901, 0, 0.472132653, 0, 1, 0, -0.472132653, 0, -0.881527901)
  	end    
})

TeleportsTab:AddButton({
	Name = "Atlantis",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(40.450161, 9.20697689, 675.801208, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
  	end    
})

TeleportsTab:AddButton({
	Name = "Desert",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468.551819, 7.06227589, 703.342041, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
  	end    
})

TeleportsTab:AddButton({
	Name = "Winter",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1035.05212, -45.3936691, 165.007645, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Cube",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(324.096741, -52.365593, 133.847549, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Moon",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.538025, 36.0676422, -184.185822, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Cyber",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.542877, 37.9760704, -476.731384, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Magic",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.0092049, 37.9760704, -478.55072, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Heaven",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.538025, 36.067585, -757.216919, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Nuclear",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.473572, 49.873333, -502.209778, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Void",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.473572, 49.873333, -777.097168, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Spooky",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-74.9238892, 32.9656105, -757.217468, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Cave",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(420.230927, 11.2841702, -334.455658, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})

TeleportsTab:AddButton({
	Name = "Steampunk",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.473572, 49.873333, -1200.92871, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
  	end    
})

TeleportsTab:AddButton({
	Name = "Hell",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(592.80719, 49.0665855, -736.647461, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Space",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1433.22717, 92.7432022, -5297.1665, 0.992760003, 0, 0.120114915, 0, 1, 0, -0.120114915, 0, 0.992760003)
  	end    
})

TeleportsTab:AddButton({
	Name = "Mars",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1750.026, 30.4998531, -1693.30334, 0.736234426, -0, -0.67672658, 0, 1, -0, 0.67672658, 0, 0.736234426)
  	end    
})

TeleportsTab:AddButton({
	Name = "Alien",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.68576, 36.9672928, -1710.11462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Galaxy Forest",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3223.46021, 30.1497459, 1408.10754, 0.931046844, 0, 0.364899606, 0, 1, 0, -0.364899606, 0, 0.931046844)
  	end    
})

TeleportsTab:AddButton({
	Name = "Space Lab",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3227.14917, 29.7762318, -3419.29248, 0.78161788, -0, -0.623757601, 0, 1, -0, 0.623757601, 0, 0.78161788)
  	end    
})

TeleportsTab:AddButton({
	Name = "Fantasy",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-698.481323, 32.115036, -3250.41992, 0.997965276, 0, 0.0637595132, 0, 1, 0, -0.0637595132, 0, 0.997965276)
  	end    
})

TeleportsTab:AddButton({
	Name = "Neon",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1065.35291, 25.8553829, -2228.89258, 1, 3.20716858e-08, 2.31451555e-12, -3.20716858e-08, 1, -6.63378463e-09, -2.31472827e-12, 6.63378463e-09, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Shadow",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-887.552185, 43.3238297, -250.978638, 1, 5.97858545e-08, -1.4819969e-13, -5.97858545e-08, 1, -6.55057804e-08, 1.44283375e-13, 6.55057804e-08, 1)
  	end    
})

TeleportsTab:AddButton({
	Name = "Destruction",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1028.2583, 25.6923981, 397.496094, 1, 9.84407436e-08, -2.77082177e-13, -9.84407436e-08, 1, -1.97616536e-08, 2.7513682e-13, 1.97616536e-08, 1)
  	end    
})


-- Labels
HomeTab:AddLabel("Changelog: Whats New?")
HomeTab:AddLabel("Added The New World Teleport")
HomeTab:AddLabel("Removed Turtel Teleport")
HomeTab:AddLabel("Changed The Best World Boost Again")
HomeTab:AddLabel("Expect More Soon Galaxy Hub Winning")



-- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Init()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://link-hub.net/466373/roblox-galaxy-hub-key",
	Callback = function()
		setclipboard("https://link-hub.net/466373/roblox-galaxy-hub-key")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")





-- Mining Simulator 2

elseif game.PlaceId == 9551640993 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().Key2 = "6958152512841624"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Mining Simulator 2", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Locales
local Mod = require(game:GetService("ReplicatedStorage").SharedModules.ChunkUtil)
local Player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local LoadModules = require(game.ReplicatedStorage.LoadModule);

local Eggs_Table = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

local SellAreas = {}
for i,v in pairs(game:GetService("Workspace").Teleports:GetChildren()) do
    if string.find(v.Name, "Sell") then
        table.insert(SellAreas, v.Name)
    end
end

local Crates_Table = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Crates:GetChildren()) do
    table.insert(Crates_Table, v.Name)
end

-- Values
getgenv().v2 = require(game:GetService("ReplicatedStorage").LoadModule)
getgenv().u6 = v2("ChunkUtil")
getgenv().v3 = v2("Constants")
getgenv().v4 = v3.CellSize * v3.ChunkSize
getgenv().BloxAura = true
getgenv().AutoDeposit = true
getgenv().AutoHatch = true
getgenv().AutoHatch2 = true
getgenv().AutoHatch3 = true
getgenv().AutoHatch4 = true
getgenv().ClaimGroup = true
getgenv().OpenCrate = true
getgenv().AutoRebirth = true

-- Functions
local function SellBlocks()
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer("SurfaceSell")
 end

function breakblock(pos)
   local args = {
       [1] = pos
   }

   game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(unpack(args))
end

function getPartBelow()
   local Character = game.Players.LocalPlayer.Character
   local Foot = Character.RightFoot
   local RayOrigin = Foot.Position
   local RayDirection = Vector3.new(0, -1, 0)

   local Params = RaycastParams.new()
   Params.FilterType = Enum.RaycastFilterType.Blacklist
   Params.FilterDescendantsInstances = { Character }

   local Result = workspace:Raycast(RayOrigin, RayDirection, Params)

   if Result then
       local RayInstance = Result.Instance
       print("Instance hit: " .. tostring(RayInstance))
       return RayInstance
   end

   return nil
end

function AutoDeposit()
while getgenv().AutoDeposit == true do
    game:GetService("ReplicatedStorage").Events.DepositShards:FireServer()
    wait(.0001)
end
 end

function AutoHatch()
    while getgenv().AutoHatch == true do
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(SelectedEgg,false,false)
        wait(.0001)
    end
     end

function AutoHatch2()
    while getgenv().AutoHatch2 == true do
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(SelectedEgg,false,true)
        wait(.0001)
    end
     end

function AutoHatch3()
    while getgenv().AutoHatch3 == true do
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(SelectedEgg,true,false)
        wait(.0001)
    end
     end

function AutoHatch4()
    while getgenv().AutoHatch4 == true do
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(SelectedEgg,true,true)
        wait(.0001)
    end
     end

function ClaimGroup()
    while getgenv().ClaimGroup == true do
        game:GetService("ReplicatedStorage").Functions.ClaimGroupBenefits:InvokeServer()
        wait(.0001)
    end
     end

function OpenCrate()
    while getgenv().OpenCrate == true do
        game:GetService("ReplicatedStorage").Events.OpenCrate:FireServer(SelectedCrate)
        wait(.0001)
     end
    end

function AutoRebirth()
    while getgenv().AutoRebirth == true do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
        wait(.0001)
     end
    end

-- Tabs
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4370345144",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

local TeleportsTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4370344717",
    PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Miscellaneous",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

-- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Home Page
HomeTab:AddLabel("Last Updated: 20/08/22")
HomeTab:AddLabel("Whats New?")
HomeTab:AddLabel("Made The Script A Bit Better Might Not Be Noticeable")
HomeTab:AddLabel("Changed The Name For The Button To Prime Benefits")
HomeTab:AddLabel("Added The New Layer To Teleports")
HomeTab:AddLabel("Redeem All Codes Tomorrow")
HomeTab:AddLabel("Always Check Back Here To See Whats New")

-- Toggles
FarmTab:AddToggle({
	Name = "Auto Mine Underneath",
	Default = false,
	Callback = function(bool)
        spawn(function()
            shared.toggle = bool
            if shared.toggle then
                getgenv().AutoMine = true
            else
                getgenv().AutoMine = false
            end
     
            while true do
                if getgenv().AutoMine then
                    local closest = getPartBelow()
     
                    if closest ~= nil then
                        local Pos = closest.Position
     
                        local NewPos = Mod.worldToCell(Pos)
     
                        task.spawn(function()
                            breakblock(NewPos)
                        end)
                    end
                end
                task.wait()
            end
        end)
     end  
})

FarmTab:AddToggle({
	Name = "Block Aura",
	Default = false,
	Callback = function(Value)
        getgenv().BloxAura = Value
        spawn(function()
            while task.wait(.7) do
                if BloxAura then
                    pcall(function()
        
                        for i,v in pairs(game:GetService("Workspace").Chunks:GetChildren()) do
                            for i,v in pairs(v:GetChildren()) do
                            if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                            local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
                                CID2 = a
                                local convert2 = u6.worldToCell(a - Vector3.new(0,-1,0))
                        
                                game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(convert2)
                            task.wait(0.001)
                        end
                            end
                        end
                        
                        -- local convert = u6.worldToChunkId(CID2 - Vector3.new(0,1,0))
        
        -- for i,v in pairs(game:GetService("Workspace").Chunks[convert]:GetChildren()) do
        --     if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        --     local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
        --     CID = a
        --     local nande = u6.worldToCell(CID)
        --     -- print(nande)
        --     game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(nande)
        --     task.wait(0.1)
        --     end
        -- end
                    end)
                end
            end
        end)
        
        -- spawn(function()
        --     while task.wait(.7) do
        --         if BloxAura then
        --             pcall(function()
        
        -- getgenv().b = nil
        -- getgenv().CID = 0
        -- -- / math.random(2,80)
        -- for i,v in pairs(game:GetService("Workspace").Chunks:GetChildren()) do
        --     for i,v in pairs(v:GetChildren()) do
        --     if v3.MaxSelectionDistance > (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        --     local a = v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position * math.random(0.1, 0.001) 
        --         -- CID = u6.worldToCell(a)
        --         CID2 = u6.worldToChunkId(a)
        --         -- print(CID)
        --         print(CID2)
        --         -- game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(CID)
        --     -- end
        --     task.wait(0.001)
        -- end
        --     end
        -- end
        -- wait(getgenv().Chunk_Refresh)
        -- -- local v6, v7 = v3.CellSize, v3.ChunkSize
        --             end)
        --         end
        --     end
        -- end)
        
        -- local ohString1 = "Tool"
        -- local ohString2 = "Firebane"
        
        -- game:GetService("ReplicatedStorage").Events.PurchaseRebirthShopItem:FireServer(ohString1, ohString2)
	end    
})

FarmTab:AddToggle({
	Name = "Auto Deposit Fireshard",
	Default = false,
	Callback = function(Value)
        getgenv().AutoDeposit = Value
        AutoDeposit()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Sell",
	Default = false,
	Callback = function(Value)
		Autosell = Value
        spawn(function()
            while task.wait() do
                if Autosell then
                    pcall(function()
                        local v8 = require(game.ReplicatedStorage.LoadModule);
                        local v19 = v8("GetBackpackStatus");
                        local v59 = v19();
                        if v59.Full then
                            print("sold")
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports[Select_Sell_Location].CFrame
                            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(Select_Sell_Location)
                        end
        
                        -- local a = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HUD.Left.Backpack.Label.Text
                        -- if string.match(a, "(.+) / .+") == string.match(a, ".+ / (.+)") then
                        --     print("sold")
                        --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports[Select_Sell_Location].CFrame
                        --     -- game:GetService("ReplicatedStorage").Events.Teleport:FireServer(Select_Sell_Location)
                        -- else
                        -- end
                    end)
                end
            end
        end)
	end    
})

FarmTab:AddToggle({
	Name = "Auto Claim Group Rewards",
	Default = false,
	Callback = function(Value)
        getgenv().AutoRebirth = Value
		AutoRebirth()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
        getgenv().ClaimGroup = Value
		ClaimGroup()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch [Normal]",
	Default = false,
	Callback = function(Value)
        getgenv().AutoHatch = Value
		AutoHatch()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch 2 Eggs [Eggs Gem Enchant]",
	Default = false,
	Callback = function(Value)
        getgenv().AutoHatch2 = Value
		AutoHatch2()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch 3 Eggs [Triple Eggs Gamepass]",
	Default = false,
	Callback = function(Value)
        getgenv().AutoHatch3 = Value
		AutoHatch3()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch 4 Eggs [Gamepass And Gem Enchant]",
	Default = false,
	Callback = function(Value)
        getgenv().AutoHatch4 = Value
		AutoHatch4()
	end    
})

-- Dropdowns
FarmTab:AddDropdown({
	Name = "Sell Location",
	Default = "",
	Options = SellAreas,
	Callback = function(Value)
		Select_Sell_Location = Value
	end    
})

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "",
	Options = Eggs_Table,
	Callback = function(Value)
		SelectedEgg = Value
	end    
})

-- Buttons
local Section = TeleportsTab:AddSection({
	Name = "Overworld Teleports"
})

TeleportsTab:AddButton({
	Name = "Surface (Works Anywhere)",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Surface")
  	end    
})

TeleportsTab:AddButton({
	Name = "Hidden Treasure",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Hidden Treasure")
  	end    
})

TeleportsTab:AddButton({
	Name = "Frozen Depths",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Frozen Depths")
  	end    
})

TeleportsTab:AddButton({
	Name = "Gloomy Basin",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Gloomy Basin")
  	end    
})

TeleportsTab:AddButton({
	Name = "Molten Core",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Molten Core")
  	end    
})

TeleportsTab:AddButton({
	Name = "The Underworld",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("The Underworld")
  	end    
})

TeleportsTab:AddButton({
	Name = "Crystal Cavern",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Crystal Cavern")
  	end    
})

local Section = TeleportsTab:AddSection({
	Name = "Cyber Teleports"
})

TeleportsTab:AddButton({
	Name = "Cyber Galaxy Surface",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Cyber Galaxy")
  	end    
})

TeleportsTab:AddButton({
	Name = "Cyber Sewers",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Cyber Sewers")
  	end    
})

TeleportsTab:AddButton({
	Name = "Cosmic Abyss",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Cosmic Abyss")
  	end    
})

TeleportsTab:AddButton({
	Name = "Cyber Core",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Cyber Core")
  	end    
})

TeleportsTab:AddButton({
	Name = "Glitched Chasm",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Glitched Chasm")
  	end    
})

local Section = TeleportsTab:AddSection({
	Name = "Atlantis Teleports"
})

TeleportsTab:AddButton({
	Name = "Atlantis Surface",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Atlantis")
  	end    
})

TeleportsTab:AddButton({
	Name = "Rocky Depths",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Rocky Depths")
  	end    
})

TeleportsTab:AddButton({
	Name = "Sea Shell Shallows",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Sea Shell Shallows")
  	end    
})

TeleportsTab:AddButton({
	Name = "City Of Gold",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("City of Gold")
  	end    
})

TeleportsTab:AddButton({
	Name = "Dark Coral Depths",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Dark Coral Depths")
  	end    
})

-- Misc So Random Stuff
local Section = MiscTab:AddSection({
	Name = "GUI [To Close GUI Press Button Again]"
})

MiscTab:AddButton({
	Name = "The Forge",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Forge.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Forge.Visible
  	end    
})

MiscTab:AddButton({
	Name = "Gem Enchant",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.GemEnchant.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.GemEnchant.Visible
  	end    
})

MiscTab:AddButton({
	Name = "Gem Genie",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Quests.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Quests.Visible
  	end    
})

MiscTab:AddButton({
	Name = "Prime Benefits",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PrimeBenefits.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PrimeBenefits.Visible
  	end    
})

MiscTab:AddButton({
	Name = "Factory",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Factory.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Factory.Visible
  	end    
})

MiscTab:AddButton({
	Name = "Challenges",
	Callback = function()
        game:GetService("Players").kenna12567.PlayerGui.ScreenGui.TwoWeekChallenges.Visible = not game:GetService("Players").kenna12567.PlayerGui.ScreenGui.TwoWeekChallenges.Visible
  	end    
})

local Section = MiscTab:AddSection({
	Name = "Crates"
})

MiscTab:AddDropdown({
	Name = "Select Crate",
	Default = "",
	Options = Crates_Table,
	Callback = function(Value)
		SelectedCrate = Value
	end    
})

MiscTab:AddButton({
	Name = "Remove Crate Animation",
	Callback = function()
        game:GetService("ReplicatedStorage").ClientModules.Other.OpenCrate.CrateOpen:Destroy()
  	end    
})

MiscTab:AddToggle({
	Name = "Auto Open Crate",
	Default = false,
	Callback = function(Value)
		getgenv().OpenCrate = Value
        OpenCrate()
	end    
})

-- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

SettingsTab:AddButton({
	Name = "Kick",
	Callback = function()
		game.Players.LocalPlayer:Kick("What Did You Expect? It Does What It Says.")
	end    
})

-- Orion Init
OrionLib:Init()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
        if getgenv().KeyImput == getgenv().Key2 then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://link-hub.net/466373/roblox-galaxy-hub-key",
	Callback = function()
		setclipboard("https://link-hub.net/466373/roblox-galaxy-hub-key")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")



-- Firework Simulator
elseif game.PlaceId == 8962384769 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion.Frame:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Firework Simulator", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Values
getgenv()AutoHatch = true

-- Locales
local plr = game.Players.LocalPlayer
local customModules = {}

customModules.bypassAntiCheat = function()
    plr.Character.Humanoid.WalkSpeed = 100
    local old; old = hookmetamethod(game, "__namecall", function(self, ...) 
        if self == plr and getnamecallmethod() == "Kick" and not checkcaller() then 
            plr.Character.Humanoid.WalkSpeed = 16
            return task.wait(99e99)
        end
        return old(self, ...)
    end)
end

coroutine.wrap(function() 
    pcall(function() 
        if getconnections then 
            repeat
                for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
                    v:Disable()
                end
                task.wait(5)
            until false == true
        end
    end)
end)()

customModules.bypassAntiCheat()

customModules.getZones = function()
    local worlds = {}
    for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Worlds)) do
        worlds[v.Order] = i
    end
    
    for i = 1,#worlds do
        local test = #worlds - i + 1
        worlds[i], worlds[test] = worlds[test], worlds[i]
    end
    return worlds
end

customModules.loadAllZones = function()
    for i,v in next, game:GetService("ReplicatedStorage").Chunks:children() do
        if v:FindFirstChild("Items") then
            v.Items.Parent = workspace.GameObjects.Areas[v.Name]
        end
    end
end

customModules.getZonesItems = function(zone)
    if not workspace.GameObjects.Areas[zone] then return warn("Invalid Zone") end
    if not workspace.GameObjects.Areas[zone].Items then return warn("No Items Loaded") end
    local items = {"All"}
    for i,v in pairs(game.Workspace.GameObjects.Areas[zone].Items:GetChildren()) do
        local name = v.Name:gsub('%d+','');
        if not table.find(items, name) then
            table.insert(items, name);
        end
    end
    print("here")
    return items
end

local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").GameObjects.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

customModules.getPetsFromEgg = function(egg)
    local pets = {}
    for i,v in next, require(game:GetService("ReplicatedStorage").Game.Eggs)[egg].Pets do
        table.insert(pets,i)
    end
    return pets
end

customModules.getHatsFromZone = function(zone)
    local hats = {}
    print(zone)
    for i,v in next, require(game:GetService("ReplicatedStorage").Game.Hats)[zone] do
        table.insert(hats,v.RealName)
    end
    return hats
end

customModules.getNearestItem = function(zone,select)
    if select == "All" or select == nil then select = "" end
    if not workspace.GameObjects.Areas[zone] then return end
    local item
    local nearestDist = math.huge;
    for i,v in next, workspace.GameObjects.Areas:FindFirstChild(zone).Items:GetChildren() do
        if not v.PrimaryPart then continue end
        local dist = (v.PrimaryPart.Position - plr.Character.HumanoidRootPart.Position).magnitude
        if dist < nearestDist and v.Name:match(select) then
            item = v; nearestDist = dist;
        end
    end
    return item
end

local zone
local itemSelected
local autoFarmBool
local network = require(game.ReplicatedStorage.Modules.Network)

customModules.autoFarm = function()
    task.spawn(function()
        customModules.bypassAntiCheat()
        repeat task.wait()
            if zone == nil then continue end
            if #workspace.GameObjects.Areas[zone].Items:GetChildren() == 0 then continue end
            local nearestItem = customModules.getNearestItem(zone,itemSelected)
            if nearestItem then
                plr.Character:PivotTo(nearestItem:GetPivot())
                network:FireServer("Hit",nearestItem)
            end
        until not autoFarmBool
    end)
end

local autoOrbsBool

customModules.autoOrbs = function()
    game.Workspace.Orbs.ChildAdded:connect(function(C)
        if autoOrbsBool then
            network:FireServer("CollectOrb", C.Name);
            C:Destroy()
        end
    end)
    task.spawn(function()
        while autoOrbsBool and task.wait() do
            for i,v in pairs(game.Workspace.Orbs:GetChildren()) do
                network:FireServer("CollectOrb", v.Name);
                v:Destroy();
            end
        end
    end)
end

function AutoHatch()
while getgenv().AutoHatch == true do
    game:GetService("ReplicatedStorage").Communication.Functions['']:InvokeServer(SelectedEgg,3,{})
    wait(.0001)
end
 end

local deleteHatList = {}
local autoHatBool

customModules.autoHat = function()
    plr.PlayerGui.GameUI.Menus.Hats.MainList.ChildAdded:Connect(function(child)
        if autoHatBool then
            if deleteHatList[child.Frame.HatName.Text] then
                network:InvokeServer("DeleteHat",child.Name)
                child:Destroy()
            end
        end
    end)
end

-- Functions

-- Values

-- Tabs
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4370345144",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 100,
	Default = 30,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Increase Walkspeed",
	Callback = function(value)
        plr.Character.Humanoid.WalkSpeed = value
	end    
})

PlayerTab:AddButton({
	Name = "Open/Close Golden Pets",
	Callback = function()
        plr.PlayerGui.GameUI.Menus.Golden.Visible = not plr.PlayerGui.GameUI.Menus.Golden.Visible
  	end    
})

PlayerTab:AddButton({
	Name = "Open/Close Diamond Pets",
	Callback = function()
        plr.PlayerGui.GameUI.Menus.Diamond.Visible = not plr.PlayerGui.GameUI.Menus.Diamond.Visible
  	end    
})

PlayerTab:AddButton({
	Name = "Open/Close Rainbow Pets",
	Callback = function()
        plr.PlayerGui.GameUI.Menus.Rainbow.Visible = not plr.PlayerGui.GameUI.Menus.Rainbow.Visible
  	end    
})

PlayerTab:AddButton({
	Name = "Open/Close Shiny Hats",
	Callback = function()
        plr.PlayerGui.GameUI.Menus.Shiny.Visible = not plr.PlayerGui.GameUI.Menus.Shiny.Visible
  	end    
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

-- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Home Tab
HomeTab:AddLabel("Whats New?")
HomeTab:AddLabel("Nothing Yet As Only Just Released")
HomeTab:AddLabel("Auto Eggs Will Be Added Soon")

-- Buttons

-- Toggles
FarmTab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(state)
        autoFarmBool = state
        customModules.autoFarm()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Orbs",
	Default = false,
	Callback = function(state)
        autoOrbsBool = state
        customModules.autoOrbs()
	end    
})

-- Dropdowns
local itemDropdown
local hatDropdown


FarmTab:AddDropdown({
	Name = "Select Zone",
	Default = "",
	Options = customModules.getZones(),
	Callback = function(item)
		customModules.loadAllZones()
        zone = item
        itemDropdown:Refresh(customModules.getZonesItems(item),true)
        hatDropdown:Refresh(customModules.getHatsFromZone(item),true)
        task.wait(0.25)
        itemDropdown:AddItems(customModules.getZonesItems(item))
        hatDropdown:AddItems(customModules.getHatsFromZone(item))
	end    
})

itemDropdown = FarmTab:AddDropdown({
	Name = "Item Dropdown",
	Default = "",
	Options = {"Select an area to farm"},
	Callback = function(item)
        itemSelected = item
	end    
})

hatDropdown = FarmTab:AddDropdown({
	Name = "Hats Dropdown",
	Default = "",
	Options = {"Select an area to farm"},
	Callback = function(item)
        deleteHatList[tostring(item)] = true
        printtable(deleteHatList)
        hatDropdown:RemoveItems({item})
	end    
})

FarmTab:AddToggle({
	Name = "Auto Delete Hats",
	Default = false,
	Callback = function(state)
        autoHatBool = state
        customModules.autoHat()
	end    
})

OrionLib:Init()
end


function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://link-hub.net/466373/roblox-galaxy-hub-key",
	Callback = function()
		setclipboard("https://link-hub.net/466373/roblox-galaxy-hub-key")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")



-- YoYo Simulator
elseif game.PlaceId == 7606302010 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion.Frame:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - YoYo Simulator", HidePremium = true, SaveConfig = false, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Locales
local bought = 0
local function rebirth()
    bought = 0
end
local onn = false
local h = 1
local fe = false
local ge = false
local ho = false
local cand = false
local des = false
local mag = false
local atl = false
local unch = true

local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").MapFunctions.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

-- Values
getgenv().AutoYoYo = true
getgenv().AutoSell = true
getgenv().AutoBuyYoYo = true
getgenv().AutoBuyBackpack = true
getgenv().AutoBuyRebirth = true
getgenv().AutoHatch = true
getgenv().AutoClaimChests = true
getgenv().AutoClaimQuests = true

-- Functions
function AutoYoYo()
    while getgenv().AutoYoYo == true do
        local args = {
            [1] = "Gold Yo-Yo"
        }     
        game:GetService("ReplicatedStorage").GameEvents.ToolEvents.ToolEvent:FireServer(unpack(args))
        wait(.0001)
     end
end

function AutoSell()
    while getgenv().AutoSell == true do
        firetouchinterest(game:GetService("Workspace").MapFunctions.Sell.Home.HitBox,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
        wait(.0001)
        firetouchinterest(game:GetService("Workspace").MapFunctions.Sell.Home.HitBox,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
        wait(.0001)
     end
end

function AutoBuyYoYo()
    while getgenv().AutoBuyYoYo == true do
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        game:GetService("ReplicatedStorage").GameEvents.ToolEvents.BuyAllTools:FireServer(unpack(args))
        wait(.0001)
    end
end

function AutoBuyBackpack()
    while getgenv().AutoBuyBackpack == true do
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        game:GetService("ReplicatedStorage").GameEvents.BackpackEvents.BuyAllBackpacks:FireServer(unpack(args))
        wait(.0001)
    end
end

function AutoHatch()
    while getgenv().AutoHatch == true do
        game:GetService("ReplicatedStorage").GameEvents.EggEvent:FireServer(Selected_Egg,"SingleEgg",game:GetService("Players").LocalPlayer)
        wait(.0001)
     end
end

function AutoClaimChests()
    while getgenv().AutoClaimChests == true do
        local args = {
    [1] = workspace.MapFunctions.Chests:FindFirstChild("Candy Reward"),
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.DailyReward:FireServer(unpack(args))
local args = {
    [1] = workspace.MapFunctions.Chests:FindFirstChild("Magma Reward"),
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.DailyReward:FireServer(unpack(args))

local args = {
    [1] = workspace.MapFunctions.Chests:FindFirstChild("Atlantis Reward"),
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.DailyReward:FireServer(unpack(args))

local args = {
    [1] = workspace.MapFunctions.Chests:FindFirstChild("Daily Reward"),
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.DailyReward:FireServer(unpack(args))
wait(10)
end
end

function AutoQuest()
    while getgenv().AutoClaimQuests == true do
        local args = {
    [1] = "Sell Storage",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Swing YoYo",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Hatch Uncommon Pets",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Hatch Rare Pets",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Hatch Eggs",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Pick Up",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
local args = {
    [1] = "Hatch Common Pets",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RewardEvents.Quest:FireServer(unpack(args))
wait(.0001)
end
end


-- Notifications

-- Tabs
local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4370345144",
    PremiumOnly = false
})

local FarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4400702457",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

-- Home Page
-- Home Page
HomeTab:AddLabel("Last Updated: 22/08/22")
HomeTab:AddLabel("Whats New?")
HomeTab:AddLabel("Everything Come Check Back Soon")

-- Toggles
FarmTab:AddToggle({
	Name = "Auto YoYo",
	Default = false,
	Callback = function(Value)
		getgenv().AutoYoYo = Value
        AutoYoYo()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Sell",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSell = Value
        AutoSell()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Claim Chest Rewards",
	Default = false,
	Callback = function(Value)
		getgenv().AutoClaimChests = Value
        AutoClaimChests()
	end    
})

local ch = "Unchosen"

FarmTab:AddToggle({
	Name = "Auto Collect Gems",
	Default = false,
	Callback = function(bool)
        local TS = game:GetService("TweenService")
        local char = game:GetService("Players").LocalPlayer.Character
        local Info = TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
        local Info2 = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
        local Coords2 = CFrame.new(-11.231704711914062, 30.598020553588867, -107.35179901123047)
        local Goto2 = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords2})
        eik = bool
        while eik do
        wait(0.01)
        if onn == false then
        if ho == true then
            if cand == true then
                if des == true then
                    if mag == true then
                        if atl == true then
        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
        local b = a[math.random(1, #a)]
        if b.HitBox then
        local Coords = b.HitBox.CFrame
        
        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
        wait(0.05)
        if Coords.X <= 2300 then
        Goto:Play()
        wait(0.9)
        else
            print("not in range")
        end
        else
        print("Position Value not found!")
        end
        else
        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
        local b = a[math.random(1, #a)]
        if b.HitBox then
        local Coords = b.HitBox.CFrame
        
        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
        wait(0.05)
        if Coords.X <= 1800 then
        Goto:Play()
        wait(0.9)
        else
            print("not in range")
        end
        else
        print("Position Value not found!")
        end
        end
        else
        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
        local b = a[math.random(1, #a)]
        if b.HitBox then
        local Coords = b.HitBox.CFrame
        
        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
        wait(0.05)
        if Coords.X <= 1280 then
        Goto:Play()
        wait(0.9)
        else
            print("not in range")
        end
        else
        print("Position Value not found!")
        end
        end
        else
        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
        local b = a[math.random(1, #a)]
        if b.HitBox then
        local Coords = b.HitBox.CFrame
        
        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
        wait(0.05)
        if Coords.X <= 800 then
        Goto:Play()
        wait(0.9)
        else
            print("not in range")
        end
        else
        print("Position Value not found!")
        end
        end
        else
            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
            local b = a[math.random(1, #a)]
            if b.HitBox then
            local Coords = b.HitBox.CFrame
            
            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
            wait(0.05)
            if Coords.X <= 400 then
            Goto:Play()
            wait(0.9)
            else
                print("not in range")
            end
            else
            print("Position Value not found!")
            end
        end
        end
        if ho == false then
            if cand == true then
                if des == true then
                    if mag == true then
                        if atl == true then
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 2300 then
                                if Coords.X >= 400 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                        end
                        else
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 1800 then
                                if Coords.X >= 400 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                            end
                    end
                    else
                        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                        local b = a[math.random(1, #a)]
                        if b.HitBox then
                        local Coords = b.HitBox.CFrame
                        
                        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                        wait(0.05)
                        if Coords.X <= 1380 then
                            if Coords.X >= 400 then
                        Goto:Play()
                        wait(0.9)
                            else
                                print("not in range")
                            end
                        else
                            print("not in range")
                        end
                        else
                        print("Position Value not found!")               
                        end
                end
                else
                    local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                    local b = a[math.random(1, #a)]
                    if b.HitBox then
                    local Coords = b.HitBox.CFrame
                    
                    local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                    wait(0.05)
                    if Coords.X <= 800 then
                        if Coords.X >= 400 then
                    Goto:Play()
                    wait(0.9)
                        else
                            print("not in range")
                        end
                    else
                        print("not in range")
                    end
                    else
                    print("Position Value not found!")               
                end
            end
        end
        end
        
        if ho == false then
            if cand == false then
                if des == true then
                    if mag == true then
                        if atl == true then
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 2300 then
                                if Coords.X >= 800 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                        end
                        else
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 1800 then
                                if Coords.X >= 800 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                            end
                    end
                    else
                        local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                        local b = a[math.random(1, #a)]
                        if b.HitBox then
                        local Coords = b.HitBox.CFrame
                        
                        local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                        wait(0.05)
                        if Coords.X <= 1380 then
                            if Coords.X >= 800 then
                        Goto:Play()
                        wait(0.9)
                            else
                                print("not in range")
                            end
                        else
                            print("not in range")
                        end
                        else
                        print("Position Value not found!")               
                        end
                end
        end
        end
        end
        if ho == false then
            if cand == false then
                if des == false then
                    if mag == true then
                        if atl == true then
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 2300 then
                                if Coords.X >= 1380 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                        end
                        else
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 1800 then
                                if Coords.X >= 1380 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                            end
                    end
                end
                end
        end
        end
        if ho == false then
            if cand == false then
                if des == false then
                    if mag == false then
                        if atl == true then
                            local a = game.Workspace.MapFunctions.Spawns.Storage:GetChildren()
                            local b = a[math.random(1, #a)]
                            if b.HitBox then
                            local Coords = b.HitBox.CFrame
                            
                            local Goto = TS:Create(char.HumanoidRootPart, Info, {CFrame = Coords})
                            wait(0.05)
                            if Coords.X <= 2300 then
                                if Coords.X >= 1800 then
                            Goto:Play()
                            wait(0.9)
                                else
                                    print("not in range")
                                end
                            else
                                print("not in range")
                            end
                            else
                            print("Position Value not found!")               
                        end
                    end
                end
                end
        end
        end
        
        
        if ho == false then
            if mag == false then
                if cand == false then
                    if des == false then
                        if atl == false then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Unable to start Auto Gemming!";
            Text = "Please choose the location you want to start the Auto Gem on.";
            Duration = 5;
            callback = "20";
            Button1 = "Close";
        })
        wait(5)
        end
        end
        end
        end
        end
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Unable to start Auto Gemming!";
            Text = "Disable Auto Hatch While Auto Gemming.";
            Duration = 5;
            callback = "20";
            Button1 = "Close";
        }) 
        wait(3)
        end
        end
	end    
})

FarmTab:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(bool)
        joidfs = bool
        while joidfs do
        wait(0.05)
        if char.HumanoidRootPart.CFrame.Y <= 25 then
            char.HumanoidRootPart.CFrame = CFrame.new(-70.5245361328125, 30.697996139526367, -140.58079528808594)
        end
        end
	end    
})

FarmTab:AddToggle({
	Name = "Auto Buy YoYo",
	Default = false,
	Callback = function(bool)
		getgenv().AutoBuyYoYo = bool
        AutoBuyYoYo()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Claim Quests",
	Default = false,
	Callback = function(bool)
		getgenv().AutoClaimQuests = bool
        AutoQuest()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Buy Backpack",
	Default = false,
	Callback = function(bool)
		getgenv().AutoBuyBackpack = bool
        AutoBuyBackpack()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Buy Rank",
	Default = false,
	Callback = function(bool)
fdsj = bool
    while fdsj do
        local coins = game:GetService("Players").LocalPlayer.ClientData.Coins
local rank = game:GetService("Players").LocalPlayer.leaderstats.Rank
        wait(5)
        if rank.Value == "Beginner" then
            if coins.Value >= "500k" then

local args = {
    [1] = "Newbie",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))

end
        elseif rank.Value == "Newbie" then
            if tonumber(coins.Value) >= 2000000 then
                local args = {
                    [1] = "Novice",
                    [2] = game:GetService("Players").LocalPlayer
                }
                rebirth()
                game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
            end
            elseif rank.Value == "Novice" then
                if tonumber(coins.Value) >= 10000000 then
                    local args = {
                        [1] = "Unskilled",
                        [2] = game:GetService("Players").LocalPlayer
                    }
                    rebirth()
                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
    end
                elseif rank.Value == "Unskilled" then
                    if tonumber(coins.Value) >= 75000000 then
                        local args = {
                            [1] = "Amateur",
                            [2] = game:GetService("Players").LocalPlayer
                        }
                        rebirth()
                        game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
       end
                    elseif rank.Value == "Amateur" then
                        if tonumber(coins.Value) >= 150000000 then
                            local args = {
                                [1] = "Apprentice",
                                [2] = game:GetService("Players").LocalPlayer
                            }  
                            rebirth()
                            
                            game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
end
                        elseif rank.Value == "Apprentice" then
                            if tonumber(coins.Value) >= 500000000 then
                                local args = {
                                    [1] = "Qualified",
                                    [2] = game:GetService("Players").LocalPlayer
                                }
                                rebirth()
                                game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                         end
                            elseif rank.Value == "Qualified" then
                                if tonumber(coins.Value) >= 5000000000 then
                                    local args = {
                                        [1] = "Experienced",
                                        [2] = game:GetService("Players").LocalPlayer
                                    }
                                    rebirth()
                                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                               end     
                                elseif rank.Value == "Experienced" then
                                    if tonumber(coins.Value) >= 10000000000 then
                                        local args = {
                                            [1] = "Skilled",
                                            [2] = game:GetService("Players").LocalPlayer
                                        }
                                        rebirth()
                                        game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                                        
                                    end
                                elseif rank.Value == "Skilled" then
                                    if tonumber(coins.Value) >= 50000000000 then
                                    local args = {
                                        [1] = "Specialist",
                                        [2] = game:GetService("Players").LocalPlayer
                                    }
                                    rebirth()
                                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                                end
                            elseif rank.Value == "Specialist" then
                                if tonumber(coins.Value) >= 1000000000000 then
                                    local args = {
                                        [1] = "Master",
                                        [2] = game:GetService("Players").LocalPlayer
                                    }
                                    rebirth()
                                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                                end
                            elseif rank.Value == "Master" then
                                if tonumber(coins.Value) >= 25000000000000 then
                                    local args = {
                                        [1] = "Overlord",
                                        [2] = game:GetService("Players").LocalPlayer
                                    }
                                    rebirth()
                                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                                end
                            elseif rank.Value == "Overlord" then
                                if tonumber(coins.Value) >= 1000000000000000 then
                                    local args = {
                                        [1] = "Emperor",
                                        [2] = game:GetService("Players").LocalPlayer
                                    }
                                    rebirth()
                                    game:GetService("ReplicatedStorage").GameEvents.RankEvents.BuyRank:FireServer(unpack(args))
                                end
                            end   
    end
	end    
})

FarmTab:AddToggle({
	Name = "Auto Buy Next Area",
	Default = false,
	Callback = function(bool)
		z = bool
    while z do
    local coins = game:GetService("Players").LocalPlayer.ClientData.Coins
local rank = game:GetService("Players").LocalPlayer.leaderstats.Rank
    wait(5)
        if bought == 0 then
        if tonumber(coins.Value) >= 500001 then
        local args = {
            [1] = "Candyland",
            [2] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").GameEvents.PortalFunction:InvokeServer(unpack(args))
        bought = bought + 1
    end
elseif bought == 1 then
    if tonumber(coins.Value) >= 5000001 then

local args = {
    [1] = "Desert",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").GameEvents.PortalFunction:InvokeServer(unpack(args))
bought = bought + 1
end
elseif bought == 2 then
    if tonumber(coins.Value) >= 20000000 then
        local args = {
            [1] = "Magma",
            [2] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").GameEvents.PortalFunction:InvokeServer(unpack(args))
        bought = bought + 1
    end
elseif bought == 3 then
    if tonumber(coins.Value) >= 500000000 then 
        local args = {
            [1] = "Atlantis",
            [2] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").GameEvents.PortalFunction:InvokeServer(unpack(args))
        bought = bought + 1
    end
end
end 
	end    
})

FarmTab:AddLabel("Auto Buy Next Area Is OP")
FarmTab:AddLabel("Make Sure To Enable it")

FarmTab:AddLabel("Locations To Auto Gem")
FarmTab:AddLabel("You Must Own The Location To Use It.")

FarmTab:AddToggle({
	Name = "Home",
	Default = false,
	Callback = function(bool)
        ho = bool
        if ho == true then
            unch = false
        end
	end    
})

FarmTab:AddToggle({
	Name = "Candy land",
	Default = false,
	Callback = function(bool)
        cand = bool
        if cand == true then
            unch = false
        end
    end  
})

FarmTab:AddToggle({
	Name = "Desert",
	Default = false,
	Callback = function(bool)
        des = bool
        if des == true then
            unch = false
        end
    end  
})

FarmTab:AddToggle({
	Name = "Magma",
	Default = false,
	Callback = function(bool)
        mag = bool
        if mag == true then
            unch = false
        end
    end  
})

FarmTab:AddToggle({
	Name = "Atlantis",
	Default = false,
	Callback = function(bool)
        atl = bool
        if atl == true then
            unch = false
        end
    end  
})

FarmTab:AddLabel("Verify Buttons :)")

FarmTab:AddButton({
    Name = "Twitter Verify",
    Callback = function()
        game:GetService("ReplicatedStorage").GameEvents.BenefitsEvents.TwitterFunction:InvokeServer("GalaxyHubRBX",game:GetService("Players").LocalPlayer)
    end
})

FarmTab:AddButton({
    Name = "Youtube Verify",
    Callback = function()
        game:GetService("ReplicatedStorage").GameEvents.BenefitsEvents.SubscribeFunction:InvokeServer("Galaxy Hub",game:GetService("Players").LocalPlayer)
    end
})

FarmTab:AddButton({
    Name = "Redeem All Codes",
    Callback = function()
        game:GetService("ReplicatedStorage").GameEvents.CodeFunction:InvokeServer("1KFAVORITES",game:GetService("Players").LocalPlayer)
        wait(1)
        game:GetService("ReplicatedStorage").GameEvents.CodeFunction:InvokeServer("100KVISITS",game:GetService("Players").LocalPlayer)
        wait(1)
        game:GetService("ReplicatedStorage").GameEvents.CodeFunction:InvokeServer("2KLIKES",game:GetService("Players").LocalPlayer)
    end
})

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		getgenv().AutoHatch = Value
        AutoHatch()
	end    
})

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "",
	Options = Eggs_Table,
	Callback = function(Value)
		Selected_Egg = Value
	end    
})

-- Dropdowns

-- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Init()
end




function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://link-hub.net/466373/roblox-galaxy-hub-key",
	Callback = function()
		setclipboard("https://link-hub.net/466373/roblox-galaxy-hub-key")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")

OrionLib:Init()




-- Universal

else

local GuiService = game:GetService("GuiService")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://3610242099",
	Time = 5
})

getgenv().Key = "GH.Key57h1ie61"
getgenv().KeyImput = "string"

function MakeScriptHub()
	game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub - Universal", HidePremium = true, SaveConfig = true, ConfigFolder = "GalaxyHubConfig", IntroText = "Galaxy Hub"})

-- Values
getgenv().AimPart = "Head" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockToggleKey = "Y" -- Toggles Aimbot On/Off 
getgenv().AimRadius = 50 -- How far away from someones character you want to lock on at
getgenv().ThirdPerson = true -- Locking onto someone in your Third Person POV
getgenv().FirstPerson = true -- Locking onto someone in your First Person POV
getgenv().TeamCheck = true -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
getgenv().PredictionVelocity = 10 -- The speed of the PredictMovement feature 


-- Functions
function findplayer(stringg)
	for _, v in pairs(game.Players:GetPlayers()) do
		if stringg:lower() == (v.Name:lower()):sub(1, #stringg) then
			return v
		elseif stringg:lower() == (v.DisplayName:lower()):sub(1, #stringg) then
			return v
		end
	end
end



-- Tabs
local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://6961018885",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345737",
	PremiumOnly = false
})

-- Notifications
OrionLib:MakeNotification({
	Name = "Galaxy Hub Has Loaded!",
	Content = "Join The Discord Server For More Scripts!",
	Image = "rbxassetid://4483345737",
	Time = 5
})

-- Toggles
PlayerTab:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(toggle)
		if toggle then
			_G.FLYING = false
			local LP = game:service('Players').LocalPlayer
			local T = LP.Character.UpperTorso
			local CONTROL = {F = 0, B = 0, L = 0, R = 0}
			local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			local SPEED = 5
			local MOUSE = LP:GetMouse()
			
			
			local function FLY()
			   _G.FLYING = true
			   local BG = Instance.new('BodyGyro', T)
			   local BV = Instance.new('BodyVelocity', T)
			   BG.P = 9e4
			   BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			   BG.cframe = T.CFrame
			   BV.velocity = Vector3.new(0, 0.1, 0)
			   BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			
			
			   spawn(function()
				 repeat wait()
				   LP.Character.Humanoid.PlatformStand = true
				   if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
					 SPEED = 50
				   elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
					 SPEED = 0
				   end
				   if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
					 BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					 lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				   elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
					 BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				   else
					 BV.velocity = Vector3.new(0, 0.1, 0)
				   end
				   BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
				 until not _G.FLYING
				 CONTROL = {F = 0, B = 0, L = 0, R = 0}
				 lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				 SPEED = 0
				 BG:destroy()
				 BV:destroy()
				 LP.Character.Humanoid.PlatformStand = false
			   end)
			 end
			 
			 MOUSE.KeyDown:connect(function(KEY)
			   if KEY:lower() == 'w' then
				 CONTROL.F = 1
			   elseif KEY:lower() == 's' then
				 CONTROL.B = -1
			   elseif KEY:lower() == 'a' then
				 CONTROL.L = -1
			   elseif KEY:lower() == 'd' then
				 CONTROL.R = 1
			   end
			 end)
			 
			 MOUSE.KeyUp:connect(function(KEY)
			   if KEY:lower() == 'w' then
				 CONTROL.F = 0
			   elseif KEY:lower() == 's' then
				 CONTROL.B = 0
			   elseif KEY:lower() == 'a' then
				 CONTROL.L = 0
			   elseif KEY:lower() == 'd' then
				 CONTROL.R = 0
			   end
			 end)
			
			 FLY()
			 else
				 _G.FLYING = false
			end
	end    
})

local plyr = game:GetService("Players").LocalPlayer
getgenv().canGoThru = false

PlayerTab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(Value)
              getgenv().canGoThru = Value
       if getgenv().canGoThru then
           noclip()
       end
   function noclip()
       game:GetService("RunService").Stepped:Connect(function()
           if getgenv().canGoThru == true then
               for i,v in pairs(plyr.Character:GetDescendants()) do
                   if v:IsA("BasePart") and v.CanCollide == true then
                       v.CanCollide = false
                   end
               end
           end
       end)
   end
	end    
})

PlayerTab:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
		local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wolfyz152007/script/main/Galaxy%20Hub%20ESP.lua"))()
		ESP:Toggle(Value)
	end    
})

PlayerTab:AddToggle({
	Name = "Aimbot",
	Default = false,
	Callback = function(Value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wolfyz152007/script/main/Galaxy%20Hub%20Aimbot.lua", true))()
	end    
})

PlayerTab:AddToggle({
	Name = "Team Check",
	Default = false,
	Callback = function(Value)
    getgenv().TeamCheck = Value
	end    
})


-- Dropdowns


-- Sliders
PlayerTab:AddSlider({
	Name = "Walk Speed",
	Min = 16,
	Max = 1000,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})





-- Buttons



-- Textbox
PlayerTab:AddTextbox({
	Name = "Player Teleport",
	Default = "",
	TextDisappear = true,
	Callback = function(txt)
		local plr = findplayer(txt)
        if plr then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
    	end
	end	  
})



-- Labels




-- Settings
SettingsTab:AddLabel("Made By Wolfyz#4785")
SettingsTab:AddLabel("Helped By ! zy#9999")
SettingsTab:AddLabel("Helped By Mika â¤ Floppa#2716")

SettingsTab:AddButton({
	Name = "Join The Discord!",
	Text = "https://discord.gg/GHxRgtBkdJ",
	Callback = function()
		setclipboard("https://discord.gg/GHxRgtBkdJ")
	end    
})

OrionLib:Init()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterted the correct key!",
        Image = "rbxassetid://3610242099",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have enterted the incorrect key!",
        Image = "rbxassetid://3610242099",
        Time = 5

    })
end


local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://3610242099",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyImput = Value
        print(KeyImput)
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if getgenv().KeyImput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
			game.Players.LocalPlayer:Kick("Invalid Key! Get The Key From Joining Galaxy Hub And Try Again https://discord.gg/GHxRgtBkdJ")
        end
  	end    
})

KeyTab:AddButton({
	Name = "Get Key",
	Text = "https://link-hub.net/466373/roblox-galaxy-hub-key",
	Callback = function()
		setclipboard("https://link-hub.net/466373/roblox-galaxy-hub-key")
	end    
})

KeyTab:AddButton({
	Name = "Destroy Ui",
	Callback = function()
        game:GetService("CoreGui").Orion.Frame:Destroy()
  	end    
})

KeyTab:AddLabel("To Get Key Press Get Key")
KeyTab:AddLabel("It Will Then Be Coppied To Your Clipboard")

OrionLib:Init()
end