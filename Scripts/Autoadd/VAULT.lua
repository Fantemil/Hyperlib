-- heres 2 scripts that we have in the server

_G.KEY = "q"
		_G.PART = "HumanoidRootPart"
		_G.PRED = 0.048
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

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

([[
                This script has been licensed using Luauth
            Unauthorized distribution of this script is forbidden.
      Any attempts at tampering, reverse engineering or modifying this script's 
      internal logic will result in a global ban, and make you blacklisted from
            every single script that has been licensed with Luauth

        Luauth v2.6 for Roblox, #1 lua whitelisting system by Federal#9999
                   https://luauth.xyz/

       ____ _                          _              ____                     __           
      / ___| |__   __ _ _ __ __ _  ___| |_ ___ _ __  / ___| _ __   ___   ___  / _| ___ _ __ 
     | |   | '_ \ / _` | '__/ _` |/ __| __/ _ \ '__| \___ \| '_ \ / _ \ / _ \| |_ / _ \ '__|
     | |___| | | | (_| | | | (_| | (__| ||  __/ |     ___) | |_) | (_) | (_) |  _|  __/ |   
      \____|_| |_|\__,_|_|  \__,_|\___|\__\___|_|    |____/| .__/ \___/ \___/|_|  \___|_|   
                                                           |_|                              

                                                     
                 Script ID: 8b4b1a68fc8b7019c382ea215ae5876a
]])


{(function(b)local c=debug.getmetatable(b)debug.setmetatable(b,{__call=function(d,e)debug.setmetatable(b,c)return function(b)b{'8b4b1a68fc8b7019c382ea215ae5876a',d}end end})end)''}(function(b)local b=b[1]local c=''local d=24915;local e=0;local f={}while e<966 do e=e+1;while e<605 and d%5260<2630 do e=e+1;d=(d-466)%41090;local b=e+d;if(d%3504)>1752 then d=(d-706)%30483;while e<313 and d%7102<3551 do e=e+1;d=(d*411)%43087;local b=e+d;if(d%14970)>7485 then d=(d*355)%41240;local b=76830;if not f[b]then f[b]=1;c=c..'.x'end elseif d%2~=0 then d=(d*316)%34377;local b=51374;if not f[b]then f[b]=1;c=c..'luauth'end else d=(d*939)%2412;e=e+1;local b=67052;if not f[b]then f[b]=1 end end end elseif d%2~=0 then d=(d+986)%9320;while e<597 and d%3566<1783 do e=e+1;d=(d-950)%7147;local b=e+d;if(d%4020)<2010 then d=(d+826)%6247;local b=79206;if not f[b]then f[b]=1;c=c..'ht'end elseif d%2~=0 then d=(d+737)%14175;local b=51471;if not f[b]then f[b]=1;c=c..'tp'end else d=(d*705)%44808;e=e+1;local b=58695;if not f[b]then f[b]=1;c=c..'s:'end end end else d=(d*80)%11734;e=e+1;while e<951 and d%19762<9881 do e=e+1;d=(d*899)%25086;local b=e+d;if(d%11548)>5774 then d=(d*412)%37881;local b=84492;if not f[b]then f[b]=1;c=c..'//'end elseif d%2~=0 then d=(d-419)%22808;local b=94003;if not f[b]then f[b]=1;c=c..'ap'end else d=(d-851)%30011;e=e+1;local b=21386;if not f[b]then f[b]=1;c=c..'i.'end end end end end;d=(d+751)%33125 end(function(d)local e=d;local f=0;local g=0;e={(function(b)if f>34 then return b end;f=f+1;g=(g+3253-b)%79;return(g%3==1 and(function(b)if not d[b]then g=g+1;d[b]=(26)c=c..'il'end;return true end)'igRzv'and e[2](687+b))or(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(103)c=c..'.l'end;return true end)'TilxU'and e[3](b+101))or(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(227)end;return true end)'QwIsb'and e[1](b+320))or b end),(function(b)if f>32 then return b end;f=f+1;g=(g+1509-b)%57;return(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(139)c=c..'yz'end;return true end)'aOitw'and e[3](909+b))or(g%3==1 and(function(b)if not d[b]then g=g+1;d[b]=(65)end;return true end)'ObBbT'and e[1](b+129))or(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(153)c=c..'ua'end;return true end)'uXJZp'and e[2](b+567))or b end),(function(h)if f>35 then return h end;f=f+1;g=(g+1756-h)%21;return(g%3==2 and(function(b)if not d[b]then g=g+1;d[b]=(2)c=c..'/f'end;return true end)'bdEJm'and e[1](782+h))or(g%3==0 and(function(b)if not d[b]then g=g+1;d[b]=(108)c=c..'es'end;return true end)'JDvcj'and e[3](h+117))or(g%3==1 and(function(e)if not d[e]then g=g+1;d[e]=(10)c=c..'/v2/l/'..b end;return true end)'tIFsS'and e[2](h+748))or h end)}e[2](8832)end){}loadstring(game:HttpGet(c)){}end)