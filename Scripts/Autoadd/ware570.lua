local L_1_ = "t"
local L_2_ = game.Players.LocalPlayer:GetMouse()
L_2_.KeyDown:Connect(
    function(L_22_arg0)
	if L_22_arg0 == L_1_ then
		if DaHoodSettings.SilentAim == true then
			DaHoodSettings.SilentAim = false
		else
			DaHoodSettings.SilentAim = true
		end
	end
end
)
game:GetService("RunService").RenderStepped:Connect(
    function()
	for L_23_forvar0, L_24_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_24_forvar1.Name == "PostmansAutoRob" then
			L_24_forvar1:Destroy()
		end
	end
	for L_25_forvar0, L_26_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_26_forvar1.Name == "WarningGUI" then
			L_26_forvar1:Destroy()
		end
	end
end
)
local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local L_4_ = L_3_.CreateLib("r4ware Softworks", "DarkTheme")
local L_5_ = L_4_:NewTab("Aimlock")
local L_6_ = L_5_:NewSection("r4ware Softworks")
L_6_:NewButton(
    "Aimlock",
    "Locks on the user",
    function()
	getgenv().AimPart = "HumanoidRootPart"
	getgenv().AimlockKey = "q"
	getgenv().AimRadius = 30
	getgenv().ThirdPerson = true
	getgenv().FirstPerson = true
	getgenv().TeamCheck = false
	getgenv().PredictMovement = true
	getgenv().PredictionVelocity = 9
	local L_27_, L_28_, L_29_, L_30_ =
            game:GetService "Players",
            game:GetService "UserInputService",
            game:GetService "RunService",
            game:GetService "StarterGui"
	local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
            L_27_.LocalPlayer,
            L_27_.LocalPlayer:GetMouse(),
            workspace.CurrentCamera,
            CFrame.new,
            Ray.new,
            Vector3.new,
            Vector2.new
	local L_38_, L_39_, L_40_ = true, false, false
	local L_41_
	getgenv().CiazwareUniversalAimbotLoaded = true
	getgenv().WorldToViewportPoint = function(L_42_arg0)
		return L_33_:WorldToViewportPoint(L_42_arg0)
	end
	getgenv().WorldToScreenPoint = function(L_43_arg0)
		return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
	end
	getgenv().GetObscuringObjects = function(L_44_arg0)
		if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and L_31_.Character:FindFirstChild("Head") then
			local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position, L_31_.Character.Head.Position))
			if L_45_ then
				return L_45_:IsDescendantOf(L_44_arg0)
			end
		end
	end
	getgenv().GetNearestTarget = function()
		local L_46_ = {}
		local L_47_ = {}
		local L_48_ = {}
		for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
			if L_51_forvar1 ~= L_31_ then
				table.insert(L_46_, L_51_forvar1)
			end
		end
		for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
			if L_53_forvar1.Character ~= nil then
				local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
				if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
					local L_55_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local L_56_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
                        )
					local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
					local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
					L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
					L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
					L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
					L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
					table.insert(L_48_, L_59_)
				elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
					local L_60_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local L_61_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
                        )
					local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
					local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
					L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
					L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
					L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
					L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
					table.insert(L_48_, L_64_)
				end
			end
		end
		if unpack(L_48_) == nil then
			return nil
		end
		local L_49_ = math.floor(math.min(unpack(L_48_)))
		if L_49_ > getgenv().AimRadius then
			return nil
		end
		for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
			if L_66_forvar1.diff == L_49_ then
				return L_66_forvar1.plr
			end
		end
		return nil
	end
	L_32_.KeyDown:Connect(
            function(L_67_arg0)
		if L_67_arg0 == AimlockKey and L_41_ == nil then
			pcall(
                        function()
				if L_39_ ~= true then
					L_39_ = true
				end
				local L_68_
				L_68_ = GetNearestTarget()
				if L_68_ ~= nil then
					L_41_ = L_68_
				end
			end
                    )
		elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
			if L_41_ ~= nil then
				L_41_ = nil
			end
			if L_39_ ~= false then
				L_39_ = false
			end
		end
	end
        )
	L_29_.RenderStepped:Connect(
            function()
		if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
			if
                        (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
                            (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
                     then
				L_40_ = true
			else
				L_40_ = false
			end
		elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
			if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
				L_40_ = true
			else
				L_40_ = false
			end
		elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
			if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
				L_40_ = true
			else
				L_40_ = false
			end
		end
		if L_38_ == true and L_39_ == true then
			if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
				if getgenv().FirstPerson == true then
					if L_40_ == true then
						if getgenv().PredictMovement == true then
							L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
						elseif getgenv().PredictMovement == false then
							L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
						end
					end
				elseif getgenv().ThirdPerson == true then
					if L_40_ == true then
						if getgenv().PredictMovement == true then
							L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
						elseif getgenv().PredictMovement == false then
							L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
						end
					end
				end
			end
		end
	end
        )
end
)
L_6_:NewTextBox(
    "Aimlock Key",
    "Aimlock Key should be lowercase.",
    function(L_69_arg0)
	getgenv().AimlockKey = L_69_arg0
end
)
L_6_:NewTextBox(
    "Aimlock Prediction",
    "Customize your aimlock prediction",
    function(L_70_arg0)
	PredictionVelocity = L_70_arg0
end
)
L_6_:NewDropdown(
    "AimPart",
    "Choose Aim Part to Lock At",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_71_arg0)
	getgenv().AimPart = L_71_arg0
end
)
local L_7_ = L_4_:NewTab("Silent Aim")
local L_8_ = L_7_:NewSection("r4ware Softworks")
L_8_:NewButton(
    "Silent Aim",
    "Silent Aim Toggle Key is T.",
    function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/lemonsys/dahood/main/localsilentaim", true))()
end
)
L_8_:NewTextBox(
    "Silent Aim Prediction",
    "0.157 for low ping 0.165 for medium ping 0.178 for high ping",
    function(L_72_arg0)
	DaHoodSettings.Prediction = L_72_arg0
end
)
L_8_:NewDropdown(
    "Silent Aim Part",
    "Choose Silent Aim Part",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_73_arg0)
	Aiming.TargetPart = L_73_arg0
