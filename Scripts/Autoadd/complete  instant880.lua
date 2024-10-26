local p=game:GetService("Players").LocalPlayer
local c=p.Character or p.CharacterAdded:Wait()
local hrp=c:WaitForChild("HumanoidRootPart")

local function fc(parent)
    for _,v in pairs(parent:GetChildren()) do
        if v:IsA("Folder") or v:IsA("Model") then
            fc(v)
        elseif v:IsA("BasePart") and v.Name=="Checkpoint" then
            hrp.CFrame=v.CFrame+Vector3.new(0,3,0)
            wait(0.05)
        end
    end
end

local o=game:GetService("Workspace"):WaitForChild("Obby")
fc(o)
