if not game:IsLoaded() then
   game.Loaded:Wait();
end

local enemyNames = game:GetService("ReplicatedStorage").Units.Noobs:GetChildren()
local mapFolder = game:GetService("Workspace").Map

local function PutOnExtend(instance)
    for _, x in ipairs(enemyNames) do
        if tostring(x) == instance.Name and instance ~= nil then
            instance.Head.Transparency = 0.6
            instance.Head.Size = Vector3.new(50.0, 50.0, 50.0) -- set size here!!!
            instance.Head.Massless = true
        end
    end
end

for _, v in ipairs(workspace:GetChildren()) do
    task.wait()
    PutOnExtend(v)
end

workspace.ChildAdded:Connect(function(v)
    task.wait()
    PutOnExtend(v)
end)