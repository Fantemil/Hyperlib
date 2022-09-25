local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("YouTube Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoClick",function(bool)
    shared.toggle = bool
    AutoClick = bool
end)

b:Toggle("AutoEdit",function(bool)
    shared.toggle = bool
    AutoEdit = bool
end)

f:Button("Camera Best",function()
    game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.sunburst.Visible = false
    Money = game:GetService("Players").LocalPlayer.Money.Value
    CamerasPrices = {}
    for i,v in pairs(game:GetService("Workspace").Cameras:GetChildren()) do
        if v.ClassName == "Model" then
            if v.colorPart.BrickColor == BrickColor.new('Persimmon') then
                fireclickdetector(v.colorPart.ClickDetector, 0)
                fireclickdetector(v.colorPart.ClickDetector, 1)
                wait(.5)
                a = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Buy.Price.Text,",","")
                if not table.find(CamerasPrices,a) then
                    table.insert(CamerasPrices,a)
                end
                wait(.5)
                firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Close.MouseButton1Click)
            end
        end
    end
    local number = game:GetService("Players").LocalPlayer.Money.Value
    local closest = CamerasPrices[1] 
    for i, currentNum in pairs(CamerasPrices) do
     local currentDiff, closestDiff = math.abs(currentNum - number), math.abs(closest - number)
     if currentDiff < closestDiff then
      closest = currentNum
     end
    end
    wait(1)
    for i,v in pairs(game:GetService("Workspace").Cameras:GetChildren()) do
        if v.ClassName == "Model" then
            if v.colorPart.BrickColor == BrickColor.new('Persimmon') then
                fireclickdetector(v.colorPart.ClickDetector, 0)
                fireclickdetector(v.colorPart.ClickDetector, 1)
                wait(.5)
                a = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Buy.Price.Text,",","")
                if tonumber(a) == tonumber(closest) then
                    if tonumber(closest) >= tonumber(game:GetService("Players").LocalPlayer.Money.Value) then
                        local CoreGui = game:GetService("StarterGui")
                        CoreGui:SetCore("SendNotification", {
                         Title = "Maxgat5";
                         Text = "My Smart System Detected That You Need "..closest.." More Money To Buy The Next Camera";
                         Duration = 30;
                        })
                        CoreGui:SetCore("SendNotification", {
                         Title = "How The System Works?";
                         Text = "It's Takes Your Money And The Price Of The Items And Checks The Closest Number Between Both Numbers.";
                         Duration = 30;
                        })
                    end
                    print(closest)
                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Buy.MouseButton1Click)
                    wait(.5)
                end
                wait(.5)
                firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Close.MouseButton1Click)
            end
        end
    end
    wait(1)
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Close.MouseButton1Click)
end)

f:Button("Camera All",function()
    game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.sunburst.Visible = false
    for i,v in pairs(game:GetService("Workspace").Cameras:GetChildren()) do
        if v.ClassName == "Model" then
            if v.colorPart.BrickColor == BrickColor.new('Persimmon') then
                fireclickdetector(v.colorPart.ClickDetector, 0)
                fireclickdetector(v.colorPart.ClickDetector, 1)
                wait(.5)
                firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Buy.MouseButton1Click)
            end
        end
    end
    wait(1)
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.cameraPopup.Frame.Close.MouseButton1Click)
end)
    
f:Button("Computer All",function()
    game:GetService("Players").LocalPlayer.PlayerGui.computerPopup.sunburst.Visible = false
    for i,v in pairs(game:GetService("Workspace").Computers:GetChildren()) do
        if v.ClassName == "Model" then
            if v.colorPart.BrickColor == BrickColor.new('Persimmon') then
                fireclickdetector(v.colorPart.ClickDetector, 0)
                fireclickdetector(v.colorPart.ClickDetector, 1)
                wait(.5)
                firesignal(game:GetService("Players").LocalPlayer.PlayerGui.computerPopup.Frame.Buy.MouseButton1Click)
            end
        end
    end
    wait(1)
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.computerPopup.Frame.Close.MouseButton1Click)
end)

f:Button("SD Card All",function()
    game:GetService("ReplicatedStorage").buySD2:FireServer(game:GetService("Players").LocalPlayer.Money.Value)
end)

f:Button("SD Card Half",function()
    game:GetService("ReplicatedStorage").buySD2:FireServer(math.floor(game:GetService("Players").LocalPlayer.Money.Value/2))
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

pcall(function()
    game:GetService("Players").LocalPlayer.PlayerGui.SDfull:Destroy()
end)

while wait() do
    spawn(function()
        if AutoClick == true then
            game:GetService("ReplicatedStorage").fileMade:FireServer()
        end
    end)
    
    spawn(function()
        if AutoEdit == true then
            bruh1 = {}
            for i,v in pairs(workspace.Studios[game.Players.LocalPlayer.Name .."'s Studio"].Items:GetChildren()) do
                for i,v1 in pairs(v:GetChildren()) do
                    if v1.ClassName == "NumberValue" then
                        if v1.Name == "Keyboard" then
                            if not table.find(bruh1,tonumber(v1.Value)) then
                                table.insert(bruh1,tonumber(v1.Value))
                            end
                        end
                    end
                end
            end
            for i,v in pairs(workspace.Studios[game.Players.LocalPlayer.Name .."'s Studio"].Items:GetChildren()) do
                for i,v1 in pairs(v:GetChildren()) do
                    if v1.ClassName == "NumberValue" then
                        if v1.Name == "Keyboard" then
                            if v1.Value == math.max(unpack(bruh1)) then
                                spawn(function()
                                    game:GetService("ReplicatedStorage").singleVideo:FireServer(v1.Parent)
                                end)
                            end
                        end
                    end
                end
            end
        end
    end)
    
    spawn(function()
        if AutoEdit == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.popsCash:GetChildren()) do
                if v.ClassName == "Frame" then
                    spawn(function()
                        if AutoEdit == true then
                            v:Destroy()
                        end
                    end)
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