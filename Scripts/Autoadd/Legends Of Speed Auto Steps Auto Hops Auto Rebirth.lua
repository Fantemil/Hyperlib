local VLib = loadstring(game:HttpGet("https://gitlab.com/L1ZOT/test-project/-/raw/main/PJM-GUI"))()
local Win = VLib:Window("Project Meow", "Speed of Legends")
local Main = Win:Tab("Main")
local Autofarm = Win:Tab("Autofarm")
local Credits = Win:Tab("Credits")

if game.workspace:FindFirstChild("ManahubPart") then
    
else
    local ManahubPart = Instance.new("Part")
    ManahubPart.Name = "ManahubPart"
    ManahubPart.Parent = game.Workspace
    ManahubPart.Anchored = true
    ManahubPart.Transparency = 0
    ManahubPart.Size = Vector3.new(30,-0.5,30)
    ManahubPart.Position = Vector3.new(-543.452, 2873.2, 324.647)
end

Main:Slider("WalkSpeed", 0, 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

Main:Slider("JumpPower", 0, 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)


Autofarm:Toggle("Auto Steps", false, function (t)
    getgenv().Autostep = t
    while wait() do
        if getgenv().Autostep == true then
                    pcall(function ()
                        for i = 1,20 do
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Red Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Blue Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                        end
                end)
             end
        end
end)

Autofarm:Toggle("Auto collect gems", false, function(t)
spawn(function()
    getgenv().AutocollectDiamonds = t
    while task.wait() do
    if getgenv().AutocollectDiamonds == true then
pcall(function()
    for i = 1,10 do
        local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            
            local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "Desert"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            
            local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "Magma City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
end)
end
end
end)
end)

Autofarm:Toggle("Hops Farm", false, function(t)
    getgenv().Autohops = t
    while task.wait() do
if getgenv().Autohops == true then
        for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
end)

Autofarm:Toggle("Safe Hops Farm", false, function(t)
    HoopsFarm = t
end)

spawn(function()
    while task.wait() do
        if HoopsFarm then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(.3)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(.3) do
        if HoopsFarm then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-547.52026, 2893.19995, 327.647003)
            end)
        end
    end
end)


Autofarm:Toggle("AutoRebirth", false, function(t)
spawn(function()
    getgenv().AutoRebirth = t
    while wait() do
    if getgenv().AutoRebirth == true then
        pcall(function ()
            local args = {
                [1] = "rebirthRequest"
            }
            
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
            local args = {
                [1] = "rebirthRequest"
            }
            
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
        end)
        end
    end
end)
end)

Autofarm:Button("Collect Chests", false, function(t)

    local args = {
        [1] = "groupRewards"
    }
    game:GetService("ReplicatedStorage").rEvents.groupRemote:InvokeServer(unpack(args))

    local args = {
        [1] = "Enchanted Chest"
    }
    
    game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(unpack(args))
    wait()
    local args = {
        [1] = workspace.rewardChests.rewardChest
    }
    
    game:GetService("ReplicatedStorage").rEvents.collectCourseChestRemote:InvokeServer(unpack(args))
end)




Credits:Button("LeadMarker#1219 & Karma#9368", function()
   
    setclipboard("https://discord.gg/97anmxFpkU")
    
end) 

Credits:Button("Mana#9724 & Septex#9788 (he is very hot)", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("UI Designer: Luke Marcus#4347", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("Project Meow Discord Server", function()
    setclipboard("https://discord.gg/97anmxFpkU")
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService('HttpService'):GenerateGUID(false),
                    args = {code = '97anmxFpkU'}
                })
            })
        end
end)

Credits:line()
Credits:Button("Destroy Gui", function()
    game.CoreGui:FindFirstChild("woof"):Destroy()
end)

Credits:Button("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)