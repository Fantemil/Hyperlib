--https://www.roblox.com/games/5985232436/Infectious-Smile
local tableofconnections = {}
local infparts = {}
local disinfparts = {}
local sadparts = {}
local weaponsizes = {}
local ragdollparts = {}
local supportgetgenv = false
local disinf = true
local inf = true
local disablegp = false
local sad = true
local ragdoll = true
local antigrab = false
local tunnel = false
local getkeys = false
local instakillidnfect = false
local killgateswitcher = nil
local cooldown = nil
local loopclick = false
local loopclickpart = Instance.new("Part")
loopclickpart.Anchored = true
loopclickpart.CanCollide = false
loopclickpart.Color = Color3.fromRGB(0,255,0)
loopclickpart.Shape = Enum.PartType.Ball
loopclickpart.Size = Vector3.new(2,2,2)
loopclickpart.Transparency = 1
loopclickpart.Material = Enum.Material.SmoothPlastic
loopclickpart.Parent = workspace
local weaponsscale,weaponsscale2 = nil
local success,err = pcall(function()
    if typeof(getgenv()) == "table" then
        supportgetgenv = true
    end
end)

if workspace.Map:FindFirstChild("AntiHack") then
    workspace.Map.AntiHack:Destroy()
end

function correctpart(part)
    if not part:IsA("BasePart") then return nil end
    if ((part.Parent.Name == "Infector" or part.Parent.Name == "Infector 2.0" or part.Parent.Name == "Infector(You can reposition, reclone, or resize the camera or the white infection area") or (part.Color == Color3.fromRGB(248,248,248) and part.Material == Enum.Material.Neon)) and (part:FindFirstChild("InfectScript") or part:FindFirstChild("camera")) then
        return "inf"
    elseif (part.Color == Color3.fromRGB(213, 115, 61) or (part.Name == "Void" and part.Color == Color3.fromRGB(0,0,0)) or (part.Color == Color3.fromRGB(0,0,0) and part.Parent == workspace.Map.ConstantTerrain) or part.Name == "SmilerKillBrick" or part:FindFirstChild("KillAll") or part.Name == "SawKill" or ((part.Color == Color3.fromRGB(255,0,0) and part.Name ~= "Button" and (part.Parent.Name ~= "ButtonSystem" and part.Parent.Parent.Name ~= "SpotlightMap") and not part.Parent:FindFirstChild("Spotlights")) and part.Name == "Laser") or part.Parent:FindFirstChild("Human")) or (part.Name == "Lava" or part.Name == "SewageWater" or part.Name == "Water" or part.Name == "WaterBottom" or part.Name == "Weight" or part.Name:lower() == "killpart" or part.Name:lower() == "killbrick" or part.Name == "KillRegion" or part.Name:lower() == "killall" or part.Name == "KillZone" or part.Name == "Spearhead" or part:FindFirstChild("FreezeScript") or (part.Parent.Name == "LaserGates") or (part.Name == "LavaBrick") or (part.Name == "Spike") or (part.Parent.Name == "Spinners" and (part.Color == Color3.fromRGB(255,255,0) or part.Color == Color3.fromRGB(255,89,89)))) then
        return "disinf"
    elseif (part:FindFirstChild("ConvertToHuman") and part:FindFirstChild("TouchInterest")) then
        return "sad"
    elseif part.Size == Vector3.new(10,10,10) and part.Shape == Enum.PartType.Ball and part:FindFirstChild("TouchInterest") then -- size is 10, shape is ball, parent is system
        print("found the ragdoll part.")
        return "ragdoll"
    else
        return nil
    end
end
function dopart(part,disinforinf,sadornot,ragdollornot)
    if part:IsA("Model") then
        for i,part in pairs(part:GetChildren()) do
            if part:IsA("Part") then
                part.CanTouch = false
                if disinforinf then
                    if not infparts[part] then
                        infparts[part] = true
                    end
                elseif disinforinf == false then
                    if not disinfparts[part] then
                        disinfparts[part] = true
                    end
                elseif sadornot then
                    if not sadparts[part] then
                        sadparts[part] = true
                    end
                elseif ragdollornot then
                    if not ragdollparts[part] then
                        ragdollparts[part] = true
                    end
                end
            end
        end
    else
        part.CanTouch = false
        if disinforinf then
            if not infparts[part] then
                infparts[part] = true
            end
        elseif not disinforinf then
            if not disinfparts[part] then
                disinfparts[part] = true
            end
        elseif sadornot then
            if not sadparts[part] then
                sadparts[part] = true
            end
        elseif ragdollornot then
            if not ragdollparts[part] then
                ragdollparts[part] = true
            end
        end--     look i dont know why this is blue on solara but
        table.insert(tableofconnections,part:GetPropertyChangedSignal("Color"):Connect(function()
            if correctpart(part) == "inf" then
                if disinfparts[part] then
                    disinfparts[part] = nil
                end
                if sadparts[part] then
                    sadparts[part] = nil
                end
                if ragdollparts[part] then
                    ragdollparts[part] = nil
                end
                infparts[part] = true
                part.CanTouch = inf
            elseif correctpart(part) == "disinf" then
                if infparts[part] then
                    infparts[part] = nil
                end
                if sadparts[part] then
                    sadparts[part] = nil
                end
                if ragdollparts[part] then
                    ragdollparts[part] = nil
                end
                disinfparts[part] = true
                part.CanTouch = disinf
            elseif correctpart(part) == "sad" then
                if infparts[part] then
                    infparts[part] = nil
                end
                if disinfparts[part] then
                    disinfparts[part] = nil
                end
                if ragdollparts[part] then
                    ragdollparts[part] = nil
                end
                sadparts[part] = true
                part.CanTouch = sad
            elseif correctpart(part) == "ragdoll" then
                if disinfparts[part] then
                    disinfparts[part] = nil
                end
                if sadparts[part] then
                    sadparts[part] = nil
                end
                if infparts[part] then
                    infparts[part] = nil
                end
                if ragdollparts[part] then
                    ragdollparts[part] = nil
                end
                ragdollparts[part] = true
                part.CanTouch = ragdoll
            end
        end))
    end
