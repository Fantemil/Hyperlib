_G.KEY = "q"
		_G.PART = "HumanoidRootPart"
		_G.PRED = 0.057
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
			L_97_.Text = "Bling" .. L_94_arg0.Name
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
				makemarker(L_81_, L_81_, Color3.fromRGB(0, 180, 0), 0.20, 0)
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