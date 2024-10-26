-- made by mrpopcat14 in youtube 
local RunService = game:GetService("RunService")
local CollectionService = game:GetService("CollectionService")

-- Table to keep track of highlighted objects
local highlightedObjects = {}

local function handleNewObject(obj)
    if obj:IsA('Classname_here') and obj.Parent and obj.Parent:IsA('Model') and obj.Parent.Name == 'Parent name here' then
        -- Check if the object is not already highlighted
        if not highlightedObjects[obj] then
            if not obj.Parent:FindFirstChildOfClass('BillboardGui') then
                local BillboardGui = Instance.new('BillboardGui')
                local TextLabel = Instance.new('TextLabel')

                BillboardGui.Parent = obj.Parent
                BillboardGui.AlwaysOnTop = true
                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = "Door" -- Display text
                TextLabel.TextScaled = true
                TextLabel.TextStrokeTransparency = 0.5 -- Text stroke for visibility



                local function updateColors()
                    local hue = tick() % 5 / 5 
                    local color = Color3.fromHSV(hue, 1, 1)
                    TextLabel.TextColor3 = color
                end

                RunService.RenderStepped:Connect(updateColors)

                highlightedObjects[obj] = true
            end
        end
    end
end

objects
local function handleExistingObjects()
    for _, obj in ipairs(game.Workspace:GetDescendants()) do
        handleNewObject(obj)
    end
end

game.Workspace.ChildAdded:Connect(function(child)
    handleNewObject(child)
end)

local lastCheck = 0
RunService.Heartbeat:Connect(function(deltaTime)
    lastCheck = lastCheck + deltaTime
    if lastCheck >= 0.5 then
        handleExistingObjects()
        lastCheck = 0
    end
end)

handleExistingObjects()