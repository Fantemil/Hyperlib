local players = game.Players:GetPlayers()
local client = game.Players.LocalPlayer
local mouse = game.Players.LocalPlayer:GetMouse()

local closestPlayer = nil
local closestDistance = math.huge
getgenv().antiviewer = true

while getgenv().antiviewer do
    for i, player in ipairs(players) do
        if player ~= client and player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("HumanoidRootPart") then
            local playerPosition = player.Character.PrimaryPart.Position
            local camera = game.Workspace.CurrentCamera
            local viewportPosition = camera:WorldToViewportPoint(playerPosition)
            local distance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(viewportPosition.X, viewportPosition.Y)).Magnitude
            if distance < closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end
    if closestPlayer then
        closestPlayer = nil
        closestDistance = math.huge
    end 
    wait()
    if not getgenv().antiviewer then
        break
    end
end