local currPlayer = game:GetService('Players').LocalPlayer
local servPlayer = game:GetService('Players')

local RunService = game:GetService('RunService')
local servTeams = game:GetService("Teams")

local currMouse = currPlayer:GetMouse()
local currCamera = game:GetService("Workspace").CurrentCamera


getgenv().GameSettings = {
    SilentAim = {
        ["active"] = true,
        ["fov"] = 100,
        ["hitpart"] = "Head",
        ["circlevis"] = true,
        ["wallbang"] = false,
        ["circcolor"] = Color3.fromRGB(228, 9, 191)
    }
}


local CircleInline = Drawing.new("Circle")
local CircleOutline = Drawing.new("Circle")
CircleInline.Radius = getgenv().GameSettings.SilentAim.fov
CircleInline.Thickness = 2
CircleInline.Position = Vector2.new(currCamera.ViewportSize.X / 2, currCamera.ViewportSize.Y / 2)
CircleInline.Transparency = 1
CircleInline.Color = getgenv().GameSettings.SilentAim.circcolor
CircleInline.Visible = getgenv().GameSettings.SilentAim.circlevis
CircleInline.ZIndex = 2
CircleOutline.Radius = getgenv().GameSettings.SilentAim.fov
CircleOutline.Thickness = 4
CircleOutline.Position = Vector2.new(currCamera.ViewportSize.X / 2, currCamera.ViewportSize.Y / 2)
CircleOutline.Transparency = 1
CircleOutline.Color = Color3.new()
CircleOutline.Visible = getgenv().GameSettings.SilentAim.circlevis
CircleOutline.ZIndex = 1




function isSameTeam(player)
    if player.team ~= currPlayer.team and player.team ~= servTeams["Neutral"] then
        return false
    else
        return true
    end
end

function isDead(player)
    if
        player == nil or player.Character == nil or player.Character:FindFirstChildWhichIsA("Humanoid") == nil or
            player.Character.Humanoid.Health <= 0
     then
        return true
    else
        return false
    end
end


    local function isClosestPlayer()
        local target
        local dist = math.huge
        for _, v in next, servPlayer:GetPlayers() do
            if
                not isDead(v) and v ~= currPlayer and not isSameTeam(v) and v.Character:FindFirstChild("Head") and
                    getgenv().GameSettings.SilentAim.active
             then
                local pos, visible = currCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local magnitude = (Vector2.new(currMouse.X, currMouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                if magnitude < (getgenv().GameSettings.SilentAim.fov) then
                    if magnitude < dist then
                        if getgenv().GameSettings.SilentAim.wallbang then
                            target = v
                            dist = magnitude
                        else
                            if visible then
                                target = v
                                dist = magnitude
                        end
                    end
   
   
                    end
                end
            end
        end
        return target
    end
   
   
    local target
    local gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    local oldNamecall = gmt.__namecall
   
    gmt.__namecall =
        newcclosure(
        function(self, ...)
            local Args = {...}
            local method = getnamecallmethod()
            if tostring(self) == "WeaponHit" and tostring(method) == "FireServer" then
                target = isClosestPlayer()
                if target then
                    Args[2]["part"] = target.Character[getgenv().GameSettings.SilentAim.hitpart]
                    return self.FireServer(self, unpack(Args))
                end
            end
            return oldNamecall(self, ...)
        end
    )

   