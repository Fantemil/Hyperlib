repeat task.wait() until game:IsLoaded()
local Temp = {Loopkill={},LkTEAMS={}}
local TigerAdmin_UI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CommandsList = Instance.new("ScrollingFrame")
local UIStroke = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
local UIStroke_2 = Instance.new("UIStroke")
local CommandBar = Instance.new("TextBox")
local UIStroke_3 = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local Disc = Instance.new("TextLabel")
local Temp_Clone = Instance.new("TextButton")
local UIStroke_4 = Instance.new("UIStroke")
local Notif = Instance.new("Frame")
local UIStroke_5 = Instance.new("UIStroke")
local UICorner_2 = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
TigerAdmin_UI.Name = "TigerAdmin_UI"
local PreferedParent = nil
xpcall(function()
	PreferedParent = (game:GetService("CoreGui"))
	TigerAdmin_UI.Parent = PreferedParent
end, function()
	PreferedParent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	TigerAdmin_UI.Parent = PreferedParent
end)
TigerAdmin_UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TigerAdmin_UI.ResetOnSpawn = false
Main.Name = "Main"
Main.Parent = TigerAdmin_UI
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.245635912, 0)
Main.Size = UDim2.new(0, 311, 0, 440)
UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Main
CommandsList.Name = "CommandsList"
CommandsList.Parent = Main
CommandsList.Active = true
CommandsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandsList.BackgroundTransparency = 1.000
CommandsList.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandsList.BorderSizePixel = 0
CommandsList.Position = UDim2.new(0.0311283227, 0, 0.076167196, 0)
CommandsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
CommandsList.Size = UDim2.new(0, 286, 0, 345)
CommandsList.BottomImage = "rbxassetid://5168609593"
CommandsList.MidImage = "rbxassetid://5168609593"
CommandsList.ScrollBarImageTransparency = 0.510
CommandsList.ScrollBarThickness = 6
CommandsList.TopImage = "rbxassetid://5168609593"
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Transparency = 0.680
UIStroke.Parent = CommandsList
UIListLayout.Parent = CommandsList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
UIStroke_2.Transparency = 0.680
UIStroke_2.Parent = Main
CommandBar.Name = "CommandBar"
CommandBar.Parent = Main
CommandBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.BackgroundTransparency = 1.000
CommandBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.0289389063, 0, 0.890909076, 0)
CommandBar.Size = UDim2.new(0, 289, 0, 39)
CommandBar.ClearTextOnFocus = false
CommandBar.Font = Enum.Font.SourceSans
CommandBar.PlaceholderText = "Input Commands here!"
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.fromRGB(223, 223, 223)
CommandBar.TextSize = 14.000
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
UIStroke_3.Transparency = 0.680
UIStroke_3.Parent = CommandBar
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0311283227, 0, 0.0147420019, 0)
Title.Size = UDim2.new(0, 301, 0, 16)
Title.Font = Enum.Font.Gotham
Title.Text = "TIGER ADMIN"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Disc.Name = "Disc"
Disc.Parent = Main
Disc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Disc.BackgroundTransparency = 1.000
Disc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Disc.BorderSizePixel = 0
Disc.Position = UDim2.new(0, 0, 1, 0)
Disc.Size = UDim2.new(0, 311, 0, 27)
Disc.Visible = false
Disc.Font = Enum.Font.SourceSans
Disc.Text = "Description: Kills a certain player"
Disc.TextColor3 = Color3.fromRGB(255, 255, 255)
Disc.TextSize = 14.000
Disc.TextStrokeTransparency = 0.650
Temp_Clone.Name = "Temp_Clone"
Temp_Clone.Parent = TigerAdmin_UI
Temp_Clone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Temp_Clone.BackgroundTransparency = 1.000
Temp_Clone.BorderColor3 = Color3.fromRGB(0, 0, 0)
Temp_Clone.BorderSizePixel = 0
Temp_Clone.Size = UDim2.new(0, 286, 0, 28)
Temp_Clone.Visible = false
Temp_Clone.AutoButtonColor = false
Temp_Clone.Font = Enum.Font.Gotham
Temp_Clone.Text = "!kill <player>"
Temp_Clone.TextColor3 = Color3.fromRGB(203, 203, 203)
Temp_Clone.TextSize = 14.000
Temp_Clone.TextWrapped = true
UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
UIStroke_4.Transparency = 0.680
UIStroke_4.Parent = Temp_Clone
Notif.Name = "Notif"
Notif.Parent = TigerAdmin_UI
Notif.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Notif.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notif.BorderSizePixel = 0
Notif.Position = UDim2.new(0.00780572416, 0, 0.152119696, 0)
Notif.Size = UDim2.new(0, 222, 0, 58)
Notif.Visible = false
UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
UIStroke_5.Thickness = 0.700
UIStroke_5.Transparency = 0.680
UIStroke_5.Parent = Notif
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Notif
Text.Name = "Text"
Text.Parent = Notif
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Size = UDim2.new(0.972972989, 0, 1, 0)
Text.Font = Enum.Font.SourceSans
Text.Text = "Error! Jeffcool in game spotted please leave!"
Text.TextColor3 = Color3.fromRGB(190, 190, 190)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true
UITextSizeConstraint.Parent = Text
UITextSizeConstraint.MaxTextSize = 14
local AllowFocus = false
Temp.OrginPosMain = Main.Position
Temp.OrginPosMainGone = Temp.OrginPosMain+UDim2.new(-.3,0,0,0)
Temp.NotifOldPos = Notif.Position
Main:TweenPosition(Temp.OrginPosMainGone,"Out","Quart")
plr = game:GetService("Players").LocalPlayer

