-- Objects To Lua Make By HairBaconGamming --
local Module_Scripts = {}
local Part = Instance.new("Part")
local LocalScript = Instance.new("LocalScript")

	      -- Properties --

Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.BrickColor = BrickColor.new([[Bright green]])
Part.CFrame = CFrame.new(9999, 50, 9999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part.Color = Color3.new(0.294118, 0.592157, 0.294118)
Part.Material = Enum.Material.Grass
Part.Parent = workspace
Part.Position = Vector3.new(9999, 50, 9999)
Part.Size = Vector3.new(100, 1, 100)
Part.TopSurface = Enum.SurfaceType.Smooth

function LocalScript_ScriptfakeXD()

	local script = Instance.new("LocalScript",Part)
	LocalScript = script
	script.Name = [[LocalScript]]	
	local require_fake = require
	local require = function(Object)
		local functiom = Module_Scripts[Object]
		if functiom then
			return functiom()
		end
		return require_fake(Object)
	end
	local safe = false
	
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
		if key == "k" then
			if safe == false then
				_G.pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				safe = true
				game.Players.LocalPlayer.Character:MoveTo(script.Parent.Position + Vector3.new(0,3,0))
			else
				safe = false
				game.Players.LocalPlayer.Character:MoveTo(_G.pos)
			end
			
		end
	end)

end
coroutine.wrap(LocalScript_ScriptfakeXD)()


		      -- End --
		-- Thank for using --