end

function dopart2(v)
    if not v.Parent then return end
    if v:IsA("Model") and v.Name == "Tunnels" and not tunnel then
        tunnel = true
        print("tunnel found")
        table.insert(tableofconnections,v.DescendantAdded:Connect(function(v)
            if (v.Name == "Car" or v.Name == "Van") and v:FindFirstChild("PP") and not disinf then
                v:Destroy()
            end
        end))
    elseif v.Parent.Name == "KillGateSwitcher" and v.Name == "Gate" and not killgateswitcher then
        killgateswitcher = v
        if not disinf then
            killgateswitcher.CanTouch = false
        end
    end
    local result = correctpart(v)
    if result == nil then return end
    if result == "inf" and not inf then
        dopart(v,true)
    elseif result == "disinf" and not disinf then
        dopart(v,false)
    elseif result == "sad" and not sad then
        dopart(v,nil,true)
    elseif result == "ragdoll" and not ragdoll then
        dopart(v,nil,nil,true)
    end
end

table.insert(tableofconnections,game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    if not ragdoll then
        char:WaitForChild("Ragdoll",math.huge)
        char.Ragdoll:WaitForChild("LocalRagdollScript",math.huge)
        char.Ragdoll.LocalRagdollScript.Enabled = false
    end
    char:WaitForChild("Humanoid",math.huge)
    local oldspeed = char.Humanoid.WalkSpeed
    table.insert(tableofconnections,char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if not ragdoll then
            if char.Humanoid.WalkSpeed <= 5 then
                char.Humanoid.WalkSpeed = oldspeed
            else
                oldspeed = char.Humanoid.WalkSpeed
            end
        end
    end))
    local oldjumppower = char.Humanoid.JumpPower
    table.insert(tableofconnections,char.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        if not ragdoll then
            if char.Humanoid.JumpPower <= 20 then
                char.Humanoid.JumpPower = oldjumppower
            else
                oldjumppower = char.Humanoid.JumpPower
            end
        end
    end))
end))
local char = game.Players.LocalPlayer.Character
if not ragdoll then
    char:WaitForChild("Ragdoll",math.huge)
    char.Ragdoll:WaitForChild("LocalRagdollScript",math.huge)
    char.Ragdoll.LocalRagdollScript.Enabled = false
end
char:WaitForChild("Humanoid",math.huge)
local oldspeed = char.Humanoid.WalkSpeed
table.insert(tableofconnections,char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    if not ragdoll then
        if char.Humanoid.WalkSpeed <= 5 then
            char.Humanoid.WalkSpeed = oldspeed
        else
            oldspeed = char.Humanoid.WalkSpeed
        end
    end
end))
local oldjumppower = char.Humanoid.JumpPower
table.insert(tableofconnections,char.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    if not ragdoll then
        if char.Humanoid.JumpPower < 50 then
            char.Humanoid.JumpPower = oldjumppower
        else
            oldjumppower = char.Humanoid.JumpPower
        end
    end
end))
table.insert(tableofconnections,workspace.Map.System.ChildAdded:Connect(function(v)
    table.insert(tableofconnections,v.DescendantAdded:Connect(function(v)
        if correctpart(v) == "inf" and not inf then
            dopart(v,true)
        elseif correctpart(v) == "disinf" and not disinf then
            dopart(v,false)
        elseif correctpart(v) == "sad" and not sad then
            dopart(v,nil,true)
        elseif correctpart(v) == "ragdoll" and not ragdoll then
            print("found ragdoll?")
            dopart(v,nil,nil,true)
        end
    end))
    for i=1,5 do
        wait(1) 
        for i,v in pairs(v:GetDescendants()) do
            if correctpart(v) == "inf" and not inf then
                dopart(v,true)
            elseif correctpart(v) == "disinf" and not disinf then
                dopart(v,false)
            elseif correctpart(v) == "sad" and not sad then
                dopart(v,nil,true)
            elseif correctpart(v) == "ragdoll" and not ragdoll then
                dopart(v,nil,nil,true)
            end
        end
    end
end))
table.insert(tableofconnections,workspace.Map.KillBricks.ChildAdded:Connect(function(v)
    v.Transparency = 0
end))

local gui = Instance.new("ScreenGui")
if supportgetgenv then
    pcall(function()
        if getgenv().infectioussmileguilol and getgenv().infectioussmileguidelete then
            getgenv().infectioussmileguidelete()
        end
        getgenv().infectioussmileguilol = gui
    end)
end
gui.Name = ""
for i=1,50 do
    gui.Name = gui.Name..tostring(math.random(1,9))
end
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local mainframe = Instance.new("Frame")
mainframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainframe.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe.Size = UDim2.new(.4,0,.6,0)
mainframe.Position = UDim2.new(.3,0,.2)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Parent = gui
local constraint = Instance.new("UIAspectRatioConstraint")
constraint.AspectType = Enum.AspectType.ScaleWithParentSize
constraint.Parent = mainframe
constraint.AspectRatio = 1.5
local mainsection = Instance.new("Frame")
mainsection.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainsection.BorderColor3 = Color3.fromRGB(255,255,255)
mainsection.Size = UDim2.new(.75,0,1,0)
mainsection.Position = UDim2.new(.25,0,0,0)
mainsection.Parent = mainframe
local extrasection = Instance.new("Frame")
extrasection.BackgroundColor3 = Color3.fromRGB(50,50,50)
extrasection.BorderColor3 = Color3.fromRGB(255,255,255)
extrasection.Size = UDim2.new(.75,0,1,0)
extrasection.Position = UDim2.new(.25,0,0,0)
extrasection.Parent = mainframe
extrasection.Visible = false
local keyloggersection = Instance.new("ScrollingFrame")
keyloggersection.BackgroundColor3 = Color3.fromRGB(50,50,50)
keyloggersection.BorderColor3 = Color3.fromRGB(255,255,255)
keyloggersection.Size = UDim2.new(.75,0,.85,0)
keyloggersection.Position = UDim2.new(.25,0,.15,0)
keyloggersection.CanvasSize = UDim2.new(0,0,8,0)
keyloggersection.Parent = mainframe
keyloggersection.Visible = false
local gridlayout = Instance.new("UIGridLayout")
gridlayout.CellPadding = UDim2.new(0,0,0.01,0)
gridlayout.CellSize = UDim2.new(.32,0,.025,0)
gridlayout.Parent = keyloggersection

