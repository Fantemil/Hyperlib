local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Strongman Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedItem = "Feather"
Items = {}
for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do
    if v.Name == "DraggableItems" then
        for i,v1 in pairs(v:GetChildren()) do
            if v1.ClassName == "MeshPart" or v1.ClassName == "Part" then
                table.insert(Items,v1.Title.Value)
            end
        end
    end
end

b:Toggle("Squats",function(bool)
    shared.toggle = bool
    Squats = bool
end)

b:Dropdown("Select Item",Items,true,function(mob)
    SelectedItem = mob
end)

b:Toggle("AutoTakeItem",function(bool)
    shared.toggle = bool
    AutoTakeItem = bool
end)

b:Toggle("AutoFinish",function(bool)
    shared.toggle = bool
    AutoFinish = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Delete Doors",function()
    for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do
        if string.find(v.Name,"Exit") then
            v:Destroy()
        end
    end
end)

e:Button("Speed",function()
    pcall(function()
        while wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
        end
    end)
end)

e:Button("Be Smaller",function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid:GetChildren()) do
                if v.ClassName == "NumberValue" then
                    v.Value = 0.5
                end
            end
        end)
    end
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)
 

while wait() do
    if AutoTakeItem == true then
        local a,b = pcall(function()
            for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do
                if v.Name == "ProximityPrompt" then
                    if v.Parent.Parent.Parent.Name == "DraggableItems" then
                        if v.Parent.Parent.Title.Value == SelectedItem then
                            local tweenInfo = TweenInfo.new(
                            0
                            )
                            local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                            v.Parent.CFrame.Position + Vector3.new(0,0,0)
                            )})
                            t:Play()
                            wait(.1)
                            fireproximityprompt(v,0)
                            fireproximityprompt(v,1)
                        end
                    end
                end
            end
        end)
        print(a,b)
    end
    
    if AutoFinish == true then
        local a,b = pcall(function()
            for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do
                if v.ClassName == "StringValue" then
                    if v.Value == SelectedItem then
                        if v.Parent.Parent.Name == "DraggableItems" then
                            if v.Parent.Parent.Parent:FindFirstChild("Goal") then
                                local tweenInfo = TweenInfo.new(
                                .1
                                )
                                local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                v.Parent.Parent.Parent.Goal.CFrame.Position + Vector3.new(0,0,15)
                                )})
                                t:Play()
                                wait(.1)
                            else
                                if v.Parent.Parent.Parent:FindFirstChild("BlackWhiteTileTexture") then
                                    local tweenInfo = TweenInfo.new(
                                    .1
                                    )
                                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                    v.Parent.Parent.Parent.BlackWhiteTileTexture.CFrame.Position + Vector3.new(0,0,15)
                                    )})
                                    t:Play()
                                    wait(.1)
                                end
                            end
                        end
                    end
                end
            end
        end)
        print(a,b)
    end
    
    spawn(function()
        if Squats == true then
            game:GetService("ReplicatedStorage").StrongMan_UpgradeStrength:InvokeServer()
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end