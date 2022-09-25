 local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Combat Rift")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local world = "1"
--Toggle

b:Toggle("AutoTpMobs",function(bool)
    shared.toggle = bool
    AutoTpMobs = bool
end)

b:Dropdown("World 1",{"1","2","3","4","5","6","7","8","9"},true,function(Value) 
    world = Value
end)

b:Toggle("AutoAttack",function(bool)
    shared.toggle = bool
    AutoAttack = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoTpKOTH",function(bool)
    shared.toggle = bool
    AutoTpKOTH = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
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
    if AutoTpKOTH == true then
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").BuildingMapStuff.Map.Map4.Functional.KOTH.Model.MeshPart.CFrame.Position + Vector3.new(0,25,0))
        end
    end
    
    if AutoSell == true then
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").BuildingMapStuff.Map.Map1.MapDecoration.Fountain.Sell.ColorTransition.CFrame.Position + Vector3.new(0,0,50))
            wait(.1)
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").BuildingMapStuff.Map.Map1.MapDecoration.Fountain.Sell.ColorTransition.CFrame.Position + Vector3.new(0,0,0))
                wait(.1)
            end
        end
    end
    
    if AutoAttack == true then
        if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid") then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            game:service'VirtualUser':ClickButton1(Vector2.new())
        end
    end
    
    if AutoTpMobs == true then
        for i,v in pairs(game:GetService("Workspace").EnemySpawnRegions:GetChildren()) do
            function tp()
                for i,v1 in pairs(v:GetChildren()) do
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.HumanoidRootPart.CFrame.Position + Vector3.new(0,0,3))
                    end
                end
            end
            
            if world == "1" then
                if v.Name == "1" then
                    tp()
                end
            end
            
            if world == "2" then
                if v.Name == "2" then
                    tp()
                end
            end
            
            if world == "3" then
                if v.Name == "3" then
                    tp()
                end
            end
        
            if world == "4" then
                if v.Name == "4" then
                    tp()
                end
            end
            
            if world == "5" then
                if v.Name == "5" then
                    tp()
                end
            end
            
            if world == "6" then
                if v.Name == "6" then
                    tp()
                end
            end
            
            if world == "7" then
                if v.Name == "7" then
                    tp()
                end
            end
            
            if world == "8" then
                if v.Name == "8" then
                    tp()
                end
            end
            
            if world == "9" then
                if v.Name == "9" then
                    tp()
                end
            end
        end
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end