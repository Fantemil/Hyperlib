-- Press B to turn on
local meow = require(game:GetService("ReplicatedStorage").LocalModule.AttackManager.AttackHandle)
local RunService = game:GetService("RunService")
local gay = game.ReplicatedStorage:WaitForChild("Events")
local UserInputService = game:GetService("UserInputService")
local Ka = false

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.B then
        Ka = not Ka
    end
end)

RunService.Stepped:Connect(function()
    if Ka then
        local arf = meow.FindEnemy()
        if arf then
            for _ = 1, 15 do --// Multiplier, change it to what you want
                gay.DmgSEvent:FireServer(arf)
            end
        end
    end
end)
----------------------------------------------------------------------
-- Press V to turn on
local meow = require(game:GetService("ReplicatedStorage").LocalModule.AttackManager.AttackHandle)
local RunService = game:GetService("RunService")
local gay = game.ReplicatedStorage:WaitForChild("Events")
local UserInputService = game:GetService("UserInputService")
local Enabled = false

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V then
        Enabled = not Enabled
    end
end)

local function novaskid()
    local closest, maxDist = nil, 9e9
    for _, v in pairs(workspace.Monsters:GetChildren()) do
        local Model = v:FindFirstChildOfClass("Model")
        if Model and Model:FindFirstChild("Humanoid") and Model.Humanoid.Health > 0 then
            local dist = (
                Model.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            ).Magnitude
            if dist < maxDist then
                closest = Model
                maxDist = dist
            end
        end
    end
    return closest
end

RunService.Heartbeat:Connect(function()
    if Enabled then
        pcall(function()
            local arf = meow.FindEnemy()
            local meow = novaskid()
            game.Players.LocalPlayer.Character:PivotTo(meow.PrimaryPart.CFrame)
            gay.DmgSEvent:FireServer(arf)
        end)
    end
end)

----------------------------------------------------------------------
-- Damage anc coin text remover for less lag
for i,v in pairs(game.Workspace:GetChildren()) do 
    if v.Name == "Coins" then 
        for i1,v1 in pairs(v:GetChildren()) do 
            if v1.Name == "Orbs" then 
                v1:Destroy()
            end 
        end 
    end 
end 

for i,v in pairs(game:GetService("ReplicatedStorage").Assert.Billboards:GetChildren()) do 
    if v:IsA("BasePart") then 
        v:Destroy()
    end 
end
----------------------------------------------------------------------
--Halloween Mass opener
for i = 1, 45 do
   game:GetService("ReplicatedStorage").Events.RE_Halloween:FireServer()

end