local title = Instance.new("TextLabel")
title.Size = UDim2.new(.75,0,.1,0)
title.Position = UDim2.new(.25,0,0,0)
title.Text = "Infectious Smile"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,255,255)
title.BackgroundColor3 = Color3.fromRGB(50,50,50)
title.BorderColor3 = Color3.fromRGB(255,255,255)
title.Parent = mainframe
local credits = Instance.new("TextLabel")
credits.Size = UDim2.new(.75,0,.05,0)
credits.Position = UDim2.new(.25,0,.1,0)
credits.Text = "By 2AreYouMental110"
credits.TextScaled = true
credits.TextColor3 = Color3.fromRGB(255,255,255)
credits.BackgroundColor3 = Color3.fromRGB(50,50,50)
credits.BorderColor3 = Color3.fromRGB(255,255,255)
credits.Parent = mainframe

local infhitbutton = Instance.new("TextButton")
infhitbutton.Size = UDim2.new(.2,0,.2,0)
infhitbutton.Position = UDim2.new(.1,0,.2,0)
infhitbutton.Text = "Infection Parts Work: ON"
infhitbutton.TextScaled = true
infhitbutton.TextColor3 = Color3.fromRGB(255,255,255)
infhitbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
infhitbutton.BorderColor3 = Color3.fromRGB(255,255,255)
infhitbutton.Parent = mainsection
table.insert(tableofconnections,infhitbutton.MouseButton1Click:Connect(function()
    inf = not inf
    if inf then
        infhitbutton.Text = "Infection Parts Work: ON"
        for v,i in pairs(infparts) do
            if v.Parent ~= nil then
                v.CanTouch = true
            end
        end
    else
        infhitbutton.Text = "Infection Parts Work: OFF"
        for i,v in pairs(workspace.Map.Infectors:GetChildren()) do
            dopart(v,true)
        end
        for i,v in pairs(workspace.Map:GetDescendants()) do
            dopart2(v)
        end
    end
end))
local disinfhitbutton = Instance.new("TextButton")
disinfhitbutton.Size = UDim2.new(.2,0,.2,0)
disinfhitbutton.Position = UDim2.new(.4,0,.2,0)
disinfhitbutton.Text = "Kill Parts Work: ON"
disinfhitbutton.TextScaled = true
disinfhitbutton.TextColor3 = Color3.fromRGB(255,255,255)
disinfhitbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
disinfhitbutton.BorderColor3 = Color3.fromRGB(255,255,255)
disinfhitbutton.Parent = mainsection
table.insert(tableofconnections,disinfhitbutton.MouseButton1Click:Connect(function()
    disinf = not disinf
    if killgateswitcher then
        killgateswitcher.CanTouch = disinf
    end
    if disinf then
        disinfhitbutton.Text = "Kill Parts Work: ON"
        for v,i in pairs(disinfparts) do
            if v.Parent ~= nil then
                v.CanTouch = true
            end
        end
    else
        disinfhitbutton.Text = "Kill Parts Work: OFF"
        for i,v in pairs(workspace.Map:GetDescendants()) do
            dopart2(v)
        end
    end
end))
local getcoinsbutton = Instance.new("TextButton")
getcoinsbutton.Size = UDim2.new(.2,0,.2,0)
getcoinsbutton.Position = UDim2.new(.7,0,.2,0)
getcoinsbutton.Text = "Get Coins"
getcoinsbutton.TextScaled = true
getcoinsbutton.TextColor3 = Color3.fromRGB(255,255,255)
getcoinsbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
getcoinsbutton.BorderColor3 = Color3.fromRGB(255,255,255)
getcoinsbutton.Parent = mainsection
table.insert(tableofconnections,getcoinsbutton.MouseButton1Click:Connect(function()
    local oldcframe = game.Players.LocalPlayer.Character:GetPivot()
    for i,v in pairs(workspace.Map:GetDescendants()) do
        if v.Name == "SmileCoin" and v:FindFirstChild("TouchInterest") then
            game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
            wait(.1)
        end
    end
    for i,v in pairs(workspace.Particles:GetChildren()) do
        if v.Name == "SmileCoin" and v:FindFirstChild("TouchInterest") then
            game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
            wait(.1)
        end
    end
    game.Players.LocalPlayer.Character:PivotTo(oldcframe)
end))
local getstuffbutton = Instance.new("TextButton")
getstuffbutton.Size = UDim2.new(.2,0,.2,0)
getstuffbutton.Position = UDim2.new(.1,0,.45,0)
getstuffbutton.Text = "Get Stuff"
getstuffbutton.TextScaled = true
getstuffbutton.TextColor3 = Color3.fromRGB(255,255,255)
getstuffbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
getstuffbutton.BorderColor3 = Color3.fromRGB(255,255,255)
getstuffbutton.Parent = mainsection
table.insert(tableofconnections,getstuffbutton.MouseButton1Click:Connect(function()
    local cframe = game.Players.LocalPlayer.Character:GetPivot()
    for i,v in pairs(workspace.Map:GetDescendants()) do
        if string.find(v.Name:lower(),"collection") then
            local hitbox = v:FindFirstChild("HitBox")
            local handle = v:FindFirstChild("Handle")
            local collide = {}
            for i,v in pairs(v:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                    table.insert(collide,v)
                end
            end
            local oldcframe = v:GetPivot()
            v:PivotTo(cframe)
            task.spawn(function()
                wait(.05)
                v:PivotTo(oldcframe)
                for i,v in pairs(collide) do
                    v.CanCollide = true
                end
            end)
        end
    end
    game.Players.LocalPlayer.Character:PivotTo(cframe)
end))
local disableragdollbutton = Instance.new("TextButton")
disableragdollbutton.Size = UDim2.new(.2,0,.2,0)
disableragdollbutton.Position = UDim2.new(.4,0,.45,0)
disableragdollbutton.Text = "Ragdoll: ON"
disableragdollbutton.TextScaled = true
disableragdollbutton.TextColor3 = Color3.fromRGB(255,255,255)
disableragdollbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
disableragdollbutton.BorderColor3 = Color3.fromRGB(255,255,255)
disableragdollbutton.Parent = mainsection
table.insert(tableofconnections,disableragdollbutton.MouseButton1Click:Connect(function()
    ragdoll = not ragdoll
    if ragdoll then
        disableragdollbutton.Text = "Ragdoll: ON"
        for v,i in pairs(ragdollparts) do
            if v.Parent ~= nil then
                v.CanTouch = true
            end
        end
    else
        disableragdollbutton.Text = "Ragdoll: OFF"
        if game.Players.LocalPlayer.Character:FindFirstChild("Ragdoll") then
            game.Players.LocalPlayer.Character.Ragdoll.LocalRagdollScript.Enabled = false
            game.Players.LocalPlayer.Character.Ragdoll.Enabled = false
        end
        for i,v in pairs(workspace.Map:GetDescendants()) do
            dopart2(v)
        end
    end
end))
local getkeybutton = Instance.new("TextButton")
getkeybutton.Size = UDim2.new(.2,0,.2,0)
getkeybutton.Position = UDim2.new(.7,0,.45,0)
getkeybutton.Text = "Get Keys"
getkeybutton.TextScaled = true
getkeybutton.TextColor3 = Color3.fromRGB(255,255,255)
getkeybutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
getkeybutton.BorderColor3 = Color3.fromRGB(255,255,255)
getkeybutton.Parent = mainsection
table.insert(tableofconnections,getkeybutton.MouseButton1Click:Connect(function()
    for i,v in pairs(workspace:GetDescendants()) do
        if not v:IsA("Tool") and (v.Name == "Key" or v.Name == "Red Key" or v.Name == "Green Key") and (v.Parent.Name ~= "KeySystem" or v:FindFirstChild("CollectScript")) then
            v.CanCollide = false
            v.CFrame = game.Players.LocalPlayer.Character:GetPivot()
            wait(.1)
        end
    end
end))

local sadinfbutton = Instance.new("TextButton")
sadinfbutton.Size = UDim2.new(.2,0,.2,0)
sadinfbutton.Position = UDim2.new(.1,0,.7,0)
sadinfbutton.Text = "Sad Parts Work: ON"
sadinfbutton.TextScaled = true
sadinfbutton.TextColor3 = Color3.fromRGB(255,255,255)
sadinfbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
sadinfbutton.BorderColor3 = Color3.fromRGB(255,255,255)
sadinfbutton.Parent = mainsection
table.insert(tableofconnections,sadinfbutton.MouseButton1Click:Connect(function()
    sad = not sad
    if sad then
        sadinfbutton.Text = "Sad Parts Work: ON"
        for v,i in pairs(sadparts) do
            if v.Parent ~= nil then
                v.CanTouch = true
            end
        end
    else
        sadinfbutton.Text = "Sad Parts Work: OFF"
        for i,v in pairs(workspace.Map:GetDescendants()) do
            dopart2(v)
        end
    end
end))
local autogetkeysbutton = Instance.new("TextButton")
autogetkeysbutton.Size = UDim2.new(.2,0,.2,0)
autogetkeysbutton.Position = UDim2.new(.4,0,.7,0)
autogetkeysbutton.Text = "Auto Get Keys: OFF"
autogetkeysbutton.TextScaled = true
autogetkeysbutton.TextColor3 = Color3.fromRGB(255,255,255)
autogetkeysbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
autogetkeysbutton.BorderColor3 = Color3.fromRGB(255,255,255)
autogetkeysbutton.Parent = mainsection
table.insert(tableofconnections,autogetkeysbutton.MouseButton1Click:Connect(function()
    getkeys = not getkeys
    if getkeys then
        autogetkeysbutton.Text = "Auto Get Keys: ON"
        for i,v in pairs(workspace:GetDescendants()) do
            if not v:IsA("Tool") and (v.Name == "Key" or v.Name == "Red Key" or v.Name == "Green Key") and (v.Parent.Name ~= "KeySystem" or v:FindFirstChild("CollectScript")) then
                v.CanCollide = false
                v.CFrame = game.Players.LocalPlayer.Character:GetPivot()
                wait(.1)
            end
        end
    else
        autogetkeysbutton.Text = "Auto Get Keys: OFF"
    end
end))

local raidedhideoutbutton = Instance.new("TextButton")
raidedhideoutbutton.Size = UDim2.new(.2,0,.2,0)
raidedhideoutbutton.Position = UDim2.new(.7,0,.7,0)
raidedhideoutbutton.Text = "Copy (and print) Raided Hideout Code"
raidedhideoutbutton.TextScaled = true
raidedhideoutbutton.TextColor3 = Color3.fromRGB(255,255,255)
raidedhideoutbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
raidedhideoutbutton.BorderColor3 = Color3.fromRGB(255,255,255)
raidedhideoutbutton.Parent = mainsection
table.insert(tableofconnections,raidedhideoutbutton.MouseButton1Click:Connect(function()
    local code
    for i,v in pairs(workspace.Map.System["Raided Hideout"].Safe.hiddenCodes:GetChildren()) do
        if v:IsA("Part") then
            if v.Transparency == 0 then
                code = v.SurfaceGui.Code.Text
            end
        end
    end
    if code == nil then
        code = workspace.Map.System["Raided Hideout"]:FindFirstChild("safeCode",true).Value
    end
    if code ~= nil then
        setclipboard(tostring(code))
        print(code)
    end
end))

local mainsectionbutton = Instance.new("TextButton")
mainsectionbutton.Size = UDim2.new(.25,0,.1,0)
mainsectionbutton.Text = "Main"
mainsectionbutton.TextScaled = true
mainsectionbutton.TextColor3 = Color3.fromRGB(255,255,255)
mainsectionbutton.BackgroundColor3 = Color3.fromRGB(100,100,100)
mainsectionbutton.BorderColor3 = Color3.fromRGB(255,255,255)
mainsectionbutton.Parent = mainframe
table.insert(tableofconnections,mainsectionbutton.MouseButton1Click:Connect(function()
    mainsection.Visible = true
    keyloggersection.Visible = false
    extrasection.Visible = false
end))

local extrasectionbutton = Instance.new("TextButton")
extrasectionbutton.Size = UDim2.new(.25,0,.1,0)
extrasectionbutton.Position = UDim2.new(0,0,.1,0)
extrasectionbutton.Text = "Extra"
extrasectionbutton.TextScaled = true
extrasectionbutton.TextColor3 = Color3.fromRGB(255,255,255)
extrasectionbutton.BackgroundColor3 = Color3.fromRGB(100,100,100)
extrasectionbutton.BorderColor3 = Color3.fromRGB(255,255,255)
extrasectionbutton.Parent = mainframe
table.insert(tableofconnections,extrasectionbutton.MouseButton1Click:Connect(function()
    mainsection.Visible = false
    keyloggersection.Visible = false
    extrasection.Visible = true
end))
local keyloggersectionbutton = Instance.new("TextButton")
keyloggersectionbutton.Size = UDim2.new(.25,0,.1,0)
keyloggersectionbutton.Position = UDim2.new(0,0,.2,0)
keyloggersectionbutton.Text = "Key Logger"
keyloggersectionbutton.TextScaled = true
keyloggersectionbutton.TextColor3 = Color3.fromRGB(255,255,255)
keyloggersectionbutton.BackgroundColor3 = Color3.fromRGB(100,100,100)
keyloggersectionbutton.BorderColor3 = Color3.fromRGB(255,255,255)
keyloggersectionbutton.Parent = mainframe
table.insert(tableofconnections,keyloggersectionbutton.MouseButton1Click:Connect(function()
    mainsection.Visible = false
    extrasection.Visible = false
    keyloggersection.Visible = true
end))

local antigrabbutton = Instance.new("TextButton")
antigrabbutton.Size = UDim2.new(.2,0,.2,0)
antigrabbutton.Position = UDim2.new(.1,0,.2,0)
antigrabbutton.Text = "Anti-Grab: WORKING ON IT"
antigrabbutton.TextScaled = true
antigrabbutton.TextColor3 = Color3.fromRGB(255,255,255)
antigrabbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
antigrabbutton.BorderColor3 = Color3.fromRGB(255,255,255)
antigrabbutton.Parent = extrasection
table.insert(tableofconnections,antigrabbutton.MouseButton1Click:Connect(function()
    antigrabbutton.Text = "Anti-Grab: I SAID IM WORKING ON IT"
    wait(1)
    antigrabbutton.Text = "Anti-Grab: WORKING ON IT"
end))

local cooldowntextbox = Instance.new("TextBox")
cooldowntextbox.Size = UDim2.new(.2,0,.2,0)
cooldowntextbox.Position = UDim2.new(.4,0,.2,0)
cooldowntextbox.Text = ""
cooldowntextbox.PlaceholderText = "Put cooldown for weapons and grab here"
cooldowntextbox.TextScaled = true
cooldowntextbox.TextColor3 = Color3.fromRGB(255,255,255)
cooldowntextbox.BackgroundColor3 = Color3.fromRGB(50,50,50)
cooldowntextbox.BorderColor3 = Color3.fromRGB(255,255,255)
cooldowntextbox.Parent = extrasection
table.insert(tableofconnections,cooldowntextbox.FocusLost:Connect(function()
    cooldown = tonumber(cooldowntextbox.Text)
    for i,tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if tool:IsA("Tool") and cooldown and tool:FindFirstChild("Cooldown") then
            tool.Cooldown.Value = cooldown
        end
    end
    for i,tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") and cooldown and tool:FindFirstChild("Cooldown") then
            tool.Cooldown.Value = cooldown
        end
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Infected") and cooldown then
        game.Players.LocalPlayer.Character.Infected.Infect.Cooldown.Value = cooldown
    end
end))

local function dotool(tool)
    if (tool.Parent == game.Players.LocalPlayer or game.Players:GetPlayerFromCharacter(tool.Parent) == game.Players.LocalPlayer) and tool:IsA("Tool") and (weaponsscale or weaponsscale2) and tool:FindFirstChild("Cooldown") then
        if tool:FindFirstChild("Hitbox") or tool:FindFirstChild("HitBox") then
            local part = tool:FindFirstChild("Hitbox") or tool:FindFirstChild("HitBox")
            if not weaponsizes[tool.Name] then
                weaponsizes[tool.Name] = part.Size
            end
            part.Transparency = .5
            if weaponsscale2 then
                part.Size = weaponsscale2
            end
            if weaponsscale then
                part.Size = weaponsizes[tool.Name] * weaponsscale
            end
        elseif tool:FindFirstChild("BodyAttach") then
            if not weaponsizes[tool.Name] then
                weaponsizes[tool.Name] = tool.BodyAttach.Size
            end
            if weaponsscale2 then
                tool.BodyAttach.Size = weaponsscale2
            end
            if weaponsscale then
                tool.BodyAttach.Size = weaponsizes[tool.Name] * weaponsscale
            end
        elseif tool.Name == "Handle" then
            if not weaponsizes[tool.Name] then
                weaponsizes[tool.Name] = tool.Handle.Size
            end
            if weaponsscale2 then
                tool.Handle.Size = weaponsscale2
            end
            if weaponsscale then
                tool.Handle.Size = weaponsizes[tool.Name] * weaponsscale
            end
        elseif tool:FindFirstChildWhichIsA("BasePart") then
            local part = tool:FindFirstChildWhichIsA("BasePart")
            if part then
                if not weaponsizes[tool.Name] then
                    weaponsizes[tool.Name] = part.Size
                end
                if weaponsscale2 then
                    part.Size = weaponsscale2
                end
                if weaponsscale then
                    part.Size = weaponsizes[tool.Name] * weaponsscale
                end
            end
        end
    end
end

local scaleweaponsbutton = Instance.new("TextBox")
scaleweaponsbutton.Size = UDim2.new(.2,0,.2,0)
scaleweaponsbutton.Position = UDim2.new(.7,0,.2,0)
scaleweaponsbutton.Text = ""
scaleweaponsbutton.PlaceholderText = "Scale for weapons here"
scaleweaponsbutton.TextScaled = true
scaleweaponsbutton.TextColor3 = Color3.fromRGB(255,255,255)
scaleweaponsbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
scaleweaponsbutton.BorderColor3 = Color3.fromRGB(255,255,255)
scaleweaponsbutton.Parent = extrasection
table.insert(tableofconnections,scaleweaponsbutton.FocusLost:Connect(function()
    weaponsscale = tonumber(scaleweaponsbutton.Text)
    for i,tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        dotool(tool)
    end
    for i,tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        dotool(tool)
    end
end))

local instakillinfectbutton = Instance.new("TextButton")
instakillinfectbutton.Size = UDim2.new(.2,0,.2,0)
instakillinfectbutton.Position = UDim2.new(.1,0,.45,0)
instakillinfectbutton.Text = "Instant Kill When Infecting (KILLS YOU ALSO): OFF"
instakillinfectbutton.TextScaled = true
instakillinfectbutton.TextColor3 = Color3.fromRGB(255,255,255)
instakillinfectbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
instakillinfectbutton.BorderColor3 = Color3.fromRGB(255,255,255)
instakillinfectbutton.Parent = extrasection
table.insert(tableofconnections,instakillinfectbutton.MouseButton1Click:Connect(function()
    instakillinfect = not instakillinfect
    if instakillinfect then
        instakillinfectbutton.Text = "Instant Kill When Infecting (KILLS YOU ALSO): ON"
    else
        instakillinfectbutton.Text = "Instant Kill When Infecting (KILLS YOU ALSO): OFF"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end))

local disablegamepassbutton = Instance.new("TextButton")
disablegamepassbutton.Size = UDim2.new(.2,0,.2,0)
disablegamepassbutton.Position = UDim2.new(.4,0,.45,0)
disablegamepassbutton.Text = "Disable Gamepass Button: OFF"
disablegamepassbutton.TextScaled = true
disablegamepassbutton.TextColor3 = Color3.fromRGB(255,255,255)
disablegamepassbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
disablegamepassbutton.BorderColor3 = Color3.fromRGB(255,255,255)
disablegamepassbutton.Parent = extrasection
table.insert(tableofconnections,disablegamepassbutton.MouseButton1Click:Connect(function()
    disablegp = not disablegp
    if disablegp then
        disablegamepassbutton.Text = "Disable Gamepass Button: ON"
        workspace.Map.HumanBase.Gamepasses.Button.CanTouch = false
    else
        disablegamepassbutton.Text = "Disable Gamepass Button: OFF"
        workspace.Map.HumanBase.Gamepasses.Button.CanTouch = true
    end
end))

local scaleweapons2button = Instance.new("TextBox")
scaleweapons2button.Size = UDim2.new(.2,0,.2,0)
scaleweapons2button.Position = UDim2.new(.7,0,.45,0)
scaleweapons2button.Text = ""
scaleweapons2button.PlaceholderText = "Scale for weapons here (xyz)"
scaleweapons2button.TextScaled = true
scaleweapons2button.TextColor3 = Color3.fromRGB(255,255,255)
scaleweapons2button.BackgroundColor3 = Color3.fromRGB(50,50,50)
scaleweapons2button.BorderColor3 = Color3.fromRGB(255,255,255)
scaleweapons2button.Parent = extrasection
table.insert(tableofconnections,scaleweapons2button.FocusLost:Connect(function()
    local txt = scaleweapons2button.Text
    local xyz = nil
    if string.find(txt,",") then
        xyz = string.split(txt,",")
    elseif string.find(txt," ") then
        xyz = string.split(txt," ")
    end
    if xyz then
        for i,v in pairs(xyz) do v = tonumber(v) end
        weaponsscale2 = Vector3.new(table.unpack(xyz))
        for i,tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            dotool(tool)
        end
        for i,tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            dotool(tool)
        end
    end
end))

local loopclickbutton = Instance.new("TextButton")
loopclickbutton.Size = UDim2.new(.2,0,.2,0)
loopclickbutton.Position = UDim2.new(.1,0,.7,0)
loopclickbutton.Text = "Select Click Position: OFF"
loopclickbutton.TextScaled = true
loopclickbutton.TextColor3 = Color3.fromRGB(255,255,255)
loopclickbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
loopclickbutton.BorderColor3 = Color3.fromRGB(255,255,255)
loopclickbutton.Parent = extrasection
local mouse = game.Players.LocalPlayer:GetMouse()
local posgoto = nil
table.insert(tableofconnections,mouse.Button1Down:Connect(function()
    if loopclick then
        local hit = CFrame.new(mouse.hit.Position)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            hit += Vector3.new(0,game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y*1.5,0)
            loopclickpart.CFrame = hit
            loopclickpart.Transparency = 0
            posgoto = hit
        end
    end
end))
table.insert(tableofconnections,loopclickbutton.MouseButton1Click:Connect(function()
    loopclick = not loopclick
    if loopclick then
        loopclickbutton.Text = "Select Click Position: ON"
    else
        loopclickbutton.Text = "Select Click Position: OFF"
    end
end))
local loopgotobutton = Instance.new("TextButton")
loopgotobutton.Size = UDim2.new(.2,0,.2,0)
loopgotobutton.Position = UDim2.new(.4,0,.7,0)
loopgotobutton.Text = "Loop goto click position"
loopgotobutton.TextScaled = true
loopgotobutton.TextColor3 = Color3.fromRGB(255,255,255)
loopgotobutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
loopgotobutton.BorderColor3 = Color3.fromRGB(255,255,255)
loopgotobutton.Parent = extrasection
table.insert(tableofconnections,loopgotobutton.MouseButton1Click:Connect(function()
    if posgoto then
        local pos = posgoto
        posgoto = nil
        loopclickpart.Transparency = 1
        local timebefore = tick()
        local posdiff = (game.Players.LocalPlayer.Character:GetPivot().Position - pos.Position).Magnitude
        repeat
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        until tick() > timebefore+(posdiff/21) -- fastest is 25 but like
    end
end))

function logchar(char)
    if char.Name == game.Players.LocalPlayer.Name then
        print("char is plr")
        char:WaitForChild("Humanoid",math.huge)
        char:WaitForChild("HumanoidRootPart",math.huge)
        table.insert(tableofconnections,char.HumanoidRootPart.ChildAdded:Connect(function(v)
            if instakillinfect then
                if v:IsA("AlignPosition") then
                    char.Humanoid.JumpPower = 999999999999999999999999
                    repeat
                        wait()
                        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        char.Humanoid.JumpPower = 999999999999999999999999
                        char.Humanoid.PlatformStand = false
                    until not v or char.Humanoid or char.Humanoid.Health <= 0
                    if not v then
                        char.Humanoid.JumpPower = 50
                    end
                end
            end
        end))
    end
end

function dologs(plr)
    plr:WaitForChild("Backpack",5)
    local plrkeys = {}
    local keylogframe = Instance.new("Frame")
    local plrtext = Instance.new("TextLabel")
    local whitekey = Instance.new("TextLabel")
    local redkey = Instance.new("TextLabel")
    local greenkey = Instance.new("TextLabel")
    local wkamt = 0
    local rkamt = 0
    local gkamt = 0
    keylogframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
    keylogframe.BorderColor3 = Color3.fromRGB(255,255,255)
    keylogframe.Name = plr.Name
    plrtext.Size = UDim2.new(1,0,.5,0)
    plrtext.TextScaled = true
    plrtext.Text = plr.Name.." / "..plr.DisplayName
    plrtext.BackgroundColor3 = Color3.fromRGB(50,50,50)
    plrtext.BorderSizePixel = 0
    plrtext.TextColor3 = Color3.fromRGB(255,255,255)
    plrtext.Parent = keylogframe
    table.insert(tableofconnections,plr:GetPropertyChangedSignal("Team"):Connect(function()
        if plr.Team == game.Teams.Human then
            plrtext.TextColor3 = Color3.fromRGB(255,255,255)
        else
            plrtext.TextColor3 = Color3.fromRGB(255,0,0)
        end
    end))
    if plr.Team == game.Teams.Human then
        plrtext.TextColor3 = Color3.fromRGB(255,255,255)
    else
        plrtext.TextColor3 = Color3.fromRGB(255,0,0)
    end
    whitekey.Size = UDim2.new(.33,0,.5,0)
    whitekey.Position = UDim2.new(0,0,.5,0)
    whitekey.TextScaled = true
    whitekey.Text = "White Keys: "..tostring(wkamt)
    whitekey.BackgroundColor3 = Color3.fromRGB(50,50,50)
    whitekey.BorderColor3 = Color3.fromRGB(255,255,255)
    whitekey.TextColor3 = Color3.fromRGB(255,255,255)
    whitekey.Parent = keylogframe
    redkey.Size = UDim2.new(.33,0,.5,0)
    redkey.Position = UDim2.new(.33,0,.5,0)
    redkey.TextScaled = true
    redkey.Text = "Red Keys: "..tostring(rkamt)
    redkey.BackgroundColor3 = Color3.fromRGB(50,50,50)
    redkey.BorderColor3 = Color3.fromRGB(255,0,0)
    redkey.TextColor3 = Color3.fromRGB(255,255,255)
    redkey.Parent = keylogframe
    greenkey.Size = UDim2.new(.33,0,.5,0)
    greenkey.Position = UDim2.new(.66,0,.5,0)
    greenkey.TextScaled = true
    greenkey.Text = "Green Keys: "..tostring(gkamt)
    greenkey.BackgroundColor3 = Color3.fromRGB(50,50,50)
    greenkey.BorderColor3 = Color3.fromRGB(0,255,0)
    greenkey.TextColor3 = Color3.fromRGB(255,255,255)
    greenkey.Parent = keylogframe
    keylogframe.Parent = keyloggersection
    local hasgiantpotion = false
    local giantpotionamt = 0
    local function dokey(v)
        if v:IsA("Tool") and (v.Name == "Key" or v.Name == "Red Key" or v.Name == "Green Key") and not plrkeys[v] then
            plrkeys[v] = true
            table.insert(tableofconnections,v.AncestryChanged:Connect(function()
                if plrkeys[v] and (not plr:FindFirstChild("Backpack") or v.Parent ~= plr.Backpack) and (not plr.Character or v.Parent ~= plr.Character) then
                    plrkeys[v] = nil
                    if v.Name == "Key" then
                        wkamt -= 1
                        whitekey.Text = "White Keys: "..tostring(wkamt)
                    elseif v.Name == "Red Key" then
                        rkamt -= 1
                        redkey.Text = "Red Keys: "..tostring(rkamt)
                    elseif v.Name == "Green Key" then
                        gkamt -= 1
                        greenkey.Text = "Green Keys: "..tostring(gkamt)
                    end
                end
            end))
            if v.Name == "Key" then
                wkamt += 1
                whitekey.Text = "White Keys: "..tostring(wkamt)
            elseif v.Name == "Red Key" then
                rkamt += 1
                redkey.Text = "Red Keys: "..tostring(rkamt)
            elseif v.Name == "Green Key" then
                gkamt += 1
                greenkey.Text = "Green Keys: "..tostring(gkamt)
            end
        elseif v:IsA("Tool") and v.Name == "Giant Potion" and not hasgiantpotion then
            hasgiantpotion = true
            giantpotionamt += 1
            whitekey.TextColor3 = Color3.fromRGB(136,28,255)
            redkey.TextColor3 = Color3.fromRGB(136,28,255)
            greenkey.TextColor3 = Color3.fromRGB(136,28,255)
            table.insert(tableofconnections,v.AncestryChanged:Connect(function()
                if hasgiantpotion == true and (not plr:FindFirstChild("Backpack") or v.Parent ~= plr.Backpack) and (not plr.Character or v.Parent ~= plr.Character) then
                    hasgiantpotion = false
                    giantpotionamt -= 1
                    whitekey.TextColor3 = Color3.fromRGB(255,255,255)
                    redkey.TextColor3 = Color3.fromRGB(255,255,255)
                    greenkey.TextColor3 = Color3.fromRGB(255,255,255)
                end
            end))
        end
    end
    if plr:FindFirstChild("Backpack") then
        for i,v in pairs(plr.Backpack:GetChildren()) do
            dokey(v)
            dotool(v)
        end
    end
    task.spawn(function()
        repeat wait() until plr.Character
        logchar(plr.Character)
        for i,v in pairs(plr.Character:GetChildren()) do
            dokey(v)
            dotool(v)
        end
    end)
    table.insert(tableofconnections,plr.CharacterAdded:Connect(function(char)
        logchar(char)
        table.insert(tableofconnections,char.ChildAdded:Connect(function(v)
            dokey(v)
            dotool(v)
        end))
        for i,v in pairs(char:GetChildren()) do
            dokey(v)
            dotool(v)
        end
    end))
    table.insert(tableofconnections,plr.Backpack.ChildAdded:Connect(function(v)
        dokey(v)
        dotool(v)
    end))
    table.insert(tableofconnections,plr.ChildAdded:Connect(function(v)
        if v:IsA("Backpack") then
            table.insert(tableofconnections,v.ChildAdded:Connect(function(v)
                dokey(v)
                dotool(v)
            end))
        end
    end))
end

for i,v in pairs(game.Players:GetPlayers()) do
    dologs(v)
end
table.insert(tableofconnections,game.Players.PlayerAdded:Connect(function(plr)
    dologs(plr)
end))
table.insert(tableofconnections,game.Players.PlayerRemoving:Connect(function(plr)
    for i,v in pairs(keyloggersection:GetChildren()) do
        if v.Name == plr.Name then
            v:Destroy()
        end
    end
end))
table.insert(tableofconnections,game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    table.insert(tableofconnections,char.ChildAdded:Connect(function(tool)
        if tool:IsA("Tool") and cooldown and tool:FindFirstChild("Cooldown") then
            tool.Cooldown.Value = cooldown
        end
    end))
    char:WaitForChild("Infected",math.huge)
    char.Infected:WaitForChild("Infect",math.huge)
    char.Infected.Infect:WaitForChild("Cooldown",math.huge)
    if cooldown then
        char.Infected.Infect.Cooldown.Value = cooldown
    end
end))
table.insert(tableofconnections,workspace.Particles.ChildAdded:Connect(function(key)
    if getkeys and (key.Name == "Key" or key.Name == "Red Key" or key.Name == "Green Key") and (key.Parent.Name ~= "KeySystem" or key:FindFirstChild("CollectScript")) then
        repeat
            wait(.1)
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                key.CFrame = game.Players.LocalPlayer.Character:GetPivot()
            end
        until key.Parent ~= workspace.Particles
    end
end))

