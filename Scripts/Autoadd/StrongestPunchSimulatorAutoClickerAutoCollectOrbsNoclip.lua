local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Strongest Punch Simulator")
local b = w:CreateFolder("AutoFarm (Detectable)")
local f = w:CreateFolder("AutoFarm (Undetectable)")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
 
b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClickerv1 = bool
end)

b:Toggle("AutoCollectOrbs",function(bool)
    shared.toggle = bool
    AutoCollectOrbsv1 = bool
end)

f:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClickerv2 = bool
end)

f:Toggle("AutoCollectOrbs",function(bool)
    shared.toggle = bool
    AutoCollectOrbsv2 = bool
end)

e:Toggle("Noclip",function(bool)
    shared.toggle = bool
    noclip = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
 
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

game:GetService('RunService').Stepped:connect(function()
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
    spawn(function()
        if AutoClickerv2 == true then
            mouse1press() wait() mouse1release()
        end
    end)
    spawn(function()
        if noclip == true then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        end
    end)
end)

spawn(function()
    world = ""
    allow = true
    while wait(math.random(1,3)) do
        if AutoCollectOrbsv1 == true then
            if allow == true then
                allow = false
                function ClosestPart()
                    local dist = math.huge
                    local target = nil
                    for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetDescendants()) do
                        if v.ClassName == "TouchTransmitter" then
                            local magnitude = (v.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                            if magnitude < dist then
                                dist = magnitude
                                target = v.Parent
                            end
                        end
                    end
                    return target
                end
                world = ClosestPart().Parent.Parent
                function ClosestPart1()
                    local dist = math.huge
                    local target = nil
                    for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetChildren()) do
                        if tostring(v.Name) == tostring(world) then
                            for i,v1 in pairs(v:GetChildren()) do
                                for i,v2 in pairs(v1:GetChildren()) do
                                    for i,v3 in pairs(v2:GetChildren()) do
                                        if v3.ClassName == "TouchTransmitter" then
                                            if v3.Parent.Transparency ~= 1 then
                                                local magnitude = (v3.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                                                if magnitude < dist then
                                                    dist = magnitude
                                                    target = v3.Parent
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return target
                end
            end
            pcall(function()
                ClosestPart1().CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end)
        else
            allow = true
            world = ""
        end
    end
end)

spawn(function()
    world = ""
    allow = true
    while wait() do
        if AutoCollectOrbsv2 == true then
            if allow == true then
                allow = false
                function ClosestPart()
                    local dist = math.huge
                    local target = nil
                    for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetDescendants()) do
                        if v.ClassName == "TouchTransmitter" then
                            local magnitude = (v.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                            if magnitude < dist then
                                dist = magnitude
                                target = v.Parent
                            end
                        end
                    end
                    return target
                end
                world = ClosestPart().Parent.Parent
                function ClosestPart1()
                    local dist = math.huge
                    local target = nil
                    for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetChildren()) do
                        if tostring(v.Name) == tostring(world) then
                            for i,v1 in pairs(v:GetChildren()) do
                                for i,v2 in pairs(v1:GetChildren()) do
                                    for i,v3 in pairs(v2:GetChildren()) do
                                        if v3.ClassName == "TouchTransmitter" then
                                            if v3.Parent.Transparency ~= 1 then
                                                local magnitude = (v3.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                                                if magnitude < dist then
                                                    dist = magnitude
                                                    target = v3.Parent
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return target
                end
            end
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(ClosestPart1().Position)
            end)
        else
            allow = true
            world = ""
        end
    end
    game:GetService('Players').LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
        world = ""
        allow = true
        while wait() do
            if AutoCollectOrbsv2 == true then
                if allow == true then
                    allow = false
                    function ClosestPart()
                        local dist = math.huge
                        local target = nil
                        for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetDescendants()) do
                            if v.ClassName == "TouchTransmitter" then
                                local magnitude = (v.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                                if magnitude < dist then
                                    dist = magnitude
                                    target = v.Parent
                                end
                            end
                        end
                        return target
                    end
                    world = ClosestPart().Parent.Parent
                    function ClosestPart1()
                        local dist = math.huge
                        local target = nil
                        for i,v in pairs(game:GetService("Workspace").Map.Stages.Boosts:GetChildren()) do
                            if tostring(v.Name) == tostring(world) then
                                for i,v1 in pairs(v:GetChildren()) do
                                    for i,v2 in pairs(v1:GetChildren()) do
                                        for i,v3 in pairs(v2:GetChildren()) do
                                            if v3.ClassName == "TouchTransmitter" then
                                                if v3.Parent.Transparency ~= 1 then
                                                    local magnitude = (v3.Parent.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                                                    if magnitude < dist then
                                                        dist = magnitude
                                                        target = v3.Parent
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return target
                    end
                end
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(ClosestPart1().Position)
                end)
            else
                allow = true
                world = ""
            end
        end
    end)
end)

while wait() do
    if AutoClickerv1 == true then
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Activate_Punch"})
    end
end