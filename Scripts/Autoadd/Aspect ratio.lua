local camera = workspace.CurrentCamera
local settings = {
    ["Aspect Ratio"] = true,
    ["Ratio Value"] = 0.6
}

local oldNewindex

oldNewindex = hookmetamethod(game, "__newindex", function(object, propertyName, propertyValue)
    if object == camera and propertyName == "CFrame" then
        if settings["Aspect Ratio"] then
            propertyValue = propertyValue * CFrame.new(0, 0, 0, 1, 0, 0, 0, settings["Ratio Value"], 0, 0, 0, 1)
        end
    end
    return oldNewindex(object, propertyName, propertyValue)
end)
