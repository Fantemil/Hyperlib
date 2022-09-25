local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Food Magnet Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local world = "Spawn"
--Toggle
b:Toggle("AutoTpDrop",function(bool)
    shared.toggle = bool
    AutoTpDrop = bool
end)

b:Dropdown("World",{"Spawn","Desert Area","Lava Area","Autumn Area","Cemetery Area","Book Area","Mining Area","Abandoned Area","Neutral Area"},true,function(mob)
    world = mob
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Areas",function(bool)
    shared.toggle = bool
    Areas = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

f:Toggle("SuperRebirth",function(bool)
    shared.toggle = bool
    sr = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("No Tool Delay",function()
    game:GetService("Players").LocalPlayer["Player_Stats"]["Tool_Delay"].Value = nil
end)

e:Button("Tp Shop",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")["Client_Services"]["Point_Areas"].Shop.CFrame.Position + Vector3.new(0,0,0))
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if sr == true then
        game:GetService("ReplicatedStorage").Game_Service.Remotes_Event.Super_Rebirth:FireServer()
    end
    
    if Areas == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.AREAS:GetChildren()) do
            if v.Value == false then
                game:GetService("ReplicatedStorage").Game_Service.Remotes_Event.Buy_Area:FireServer(v.Name)
            end
        end
    end
    
    if Rebirth == true then
        game:GetService("ReplicatedStorage").Game_Service.Remotes_Event.Rebirth:FireServer()
    end
    
    if AutoTpDrop == true then
        for i,v in pairs(game:GetService("Workspace")["Client_Services"].Areas.Foods:GetChildren()) do
            if v.Name == world then
                local localplayer = game:GetService("Players").LocalPlayer
                function ClosestPart()
                    local dist = math.huge
                    local target = nil
                    for i,v1 in pairs(v:GetChildren()) do
                        if v1.Transparency == 0 then
                            local magnitude = (v1.Position - localplayer.Character.Head.Position).magnitude
                            if magnitude < dist then
                                dist = magnitude
                                target = v1
                            end
                        end
                    end
                    return target
                end
                if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid") then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ClosestPart().Position)
            end
        end
    end
        
    if AutoSell == true then
        wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")["Client_Services"]["Point_Areas"].Sell.CFrame.Position + Vector3.new(0,0,0))
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end