-- Services --
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

-- Player --
local Player = Players.LocalPlayer
local Character, Humanoid, HRP
-- API --
local Remote = workspace:WaitForChild("Remote")
local API, Commands, States = {}, {}, {}
local Settings = {
	Prefix = "!"
}
States.Unloaded = false
game:GetService("UserInputService").InputEnded:Connect(function(Key,c)
	if States.Unloaded == false then
		if Key.KeyCode == Enum.KeyCode.Semicolon and not c then
			Main:TweenPosition(Temp.OrginPosMain,"Out","Quart",.38)
			CommandBar:CaptureFocus()
			wait(.5)
			AllowFocus = true
		end
		if Key.UserInputType == Enum.UserInputType.MouseButton1 and not c then
			if not Temp.OnGui then
				AllowFocus = false
			end
		end
	end
end)
Main.MouseLeave:Connect(function()
	Temp.OnGui = false
	Disc.Visible = false
end)
Main.MouseEnter:Connect(function()
	Temp.OnGui = true
end)
coroutine.wrap(function()
	while wait() do
		if AllowFocus then
			repeat task.wait() until not AllowFocus
			Main:TweenPosition(Temp.OrginPosMainGone,"Out","Quart",.38)
			Disc.Visible = false
		end
	end
end)()

API.StringArgsChecker = function(Text)
	local List = {"all","others","me"}
	local Ts = game.Teams:GetChildren()
	for i,v in pairs(Ts) do
		Ts[i] = v.Name:lower()
	end
	if (table.find(List,Text:lower())) then
		return (table.find(List,Text:lower()) and true)
	end
	if table.find(Ts,Text) then
		return "Team"
	end
	return nil
end

API.Tween = function(Obj,Prop,New,Time)
	if not Time then Time = .5 end
	local Tweened = game:GetService("TweenService"):Create(Obj, TweenInfo.new( Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false,0), {[Prop] = New,})
	Tweened:Play()
	return {Stop = function() Tweened:Cancel() end, }
end
Temp.CMDA = 0
API.AddCommand = function(Name, Function, Setting)
	Temp.CMDA  = Temp.CMDA +1
	local Alts = ""
	Commands[Name:lower()] = {f = Function,}
	if Setting["Alt"] then
		for i,v in pairs(Setting["Alt"]) do
			if v and tostring(v) then
				Commands[v] = Commands[Name:lower()]
				Alts = Alts.."/!"..v
			end
		end
	end
	local CommandLabel = Temp_Clone:Clone()
	if Setting["Type"] then Setting["Type"] = Setting["Type"]:lower() end
	if Setting["Type"] and Setting["Type"] == "toggle" then
		Setting["Type"] = "<ON/OFF>"
	elseif Setting["Type"] and Setting["Type"] == "player" then
		Setting["Type"] = "<Player>"
	elseif Setting["Type"] and Setting["Type"] == "all" then
		Setting["Type"] = "<Player,All,Me>"
	elseif Settings and Settings["Type"] ~=nil then
		Setting["Type"] = "<"..Setting["Type"]..">"
	else
		Setting["Type"] = ""
	
	end
	
	CommandLabel.Text = Settings.Prefix..Name..Alts.." "..Setting["Type"]
	CommandLabel.Visible = true
	CommandLabel.Parent = CommandsList
	CommandLabel.MouseButton1Up:Connect(function()
		CommandBar.Text = Settings.Prefix..Name
		CommandBar:CaptureFocus()
	end)
	CommandLabel.MouseEnter:Connect(function()
		API.Tween(CommandLabel,"BackgroundTransparency",.67,.4)
		Disc.Visible = true
		Disc.Text = Setting["Description"]
	end)
	CommandLabel.MouseLeave:Connect(function()
		API.Tween(CommandLabel,"BackgroundTransparency",1,.4)
	end)
