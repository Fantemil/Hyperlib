local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Mini Metro")
local f = w:CreateFolder("Builds")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedItem = "GasStation"
Item = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Infrastructure:GetChildren()) do
    if not table.find(Item,v.Name) then
        table.insert(Item,v.Name)
    end
end

f:Toggle("AutoPress",function(bool)
    shared.toggle = bool
    AutoPress = bool
end)

f:Dropdown("Select Item",Item,true,function(a)
    SelectedItem = a
end)

f:Button("Build",function()
    function ClosestPart()
        local dist = math.huge
        local target = nil
        for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
            local magnitude = (v.TycoonCityDisplay.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
            if magnitude < dist then
                dist = magnitude
                target = v.Name
            end
        end
        return target
    end
    Tycoon = ClosestPart()
    for i,v in pairs(game:GetService("Workspace").Tycoons[Tycoon].Airspace:GetChildren()) do
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(5,-18.4,-5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(0,-18.4,-5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(-5,-18.4,-5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(-5,-18.4,0))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(0,-18.4,0))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(5,-18.4,0))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(-5,-18.4,5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(0,-18.4,5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
        
        local ohString1 = "Place"
        local ohInstance2 = game:GetService("ReplicatedStorage").Infrastructure[SelectedItem]
        local ohCFrame3 = CFrame.new(v.CFrame.Position + Vector3.new(5,-18.4,5))
        game:GetService("ReplicatedStorage").shared.InvokePlacement:InvokeServer(ohString1, ohInstance2, ohCFrame3)
    end
end)

f:Button("Sell All",function()
    function ClosestPart()
        local dist = math.huge
        local target = nil
        for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
            local magnitude = (v.TycoonCityDisplay.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
            if magnitude < dist then
                dist = magnitude
                target = v.Name
            end
        end
        return target
    end
    Tycoon = ClosestPart()
    for i,v1 in pairs(game:GetService("Workspace").Tycoons[Tycoon].Buildings:GetChildren()) do
        local args = {
            [1] = {
                [1] = v1,
            },
        }
        game:GetService("ReplicatedStorage").shared.DestroyObject:FireServer(unpack(args))
    end
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

if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
    game:GetService("CoreGui").PurchasePromptApp:Destroy()
end

while wait() do
    spawn(function()
        if AutoPress == true then
            function ClosestPart()
                local dist = math.huge
                local target = nil
                for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
                    local magnitude = (v.TycoonCityDisplay.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                    if magnitude < dist then
                        dist = magnitude
                        target = v.Name
                    end
                end
                return target
            end
            Tycoon = ClosestPart()
            for i,v in pairs(game:GetService("Workspace").Tycoons[Tycoon]:GetDescendants()) do
                if v.Name == "Buildings" then
                    for i,v1 in pairs(v:GetDescendants()) do
                        if v1.ClassName == "ProximityPrompt" then
                            for i,v2 in pairs(v1.Parent:GetDescendants()) do
                                if v2.ClassName == "Part" or v2.ClassName == "MeshPart" then
                                    fireproximityprompt(v1,0)
                                    fireproximityprompt(v1,1)
                                end
                            end
                        end
                    end
                end
            end
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