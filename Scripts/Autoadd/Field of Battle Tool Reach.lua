local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer;

local runS = game:GetService("RunService");

local function ClosestMob()
    local dist, closest = math.huge
    
    for i,v in next, game:GetService("Workspace").Unbreakable.Characters:GetChildren() do
        if tostring(plr.Team) == v.Name or not plr.Character then
            continue;
        end
        
        for k,s in next, v:GetChildren() do
            if s:FindFirstChild("Torso") and plr.Character and s:FindFirstChild("Humanoid").Health > 0 then
                local t = s:FindFirstChild("Torso");
                
                local magnitude = (plr.Character:WaitForChild("HumanoidRootPart").Position - t.Position).Magnitude;
                
                if magnitude < dist and magnitude < 75 then
                    dist = magnitude
                    closest = s;
                end
            end
        end
    end
    return closest
end

local ren_conn;

local function onChar(char)
    ren_conn = runS.RenderStepped:Connect(function()
        if char:FindFirstChildOfClass("Tool") then
            local tool = char:FindFirstChildOfClass("Tool")
            local mob = ClosestMob()
            
            if mob then
                firetouchinterest(mob.Torso, tool:WaitForChild("Handle"), 0)
                firetouchinterest(mob.Torso, tool:WaitForChild("Handle"), 1)
                tool:Activate()
            end
        end
    end)
end

local function onRemove()
    if ren_conn then
        ren_conn:Disconnect()
        ren_conn = nil;
    end
end


if plr.Character then
    onChar(plr.Character)
end
plr.CharacterAdded:Connect(onChar)
plr.CharacterRemoving:Connect(onRemove)