end
API.FindPlayer =function(String,IgnoreError)
	if not String then
		return nil
	end
	if String:lower() == "me" then
		return plr
	end
	String = String:gsub("%s+", "")
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^" .. String:lower()) or v.DisplayName:lower():match("^" .. String:lower()) then
			return v
		end
	end
	if not IgnoreError then
		API.Notify("No players in server matching the name '"..String.."'")
	end
	return nil
end
API.FindCommand = function(cmd)
	cmd=string.gsub(cmd,"!","")
	local Command = Commands[cmd]
	if Command then
		return Command.f
	end
	return Command
end

API.Notify = function(Text,Dur)
	pcall(function()
		local a = Instance.new("ScreenGui",PreferedParent)
		local NotifNew = Notif:Clone()
		NotifNew.Visible = true
		NotifNew.Parent = a
		NotifNew.Position = Temp.NotifOldPos-UDim2.new(1,0,0,0)
		task.spawn(function()
			NotifNew:TweenPosition(Temp.NotifOldPos,"Out","Quart",.8)
			NotifNew:FindFirstChild("Text").Text = Text or "No notification text given."
			wait((Dur) or 3)
			NotifNew:TweenPosition(Temp.NotifOldPos-UDim2.new(1,0,0,0),"Out","Quart",.8)
			wait(.9)
			NotifNew:Destroy()
		end)
	end)
end
API.GetGun =function(Item)
	task.spawn(function()
		local isAlreadyThere = plr.Backpack:FindFirstChild(Item) or plr.Character:FindFirstChild(Item)
		if isAlreadyThere then
			return isAlreadyThere
		else
			pcall(function()
				task.spawn(function()
					workspace:FindFirstChild("Remote")['ItemHandler']:InvokeServer({Position = Player.Character.Head.Position,Parent = workspace.Prison_ITEMS:FindFirstChild(Item, true)})
				end)
			end)
		end
	end)
end
API.MoveTo = function(Cframe)
	if typeof(Cframe):lower() == "position" then Cframe = CFrame.new(Cframe) end
	for i =1,3 do
		task.wait()
		plr.Character:FindFirstChild("HumanoidRootPart").CFrame = Cframe
	end
end
API.IsFound = function(Name)
	local t = (plr.Backpack:FindFirstChild(Name) or plr.Character:FindFirstChild(Name))
	if t and t:IsA("Tool") then
		return t
	end
	return nil
end
API.GetPosition = function()
	return plr.Character:FindFirstChild("HumanoidRootPart").CFrame
end
API.TestA = function()
	for i =1,10 do --//STOP IT HOLY SHIT WHY WONT IT WORK
		Temp.Respawned:Disconnect()
	end
	Temp.Respawned = nil
end
function API.Refresh(Team,Position,NoForce) --// v2.0
	if typeof(Position):lower() == "position" then Position = CFrame.new(Position) end
	local LastPosition = API.GetPosition()
	local LastCameraPosition = workspace.CurrentCamera.CFrame
	if not Team then Team = plr.Team end
	local done = false
	Temp.Respawned = plr.CharacterAdded:Connect(function(c)
		if done then return end
		done = true
		task.spawn(function()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
			wait(.1)
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			workspace.CurrentCamera.CameraSubject = plr.Character:WaitForChild("Humanoid")

		end)
		task.spawn(function()
			c:WaitForChild("ForceField"):Destroy()
		end)
		for i =1,3 do
			c:WaitForChild("HumanoidRootPart").CFrame = LastPosition
			game:GetService("RunService").Stepped:Wait()
		end
		API.TestA()
		Position = nil--// why the fuck it keep spawning somewhere else!!!! GRRRRR
		NoForce = nil
		LastCameraPosition = nil
		Team = nil
	end)
	if Team ~= game.Teams.Criminals then
		Position = Position
		workspace.Remote.TeamEvent:FireServer(Team.TeamColor.Name)
	else
		repeat
			game:GetService("RunService").Stepped:Wait()
			if firetouchinterest then
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 0)
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 1)
			end
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].Transparency = 1
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CanCollide = false
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = API:GetPosition()
		until plr.Team == game:GetService("Teams").Criminals
		game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = CFrame.new(0, 3125, 0)
	end
	return nil
end
function API.ChangeTeam(Team)
	API.Refresh(Team,nil,true)
end
function API.GuardsFull(a)
	if #game:GetService("Teams").Guards:GetPlayers()==8 then
		if a then
			if Player.Team == game.Teams.Guards then
				return false
			end
		end
		return false
	end
	return true
