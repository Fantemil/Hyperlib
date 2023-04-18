local CurrentCamera = workspace.CurrentCamera
local Players = game.GetService(game, "Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local settings = {
   Silent_Aim_Enabled = true,
   Auto_Shoot_Enabled = true,
   Draw_FOV = true,
   FOV_Radius = 500
}

local fovcircle = Drawing.new("Circle")
fovcircle.Visible = settings.Draw_FOV
fovcircle.Radius = settings.FOV_Radius
fovcircle.Thickness = .5
fovcircle.Filled = false
fovcircle.Transparency = .75
fovcircle.Position = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
fovcircle.Color = Color3.fromHSV(1,1,1)

Mouse.KeyDown:connect(function(k)
    if k == "y" then
        if settings.Auto_Shoot_Enabled then
            settings.Auto_Shoot_Enabled = false
        else
            settings.Auto_Shoot_Enabled = true
        end
    end
end)

Mouse.KeyDown:connect(function(k)
    if k == "u" then
        if settings.Silent_Aim_Enabled then
            settings.Silent_Aim_Enabled = false
        else
            settings.Silent_Aim_Enabled = true
        end
    end
end)

local function isVis(p)
 ignoreList = {LocalPlayer.Character, CurrentCamera, p.Character}
 local parts = workspace.CurrentCamera:GetPartsObscuringTarget({p.Character.Head.Position, CurrentCamera.CFrame.Position}, ignoreList)
    return #parts == 0
end

function get_target()
    local MaxDist, Closest = math.huge

    
    for I,V in pairs(Players.GetPlayers(Players)) do
        if not settings.Silent_Aim_Enabled then continue end
        if V == LocalPlayer or V.Team == LocalPlayer or not V.Character then continue end
    
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end

        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        
        local Humanoid = V.Character.FindFirstChild(V.Character, "Humanoid")
        if not Humanoid or Humanoid.Health <= 0 then continue end
        
        local ForceField = V.Character.FindFirstChild(V.Character, "ForceField")
        if ForceField then continue end
        
        local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        
        if Dist < MaxDist and Dist <= settings.FOV_Radius then 
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end

local Meta = getrawmetatable(game)
local OldNC = Meta.__namecall
local OldIDX = Meta.__index
setreadonly(Meta, false)
Meta.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local T = get_target()
        if T and T.Character and T.Character.FindFirstChild(T.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (T.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)

Meta.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(Meta, true)


coroutine.wrap(function()
    while wait(0.1) do
        local t = get_target()
        if settings.Auto_Shoot_Enabled and t and isVis(t) then
            mouse1click()
        end
    end
end)()

while true do
 for i = 0,1,0.001*10 do
        fovcircle.Color = Color3.fromHSV(i,1,1)
        fovcircle.Position = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2)
        if settings.Silent_Aim_Enabled and settings.Draw_FOV then
            fovcircle.Visible = true
        else
            fovcircle.Visible = false
        end
        wait()
 end
end