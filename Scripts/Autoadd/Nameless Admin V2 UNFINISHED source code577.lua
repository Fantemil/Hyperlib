repeat
	task.wait()
until game:IsLoaded()

local Settings = {
	Prefix = ";",
	GetPlayerSeperator = ",",
	Version = "2.0",
	Themes = {
		--// Gui
		PrimaryBGColor = Color3.fromRGB(33, 34, 44), -- // default : 25,25,25
		TopbarColor = Color3.fromRGB(34, 35, 45), -- // default : 26,26,26
		PrimaryTextColor = Color3.fromRGB(255, 255, 255), -- // default : 255,255,255
		SecondaryTextColor = Color3.fromRGB(200, 200, 200), -- // default : 200,200,200
		ImageColor = Color3.fromRGB(255, 255, 255), -- // default : 255,255,255
		OutlineColor = Color3.fromRGB(0, 0, 0), -- // border of the uis (basically acts as a shadow) : default : 0, 0, 0
		OutlineColor2 = Color3.fromRGB(39, 41, 52), -- // outline of stuff in uis (buttons, frames, etc.) : default : 45, 45, 45
		--// CmdBar
		CommandLinesColor = Color3.fromRGB(33, 34, 44),
		CommandCenterBarColor = Color3.fromRGB(33, 34, 44),
		EdgeColor = Color3.fromRGB(33, 34, 44),
		AutofillColor = Color3.fromRGB(33, 34, 44),
		AutofillTextColor = Color3.fromRGB(255, 255, 255),
		InputTextColor = Color3.fromRGB(255, 255, 255)
	},
	KeyBinds = {},
	Waypoints = {},
	Options = {},
	Admins = {}
}

--// if re-executed it will just remove the old ui
if getgenv then
	if getgenv().NamelessLoaded then
		getgenv().NamelessInterfacePath.Parent = nil
		getgenv().ShadowPath.Parent = nil
	end
end

local Checks = {
	CheckIfFolderFuncs = isfolder and makefolder and delfolder,
	CheckIfFileFuncs = isfile and writefile and delfile and listfiles and loadfile
}

if Checks.CheckIfFolderFuncs then
	if not isfolder("Nameless-Admin-V2") then
		makefolder("Nameless-Admin-V2")
	end

	if not isfolder("Nameless-Admin-V2/Plugins") then
		makefolder("Nameless-Admin-V2/Plugins")
	end

	if not isfolder("Nameless-Admin-V2/Waypoints") then
		makefolder("Nameless-Admin-V2/Waypoints")
	end

	if not isfolder("Nameless-Admin-V2/KeyBinds") then
		makefolder("Nameless-Admin-V2/KeyBinds")
	end
end

local Services = {
	Players = game:GetService("Players"),
	CoreGui = game:GetService("CoreGui"),
	UserInputService = game:GetService("UserInputService"),
	LocalPlayer = game:GetService("Players").LocalPlayer,
	PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui,
	StarterGui = game:GetService("StarterGui"),
	RunService = game:GetService("RunService"),
	TeleportService = game:GetService("TeleportService"),
	SoundService = game:GetService("SoundService"),
	TweenService = game:GetService("TweenService"),
	AvatarEditorService = game:GetService("AvatarEditorService"),
	Workspace = workspace,
	Character = game:GetService("Players").LocalPlayer.Character,
	TextChatService = game:GetService("TextChatService"),
	ReplicatedStorage = game:GetService("ReplicatedStorage"),
	Camera = workspace.CurrentCamera,
	Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
	Lighting = game:GetService("Lighting")
}

Services.LocalPlayer.CharacterAdded:Connect(
	function(NewCharacter)
		Services.Character = NewCharacter
	end
)

local CommandToggles = {
	FakeLag = false,
	Nerd = false,
	NerdAlreadyRan = false,
	StarterPlaceBlockSpam = false,
	LoopFling = false,
	ESP = false,
	AlreadyStartedLogging = false, -- used for the logs commands
	HideDisplayNames = false,
	FollowNPCS = false,
	LAAT = false,
	InfIniteJump = false,
	TPWalk = false,
	Walkfling = true,
	TBot = false,
	HideUIs = {},
	AntiFling = false,
	FloodChat = false,
	Disability = false,
	AlreadyRanDisability = false,
	LoopGrab = false,
	Loop = false,
	LoopGrabDelete = false,
	Stand = false,
	Mute = false,
	Glitch = false,
}

local Interface
Interface = game:GetObjects("rbxassetid://15144458714")[1]
Interface.Parent = Services.CoreGui

Interface.Servers.Visible = false
Interface.Options.Visible = false
Interface.Commands.Visible = false
Interface.Top.Visible = false
Interface.Logs.Visible = false
Interface.Introduction.Visible = false
Interface.CmdBar.Visible = false
Interface.Notification.Visible = true
Interface.Notification.Notification.Visible = false
Interface.Top.PlayerIcon.Image =
	Services.Players:GetUserThumbnailAsync(
		Services.LocalPlayer.UserId,
		Enum.ThumbnailType.HeadShot,
		Enum.ThumbnailSize.Size420x420
	)

local NFuncs = {} --// NamelessFunctions
local PlayerFuncs = {}
local UIFuncs = {
	--// Popup
	FrameSpeed = 0.5,
	CloseSpeed = 0.3,
	Styles = {
		OpenEasingStyle = Enum.EasingStyle.Back,
		OpenEasingDirection = Enum.EasingDirection.InOut,
		CloseEasingStyle = Enum.EasingStyle.Sine,
		CloseEasingDirection = Enum.EasingDirection.Out
	},
	--// Notification
	NotificationHandler = Interface.Notification,
	OriginalNotificationSize = Interface.Notification.Notification.Size,
	NotificationTweenSpeed = 0.2,
	NotificationStyles = {
		EasingStyle = Enum.EasingStyle.Sine,
		EasingDirection = Enum.EasingDirection.Out
	}
}

function NFuncs.CheckIfNPC(Character)
	if
		Character and Character.ClassName == "Model" and Character:FindFirstChildOfClass("Humanoid") and
		not Services.Players:GetPlayerFromCharacter(Character)
	then
		return true
	else
		return false
	end
end

function NFuncs.RandomString()
	local String = {}
	for St = 1, math.random(10, 15) do
		String[St] = string.char(math.random(32, 126))
	end
	return table.concat(String)
end

--[[function NFuncs.CheckIfMobile()
	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, Services.UserInputService:GetPlatform()) then 
		return true
	else
		return false
	end
end]]
function PlayerFuncs.GetPlayer(Arg)
	local Target = {}

	local PlayerNames = Library.ParseText(Arg, Settings.GetPlayerSeperator)
	for i, String in next, PlayerNames or {"me"} do
		if String == nil then
			table.insert(Target, Services.LocalPlayer)
		elseif String:lower() == "random" then
			table.insert(Target, Services.Players:GetPlayers()[math.random(#Services.Players:GetPlayers())])
		elseif String:lower() == "me" then
			table.insert(Target, Services.LocalPlayer)
		elseif String:lower() == "all" then
			for i, Player in next, Services.Players:GetPlayers() do
				table.insert(Target, Player)
			end
		elseif String:lower() == "others" then
			for i, Player in next, Services.Players:GetPlayers() do
				if Player ~= Services.LocalPlayer then
					table.insert(Target, Player)
				end
			end
		elseif String:find("*") == 1 then --// Team search
			for i, Player in next, Services.Players:GetPlayers() do
				if tostring(Player.Team):lower():find(String:gsub(2)) then
					table.insert(Target, Player)
				end
			end
		elseif String:lower() == "enemies" then
			for i, Player in next, Services.Players:GetPlayers() do
				if Player.Team ~= Services.LocalPlayer.Team then
					table.insert(Target, Player)
				end
			end
		elseif String:lower() == "dead" then
			for i, Player in next, Services.Players:GetPlayers() do
				if Player.Character and Player.Character.Humanoid then
					if Player.Character.Humanoid.Health == 0 then
						table.insert(Target, Player)
					end
				end
			end
		elseif String:lower() == "alive" then
			for i, Player in next, Services.Players:GetPlayers() do
				if Player.Character and Player.Character.Humanoid then
					if Player.Character.Humanoid.Health >= 0 then
						table.insert(Target, Player)
					end
				end
			end
		elseif String:lower() == "npc" then
			for i, NPC in next, workspace:GetDescendants() do
				if NFuncs.CheckIfNPC(NPC) then
					table.insert(Target, NPC)
				end
			end
		elseif String:lower() == "friends" then
			for i, Player in next, Services.Players:GetPlayers() do
				if Player:IsFriendsWith(Services.LocalPlayer.UserId) and Player ~= Services.LocalPlayer then
					table.insert(Target, Player)
				end
			end
		elseif String:lower() == "nonfriends" then
			for i, Player in next, Services.Players:GetPlayers() do
				if not Player:IsFriendsWith(Services.LocalPlayer.UserId) and Player ~= Services.LocalPlayer then
					table.insert(Target, Player)
				end
			end
		elseif String:lower() == "closest" then
			local Lowest = math.huge
			local LPlayer
			if Services.LocalPlayer.Character then
				for i, Player in next, Services.Players:GetPlayers() do
					if Player.Character and Player ~= Services.LocalPlayer then
						local Distance =
							Player:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
						if Distance < Lowest then
							Lowest = Distance
							LPlayer = Player
						end
					end
				end
				table.insert(Target, LPlayer)
			end
		elseif String:lower() == "farthest" then
			local Highest = 0
			if Services.LocalPlayer.Character then
				for i, Player in next, Services.Players:GetPlayers() do
					if Player.Character and Player ~= Services.LocalPlayer then
						local Distance = Player:DistanceFromCharacter(Services.Character.HumanoidRootPart.Position)
						if Distance > Highest then
							Highest = Distance
							table.insert(Target, Player)
						end
					end
				end
			else
				return
			end
		else
			String = String:lower():gsub("%s", "")
			for _, Player in next, Services.Players:GetPlayers() do
				if Player.Name:lower():match(String) then
					table.insert(Target, Player)
				elseif Player.DisplayName:lower():match("^" .. String) then
					table.insert(Target, Player)
				end
			end
		end
	end
	return Target
end

function PlayerFuncs.Chat(Message)
	if Services.TextChatService:FindFirstChild("TextChannels") then
		Services.TextChatService.TextChannels.RBXGeneral:SendAsync(tostring(Message))
	else
		Services.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(Message), "All")
	end
end

function PlayerFuncs.PromptChangeRigType(RigType)
	Services.AvatarEditorService:PromptSaveAvatar(
		Services.LocalPlayer.Character.Humanoid.HumanoidDescription,
		Enum.HumanoidRigType[RigType]
	)
end

function PlayerFuncs.Fling(Target)
	if Services.LocalPlayer.Character and Target.Character then
		-- wip lazy rn
		local Character = Services.LocalPlayer.Characater
		local HRP = Character.HumanoidRootPart
		local Humanoid = Character.Humanoid

		local TargetCharacter = Target.Character
	end
end

function PlayerFuncs.Walkfling(Power)
	CommandToggles.Walkfling = false --// this is to stop the one before if the person is running touchfling again
	wait(0.3)
	CommandToggles.Walkfling = true
	spawn(
		function()
			local HumanoidRootPart, Character, Velocity, Movel = nil, nil, nil, 0.1
			repeat
				task.wait()
				if CommandToggles.Walkfling then
					while CommandToggles.Walkfling and
						not (Character and Character.Parent and HumanoidRootPart and HumanoidRootPart.Parent) do
						Services.RunService.Heartbeat:Wait()
						Character = Services.LocalPlayer.Character
						HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
					end
					if CommandToggles.Walkfling then
						if
							unpack(PlayerFuncs.GetPlayer("closest")):DistanceFromCharacter(
							Services.Character.HumanoidRootPart.Position
							) <= 5
						then
							Velocity = HumanoidRootPart.Velocity
							HumanoidRootPart.Velocity = Velocity * tonumber(Power) + Vector3.new(0, tonumber(Power), 0)
							game:GetService("RunService").RenderStepped:Wait()
							if Character and Character.Parent and HumanoidRootPart and HumanoidRootPart.Parent then
								HumanoidRootPart.Velocity = Velocity
							end
							game:GetService("RunService").Stepped:Wait()
							if Character and Character.Parent and HumanoidRootPart and HumanoidRootPart.Parent then
								HumanoidRootPart.Velocity = Velocity + Vector3.new(0, Movel, 0)
								Movel = Movel * -1
							end
						end
					end
				end
			until not CommandToggles.Walkfling
		end
	)
end

function PlayerFuncs.ESP(Player)
	CommandToggles.ESP = true
	if
		Player and Player ~= Services.LocalPlayer and Player.Character and Player.Character.Head and CommandToggles.ESP --[[ and Player ~= Services.LocalPlayer]]
	then
		local function AddText(Head)
			if not Head then
				repeat
					task.wait()
				until Head
			end
			if CommandToggles.ESP then
				local Billboard =
					UIFuncs.CreateInstance(
						"BillboardGui",
						{
							Parent = Head,
							AlwaysOnTop = true,
							Size = UDim2.new(0, 100, 0, 150),
							Adornee = Head
						}
					)

				local ListLayout =
					UIFuncs.CreateInstance(
						"UIListLayout",
						{
							Parent = Billboard
						}
					)

				local Name =
					UIFuncs.CreateInstance(
						"TextLabel",
						{
							Parent = Billboard,
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 100, 0, 30),
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextScaled = true,
							TextStrokeTransparency = 0,
							Text = Player.Name,
							Font = Enum.Font.GothamBold
						}
					)

				local Health =
					UIFuncs.CreateInstance(
						"TextLabel",
						{
							Parent = Billboard,
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 100, 0, 40),
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextScaled = true,
							TextStrokeTransparency = 0,
							Font = Enum.Font.GothamBold
						}
					)

				UIFuncs.CreateInstance("Highlight", {Parent = Head.Parent})

				spawn(
					function()
						while Health do
							wait()
							pcall(
								function()
									if Head and Head.Parent and Head.Parent:FindFirstChild("Humanoid") then
										Health.Text = "Health: " .. Head.Parent:FindFirstChild("Humanoid").Health
									end
								end
							)
						end
					end
				)
			end
		end

		AddText(Player.Character.Head)

		Player.CharacterAdded:Connect(
			function(Character)
				repeat
					wait()
				until Character and Character:FindFirstChild("Head") and Character:FindFirstChild("Humanoid")
				wait(0.1)
				AddText(Character.Head)
			end
		)
	end
end

function PlayerFuncs.UnESP(Player)
	CommandToggles.ESP = false
	if
		Player.Character and Player.Character.Head and Player.Character.Head:FindFirstChild("BillboardGui") and
		Player.Character:FindFirstChild("Highlight")
	then
		Player.Character.Head.BillboardGui:Destroy()
		Player.Character.Highlight:Destroy()
	end
end

function UIFuncs.Destroy(UIObject)
	if
		not pcall(
			function()
				UIObject.Parent = Services.CoreGui
			end
		)
	then
		UIObject.Parent = nil
	end
end

function UIFuncs.Open(Frame, OffsetSizeX, OffsetSizeY, Speed)
	if Frame then
		Frame.Size = UDim2.new(0, 0, 0, 0)
		Frame.Visible = true
		local Opening =
			Services.TweenService:Create(
				Frame,
				TweenInfo.new(Speed, UIFuncs.Styles.OpenEasingStyle, UIFuncs.Styles.OpenEasingDirection),
				{Size = UDim2.fromOffset(OffsetSizeX, OffsetSizeY)}
			)
		Opening:Play()
	end
end

function UIFuncs.Close(Frame, Speed, OffsetX, OffsetY)
	if Frame then
		if not OffsetX and OffsetY then
			OffsetX = 0
			OffsetY = 0
		end
		local Closing =
			Services.TweenService:Create(
				Frame,
				TweenInfo.new(Speed, UIFuncs.Styles.CloseEasingStyle, UIFuncs.Styles.CloseEasingDirection),
				{Size = UDim2.fromOffset(0, 0)}
			)
		Closing:Play()
		spawn(
			function()
				wait(Speed + 0.1)
				Frame.Visible = false
			end
		)
	end
end

function UIFuncs.TypeWriter(Object, Text)
	spawn(
		function()
			if Object and Object.ClassName == "TextLabel" then
				for i = 1, #Text, 1 do
					Object.Text = string.sub(Text, 1, i)
					task.wait()
				end
			end
		end
	)
end

