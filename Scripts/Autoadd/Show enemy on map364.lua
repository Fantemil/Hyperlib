local replicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

local hiddenUnitsFolder = replicatedStorage:WaitForChild("HIDDEN_UNITS")

local thExFolder = workspace:FindFirstChild("THex") or Instance.new("Folder")
thExFolder.Name = "THex"
thExFolder.Parent = workspace

while true do
    for _, child in ipairs(thExFolder:GetChildren()) do
        if not hiddenUnitsFolder:FindFirstChild(child.Name) then
            child:Destroy()
        end
    end

    for _, hiddenUnit in ipairs(hiddenUnitsFolder:GetChildren()) do
        if hiddenUnit:IsA("Model") and not thExFolder:FindFirstChild(hiddenUnit.Name) then
            hiddenUnit:Clone().Parent = thExFolder
        end
    end

    wait(5)
end