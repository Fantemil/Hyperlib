local function getOrb(tool)
    if tool:FindFirstChild("Handle") then
        local handle = tool.Handle
        if handle:FindFirstChild("TouchInterest") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, handle, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, handle, 1)
        end
    end
end

local function orbStuff()
    local orbs = workspace.Game.World.Interview.Table["Meeting Table"].Model2.Model2.TableEnds.ExtraParts
    
    for _, tool in pairs(orbs:GetChildren()) do
        if tool:IsA("Tool") then
            getOrb(tool)
        end
    end
end

local function toolStuff()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    local character = player.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and string.match(tool.Name, "^%+%d+") then
            humanoid:EquipTool(tool)
            if tool:FindFirstChild("Handle") then
                wait(0.2)
                tool:Activate()
            end
            wait(0.3)
        end
    end
end

-- Anti-AFK Setup
local VirtualUser = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

while true do
    orbStuff()
    toolStuff()
    wait(0.1)
end