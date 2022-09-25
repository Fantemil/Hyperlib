print("----------------------------------------------")
print("-------------------loading--------------------")
print("----------------------------------------------")
game.StarterGui:SetCore('SendNotification', {
    Title = "Script Executed";
    Text = "Loading...";
    duration = 5;
})
local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local ClientPlayer = game.Players.LocalPlayer
local ViewSize = Vector2.new(workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y)
local FOV = 200
local Aim = false
local AimTgle = false
local chams = false
local Jump = 40
local Speed = 16
local fly = false
local mouse = ClientPlayer:GetMouse()
local PlayerOverRide = false
local ChamTrans = 50
local Raytracing = false
local trans = 100
local gunmod1 = false 
local gunmod2 = false 
local gunmod3 = false 
local gunmod4 = false 
local gunmod5 = false 
local BoxEsp = false 
local BoxEspTrans = 50
local plrToAim = nil 
local falling = false 
local Name_ESP = false 
local Players = game.Players:GetPlayers()
local Move = workspace.Map.Geometry

local MainUI = UILibrary.Load("Unit 1968 haxx")
local Aimbot = MainUI.AddPage("Aimbot", false)
local AimToggle = Aimbot.AddToggle("Aimbot", false, function(b)
    AimTgle = b
end)

local raycheck = Aimbot.AddToggle("Wall check", false, function(b)
    Raytracing = b
end)
local FovTrans = Aimbot.AddSlider("FOV transparency", {Min = 0, Max = 100, Def = 100}, function(b)
    trans = b 
end)

local FOVSlider = Aimbot.AddSlider("Aimbot FOV", {Min = 10, Max = 800, Def = 200}, function(n)
    FOV = n
end)
local Visuals = MainUI.AddPage("Visuals", false)
local Chams = Visuals.AddToggle("Chams", false, function(b)
    chams = b
end)
local ESPOFBOX = Visuals.AddToggle("Box ESP", false, function(b)
    BoxEsp = b
end)
local ChamTransparencySlider = Visuals.AddSlider("Transparency", {Min = 0, Max = 100, Def = 50}, function(n)
    ChamTrans = n
end)
local NameESP = Visuals.AddToggle("Name ESP", false, function(b)
    Name_ESP = b
end)
local GunMod = MainUI.AddPage("Gun mod", false)
local InfAmmo = GunMod.AddToggle("Infinite ammo", false, function(b)
    gunmod1 = b
end)
local spred = GunMod.AddToggle("No spread", false, function(b)
    gunmod2 = b
end)
local bulletdrop = GunMod.AddToggle("No bullet drop or bullet travel time", false, function(b)
    gunmod3 = b
end)
local recoilbgone = GunMod.AddToggle("No recoil", false, function(b)
    gunmod4 = b
end)
local Extrafirerate = GunMod.AddToggle("Full auto and increased firerate", false, function(b)
    gunmod5 = b
end)
local Player = MainUI.AddPage("Other", false)
local POR = Player.AddToggle("Enable player over rides", false, function(b)
    PlayerOverRide = b
end)
local Walkspeed = Player.AddSlider("Walks speed", {Min = 16, Max = 800, Def = 16}, function(n)
    Speed = n 
end)
local JumpPower = Player.AddSlider("Jump power", {Min = 40, Max = 800, Def = 40}, function(n)
    Jump = n 
end)
local zoom = Player.AddToggle("Fly/Noclip", false, function(b)
    fly = b
end)
local NoFall = Player.AddToggle("No fall damage", false, function(b)
    falling = b
end)

local Credits = MainUI.AddPage("Credits", false)
local maker = Credits.AddLabel("Script made by Flappy#5578.")

local Circle = Drawing.new("Circle")
Circle.Visible = true
Circle.Transparency = 1 
Circle.Color = Color3.new(1, 1, 1)
Circle.Thickness = 1 
Circle.NumSides = 64 
Circle.Filled = false

