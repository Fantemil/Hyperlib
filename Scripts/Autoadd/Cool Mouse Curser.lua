    if game.CoreGui:FindFirstChild("mouseicon") then
        game.CoreGui.mouseicon:Destroy()
    end
    
    local UserInputService = game:GetService("UserInputService")
    local PlayerService = game:GetService("Players")
    local LocalPlayer = PlayerService.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    
    local mouseicon = Instance.new("ScreenGui")
    local MainFrame_mouseicon = Instance.new("Frame")
    local MF = Instance.new("ImageLabel")
    local MF_inner = Instance.new("ImageLabel")
    local MF_2 = Instance.new("ImageLabel")
    local MF_3 = Instance.new("ImageLabel")
    local MF_4 = Instance.new("ImageLabel")
    local MF_5 = Instance.new("ImageLabel")
    local MF_6 = Instance.new("ImageLabel")
    local MF_7 = Instance.new("ImageLabel")
    local MF_8 = Instance.new("ImageLabel")
    local MF_littleman = Instance.new("ImageLabel")
    
    mouseicon.Name = "mouseicon"
    mouseicon.Parent = game.CoreGui
    mouseicon.ResetOnSpawn = false
    mouseicon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MainFrame_mouseicon.Name = "MainFrame_mouseicon"
    MainFrame_mouseicon.Parent = mouseicon
    MainFrame_mouseicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainFrame_mouseicon.BackgroundTransparency = 1.000
    MainFrame_mouseicon.Position = UDim2.new(0.272905767, 0, 0.446202546, 0)
    MainFrame_mouseicon.Size = UDim2.new(0, 100, 0, 100)
    MainFrame_mouseicon.ZIndex = 10
    
    MF.Name = "MF"
    MF.Parent = MainFrame_mouseicon
    MF.AnchorPoint = Vector2.new(0.5, 0.5)
    MF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF.BackgroundTransparency = 1.000
    MF.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
    MF.Size = UDim2.new(0, 78, 0, 78)
    MF.Image = "rbxassetid://12742094187"
    MF.ImageColor3 = Color3.fromRGB(0, 0, 0)
    
    MF_inner.Name = "MF_inner"
    MF_inner.Parent = MainFrame_mouseicon
    MF_inner.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_inner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_inner.BackgroundTransparency = 1.000
    MF_inner.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
    MF_inner.Size = UDim2.new(0, 93, 0, 93)
    MF_inner.Image = "rbxassetid://12742111454"
    MF_inner.ImageColor3 = Color3.fromRGB(0, 0, 0)
    
    MF_littleman.Name = "MF_littleman"
    MF_littleman.Parent = MainFrame_mouseicon
    MF_littleman.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_littleman.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_littleman.BackgroundTransparency = 1
    MF_littleman.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
    MF_littleman.Size = UDim2.new(0, 20, 0, 20)
    MF_littleman.Image = "rbxassetid://12742029522"

    local MF = MF
    local MF2 = MF_inner
    
    MainFrame_mouseicon.Position = UDim2.new(0,0,0,0)
    UserInputService.MouseIconEnabled = false
    
    spawn(function()
        while task.wait() do
            MF.Rotation = MF.Rotation + 2
            MF2.Rotation = MF2.Rotation - 2
            task.wait(0.01)
        end
    end)

    spawn(function()
        while task.wait() do
            MainFrame_mouseicon.Position = UDim2.fromOffset(Mouse.X - 14, Mouse.Y - 33)
        end
    end)

    local MF_littlemanCorner = Instance.new("UICorner")
    
    MF_littlemanCorner.CornerRadius = UDim.new(1, 0)
    MF_littlemanCorner.Name = "MF_littlemanCorner"
    MF_littlemanCorner.Parent = MF_littleman
    
    MF_2.Name = "MF"
    MF_2.Parent = MF_littleman
    MF_2.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_2.BackgroundColor3 = Color3.fromRGB(94, 151, 42)
    MF_2.BackgroundTransparency = 0
    MF_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_2.Size = UDim2.new(1, -13, 1, -13)
    MF_2.Image = "rbxassetid://12742029522"
    local MF_2c = Instance.new("UICorner")
    
    MF_2c.CornerRadius = UDim.new(1, 0)
    MF_2c.Parent = MF_2
    
    MF_3.Name = "MF"
    MF_3.Parent = MF_littleman
    MF_3.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_3.BackgroundColor3 = Color3.fromRGB(94, 151, 42)
    MF_3.BackgroundTransparency = 0
    MF_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_3.Size = UDim2.new(1, -13, 1, -13)
    MF_3.Image = "rbxassetid://12742029522"
    local MF_3c = Instance.new("UICorner")
    
    MF_3c.CornerRadius = UDim.new(1, 0)
    MF_3c.Parent = MF_3
    
    MF_4.Name = "MF"
    MF_4.Parent = MF_littleman
    MF_4.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_4.BackgroundTransparency = 1.000
    MF_4.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_4.Size = UDim2.new(1, 0, 1, 0)
    MF_4.Image = "rbxassetid://12742029522"
    
    MF_5.Name = "MF"
    MF_5.Parent = MF_littleman
    MF_5.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_5.BackgroundTransparency = 1.000
    MF_5.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_5.Size = UDim2.new(1, 0, 1, 0)
    MF_5.Image = "rbxassetid://12742029522"
    
    MF_6.Name = "MF"
    MF_6.Parent = MF_littleman
    MF_6.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_6.BackgroundTransparency = 1.000
    MF_6.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_6.Size = UDim2.new(1, 0, 1, 0)
    MF_6.Image = "rbxassetid://12742029522"
    
    MF_7.Name = "MF"
    MF_7.Parent = MF_littleman
    MF_7.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_7.BackgroundTransparency = 1.000
    MF_7.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_7.Size = UDim2.new(1, 0, 1, 0)
    MF_7.Image = "rbxassetid://12742029522"
    
    MF_8.Name = "MF"
    MF_8.Parent = MF_littleman
    MF_8.AnchorPoint = Vector2.new(0.5, 0.5)
    MF_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MF_8.BackgroundTransparency = 1.000
    MF_8.Position = UDim2.new(0.5, 0, 0.5, 0)
    MF_8.Size = UDim2.new(1, 0, 1, 0)
    MF_8.Image = "rbxassetid://12742029522"

    game:GetService("CoreGui").ChildAdded:Connect(function(v)
            if v.Name ~= "mouseicon" then
                wait(.5)
            if game.CoreGui:FindFirstChild("mouseicon") then
                game.CoreGui.mouseicon:Destroy()
            end

            local mouseicon = Instance.new("ScreenGui")
            local MainFrame_mouseicon = Instance.new("Frame")
            local MF = Instance.new("ImageLabel")
            local MF_inner = Instance.new("ImageLabel")
            local MF_2 = Instance.new("ImageLabel")
            local MF_3 = Instance.new("ImageLabel")
            local MF_4 = Instance.new("ImageLabel")
            local MF_5 = Instance.new("ImageLabel")
            local MF_6 = Instance.new("ImageLabel")
            local MF_7 = Instance.new("ImageLabel")
            local MF_8 = Instance.new("ImageLabel")
            local MF_littleman = Instance.new("ImageLabel")
            
            mouseicon.Name = "mouseicon"
            mouseicon.Parent = game.CoreGui
            mouseicon.ResetOnSpawn = false
            mouseicon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            MainFrame_mouseicon.Name = "MainFrame_mouseicon"
            MainFrame_mouseicon.Parent = mouseicon
            MainFrame_mouseicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainFrame_mouseicon.BackgroundTransparency = 1.000
            MainFrame_mouseicon.Position = UDim2.new(0.272905767, 0, 0.446202546, 0)
            MainFrame_mouseicon.Size = UDim2.new(0, 100, 0, 100)
            MainFrame_mouseicon.ZIndex = 10
            
            MF.Name = "MF"
            MF.Parent = MainFrame_mouseicon
            MF.AnchorPoint = Vector2.new(0.5, 0.5)
            MF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF.BackgroundTransparency = 1.000
            MF.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
            MF.Size = UDim2.new(0, 78, 0, 78)
            MF.Image = "rbxassetid://12742094187"
            MF.ImageColor3 = Color3.fromRGB(0, 0, 0)
            
            MF_inner.Name = "MF_inner"
            MF_inner.Parent = MainFrame_mouseicon
            MF_inner.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_inner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_inner.BackgroundTransparency = 1.000
            MF_inner.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
            MF_inner.Size = UDim2.new(0, 93, 0, 93)
            MF_inner.Image = "rbxassetid://12742111454"
            MF_inner.ImageColor3 = Color3.fromRGB(0, 0, 0)
            
            MF_littleman.Name = "MF_littleman"
            MF_littleman.Parent = MainFrame_mouseicon
            MF_littleman.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_littleman.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_littleman.BackgroundTransparency = 1
            MF_littleman.Position = UDim2.new(0.139070675, 0, 0.343593806, 0)
            MF_littleman.Size = UDim2.new(0, 20, 0, 20)
            MF_littleman.Image = "rbxassetid://12742029522"
        
            local MF = MF
            local MF2 = MF_inner
            
            MainFrame_mouseicon.Position = UDim2.new(0,0,0,0)
            UserInputService.MouseIconEnabled = false
            
            spawn(function()
                while task.wait() do
                    MF.Rotation = MF.Rotation + 2
                    MF2.Rotation = MF2.Rotation - 2
                    task.wait(0.01)
                end
            end)
        
            spawn(function()
                while task.wait() do
                    MainFrame_mouseicon.Position = UDim2.fromOffset(Mouse.X - 14, Mouse.Y - 33)
                end
            end)
        
            local MF_littlemanCorner = Instance.new("UICorner")
            
            MF_littlemanCorner.CornerRadius = UDim.new(1, 0)
            MF_littlemanCorner.Name = "MF_littlemanCorner"
            MF_littlemanCorner.Parent = MF_littleman
            
            MF_2.Name = "MF"
            MF_2.Parent = MF_littleman
            MF_2.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_2.BackgroundColor3 = Color3.fromRGB(94, 151, 42)
            MF_2.BackgroundTransparency = 0
            MF_2.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_2.Size = UDim2.new(1, -13, 1, -13)
            MF_2.Image = "rbxassetid://12742029522"
            local MF_2c = Instance.new("UICorner")
            
            MF_2c.CornerRadius = UDim.new(1, 0)
            MF_2c.Parent = MF_2
            
            MF_3.Name = "MF"
            MF_3.Parent = MF_littleman
            MF_3.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_3.BackgroundColor3 = Color3.fromRGB(94, 151, 42)
            MF_3.BackgroundTransparency = 0
            MF_3.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_3.Size = UDim2.new(1, -13, 1, -13)
            MF_3.Image = "rbxassetid://12742029522"
            local MF_3c = Instance.new("UICorner")
            
            MF_3c.CornerRadius = UDim.new(1, 0)
            MF_3c.Parent = MF_3
            
            MF_4.Name = "MF"
            MF_4.Parent = MF_littleman
            MF_4.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_4.BackgroundTransparency = 1.000
            MF_4.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_4.Size = UDim2.new(1, 0, 1, 0)
            MF_4.Image = "rbxassetid://12742029522"
            
            MF_5.Name = "MF"
            MF_5.Parent = MF_littleman
            MF_5.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_5.BackgroundTransparency = 1.000
            MF_5.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_5.Size = UDim2.new(1, 0, 1, 0)
            MF_5.Image = "rbxassetid://12742029522"
            
            MF_6.Name = "MF"
            MF_6.Parent = MF_littleman
            MF_6.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_6.BackgroundTransparency = 1.000
            MF_6.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_6.Size = UDim2.new(1, 0, 1, 0)
            MF_6.Image = "rbxassetid://12742029522"
            
            MF_7.Name = "MF"
            MF_7.Parent = MF_littleman
            MF_7.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_7.BackgroundTransparency = 1.000
            MF_7.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_7.Size = UDim2.new(1, 0, 1, 0)
            MF_7.Image = "rbxassetid://12742029522"
            
            MF_8.Name = "MF"
            MF_8.Parent = MF_littleman
            MF_8.AnchorPoint = Vector2.new(0.5, 0.5)
            MF_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MF_8.BackgroundTransparency = 1.000
            MF_8.Position = UDim2.new(0.5, 0, 0.5, 0)
            MF_8.Size = UDim2.new(1, 0, 1, 0)
            MF_8.Image = "rbxassetid://12742029522"
            print(v.Name)
        end
    end)