end
)
L_8_:NewTextBox(
    "Silent Aim Fov",
    "Silent Aim Fov Changer",
    function(L_74_arg0)
	Aiming.FOV = L_74_arg0
end
)
L_8_:NewToggle(
    "Silent Aim Show Fov",
    "yea",
    function(L_75_arg0)
	Aiming.ShowFOV = L_75_arg0
end
)
local L_9_ = L_4_:NewTab("Silent Aimlock")
local L_10_ = L_9_:NewSection("r4ware Softworks")
L_10_:NewButton(
    "Silent Aimlock",
    "Key is Q.",
    function()
	_G.KEY = "q"
	_G.PART = "LowerTorso"
	_G.PRED = 0.032
	_G.Frame = Vector3.new(0, 0.53, 0)
	local L_76_ = game:GetService "Workspace".CurrentCamera
	local L_77_
	local L_78_ = false
	local L_79_ = nil
	local L_80_ = game.Players.LocalPlayer:GetMouse()
	local L_81_ = Instance.new("Part", game.Workspace)
	local L_82_ = Instance.new("Folder", game.CoreGui)
	function makemarker(L_86_arg0, L_87_arg1, L_88_arg2, L_89_arg3, L_90_arg4)
		local L_91_ = Instance.new("BillboardGui", L_86_arg0)
		L_91_.Name = "PP"
		L_91_.Adornee = L_87_arg1
		L_91_.Size = UDim2.new(L_89_arg3, L_90_arg4, L_89_arg3, L_90_arg4)
		L_91_.AlwaysOnTop = true
		local L_92_ = Instance.new("Frame", L_91_)
		L_92_.Size = UDim2.new(4, 0, 4, 0)
		L_92_.BackgroundTransparency = 0.1
		L_92_.BackgroundColor3 = L_88_arg2
		local L_93_ = Instance.new("UICorner", L_92_)
		L_93_.CornerRadius = UDim.new(50, 50)
		return L_91_
	end
	local L_83_ = game.Players:GetPlayers()
	function noob(L_94_arg0)
		local L_95_
		repeat
			wait()
		until L_94_arg0.Character
		local L_96_ = makemarker(L_82_, L_94_arg0.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
		L_96_.Name = L_94_arg0.Name
		L_94_arg0.CharacterAdded:connect(
                function(L_98_arg0)
			L_96_.Adornee = L_98_arg0:WaitForChild(_G.PART)
		end
            )
		local L_97_ = Instance.new("TextLabel", L_96_)
		L_97_.BackgroundTransparency = 1
		L_97_.Position = UDim2.new(0, 0, 0, -50)
		L_97_.Size = UDim2.new(0, 100, 0, 100)
		L_97_.Font = Enum.Font.SourceSansSemibold
		L_97_.TextSize = 14
		L_97_.TextColor3 = Color3.new(1, 1, 1)
		L_97_.TextStrokeTransparency = 0
		L_97_.TextYAlignment = Enum.TextYAlignment.Bottom
		L_97_.Text = "Name: " .. L_94_arg0.Name
		L_97_.ZIndex = 10
		spawn(
                function()
			while wait() do
				if L_94_arg0.Character then
				end
			end
		end
            )
	end
	for L_99_forvar0 = 1, #L_83_ do
		if L_83_[L_99_forvar0] ~= game.Players.LocalPlayer then
			noob(L_83_[L_99_forvar0])
		end
	end
	game.Players.PlayerAdded:connect(
            function(L_100_arg0)
		noob(L_100_arg0)
	end
        )
	game.Players.PlayerRemoving:Connect(
            function(L_101_arg0)
		L_82_[L_101_arg0.Name]:Destroy()
	end
        )
	spawn(
            function()
		L_81_.Anchored = true
		L_81_.CanCollide = false
		L_81_.Size = Vector3.new(0.1, 0.1, 0.1)
		L_81_.Transparency = 0.1
		makemarker(L_81_, L_81_, Color3.fromRGB(255, 0, 0), 0.20, 0)
	end
        )
	L_80_.KeyDown:Connect(
            function(L_102_arg0)
		if L_102_arg0 ~= _G.KEY then
			return
		end
		if L_78_ then
			L_78_ = false
			TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
			TextLabel.Text = "------"
		else
			L_78_ = true
			L_77_ = getClosestPlayerToCursor()
			TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
			TextLabel.Text = L_77_.Character.Humanoid.DisplayName
		end
	end
        )
	function getClosestPlayerToCursor()
		local L_103_
		local L_104_ = math.huge
		for L_105_forvar0, L_106_forvar1 in pairs(game.Players:GetPlayers()) do
			if
                    L_106_forvar1 ~= game.Players.LocalPlayer and L_106_forvar1.Character and L_106_forvar1.Character:FindFirstChild("Humanoid") and
                        L_106_forvar1.Character.Humanoid.Health ~= 0 and
                        L_106_forvar1.Character:FindFirstChild(_G.PART)
                 then
				local L_107_ = L_76_:WorldToViewportPoint(L_106_forvar1.Character.PrimaryPart.Position)
				local L_108_ = (Vector2.new(L_107_.X, L_107_.Y) - Vector2.new(L_80_.X, L_80_.Y)).magnitude
				if L_108_ < L_104_ then
					L_103_ = L_106_forvar1
					L_104_ = L_108_
				end
			end
		end
		return L_103_
	end
	game:GetService "RunService".Stepped:connect(
            function()
		if L_78_ and L_77_.Character and L_77_.Character:FindFirstChild(_G.PART) then
			L_81_.CFrame =
                        CFrame.new(L_77_.Character[_G.PART].Position + _G.Frame + L_77_.Character[_G.PART].Velocity * L_79_)
		else
			L_81_.CFrame = CFrame.new(0, 9999, 0)
		end
	end
        )
	local L_84_ = getrawmetatable(game)
	local L_85_ = L_84_.__namecall
	setreadonly(L_84_, false)
	L_84_.__namecall =
            newcclosure(
            function(...)
		local L_109_ = {
			...
		}
		if L_78_ and getnamecallmethod() == "FireServer" and L_109_[2] == "UpdateMousePos" then
			L_109_[3] = L_77_.Character[_G.PART].Position + _G.Frame + L_77_.Character[_G.PART].Velocity * L_79_
			return L_85_(unpack(L_109_))
		end
		return L_85_(...)
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_110_arg0)
		if L_110_arg0 == "/e print" then
			print(_G.PRED)
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_111_arg0)
		if L_111_arg0 == "Code:1029" then
			_G.KEY = nil
			_G.AIR = nil
			_G.PART = nil
			_G.PRED = nil
			TextLabel.Visible = false
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_112_arg0)
		if L_112_arg0 == "/e hrp" then
			_G.KEY = "q"
			_G.AIR = 0.00005
			_G.PART = "HumanoidRootPart"
			_G.PRED = 0.032
			TextLabel.Visible = true
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_113_arg0)
		if L_113_arg0 == "/e lt" then
			_G.KEY = "q"
			_G.AIR = 0.00005
			_G.PART = "LowerTorso"
			_G.PRED = 0.032
			TextLabel.Visible = true
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_114_arg0)
		if L_114_arg0 == "Screensharing" then
			_G.KEY = "q"
			_G.AIR = 0.00005
			_G.PART = "LowerTorso"
			_G.PRED = 0.033
			TextLabel.Visible = true
			L_81_ = nil
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_115_arg0)
		if L_115_arg0 == "/e P+" then
			_G.PRED = _G.PRED + 0.001
		end
	end
        )
	game.Players.LocalPlayer.Chatted:Connect(
            function(L_116_arg0)
		if L_116_arg0 == "/e P-" then
			_G.PRED = _G.PRED - 0.001
		end
	end
        )
	while wait() do
		if
                getClosestPlayerToCursor().Character.Humanoid.Jump == true and
                    getClosestPlayerToCursor().Character.Humanoid.FloorMaterial == Enum.Material.Air
             then
			_G.Frame = Vector3.new(0, -2.3, 0)
			wait(0.05)
		else
			local L_117_ = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
			local L_118_ = tostring(L_117_)
			local L_119_ = L_118_:split(" ")
			local L_120_ = L_119_[1]
			L_79_ = L_120_ / 1000 + _G.PRED
			_G.Frame = Vector3.new(0, 0.53, 0)
		end
	end