function UIFuncs.Drag(Frame, Speed)
	local UserInputService = Services.UserInputService
	local RunService = (Services.RunService)
	local Dragging
	local DragInput
	local DragStart
	local StartPos

	local function Lerp(a, b, m)
		return a + (b - a) * m
	end

	if Speed == nil then
		Speed = 4
	end

	local LMPos
	local LGPos
	local DragSpeed = (tonumber(Speed))

	local function Update(dt)
		if not (StartPos) then
			return
		end
		if not (Dragging) and (LGPos) then
			Frame.Position =
				UDim2.new(
					StartPos.X.Scale,
					Lerp(Frame.Position.X.Offset, LGPos.X.Offset, dt * DragSpeed),
					StartPos.Y.Scale,
					Lerp(Frame.Position.Y.Offset, LGPos.Y.Offset, dt * DragSpeed)
				)
			return
		end

		local Delta = (LMPos - UserInputService:GetMouseLocation())
		local XG = (StartPos.X.Offset - Delta.X)
		local YG = (StartPos.Y.Offset - Delta.Y)
		LGPos = UDim2.new(StartPos.X.Scale, XG, StartPos.Y.Scale, YG)
		Frame.Position =
			UDim2.new(
				StartPos.X.Scale,
				Lerp(Frame.Position.X.Offset, XG, dt * DragSpeed),
				StartPos.Y.Scale,
				Lerp(Frame.Position.Y.Offset, YG, dt * DragSpeed)
			)
	end

	Frame.InputBegan:Connect(
		function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = Input.Position
				StartPos = Frame.Position
				LMPos = UserInputService:GetMouseLocation()

				Input.Changed:Connect(
					function()
						if Input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	Frame.InputChanged:Connect(
		function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseMovement or
				Input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = Input
			end
		end
	)

	RunService.Heartbeat:Connect(Update)
end

local Tabs = Interface.Commands.Tabs
local CurrentTab

for i, v in next, Tabs:GetChildren() do
	if v:IsA("ScrollingFrame") then
		if v.Name == "Commands" then
			CurrentTab = "Commands"
			v.Visible = true
			v.Position = UDim2.new(0, 0, 0, 0)
			v.Command.Visible = false
		else
			v.Position = UDim2.new(0, 310, 0, 0)
			v.Visible = false
		end
	end
end

function UIFuncs.CreateInstance(Name, Properties, Children)
	local Object = Instance.new(Name)
	for i, Property in next, Properties or {} do
		Object[i] = Property
	end
	for i, Children in next, Children or {} do
		Children.Parent = Object
	end

	return Object
end

function UIFuncs.AddCommand(Name, Description, Args)
	local Commands = Interface.Commands
	local Tabs = Commands.Tabs
	local TweenSpeed = 0.5
	local Back = Commands.Topbar.Back
	local Cooldown = false

	local NewCommand = Tabs.Commands.Command:Clone()
	NewCommand.Parent = Tabs.Commands
	NewCommand.Visible = true
	NewCommand.Description.Text = Description
	NewCommand.Title.Text = Name

	NewCommand.MouseButton1Click:Connect(
		function()
			if not Cooldown then
				Cooldown = true
				Back.Icon.Image = "rbxassetid://11422143469"
				Tabs.CommandInfoExample.Visible = true
				Services.TweenService:Create(
					Tabs.Commands,
					TweenInfo.new(TweenSpeed),
					{Position = UDim2.new(0, -310, 0, 0)}
				):Play()
				Services.TweenService:Create(
					Tabs.CommandInfoExample,
					TweenInfo.new(TweenSpeed),
					{Position = UDim2.new(0, 0, 0, 0)}
				):Play()
				local Arguments = Tabs.CommandInfoExample.Arguments
				Arguments.Title.Text = Name
				Arguments.Description.Text = Args
				wait(TweenSpeed + 0.1)
				Tabs.Commands.Visible = false
				CurrentTab = "CommandInfoExample"
				Cooldown = false
			end
		end
	)

	Back.MouseButton1Click:Connect(
		function()
			if Back.Icon.Image == "rbxassetid://11422143469" then
				if not Cooldown then
					Cooldown = true
					Back.Icon.Image = "rbxassetid://11293977875"
					Tabs.Commands.Visible = true
					Services.TweenService:Create(
						Tabs.Commands,
						TweenInfo.new(TweenSpeed),
						{Position = UDim2.new(0, 0, 0, 0)}
					):Play()
					Services.TweenService:Create(
						Tabs.CommandInfoExample,
						TweenInfo.new(TweenSpeed),
						{Position = UDim2.new(0, 310, 0, 0)}
					):Play()
					wait(TweenSpeed + 0.1)
					Tabs.CommandInfoExample.Visible = false
					Cooldown = false
				end
			end
		end
	)
end

function UIFuncs.GetCurrentTime()
	return tostring(os.date("%I") .. ":" .. os.date("%M") .. " " .. string.upper(tostring(os.date("%p"))))
end

function UIFuncs.SendNotification(Title, Description, Duration)
	--// garbage code dont look plz ignore
	spawn(
		function()
			local ClonedNotif = UIFuncs.NotificationHandler.Notification:Clone()
			ClonedNotif.Description.Visible = false
			ClonedNotif.Title.Visible = false
			ClonedNotif.Parent = UIFuncs.NotificationHandler
			ClonedNotif.Size = UDim2.new(0, 0, 0, 0)

			ClonedNotif.Timer.Timer.Transparency = 1
			ClonedNotif.BackgroundTransparency = 1
			ClonedNotif.Description.TextTransparency = 1
			ClonedNotif.Title.TextTransparency = 1
			ClonedNotif.Visible = true
			ClonedNotif.Description.Text = Description
			ClonedNotif.Title.Text = Title
			ClonedNotif.Timer.Timer.Size = UDim2.new(0, 204, 0, 2)
			Services.TweenService:Create(
				ClonedNotif,
				TweenInfo.new(UIFuncs.NotificationTweenSpeed),
				{BackgroundTransparency = 0}
			):Play()
			Services.TweenService:Create(
				ClonedNotif.Title,
				TweenInfo.new(UIFuncs.NotificationTweenSpeed),
				{TextTransparency = 0}
			):Play()
			Services.TweenService:Create(
				ClonedNotif.Description,
				TweenInfo.new(UIFuncs.NotificationTweenSpeed),
				{TextTransparency = 0}
			):Play()
			Services.TweenService:Create(
				ClonedNotif,
				TweenInfo.new(
					UIFuncs.NotificationTweenSpeed,
					UIFuncs.NotificationStyles.EasingStyle,
					UIFuncs.NotificationStyles.EasingDirection
				),
				{Size = UIFuncs.OriginalNotificationSize}
			):Play()
			Services.TweenService:Create(
				ClonedNotif.Timer.Timer,
				TweenInfo.new(Duration + 0.1),
				{Size = UDim2.new(0, 1, 0, 2)}
			):Play()
			Services.TweenService:Create(ClonedNotif.Timer.Timer, TweenInfo.new(Duration + 0.1), {Transparency = 0}):Play(

			)
			spawn(
				function()
					wait(UIFuncs.NotificationTweenSpeed - 0.1)
					ClonedNotif.Description.Visible = true
					ClonedNotif.Title.Visible = true
				end
			)
			task.wait(Duration)
			Services.TweenService:Create(
				ClonedNotif.Outline,
				TweenInfo.new(UIFuncs.NotificationTweenSpeed),
				{Transparency = 1}
			):Play()
			Services.TweenService:Create(
				ClonedNotif,
				TweenInfo.new(UIFuncs.NotificationTweenSpeed),
				{BackgroundTransparency = 1}
			):Play()
			Services.TweenService:Create(
				ClonedNotif,
				TweenInfo.new(
					UIFuncs.NotificationTweenSpeed,
					UIFuncs.NotificationStyles.EasingStyle,
					UIFuncs.NotificationStyles.EasingDirection
				),
				{Size = UDim2.new(0, 0, 0, 40)}
			):Play()
			ClonedNotif.Title:Destroy()
			ClonedNotif.Description:Destroy()
			wait(UIFuncs.NotificationTweenSpeed)
			ClonedNotif:Destroy()
		end
	)
	wait(0.1)
end

local Popup = Interface.Popup
Popup.BackgroundTransparency = 1
Popup.Outline.Transparency = 1
Popup.Visible = false
Popup.Description.TextTransparency = 1
Popup.Title.TextTransparency = 1
Popup.Bottom.Transparency = 1
Popup.Bottom.UIStroke.Transparency = 1

spawn(
	function()
		for i, v in next, Popup.Bottom:GetChildren() do
			if v:IsA("TextButton") then
				v.BackgroundTransparency = 1
				v.TextTransparency = 1
				v.UIStroke.Transparency = 1
			end
		end
	end
)

--if table.find({Enum.Platform.IOS, Enum.Platform.Android}, Services.UserInputService:GetPlatform()) then
local UserInterface =
	UIFuncs.CreateInstance(
		"ScreenGui",
		{
			Parent = Interface,
			Name = NFuncs.RandomString(),
			ResetOnSpawn = false
		}
	)

local Button =
	UIFuncs.CreateInstance(
		"TextButton",
		{
			Parent = UserInterface,
			Name = NFuncs.RandomString(),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.499, 0, 0.08, 0),
			Size = UDim2.new(0, 33, 0, 33),
			BackgroundColor3 = Settings.Themes.PrimaryBGColor,
			Text = "Na",
			TextSize = 16,
			Font = Enum.Font.GothamBold,
			TextColor3 = Settings.Themes.SecondaryTextColor
		}
	)

UIFuncs.CreateInstance(
	"UIStroke",
	{
		Thickness = 1,
		Transparency = 0.8,
		ApplyStrokeMode = "Border",
		Parent = Button
	}
)

UIFuncs.CreateInstance(
	"UICorner",
	{
		Parent = Button,
		CornerRadius = UDim.new(1, 0),
		Name = NFuncs.RandomString()
	}
)

UIFuncs.Drag(Button, 20)
--end

function UIFuncs.LoadTheme()
	local Theme = Settings.Themes

	for i, Child in next, Interface:GetDescendants() do
		if Child:IsA("Frame") and Child.Parent == Interface then
			Child.BackgroundColor3 = Theme.PrimaryBGColor
		elseif Child.Name == "Example" and Child:IsA("Frame") then
			Child.BackgroundColor3 = Theme.TopbarColor
		elseif Child:IsA("ImageLabel") or Child:IsA("ImageButton") then
			if Child.Name == "Edge" then
				Child.ImageColor3 = Theme.EdgeColor
			else
				Child.ImageColor3 = Theme.ImageColor
				Child.BackgroundColor3 = Theme.PrimaryBGColor
			end
		elseif Child:IsA("CanvasGroup") then
			Child.BackgroundColor3 = Theme.TopbarColor
		elseif Child.Name == "Description" and Child:IsA("TextLabel") then
			Child.TextColor3 = Theme.SecondaryTextColor
		elseif Child.Name == "Topbar" or Child.Name == "Bottom" and Child:IsA("Frame") then
			Child.BackgroundColor3 = Theme.TopbarColor
		elseif Child:IsA("TextButton") or Child:IsA("TextBox") then
			if Child.Name == "Input" and Child.Parent.Name == "CenterBar" then
				Child.TextColor3 = Theme.InputTextColor
			else
				Child.BackgroundColor3 = Theme.TopbarColor
				Child.TextColor3 = Theme.PrimaryTextColor
			end
		elseif Child.Name == "Title" and Child:IsA("TextLabel") then
			Child.TextColor3 = Theme.PrimaryTextColor
		elseif Child.Name == "Bottom1" and Child.Parent.Name == "Topbar" then
			Child.BackgroundColor3 = Theme.TopbarColor
		elseif Child:IsA("Frame") and Child.Name == "Outline" then
			Child.BackgroundColor3 = Theme.OutlineColor2
		elseif Child:IsA("UIStroke") then
			if Child.Name == "UIStroke" then
				Child.Color = Theme.OutlineColor2
			end
		elseif Child:IsA("Frame") and Child.Name == "Horizontal" then
			if Child.Parent.Name == not "CenterBar" then
				Child.BackgroundColor3 = Theme.CommandLinesColor
			elseif Child:IsA("Frame") and Child.Parent.Name == "Background" then
				Child.BackgroundColor3 = Theme.AutofillColor
			else
				Child.BackgroundColor3 = Theme.CommandCenterBarColor
			end
		elseif Child.Name == "Input" and Child:IsA("TextLabel") and Child.Parent:FindFirstChild("Background") then
			Child.TextColor3 = Theme.AutofillTextColor
		end
	end

	Interface.Notification.Notification.BackgroundColor3 = Theme.PrimaryBGColor
	Interface.Commands.Tabs.CommandInfoExample.Arguments.BackgroundColor3 = Theme.TopbarColor
	Button.BackgroundColor3 = Theme.PrimaryBGColor
end

--// insert shadow frame

local SG =
	UIFuncs.CreateInstance(
		"ScreenGui",
		{
			Name = NFuncs.RandomString(),
			Parent = Services.CoreGui,
			ResetOnSpawn = false
		}
	)

local Shadow =
	UIFuncs.CreateInstance(
		"Frame",
		{
			Name = NFuncs.RandomString(),
			Parent = SG,
			Size = UDim2.new(2, 0, 2, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = Color3.fromRGB(),
			BackgroundTransparency = 1
		}
	)

function UIFuncs.ClosePopup(ObjectClone)
	spawn(
		function()
			for i = 1, 30 do
				task.wait(0.001)
				Shadow.BackgroundTransparency = Shadow.BackgroundTransparency + 0.01
			end
			Shadow.BackgroundTransparency = 1
			wait(0.3)
			Shadow.BackgroundTransparency = 1
		end
	)
	UIFuncs.Close(ObjectClone, 0.4)
	spawn(
		function()
			for i = 1, 20 do
				task.wait()
				ObjectClone.BackgroundTransparency = ObjectClone.BackgroundTransparency + 0.09
				ObjectClone.Outline.Transparency = ObjectClone.Outline.Transparency + 0.02
				ObjectClone.Description.TextTransparency = ObjectClone.Description.TextTransparency + 0.3
				ObjectClone.Title.TextTransparency = ObjectClone.Title.TextTransparency + 0.3
				ObjectClone.Bottom.Transparency = ObjectClone.Bottom.Transparency + 0.05
				ObjectClone.Bottom.UIStroke.Transparency = ObjectClone.Bottom.UIStroke.Transparency + 0.03

				spawn(
					function()
						for i, v in next, ObjectClone.Bottom:GetChildren() do
							if v:IsA("TextButton") then
								task.wait()
								v.BackgroundTransparency = v.BackgroundTransparency + 0.08
								v.TextTransparency = v.TextTransparency + 0.08
								v.UIStroke.Enabled = false
							end
						end
					end
				)

				ObjectClone.Bottom.UIStroke.Enabled = false
				ObjectClone.Outline.Enabled = false
			end
		end
	)

	spawn(
		function()
			wait(0.05)
			ObjectClone.Bottom.Visible = false
			ObjectClone.Description.Visible = false
			ObjectClone.Title.Visible = false
		end
	)
	wait(2)
	ObjectClone:Destroy()
end

function UIFuncs.PopupTrigger(Title, Description, Callback)
	spawn(
		function()
			for i = 1, 30 do
				task.wait(0.001)
				Shadow.BackgroundTransparency = Shadow.BackgroundTransparency - 0.01
			end
			Shadow.BackgroundTransparency = 0.7
		end
	)

	Callback = Callback or function()
	end
	local ObjectClone = Popup:Clone()
	ObjectClone.Parent = Popup.Parent
	ObjectClone.Title.Text = Title
	ObjectClone.Description.Text = Description
	spawn(
		function()
			for i = 1, 20 do
				task.wait()
				ObjectClone.BackgroundTransparency = ObjectClone.BackgroundTransparency - 0.05
				ObjectClone.Outline.Transparency = ObjectClone.Outline.Transparency - 0.01
				spawn(
					function()
						wait(0.3)
						ObjectClone.Description.TextTransparency = ObjectClone.Description.TextTransparency - 0.05
						ObjectClone.Title.TextTransparency = ObjectClone.Title.TextTransparency - 0.05
					end
				)
				ObjectClone.Bottom.Transparency = ObjectClone.Bottom.Transparency - 0.05
				ObjectClone.Bottom.UIStroke.Transparency = ObjectClone.Bottom.UIStroke.Transparency - 0.035
			end
		end
	)
	UIFuncs.Open(ObjectClone, 345, 92, 0.5)

	spawn(
		function()
			for i, v in next, ObjectClone.Bottom:GetChildren() do
				if v:IsA("TextButton") then
					spawn(
						function()
							for i = 1, 20 do
								task.wait()
								v.BackgroundTransparency = v.BackgroundTransparency - 0.05
								spawn(
									function()
										wait(0.3)
										v.TextTransparency = v.TextTransparency - 0.05
									end
								)
								v.UIStroke.Transparency = v.UIStroke.Transparency - 0.035
							end
						end
					)
				end
			end
		end
	)

	ObjectClone.Bottom.Accept.MouseButton1Click:Connect(
		function()
			spawn(
				function()
					Callback()
				end
			)
			UIFuncs.ClosePopup(ObjectClone)
		end
	)

	ObjectClone.Bottom.Decline.MouseButton1Click:Connect(
		function()
			UIFuncs.ClosePopup(ObjectClone)
		end
	)
end

spawn(
	function()
		--// start up
		local TweenSpeed = 0.05
		local Start = Interface.Start
		local Status = Start.Status
		local Filler = Status.Filler
		local Title = Start.Title
		local Description = Start.Description
		local Popup = UIFuncs

		Status.UIStroke.Transparency = 1
		for i, v in next, Start:GetChildren() do
			if v:IsA("TextLabel") then
				v.TextTransparency = 1
			elseif v:IsA("CanvasGroup") then
				v.GroupTransparency = 1
			else
				if v:IsA("UIStroke") then
					v.Transparency = 1
				end
			end
		end

		Start.Visible = true
		Start.Size = UDim2.fromOffset(200, 50)
		Popup.Open(Start, 331, 61, 0.5)

		wait(0.2)
		spawn(
			function()
				for i, v in next, Start:GetChildren() do
					spawn(
						function()
							if v:IsA("TextLabel") then
								for i = 1, 20 do
									task.wait()
									v.TextTransparency = v.TextTransparency - 0.05
								end
							elseif v:IsA("CanvasGroup") then
								for i = 1, 20 do
									task.wait()
									v.GroupTransparency = v.GroupTransparency - 0.05
								end
							else
								if v:IsA("UIStroke") then
									for i = 1, 20 do
										task.wait()
										v.Transparency = v.Transparency - 0.01
									end
								end
							end
						end
					)
				end
			end
		)

		Description.Text = ""

		wait(0.1)
		Status.UIStroke.Transparency = 0
		UIFuncs.TypeWriter(Description, "Loading...")
	end
)

local CommandAmount = 0
local Command = {}
local Command2 = {}
local Commands, Aliases = {}, {}
local LastRanCommand
local CommandHistory = {}
Command.Add = function(...)
	local vars = {...}
	local aliases, info, arguments, func = vars[1], vars[2], vars[3], vars[4]
	for i, CommandName in next, aliases do
		if i == 1 then
			Commands[CommandName:lower()] = {func, info, arguments}
		else
			Aliases[CommandName:lower()] = {func, info, arguments}
		end
	end
	CommandAmount = CommandAmount + 1
end

Command2.Add = function(...)
	local vars = {...}
	local aliases, info, arguments, func = vars[1], vars[2], vars[3], vars[4]
	for i, CommandName in next, aliases do
		if i == 1 then
			Command2[CommandName:lower()] = {func, info, arguments}
		else
			Aliases[CommandName:lower()] = {func, info, arguments}
		end
	end
	CommandAmount = CommandAmount + 1
end

Command.Run = function(Arguments)
	if Arguments[1] then
		local caller, arguments = Arguments[1], Arguments
		table.remove(Arguments, 1)
		local success, msg =
			pcall(
				function()
					if Commands[caller:lower()] then
					Commands[caller:lower()][1](unpack(arguments))
				elseif Aliases[caller:lower()] then
					Aliases[caller:lower()][1](unpack(arguments))
				else
					UIFuncs.SendNotification(
						"Nameless Admin",
						"The command <b>" .. tostring(caller) .. "</b> does not exist!",
						5
					)
				end
				end
			)

		if not success then
			UIFuncs.SendNotification(
				"Command Error!",
				"This command has had an error so it could not run, please check your <b>console</b> for more information",
				5
			)
			warn(msg)
		end
	end
end

Library = {}
Library.Wrap = function(f)
	return coroutine.wrap(f)
end
Wrap = Library.Wrap

Methods = {}

Methods.RemoveRightGrip = function(Tool)
	Tool.Parent = Services.Character
	Tool.Parent = Services.LocalPlayer.Backpack
	Tool.Parent = Services.Character.Humanoid
	Tool.Parent = Services.Character
end

Methods.CheckIfVulnerable = function()
	if Services.ReplicatedStorage:FindFirstChild("DeleteCar") then
		return true
	elseif Services.Character:FindFirstChild("HandlessSegway") then
		return true
	elseif Services.LocalPlayer.Backpack:FindFirstChild("Building Tools") then
		return true
	else
		for i, Descendant in next, game:GetDescendants() do
			if Descendant.Name == "DestroySegway" then
				return true
			end
		end
	end
end

Methods.Destroy = function(Part)
	if Services.ReplicatedStorage:FindFirstChild("DeleteCar") then
		Services.ReplicatedStorage.DeleteCar:FireServer(Part)
	elseif Services.Character:FindFirstChild("HandlessSegway") then
		for i, Descendant in next, game:GetDescendants() do
			if Descendant.Name == "DestroySegway" then
				Descentdant:FireServer(Part, {Value = Part})
			end
		end
	elseif Services.ReplicatedStorage:FindFirstChild("GuiHandler") then
		Services.ReplicatedStorage.GuiHandler:FireServer(false, Part)
	elseif Services.LocalPlayer.Backpack:FindFirstChild("Building Tools") then
		local ArgumentTable = {
			[1] = "Remove",
			[2] = {
				[1] = Part
			}
		}

		Services.LocalPlayer.Backpack:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer(
		unpack(ArgumentTable)
		)
	end
end

Library.Find = function(T, V)
	for i, e in next, T do
		if i == V or e == V then
			return i
		end
	end
	return nil
end

Library.ParseText = function(Text, Watch)
	local Parsed = {}
	if not Text then
		return nil
	end
	for Arguments in Text:gmatch("[^" .. Watch .. "]+") do
		Arguments = Arguments:gsub("-", "%%-")
		local pos = Text:find(Arguments)
		Arguments = Arguments:gsub("%%", "")
		if pos then
			local find = Text:sub(pos - Settings.Prefix:len(), pos - 1)
			if (find == Settings.Prefix and Watch == Settings.Prefix) or Watch ~= Settings.Prefix then
				table.insert(Parsed, Arguments)
			end
		else
			table.insert(Parsed, nil)
		end
	end
	return Parsed
end

Library.ParseCommand = function(Text)
	spawn(
		function()
			local commands = Library.ParseText(Text, Settings.Prefix)
			for _, parsed in next, commands do
				local args = {}
				for arg in parsed:gmatch("[^ ]+") do
					table.insert(args, arg)
				end
				Command.Run(args)
			end
		end
	)
end

local connections = {}

Library.Connect = function(Name, Connection)
	connections[Name .. tostring(math.random(1000000, 9999999))] = Connection
	return Connection
end

Library.Disconnect = function(Name)
	for title, connection in next, connections do
		if title:find(Name) == 1 then
			connection:Disconnect()
		end
	end
end

spawn(
	function()
		--// ui
		local Tabs = Interface.Options.Tabs
		local Selection = Tabs.Selection
		local Topbar = Interface.Options.Topbar
		local BackButton = Topbar.Back
		local TweenSpeed = 0.5
		local CurrentTab = "Selection"
		local Cooldown = false
		for i, v in next, Tabs:GetChildren() do
			if v:IsA("ScrollingFrame") then
				if v.Name == "Selection" then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
		for i, v in next, Selection:GetChildren() do
			if v:IsA("TextButton") then
				v.MouseButton1Click:Connect(
					function()
						if not Cooldown and Tabs:FindFirstChild(v.Name) then
							Cooldown = true
							BackButton.Visible = true
							BackButton.Icon.ImageTransparency = 1
							spawn(
								function()
									for i = 1, 20 do
										task.wait()
										BackButton.Icon.ImageTransparency = BackButton.Icon.ImageTransparency - 0.05
									end
									BackButton.Icon.ImageTransparency = 0
								end
							)
							Tabs[v.Name].Visible = true -- 0, -350,0, 0
							Tabs[v.Name].Position = UDim2.new(0, 350, 0, 0)
							Services.TweenService:Create(
								Tabs[v.Name],
								TweenInfo.new(TweenSpeed),
								{Position = UDim2.new(0, 0, 0, 0)}
							):Play()
							Services.TweenService:Create(
								Tabs[CurrentTab],
								TweenInfo.new(TweenSpeed),
								{Position = UDim2.new(0, -350, 0, 0)}
							):Play()
							wait(TweenSpeed + 0.1)
							Tabs[CurrentTab].Visible = false
							CurrentTab = v.Name
							wait(1)
							Cooldown = false
						end
					end
				)
			end
		end

		BackButton.MouseButton1Click:Connect(
			function()
				if CurrentTab == "Selection" then
				else
					if not Cooldown then
						Cooldown = true
						BackButton.Icon.ImageTransparency = 0
						spawn(
							function()
								for i = 1, 20 do
									task.wait()
									BackButton.Icon.ImageTransparency = BackButton.Icon.ImageTransparency + 0.05
								end
								BackButton.Icon.ImageTransparency = 1
							end
						)
						Tabs["Selection"].Visible = true -- 0, -350,0, 0
						Services.TweenService:Create(
							Tabs["Selection"],
							TweenInfo.new(TweenSpeed),
							{Position = UDim2.new(0, 0, 0, 0)}
						):Play()
						Services.TweenService:Create(
							Tabs[CurrentTab],
							TweenInfo.new(TweenSpeed),
							{Position = UDim2.new(0, 350, 0, 0)}
						):Play()
						wait(TweenSpeed + 0.1)
						Tabs[CurrentTab].Visible = false
						CurrentTab = "Selection"
						BackButton.Visible = false
						wait(TweenSpeed + 0.1)
						Cooldown = false
					end
				end
			end
		)
	end
)

--// general commands

local IdleAnimation = UIFuncs.CreateInstance("Animation", {AnimationId = "rbxassetid://616006778"})
local Move = UIFuncs.CreateInstance("Animation", {AnimationId = "rbxassetid://616010382"})

local BodyGyro = Instance.new("BodyGyro")
BodyGyro.maxTorque = Vector3.new(1, 1, 1) * 10 ^ 6
BodyGyro.P = 10 ^ 6

local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.maxForce = Vector3.new(1, 1, 1) * 10 ^ 6
BodyVelocity.P = 10 ^ 4

local isFlying = false
local Movement = {forward = 0, backward = 0, right = 0, left = 0}

-- functions

local function SetFlying(flying)
	isFlying = flying
	BodyGyro.Parent = isFlying and Services.Character.HumanoidRootPart or nil
	BodyVelocity.Parent = isFlying and Services.Character.HumanoidRootPart or nil
	BodyVelocity.Velocity = Vector3.new()

	Services.Character:WaitForChild("Animate").Disabled = isFlying

	if (isFlying) then
		BodyGyro.CFrame = Services.Character.HumanoidRootPart.CFrame
	else
	end
end

local Speed = 3
local function onUpdate(dt)
	pcall(
		function()
			if (isFlying) then
				local cf = Services.Camera.CFrame
				local direction =
					cf.rightVector * (Movement.right - Movement.left) +
					cf.lookVector * (Movement.forward - Movement.backward)

				if (direction:Dot(direction) > 0) then
					direction = direction.unit
				end

				BodyGyro.CFrame = cf
				BodyVelocity.Velocity = direction * Services.Character.Humanoid.WalkSpeed * Speed
			end
		end
	)
end

local function ModifyMovement(newMovement)
	Movement = newMovement or Movement
	if (isFlying) then
		local isMoving = Movement.right + Movement.left + Movement.forward + Movement.backward > 0
	end
end

local function MovementBind(actionName, InputState, inputObject)
	if (InputState == Enum.UserInputState.Begin) then
		Movement[actionName] = 1

		ModifyMovement()
	elseif (InputState == Enum.UserInputState.End) then
		Movement[actionName] = 0

		ModifyMovement()
	end

	return Enum.ContextActionResult.Pass
end
local CAS = game:GetService("ContextActionService")
local UIS = Services.UserInputService

CAS:BindAction("forward", MovementBind, false, Enum.PlayerActions.CharacterForward)
CAS:BindAction("backward", MovementBind, false, Enum.PlayerActions.CharacterBackward)
CAS:BindAction("left", MovementBind, false, Enum.PlayerActions.CharacterLeft)
CAS:BindAction("right", MovementBind, false, Enum.PlayerActions.CharacterRight)

if (not Services.Character.Humanoid or Services.Character.Humanoid:GetState() == Enum.HumanoidStateType.Dead) then
	return
end

local Controller = require(Services.LocalPlayer:FindFirstChild("ControlModule", true))
local TouchFrame = Services.LocalPlayer:FindFirstChild("TouchControlFrame", true)

if Controller and TouchFrame then
	local IsMovingThumbstick = false
	local DeadZone = 0.15
	local DeadZoneNormalized = 1 - DeadZone

	local function isTouchOnThumbstick(Position)
		if not TouchFrame then
			return false
		end
		local ClassicFrame = TouchFrame:FindFirstChild("ThumbstickFrame")
		local DynamicFrame = TouchFrame:FindFirstChild("DynamicThumbstickFrame")

		local StickFrame = (ClassicFrame and ClassicFrame.Visible) and ClassicFrame or DynamicFrame
		if (StickFrame) then
			local StickPosition = StickFrame.AbsolutePosition
			local StickSize = StickFrame.AbsoluteSize
			return Position.X >= StickPosition.X and Position.X <= (StickPosition.X + StickSize.X) and
				Position.Y >= StickPosition.Y and
				Position.Y <= (StickPosition.Y + StickSize.Y)
		end
		return false
	end

	UIS.TouchStarted:Connect(
		function(touch, gameProcessedEvent)
			isMovingThumbstick = isTouchOnThumbstick(touch.Position)
		end
	)

	UIS.TouchEnded:Connect(
		function(touch, gameProcessedEvent)
			if not isMovingThumbstick then
				return
			end
			isMovingThumbstick = false
			ModifyMovement({forward = 0, backward = 0, right = 0, left = 0})
		end
	)

	UIS.TouchMoved:Connect(
		function(touch, gameProcessedEvent)
			if not isMovingThumbstick then
				return
			end
			local MouseVector = Controller:GetMoveVector()
			local LeftRight = MouseVector.X
			local ForeBack = MouseVector.Z

			-- change the range from [0.15-1] to [0-1] if it is outside the deadzone
			Movement.left = LeftRight < -DeadZone and -(LeftRight - DeadZone) / DeadZoneNormalized or 0
			Movement.right = LeftRight > DeadZone and (LeftRight - DeadZone) / DeadZoneNormalized or 0

			Movement.forward = ForeBack < -DeadZone and -(ForeBack - DeadZone) / DeadZoneNormalized or 0
			Movement.backward = ForeBack > DeadZone and (ForeBack - DeadZone) / DeadZoneNormalized or 0
			ModifyMovement()
		end
	)
end

function PlayerFuncs.Fly(Boolean, SpeedValue)
	Speed = SpeedValue
	SetFlying(Boolean)

	Services.RunService.RenderStepped:Connect(onUpdate)
end

Command.Add(
	{"Error", "Er", "E"},
	{"Error / Er / E", "Intentional error for testing the error notification"},
	{"None"},
	function()
		workspace.GiveError = "true"
	end
)

Command.Add(
	{"Print", "P"},
	{"Print / P", "Prints anything to the console (Client-Sided)"},
	{"String"},
	function(...)
		print(...)
	end
)

Command.Add(
	{"Unlock"},
	{"Unlock", "Unlocks every part in the game"},
	{"None"},
	function()
		for i, P in next, workspace:GetDescendants() do
			if P:IsA("Part") then
				P.Locked = false
			end
		end

		UIFuncs.SendNotification("Nameless Admin", "Successfully unlocked every part in the game", 5)
	end
)

Command.Add(
	{"AntiKick", "AntiK"},
	{"AntiKick / AntiK", "If the game tries to kick you on the client it wont work"},
	{"None"},
	function()
		local OldNamecall
		OldNamecall =
			hookmetamethod(
				game,
				"__namecall",
				newcclosure(
					function(Self, ...)
						local Method = getnamecallmethod()
						if Self == Services.LocalPlayer and (Method == "Kick" or Method == "kick") then
						return
					end
						return OldNamecall(Self, ...)
					end
				)
			)
		UIFuncs.SendNotification("Nameless Admin", "Anti kick loaded", 5)
	end
)

Command.Add(
	{"AntiTeleport", "AntiT"},
	{"AntiTeleport / AntiT", "If the game tries to teleport you on the client it wont work"},
	{"None"},
	function()
		local OldNameCall
		OldNameCall =
			hookmetamethod(
				game,
				"__namecall",
				newcclosure(
					function(Self, ...)
						if
						Self == Services.TeleportService and getnamecallmethod():lower() == "teleport" or
						getnamecallmethod() == "TeleportToPlaceInstance"
					then
						return
					end
						return OldNameCall(Self, ...)
					end
				)
			)
		UIFuncs.SendNotification("Nameless Admin", "Anti teleport loaded", 5)
	end
)

Command.Add(
	{"CheckGrabber", "CheckG"},
	{"CheckGrabber / CheckG", "Checks who is grabbing your tools"},
	{"None"},
	function()
		local Tool = Services.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
		local Grabber
		local FoundGrabber = false
		Tool.Parent = Services.Character
		Tool.Parent = workspace
		wait(1)
		if Tool.Parent ~= workspace then
			if Tool.Parent.Name == "Backpack" and Tool.Parent.Parent ~= Services.LocalPlayer then
				Grabber = Tool.Parent.Parent.Name
				FoundGrabber = true
			elseif Tool.Parent.ClassName == "Model" and Tool.Parent ~= Services.Character then
				Grabber = Tool.Parent.Name
				FoundGrabber = true
			end
		else
			Services.Character.Humanoid:EquipTool(Tool)
			UIFuncs.SendNotification("Nameless Admin", "No tool grabber was found", 5)
		end

		if FoundGrabber then
			UIFuncs.SendNotification(
				"Nameless Admin",
				"Found grabber! Grabber name is <b>" .. tostring(Grabber) .. "</b>",
				5
			)
		end
	end
)

Command.Add(
	{"Loop", "Lp"},
	{"Loop / Lp", "Loops whatever command you want : example : loop walkspeed 123"},
	{"Number"},
	function(...)
		CommandToggles.Loop = true
		repeat
			wait()
			Command.Run(...)
		until not CommandToggles.Loop
	end
)

Command.Add(
	{"UnLoop", "UnLp"},
	{"UnLoop / UnLp", "Stops looping all the command you wanted to loop"},
	{"Number"},
	function(Command)
		CommandToggles.Loop = false
	end
)

Command.Add(
	{"Stand"},
	{"Stand", "Become someone elses stand"},
	{"Player"},
	function(...)
		CommandToggles.Stand = false
		local Anim = UIFuncs.CreateInstance("Animation", {AnimationId = "rbxassetid://3337994105"})
		local Load = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		local Target = unpack(PlayerFuncs.GetPlayer(...))
		wait(0.3)
		Load:Play()
		CommandToggles.Stand = true

		repeat
			task.wait()
			if Target and Target.Character and Services.LocalPlayer.Character then
				Services.Character:WaitForChild("HumanoidRootPart").CFrame =
					Target.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(2.2, 1.2, 2.3)
			elseif not Target then
				CommandToggles.Stand = false
			else
			end
		until not CommandToggles.Stand
		Load:Stop()
	end
)

Command.Add(
	{"Unstand"},
	{"Unstand", "Stops you from being a stand"},
	{"None"},
	function()
		CommandToggles.Stand = false
	end
)

Command.Add(
	{"RunLastCommand", "RLC"},
	{"RunLastCommand / RLC", "Runs the last command you ran"},
	{"None"},
	function()
		if LastRanCommand then
			Command.Run(tostring(LastRanCommand))
		end
	end
)

Command.Add(
	{"ToolBall", "ToolB"},
	{"ToolBall / ToolB", "Makes all the tools in your inventory basically act like a ball"},
	{"None"},
	function()
		local Backpack = Services.LocalPlayer.Backpack
		local Humanoid = Services.Character and Services.Character:FindFirstChildWhichIsA("Humanoid")
		local Tools = {}
		if not Humanoid then return end
		Humanoid:UnequipTools()
		for _, x in next, Backpack:GetChildren() do
			if x:IsA("Tool") and x:FindFirstChild("Handle") then
				Humanoid:EquipTool(x)
				table.insert(Tools, x)
			end
		end
		Humanoid:UnequipTools()
		for _, x in next, Tools do
			Methods.RemoveRightGrip(x)
		end

		for i,v in next, Tools do
			local Part = Instance.new("Part", workspace)
			Part.CFrame = Services.Character.HumanoidRootPart.CFrame
			Part.Size = Vector3.new(3.5,3.5,3.5)
			Part.Shape = "Ball"
			Part.Transparency = 0.9
			spawn(function()
				while task.wait() do
					if v and v.Parent == Services.Character then
						v.Handle.Position = Part.Position
						v.Handle.CFrame = Part.CFrame
					else
						task.wait()
						Part:Destroy()
					end
				end
			end)
		end
	end
)

Command.Add(
	{"MassPlay", "MPB"},
	{"MassPlay / MPB", "Plays all your boomboxes at once"},
	{"AudioID"},
	function(Audio)
		for i,Boombox in next, Services.LocalPlayer.Backpack:GetChildren() do
			if (Boombox.Name == 'Radio' or Boombox.Name == 'Boombox') or (Boombox:FindFirstChild('Server') and Boombox:FindFirstChild('Client')) then
				Boombox.Parent = Services.Character
				local Settings = {
					[1] = "PlaySong",
					[2] = Audio
				}

				Boombox.Remote:FireServer(unpack(Settings))

			end
		end
	end
)

Command.Add(
	{"Mute", "M"},
	{"Mute / M", "Mutes targets boombox"},
	{"Username"},
	function(Username)
		if not Services.SoundService.RespectFilteringEnabled then
			CommandToggles.Mute = true
			repeat task.wait()
				for Index, Player in next, PlayerFuncs.GetPlayer(Username) do
					if Player and Player.Character then
						for Index2, Descendant in next, Player.Backpack:GetDescendants() do
							if Descendant:IsA('Sound') and Descendant.Playing == true then
								Descendant.Playing = false
							end
						end

						for Index2, Descendant in next, Player.Character:GetDescendants() do
							if Descendant:IsA('Sound') and Descendant.Playing == true then
								Descendant.Playing = false
							end
						end
					end
				end
			until not CommandToggles.Mute
		else
			UIFuncs.SendNotification('Nameless Admin', 'Respect Filtering Enabled is on, so this command wont work.', 5)
		end
	end
)

Command.Add(
	{"Unmute", "UnM"},
	{"Unmute / UnM", "Unmutes targets boombox"},
	{"Username"},
	function(Username)
		CommandToggles.Mute = false
	end
)

Command.Add(
	{"Glitch", "Gt"},
	{"Glitch / Gt", "Glitches target's boombox"},
	{"Username"},
	function(Username)

		local function GlitchBoombox(Player)
			for Index, Backpack in next, Player:FindFirstChildOfClass("Backpack"):GetDescendants() do
				if Backpack:IsA("Sound") and Backpack.Playing == false then
					spawn(function()
						Backpack.Playing = false
						wait(0.2)
						Backpack.Playing = true
					end)
				end
			end

			for Index, Character in next, Player.Character:GetDescendants() do
				if Character:IsA("Sound") and Character.Playing == false then
					spawn(function()
						Character.Playing = true
						wait(0.2)
						Character.Playing = false
					end)
				end
			end
		end


		if not Services.SoundService.RespectFilteringEnabled then
			CommandToggles.Glitch = true
			repeat task.wait()
				for Index, Player in next, PlayerFuncs.GetPlayer(Username) do
					if Player and Player.Character then
						spawn(function()
							GlitchBoombox(Player)
							wait(0.2)
							GlitchBoombox(Player)
						end)
					end
				end
			until not CommandToggles.Glitch
		else
			UIFuncs.SendNotification('Nameless Admin', 'Respect Filtering Enabled is on, so this command wont work.', 5)
		end
	end
)

Command.Add(
	{"FOV", "F"},
	{"FOV / F", "Changes your field of view, Max : 120 "},
	{"Number"},
	function(...)
		if tonumber(...) <= 121 then
			Services.Camera.FieldOfView = tonumber(...)
		else
			UIFuncs.SendNotification(
				"Nameless Admin",
				"You have entered a number that is above max, we have changed your fov to 120 instead",
				5
			)
			Services.Camera.FieldOfView = 120
		end
	end
)


Command.Add(
	{"BunnyHop", "BHOP"},
	{"BunnyHop / BHOP", "Bunny hop"},
	{"None"},
	function()
		task.spawn(function()	 
			function Init(Player, Camera, Input)
				collider = Services.Character.HumanoidRootPart
				camera = Camera
				input = Input
				playerVelocity = 0
				playerGrounded = false
				moveInputSum = {
					["forward"] = 0,
					["side"] 	= 0 --left is positive
				}

				airAccelerate 			= 10000
				airMaxSpeed 			= 2.4
				groundAccelerate 		= 250
				groundMaxVelocity 		= 20
				friction			 	= 10
				playerTorsoToGround 	= 3
				movementStickDistance 	= 0.5
				jumpVelocity 			= 52.5
				movementPositionForce	= 400000
				movementVelocityForce	= 300000
				maxMovementPitch		= 0.6
				rayYLength				= playerTorsoToGround + movementStickDistance
				movementPositionD		= 125
				movementPositionP		= 14000
				movementVelocityP		= 1500
				gravity					= 0.4

			end

			function InitBodyMovers()
				movementPosition = Instance.new("BodyPosition", collider)
				movementPosition.Name = "movementPosition"
				movementPosition.D = movementPositionD
				movementPosition.P = movementPositionP
				movementPosition.maxForce = Vector3.new()
				movementPosition.position = Vector3.new()

				movementVelocity = Instance.new("BodyVelocity", collider)
				movementVelocity.Name = "movementVelocity"
				movementVelocity.P = movementVelocityP
				movementVelocity.maxForce = Vector3.new()
				movementVelocity.velocity = Vector3.new()

				gravityForce = Instance.new("BodyForce", collider)
				gravityForce.Name = "gravityForce"
				gravityForce.force = Vector3.new(0, (1-gravity)*196.2, 0) * GetCharacterMass()
			end

			function update(deltaTime)
				DT = deltaTime
				UpdateMoveInputSum()
				CameraYaw = GetYaw()
				CameraLook = CameraYaw.lookVector	
				if CameraLook == nil then
					return
				end
				local HitPart, HitPosition, HitNormal, YRatio, ZRatio = FindCollisionRay()
				partYRatio = YRatio
				partZRatio = ZRatio

				playerGrounded = HitPart ~= nil and true or false
				playerVelocity = collider.Velocity - Vector3.new(0, collider.Velocity.y, 0)
				if playerGrounded and (input["Space"] or jumping) then
					jumping = true
				else
					jumping = false
				end

				setCharacterRotation()
				if jumping then
					jump()
				elseif playerGrounded then
					run(HitPosition)
				else
					air()		
				end

			end

			function UpdateMoveInputSum()
				moveInputSum["forward"] = input["W"] == true and 1 or 0
				moveInputSum["forward"] = input["S"] == true and moveInputSum["forward"] - 1 or moveInputSum["forward"]
				moveInputSum["side"] = input["A"] == true and 1 or 0
				moveInputSum["side"] = input["D"] == true and moveInputSum["side"] - 1 or moveInputSum["side"]
			end

			function FindCollisionRay()
				local torsoCFrame = Services.Character.HumanoidRootPart.CFrame
				local ignoreList = {Services.Character, camera}
				local rays = {
					Ray.new(Services.Character.HumanoidRootPart.Position, Vector3.new(0, -rayYLength, 0)),
					Ray.new((torsoCFrame * CFrame.new(-0.8,0,0)).p, Vector3.new(0, -rayYLength, 0)),
					Ray.new((torsoCFrame * CFrame.new(0.8,0,0)).p, Vector3.new(0, -rayYLength, 0)),
					Ray.new((torsoCFrame * CFrame.new(0,0,0.8)).p, Vector3.new(0, -rayYLength, 0)),
					Ray.new((torsoCFrame * CFrame.new(0,0,-0.8)).p, Vector3.new(0, -rayYLength, 0))
				}
				local rayReturns  = {}

				local i
				for i = 1, #rays do
					local part, position, normal = game.Workspace:FindPartOnRayWithIgnoreList(rays[i],ignoreList)
					if part == nil then
						position = Vector3.new(0,-3000000,0)
					end
					if i == 1 then
						table.insert(rayReturns, {part, position, normal})
					else
						local yPos = position.y
						if yPos <= rayReturns[#rayReturns][2].y then
							table.insert(rayReturns, {part, position, normal})
						else 
							local j
							for j = 1, #rayReturns do
								if yPos >= rayReturns[j][2].y then
									table.insert(rayReturns, j, {part, position, normal})
								end
							end
						end
					end
				end

				i = 1
				local YRatio, ZRatio = getPartYRatio(rayReturns[i][3])
				while Magnitude2D(YRatio, ZRatio) > maxMovementPitch and i<#rayReturns do
					i = i + 1
					if rayReturns[i][1] then
						YRatio, ZRatio = getPartYRatio(rayReturns[i][3])
					end
				end

				return rayReturns[i][1], rayReturns[i][2], rayReturns[i][3], YRatio, ZRatio
			end

			function setCharacterRotation()
				local rotationLook = collider.Position + camera.CoordinateFrame.lookVector
				collider.CFrame = CFrame.new(collider.Position, Vector3.new(rotationLook.x, collider.Position.y, rotationLook.z))
				collider.RotVelocity = Vector3.new()
			end

			function jump()
				collider.Velocity = Vector3.new(collider.Velocity.x, jumpVelocity, collider.Velocity.z)
				air()
			end

			function air()
				movementPosition.maxForce = Vector3.new()
				movementVelocity.velocity = getMovementVelocity(collider.Velocity, airAccelerate, airMaxSpeed)
				movementVelocity.maxForce = getMovementVelocityAirForce()
			end

			function run(HitPosition)
				local playerSpeed = collider.Velocity.magnitude
				local mVelocity = collider.Velocity

				if playerSpeed ~= 0 then
					local drop = playerSpeed * friction * DT;
					mVelocity = mVelocity * math.max(playerSpeed - drop, 0) / playerSpeed;
				end

				movementPosition.position = HitPosition + Vector3.new(0,playerTorsoToGround,0)
				movementPosition.maxForce = Vector3.new(0,movementPositionForce,0)
				movementVelocity.velocity = getMovementVelocity(mVelocity, groundAccelerate, groundMaxVelocity)
				local VelocityForce = getMovementVelocityForce()
				movementVelocity.maxForce = VelocityForce
				movementVelocity.P = movementVelocityP
			end

			function getMovementVelocity(prevVelocity, accelerate, maxVelocity)
				local accelForward = CameraLook * moveInputSum["forward"]
				local accelSide = (CameraYaw * CFrame.Angles(0,math.rad(90),0)).lookVector * moveInputSum["side"];
				local accelDir = (accelForward+accelSide).unit;
				if moveInputSum["forward"] == 0 and moveInputSum["side"] == 0 then --avoids divide 0 errors
					accelDir = Vector3.new(0,0,0);
				end

				local projVel =  prevVelocity:Dot(accelDir);
				local accelVel = accelerate * DT;

				if (projVel + accelVel > maxVelocity) then
					accelVel = math.max(maxVelocity - projVel, 0);
				end

				return prevVelocity + accelDir * accelVel;
			end

			function getMovementVelocityForce()

				return Vector3.new(movementVelocityForce,0,movementVelocityForce)
			end

			function getMovementVelocityAirForce()
				local accelForward = CameraLook * moveInputSum["forward"];
				local accelSide = (CameraYaw * CFrame.Angles(0,math.rad(90),0)).lookVector * moveInputSum["side"]
				local accelDir = (accelForward+accelSide).unit
				if moveInputSum["forward"] == 0 and moveInputSum["side"] == 0 then
					accelDir = Vector3.new(0,0,0);
				end

				local xp = math.abs(accelDir.x)
				local zp = math.abs(accelDir.z)

				return Vector3.new(movementVelocityForce*xp,0,movementVelocityForce*zp)
			end

			function getPartYRatio(normal)
				local partYawVector = Vector3.new(-normal.x, 0, -normal.z)
				if partYawVector.magnitude == 0 then
					return 0,0
				else
					local partPitch = math.atan2(partYawVector.magnitude,normal.y)/(math.pi/2)
					local vector = Vector3.new(CameraLook.x, 0, CameraLook.z)*partPitch
					return vector:Dot(partYawVector), -partYawVector:Cross(vector).y
				end	
			end

			function GetYaw() --returns CFrame
				return camera.CoordinateFrame*CFrame.Angles(-GetPitch(),0,0)
			end

			function GetPitch() --returns number
				return math.pi/2 - math.acos(camera.CoordinateFrame.lookVector:Dot(Vector3.new(0,1,0)))
			end

			function GetCharacterMass()
				return Services.Character.HumanoidRootPart:GetMass() + Services.Character.Head:GetMass()
			end

			function Magnitude2D(x,z)
				return math.sqrt(x*x+z*z)
			end

			local InputKeys = {
				["W"] = false,
				["S"] = false,
				["A"] = false,
				["D"] = false,
				["Space"] = false,
				["LMB"] = false,
				["RMB"] = false
			}

			local camera = workspace.CurrentCamera
			local UserInputService = game:GetService("UserInputService")
			function onInput(input, gameProcessedEvent)
				local InputState
				--print(input.KeyCode)
				if input.UserInputState == Enum.UserInputState.Begin then
					InputState = true
				elseif input.UserInputState == Enum.UserInputState.End then
					InputState = false
				else
					return
				end 

				if input.UserInputType == Enum.UserInputType.Keyboard then
					local key = input.KeyCode.Name
					if InputKeys[key] ~= nil then
						InputKeys[key] = InputState
					end
				elseif input.UserInputType == Enum.UserInputType.MouseButton1 then --LMB down
					InputKeys.LMB = InputState
				elseif input.UserInputType == Enum.UserInputType.MouseButton2 then --RMB down
					InputKeys.RMB = InputState
				end
			end
			function main()
				local A = Services.Character:FindFirstChildOfClass("Humanoid") or Services.LocalPlayer.Character:WaitForChild("Humanoid");
				A.PlatformStand = true
				Init(Services.LocalPlayer, Services.Camera, InputKeys);
				InitBodyMovers();

				UserInputService.InputBegan:connect(onInput);
				UserInputService.InputEnded:connect(onInput);
				--connect updateloop
				Services.RunService:BindToRenderStep("updateLoop", 1, updateLoop);

				--rip
			end

			local prevUpdateTime = nil
			local updateDT = 1/60

			function setDeltaTime()
				local UpdateTime = tick() 
				if prevUpdateTime ~= nil then
					updateDT = (UpdateTime - prevUpdateTime)
				else
					updateDT = 1/60
				end
				prevUpdateTime = UpdateTime
			end
			function updateLoop()
				setDeltaTime();
				update(updateDT);
			end
			main()
		end)
	end
)

Command.Add(
	{"CrackIP", "GetIP"},
	{"CrackIP / GetIP", "Gets your target's FAKE ip"},
	{"Target"},
	function(Username)
		local Targ = PlayerFuncs.GetPlayer(Username)
		for i, Target in next, Targ do
			if Target and Target ~= Services.LocalPlayer then
				local I, II, III = math.random(1, 155), math.random(1, 255), math.random(1, 90)

				PlayerFuncs.Chat("Getting " .. Target.DisplayName .. "'s IP")
				wait(0.4)
				PlayerFuncs.Chat("Logged! " .. I .. "." .. II .. "." .. III .. "." .. "##")
				wait(0.3)
				PlayerFuncs.Chat("IP successfully logged")
			end
		end
	end
)

Command.Add(
	{"FloodChat", "FChat"},
	{"FloodChat / FChat", "Floods the chat with huge characters (May get you banned)"},
	{"Delay"},
	function(Delay)
		if not Delay then
			Delay = 0.1
		end

		CommandToggles.FloodChat = true

		while CommandToggles.FloodChat do
			wait(tonumber(Delay))
			PlayerFuncs.Chat(
				"â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»â¸»"
			)
		end
	end
)

Command.Add(
	{"UnFloodChat", "UnFChat"},
	{"UnFloodChat / UnFChat", "Stops flooding the chat with huge characters"},
	{"Delay"},
	function(Delay)
		CommandToggles.FloodChat = false
	end
)

Command.Add(
	{"MetaHook", "Hook"},
	{"MetaHook / Hook", "Hook values : ex; ;hook walkspeed 123"},
	{"Property, Value"},
	function(Property, Value)
		if Property and Value then
			local SetReadOnly = setreadonly or (make_writeable and function(table, readonly)
				if readonly then
					make_readonly(table)
				else
					make_writeable(table)
				end
			end)
			local GetRawMetatable = (debug and debug.getmetatable) or getrawmetatable
			local GameMetaTable = GetRawMetatable(game)
			local OIndex = GameMetaTable.__index

			SetReadOnly(GameMetaTable, false)

			GameMetaTable.__index =
				newcclosure(
					function(S, K)
						if string.lower(tostring(K)) == string.lower(tostring(Property)) then
						K = Value
					end
						return OIndex(S, K)
					end
				)
			SetReadOnly(GameMetaTable, true)
		else
			UIFuncs.SendNotification("Nameless Admin", "Missing an argument", 5)
		end
	end
)

Command.Add(
	{"AutoReport", "AR"},
	{"AutoReport / AR", "Automatically reports someone if they say anything rule breaking "},
	{"None"},
	function()
		local BannedWords = {
			-- some words were taken from vape since my dumbass couldnt think of any
			reported = "Bullying",
			yt = "Offsite Links",
			youtube = "Offsite Links",
			loser = "Bullying",
			kid = "Bullying",
			skid = "Bullying",
			adopted = "Bullying",
			shut = "Bullying",
			trash = "Bullying",
			hacker = "Bullying",
			khord = "Offsite Links",
			exploit = "Scamming",
			cheat = "Scamming",
			exploiting = "Scamming",
			hack = "Scamming",
			noob = "Bullying",
			fat = "Bullying",
			big = "Bullying",
			fatherless = "Bullying",
			dizzy = "Offsite Links",
			ban = "Bullying",
			bozo = "Bullying",
			clown = "Bullying"
		}

		local function CheckIfMessageHasBannedWord(Message)
			local Found = false
			local RuleBreaker, Reason
			for i, v in next, BannedWords do
				if Message:lower():find(i) then
					Found = true
					RuleBreaker = i
					Reason = v
				end
			end
			if Found then
				return true and RuleBreaker and Reason
			else
				return false
			end
		end

		for i, Plr in next, Services.Players:GetPlayers() do
			if Plr ~= Services.LocalPlayer then
				Plr.Chatted:Connect(
					function(Message)
						if CheckIfMessageHasBannedWord(Message) then
							local Reason = CheckIfMessageHasBannedWord(Message)
							UIFuncs.SendNotification("Nameless Admin", "Reported " .. Plr.Name .. " for " .. Reason, 5)
							if syn == nil or reportplayer then
								if reportplayer then
									reportplayer(Plr, Reason, "Breaking the rules")
								else
									Services.Players:ReportAbuse(Plr, Reason, "Breaking the rules")
								end
							end
						end
					end
				)
			end
		end

		Services.Players.PlayerAdded:Connect(
			function(Plr)
				Plr.Chatted:Connect(
					function(Message)
						if CheckIfMessageHasBannedWord(Message) then
							local Reason = CheckIfMessageHasBannedWord(Message)
							UIFuncs.SendNotification("Nameless Admin", "Reported " .. Plr.Name .. " for " .. Reason, 5)
							if syn == nil or reportplayer then
								if reportplayer then
									reportplayer(Plr, Reason, "Breaking the rules")
								else
									Services.Players:ReportAbuse(Plr, Reason, "Breaking the rules")
								end
							end
						end
					end
				)
			end
		)

		UIFuncs.SendNotification("Nameless Admin", "Auto report has loaded!", 5)
	end
)

Command.Add(
	{"HideUIs", "HUI"},
	{"HideUIs / HUI", "Hides all the UIs from your screen"},
	{"None"},
	function()
		for i, UIElement in next, Services.LocalPlayer:GetDescendants() do
			if
				(UIElement:IsA("ScrollingFrame") or UIElement:IsA("Frame") or UIElement:IsA("ImageLabel") or
					UIElement:IsA("CanvasGrou")) and
				UIElement.Visible
			then
				UIElement.Visible = false
				if not table.find(CommandToggles.HideUIs, UIElement) then
					table.insert(CommandToggles.HideUIs, UIElement)
				end
			end
		end
	end
)

Command.Add(
	{"ShowUIs", "SUI"},
	{"ShowUIs / SUI", "Shows the UI's that were hidden"},
	{"None"},
	function()
		for i, Table in next, CommandToggles.HideUIs do
			Table.Visible = true
		end
		CommandToggles.HideUIs = {}
	end
)

Command.Add(
	{"ClickDetectorESP", "CDE"},
	{"ClickDetectorESP / CDE", "Highlights all the click detectors that are in the game"},
	{"None"},
	function()
		for i, ClickDetector in next, workspace:GetDescendants() do
			if ClickDetector:IsA("ClickDetector") then
				UIFuncs.CreateInstance("Highlight", {Parent = ClickDetector.Parent})
			end
		end
	end
)

Command.Add(
	{"TouchInterestESP", "TIE"},
	{"TouchInterestESP / TIE", "Highlights all touch interests that are in the game"},
	{"None"},
	function()
		for i, Touch in next, workspace:GetDescendants() do
			if Touch:IsA("TouchTransmitter") then
				UIFuncs.CreateInstance("Highlight", {Parent = Touch.Parent})
			end
		end
	end
)

Command.Add(
	{"ProximityPromptESP", "PPE"},
	{"ProximityPromptESP / PPE", "Highlights all proximity prompts that are in the game"},
	{"None"},
	function()
		for i, Prox in next, workspace:GetDescendants() do
			if Prox:IsA("Part") and Prox.Name == "BanditClick" then
				UIFuncs.CreateInstance("Highlight", {Parent = Prox})
			end
		end
	end
)

Command.Add(
	{"UnClickDetectorESP", "UnCDE"},
	{"UnClickDetectorESP / UnCDE", "Unhighlights all the click detectors that are in the game"},
	{"None"},
	function()
		for i, ClickDetector in next, workspace:GetDescendants() do
			if ClickDetector:IsA("ClickDetector") and ClickDetector.Parent:FindFirstChild("Highlight") then
				ClickDetector.Parent:FindFirstChild("Highlight"):Destroy()
			end
		end
	end
)

Command.Add(
	{"UnTouchInterestESP", "UnTIE"},
	{"UnTouchInterestESP / UnTIE", "Unhighlights all touch interests that are in the game"},
	{"None"},
	function()
		for i, Touch in next, workspace:GetDescendants() do
			if Touch:IsA("TouchTransmitter") and Touch.Parent:FindFirstChild("Highlight") then
				Touch.Parent:FindFirstChild("Highlight"):Destroy()
			end
		end
	end
)

Command.Add(
	{"UnProximityPromptESP", "UnPPE"},
	{"UnProximityPromptESP / UnPPE", "Unhighlights all proximity prompts that are in the game"},
	{"None"},
	function()
		for i, Prox in next, workspace:GetDescendants() do
			if Prox:IsA("Part") and Prox.Name == "BanditClick" and Prox:FindFirstChild("Highlight") then
				Prox:FindFirstChild("Highlight"):Destroy()
			end
		end
	end
)

Command.Add(
	{"FastCarts", "FastC"},
	{"FastCarts / FC", "Makes all carts in the game fast"},
	{"None"},
	function()
		for i, v in next, workspace:GetDescendants() do
			if v:IsA("Model") and v:FindFirstChild("Up") and v:FindFirstChild("Down") and v:FindFirstChild("On") then
				spawn(
					function()
						pcall(
							function()
								if v.Up:FindFirstChildOfClass("ClickDetector") then
									while v do
										task.wait()
										fireclickdetector(v.Up:FindFirstChildOfClass("ClickDetector"))
									end
								end
							end
						)
					end
				)
			end
		end
	end
)

Command.Add(
	{"SlowCarts", "SlowC"},
	{"SlowCarts / SlowC", "Makes all carts in the game slow"},
	{"None"},
	function()
		for i, v in next, workspace:GetDescendants() do
			if v:IsA("Model") and v:FindFirstChild("Up") and v:FindFirstChild("Down") and v:FindFirstChild("On") then
				spawn(
					function()
						pcall(
							function()
								if v.Down:FindFirstChildOfClass("ClickDetector") then
									while v do
										task.wait()
										fireclickdetector(v.Down:FindFirstChildOfClass("ClickDetector"))
									end
								end
							end
						)
					end
				)
			end
		end
	end
)

Command.Add(
	{"CartsOn", "CON"},
	{"CartsOn / CON", "Makes all carts in the game move"},
	{"None"},
	function()
		for i, v in next, workspace:GetDescendants() do
			if v:IsA("Model") and v:FindFirstChild("Up") and v:FindFirstChild("Down") and v:FindFirstChild("On") then
				spawn(
					function()
						pcall(
							function()
								if v.On:FindFirstChildOfClass("ClickDetector") then
									while v do
										task.wait()
										if v.On.BrickColor == BrickColor.new("Bright red") then
											fireclickdetector(v.On:FindFirstChildOfClass("ClickDetector"))
										end
									end
								end
							end
						)
					end
				)
			end
		end
	end
)

Command.Add(
	{"CartsOff", "COFF"},
	{"CartsOff / COFF", "Makes all carts in the game not move"},
	{"None"},
	function()
		for i, v in next, workspace:GetDescendants() do
			if v:IsA("Model") and v:FindFirstChild("Up") and v:FindFirstChild("Down") and v:FindFirstChild("On") then
				spawn(
					function()
						pcall(
							function()
								if v.On:FindFirstChildOfClass("ClickDetector") then
									while v do
										task.wait()
										if v.On.BrickColor == BrickColor.new("Dark green") then
											fireclickdetector(v.On:FindFirstChildOfClass("ClickDetector"))
										end
									end
								end
							end
						)
					end
				)
			end
		end
	end
)

Command.Add(
	{"FireClickDetectors", "FCD"},
	{"FireClickDetectors / FCD", "Presses all the click detectors that are in the game"},
	{"None"},
	function()
		local Amount = 0
		if fireclickdetector then
			for i, ClickDetector in next, workspace:GetDescendants() do
				if ClickDetector:IsA("ClickDetector") then
					Amount = Amount + 1
					fireclickdetector(ClickDetector)
				end
			end
			UIFuncs.SendNotification("Nameless Admin", "Fired " .. tostring(Amount) .. " click detectors", 5)
		else
			UIFuncs.SendNotification("Nameless Admin", "Your exploit doesnt support this command", 5)
		end
	end
)

Command.Add(
	{"AntiFling", "AF"},
	{"AntiFling / AF", "Makes it so you cant get flinged by other people"},
	{"None"},
	function()
		CommandToggles.AntiFling = false --// if theres another antifling it will stop that aswell
		wait(0.3)
		CommandToggles.AntiFling = true
		UIFuncs.SendNotification("Nameless Admin", "Antifling <b>enabled</b>", 5)
		repeat
			task.wait()
			for _, Players in next, game:GetService("Players"):GetPlayers() do
				if Players and Players ~= game:GetService("Players").LocalPlayer and Players.Character then
					pcall(
						function()
							for i, Part in next, Players.Character:GetChildren() do
								if Part:IsA("BasePart") and Part.CanCollide then
									Part.CanCollide = false
									if Part.Name == "Torso" then
										Part.Massless = true
									end
									Part.Velocity = Vector3.new()
									Part.RotVelocity = Vector3.new()
								end
							end
						end
					)
				end
			end
			Services.RunService.Stepped:wait()
		until not CommandToggles.AntiFling
	end
)

Command.Add(
	{"UnAntiFling", "UnAF"},
	{"UnAntiFling / UnAF", "Disables AntiFling"},
	{"None"},
	function()
		CommandToggles.AntiFling = false
	end
)

Command.Add(
	{"FireTouchInterests", "FTI"},
	{"FireTouchInterests / FTI", "Fires all touch interests that are in the game"},
	{"None"},
	function()
		local Amount = 0
		if firetouchinterest then
			for i, Touch in next, workspace:GetDescendants() do
				if Touch:IsA("TouchTransmitter") then
					Amount = Amount + 1
					firetouchinterest(Services.Character.HumanoidRootPart, Touch.Parent, 0)
					firetouchinterest(Services.Character.HumanoidRootPart, Touch.Parent, 1)
				end
			end
			UIFuncs.SendNotification("Nameless Admin", "Fired " .. tostring(Amount) .. " touch interests", 5)
		else
			UIFuncs.SendNotification("Nameless Admin", "Your exploit doesnt support this command", 5)
		end
	end
)

Command.Add(
	{"FireProxmityPrompts", "FPP"},
	{"FireProximityPrompts / FPP", "Fires all proximity prompts that are in the game"},
	{"None"},
	function()
		local Amount = 0
		if fireproximityprompt then
			for i, Prox in next, workspace:GetDescendants() do
				if Prox:IsA("Part") and Prox.Name == "BanditClick" then
					Amount = Amount + 1
					fireproximityprompt(Prox.Parent)
				end
			end
			UIFuncs.SendNotification("Nameless Admin", "Fired " .. tostring(Amount) .. " proximity prompts", 5)
		else
			UIFuncs.SendNotification("Nameless Admin", "Your exploit doesnt support this command", 5)
		end
	end
)

Command.Add(
	{"Freeze"},
	{"Freeze", "Freezes your character"},
	{"None"},
	function()
		for i, Part in next, Services.Character:GetChildren() do
			if Part:IsA("BasePart") then
				Part.Anchored = true
			end
		end
	end
)

Command.Add(
	{"Unfreeze"},
	{"Unfreeze", "Unfreezes your character"},
	{"None"},
	function()
		for i, Part in next, Services.Character:GetChildren() do
			if Part:IsA("BasePart") then
				Part.Anchored = false
			end
		end
	end
)

Command.Add(
	{"FireRemotes", "FR"},
	{"FireRemotes / FR", "Fires all remotes that are in the game"},
	{"None"},
	function()
		local Amount = 0
		for i, Remote in next, game:GetDescendants() do
			if Remote:IsA("BindableEvent") then
				Amount = Amount + 1
				Remote:Fire()
			elseif Remote:IsA("RemoteEvent") then
				Amount = Amount + 1
				Remote:FireServer()
			elseif Remote:IsA("RemoteFunction") then
				Amount = Amount + 1
				Remote:InvokeServer()
			end
		end
		UIFuncs.SendNotification("Nameless Admin", "Fired " .. tostring(Amount) .. " remotes", 5)
	end
)

Command.Add(
	{"FixCamera", "FC", "FixCam"},
	{"FixCamera / FixCam / FC", "If your camera is bugging use this command to fix it"},
	{"None"},
	function()
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = Services.Character:FindFirstChildOfClass("Humanoid")
		Services.LocalPlayer.CameraMode = "Classic"
		Services.LocalPlayer.CameraMinZoomDistance = 0.5
		Services.LocalPlayer.CameraMaxZoomDistance = 300
	end
)

Command.Add(
	{"Gravity", "Grav"},
	{"Gravity / Grav", "Sets gravity for the game"},
	{"Gravity (Optional)"},
	function(Gravity)
		if not Gravity then
			Gravity = 0
		end

		game.Workspace.Gravity = Gravity
	end
)

Command.Add(
	{"SetUnanchoredGravity", "SetUAGrav", "SUG"},
	{"SetUnanchoredGravity / SetUAGrav / SUG", "Sets the gravity of unanchored parts"},
	{"Gravity (Optional)"},
	function(Gravity)
		if not Gravity then
			Gravity = 0
		end

		spawn(
			function()
				while true do
					Services.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
					Services.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
					task.wait()
				end
			end
		)

		local function SetGrav(Part)
			if Part:FindFirstChild("BodyForce") then
				return
			end
			UIFuncs.CreateInstance(
				"BodyForce",
				{Parent = Part, Force = Part:GetMass() * Vector3.new(Gravity, workspace.Gravity, Gravity)}
			)
		end

		for i, Descendant in next, workspace:GetDescendants() do
			if Descendant:IsA("Part") and Descendant.Anchored == false then
				if not (Descendant:IsDescendantOf(Services.Character)) then
					SetGrav(Descendant)
				end
			end
		end

		workspace.DescendantAdded:Connect(
			function(Part)
				if Part:IsA("Part") and Part.Anchored == false then
					if not (Part:IsDescendantOf(Services.Character)) then
						SetGrav(Part)
					end
				end
			end
		)

		UIFuncs.SendNotification("Nameless Admin", "Set gravity for unanchored parts to " .. tostring(Gravity), 5)
	end
)

Command.Add(
	{"GravityGun", "GravGun", "GG"},
	{"GravityGun / GravGun / GG", "Lets you move around unanchored parts"},
	{"None"},
	function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/qipurblx/Script/main/Gravity%20Gun"))()
	end
)
Command.Add(
	{"TPWalk", "TPW"},
	{"TPWalk / TPW", "A more undetectable walkspeed script, using this is recommended"},
	{"Number"},
	function(Speed)
		CommandToggles.TPWalk = true
		while CommandToggles.TPWalk and Services.Character and Services.Character:FindFirstChild("Humanoid") do
			pcall(
				function()
					TPWalking = Services.RunService.Heartbeat:Wait()
					if Services.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection.Magnitude > 0 then
						if Speed then
							Services.Character:TranslateBy(
								Services.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * tonumber(Speed) *
									TPWalking *
									10
							)
						else
							Services.Character:TranslateBy(
								Services.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * TPWalking * 10
							)
						end
					end
				end
			)
		end
	end
)

Command.Add(
	{"UnTPWalk", "UnTPW"},
	{"UnTPWalk / UnTPW", "A more undetectable walkspeed script, using this is recommended"},
	{"None"},
	function()
		CommandToggles.TPWalk = false
		TPWalking = false
	end
)

Command.Add(
	{"Fly"},
	{"Fly", "Makes you fly"},
	{"Speed"},
	function(Speed)
		if Speed then
			PlayerFuncs.Fly(true, Speed)
		else
			PlayerFuncs.Fly(true, 3)
		end
	end
)

Command.Add(
	{"Noclip"},
	{"Noclip", "Makes you allowed to walk through walls"},
	{"None"},
	function()
		for i, v in next, Services.Character:GetDescendants() do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
)

Command.Add(
	{"Clip"},
	{"Clip", "Doesnt allow you to walk through walls"},
	{"None"},
	function()
		for i, v in next, Services.Character:GetDescendants() do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
	end
)

Command.Add(
	{"Unfly"},
	{"Unfly", "Stops making you fly"},
	{"None"},
	function()
		PlayerFuncs.Fly(false, 3)
	end
)

Command.Add(
	{"InfIniteJump", "InfJump"},
	{"InfIniteJump / InfJump", "Allows you to jump even when you are in the air"},
	{"None"},
	function()
		CommandToggles.InfIniteJump = true
		Services.Mouse.KeyDown:connect(
			function(K)
				if CommandToggles.InfIniteJump == true then
					if K:byte() == 32 then
						Humanoid = Services.Character:FindFirstChildOfClass("Humanoid")
						Humanoid:ChangeState("Jumping")
						wait(0.1)
						Humanoid:ChangeState("Seated")
					end
				end
			end
		)
	end
)

Command.Add(
	{"UnInfIniteJump", "UnInfJump"},
	{"UnInfIniteJump / UnInfJump", "Stops the InfInite Jump command"},
	{"None"},
	function()
		CommandToggles.InfIniteJump = false
	end
)

Command.Add(
	{"FPSBooster", "FPSB"},
	{"FPSBooster / FPSB", "Removes all texture, shadows, lighting, etc. to make the game run smoother"},
	{"None"},
	function()
		UIFuncs.PopupTrigger(
			"Nameless Admin",
			"This command will basically make your game look bad are you sure you want to run it (Cant be untoggled)",
			function()
				settings().Rendering.QualityLevel = "Level01"

				for i, Descendant in next, workspace:GetDescendants() do
					if Descendant:IsA("BasePart") and not Descendant:IsA("MeshPart") then
						Descendant.Material = "Plastic"
						Descendant.Reflectance = 0
					elseif (Descendant:IsA("Decal") or Descendant:IsA("Texture")) and decalsyeeted then
						Descendant.Transparency = 1
					elseif Descendant:IsA("ParticleEmitter") or Descendant:IsA("Trail") then
						Descendant.Lifetime = NumberRange.new(0)
					elseif Descendant:IsA("Explosion") then
						Descendant.BlastPressure = 1
						Descendant.BlastRadius = 1
					elseif
						Descendant:IsA("Fire") or Descendant:IsA("SpotLight") or Descendant:IsA("Smoke") or
						Descendant:IsA("Sparkles")
					then
						Descendant.Enabled = false
					elseif Descendant:IsA("MeshPart") and decalsyeeted then
						Descendant.Material = "Plastic"
						Descendant.Reflectance = 0
						Descendant.TextureID = 10385902758728957
					elseif Descendant:IsA("SpecialMesh") and decalsyeeted then
						Descendant.TextureId = 0
					elseif Descendant:IsA("ShirtGraphic") and decalsyeeted then
						Descendant.Graphic = 0
					elseif (Descendant:IsA("Shirt") or Descendant:IsA("Pants")) and decalsyeeted then
						v[Descendant.ClassName .. "Template"] = 0
					end
				end

				for i, Lighting in next, Services.Lighting:GetChildren() do
					if
						Lighting:IsA("BlurEffect") or Lighting:IsA("SunRaysEffect") or
						Lighting:IsA("ColorCorrectionEffect") or
						Lighting:IsA("BloomEffect") or
						Lighting:IsA("DepthOfFieldEffect")
					then
						Lighting.Enabled = false
					end
				end

				workspace.DescendantAdded:Connect(
					function(Descendant)
						task.wait()
						if Descendant:IsA("BasePart") and not Descendant:IsA("MeshPart") then
							Descendant.Material = "Plastic"
							Descendant.Reflectance = 0
						elseif Descendant:IsA("Decal") or Descendant:IsA("Texture") and decalsyeeted then
							Descendant.Transparency = 1
						elseif Descendant:IsA("ParticleEmitter") or Descendant:IsA("Trail") then
							Descendant.Lifetime = NumberRange.new(0)
						elseif Descendant:IsA("Explosion") then
							Descendant.BlastPressure = 1
							Descendant.BlastRadius = 1
						elseif
							Descendant:IsA("Fire") or Descendant:IsA("SpotLight") or Descendant:IsA("Smoke") or
							Descendant:IsA("Sparkles")
						then
							Descendant.Enabled = false
						elseif Descendant:IsA("MeshPart") and decalsyeeted then
							Descendant.Material = "Plastic"
							Descendant.Reflectance = 0
							Descendant.TextureID = 10385902758728957
						elseif Descendant:IsA("SpecialMesh") and decalsyeeted then
							Descendant.TextureId = 0
						elseif Descendant:IsA("ShirtGraphic") and decalsyeeted then
							Descendant.ShirtGraphic = 0
						elseif (Descendant:IsA("Shirt") or Descendant:IsA("Pants")) and decalsyeeted then
							v[Descendant.ClassName .. "Template"] = 0
						end
					end
				)
			end
		)
	end
)

Command.Add(
	{"PartESP", "PE"},
	{"PartESP / PE", "Adds an outline to any part that has the same name you put on (Not case sensitive)"},
	{"PartName"},
	function(PartName)
		for i, Part in next, workspace:GetDescendants() do
			if tostring(Part.Name):lower() == tostring(PartName):lower() then
				UIFuncs.CreateInstance("Highlight", {Parent = Part})
			end
		end
	end
)

Command.Add(
	{"UnpartESP", "UnPE"},
	{"UnpartESP / PE", "Removes the outline of the part with the same name you put (Not case sensitive)"},
	{"PartName"},
	function(PartName)
		for i, Part in next, workspace:GetDescendants() do
			if tostring(Part.Name):lower() == tostring(PartName):lower() and Part:FindFirstChildOfClass("Highlight") then
				Part:FindFirstChildOfClass("Highlight"):Destroy()
			end
		end
	end
)

Command.Add(
	{"Dex", "D"},
	{"Dex / D", "Runs an explorer script"},
	{"None"},
	function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end
)

Command.Add(
	{"HiddenChat", "HC"},
	{
		"HiddenChat / HC",
		"Makes it so whatever you type in to be hidden and only shown to people who are logging chat messages"
	},
	{"String"},
	function(...)
		Services.Players:Chat(...)
	end
)

Command.Add(
	{"View", "V"},
	{"View / V", "Views another person"},
	{"Username"},
	function(...)
		for i, Player in next, PlayerFuncs.GetPlayer(...) do
			if Player.Character and Player.Character.Humanoid then
				UIFuncs.SendNotification("Nameless Admin", "Viewing @" .. Player.Name, 5)
				Services.Camera.CameraSubject = Player.Character.Humanoid
			end
		end
	end
)

Command.Add(
	{"CTP", "ClickTP"},
	{"ClickTP / CTP", "Makes you teleport to the place your mouse is at"},
	{"None"},
	function()
		local CTPTool =
			UIFuncs.CreateInstance(
				"Tool",
				{Parent = Services.LocalPlayer.Backpack, Name = "ClickTP", RequiresHandle = false}
			)

		CTPTool.Activated:Connect(
			function()
				local Position = Services.Mouse.Hit + Vector3.new(0, 2.5, 0)
				Position = CFrame.new(Position.X, Position.Y, Position.Z)
				Services.Character:SetPrimaryPartCFrame(Position)
			end
		)

		local TweenTool =
			UIFuncs.CreateInstance(
				"Tool",
				{Parent = Services.LocalPlayer.Backpack, Name = "Tween ClickTP", RequiresHandle = false}
			)

		TweenTool.Activated:Connect(
			function()
				local Position = Services.Mouse.Hit + Vector3.new(0, 2.5, 0)

				local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

				Services.TweenService:Create(
					Services.Character.HumanoidRootPart,
					TweenInfo,
					{
						CFrame = CFrame.new(Position.X, Position.Y, Position.Z)
					}
				):Play()
			end
		)
	end
)

Command.Add(
	{"God", "GodMode"},
	{"God / GodMode", "Makes you not die when touching a kill brick"},
	{"None"},
	function()
		local Parts =
			workspace:GetPartBoundsInRadius(
				Services.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,
				10
			)
		for _, Part in next, Parts do
			Part.CanTouch = false
		end
	end
)

Command.Add(
	{"Ungod", "Ungodmode"},
	{"Ungod / Ungodmode", "Makes you die if you touch a kill brick"},
	{"None"},
	function()
		local Parts =
			workspace:GetPartBoundsInRadius(
				Services.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,
				10
			)
		for i, Part in next, Parts do
			Part.CanTouch = true
		end
	end
)

Command.Add(
	{"Prefix", "Pre"},
	{"Prefix / Pre", "Changes the prefix of Nameless"},
	{"Prefix"},
	function(Prefix)
		Settings.Prefix = Prefix
	end
)

Command.Add(
	{"Touchfling", "TF"},
	{"Touchfling / TF", "Flings anyone near you and doesnt make it obvious that you are the one flinging"},
	{"Power (10000 recommended)"},
	function(Power)
		if not Power then
			Power = 10000
		end

		UIFuncs.SendNotification("Nameless Admin", "Touchfling <b>enabled</b>", 5)
		PlayerFuncs.Walkfling(tonumber(Power))
	end
)

Command.Add(
	{"Untouchfling", "Untf"},
	{"Untouchfling / Untf", "Stops the touchfling command"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Touchfling <b>disabled</b>", 5)
		CommandToggles.Walkfling = false
	end
)

Command.Add(
	{"Goto", "To"},
	{"Goto / To", "Teleports your character next to your target"},
	{"Username"},
	function(...)
		for i, Player in next, PlayerFuncs.GetPlayer(...) do
			if Player.Character and Player.Character.Humanoid then
				Services.Character:SetPrimaryPartCFrame(Player.Character.HumanoidRootPart.CFrame)
			end
		end
	end
)

Command.Add(
	{"TickGoto", "TickTo", "TT"},
	{"TickGoto / TickTo", "TT", "Teleports your character next to your target for the amount of time you put"},
	{"Player, Time"},
	function(Player, Seconds)
		local OldCFrame = Services.Character.HumanoidRootPart.CFrame
		if Seconds then
			Time = Seconds
		else
			Time = 1
		end
		for i, Player in next, PlayerFuncs.GetPlayer(Player) do
			if Player.Character and Player.Character.Humanoid then
				Services.Character:SetPrimaryPartCFrame(Player.Character.HumanoidRootPart.CFrame)
				wait(tonumber(Time))
				Services.Character.HumanoidRootPart.CFrame = OldCFrame
			end
		end
	end
)

Command.Add(
	{"ActivateAllTools", "AAT"},
	{"ActivateAllTools / AAT", "Equips all your tools and activates them"},
	{"None"},
	function()
		for i, Tool in next, Services.LocalPlayer.Backpack:GetChildren() do
			if Tool:IsA("Tool") then
				Tool.Parent = Services.Character
				Tool:Activate()
			end
		end
	end
)

Command.Add(
	{"LoopActivateAllTools", "LoopAAT"},
	{"LoopActivateAllTools / LoopAAT", "Loop equips all your tools and activates them"},
	{"None"},
	function()
		CommandToggles.LAAT = true
		while CommandToggles.LAAT do
			wait()
			for i, Tool in next, Services.LocalPlayer.Backpack:GetChildren() do
				if Tool:IsA("Tool") then
					Tool.Parent = Services.Character
					Tool:Activate()
					task.wait()
					Tool.Parent = Services.LocalPlayer.Backpack
				end
			end
		end
	end
)

Command.Add(
	{"UnLoopActivateAllTools", "UnLoopAAT"},
	{"UnLoopActivateAllTools / UnLoopAAT", "Stops loop equiping your tools and activates them"},
	{"None"},
	function()
		CommandToggles.LAAT = false
	end
)

Command.Add(
	{"LoopActivateTool", "LoopAT"},
	{"LoopAT / LoopAT", "Loop equips the tools  you want and activates it"},
	{"ToolName"},
	function(Name)
		CommandToggles.LAAT = true
		while CommandToggles.LAAT do
			wait()
			for i, Tool in next, Services.LocalPlayer.Backpack:GetChildren() do
				if Tool:IsA("Tool") and tostring(Tool.Name):lower() == tostring(Name):lower() then
					Tool.Parent = Services.Character
					Tool:Activate()
					task.wait()
					Tool.Parent = Services.LocalPlayer.Backpack
				end
			end
		end
	end
)

Command.Add(
	{"UnLoopActivateTool", "UnLoopAT"},
	{"UnLoopActivateTool / UnLoopAT", "Stops loop equiping the tools and activates them"},
	{"None"},
	function()
		CommandToggles.LAAT = false
	end
)

Command.Add(
	{"BringNPCS", "BNPCS"},
	{"BringNPCS / BNPCS", "Brings every NPC that's in the workspace"},
	{"None"},
	function()
		for i, NPC in next, PlayerFuncs.GetPlayer("NPC") do
			if NPC:FindFirstChild("HumanoidRootPart") then
				NPC.HumanoidRootPart.CFrame = Services.Character.HumanoidRootPart.CFrame
			end
		end
	end
)

Command.Add(
	{"ControlNPCs", "CNPCs"},
	{"ControlNPCs / CNPCs", "Controls your selected NPC"},
	{"None"},
	function()
		Services.Mouse.Button1Down:Connect(
			function()
				if Services.Mouse.Target and Services.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
					local NPC = Services.Mouse.Target.Parent
					local NPCRootPart = NPC.HumanoidRootPart
					local A0 = Instance.new("Attachment")
					local AP = Instance.new("AlignPosition")
					local AO = Instance.new("AlignOrientation")
					local A1 = Instance.new("Attachment")

					for _, Descendant in next, NPC:GetDescendants() do
						if Descendant:IsA("BasePart") then
							Services.RunService.Stepped:Connect(
								function()
									Descendant.CanCollide = false
								end
							)
						end
					end
					Services.Character.HumanoidRootPart:BreakJoints()
					for _, Descendant in next, Services.Character:GetDescendants() do
						if Descendant:IsA("BasePart") then
							if
								Descendant.Name == "HumanoidRootPart" or Descendant.Name == "UpperTorso" or
								Descendant.Name == "Head"
							then
							else
								Descendant:Destroy()
							end
						end
					end

					Services.Character.HumanoidRootPart.Position =
						Services.Character.HumanoidRootPart.Position + Vector3.new(5, 0, 0)
					Services.Character.Head.Anchored = true
					Services.Character.UpperTorso.Anchored = true
					A0.Parent = NPCRootPart
					AP.Parent = NPCRootPart
					AO.Parent = NPCRootPart
					AP.Responsiveness = 200
					AP.MaxForce = math.huge
					AO.MaxTorque = math.huge
					AO.Responsiveness = 200
					AP.Attachment0 = A0
					AP.Attachment1 = A1
					AO.Attachment1 = A1
					AO.Attachment0 = A0
					A1.Parent = Services.Character.HumanoidRootPart
				end
			end
		)

		UIFuncs.SendNotification(
			"Nameless Admin",
			"ControlNPCs loaded, hold the ctrl key and press on a npc for it to work",
			5
		)
	end
)

Command.Add(
	{"KillNPCS", "KNPCS"},
	{"KillNPCS / KNPCS", "Kills every NPC that's in the workspace"},
	{"None"},
	function()
		for i, NPC in next, PlayerFuncs.GetPlayer("NPC") do
			NPC.Humanoid.Health = 0
		end
	end
)

Command.Add(
	{"FollowNPCS", "FNPCS"},
	{"FollowNPCS / FNPCS", "Makes every NPC that's in the workspace follow your character"},
	{"None"},
	function()
		CommandToggles.FollowNPCS = true
		for i, NPC in next, PlayerFuncs.GetPlayer("NPC") do
			spawn(
				function()
					while CommandToggles.FollowNPCS do
						wait(0.1)
						NPC.Humanoid:MoveTo(Services.Character.HumanoidRootPart.Position)
					end
				end
			)
		end
	end
)

Command.Add(
	{"FlingNPCS", "FlNPCS"},
	{"FlingNPCS / FlNPCS", "Flings every NPC that's in the workspace"},
	{"None"},
	function()
		for i, NPC in next, PlayerFuncs.GetPlayer("npc") do
			spawn(
				function()
					NPC.Humanoid.HipHeight = 1024
				end
			)
		end
	end
)

Command.Add(
	{"FreezeNPCS", "FrNPCS"},
	{"FreezeNPCS / FrNPCS", "Freezes every NPC that's in the workspace"},
	{"None"},
	function()
		for i, NPC in next, PlayerFuncs.GetPlayer("npc") do
			spawn(
				function()
					NPC.Character.HumanoidRootPart.Anchored = true
				end
			)
		end
	end
)

Command.Add(
	{"VoidNPCS", "VNPCS"},
	{"VoidNPCS / VNPCS", "Voids every NPC that's in the workspace"},
	{"None"},
	function()
		for i, NPC in next, PlayerFuncs.GetPlayer("NPC") do
			spawn(
				function()
					NPC.Humanoid.HipHeight = -1024
				end
			)
		end
	end
)

Command.Add(
	{"Unview", "Unv"},
	{"Unview / Unv", "Stops viewing someone and goes back to normal"},
	{"None"},
	function()
		Services.Camera.CameraSubject = Services.Character.Humanoid
	end
)

Command.Add(
	{"Chat", "Talk"},
	{"Chat / Talk", "Sends a message in the chat"},
	{"String"},
	function(String)
		PlayerFuncs.Chat(String)
	end
)

Command.Add(
	{"NerdQuote", "NQ"},
	{"NerdQuote / NQ", "Quotes everyones messages with nerd emojis"},
	{"None"},
	function()
		CommandToggles.Nerd = true

		if not CommandToggles.NerdAlreadyRan then
			CommandToggles.NerdAlreadyRan = true
			for i, v in next, Services.Players:GetPlayers() do
				v.Chatted:Connect(
					function(Message)
						if CommandToggles.Nerd then
							PlayerFuncs.Chat('"' .. Message .. '" ' .. "🤓")
						end
					end
				)
			end
		end
	end
)

Command.Add(
	{"UnNerdQuote", "UnNQ"},
	{"UnNerdQuote / UnNQ", "Stops quoting everyones messages with nerd emojis"},
	{"None"},
	function()
		CommandToggles.Nerd = false
	end
)

Command.Add(
	{"GrabTools", "GT"},
	{"GrabTools / GT", "Grabs all the dropped tools that are in the game"},
	{"None"},
	function()
		for i, Tools in next, workspace:GetDescendants() do
			if Tools:IsA("Tool") then
				Services.Character.Humanoid:EquipTool(Tools)
			end
		end
	end
)

Command.Add(
	{"RejoinRe", "RjRe"},
	{"RejoinRe / RjRe", "Rejoins and puts you in the same place you were before you rejoined"},
	{"None"},
	function()
		local QueueTeleport =
			(syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
		local Done = false
		local Run
		local CF = Services.Character:WaitForChild("HumanoidRootPart").CFrame

		if not Done then
			Done = not Done
			local Run =
				"spawn(function() repeat task.wait() until game:IsLoaded() local Player = game:GetService('Players').LocalPlayer local Character = Player.Character or Player.CharacterAdded:Wait() Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(" ..
				tostring(CF) .. ") end)"
			QueueTeleport(Run)
			Services.TeleportService:TeleportCancel()
			Services.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Services.LocalPlayer)
		end
	end
)

Command.Add(
	{"Rejoin", "Rj"},
	{"Rejoin / Rj", "Rejoins the same server, if the server is full it will just teleport you to another server"},
	{"None"},
	function()
		Services.TeleportService:Teleport(game.PlaceId)
	end
)

Command.Add(
	{"Respawn", "Re"},
	{"Respawn / Re", "Respawns you and places you back into the place you were"},
	{"None"},
	function()
		local Old = Services.Character.HumanoidRootPart.CFrame
		Services.Character.Humanoid.Health = 0
		Services.LocalPlayer.CharacterAdded:wait()
		repeat
			task.wait()
		until Services.Character:FindFirstChild("HumanoidRootPart")
		Services.Character:WaitForChild("HumanoidRootPart").CFrame = Old
	end
)
Command.Add(
	{"DropTools", "DT"},
	{"DropTools / DT", "Drops all the tools that are in your inventory"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Dropping all tools in your inventory", 5)
		for i, Tools in next, Services.LocalPlayer.Backpack:GetChildren() do
			if Tools:IsA("Tool") then
				spawn(
					function()
						Tools.Parent = Services.Character
						Tools.Parent = workspace
					end
				)
			end
		end
	end
)

Command.Add(
	{"LoopGrabDeleteTools", "LoopGDT"},
	{"LoopGrabDeleteTools / LoopGDT", "Loop grabs all the dropped tools that are in the game and then destroys them"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Started grabbing & deleting tools", 5)
		CommandToggles.LoopGrabDelete = false
		wait(0.3)
		CommandToggles.LoopGrabDelete = true
		repeat
			task.wait()
			for i, Tools in next, workspace:GetChildren() do
				if Tools:IsA("Tool") and Services.Character and Services.Character:FindFirstChild("Humanoid") then
					Services.Character.Humanoid:EquipTool(Tools)
					Tools:Destroy()
				end
			end
		until not CommandToggles.LoopGrabDelete
	end
)

Command.Add(
	{"UnLoopGrabDeleteTools", "UnLoopGDT"},
	{"UnLoopGrabDeleteTools / UnLoopGDT", "Stops grabbing the dropped tools and deleting them"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Stopped grabbing & deleting tools", 5)
		CommandToggles.LoopGrabDelete = false
	end
)

Command.Add(
	{"GrabDeleteTools", "GDT"},
	{"GrabDeleteTools / GDT", "Grabs all the dropped tools and deletes them"},
	{"None"},
	function()
		for i, Tools in next, workspace:GetChildren() do
			if Tools:IsA("Tool") and Services.Character and Services.Character:FindFirstChild("Humanoid") then
				Services.Character.Humanoid:EquipTool(Tools)
				Tools:Destroy()
			end
		end
	end
)

Command.Add(
	{"LoopGrabTools", "LoopGT"},
	{"LoopGrabTools / LoopGT", "Loop grabs all the dropped tools that are in the game"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Started grabbing tools", 5)
		CommandToggles.LoopGrab = false
		wait(0.3)
		CommandToggles.LoopGrab = true
		repeat
			task.wait()
			for i, Tools in next, workspace:GetChildren() do
				if Tools:IsA("Tool") and Services.Character and Services.Character:FindFirstChild("Humanoid") then
					Services.Character.Humanoid:EquipTool(Tools)
				end
			end
		until not CommandToggles.LoopGrab
	end
)

Command.Add(
	{"UnLoopGrabTools", "UnLoopGT"},
	{"UnLoopGrabTools / UnLoopGT", "Stops loop grabbing all the dropped tools that are in the game"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", "Stopped grabbing tools", 5)
		CommandToggles.LoopGrab = false
	end
)

Command.Add(
	{"RemoteSpy", "RS"},
	{"RemoteSpy / RS", "Loads Remote Spy V3 / Creds : Amity"},
	{"None"},
	function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
	end
)
Command.Add(
	{"Dumbass", "Da"},
	{"Dumbass / Da", "uwu girl language"},
	{"None"},
	function()
		local Replace = {
			["r"] = "w",
			["l"] = "w",
			["ove"] = "uv",
			["!"] = "~",
			[":)"] = "^_^"
		}

		local NameCall

		NameCall =
			hookmetamethod(
				game,
				"__namecall",
				newcclosure(
					function(Self, ...)
						local Arguments = {...}
						local Method = getnamecallmethod()

						if tostring(Self) == "SayMessageRequest" and Method == "FireServer" then
						for Index, Variable in next, Replace do
							Arguments[1] = Arguments[1]:lower():gsub(Index, Variable)
						end
						return NameCall(Self, unpack(Arguments))
					end
						return NameCall(Self, ...)
					end
				)
			)
	end
)

Command.Add(
	{"UnDumbass", "UnDa"},
	{"UnDumbass / UnDa", "Stops the dumbass command"},
	{"None"},
	function()
		CommandToggles.Disability = false
	end
)

Command.Add(
	{"AirWalk", "AW"},
	{"AirWalk / AW", "Lets you walk in the air | Press space to go up"},
	{"None"},
	function()
		local Part = UIFuncs.CreateInstance("Part", {Parent = workspace})
		Part.Size = Vector3.new(7, 2, 3)
		Part.Transparency = 1
		Part.Anchored = true
		Part.Name = "AW"
		while Part do
			Part.CFrame = Services.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
			task.wait()
		end
	end
)

Command.Add(
	{"UnAirWalk", "UnAW"},
	{"UnAirWalk / UnAW", "Stops the airwalk command"},
	{"None"},
	function()
		for i, Part in next, workspace:GetChildren() do
			if Part.Name == "AW" and Part:IsA("Part") then
				Part:Destroy()
			end
		end
	end
)

Command.Add(
	{"Walkspeed", "WS", "Walk"},
	{"Walkspeed / Walk / WS", "Changes your walkspeed so you can walk faster"},
	{"Number"},
	function(Number)
		Services.Character.Humanoid.WalkSpeed = tonumber(Number)
	end
)

Command.Add(
	{"UnanchoredDelete", "UADelete", "UAD"},
	{
		"UnanchoredDelete / UaDelete / UAD",
		"Deletes unanchored parts by voiding them (You need to be closest to the part for it to work)"
	},
	{"None"},
	function()
	end
)

Command.Add(
	{"JumpPower", "JP", "Jump"},
	{"JumpPower / Jump / JP", "Changes your jump power so you can jump higher"},
	{"Number"},
	function(Number)
		Services.Character.Humanoid.JumpPower = tonumber(Number)
	end
)

Command.Add(
	{"Esp"},
	{"ESP", "Lets you see people through walls"},
	{"None"},
	function()
		for i, v in next, Services.Players:GetPlayers() do
			PlayerFuncs.UnESP(v)
			PlayerFuncs.ESP(v)
		end
	end
)

Command.Add(
	{"CommandCount", "CC"},
	{"CommandCount / CC", "Tells the amount of commands Nameless has"},
	{"None"},
	function()
		UIFuncs.SendNotification("Nameless Admin", tostring(CommandAmount), 5)
	end
)

Command.Add(
	{"Unesp"},
	{"Unesp", "Disables ESP"},
	{"None"},
	function()
		for i, v in next, Services.Players:GetPlayers() do
			PlayerFuncs.UnESP(v)
		end
	end
)

Command.Add(
	{"Admin", "A"},
	{"Admin / A", "Gives another user access to use Nameless Admin commands without having it ran"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)

		for i, Plr in next, Player do
			if not Settings.Admins[Plr.UserId] then
				Settings.Admins[Plr.UserId] = {Plr = Plr}
				UIFuncs.SendNotification("Nameless Admin", "Succcessfully gave <b>" .. Plr.Name .. "</b> admin!", 5)
				PlayerFuncs.Chat("/w " .. Plr.Name .. " [NA] You are now an admin")
			else
				UIFuncs.SendNotification("Nameless Admin", "This user seems to already be an admin", 5)
			end
		end
	end
)

Command.Add(
	{"Spin"},
	{"Spin", "Spins your character"},
	{"Number"},
	function(Value)
		local Number = Value
		if not Value then
			Number = 10
		end

		for i, Instance in next, Services.Character:FindFirstChild("HumanoidRootPart"):GetChildren() do
			if Instance.Name == "Spin" then
				Instance:Destroy()
			end
		end
		local Spin = Instance.new("BodyAngularVelocity")
		Spin.MaxTorque = Vector3.new(0, 9e9, 0)
		Spin.AngularVelocity = Vector3.new(0, Number, 0)
		Spin.Name = "Spin"
		Spin.Parent = Services.Character.HumanoidRootPart
	end
)

Command.Add(
	{"Unspin"},
	{"Unspin", "Stops spinning your character"},
	{"None"},
	function()
		for i, Instance in next, Services.Character:FindFirstChild("HumanoidRootPart"):GetChildren() do
			if Instance.Name == "Spin" then
				Instance:Destroy()
			end
		end
	end
)

Command.Add(
	{"F3X"},
	{"F3X", "Loads f3x (Alternative to BTools)"},
	{"None"},
	function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end
)

Command.Add(
	{"TriggerBot", "TB", "TBot"},
	{"TriggerBot / TBot / TB", "If your cursor is on a player the command will automatically click the mouse for you"},
	{"None"},
	function()
		CommandToggles.TBot = true
		local UI = UIFuncs.CreateInstance("ScreenGui", {Parent = Interface, Name = "Toggle"})
		local TextLabel =
			UIFuncs.CreateInstance(
				"TextLabel",
				{
					Parent = UI,
					BackgroundColor3 = Settings.Themes.PrimaryBGColor,
					Position = UDim2.new(0.880059958, 0, 0.328616381, 0),
					Size = UDim2.new(0, 160, 0, 20),
					Font = Enum.Font.GothamBold,
					TextSize = 15,
					Text = "TriggerBot : true",
					TextColor3 = Settings.Themes.PrimaryTextColor,
					TextWrapped = true
				}
			)
		local UICorner = UIFuncs.CreateInstance("UICorner", {Parent = TextLabel, CornerRadius = UDim.new(1, 0)})
		local Toggle = Enum.KeyCode.Q

		UIS.InputBegan:Connect(
			function(Input)
				if Input.KeyCode == Toggle then
					CommandToggles.TBot = not CommandToggles.TBot
					TextLabel.Text = "Trigger Bot : " .. tostring(CommandToggles.TBot)
				end
			end
		)

		while CommandToggles.TBot do
			task.wait()
			if Services.Mouse.Target then
				if game.Players:GetPlayerFromCharacter(Services.Mouse.Target.Parent) then
					mouse1click()
				end
			end
		end
	end
)
Command.Add(
	{"Unadmin", "Una"},
	{"Unadmin / Una", "Removes someones admin permissions"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)

		for i, Plr in next, Player do
			if Settings.Admins[Plr.UserId] then
				Settings.Admins[Plr.UserId] = nil
				UIFuncs.SendNotification("Nameless Admin", "Succcessfully removed <b>" .. Plr.Name .. "'s</b> admin", 5)
				PlayerFuncs.Chat("/w " .. Plr.Name .. " [NA] You are no longer an admin")
			else
				UIFuncs.SendNotification("Nameless Admin", "The user <b>" .. Plr.Name .. "</b> isn't an admin", 5)
			end
		end
	end
)

Command.Add(
	{"HideDisplayNames", "HDN", "HideDisplay"},
	{"HideDisplayNames / HideDisplay / HDN", "Hides everyones display names and shows their username instead"},
	{"None"},
	function()
		CommandToggles.HideDisplayNames = true

		local function HideDisplay(Player)
			if Player.ClassName == "Player" and CommandToggles.HideDisplayNames == true then
				if Player.Character and Player.Character.Humanoid then
					Player.DisplayName = Player.Name
					Player.Character.Humanoid.DisplayName = Player.Name
				end
			end
		end

		for i, Player in next, Services.Players:GetPlayers() do
			if not Player:FindFirstChild("Value") then
				UIFuncs.CreateInstance(
					"StringValue",
					{
						Parent = Player,
						Value = Player.DisplayName
					}
				)
			end

			HideDisplay(Player)

			Player.CharacterAdded:Connect(
				function(Char)
					repeat
						task.wait()
					until Char
					HideDisplay(Player)
				end
			)
		end

		Services.Players.PlayerAdded:Connect(
			function(Player)
				repeat
					task.wait()
				until Player.Character
				HideDisplay(Player)

				if not Player:FindFirstChild("Value") then
					UIFuncs.CreateInstance(
						"StringValue",
						{
							Parent = Player,
							Value = Player.DisplayName
						}
					)
				end

				Player.CharacterAdded:Connect(
					function(Char)
						repeat
							task.wait()
						until Char
						HideDisplay(Player)
					end
				)
			end
		)
	end
)

Command.Add(
	{"ShowDisplayNames", "SDN", "ShowDisplay"},
	{"ShowDisplayNames / ShowDisplay / SDN", "Starts showing everyones display names again"},
	{"None"},
	function()
		CommandToggles.HideDisplayNames = false

		local function ShowDisplay(Player)
			if Player.ClassName == "Player" and CommandToggles.HideDisplayNames == false then
				if Player.Character and Player.Character.Humanoid then
					if Player:FindFirstChild("Value") then
						local ds = Player.Value.Value
						Player.DisplayName = ds
						Player.Character.Humanoid.DisplayName = ds
					else
						local ds = Player.DisplayName
						Player.DisplayName = ds
						Player.Character.Humanoid.DisplayName = ds
					end
				end
			end
		end

		for i, Player in next, Services.Players:GetPlayers() do
			ShowDisplay(Player)
		end
	end
)

--// ui commands

Command.Add(
	{"Introduction", "Int"},
	{"Introduction / Int", "An introduction to Nameless Admin if you haven't read it yet"},
	{"None"},
	function()
		wait(0.3)
		UIFuncs.Open(Interface.Introduction, 317, 283, 0.6)
		Interface.Introduction.Description.TextTransparency = 1
		Interface.Introduction.Title.TextTransparency = 1
		Interface.Introduction.Okay.Visible = false
		wait(0.4)
		Interface.Introduction.Description.TextTransparency = 0
		Interface.Introduction.Title.TextTransparency = 0
		Interface.Introduction.Okay.Visible = true

		Interface.Introduction.Okay.MouseButton1Click:Connect(
			function()
				UIFuncs.Close(Interface.Introduction, 0.3, 0, 0)
				Interface.Introduction.Description.TextTransparency = 1
				Interface.Introduction.Title.TextTransparency = 1
				Interface.Introduction.Okay.Visible = false
			end
		)
	end
)

Command.Add(
	{"Logs", "L"},
	{"Logs / L", "Logs chats, joins, leaves and http requests!"},
	{"None"},
	function()
		local Logs = Interface.Logs
		local Tabs = Logs.Tabs
		local SpamStopper = false -- for some reason whenever it detects something it just gets duplicated like 10 times so i gotta add this :(((((
		for i, v in next, Tabs:GetChildren() do
			if v:FindFirstChild("Message") and v.Message:FindFirstChild("Example") then
				v.Message.Example.Visible = false
			end
		end

		local function AddMessage(Type, Title, Description) -- Type : Http, Chat, Leave, Join
			if not SpamStopper then
				SpamStopper = true
				for i, Tab in next, Tabs:GetChildren() do
					if Tab.Name == Type and Tab ~= Tabs.Selection then
						local Message = Tabs[Type].Message.Example
						for i, v in next, Tabs[Type].Message:GetChildren() do
							if v:IsA("Frame") then
								v.LayoutOrder = v.LayoutOrder + 1
							end
						end
						local NewMessage = Message:Clone()
						NewMessage.LayoutOrder = 0
						if NewMessage:FindFirstChild("Time") then
							NewMessage.Time.Text = UIFuncs.GetCurrentTime()
						end

						NewMessage.Description.Text = Description
						NewMessage.Title.Text = Title
						NewMessage.Parent = Message.Parent
						NewMessage.Visible = true
					end
				end
				wait(0.2)
				SpamStopper = false
			end
		end

		if CommandToggles.AlreadyStartedLogging == false then
			CommandToggles.AlreadyStartedLogging = true

			spawn(
				function()
					local Selection = Tabs.Selection
					local Topbar = Logs.Topbar
					local BackButton = Topbar.Back
					local TweenService = Services.TweenService
					local TweenSpeed = 0.5
					local CurrentTab = "Selection"
					local Cooldown = false
					for i, v in next, Tabs:GetChildren() do
						if v:IsA("ScrollingFrame") then
							if v.Name == "Selection" then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
					for i, v in next, Selection:GetChildren() do
						if v:IsA("TextButton") then
							v.MouseButton1Click:Connect(
								function()
									if Cooldown == false and Tabs:FindFirstChild(v.Name) then
										Cooldown = true
										BackButton.Visible = true
										BackButton.Icon.ImageTransparency = 1
										spawn(
											function()
												for i = 1, 20 do
													task.wait()
													BackButton.Icon.ImageTransparency =
														BackButton.Icon.ImageTransparency - 0.05
												end
												BackButton.Icon.ImageTransparency = 0
											end
										)
										Tabs[v.Name].Visible = true -- 0, -350,0, 0
										Tabs[v.Name].Position = UDim2.new(0, 350, 0, 0)
										TweenService:Create(
											Tabs[v.Name],
											TweenInfo.new(TweenSpeed),
											{Position = UDim2.new(0, 0, 0, 0)}
										):Play()
										TweenService:Create(
											Tabs[CurrentTab],
											TweenInfo.new(TweenSpeed),
											{Position = UDim2.new(0, -350, 0, 0)}
										):Play()
										wait(TweenSpeed + 0.1)
										Tabs[CurrentTab].Visible = false
										CurrentTab = v.Name
										wait(1)
										Cooldown = false
									end
								end
							)
						end
					end

					BackButton.MouseButton1Click:Connect(
						function()
							if CurrentTab == "Selection" then
							else
								if not Cooldown then
									Cooldown = true
									BackButton.Icon.ImageTransparency = 0
									spawn(
										function()
											for i = 1, 20 do
												task.wait()
												BackButton.Icon.ImageTransparency =
													BackButton.Icon.ImageTransparency + 0.05
											end
											BackButton.Icon.ImageTransparency = 1
										end
									)
									Tabs["Selection"].Visible = true -- 0, -350,0, 0
									TweenService:Create(
										Tabs["Selection"],
										TweenInfo.new(TweenSpeed),
										{Position = UDim2.new(0, 0, 0, 0)}
									):Play()
									TweenService:Create(
										Tabs[CurrentTab],
										TweenInfo.new(TweenSpeed),
										{Position = UDim2.new(0, 350, 0, 0)}
									):Play()
									wait(TweenSpeed + 0.1)
									Tabs[CurrentTab].Visible = false
									CurrentTab = "Selection"
									BackButton.Visible = false
									wait(TweenSpeed)
									Cooldown = false
								end
							end
						end
					)
				end
			)
			UIFuncs.SendNotification("Nameless Admin", "Started logging", 5)
			for i, Player in next, Services.Players:GetPlayers() do
				if Services.TextChatService:FindFirstChild("TextChannels") then
					Services.TextChatService.SendingMessage:Connect(
						function(Message)
							local PlrName
							print(Message.TextSource.UserId)
							for i, v in next, Services.Players:GetPlayers() do
								if v.UserId == Message.TextSource.UserId then
									PlrName = tostring(v.Name)
								end
							end
							AddMessage("Chat", PlrName, Message.Text)
						end
					)
				else
					Player.Chatted:Connect(
						function(Message)
							AddMessage("Chat", Player.Name, Message)
						end
					)
				end

				pcall(function()
				local Request
           
				if syn then
					Request =
						hookfunction(
							syn and syn.request or request,
							newcclosure(
								function(reqtbl)
									AddMessage(
										"HTTP",
										"New syn.request / request Log",
										JSONEncode(Services.HttpService, reqtbl)
									)
									return Request(reqtbl)
								end
							)
						)
				end

				local Httpget

				Httpget =
					hookfunction(
						game.HttpGet,
						newcclosure(
							function(self, url)
								AddMessage("HTTP", "New HttpGet Log", url)
								return Httpget(self, url)
							end
						)
					)

				local Httppost
				Httppost =
					hookfunction(
						game.HttpPost,
						newcclosure(
							function(self, url)
								AddMessage("HTTP", "New HttpPost Log", url)
								return Httppost(self, url)
							end
						)
					)

				if (game.HttpGet ~= game.HttpGetAsync) then
					local HttpgetAsync
					HttpgetAsync =
						hookfunction(
							game.HttpGetAsync,
							newcclosure(
								function(self, url)
									AddMessage("HTTP", "New HttpGetAsync Log", url)
									return HttpgetAsync(self, url)
								end
							)
						)
				end

				if (game.HttpPost ~= game.HttpPostAsync) then
					local HttppostAsync
					HttppostAsync =
						hookfunction(
							game.HttpPostAsync,
							newcclosure(
								function(self, url)
									AddMessage("HTTP", "New HttpPostAsync Log", url)
									return HttppostAsync(self, url)
								end
							)
						)
				end
			end)

				Services.Players.PlayerAdded:Connect(
					function(Player)
						AddMessage(
							"Joins",
							"New player has joined",
							"Player called " .. Player.Name .. " has joined the server"
						)
					end
				)

				Services.Players.PlayerRemoving:Connect(
					function()
						AddMessage(
							"Leaves",
							"Player has left the server",
							"Player called " .. Player.Name .. " has left the server"
						)
					end
				)
			end
		end

		local Popup = UIFuncs
		Logs.Visible = false

		for i, v in next, Logs:GetChildren() do
			if v:IsA("Frame") then
				v.BackgroundTransparency = 1
			elseif v:IsA("CanvasGroup") then
				v.GroupTransparency = 1
			end
		end

		local function OpenLogs()
			Logs.BackgroundTransparency = 1
			Logs.Topbar.Visible = false
			Logs.Tabs.Visible = false
			Logs.Tabs.GroupTransparency = 1

			Logs.Topbar.Close.Visible = false
			Logs.Topbar.Title.Visible = false

			Logs.Size = UDim2.fromOffset(200, 200)
			Logs.Visible = true
			Popup.Open(Logs, 337, 324, 0.5)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Logs.BackgroundTransparency = Logs.BackgroundTransparency - 0.05
						Logs.Tabs.GroupTransparency = Logs.Tabs.GroupTransparency - 0.05
					end
				end
			)
			wait(0.2)
			Logs.Topbar.Visible = true
			wait(0.1)
			Logs.Tabs.Visible = true
			Logs.Topbar.Close.Visible = true
			Logs.Topbar.Title.Visible = true
		end

		local function CloseLogs()
			Popup.Close(Logs, 0.4)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Logs.BackgroundTransparency = Logs.BackgroundTransparency + 0.05
						Logs.Tabs.GroupTransparency = Logs.BackgroundTransparency + 0.05
					end
				end
			)
			Logs.Tabs.Visible = false
			wait(0.05)
			Logs.Topbar.Close.Visible = false
			Logs.Topbar.Title.Visible = false
			Logs.Topbar.Visible = false
			wait(0.25)
			Logs.Topbar.Close.Visible = false
			Logs.Topbar.Title.Visible = false
			Logs.Visible = false
		end

		Logs.PopupBG.Popup.GroupTransparency = 1
		OpenLogs()

		Logs.Topbar.Close.MouseButton1Click:Connect(
			function()
				CloseLogs()
			end
		)
	end
)

Command.Add(
	{"Servers"},
	{"Servers", "See what other servers there are and join them"},
	{"None"},
	function()
		local Servers = Interface.Servers
		local Tabs = Servers.Tabs
		Tabs.Servers.Message.Example.Visible = false

		local function AddMessage(Title, Description, PlayerCount)
			local Message = Tabs.Servers.Message.Example
			for i, v in next, Tabs.Servers.Message:GetChildren() do
				if v:IsA("Frame") then
					v.LayoutOrder = v.LayoutOrder + 1
				end
			end

			local NewMessage = Message:Clone()
			NewMessage.LayoutOrder = 0
			if NewMessage:FindFirstChild("Time") then
				NewMessage.Time.Text = UIFuncs.GetCurrentTime()
			end

			NewMessage.Description.Text = Description
			NewMessage.Title.Text = Title
			NewMessage.Name = "server"
			NewMessage.Players.Text = PlayerCount
			NewMessage.Parent = Message.Parent
			NewMessage.Visible = true

			NewMessage.MouseButton1Click:Connect(
				function()
					Services.TeleportService:TeleportToPlaceInstance(game.PlaceId, Title, Services.LocalPlayer)
				end
			)
		end

		local Popup = UIFuncs
		Servers.Visible = false

		for i, v in next, Servers:GetChildren() do
			if v:IsA("Frame") then
				v.BackgroundTransparency = 1
			elseif v:IsA("CanvasGroup") then
				v.GroupTransparency = 1
			end
		end

		local function OpenServers()
			Servers.BackgroundTransparency = 1
			Servers.Topbar.Visible = false
			Servers.Tabs.Visible = false
			Servers.Tabs.GroupTransparency = 1

			Servers.Topbar.Close.Visible = false
			Servers.Topbar.Title.Visible = false

			Servers.Size = UDim2.fromOffset(200, 200)
			Servers.Visible = true
			Popup.Open(Servers, 337, 324, 0.5)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Servers.BackgroundTransparency = Servers.BackgroundTransparency - 0.05
						Servers.Tabs.GroupTransparency = Servers.Tabs.GroupTransparency - 0.05
					end
				end
			)
			wait(0.2)
			Servers.Topbar.Visible = true
			wait(0.1)
			Servers.Tabs.Visible = true
			Servers.Topbar.Close.Visible = true
			Servers.Topbar.Title.Visible = true
		end

		local function CloseServers()
			Popup.Close(Servers, 0.4)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Servers.BackgroundTransparency = Servers.BackgroundTransparency + 0.05
						Servers.Tabs.GroupTransparency = Servers.BackgroundTransparency + 0.05
					end
				end
			)
			Servers.Tabs.Visible = false
			wait(0.05)
			Servers.Topbar.Close.Visible = false
			Servers.Topbar.Title.Visible = false
			Servers.Topbar.Visible = false
			wait(0.25)
			Servers.Topbar.Close.Visible = false
			Servers.Topbar.Title.Visible = false
			Servers.Visible = false
		end

		Servers.PopupBG.Popup.GroupTransparency = 1
		OpenServers()

		Servers.Topbar.Close.MouseButton1Click:Connect(
			function()
				CloseServers()
			end
		)

		local URL = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?limit=100"
		local ServerTable = {}
		local Info = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(URL))

		for Index, Server in next, Info.data do
			if type(Server) == "table" and Server.maxPlayers > Server.playing then
				table.insert(ServerTable, {Server.ping, Server.id, Server.playing, Server.maxPlayers})
			end
		end

		--AddMessage('hi', 'ho', 'player')
		for Index, Info in next, ServerTable do
			print(Info[1], Info[2], Info[3])
			AddMessage(
				tostring(Info[2]),
				"Ping: " .. tostring(Info[1]),
				tostring(Info[3]) .. "/" .. tostring(Info[4]) .. " Players"
			)
		end
	end
)

Command.Add(
	{"Commands", "Cmds", "C"},
	{"Commands / Cmds / C", "Opens the commands tab"},
	{"None"},
	function()
		--// opening
		local Popup = UIFuncs
		local Commands = Interface.Commands
		local Topbar = Commands.Topbar
		local Tabs = Commands.Tabs
		local BackButton = Topbar.Back
		Commands.Visible = false

		for i, v in next, Commands:GetChildren() do
			if v:IsA("Frame") then
				v.BackgroundTransparency = 1
			elseif v:IsA("CanvasGroup") then
				v.GroupTransparency = 1
			end
		end

		local function OpenCommands()
			Commands.BackgroundTransparency = 1
			Topbar.Visible = false
			Commands.Tabs.Visible = false
			Commands.Tabs.GroupTransparency = 1

			Topbar.Close.Visible = false

			Commands.Size = UDim2.fromOffset(200, 200)
			Commands.Visible = true
			Popup.Open(Commands, 308, 310, 0.5)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Commands.BackgroundTransparency = Commands.BackgroundTransparency - 0.05
						Commands.Tabs.GroupTransparency = Commands.Tabs.GroupTransparency - 0.05
					end
				end
			)
			wait(0.2)
			Topbar.Visible = true
			wait(0.1)
			Commands.Tabs.Visible = true
			Topbar.Close.Visible = true
		end

		OpenCommands()

		local function CloseCommands()
			Popup.Close(Commands, 0.4)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Commands.BackgroundTransparency = Commands.BackgroundTransparency + 0.05
						Commands.Tabs.GroupTransparency = Commands.BackgroundTransparency + 0.05
					end
				end
			)
			Commands.Tabs.Visible = false
			wait(0.05)
			Topbar.Close.Visible = false
			Topbar.Visible = false
			wait(0.25)
			Topbar.Close.Visible = false
			Commands.Visible = false
		end

		Topbar.Close.MouseButton1Click:Connect(
			function()
				CloseCommands()
			end
		)

		Topbar.Search:GetPropertyChangedSignal("Text"):Connect(
		function()
			local InputText = string.lower(Topbar.Search.Text)
			for i, v in next, Tabs.Commands:GetChildren() do
				if v:IsA("TextButton") and v:FindFirstChild("Title") then
					v.Visible = string.find(string.lower(v.Title.Text), InputText) and true or false
				end
			end
		end
		)

		--// tabs and other stuff

		local TweenSpeed = 0.5
		local CurrentTab = "Commands"
		local Cooldown = false
		for i, v in next, Tabs:GetChildren() do
			if v:IsA("ScrollingFrame") then
				if v.Name == "Commands" then
					v.Visible = true
					v.Position = UDim2.new(0, 0, 0, 0)
				else
					v.Visible = false
				end
			end
		end

		BackButton.Icon.Image = "rbxassetid://11293977875"
		for i, v in next, Tabs:GetChildren() do
			if v:IsA("TextButton") then
				v.MouseButton1Click:Connect(
					function()
						if Cooldown == false and Tabs:FindFirstChild(v.Name) then
							Cooldown = true
							BackButton.Visible = true
							BackButton.Icon.ImageTransparency = 1
							spawn(
								function()
									for i = 1, 20 do
										task.wait()
										BackButton.Icon.ImageTransparency = BackButton.Icon.ImageTransparency - 0.05
									end
									BackButton.Icon.ImageTransparency = 0
								end
							)
							Tabs[v.Name].Visible = true -- 0, -350,0, 0
							Tabs[v.Name].Position = UDim2.new(0, 310, 0, 0)
							Services.TweenService:Create(
								Tabs[v.Name],
								TweenInfo.new(TweenSpeed),
								{Position = UDim2.new(0, 0, 0, 0)}
							):Play()
							Services.TweenService:Create(
								Tabs[CurrentTab],
								TweenInfo.new(TweenSpeed),
								{Position = UDim2.new(0, -310, 0, 0)}
							):Play()
							wait(TweenSpeed + 0.1)
							Tabs[CurrentTab].Visible = false
							CurrentTab = v.Name
							wait(1)
							Cooldown = false
						end
					end
				)
			end
		end

		BackButton.MouseButton1Click:Connect(
			function()
				if CurrentTab == "Commands" then
				else
					BackButton.Icon.ImageTransparency = 0
					spawn(
						function()
							for i = 1, 20 do
								task.wait()
								BackButton.Icon.ImageTransparency = BackButton.Icon.ImageTransparency + 0.05
							end
							BackButton.Icon.ImageTransparency = 1
						end
					)
					Tabs["Commands"].Visible = true -- 0, -350,0, 0
					Services.TweenService:Create(
						Tabs["Commands"],
						TweenInfo.new(TweenSpeed),
						{Position = UDim2.new(0, 0, 0, 0)}
					):Play()
					Services.TweenService:Create(
						Tabs[CurrentTab],
						TweenInfo.new(TweenSpeed),
						{Position = UDim2.new(0, 310, 0, 0)}
					):Play()
					wait(TweenSpeed + 0.1)
					Tabs[CurrentTab].Visible = false
					CurrentTab = "Commands"
					BackButton.Visible = false
				end
			end
		)
	end
)

Command.Add(
	{"Options", "Settings", "Set", "Opt"},
	{"Settings / Options / Set / Opt", "Opens the Options tab, allows you to change things about Nameless"},
	{"None"},
	function()
		local Popup = UIFuncs
		local Options = Interface.Options
		Options.Visible = false

		for i, v in next, Options:GetChildren() do
			if v:IsA("Frame") and v.Name == not "ColorPicker" then
				v.BackgroundTransparency = 1
			elseif v:IsA("CanvasGroup") then
				v.GroupTransparency = 1
			end
		end

		local function OpenOptions()
			Options.BackgroundTransparency = 1
			Options.Topbar.Visible = false
			Options.Tabs.Visible = false
			Options.Tabs.GroupTransparency = 1

			Options.Topbar.Close.Visible = false
			Options.Topbar.Title.Visible = false

			Options.Size = UDim2.fromOffset(200, 200)
			Options.Visible = true
			Popup.Open(Options, 337, 324, 0.5)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Options.BackgroundTransparency = Options.BackgroundTransparency - 0.05
						Options.Tabs.GroupTransparency = Options.Tabs.GroupTransparency - 0.05
					end
				end
			)
			wait(0.2)
			Options.Topbar.Visible = true
			wait(0.1)
			Options.Tabs.Visible = true
			Options.Topbar.Close.Visible = true
			Options.Topbar.Title.Visible = true
		end

		local function CloseOptions()
			Popup.Close(Options, 0.4)

			spawn(
				function()
					for i = 1, 20 do
						task.wait()
						Options.BackgroundTransparency = Options.BackgroundTransparency + 0.05
						Options.Tabs.GroupTransparency = Options.Tabs.GroupTransparency + 0.05
					end
				end
			)
			Options.Tabs.Visible = false
			wait(0.05)
			Options.Topbar.Close.Visible = false
			Options.Topbar.Title.Visible = false
			Options.Topbar.Visible = false
			wait(0.25)
			Options.Topbar.Close.Visible = false
			Options.Topbar.Title.Visible = false
			Options.Visible = false
		end

		Options.PopupBG.Popup.GroupTransparency = 1
		OpenOptions()

		Options.Topbar.Close.MouseButton1Click:Connect(
			function()
				CloseOptions()
			end
		)
	end
)

UIFuncs.LoadTheme()

if Methods.CheckIfVulnerable() then
	local BansList = {} -- ban command

	UIFuncs.SendNotification(
		"Nameless Admin",
		"Seems like this game has an remote that is vulnerable to attacks using Nameless, you have been given extra commands run <b>cmds</b> and look for commands that have '(Vuln)' next to them, to see what new commands you now have.",
		15
	)

	Command.Add(
		{"Kill", "K"},
		{"Kill / K (Vuln)", "Kills a person if the vulnerable method is available"},
		{"Username"},
		function(Username)
			local Player = PlayerFuncs.GetPlayer(Username)
			for i, Player in next, Player do
				if Player.Character then
					Methods.Destroy(Player.Character.Head)
				end
			end
		end
	)

	Command.Add(
		{"Kick", "Kk"},
		{"Kick / Kk (Vuln)", "Kicks a person if the vulnerable method is available"},
		{"Username"},
		function(Username)
			local Player = PlayerFuncs.GetPlayer(Username)
			for i, Player in next, Player do
				if Player.Character then
					Methods.Destroy(Player)
				end
			end
		end
	)

	Command.Add(
		{"Ban"},
		{"Ban (Vuln)", "Bans the person from the server you are in"},
		{"Username"},
		function(Username)
			local Player = PlayerFuncs.GetPlayer(Username)
			for i, Player in next, Player do
				table.insert(BansList, Player.UserId)
				Methods.Destroy(Player)
			end
		end
	)

	Services.Players.PlayerAdded:Connect(
		function(Player)
			if table.find(BansList, Player.UserId) then
				Methods.Destroy(Player)
			end
		end
	)

	Command.Add(
		{"Sink"},
		{"Sink (Vuln)", "Sinks a player to the ground"},
		{"Username"},
		function(Username)
			local Player = PlayerFuncs.GetPlayer(Username)
			for i, Player in next, Player do
				if Player.Character then
					Methods.Destroy(Player.Character.HumanoidRootPart)
				end
			end
		end
	)
end

Command.Add(
	{"ClearMap", "CM"},
	{"ClearMap / CM (Vuln)", "Clears the whole map"},
	{"None"},
	function()
		for i, v in next, workspace:GetChildren() do
			Methods.Destroy(v)
		end
	end
)

Command.Add(
	{"BreakGame", "BG"},
	{
		"BreakGame / BG (Vuln)",
		"Destroys everything in ReplicatedStorage which most games rely on to make their game work"
	},
	{"None"},
	function()
		for i, v in next, Services.ReplicatedStorage:GetChildren() do
			Methods.Destroy(v)
		end
	end
)

Command.Add(
	{"Bald"},
	{"Bald (Vuln)", "Makes your target(s) bald"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)
		for i, Player in next, Player do
			if Player.Character then
				for i, v in next, Player.Character:GetChildren() do
					if v:IsA("Accessory") then
						Methods.Destroy(v)
					end
				end
			end
		end
	end
)

Command.Add(
	{"Box"},
	{"Box (Vuln)", "Makes the player(s) a box"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)
		for i, Player in next, Player do
			if Player.Character then
				for i, v in next, Player.Character:GetChildren() do
					if v:IsA("Accessory") or v:IsA("CharacterMesh") then
						Methods.Destroy(v)
					end
				end

				Methods.Destroy(Player.Character:FindFirstChildOfClass("Pants"))
				Methods.Destroy(Player.Character:FindFirstChildOfClass("Shirt"))
				Methods.Destroy(Player.Character:FindFirstChildOfClass("ShirtGraphics"))
				Methods.Destroy(Player.Character:FindFirstChild("Left Arm"))
				Methods.Destroy(Player.Character:FindFirstChild("Left Leg"))
				Methods.Destroy(Player.Character:FindFirstChild("Right Arm"))
				Methods.Destroy(Player.Character:FindFirstChild("Right Leg"))
				Methods.Destroy(Player.Character.Head:FindFirstChildOfClass("SpecialMesh"))
				Methods.Destroy(Player.Character.Head:FindFirstChildOfClass("PantDecals"))
			end
		end
	end
)

Command.Add(
	{"Naked"},
	{"Naked (Vuln)", "Makes the player(s) naked"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)
		for i, Player in next, Player do
			if Player.Character then
				Methods.Destroy(Player.Character:FindFirstChildOfClass("Pants"))
				Methods.Destroy(Player.Character:FindFirstChildOfClass("Shirt"))
				Methods.Destroy(Player.Character:FindFirstChildOfClass("ShirtGraphics"))
			end
		end
	end
)

Command.Add(
	{"Punish"},
	{"Punish (Vuln)", "Makes the player(s) punnished"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)
		for i, Player in next, Player do
			if Player.Character then
				Methods.Destroy(Player.Character)
			end
		end
	end
)

Command.Add(
	{"Fat"},
	{"Fat (Vuln)", "Makes the player(s) fat"},
	{"Username"},
	function(Username)
		local Player = PlayerFuncs.GetPlayer(Username)
		for i, Player in next, Player do
			if Player.Character then
				for i, v in next, Player.Character:GetChildren() do
					if v:IsA("CharacterMesh") then
						Methods.Destroy(v)
					end
				end
			end
		end
	end
)

Command.Add(
	{"Btools"},
	{"Btools (Vuln)", "Gives btools that can destroy the map"},
	{"None"},
	function()
		local DestroyTool =
			UIFuncs.CreateInstance(
				"Tool",
				{
					Parent = Services.LocalPlayer.Backpack,
					RequiresHandle = false,
					Name = "Delete",
					ToolTip = "Btools (Delete)",
					TextureId = "https://www.roblox.com/asset/?id=12223874",
					CanBeDropped = false
				}
			)
		local BtoolsEquipped = false
		DestroyTool.Equipped:Connect(
			function()
				BtoolsEquipped = true
			end
		)

		DestroyTool.Unequipped:Connect(
			function()
				BtoolsEquipped = false
			end
		)

		DestroyTool.Activated:connect(
			function()
				local Explosion =
					UIFuncs.CreateInstance(
						"Explosion",
						{
							Parent = workspace,
							BlastPressure = 0,
							BlastRadius = 0,
							DestroyJointRadiusPercent = 0,
							ExplosionType = Enum.ExplosionType.NoCraters,
							Position = Services.Mouse.Target.Position
						}
					)
				Methods.Destroy(Services.Mouse.Target)
			end
		)
	end
)

spawn(
	function()
		for i, Player in next, Services.Players:GetPlayers() do
			Player.Chatted:Connect(
				function(Message)
					if Settings.Admins[Player.UserId] and Player ~= Services.LocalPlayer then
						Library.ParseCommand(Message)
					end
				end
			)
		end
	end
)

Services.LocalPlayer.Chatted:Connect(
	function(Message)
		Library.ParseCommand(Message)
	end
)

Services.TextChatService.SendingMessage:Connect(
	function(Message)
		if Message.TextSource.UserId == Services.LocalPlayer.UserId then
			Library.ParseCommand(tostring(Message.Text))
		end
	end
)

local Description = Interface.Description
local CommandBar = Interface.CmdBar
local CenterBar = CommandBar.CenterBar
local CommandInput = CenterBar.Input
local CommandAutoFill = CommandBar.Autofill
local CommandExample = CommandAutoFill.Cmd
local LeftFill = CommandBar.LeftFill
local RightFill = CommandBar.RightFill
local ResizeFrame = Interface.Resizeable
local Cmds = Interface.Commands
local CommandsTabs = Cmds.Tabs
local CmdExample = CommandsTabs.Commands.Command

local Resizing = {
	Top = {Vector2.new(0, -1), Vector2.new(0, -1), "rbxassetid://2911850935"},
	Bottom = {Vector2.new(0, 1), Vector2.new(0, 0), "rbxassetid://2911850935"},
	Left = {Vector2.new(-1, 0), Vector2.new(1, 0), "rbxassetid://2911851464"},
	Right = {Vector2.new(1, 0), Vector2.new(0, 0), "rbxassetid://2911851464"},
	TopLeft = {Vector2.new(-1, -1), Vector2.new(1, -1), "rbxassetid://2911852219"},
	TopRight = {Vector2.new(1, -1), Vector2.new(0, -1), "rbxassetid://2911851859"},
	BottomLeft = {Vector2.new(-1, 1), Vector2.new(1, 0), "rbxassetid://2911851859"},
	BottomRight = {Vector2.new(1, 1), Vector2.new(0, 0), "rbxassetid://2911852219"}
}

GUI = {}

GUI.Top = function(Method)
	if Method == "Open" or Method == "open" then
		UIFuncs.Open(Interface.Top, 287, 39, 0.5)
	else
		UIFuncs.Close(Interface.Top, 0.4)
	end
end

GUI.Commands = function()
	if not Tabs.Commands.Visible then
		Tabs.Commands.Visible = true
	end
	for i, v in next, Tabs.Commands:GetChildren() do
		if v:IsA("TextLabel") then
			GUI.Destroy(v)
		end
	end
	local i = 0
	for cmdName, tbl in next, Commands do
		UIFuncs.AddCommand(tbl[2][1], tbl[2][2], "Arguments: " .. tbl[3][1])
	end
end

GUI.Commands()

GUI.Tween = function(Object, Style, Direction, Duration, Goal)
	local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle[Style], Enum.EasingDirection[Direction])
	local Tween = Services.TweenService:Create(Object, TweenInfo, Goal)
	Tween:Play()
	return Tween
end

GUI.LoadCommands = function()
	for i, v in next, CommandAutoFill:GetChildren() do
		if v.Name ~= "UIListLayout" then
			UIFuncs.Destroy(v)
		end
	end
	local last = nil
	local i = 0
	for Name, Table in next, Commands do
		local BTN = CommandExample:Clone()
		BTN.Parent = CommandAutoFill
		BTN.Name = Name
		BTN.Input.Text = Table[2][1]
		i = i + 1

		local size = BTN.Size
		BTN.Size = UDim2.new(0, 0, 0, 25)
		BTN.Size = size
	end
end

GUI.SearchCommands = function()
	local str = (CommandInput.Text:gsub(";", "")):lower()
	local index = 0
	local lastFrame
	for _, v in next, CommandAutoFill:GetChildren() do
		if v:IsA("Frame") and index < 5 then
			local cmd = Commands[v.Name]
			--local name = cmd and cmd[2][1] or ""
			--v.Input.Text = str ~= "" and v.Name:find(str) == 1 and v.Name or name
			v.Visible = str == "" or v.Name:find(str)
			if v.Visible then
				index = index + 1
				local n = math.sqrt(index) * 125
				local yPos = (index - 1) * 28
				local newPos = UDim2.new(0.5, 0, 0, yPos)
				GUI.Tween(
					v,
					"Quint",
					"Out",
					0.3,
					{
						Size = UDim2.new(0.5, n, 0, 25),
						Position = lastFrame and newPos or UDim2.new(0.5, 0, 0, yPos)
					}
				)
				lastFrame = v
			end
		end
	end
end

GUI.LoadCommands()

for _, AutoFill in next, CommandAutoFill:GetChildren() do
	if AutoFill:IsA("Frame") then
		AutoFill.Visible = false
	end
end

GUI.BarSelect = function(Speed)
	CenterBar.Visible = true
	GUI.Tween(CenterBar, "Sine", "Out", Speed or 0.25, {Size = UDim2.new(0, 250, 1, 15)})
	GUI.Tween(LeftFill, "Quad", "Out", Speed or 0.3, {Position = UDim2.new(0, 0, 0.5, 0)})
	GUI.Tween(RightFill, "Quad", "Out", Speed or 0.3, {Position = UDim2.new(1, 0, 0.5, 0)})
end

GUI.BarDeselect = function(Speed)
	GUI.Tween(CenterBar, "Sine", "Out", Speed or 0.25, {Size = UDim2.new(0, 250, 0, 0)})
	GUI.Tween(LeftFill, "Sine", "In", Speed or 0.3, {Position = UDim2.new(-0.5, 100, 0.5, 0)})
	GUI.Tween(RightFill, "Sine", "In", Speed or 0.3, {Position = UDim2.new(1.5, -100, 0.5, 0)})
	for i, v in next, CommandAutoFill:GetChildren() do
		if v:IsA("Frame") then
			task.spawn(
				function()
					wait(math.random(1, 200) / 2000)
					GUI.Tween(v, "Back", "In", 0.35, {Size = UDim2.new(0, 0, 0, 25)})
				end
			)
		end
	end
end

Services.Mouse.KeyDown:Connect(
	function(k)
		if k:lower() == Settings.Prefix then
			GUI.Top("Open")
			GUI.BarSelect()
			CommandInput.Text = ""
			CommandInput:CaptureFocus()
			task.wait()
			CommandInput.Text = ""
		end
	end
)

CommandInput.FocusLost:Connect(
	function(EnterPressed)
		if EnterPressed then
			spawn(
				function()
					Library.ParseCommand(Settings.Prefix .. CommandInput.Text)
				end
			)
		end
		GUI.Top("Close")
		GUI.BarDeselect()
	end
)

CommandInput.Changed:Connect(
	function(Changed)
		if Changed ~= "Text" then
			return
		end
		GUI.SearchCommands()
	end
)

GUI.BarDeselect(0)
CommandBar.Visible = true

UIFuncs.Drag(Interface.Commands, 20)
UIFuncs.Drag(Interface.Options, 20)
UIFuncs.Drag(Interface.Logs, 20)
UIFuncs.Drag(Interface.Servers, 20)

--if table.find({Enum.Platform.IOS, Enum.Platform.Android}, Services.UserInputService:GetPlatform()) then
Button.MouseButton1Click:Connect(
	function()
		GUI.Top("Open")
		GUI.BarSelect()
		CommandInput.Text = ";"
		CommandInput:CaptureFocus()
		task.wait()
		CommandInput.Text = ""
	end
)
--end

UIFuncs.SendNotification("Nameless Admin", "Nameless Admin has loaded", 5)

if gethiddenproperty then
	if gethiddenproperty(workspace, "RejectCharacterDeletions") == Enum.RejectCharacterDeletions.Disabled then
		UIFuncs.SendNotification(
			"Nameless Admin",
			"This game has RCD off meaning you can use tool commands. Run ;cmds to see what new commands you now have",
			7
		)
	end
end

Interface.Start.Status.Filler:TweenSize(UDim2.new(1, 0, 0, 21), "Out", "Linear", 0.2, false)
UIFuncs.TypeWriter(Interface.Start.Description, "Finished!")
spawn(
	function()
		wait(0.5)
		for i, v in next, Interface.Start:GetChildren() do
			spawn(
				function()
					if v:IsA("TextLabel") then
						v:Destroy()
					elseif v:IsA("CanvasGroup") then
						v:Destroy()
					else
						if v:IsA("UIStroke") then
							v:Destroy()
						end
					end
				end
			)
		end
	end
)

wait(0.5)
UIFuncs.Close(Interface.Start, 0.4)
Interface.Start.Status.Visible = false
wait(0.4)
Interface.Start:Destroy()

UIFuncs.PopupTrigger(
	"Nameless Admin",
	"Seems like you are new here, would you like a tutorial on how to use Nameless?",
	function()
		wait(0.3)
		UIFuncs.Open(Interface.Introduction, 317, 283, 0.6)
		Interface.Introduction.Description.TextTransparency = 1
		Interface.Introduction.Title.TextTransparency = 1
		Interface.Introduction.Okay.Visible = false
		wait(0.4)
		Interface.Introduction.Description.TextTransparency = 0
		Interface.Introduction.Title.TextTransparency = 0
		Interface.Introduction.Okay.Visible = true

		Interface.Introduction.Okay.MouseButton1Click:Connect(
			function()
				UIFuncs.Close(Interface.Introduction, 0.3, 0, 0)
				Interface.Introduction.Description.TextTransparency = 1
				Interface.Introduction.Title.TextTransparency = 1
				Interface.Introduction.Okay.Visible = false
			end
		)
	end
)

if getgenv then
	getgenv().NamelessLoaded = true
	getgenv().NamelessInterfacePath = Interface
	getgenv().ShadowPath = Shadow
end

Services.Players.PlayerAdded:Connect(
	function(Player)
		repeat
			task.wait()
		until Player.Character and Player.Character:FindFirstChild("Head")
		if CommandToggles.ESP then
			PlayerFuncs.ESP(Player)
		end
	end
)
