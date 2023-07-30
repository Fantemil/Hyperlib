local uis = game:GetService("UserInputService")
local cam = game:GetService("Workspace").CurrentCamera
local ts = game:GetService("TweenService")
local plr = game:GetService("Players").LocalPlayer

local function isBehindWall(player)
    local ray = Ray.new(cam.CFrame.Position, player.Head.Position - cam.CFrame.Position)
    local hit = game.GetService(game, "Workspace").FindPartOnRayWithWhitelist(game.GetService(game, "Workspace"), ray, {game.GetService(game, "Workspace").enemies})
    if hit and hit.Parent == player then
        return false
    end
    return true
end

local function getClosest()
    local closestDist = math.huge
    local closestPlr = nil
    for _, v in next, game.GetService(game, "Workspace").enemies.GetChildren(game.GetService(game, "Workspace").enemies) do
        if game.FindFirstChild(v, "Humanoid") and v.Humanoid.Health > 0 then
            local vector, onScreen = cam.worldToScreenPoint(cam, game.WaitForChild(v, "Head", math.huge).Position)
            local dist = (Vector2.new(uis.GetMouseLocation(uis).X, uis.GetMouseLocation(uis).Y) - Vector2.new(vector.X, vector.Y)).Magnitude
            if dist < closestDist and onScreen and not isBehindWall(v) then
                closestDist = dist
                closestPlr = v
            end
        end
    end
    return closestPlr
end

local namecall;
namecall = hookmetamethod(game, "__namecall", function(Self, ...)
	if not checkcaller() and tostring(getcallingscript()) == "GunController" and string.lower(getnamecallmethod()) == "findpartonraywithwhitelist" then
		local args = {...}
		local closest = getClosest()
		if closest then
			local origin = args[1].Origin
			args[1] = Ray.new(origin, closest.Head.Position - origin)
		end
		return namecall(Self, unpack(args))
	end
	return namecall(Self, ...)
end)