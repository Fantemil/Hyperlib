local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local lp = Players.LocalPlayer

local settings = {
    WalkSpeed = {
        default = 16,
        boosted = 100, 
    },
    JumpPower = {
        default = 50,
        boosted = 100,
    }
}

function apply(humanoid, walkSpeed, jumpPower)
    humanoid.WalkSpeed = walkSpeed
    humanoid.JumpPower = jumpPower
end

function add(character)
    local humanoid = character:WaitForChild("Humanoid")
    apply(humanoid, settings.WalkSpeed.boosted, settings.JumpPower.boosted)
    
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if humanoid.WalkSpeed ~= settings.WalkSpeed.boosted then
            humanoid.WalkSpeed = settings.WalkSpeed.boosted
        end
    end)
    
    humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        if humanoid.JumpPower ~= settings.JumpPower.boosted then
            humanoid.JumpPower = settings.JumpPower.boosted
        end
    end)
end

lp.CharacterAdded:Connect(add)

if lp.Character then
    add(lp.Character)
end

rs.RenderStepped:Connect(function()
    if lp.Character and lp.Character:FindFirstChild("Humanoid") then
        apply(lp.Character.Humanoid, settings.WalkSpeed.boosted, settings.JumpPower.boosted)
    end
end)
