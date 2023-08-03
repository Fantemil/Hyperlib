local LocalPlayer = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
function closest()
    local dist = math.huge
    local closest
    for i,v in pairs(game.Players.GetPlayers(game.Players)) do
        if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") and v.Character.Torso.BrickColor ~= LocalPlayer.Character.Torso.BrickColor then
            local mousepos = UserInputService.GetMouseLocation(UserInputService)
            local cast, os = workspace.CurrentCamera.WorldToViewportPoint(workspace.CurrentCamera, v.Character.HumanoidRootPart.Position)
            local calc = (Vector2.new(mousepos.X, mousepos.Y) - Vector2.new(cast.X, cast.Y)).Magnitude
            if os and calc < dist then
                dist = calc
                closest = v
            end
        end
    end
    return closest
end

local mouse = LocalPlayer:GetMouse()
local __namecall;
__namecall = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if self == mouse and not checkcaller() then
        local player = closest()
        if player then
            local cast = workspace.CurrentCamera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            if key == "X" then
                return cast.X
            end
            if key == "Y" then
                return cast.Y
            end
        end
    end
    return __namecall(self, key)
end))