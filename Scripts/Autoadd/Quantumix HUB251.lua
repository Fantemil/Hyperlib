if game.PlaceId == 142823291 then
  -- [ Services ] --
  local Players = game:GetService('Players')
  local CoreGUI = game:GetService('CoreGui')
  local TweenService = game:GetService('TweenService')
  local UserInputService = game:GetService("UserInputService")
  local Highlight = Instance.new('Highlight')
  local Executor = identifyexecutor()
  local HIDEUI = get_hidden_gui or gethui
  local tweenInfoBTP = TweenInfo.new(2.9, Enum.EasingStyle.Linear)
  getgenv().coinFarm = false
  
  -- [ GUI ] --
  local ScreenGui = Instance.new('ScreenGui')
  local MainFrame = Instance.new('Frame')
  local HeaderFrame = Instance.new('Frame')
  local HeaderFix = Instance.new('Frame')
  local Description = Instance.new('TextLabel')
  local GameName = Instance.new('TextLabel')
  local Icon = Instance.new('ImageLabel')
  local CloseIcon = Instance.new('ImageButton')
  local MainButton = Instance.new('TextButton')
  
  -- [ Function ] --
  if syn and typeof(syn) == "table" and RenderWindow then 
    syn.protect_gui = gethui
  end
  local function Hide_UI(gui)
    if HIDEUI then
      gui["Parent"] = HIDEUI()
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
      syn.protect_gui(gui)
      gui["Parent"] = CoreGUI
    elseif CoreGUI:FindFirstChild('RobloxGui') then
      gui["Parent"] = CoreGUI.RobloxGui
    else
      gui["Parent"] = CoreGUI
    end
  end
  local function MakeDraggable(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
	    local delta = input.Position - dragStart
	    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	        dragging = true
	        dragStart = input.Position
	        startPos = gui.Position
	        
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	gui.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	        dragInput = input
	    end
	end)
	 
	UserInputService.InputChanged:Connect(function(input)
	    if input == dragInput and dragging then
	        update(input)
	    end
      end)
  end
  local function bypassTP(v)
    if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
      --local cf = CFrame.new(v)
      local move = TweenService:Create(Players.LocalPlayer.Character.HumanoidRootPart, tweenInfoBTP, {CFrame=v})
      
      move:Play()
    end
  end
  function coinFarm()
    while getgenv().coinFarm == true do
      local children = game.Workspace:GetChildren()
      for _,child in pairs(children) do
        for _,child in pairs(child:GetChildren()) do
          table.insert(children, child)
        end
        if child:IsA('BasePart') and child.Name == "Coin_Server" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.CFrame
          --bypassTP(child.CFrame)
          wait(2.9)
        end
      end
      wait()
    end
  end
  function sayMessage(message)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
	end
  
  -- [ Codes ] --
  ScreenGui.Name = 'QuantumixHUB'
  ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  ScreenGui.IgnoreGuiInset = false
  ScreenGui.ResetOnSpawn = false
  ScreenGui.Parent = CoreGUI
  
  local FrameCorner = Instance.new('UICorner')
  MainFrame.Name = tostring('QX:'..math.random(999, 999999))
  MainFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
  MainFrame.BorderSizePixel = 0
  MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
  MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
  MainFrame.Size = UDim2.new(0, 250, 0, 150)
  MainFrame.Parent = ScreenGui
  MakeDraggable(MainFrame)
  
  FrameCorner.Parent = MainFrame
  FrameCorner.CornerRadius = UDim.new(0, 10)
  
  local HeaderCorner = Instance.new('UICorner')
  HeaderFrame.Name = tostring('HD:'..math.random(999, 999999))
  HeaderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  HeaderFrame.BorderSizePixel = 0
  HeaderFrame.Size = UDim2.new(1, 0, 0, 25)
  HeaderFrame.Parent = MainFrame
  HeaderFix.Name = "Fixer"
  HeaderFix.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  HeaderFix.BorderSizePixel = 0
  HeaderFix.Size = UDim2.new(1, 0, 0, 8)
  HeaderFix.Position = UDim2.new(0, 0, 0, 18)
  HeaderFix.Parent = HeaderFrame
  
  HeaderCorner.Parent = HeaderFrame
  HeaderCorner.CornerRadius = UDim.new(0, 10)
  
  local IconCorner = Instance.new('UICorner')
  Icon.Name = "Icon"
  Icon.BackgroundTransparency = 1
  Icon.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
  Icon.Size = UDim2.new(0, 20, 0, 20)
  Icon.Position = UDim2.new(0, 5, 0, 2.5)
  Icon.Parent = HeaderFrame
  
  IconCorner.Parent = Icon
  IconCorner.CornerRadius = UDim.new(0, 50)
  
  CloseIcon.Name = "Icon"
  CloseIcon.BackgroundTransparency = 1
  CloseIcon.Image = "rbxassetid://14397748477"
  CloseIcon.Size = UDim2.new(0, 20, 0, 20)
  CloseIcon.Position = UDim2.new(0, 225, 0, 2)
  CloseIcon.Parent = HeaderFrame
  CloseIcon.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
  end)
  
  Description.Name = "Description"
  Description.BackgroundTransparency = 1
  Description.Text = "MM2 COINFARM (QX)"
  Description.Size = UDim2.new(1, -4, 0, 0)
  Description.Position = UDim2.new(0, 4, 0, 55)
  Description.TextSize = 20
  Description.TextColor3 = Color3.fromRGB(255, 255, 255)
  Description.TextXAlignment = Enum.TextXAlignment.Center
  Description.Font = Enum.Font.Gotham
  Description.Parent = MainFrame
  
  GameName.Name = "GameName"
  GameName.BackgroundTransparency = 1
  GameName.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
  GameName.Size = UDim2.new(1, -4, 0, 0)
  GameName.Position = UDim2.new(0, 4, 0, 75)
  GameName.TextSize = 10
  GameName.TextColor3 = Color3.fromRGB(100, 100, 255)
  GameName.TextXAlignment = Enum.TextXAlignment.Center
  GameName.Font = Enum.Font.Gotham
  GameName.Parent = MainFrame
  
  local ButtonCorner = Instance.new('UICorner')
  MainButton.Name = "Toggle"
  MainButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  MainButton.BorderSizePixel = 0
  MainButton.Text = "Working: OFF"
  MainButton.TextColor3 = Color3.fromRGB(255, 100, 100)
  MainButton.TextSize = 10
  MainButton.Font = Enum.Font.Gotham
  MainButton.Size = UDim2.new(1, -20, 0, 30)
  MainButton.Position = UDim2.new(0, 10, 0, 110)
  MainButton.Parent = MainFrame
  
  ButtonCorner.Parent = MainButton
  ButtonCorner.CornerRadius = UDim.new(0, 10)
  
  local toggle = false
  
  MainButton.MouseButton1Click:Connect(function()
    toggle = not toggle
    if toggle then
      getgenv().coinFarm = true
      MainButton.Text = "Working: ON"
      MainButton.TextColor3 = Color3.fromRGB(100, 255, 100)
      coinFarm()
    else
      getgenv().coinFarm = false
      coinFarm()
      MainButton.Text = "Working: OFF"
      MainButton.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
  end)
end