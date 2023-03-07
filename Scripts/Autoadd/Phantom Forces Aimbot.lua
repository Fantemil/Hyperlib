getgenv().S = {
    Legit = true,
    FOV = 250,
    WallCheck = true,
    Smooth = 0.1
}
for i,v in pairs(game:GetChildren()) do
    getgenv()[v.ClassName] = v 
end 
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Shoot = false

function NotObstructing(i, v)
    if S.WallCheck then
        c = Workspace.CurrentCamera.CFrame.Position
        a = Ray.new(c, i - c)
        f = Workspace:FindPartOnRayWithIgnoreList(a, v)
        return f == nil
    else
        return true
    end
end

local GetClosestPlayerToCurser = function()
    local Target = nil 
    local MaxDistance = math.huge
    for i,v in pairs(Workspace.Players:GetChildren()) do
        if v.Name ~= Player.TeamColor.Name then
            for i,v in pairs(v:GetChildren()) do
                if v:IsA("Model") then
                    local OnPoint, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(v:GetModelCFrame().Position)
                    if OnScreen and NotObstructing(v:GetModelCFrame().Position, {Player.Character, v}) then
                    local Mag = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(OnPoint.X, OnPoint.Y)).Magnitude
                        if Mag < MaxDistance then
                            Target = v
                            MaxDistance = Mag 
                        end 
                    end 
                end 
            end 
        end 
    end 
    return Target 
end 

local Return = function(A)
    return Workspace.CurrentCamera:WorldToScreenPoint(A)
end

UserInputService.InputBegan:Connect(
    function(v)
        if v.UserInputType == Enum.UserInputType.MouseButton2 then
            Shoot = true
        end
    end
)

UserInputService.InputEnded:Connect(
    function(v)
        if v.UserInputType == Enum.UserInputType.MouseButton2 then
            Shoot = false
        end
    end
)

RunService.Stepped:Connect(function()
    pcall(function()
        if not S.Legit or not Shoot then return end
        local SexPosition = Return(GetClosestPlayerToCurser():GetModelCFrame().Position)
        local MousePosition = Return(Mouse.Hit.Position)
        local OldX, OldY = (SexPosition.X - MousePosition.X), (SexPosition.Y - MousePosition.Y) 
        mousemoverel(OldX * S.Smooth, OldY * S.Smooth)
    end)
end)