local function W2S(part)
    local pos, inView = workspace.CurrentCamera:WorldToViewportPoint(part)
    return Vector2.new(pos.X, pos.Y), inView
end

local function FindClosestPlayerToCrosshair()
    local closest = nil
    local dist = math.huge 
    for i,v in pairs(Players) do
        if v.Character then
            local position, todraw = W2S(v.Character:WaitForChild("Head").Position)
            if todraw then
                local distance = ((ViewSize)/2 - position).magnitude
                if distance < dist and distance < FOV and v.Character:WaitForChild("Humanoid").Health > 0 and ClientPlayer.TeamColor.Number ~= v.TeamColor.Number then
                    if Raytracing then 
                        local raycast = Ray.new(workspace.CurrentCamera.CFrame.Position, v.Character.Head.Position - workspace.CurrentCamera.CFrame.Position)
                        
                        local ignore = workspace.CurrentCamera:GetChildren()
                        table.insert(ignore, ClientPlayer.Character)
                        table.insert(ignore, workspace.Map.Ignore)
                        
                        local hitPart, hitPosition, hitNormal = workspace:FindPartOnRayWithIgnoreList(raycast, ignore)
                        
                        if hitPart ~= nil then
                            if hitPart:IsDescendantOf(v.Character) then
                                dist = distance
                                closest = v.Character.Head
                            end
                        end
                    else  
                        dist = distance
                        closest = v.Character.Head
                    end
                end
            end
        end
    end
    return closest
end

local function namesp()
    for i,v in pairs(game.CoreGui:GetChildren()) do 
        if v.Name == "ESP NAME BOI" then 
            v:Destroy()
        end
    end
    if not Name_ESP then 
        return false 
    end 
    for _,v in pairs(Players) do
        if v.Name == ClientPlayer.Name then
            
        elseif Name_ESP and v.Character:WaitForChild("HumanoidRootPart") then
            if v.Character then
                if v.Character:WaitForChild("Humanoid").Health > 0 and v.Character:WaitForChild("Head") then
                    local a = Instance.new("BillboardGui",game.CoreGui)
                    a.Size = UDim2.new(1,0, 2,0)
                    a.Adornee = v.Character.Head
                    a.AlwaysOnTop = true    
                    a.Name = "ESP NAME BOI"
                    local b = Instance.new("TextLabel",a)
                    ----------------------------------------------
                    b.Position = UDim2.new(0,0, 0,0)
                    b.Size = UDim2.new(1,0, 1,0)
                    b.BackgroundTransparency = 1
                    b.Text = v.Name
                    
                    b.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                end
            end
        end
    end
    return true 
end

local function boxesp() 
    
    for i,v in pairs(game.CoreGui:GetChildren()) do 
        if v.Name == "ESP BOI" then 
            v:Destroy()
        end
    end
    if not BoxEsp then 
        return false 
    end 
    for _,v in pairs(Players) do
        if v.Name == ClientPlayer.Name then
            
        elseif BoxEsp and v.Character then
            if v.Character:WaitForChild("Humanoid").Health > 0 then
                local a = Instance.new("BillboardGui",game.CoreGui)
                a.Size = UDim2.new(4,0, 5.5,0)
                a.Adornee = v.Character.HumanoidRootPart
                a.AlwaysOnTop = true    
                a.Name = "ESP BOI"
                local b = Instance.new("Frame",a)
                ----------------------------------------------
                b.Position = UDim2.new(0,0, 1/7,0)
                b.Size = UDim2.new(1,0, 1,0)  
                b.BackgroundTransparency = ChamTrans / 100
                b.BorderSizePixel = 2
                b.BackgroundColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            end
        end
    end
    return true 
end

