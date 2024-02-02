_G.stopTeleporting = false -- turn this to true and execute again if u want it to stop !!!

local function findClosestChild(children, player)
    if not children or #children == 0 then
        return
    end

    local closestChild = nil
    local shortestDistance = math.huge

    for _, v in ipairs(children) do
        if v.Name == "Highlight" or v.Transparency == 0.75 then
            continue
        end

        local distance = (v.Position - player.Character.HumanoidRootPart.Position).Magnitude

        if distance < shortestDistance then
            shortestDistance = distance
            closestChild = v
        end
    end

    return closestChild
end

local children = game:GetService("Workspace")["__THINGS"].Presents:GetChildren()
local player = game.Players.LocalPlayer

while not _G.stopTeleporting do
    local closestChild = findClosestChild(children, player)
    if closestChild then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(closestChild.Position)
        task.wait()
    end
end