end
API.KillTeam = function(Team)
	local LastT, Bullets,OrginTeam = nil,{}, plr.Team
	local function Fire()
		API.GetGun("M9")
		local Gun = plr.Backpack:FindFirstChild("M9")
		repeat task.wait()
			Gun = plr.Backpack:FindFirstChild("M9")
			API.GetGun("M9")
		until Gun
		task.spawn(function()
			game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer(Bullets, Gun)
			game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
		end)
	end
	if Team ~= "all" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v ~= plr and v.Team == Team then
				for i =1,15 do
					Bullets[#Bullets+1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = 0,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character:FindFirstChild("Head"),
					}
				end
			end
		end
		if Team ~= game.Teams.Inmates then
			API.ChangeTeam(game.Teams.Inmates)
		else
			API.ChangeTeam(game.Teams.Criminals)
		end
		wait(.1)
		Fire()
		wait(.5)
		if plr.Team ~=OrginTeam then
			API.ChangeTeam(OrginTeam)
		end
	else
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v ~= plr and v.Character then
				for i =1,15 do
					Bullets[#Bullets+1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = 0,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character:FindFirstChild("Head"),
					}
				end
			end
		end
		if plr.Team ~= game.Teams.Inmates then
			API.ChangeTeam(game.Teams.Inmates)
		end
		Fire()
		wait(.1)
		API.ChangeTeam(game.Teams.Criminals)
		wait()
		Fire()
		wait(.5)
		if plr.Team ~=OrginTeam then
			API.ChangeTeam(OrginTeam)
		end
	end

end
API.GetCar = function(To)
	if not To then To = API.GetPosition() end
	local Car = nil
	local L = API.GetPosition()
	for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
		if v and v:IsA("Model") then
			if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
				Car = v
			end
		end
	end
	if not Car then
		coroutine.wrap(function()
			if not Car then
				Car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end
		end)()
		API.MoveTo(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"].CFrame*CFrame.new(0,2.5,0))
		wait(.23)
		repeat task.wait()
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
			end)
		until Car
	end
	repeat task.wait() until Car
	Car:WaitForChild("Body"):WaitForChild("VehicleSeat")
	Car.PrimaryPart = Car.Body.VehicleSeat
	local Seat = Car.Body.VehicleSeat
	API.MoveTo(To)
	repeat task.wait()
		Car:SetPrimaryPartCFrame(To)
		Seat:Sit(plr.Character:FindFirstChildOfClass("Humanoid"))
	until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
	Car:SetPrimaryPartCFrame(To)
	plr.Character:FindFirstChildOfClass('Humanoid').Sit = false
	wait()
	API.MoveTo(L)
end
API.FindShield = function()
	local Shield = Players:FindFirstChild("Riot Shield", true)
	if not Shield then
		for _,Target in pairs(Players:GetPlayers()) do
			if Target.Character and Target.Character:FindFirstChild("Riot Shield") then
				Shield = Target.Character["Riot Shield"]
				break
			end
		end
	end
	return Shield
end
API.Bring = function(Target,TeleportTo)
	if not TeleportTo then TeleportTo = API.GetPosition() end
	local CarSelected = nil
	local Seat = nil
	local Attempts = 0
	for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
		if v then
			if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
				CarSelected = v
			end
		end
	end
	if not CarSelected then
		coroutine.wrap(function()
			if not CarSelected then
				CarSelected = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end
		end)()
		API.MoveTo(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"].CFrame*CFrame.new(0,2.5,0))
		wait(.23)
		repeat task.wait()
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
			end)
		until CarSelected
	end
	repeat game:GetService("RunService").RenderStepped:Wait() until CarSelected ~= nil
	if CarSelected then
		CarSelected:WaitForChild("Body"):WaitForChild("VehicleSeat")
		CarSelected.PrimaryPart = CarSelected.Body.VehicleSeat
		Seat = CarSelected.Body.VehicleSeat
		CarSelected:SetPrimaryPartCFrame(plr.Character:GetPrimaryPartCFrame())
		repeat task.wait()
			Seat:Sit(plr.Character:FindFirstChildOfClass("Humanoid"))
		until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
		repeat game:GetService("RunService").RenderStepped:Wait()
			Attempts = Attempts+1
			if not Target.Character or Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
				break
			end
			CarSelected:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-5))
		until Target.Character:FindFirstChildOfClass("Humanoid").Sit == true or Attempts >500
		for i =1,5 do
			task.wait()
			CarSelected:SetPrimaryPartCFrame(TeleportTo)
		end
	end
end

