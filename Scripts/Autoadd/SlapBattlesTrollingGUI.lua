local gui = Instance.new("ScreenGui", game.CoreGui)
local background = Instance.new("Frame", gui)
local title = Instance.new("TextLabel", background)
local destroy = Instance.new("TextButton", background)
local btn = Instance.new("TextButton", background)
local btn2 = Instance.new("TextButton", background)
local btn3 = Instance.new("TextButton", background)
local btn4 = Instance.new("TextButton", background)
local btn5 = Instance.new("TextButton", background)
local aclaration = Instance.new("TextLabel", background)
local stopear = Instance.new("TextButton", background)
local stopbrick = Instance.new("TextButton", background)
local earrape = false
local brickspam = false

background.Active = true
background.Draggable = true
background.Position = UDim2.new(0.5,450,0.5,-100)
background.Size = UDim2.new(0,300,0,275)
background.BackgroundColor3 = Color3.fromRGB(0,0,0)
background.Transparency = 0.5

title.Position = UDim2.new(0.5,-150,0.5,-200)
title.Size = UDim2.new(0,300,0,50)
title.BackgroundColor3 = Color3.fromRGB(0,0,0)
title.Text = ("Slap Trolling")
title.Font = "GothamBlack"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextSize = 30

destroy.Position = UDim2.new(0.5,110,0.5,-188)
destroy.Size = UDim2.new(0,25,0,25)
destroy.Text = ("X")
destroy.Font = "GothamBlack"
destroy.BackgroundTransparency = 1
destroy.TextSize = 25
destroy.TextColor3 = Color3.fromRGB(255,0,0)
destroy.MouseButton1Click:Connect(function()
    gui:Destroy()
    wait(0.05)
end)

btn.Position = UDim2.new(0.5,-100,0.5,-105)
btn.Size = UDim2.new(0,200,0,50)
btn.Text = ("Become Rock - (Diamond Glove)")
btn.Font = "GothamBlack"
btn.TextSize = 12
btn.TextColor3 = Color3.fromRGB(255,255,255)
btn.BorderSizePixel = 0
btn.BackgroundColor3 = Color3.fromRGB(255,165,0)
btn.MouseButton1Click:Connect(function()
    game.ReplicatedStorage.Rockmode:FireServer();
end)

btn2.Position = UDim2.new(0.5,-100,0.5,5)
btn2.Size = UDim2.new(0,200,0,50)
btn2.Text = ("Annoying Sound")
btn2.Font = "GothamBlack"
btn2.TextSize = 20
btn2.TextColor3 = Color3.fromRGB(255,255,255)
btn2.BackgroundColor3 = Color3.fromRGB(255,165,0)
btn2.BorderSizePixel = 0
btn2.MouseButton1Click:Connect(function()
   game.ReplicatedStorage.ErrorDeath:FireServer();
end)

btn3.Position = UDim2.new(0.5,-100,0.5,-50)
btn3.Size = UDim2.new(0,200,0,50)
btn3.Text = ("Spam Bricks - (Brick Glove)")
btn3.Font = "GothamBlack"
btn3.TextSize = 15
btn3.TextColor3 = Color3.fromRGB(255,255,255)
btn3.BackgroundColor3 = Color3.fromRGB(255,165,0)
btn3.BorderSizePixel = 0
btn3.MouseButton1Click:Connect(function()
   brickspam = true
end)

btn4.Position = UDim2.new(0.5,-100,0.5,60)
btn4.Size = UDim2.new(0,200,0,50)
btn4.Text = ("Ear Destroyer")
btn4.Font = "GothamBlack"
btn4.TextSize = 20
btn4.BackgroundColor3 = Color3.fromRGB(255,165,0)
btn4.BorderSizePixel = 0
btn4.BackgroundColor3 = Color3.fromRGB(100,0,0)
btn4.TextColor3 = Color3.fromRGB(255,255,255)
btn4.MouseButton1Click:Connect(function()
earrape = true
end)

stopear.Position = UDim2.new(0.5,110,0.5,60)
stopear.Size = UDim2.new(0,30,0,50)
stopear.Text = ("OFF")
stopear.Font = "GothamBlack"
stopear.TextSize = 15
stopear.BackgroundTransparency = 0.5
stopear.TextColor3 = Color3.fromRGB(255,255,255)
stopear.BorderSizePixel = 0
stopear.BackgroundColor3 = Color3.fromRGB(255,255,255)
stopear.MouseButton1Click:Connect(function()
   earrape = false
end)

stopbrick.Position = UDim2.new(0.5,110,0.5,-50)
stopbrick.Size = UDim2.new(0,30,0,50)
stopbrick.Text = ("OFF")
stopbrick.Font = "GothamBlack"
stopbrick.TextSize = 15
stopbrick.BackgroundTransparency = 0.5
stopbrick.TextColor3 = Color3.fromRGB(255,255,255)
stopbrick.BorderSizePixel = 0
stopbrick.BackgroundColor3 = Color3.fromRGB(255,255,255)
stopbrick.MouseButton1Click:Connect(function()
   brickspam = false
end)

btn5.Position = UDim2.new(0.5,-150,0.5,150)
btn5.Size = UDim2.new(0,300,0,50)
btn5.Text = ("Godmode")
btn5.Font = "GothamBlack"
btn5.TextSize = 30
btn5.TextColor3 = Color3.fromRGB(25,25,25)
btn5.BorderSizePixel = 0
btn5.BackgroundColor3 = Color3.fromRGB(255,255,255)
btn5.MouseButton1Click:Connect(function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.08817, -8.92294, 1.83554)
end)

aclaration.Position = UDim2.new(0.5,-150,0.5,205)
aclaration.Size = UDim2.new(0,300,0,50)
aclaration.Text = ("( ! ) Don't touch the portal before using this, you also won't be able to use your glove.                                 (You will be able to use the rock hability with the button though)")
aclaration.TextScaled = true
aclaration.BackgroundTransparency = 0.5
aclaration.Font = "GothamBlack"
aclaration.TextSize = 30
aclaration.TextColor3 = Color3.fromRGB(25,25,25)
aclaration.BorderSizePixel = 0
aclaration.BackgroundColor3 = Color3.fromRGB(255,255,255)

while wait() do
    if earrape == true then
   stopear.BackgroundColor3 = Color3.fromRGB(100,255,100)
   btn4.BackgroundColor3 = Color3.fromRGB(100,255,100)
    wait()
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   wait(1)
      game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   game.ReplicatedStorage.ErrorDeath:FireServer();
   else
       stopear.BackgroundColor3 = Color3.fromRGB(100,0,0)
       btn4.BackgroundColor3 = Color3.fromRGB(100,0,0)
    end
    
      if brickspam == true then
   stopbrick.BackgroundColor3 = Color3.fromRGB(100,255,100)
   btn3.BackgroundColor3 = Color3.fromRGB(100,255,100)
   wait(2.5)
   game.ReplicatedStorage.lbrick:FireServer();
   else
       stopbrick.BackgroundColor3 = Color3.fromRGB(100,0,0)
       btn3.BackgroundColor3 = Color3.fromRGB(100,0,0)
    end
end