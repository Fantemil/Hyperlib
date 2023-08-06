getgenv().autotpantidie = false

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local function AntiDie()
local centerPosition = Vector3.new(-27, 17, 7)
local floorSize = Vector3.new(1000, 1, 1000) 
local yOffset = -2 

local floorPart = Instance.new("Part")
floorPart.Name = "MassiveFloor"
floorPart.Size = floorSize
floorPart.Position = centerPosition - Vector3.new(0, floorSize.Y / 2 + yOffset, 0)
floorPart.BrickColor = BrickColor.new("Bright blue") 
floorPart.Anchored = true
floorPart.CanCollide = true
floorPart.Transparency = 0.5 
floorPart.Parent = workspace

function getcurrentPlayerPOS()
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        return plyr.Character.HumanoidRootPart
    end
    return false
end

function teleporto(placeCframe)
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCframe
    end
end

teleporto(workspace.MassiveFloor.CFrame + Vector3.new(0, 5, 0))
end
local function tpantidie()
    teleporto(workspace.MassiveFloor.CFrame + Vector3.new(0, 5, 0))
end

local function autotpantidie()
    while getgenv().autotpantidie == true do
    teleporto(workspace.MassiveFloor.CFrame + Vector3.new(0, 5, 0))
    task.wait()
    end
end

local Window = OrionLib:MakeWindow({Name = "Free ugc // Color Blox// Killa#2836", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "AntiDie CLICK THIS FIRST",
	Callback = function()
      		AntiDie()
  	end    
})
Tab:AddToggle({
	Name = "Auto TP ANTI DIE",
	Default = false,
	Callback = function(Value)
		getgenv().autotpantidie = Value
        if Value then
            autotpantidie()
        end
	end    
})
Tab:AddButton({
	Name = "TP ANTI DIE",
	Callback = function()
      		tpantidie()
  	end    
})