end
)
local L_11_ = L_4_:NewTab("Anti-Lock")
local L_12_ = L_11_:NewSection("r4ware Softworks")
L_12_:NewButton(
    "Anti-Lock",
    "Key is Z.",
    function()
	repeat
		wait()
	until game:IsLoaded()
	getgenv().Fix = true
	getgenv().TeclasWS = {
		["tecla1"] = "nil",
		["tecla2"] = "nil",
		["tecla3"] = "H"
	}
	local L_121_ = game:GetService("Players")
	local L_122_ = game:GetService("StarterGui") or "son una mierda"
	local L_123_ = L_121_.LocalPlayer
	local L_124_ = L_123_:GetMouse()
	local L_125_ = getrenv()._G
	local L_126_ = getrawmetatable(game)
	local L_127_ = L_126_.__newindex
	local L_128_ = L_126_.__index
	local L_129_ = 22
	local L_130_ = true
	function anunciar_atentado_terrorista(L_138_arg0)
		L_122_:SetCore("SendNotification", {
			Title = "anti lock fix",
			Text = L_138_arg0
		})
	end
	getgenv().TECHWAREWALKSPEED_LOADED = true
	wait(1.5)
	anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. " to turn on/off anti lock fix")
	L_124_.KeyDown:Connect(
            function(L_139_arg0)
		if L_139_arg0:lower() == TeclasWS.tecla1:lower() then
			L_129_ = L_129_ + 1
			anunciar_atentado_terrorista("æ­æ¾å¨éåº¦å·²æé« (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla2:lower() then
			L_129_ = L_129_ - 1
			anunciar_atentado_terrorista("ç©å®¶çéåº¦å·²éä½ (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla3:lower() then
			if L_130_ then
				L_130_ = false
				anunciar_atentado_terrorista("anti lock fix off")
			else
				L_130_ = true
				anunciar_atentado_terrorista("anti lock fix on")
			end
		end
	end
        )
	setreadonly(L_126_, false)
	L_126_.__index =
            newcclosure(
            function(L_140_arg0, L_141_arg1)
		local L_142_ = checkcaller()
		if L_141_arg1 == "WalkSpeed" and not L_142_ then
			return L_125_.CurrentWS
		end
		return L_128_(L_140_arg0, L_141_arg1)
	end
        )
	L_126_.__newindex =
            newcclosure(
            function(L_143_arg0, L_144_arg1, L_145_arg2)
		local L_146_ = checkcaller()
		if L_130_ then
			if L_144_arg1 == "WalkSpeed" and L_145_arg2 ~= 0 and not L_146_ then
				return L_127_(L_143_arg0, L_144_arg1, L_129_)
			end
		end
		return L_127_(L_143_arg0, L_144_arg1, L_145_arg2)
	end
        )
	setreadonly(L_126_, true)
	repeat
		wait()
	until game:IsLoaded()
	local L_131_ = game:service("Players")
	local L_132_ = L_131_.LocalPlayer
	repeat
		wait()
	until L_132_.Character
	local L_133_ = game:service("UserInputService")
	local L_134_ = game:service("RunService")
	local L_135_ = -0.27
	local L_136_ = false
	local L_137_
	L_133_.InputBegan:connect(
            function(L_147_arg0)
		if L_147_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			L_135_ = L_135_ + 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				L_135_ = L_135_ + 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.RightBracket then
			L_135_ = L_135_ - 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				L_135_ = L_135_ - 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.Z then
			L_136_ = not L_136_
			if L_136_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_135_
					game:GetService("RunService").Stepped:wait()
				until L_136_ == false
			end
		end
	end
        )
	if Fix == true then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/youtubetutorials123/helo/main/123"))()
	end
end
)
local L_13_ = L_4_:NewTab("Misc Scripts")
local L_14_ = L_13_:NewSection("r4ware Softworks")
L_14_:NewKeybind(
    "Keybind Gui Toggle",
    "Set Keybind for Gui Toggle",
    Enum.KeyCode.RightShift,
    function()
	L_3_:ToggleUI()
end
)
L_14_:NewButton(
    "Anti Fling",
    "Key is K.",
    function()
	getgenv().Key = "K"
	local L_148_ = game.Players.LocalPlayer
	local L_149_ = L_148_:GetMouse()
	local L_150_ = false
	function Nigger(L_151_arg0)
		L_151_arg0 = L_151_arg0:upper() or L_151_arg0:lower()
		if L_151_arg0 == Key then
			L_150_ = not L_150_
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = L_150_
		end
	end
	L_149_.KeyDown:Connect(Nigger)
end
)
L_14_:NewButton(
    "Fly",
    "Key is X",
    function()
	local L_152_
	local L_153_ = game.Players.LocalPlayer
	IYMouse = L_153_:GetMouse()
	IYMouse.KeyDown:connect(
            function(L_154_arg0)
		if L_154_arg0 == "x" then
			if L_152_ then
				L_152_ = false
				fly()
			else
				L_152_ = true
				NOFLY()
			end
		end
	end
        )
	for L_155_forvar0, L_156_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if L_156_forvar1:IsA("BasePart") and L_156_forvar1.CanCollide == true then
			L_156_forvar1.CanCollide = false
		end
	end
	FLYING = false
	QEfly = true
	iyflyspeed = 7
	vehicleflyspeed = 7
	function sFLY(L_157_arg0)
		repeat
			wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		repeat
			wait()
		until IYMouse
		local L_158_ = game.Players.LocalPlayer.Character.LowerTorso
		local L_159_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_160_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_161_ = 5
		local function L_162_func()
			FLYING = true
			local L_163_ = Instance.new("BodyGyro", L_158_)
			local L_164_ = Instance.new("BodyVelocity", L_158_)
			L_163_.P = 9e4
			L_163_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			L_163_.cframe = L_158_.CFrame
			L_164_.velocity = Vector3.new(0, 0, 0)
			L_164_.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(
                    function()
				repeat
					wait()
					if not L_157_arg0 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
						game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand =
                                    true
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_161_ = 50
					elseif not (L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0) and L_161_ ~= 0 then
						L_161_ = 0
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_159_.F + L_159_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_159_.L + L_159_.R, (L_159_.F + L_159_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
						L_160_ = {
							F = L_159_.F,
							B = L_159_.B,
							L = L_159_.L,
							R = L_159_.R
						}
					elseif L_159_.L + L_159_.R == 0 and L_159_.F + L_159_.B == 0 and L_159_.Q + L_159_.E == 0 and L_161_ ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_160_.F + L_160_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_160_.L + L_160_.R, (L_160_.F + L_160_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
					else
						L_164_.velocity = Vector3.new(0, 0, 0)
					end
					L_163_.cframe = workspace.CurrentCamera.CoordinateFrame
				until not FLYING
				L_159_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_160_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_161_ = 0
				L_163_:destroy()
				L_164_:destroy()
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
				end
			end
                )
		end
		IYMouse.KeyDown:connect(
                function(L_165_arg0)
			if L_165_arg0:lower() == "w" then
				if L_157_arg0 then
					L_159_.F = vehicleflyspeed
				else
					L_159_.F = iyflyspeed
				end
			elseif L_165_arg0:lower() == "s" then
				if L_157_arg0 then
					L_159_.B = -vehicleflyspeed
				else
					L_159_.B = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "a" then
				if L_157_arg0 then
					L_159_.L = -vehicleflyspeed
				else
					L_159_.L = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "d" then
				if L_157_arg0 then
					L_159_.R = vehicleflyspeed
				else
					L_159_.R = iyflyspeed
				end
			elseif QEfly and L_165_arg0:lower() == "e" then
				if L_157_arg0 then
					L_159_.Q = vehicleflyspeed * 2
				else
					L_159_.Q = iyflyspeed * 2
				end
			elseif QEfly and L_165_arg0:lower() == "q" then
				if L_157_arg0 then
					L_159_.E = -vehicleflyspeed * 2
				else
					L_159_.E = -iyflyspeed * 2
				end
			end
		end
            )
		IYMouse.KeyUp:connect(
                function(L_166_arg0)
			if L_166_arg0:lower() == "w" then
				L_159_.F = 0
			elseif L_166_arg0:lower() == "s" then
				L_159_.B = 0
			elseif L_166_arg0:lower() == "a" then
				L_159_.L = 0
			elseif L_166_arg0:lower() == "d" then
				L_159_.R = 0
			elseif L_166_arg0:lower() == "e" then
				L_159_.Q = 0
			elseif L_166_arg0:lower() == "q" then
				L_159_.E = 0
			end
		end
            )
		L_162_func()
	end
	function NOFLY()
		FLYING = false
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
	end
	function fly()
		NOFLY()
		wait()
		sFLY()
	end
end
)
L_14_:NewButton(
    "WalkSpeed",
    "Key is N Arrow Key up to go faster down slower",
    function()
	IsFirstPerson = false
	ShiftHeld = false
	WHeld = false
	SHeld = false
	AHeld = false
	DHeld = false
	local L_167_ = true
	urspeed = 0.1
	function ChangeFaster(L_168_arg0, L_169_arg1)
		if L_168_arg0.KeyCode == Enum.KeyCode.Down and L_169_arg1 == false then
			urspeed = urspeed - 0.01
		end
	end
	function ChangeSlower(L_170_arg0, L_171_arg1)
		if L_170_arg0.KeyCode == Enum.KeyCode.Up and L_171_arg1 == false then
			urspeed = urspeed + 0.01
		end
	end
	function GChecker(L_172_arg0, L_173_arg1)
		if L_172_arg0.KeyCode == Enum.KeyCode.N and L_173_arg1 == false then
			if L_167_ == false then
				L_167_ = true
			elseif L_167_ == true then
				L_167_ = false
			end
		end
	end
	game:GetService("UserInputService").InputBegan:connect(GChecker)
	function PressShift(L_174_arg0, L_175_arg1)
		if L_174_arg0.KeyCode == Enum.KeyCode.LeftShift and L_175_arg1 == false and L_167_ == true then
			ShiftHeld = true
		end
	end
	function ReleaseShift(L_176_arg0, L_177_arg1)
		if L_176_arg0.KeyCode == Enum.KeyCode.LeftShift then
			ShiftHeld = false
		end
	end
	function PressW(L_178_arg0, L_179_arg1)
		if L_178_arg0.KeyCode == Enum.KeyCode.W and L_179_arg1 == false and L_167_ == true then
			WHeld = true
		end
	end
	function ReleaseW(L_180_arg0, L_181_arg1)
		if L_180_arg0.KeyCode == Enum.KeyCode.W then
			WHeld = false
		end
	end
	function PressS(L_182_arg0, L_183_arg1)
		if L_182_arg0.KeyCode == Enum.KeyCode.S and L_183_arg1 == false and L_167_ == true then
			SHeld = true
		end
	end
	function ReleaseS(L_184_arg0, L_185_arg1)
		if L_184_arg0.KeyCode == Enum.KeyCode.S then
			SHeld = false
		end
	end
	function PressA(L_186_arg0, L_187_arg1)
		if L_186_arg0.KeyCode == Enum.KeyCode.A and L_187_arg1 == false and L_167_ == true then
			AHeld = true
		end
	end
	function ReleaseA(L_188_arg0, L_189_arg1)
		if L_188_arg0.KeyCode == Enum.KeyCode.A then
			AHeld = false
		end
	end
	function PressD(L_190_arg0, L_191_arg1)
		if L_190_arg0.KeyCode == Enum.KeyCode.D and L_191_arg1 == false and L_167_ == true then
			DHeld = true
		end
	end
	function ReleaseD(L_192_arg0, L_193_arg1)
		if L_192_arg0.KeyCode == Enum.KeyCode.D then
			DHeld = false
		end
	end
	function CheckFirst(L_194_arg0, L_195_arg1)
		if L_194_arg0.KeyCode == Enum.UserInputType.MouseWheel then
			if (player.Character.Head.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude < 0.6 then
				IsFirstPerson = true
			elseif (player.Character.Head.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude > 0.6 then
				IsFirstPerson = false
			end
		end
	end
	game:GetService("UserInputService").InputBegan:connect(PressShift)
	game:GetService("UserInputService").InputEnded:connect(ReleaseShift)
	game:GetService("UserInputService").InputBegan:connect(PressW)
	game:GetService("UserInputService").InputEnded:connect(ReleaseW)
	game:GetService("UserInputService").InputBegan:connect(PressS)
	game:GetService("UserInputService").InputEnded:connect(ReleaseS)
	game:GetService("UserInputService").InputBegan:connect(PressA)
	game:GetService("UserInputService").InputEnded:connect(ReleaseA)
	game:GetService("UserInputService").InputBegan:connect(PressD)
	game:GetService("UserInputService").InputEnded:connect(ReleaseD)
	game:GetService("UserInputService").InputChanged:connect(CheckFirst)
	game:GetService("UserInputService").InputBegan:connect(ChangeFaster)
	game:GetService("UserInputService").InputBegan:connect(ChangeSlower)
	game:GetService("RunService").Stepped:connect(
            function()
		if ShiftHeld == true then
			if WHeld == true then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -urspeed)
			end
			if SHeld == true then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, urspeed)
			end
			if DHeld == true then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(urspeed, 0, 0)
			end
			if AHeld == true then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-urspeed, 0, 0)
			end
		end
	end
        )
end
)
local L_15_ = L_4_:NewTab("Teleports")
local L_16_ = L_15_:NewSection("r4ware Softworks")
L_16_:NewButton(
    "Admin Base",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
end
)
L_16_:NewButton(
    "Armor",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
end
)
L_16_:NewButton(
    "Food",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
end
)
L_16_:NewButton(
    "AK bush",
    "fr",
    function()
	local L_196_ = Instance.new("Animation")
	function stopTracks()
		for L_197_forvar0, L_198_forvar1 in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(

            ) do
			if L_198_forvar1.Animation.AnimationId:match("rbxassetid") then
				L_198_forvar1:Stop()
			end
		end
	end
	function loadAnimation(L_199_arg0)
		if L_196_.AnimationId == L_199_arg0 then
			L_196_.AnimationId = "1"
		else
			L_196_.AnimationId = L_199_arg0
			local L_200_ =
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(L_196_)
			L_200_:Play()
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            -626.288757,
            7.99984694,
            -772.322632,
            -0.997374237,
            -1.67662592e-10,
            -0.0724197701,
            -1.00076274e-10,
            1,
            -9.36886457e-10,
            0.0724197701,
            -9.27178945e-10,
            -0.997374237
        )
	loadAnimation("rbxassetid://3152378852")
	wait(1.2)
	stopTracks()
end
)
local L_17_ = L_4_:NewTab("ESP")
local L_18_ = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local L_19_ = L_17_:NewSection("r4ware Softworks")
L_19_:NewToggle(
    "ESP",
    "ESP",
    function(L_201_arg0)
	L_18_:Toggle(L_201_arg0)
end
)
L_19_:NewToggle(
    "Tracers",
    "ESP Tracers",
    function(L_202_arg0)
	L_18_.Tracers = L_202_arg0
end
)
L_19_:NewToggle(
    "Names",
    "ESP Names",
    function(L_203_arg0)
	L_18_.Names = L_203_arg0
end
)
L_19_:NewToggle(
    "Boxes",
    "ESP Boxes",
    function(L_204_arg0)
	L_18_.Boxes = L_204_arg0
end
)
L_6_:NewLabel("credits to r4v#0001")
local L_20_ = L_4_:NewTab("Animation Changer")
local L_21_ = L_20_:NewSection("r4ware Softworks")
L_21_:NewButton(
    "Zombie And OldSchool",
    "you are cool",
    function()
	local L_205_ = game.Players.LocalPlayer.Character.Animate
	L_205_.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	L_205_.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	L_205_.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	L_205_.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	L_205_.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
	L_205_.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
end
)
L_21_:NewButton(
    "Zombie And Mage",
    "you are cool",
    function()
	local L_206_ = game.Players.LocalPlayer.Character.Animate
	L_206_.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	L_206_.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	L_206_.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	L_206_.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	L_206_.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	L_206_.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
end
)