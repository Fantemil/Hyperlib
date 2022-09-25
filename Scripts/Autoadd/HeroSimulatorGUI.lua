pcall(function()
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Hero Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
 
b:Toggle("AutoKillMobs",function(bool)
    shared.toggle = bool
    AutoKillMobs = bool
end)

b:Toggle("AutoAttack",function(bool)
    shared.toggle = bool
    AutoAttack = bool
end)

f:Toggle("AutoPower",function(bool)
    shared.toggle = bool
    AutoPower = bool
end)

e:Toggle("AntiAfk",function(boosl)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Fps Boost",function()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

u:Button("MaGiXx#2325",function()
    setclipboard("MaGiXx#2325")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K2SA5BUQnq")
end)

u:Button("awdas#8777",function()
    setclipboard("awdas#8777")
end)

while wait() do
    if AutoKillMobs == true then
        game.workspace.Gravity = 0
        hrp = game.Players.LocalPlayer.Character.PrimaryPart
        for i,v in pairs(workspace.NPCs:GetChildren()) do
            if AutoKillMobs == true then
                if v:FindFirstChild('Head') and v:FindFirstChild('HumanoidRootPart') then
                    oldtime = tick()
                    repeat
                        hrp.CFrame = v:FindFirstChild('HumanoidRootPart').CFrame *CFrame.new(0,9,11)
                        game:GetService("RunService").RenderStepped:wait()
                        local args = {
                            [1] = "attack0Hit",
                            [2] = v,
                            [3] = CFrame.new(v:FindFirstChild('HumanoidRootPart').Position, Vector3.new(-1, -1, -1)),
                            [4] = CFrame.new(v:FindFirstChild('HumanoidRootPart').Position, Vector3.new(-1, -1, -1)),
                            [5] = CFrame.new(v:FindFirstChild('HumanoidRootPart').Position, Vector3.new(-1, -1, -1))
                        }
                        spawn(function()
                            game:GetService("ReplicatedStorage").Services.Communication.event.serverRf:InvokeServer(unpack(args))
                        end)
                    until not v or v:FindFirstChild('HumanoidRootPart') == nil or v:FindFirstChild('Head') == nil or v:FindFirstChild('Humanoid') == nil or v:FindFirstChild('Humanoid').Health <=1 or tick()-oldtime >=15
                end
            end
        end
    else
        game.workspace.Gravity = 196.5
    end
    
    if AutoAttack == true then
        spawn(function()
            local args = {
                [1] = "attack0"
            }
            game:GetService("ReplicatedStorage").Services.Communication.event.serverRf:InvokeServer(unpack(args))
        end)
    end
    
    if AutoPower == true then
        spawn(function()
            game:GetService("ReplicatedStorage").Services.Communication.event.serverRf:InvokeServer("increaseMultiplier","Power",1)
        end)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end
end)