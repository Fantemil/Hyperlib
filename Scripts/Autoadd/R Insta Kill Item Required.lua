local lp = game:GetService("Players").LocalPlayer
 
local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local ScreenGui = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Username = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
local ced = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = ScreenGui
ui.Active = true
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BackgroundTransparency = 0
ui.BorderSizePixel = 3
ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
ui.Size = UDim2.new(0, 278, 0, 278)

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.new(68, 68, 68)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "INSTAKILL GUI"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Username.Name = "Username"
Username.Parent = ui
Username.BackgroundColor3 = Color3.new(1, 1, 1)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
Username.Size = UDim2.new(0.800000012, 0, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "TARGET"
Username.Text = "TARGET"
Username.TextColor3 = Color3.new(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14
Username.TextWrapped = true

Kill.Name = "Stick"
Kill.Parent = ui
Kill.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Kill.BackgroundTransparency = 0
Kill.BorderSizePixel = 2
Kill.Position = UDim2.new(0.25, 0, 0.629999971, 0)
Kill.Size = UDim2.new(0.5, 0, 0, 45)
Kill.Font = Enum.Font.Gotham
Kill.Text = "KILL"
Kill.TextColor3 = Color3.new(0, 0, 0)
Kill.TextScaled = true
Kill.TextSize = 10
Kill.TextWrapped = true
ui.Draggable = true

ced.Name = "made"
ced.Parent = ui
ced.BackgroundColor3 = Color3.new(68, 68, 68)
ced.BackgroundTransparency = 1
ced.BorderSizePixel = 2
ced.Position = UDim2.new(0, 0, 0.769999981, 0)
ced.Size = UDim2.new(1, 0, 0, 50)
ced.Font = Enum.Font.SourceSans
ced.Text = "MADE BY: Whalix#0265"
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 14
ced.TextWrapped = true

local function notif(str,dur)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "INSTAKILL GUI";
    Text = str;})
Duration = dur or 3;
end

Kill.MouseButton1Click:Connect(function()
	local Player = gplr(Username.Text)
	if Player[1] then
		Player = Player[1]
          LocalPlayer = game.Players.LocalPlayer
          
         if LocalPlayer.Character.PrimaryPart ~= nil then
                local Character = LocalPlayer.Character
                local previous = LocalPlayer.Character.PrimaryPart.CFrame
                
                Character.Archivable = true
                local Clone = Character:Clone()
                LocalPlayer.Character = Clone
                wait(0.5)
                LocalPlayer.Character = Character
                wait(0.2)
                
                if LocalPlayer.Character and Player.Character and Player.Character.PrimaryPart ~= nil then
                    if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
                    end
    
                    local Humanoid = Instance.new("Humanoid")
                    Humanoid.Parent = LocalPlayer.Character
    
                    local Tool = nil
    
                    if LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    elseif LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    end
                    print(Tool)

                    if Tool ~= nil then
                        Tool.Parent = LocalPlayer.Backpack
                        
                        Player.Character.HumanoidRootPart.Anchored = true
                        
                        local Arm = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                        Tool.Grip = Arm:ToObjectSpace(Player.Character.PrimaryPart.CFrame):Inverse()
                        
                        Tool.Parent = LocalPlayer.Character
                        Workspace.CurrentCamera.CameraSubject = Tool.Handle
              
                        repeat
                            wait()
                        until not Tool or Tool and (Tool.Parent == Workspace or Tool.Parent == Player.Character)
                        Player.Character.HumanoidRootPart.Anchored = false
                        wait(0.1)
                        Humanoid.Health = 0
                        LocalPlayer.Character = nil
                    end
                end
     
                spawn(function()
                LocalPlayer.CharacterAdded:Wait()
                Player.Character.HumanoidRootPart.Anchored = false
                if Player.Character.Humanoid.Health <= 15 then
                 notif("The requested user has been killed!")
                repeat wait() until LocalPlayer.Character.PrimaryPart ~= nil
                wait(0.4)
                LocalPlayer.Character:SetPrimaryPartCFrame(previous)
              end
           end)
       end
    end
end)

local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script = Instance.new('LocalScript', Kill)
	
	while wait() do
		script.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script2 = Instance.new('LocalScript', title)
	
	while wait() do
		script2.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script3 = Instance.new('LocalScript', Frame)
	
	while wait() do
		script3.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script4 = Instance.new('LocalScript', Frame)
	
	while wait() do
		script4.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script5 = Instance.new('LocalScript', ced)
	
	while wait() do
		script5.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()