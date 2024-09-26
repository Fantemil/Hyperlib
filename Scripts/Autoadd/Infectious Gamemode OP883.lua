local localplr = game.Players.LocalPlayer
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()

lib.makelib("Sanic Chase REMAKE")
local sanicparts = {}
local origstuff = {}
local nojumpcd = false
local autokill = false
local sanicpartsbool = false
local beartrapparts = {}
local sanicdamageparts = {}
local maintab = lib.maketab("Infection")


lib.makelabel("Sanic",maintab)

lib.maketoggle("No killfields for sanic",maintab,function(bool)
    if bool then
        for i,v in pairs(workspace.GameFolder.KillFields.KillField:GetChildren()) do
            sanicdamageparts[v] = v.Transparency
            v.CanTouch = false
            v.Transparency = 1
        end
        for i,v in pairs(workspace:GetChildren()) do
            if v.Name == "CampBarrier" then
                sanicdamageparts[v] = v.Transparency
                v.CanTouch = false
                v.Transparency = 0.5
            end
        end
    else
        for i,v in pairs(sanicdamageparts) do
            i.Transparency = v
            i.CanTouch = true
        end
    end
end)

lib.makedropdown("Select what type of sanic to be",maintab,{"Normal","Majin","Super"},function(sel)
    if localplr.Character and localplr.Character:FindFirstChild("HumanoidRootPart") then
        local folder
        if sel == "Normal" then
            folder = workspace.GameFolder.InfectionPart.Weak
        elseif sel == "Majin" then
            folder = workspace.GameFolder.InfectionPart.Medium
        else
            folder = workspace.GameFolder.InfectionPart.Strong
        end
        local part = folder:FindFirstChild("TransfurPart")
        if sanicpartsbool then
            part.CanTouch = true
        end
        firetouchinterest(localplr.Character.HumanoidRootPart,part,0)
        if sanicpartsbool then
            part.CanTouch = false
        end
    end
end)

lib.maketoggle("Auto Kill",maintab,function(bool)
    if bool then
        if localplr.Character and localplr.Character:FindFirstChild("Humanoid") and localplr.Character:FindFirstChild("HumanoidRootPart") then
            origstuff[1] = localplr.Character.Humanoid.HipHeight
            origstuff[2] = localplr.Character.HumanoidRootPart.Size
            localplr.Character.Humanoid.HipHeight = -6
            localplr.Character.HumanoidRootPart.Size = Vector3.new(200,10,200)
        end
    else
        if localplr.Character and localplr.Character:FindFirstChild("Humanoid") and localplr.Character:FindFirstChild("HumanoidRootPart") then
            localplr.Character.Humanoid.HipHeight = origstuff[1]
            localplr.Character.HumanoidRootPart.Size = origstuff[2]
        end
    end
end)

lib.makelabel("Human",maintab)

lib.maketoggle("No sanic parts work (including beartraps)",maintab,function(bool)
    sanicpartsbool = bool
    if bool then
        for i,v in pairs(workspace.GameFolder.InfectionPart:GetChildren()) do
            for i,v in pairs(v:GetChildren()) do
                sanicparts[v] = v.Transparency
                v.CanTouch = false
                v.Transparency = 0.5
            end
        end
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Name == "BearTrap" then
                v.CanTouch = false
                v.Transparency = 0.5
            end
        end
    else
        for i,v in pairs(sanicparts) do
            i.Transparency = v
            i.CanTouch = true
        end
        for i,v in pairs(beartrapparts) do
            i.Transparency = v
            i.CanTouch = true
        end
    end
end)

lib.makelabel("Both",maintab)

lib.maketoggle("No Jump Cooldown",maintab,function(bool)
    nojumpcd = bool
    if localplr.Character and localplr.Character:FindFirstChild("JumpCooldown") then
        localplr.Character.JumpCooldown.Disabled = bool
    end
end)

local workspacedescendants = workspace.DescendantAdded:Connect(function(thing)
    if thing.Name == "BearTrap" then
        beartrapparts[thing] = thing.Transparency
        if sanicpartsbool then
            thing.CanTouch = false
            thing.Transparency = 0.5
        end
    elseif thing.Name == "JumpCooldown" and nojumpcd then
        thing.Disabled = true
    end
end)

lib.ondestroyedfunc = function()
    workspacedescendants:Disconnect()
    for i,v in pairs(sanicparts) do
        i.Transparency = v
        i.CanTouch = true
    end
    for i,v in pairs(sanicdamageparts) do
        i.Transparency = v
        i.CanTouch = true
    end
    for i,v in pairs(beartrapparts) do
        if i then
            i.Transparency = v
            i.CanTouch = true
        end
    end
    if localplr.Character and localplr.Character:FindFirstChild("JumpCooldown") then
        localplr.Character.JumpCooldown.Enabled = true
    end
    if localplr.Character and localplr.Character:FindFirstChild("Humanoid") and localplr.Character:FindFirstChild("HumanoidRootPart") and origstuff[2] and origstuff[1] then
        localplr.Character.Humanoid.HipHeight = origstuff[1]
        localplr.Character.HumanoidRootPart.Size = origstuff[2]
    end
end