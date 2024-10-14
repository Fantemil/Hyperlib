local innerMarkerColor = Color3.fromRGB(255, 0, 0) 
local baseMarkerColor = Color3.fromRGB(0, 255, 0) 
local transparency = 0.5


local function createMarker(object, color)
   
    if not object:FindFirstChildOfClass("BoxHandleAdornment") then
        local marker = Instance.new("BoxHandleAdornment")
        marker.Size = object.Size
        marker.Color3 = color
        marker.Transparency = transparency
        marker.Adornee = object
        marker.AlwaysOnTop = true
        marker.ZIndex = 10
        marker.Parent = object
    end
end


local function markAllObjects()
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if object.Name == "inner" then
                createMarker(object, innerMarkerColor)
            elseif object.Name == "base" then
                createMarker(object, baseMarkerColor)
            end
        end
    end
end


local function monitorObjectChanges(object, color)
    
    object.AncestryChanged:Connect(function()
        createMarker(object, color)
    end)
end


markAllObjects()


workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("BasePart") then
        if descendant.Name == "inner" then
            createMarker(descendant, innerMarkerColor)
            monitorObjectChanges(descendant, innerMarkerColor)
        elseif descendant.Name == "base" then
            createMarker(descendant, baseMarkerColor)
            monitorObjectChanges(descendant, baseMarkerColor)
        end
    end
end)