function esp()
    local p = Players
    
    for i,v in pairs(ClientPlayer.PlayerGui:GetChildren()) do
        if v:IsA('Folder') and (game:GetService('Players'):FindFirstChild(v.Name) or v:FindFirstChildOfClass("BoxHandleAdornment")) then
            v:Destroy()
        end
    end
    if chams == false then
        return false
    end
    
    for i,v in pairs(p) do
        if workspace:FindFirstChild(v.Name) and (v.Character:FindFirstChild('Head')) then
            if v ~= ClientPlayer then
                local folder = Instance.new('Folder',ClientPlayer.PlayerGui)
                folder.Name = v.Name
                if v.Character.Humanoid.Health > 0 and chams then
                    for _,part in pairs(v.Character:GetChildren()) do
                        if part:IsA('BasePart') then
                            local adorn = Instance.new('BoxHandleAdornment',folder)
                            adorn.Name = v.Name
                            if part.Name ~= "Head" then
                                adorn.Size = part.Size
                            else
                                adorn.Size = (part.Size)-Vector3.new(part.Size.X/4,0,0)
                            end
                            adorn.Adornee = part
                            adorn.AlwaysOnTop = true
                            adorn.ZIndex = 5
                            adorn.Transparency = ChamTrans / 100
                            local c = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                            adorn.Color3 = c 
                            local adorn2 = Instance.new('BoxHandleAdornment',folder)
                            adorn2.Name = v.Name 
                            if part.Name ~= "Head" then
                                adorn2.Size = part.Size*1.1
                            else
                                adorn2.Size = (part.Size*1.1)-Vector3.new(part.Size.X/4,0,0)
                            end
                        end
                    end
                end
            end
        end
    end
    
    return true 
end

mouse.Button2Down:connect( function()
    Aim = true 
end)

mouse.Button2Up:connect( function()
    Aim = false
end)

game:GetService("RunService").RenderStepped:connect(function()
    ViewSize = Vector2.new(workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y)
    plrToAim = FindClosestPlayerToCrosshair()
    
    Circle.Radius = FOV
    
    Circle.Position = ViewSize / 2 
    Circle.Transparency = trans / 100
    --plrToAim ~= nil or plrToAim == "Head"
    
    if ClientPlayer.Backpack.CLIENT ~= nil then
    
        local env = getsenv(ClientPlayer.Backpack.CLIENT)
        if env then 
            if env.equipped == "melee" or env.equipped == "grenade" then

            else 
                if gunmod1 then 
                    env.ammocount = 30
                    env.ammocount2 = 8
                    env.ammocount3 = 69
                end
                if gunmod2 then 
                    env.spread = 0
                end
                if gunmod3 then 
                    env.gravity = 0 
                    env.bulletspeedm = 8
                end
                if env.gun and env.gun.Name ~= melee then 
                    if env.gun.Recoil ~= nil and gunmod4 then 
                        env.gun.Recoil.Value = 0 
                        env.gun.LRecoil.Value = 0
                        env.gun.RRecoil.Value = 0 
                    end
                    if env.gun.FireRate ~= nil and gunmod5 then
                        env.gun.Automatic.Value = true 
                        env.gun.FireRate.Value = 0.001
                        env.bolted = true
                        env.primarymode = "automatic"
                    end
                end
            end 
        end 
    end
    if plrToAim ~= nil then
        if Aim and AimTgle then 
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, plrToAim.Position)
        end
    end
    if PlayerOverRide then
        ClientPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Speed
        ClientPlayer.Character:WaitForChild("Humanoid").JumpPower = Jump
    end
    if fly then 
        ClientPlayer.Character.Humanoid:ChangeState(11)
    end 
end)

local mt = getrawmetatable(game)
local namecall = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(Self,...)
 local Args = {...}
 local name = getnamecallmethod()

 if not checkcaller() and Self == game.ReplicatedStorage.Events.Fall and name == "FireServer" and falling then 
  table.insert(Args, 1, 0)
  return namecall(Self, Args)
 end

 return namecall(Self,...)
end)

setreadonly(mt, true)

game.StarterGui:SetCore('SendNotification', {
    Title = "Script Executed";
    Text = "Done!";
    duration = 3;
})

while wait(0.2) do
    Players = game.Players:GetPlayers();
    if ClientPlayer.Character then
        esp()
    end
    namesp()
    boxesp()
end