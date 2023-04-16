-- credits to egg salad for the anti tp bypass
getgenv().farming = true

if not getgenv().Loaded then
    getgenv().Loaded = true
else
    return
end

local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local NamecallMethod = getnamecallmethod()
    if not checkcaller() and (NamecallMethod == "SetPrimaryPartCFrame" or NamecallMethod == "Kick") and getcallingscript().Name == "Region" then
        return
    end
    return OldNameCall(Self, unpack(Args))
end)

local plr = game.Players.LocalPlayer

while wait() do
    if farming then
        for i,v in pairs(workspace.Interactable.Ores:GetChildren()) do
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Ores") and v:FindFirstChild("Rock") and v.Ores.Transparency ~= 1 then
                plr.Character.HumanoidRootPart.CFrame = v.Rock.CFrame
                wait(0.1)
                for i = 1,10 do
                    task.wait()
                    fireproximityprompt(v.Rock.ProximityPrompt)
                end
            end
        end
    end
end