function guidelete()
    gui:Destroy()
    loopclickpart:Destroy()
    for i,v in pairs(tableofconnections) do
        if v then
            v:Disconnect()
        end
    end
    for v,i in pairs(infparts) do
        if v.Parent ~= nil then
            v.CanTouch = true
        end
    end
    for v,i in pairs(disinfparts) do
        if v.Parent ~= nil then
            v.CanTouch = true
        end
    end
    for v,i in pairs(sadparts) do
        if v.Parent ~= nil then
            v.CanTouch = true
        end
    end
    for v,i in pairs(ragdollparts) do
        if v.Parent ~= nil then
            v.CanTouch = true
        end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        for i,v in pairs(v.Backpack:GetChildren()) do
            if weaponsizes[v.Name] then
                if v:FindFirstChild("BodyAttach") then
                    v.BodyAttach.Size = weaponsizes[v.Name]
                elseif v.Name == "Handle" then
                    v.Handle.Size = weaponsizes[v.Name]
                elseif v:FindFirstChildWhichIsA("BasePart") then
                    local part = v:FindFirstChildWhichIsA("BasePart")
                    if part then
                        part.Size = weaponsizes[v.Name]
                    end
                end
            end
        end
        if v.Character then
            for i,v in pairs(v.Character:GetChildren()) do
                if v:IsA("Tool") and weaponsizes[v.Name] then
                    if v:FindFirstChild("BodyAttach") then
                        v.BodyAttach.Size = weaponsizes[v.Name]
                    elseif v.Name == "Handle" then
                        v.Handle.Size = weaponsizes[v.Name]
                    elseif v:FindFirstChildWhichIsA("BasePart") then
                        local part = v:FindFirstChildWhichIsA("BasePart")
                        part.Size = weaponsizes[v.Name]
                    end
                end
            end
        end
    end
    if killgqateswitcher then
        killgateswitcher.CanTouch = true
    end
end
if supportgetgenv then
    getgenv().infectioussmileguidelete = guidelete
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
         