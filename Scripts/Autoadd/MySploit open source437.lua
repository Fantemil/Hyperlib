



local fov = 100
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = false
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(255, 0, 0) 
FOVring.Filled = false 
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end




local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "MySploit ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Welcome To MySploit"
})

Tab:AddLabel("Status: Undetected")

Tab:AddButton({
	Name = "Discord",
	Callback = function()
      	setclipboard("discord.gg/M2dHpEQy")
  	end    
})

local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Aim (Way more being added soon)"
})


Tab:AddButton({
	Name = "Better Aim",
	Callback = function()
      		function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))
  	end    
})


local Section = Tab:AddSection({
	Name = "Gun Mods"
})

Tab:AddButton({
	Name = "Inf Ammo",
	Callback = function()
      		while wait() do	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
  	end    
})

local replicationstorage = game.ReplicatedStorage

Tab:AddButton({
	Name = "Gun Mods",
	Callback = function()
    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
 if v.Name == "FireRate" then
       v.Value = 0.05
   end
end
  	end    
})

local Tab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "ESP"
})


local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false
ESP.TeamColor = false
ESP.TeamMates = false


Tab:AddToggle({
	Name = "Enable ESP",
	Default = false,
	Callback = function(Value)
    ESP.Players = Value
	end    
})

Tab:AddToggle({
	Name = "Boxes ESP",
	Default = false,
	Callback = function(Value)
		ESP.Boxes = Value 
	end    
})

Tab:AddToggle({
	Name = "Tracers ESP",
	Default = false,
	Callback = function(Value)
		ESP.Tracers = Value 
	end    
})

Tab:AddToggle({
	Name = "Name ESP",
	Default = false,
	Callback = function(Value)
		ESP.Names = Value 
	end    
})

Tab:AddColorpicker({
	Name = "ESP Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
ESP.Color = Value
	end	  
})




local Section = Tab:AddSection({
	Name = "POV"
})



Tab:AddToggle({
	Name = "Draw FOV",
	Default = false,
	Callback = function(Value)
		FOVring.Visible = Value
	end    
})

Tab:AddToggle({
	Name = "Filled FOV",
	Default = false,
	Callback = function(Value)
		FOVring.Filled = Value
	end    
})

Tab:AddSlider({
	Name = "FOV Radius/Size",
	Min = 40,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Radius",
	Callback = function(Value)
	FOVring.Radius = Value
	end    
})




Tab:AddColorpicker({
	Name = "FOV Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		FOVring.Color = Value
	end	  
})




local Tab = Window:MakeTab({
	Name = "Config",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddLabel("Made By spamcd")

Tab:AddButton({
	Name = "Destroy UI",
	Callback = function()
      	OrionLib:Destroy()
  	end    
})


OrionLib:Init()