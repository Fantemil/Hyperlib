local function printArguments(...)
    local args = {...}
    print("âââ Arguments ââââââââââââââââââââââââââââ")
    for i, arg in ipairs(args) do
        print(string.format("â Argument %d: %s", i, tostring(arg)))
    end
    print("âââââââââââââââââââââââââââââââââââââââââââ")
end

local function printRemoteCall(remoteType, remoteName, printFunc)
    printFunc("âââââââââââââââââââââââââââââââââââââââââââ")
    printFunc(string.format("â %s fired: %s", remoteType, remoteName))
    printFunc("âââââââââââââââââââââââââââââââââââââââââââ")
end

local function wrapRemote(remote)
    if remote:IsA("RemoteEvent") then
        remote.OnClientEvent:Connect(function(...)
            printRemoteCall("RemoteEvent", remote.Name, warn)
            printArguments(...)
        end)
    elseif remote:IsA("RemoteFunction") then
        remote.OnClientInvoke = function(...)
            printRemoteCall("RemoteFunction", remote.Name, error)
            printArguments(...)
        end
    end
end

local function wrapRemotesInFolder(folder)
    for _, obj in ipairs(folder:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            wrapRemote(obj)
        end
    end
    folder.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
            wrapRemote(descendant)
        end
    end)
end

wrapRemotesInFolder(game.ReplicatedStorage)
wrapRemotesInFolder(game.StarterGui)
wrapRemotesInFolder(game.StarterPack)
wrapRemotesInFolder(game.StarterPlayer)

game.ReplicatedStorage.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)

game.StarterGui.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)

game.StarterPack.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)

game.StarterPlayer.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)