API.Kill = function(Target,Attempt,StopChangeTeam)
	local ChangeTeam = nil
	if Target.Team == plr.Team then
		ChangeTeam = plr.Team
		if Target.Team ~= game.Teams.Inmates then
			API.Refresh(game.Teams.Inmates,API.GetPosition(),true)
		elseif Target.Team ~= game.Teams.Criminals then
			API.Refresh(game.Teams.Criminals,API.GetPosition(),true)
		else
			API.Refresh(game.Teams.Inmates,API.GetPosition(),true)
		end
	end
	if Target == plr then
		plr.Character:FindFirstChildOfClass("Humanoid").Health = 0
		return 
	end
	local BulletTable = {}
	if Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
		return
	end
	local PewPew = nil
	for i =1,15 do
		BulletTable[#BulletTable+1] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
			["Distance"] = 0,
			["Cframe"] = CFrame.new(),
			["Hit"] = Target.Character:FindFirstChild("Head"),
		}
	end
	repeat API.GetGun("Remington 870") game:GetService("RunService").RenderStepped:Wait() PewPew = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until PewPew
	task.spawn(function()
		game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer(BulletTable, PewPew)
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(PewPew)
	end)
	wait(.25)
	if Target.Character:FindFirstChildOfClass("Humanoid").Health >0 then
		wait(.4)
		task.spawn(function()
			game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer(BulletTable, PewPew)
			game:GetService("ReplicatedStorage").ReloadEvent:FireServer(PewPew)
		end)
		wait(.25)
		if not StopChangeTeam then
			API.Refresh(ChangeTeam,API.GetPosition(),true)
		end
		return
	end
	if ChangeTeam and not StopChangeTeam then
		API.Refresh(ChangeTeam,API.GetPosition(),true)
	end
end
API.Guns = function()
	if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(plr.UserId, 96651) then
		API.GetGun("M4A1")
	end
	API.GetGun("AK-47")
	task.spawn(function()
		API:GetGun("Remington 870")
	end)
	API:GetGun("M9")
end
API.ChangeToggle = function(Name,arg2)
	if States[Name] == nil then
		States[Name] = false
	end
	if States[Name] ~= nil then
		if arg2 then
			if arg2 == "on" then
				States[Name] = true
			elseif arg2 == "off" then
				States[Name] = false
			end
			return
		end
		States[Name] = not States[Name]
	end
