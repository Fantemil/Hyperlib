-- Function to recursively search for RemoteEvents in a given instance
local function findRemoteEvents(instance)
    for _, child in ipairs(instance:GetChildren()) do
        if child:IsA("RemoteEvent") then
            print(child:GetFullName()) -- Prints the full path of the RemoteEvent
        end
        findRemoteEvents(child)
    end
end

-- Start the search from the game's Workspace, ReplicatedStorage, and ReplicatedFirst
findRemoteEvents(game.Workspace)
findRemoteEvents(game.ReplicatedStorage)
findRemoteEvents(game.ReplicatedFirst)
