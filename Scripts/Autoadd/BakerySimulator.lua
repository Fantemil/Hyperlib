local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Bakery Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("Collect Ingredient",function(bool)
    shared.toggle = bool
    CollectIngredient = bool
end)

b:Toggle("Place Ingredients",function(bool)
    shared.toggle = bool
    PlaceIngredients = bool
end)

b:Toggle("Take Food",function(bool)
    shared.toggle = bool
    TakeFood = bool
end)

b:Toggle("Sell",function(bool)
    shared.toggle = bool
    Sell = bool
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

heheboi = {"https://youtu.be/dQw4w9WgXcQ"}
for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
    if v.ClassName == "TextLabel" then
        if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
            heheboi[1] = v.Text
        end
    end
end
if heheboi[1] == "https://youtu.be/dQw4w9WgXcQ" then
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == "Claim Bakery" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.CFrame.Position + Vector3.new(0,0,0))
            end
        end
    end
end

game:GetService('RunService').Stepped:connect(function()
    spawn(function()
        if CollectIngredient == true then
            string = game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomXP.Bottom.Cart.Frame.TextLabel.Text
            a,b = string:match("(.+)/(.+)")
            if a ~= b then
                for i,v in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
                    if a ~= b then
                        if CollectIngredient == true then
                            game:GetService("ReplicatedStorage").Remotes.TakeIngredient:FireServer(v)
                        end
                    end
                end
            end
        end
    end)
    
    spawn(function()
        if Sell == true then
            if game.Players.LocalPlayer.Character:FindFirstChild("Tray") then
                for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
                    if v.ClassName == "TextLabel" then
                        if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                            for i,v1 in pairs(v.Parent.Parent.Parent.Shelf:GetDescendants()) do
                                if v1.ClassName == "TouchTransmitter" then
                                    if Sell == true then
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                    end
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
end)

while wait() do
    if PlaceIngredients == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.ClassName == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Ovens:GetDescendants()) do
                        if v1.ClassName == "TouchTransmitter" then
                            if PlaceIngredients == true then
                                if string.find(v1.Parent.Parent.Screen.ContentsUI.Contents.Text,"/") then
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,5,0))
                                    wait(1)
                                    game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v1.Parent.Position)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                    wait(2)
                                    mouse1press() wait() mouse1release()
                                    wait(2)
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 18
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                else
                                    if v1.Parent.Parent.Screen.ContentsUI.Contents.Text == "Add Ingredients" then
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,5,0))
                                        wait(1)
                                        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v1.Parent.Position)
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                        wait(2)
                                        mouse1press() wait() mouse1release()
                                        wait(2)
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 18
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if TakeFood == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.ClassName == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.DisplayName.."'s Bakery" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Ovens:GetDescendants()) do
                        if v1.ClassName == "TouchTransmitter" then
                            if TakeFood == true then
                                if v1.Parent.Parent.Screen.ContentsUI.Contents.Text == "DONE" then
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    wait(1)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1.Parent, 1)
                                    wait(1)
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end