end
API.ExecuteCommand = function(Text)
	if States.Unloaded then return end
	if string.sub(Text, #Settings.Prefix, 1) ~= Settings.Prefix then
		return
	end
	Text=Text:lower()
	local Split = string.split(Text, " ")
	local Command = API.FindCommand(Split[1])
	if not Command then
		API.Notify("No command found under '"..Text:split(" ")[1].."'")
		return
	end
	local Success, Error = pcall(task.spawn,Command, Split)
	if not Success then
		warn("--// TIGER ADMIN ERROR \\\\\--\nCommand: "..Text:split(" ")[1].."\n"..Error)
	end
end
---
function API.BadArea(Player)
	local mod = require(game.ReplicatedStorage["Modules_client"]["RegionModule_client"])
	local a = pcall(function()
		if mod.findRegion(Player.Character) then
			mod = mod.findRegion(Player.Character)["Name"]
		end
	end)
	if not a then
		return
	end
	for i, v in pairs(game:GetService("ReplicatedStorage").PermittedRegions:GetChildren()) do
		if v and mod == v.Value then
			return false
		end
	end
	return true
end
-- Commands --
API.AddCommand("unload", function(Args)
	States = {}
	States.Unloaded = true
	API.Notify("Unloaded Gui, States and stopped most loops.")
	Main:TweenPosition(Main.Position+UDim2.new(0,0,1,0),"In","Back",.45)
	wait(.46)
	TigerAdmin_UI:Destroy()
end,{["Description"] = "Unloads the script",})
API.AddCommand("fix", function(Args)
	if Temp.ViewingPlayer then
		Temp.ViewingPlayer:Disconnect()
	end
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
	plr.Character:WaitForChild("HumanoidRootPart").Anchored = false
	plr.Character:WaitForChild("Humanoid").WalkSpeed = 16
end,{["Description"] = "Fixes Camera and player character",})
----------------------------------------------------------// <PLAYER> / <ALL> COMMANDS
API.AddCommand("kill", function(Args)
	if Args[2] then
		local t = {}
		local index = {}
		for i,v in pairs(game:GetService("Teams"):GetChildren()) do
			table.insert(t,v.Name:lower())
			table.insert(index,v)
		end
		if table.find(t,Args[2]) then
			API.KillTeam(index[table.find(t,Args[2])])
			return
		end
		if API.StringArgsChecker(Args[2]) == nil then
			local Target = API.FindPlayer(Args[2])
			if Target then
				API.Kill(Target)
			end
		else
			API.KillTeam("all")
		end
	end
end,{["Description"] = "Kills player(s)",["Type"] = "all",})
API.AddCommand("arrest", function(Args)
	if Args[2] and Args[2] == "all" then
		local LastPosition = API.GetPosition()
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v~= game:GetService("Players").LocalPlayer and v.Team == game.Teams.Criminals or (API:BadArea(v) and v.Team == game.Teams.Inmates) and v.Character.PrimaryPart and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
				repeat game:GetService("RunService").Stepped:Wait()
					API.MoveTo(v.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
					task.spawn(function()
						workspace.Remote.arrest:InvokeServer(v.Character.PrimaryPart)
					end)
				until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
				API.MoveTo(LastPosition)
				wait(.7)
			end
		end
		API.MoveTo(LastPosition)
	elseif Args[2] and Args[2]~="all" then
		local LastPosition = API.GetPosition()
		local Target = API.FindPlayer(Args[2])
		if Target then
			if Target.Team == game.Teams.Guards or not API.BadArea(Target) then
				return API.Notify("Can't arrest this player!")
			end
			repeat game:GetService("RunService").Stepped:Wait()
				API.MoveTo(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
				task.spawn(function()
					workspace.Remote.arrest:InvokeServer(Target.Character.PrimaryPart)
				end)
			until Target.Character["Head"]:FindFirstChildOfClass("BillboardGui")
		end
		API.MoveTo(LastPosition)
	end
end,{["Description"] = "Arrests a player",["Type"] = "Player,All"})
API.AddCommand("bring", function(Args)
	local Target = API.FindPlayer(Args[2])
	if Target then
		API.Bring(Target)
	end
end,{["Description"] = "Brings a player to you",["Type"] = "player"})
API.AddCommand("goto", function(Args)
	local Target = API.FindPlayer(Args[2])
	if Target then
		API.MoveTo(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,2.5))
	end
end,{["Description"] = "Teleports you to a player",["Type"] = "player"})
API.AddCommand("view", function(Args)
	local Target = API.FindPlayer(Args[2])
	if Target then
		if Temp.ViewingPlayer then
			Temp.ViewingPlayer:Disconnect()
		end
		Temp.ViewingPlayer = game:GetService("RunService").RenderStepped:Connect(function()
			pcall(function()
				task.spawn(function()
					workspace.CurrentCamera.CameraSubject = Target.Character:WaitForChild("Humanoid")
				end)
			end)
		end)
		API.Notify("Now viewing this player.")
	end
end,{["Description"] = "Spy on a player",["Type"] = "player"})
API.AddCommand("unview", function(Args)
	if Temp.ViewingPlayer then
		Temp.ViewingPlayer:Disconnect()
		Temp.ViewingPlayer = nil
	end
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
	API.Notify("Stopped view.")
end,{["Description"] = "Stops view command.",})
API.AddCommand("loopkill", function(Args)
	local Target = API.FindPlayer(Args[2])
	local t = {}
	local index = {}
	for i,v in pairs(game:GetService("Teams"):GetChildren()) do
		table.insert(t,v.Name:lower())
		table.insert(index,v)
	end
	if table.find(t,Args[2]) then
		local TeamFound = index[table.find(t,Args[2])]
		Temp.LkTEAMS[#Temp.LkTEAMS+1] = TeamFound
		return
	end
	if API.StringArgsChecker(Args[2]) == nil then
		local Target = API.FindPlayer(Args[2])
		if Target then
			if not table.find(Temp.Loopkill,Target.Name) then
				Temp.Loopkill[#Temp.Loopkill+1] = Target.Name
				API.Notify("Now loop killing player.")
			end
		end
	else
		Temp.LKALL = true
		API.Notify("Started looping")

	end
end,{["Description"] = "Spam kills the player even if he leaves",["Type"] = "all"})
API.AddCommand("unloopkill", function(Args)
	local t = {}
	local index = {}
	for i,v in pairs(game:GetService("Teams"):GetChildren()) do
		table.insert(t,v.Name:lower())
		table.insert(index,v)
	end
	if table.find(t,Args[2]) then
		local TeamFound = index[table.find(t,Args[2])]
		for i,v in pairs(Temp.LkTEAMS) do
			if v == TeamFound then
				Temp.LkTEAMS[i] = nil
			end
		end
		API.Notify("Stopped looping")
		return
	end
	if API.StringArgsChecker(Args[2]) == nil then
		local Target = API.FindPlayer(Args[2])
		if Target then
			if table.find(Temp.Loopkill,Target.Name) then
				table.remove(Temp.Loopkill,table.find(Temp.Loopkill,Target.Name))
				API.Notify("Stopped loopkilling this player.")
			end
		end
	else
		Temp.LKALL = false
		API.Notify("Stopped looping")

	end
end,{["Description"] = "Stops loopkilling a player",["Type"] = "all"})
------------------------------------------------------------------------//<ON><OFF> COMMANDS
API.AddCommand("autoitems", function(Args)
	local StateToChange = "AutoItems"
	API.ChangeToggle(StateToChange,Args[2])
end,{["Description"] = "Gives you tools everytime you die",["Type"] = "toggle"})
API.AddCommand("autorespawn", function(Args)
	local StateToChange = "AutoRespawn"
	API.ChangeToggle(StateToChange,Args[2])
	API.Refresh(plr.Team)
end,{["Description"] = "Respawns you back to your position after you die",["Type"] = "toggle",["Alt"] = {"autore"}})
----------------------------------------------------------------OTHER
API.AddCommand("removecars", function(Args)
	local p = API.GetPosition()
	for i,v in pairs(workspace.CarContainer:GetChildren()) do
		if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
			for i= 1,3 do
				task.wait()
				v:WaitForChild("Body"):WaitForChild("VehicleSeat"):Sit(plr.Character:FindFirstChildOfClass("Humanoid"))
			end
			repeat task.wait() until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
			v:WaitForChild("Body"):WaitForChild("VehicleSeat")
			v.PrimaryPart = v.Body.VehicleSeat

			for i =1,3 do
				task.wait()
				v:SetPrimaryPartCFrame(CFrame.new(99999,workspace.FallenPartsDestroyHeight+15,999999))
			end
			wait(.25)
			plr.Character:FindFirstChildOfClass("Humanoid").Sit = false
		end
	end
	wait()
	API.MoveTo(p)
end,{["Description"] = "Trys to remove all cars around the ma[",})
API.AddCommand("refresh", function(Args)
	API.Refresh(plr.Team,API.GetPosition(),true)
end,{["Description"] = "Reloads your character",["Alt"] = {"re"}})
API.AddCommand("inmate", function(Args)
	API.Refresh(game.Teams.Inmates,API.GetPosition(),true)
end,{["Description"] = "Reloads your character into inmates team",})
API.AddCommand("guard", function(Args)
	API.Refresh(game.Teams.Guards,API.GetPosition(),true)
end,{["Description"] = "Reloads your character into inmates guards",})
API.AddCommand("criminal", function(Args)
	API.Refresh(game.Teams.Criminals,API.GetPosition(),true)
end,{["Description"] = "Reloads your character into inmates criminals",})
API.AddCommand("car", function(Args)
	API.GetCar()
end,{["Description"] = "Brings a car to you",})
API.AddCommand("lag", function(Args)
	if not API.GuardsFull(true) then
		API.Refresh(game.Teams.Guards,API.GetPosition(),true)
	else
		API.GetGun("M9")
		repeat task.wait() until API.IsFound("M9")
	end
	for i =1,45 do
		game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer({}, API.GetGun("M9"))
	end
	API.Notify("Lagged the server.")
end,{["Description"] = "Lags the server",})
API.AddCommand("crashserver", function(Args)
	API.Notify("Attempting to crash the server this might take some time.")
	if not API.GuardsFull(true) then
		API.Refresh(game.Teams.Guards,API.GetPosition(),true)
	else
		API.GetGun("M9")
		repeat task.wait() until API.IsFound("M9")
	end
	for i =1,10000000000 do
		game:GetService("RunService").Stepped:Wait()
		game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer({},(plr.Backpack:FindFirstChild("M9") or plr.Character:FindFirstChild("M9")))
	end
end,{["Description"] = "Tries to crash the server",})
API.AddCommand("guns", function(Args)
	API.Guns()
end,{["Description"] = "Gives you all guns",})
API.AddCommand("m9", function(Args)
	API.GetGun("M9")
end,{["Description"] = "Gives you a m9",})
API.AddCommand("ak", function(Args)
	API.GetGun("AK-47")
end,{["Description"] = "Gives you a ak",})
API.AddCommand("shotgun", function(Args)
	API.GetGun("Remington 870")
end,{["Description"] = "Gives you a shotgun",})
API.AddCommand("m4", function(Args)
	API.GetGun("M4A1")
end,{["Description"] = "Gives you a gun",})
API.AddCommand("knife", function(Args)
	workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
end,{["Description"] = "Gives you a knife",})
API.AddCommand("hammer", function(Args)
	workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Hammer"]})
end,{["Description"] = "Gives you a hammer",})
API.AddCommand("allcmds", function(Args)
	API.Notify("Tiger admin has "..tostring(Temp.CMDA).." commands.")
end,{["Description"] = "Tells you how much commands Tiger admin has",})
API.AddCommand("shield", function()
	local Shield = API.FindShield()
	if not Shield then
		API.Notify("Shield could not be found.")
		return
	end
	repeat task.wait() 
		Remote.equipShield:FireServer(Shield)	
	until Player.Character and Player.Character:FindFirstChild("shield", true) and Player.Character:FindFirstChild("shield",true).Transparency < 1
	if Player.Character:FindFirstChild("shield",true).CanCollide then
		API.Notify("Warning: This shield has collisions")
	end
end, {["Description"] = "Will try to find a shield and equip one for you."})
API.AddCommand("armory", function(Args)
	local Pos = CFrame.new(835.3958129882812, 99.98998260498047, 2269.98046875)
	local Target = API.FindPlayer(Args[2])
	if not Target then
		API.MoveTo(Pos)
	else
		API.Bring(Target,Pos)
	end
end,{["Description"] = "Teleports you to the armory",})
API.AddCommand("prison", function(Args)
	local Pos = CFrame.new(914.2466430664062, 99.98998260498047, 2365.96923828125)
	local Target = API.FindPlayer(Args[2])
	if not Target then
		API.MoveTo(Pos)
	else
		API.Bring(Target,Pos)
	end
end,{["Description"] = "Teleports you to the prison",["Alt"] = {"nex"}})
API.AddCommand("cafe", function(Args)
	local Pos = CFrame.new(918.4052124023438, 99.98993682861328, 2228.078857421875)
	local Target = API.FindPlayer(Args[2])
	if not Target then
		API.MoveTo(Pos)
	else
		API.Bring(Target,Pos)
	end
end,{["Description"] = "Teleports you to the cafe",})
API.AddCommand("tower", function(Args)
	local Pos = CFrame.new(822.0411987304688, 130.03990173339844, 2570.348876953125)
	local Target = API.FindPlayer(Args[2])
	if not Target then
		API.MoveTo(Pos)
	else
		API.Bring(Target,Pos)
	end
end,{["Description"] = "Teleports you to the tower at yard",})
API.AddCommand("crimbase", function(Args)
	local Pos = CFrame.new(-860.5330200195312, 94.47602844238281, 2099.54833984375)
	local Target = API.FindPlayer(Args[2])
	if not Target then
		API.MoveTo(Pos)
	else
		API.Bring(Target,Pos)
	end
end,{["Description"] = "Teleports you to the criminals base",})
plr.CharacterAdded:Connect(function(NewChar)
	NewChar:WaitForChild("Humanoid")
	if States.AutoItems then
		API.Guns()
	end
	if States.AutoRespawn then
		NewChar:WaitForChild("Humanoid").BreakJointsOnDeath = not States.AutoRespawn
		NewChar:WaitForChild("Humanoid").Died:Connect(function()
			if not States.Unloaded and States.AutoRespawn == true then
				API.Refresh(plr.Team,API.GetPosition())
				task.spawn(function()
					if States.AutoItems then
						wait(.5)
						API.Guns()
					end
				end)
			end
		end)
	end
end)
Player.Chatted:Connect(API.ExecuteCommand)
CommandBar.FocusLost:Connect(function(a)
	local txt = CommandBar.Text
	if a and #txt >0 then
		if string.sub(txt,1,1) ~= Settings.Prefix then
			txt = Settings.Prefix..txt
		end
		API.ExecuteCommand(txt)
	end
	CommandBar.Text = ""
end)
CommandBar.Changed:Connect(function()
	if CommandBar.Text:find(";") and Settings.Prefix ~= ";" then
		CommandBar.Text = CommandBar.Text:gsub(";","")
	end
end)

--------------// FIELD OF LOOPS!
task.spawn(function()
	while wait(1) do --//Loopkill Optimized
		if Temp.LKALL == true then
			API.KillTeam("all")
		end
		for i,v in pairs(Temp.LkTEAMS) do
			if v then
				API.KillTeam(v)
			end
		end
		if States.Unloaded then break end
		if Temp.Loopkill and #Temp.Loopkill >0 then
			for i,v in pairs(Temp.Loopkill) do
				if v then
					local Target = game:GetService("Players"):FindFirstChild(v)
					if Target then
						API.Kill(Target,nil,true)
						wait(.7)
					else
						table.remove(Temp.Loopkill,i)
					end
				end
			end
		end
	end
end)
API.Notify("Press ';' to open Tiger Admin Menu. Welcome to Tiger Admin 2.0",4)