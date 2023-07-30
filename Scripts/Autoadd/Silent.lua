local uis = game:GetService("UserInputService")
local cam = game:GetService("Workspace").CurrentCamera
local ts = game:GetService("TweenService")
local plr = game:GetService("Players").LocalPlayer

local function isBehindWall(char)
    local ray = Ray.new(cam.CFrame.Position, char.Head.Position - cam.CFrame.Position)
    local ignore = {cam, game.GetService(game, "Workspace").Bullets}
    if plr.Character then
        table.insert(ignore, plr.Character)
    end
    local hit = game.GetService(game, "Workspace").FindPartOnRayWithIgnoreList(game.GetService(game, "Workspace"), ray, ignore)
    if hit and hit.IsDescendantOf(hit, char) then
        return false
    end
    return true
end

local function getClosest()
    local closestDist = math.huge
    local closestPlr = nil
    for _, v in next, game.GetService(game, "Players").GetPlayers(game.GetService(game, "Players")) do
        if v ~= plr and v.Character ~= nil and game.FindFirstChild(v.Character, "Humanoid") and v.Character.Humanoid.Health > 0 then
            local vector, onScreen = cam.worldToScreenPoint(cam, game.WaitForChild(v.Character, "Head", math.huge).Position)
            local dist = (Vector2.new(uis.GetMouseLocation(uis).X, uis.GetMouseLocation(uis).Y) - Vector2.new(vector.X, vector.Y)).Magnitude
            if dist < closestDist and onScreen and not isBehindWall(v.Character) then
                closestDist = dist
                closestPlr = v
            end
        end
    end
    return closestPlr
end

local namecall;
namecall = hookmetamethod(game, "__namecall", function(self, ...)
	if not checkcaller() and tostring(getcallingscript()) == "GunClient" and getnamecallmethod() == "FireServer" and tostring(self) == "GunFired" then
		local args = {...}
        local closest = getClosest()
        if closest then
            args[1] = closest.Character.Head.Position
        end
		return namecall(self, unpack(args))
	end
	return namecall(self, ...)
end)