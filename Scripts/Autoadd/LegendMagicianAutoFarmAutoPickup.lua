task.wait(9e9) -- patched
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

plr.CharacterAdded:Connect(function(character)
    char = character
    hrp = char:WaitForChild("HumanoidRootPart")
end)

local function WaitForChildWhichIsA(parent, child_classname)
    local already = parent:FindFirstChildWhichIsA(child_classname)
    if already then
        return already 
    end
    
    local thread = coroutine.running()
    local con; con = parent.ChildAdded:Connect(function(c)
        if c:IsA(child_classname) then
            con:Disconnect()
            coroutine.resume(thread, c)
        end
    end)
    
    return coroutine.yield()
end

local function teleport_and_collect(part, prompt)
    pcall(function()
        hrp.CFrame = part.CFrame
    
        task.wait(.1)
        
        fireproximityprompt(prompt)
        task.wait(.1)
    end)
end

for i, v in next, workspace:GetChildren() do
    local prompt = v:FindFirstChildWhichIsA("ProximityPrompt")
    if prompt then
        teleport_and_collect(v, prompt)
    end
end

workspace.ChildAdded:Connect(function(c)
    local prompt = WaitForChildWhichIsA(c, "ProximityPrompt")
    teleport_and_collect(c, prompt)
end)

local chinese1 = "\230\150\176\229\187\186"
local chinese_remotes = {}

local plr = game.Players.LocalPlayer
local function find(t, v)
    for i2, v2 in next, t do
        if v == v2 then
            return v
        end
    end
end

local getreg = debug.getregistry
for i, v in next, getreg() do
    if typeof(v) == "table" and rawget(v, chinese1) then
        local old = v[chinese1]
        v[chinese1] = function(t)
            if not find(t, plr.Character) then return old(t) end
            
            for i2, v2 in next, t do
                if typeof(v2) == "Instance" and v2:IsA("RemoteEvent") then
                    table.insert(chinese_remotes, 1, v2)
                end
            end
            
            return old(t)
        end
    end
end

task.spawn(function()
    local setThreadIdentity = syn and syn.set_thread_identity or setthreadcontext or fluxus and fluxus.set_thread_identity
    local uis = game:GetService("UserInputService")

    setThreadIdentity(2)
    while true do
        for i, v in next, getconnections(uis.InputBegan) do
            v:Fire({KeyCode = Enum.KeyCode.Unknown, UserInputType = Enum.UserInputType.MouseButton1}, false)
        end
        
        task.wait(1)
    end
end)

task.wait(1)

for i, v in next, workspace:GetChildren() do
    if v.Name == "单位" then
        while true do
            for i2, v2 in next, v:GetChildren() do
                local mob_hrp = v2:FindFirstChild("HumanoidRootPart")
                local mob_humanoid = v2:FindFirstChild("Humanoid")
                if mob_hrp and mob_humanoid then
                    pcall(function()
                        local remote = chinese_remotes[1]
                        while mob_humanoid.Health > 0 do
                            for i = 1, 10 do
                                remote = chinese_remotes[1]
                                if not remote.Parent then task.wait(.1) continue end
                                
                                remote:FireServer({v2}, mob_hrp.Position)
                            end
                            
                            task.wait(.1)
                        end
                    end)
                end
            end
            
            task.wait(3) 
        end
    end
end