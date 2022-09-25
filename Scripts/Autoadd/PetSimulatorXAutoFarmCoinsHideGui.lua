--//Settings//--
CoinHealth = 75
--//Script//--
--Variables
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Pet Simulator X")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local camera = game.Workspace.CurrentCamera
local localplayer = game:GetService("Players").LocalPlayer
local mouse = localplayer:GetMouse()
local Hp = CoinHealth
--Toggle
b:Toggle("AutoFarmCoins",function(bool)
    shared.toggle = bool
    AutoFarmCoins = bool
end)

e:Toggle("HideGui",function(bool)
    shared.toggle = bool
    HideGui = bool
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while true do
    wait()
    if AutoFarmCoins == true then
        function ClosestCoin()
            local dist = math.huge
            local target = nil
            for i,v in pairs(game:GetService("Workspace").Debris.Pickups:GetChildren()) do
                if v:FindFirstChild("MaxHealth") then
                    if v.MaxHealth.Value == Hp then
                        local magnitude = (v.Position - localplayer.Character.Head.Position).magnitude
                        if magnitude < dist then
                            dist = magnitude
                            target = v
                        end
                    else
                        v:Destroy()
                    end
                end
            end
            return target
        end
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
        camera.CFrame = CFrame.new(camera.CFrame.Position,ClosestCoin().Position)
        localplayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestCoin().CFrame.Position + Vector3.new(0,0,0))
        if mouse.Target.Name == ClosestCoin().Name then
            mouse1press() wait() mouse1release()
        end
    else
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 60
    end
    
    if HideGui == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
            v.Enabled = false
        end
    else 
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
            v.Enabled = true
        end
    end
end