-- ECLIPSE HUB ON TOP!

local o = tick()
local j = game:GetService("CoreGui")
local Z = game:GetService("TweenService")
local t = game:GetService("UserInputService")
local K = game:GetService("VirtualInputManager")
local U = game:GetService("UserService")
local r = game:GetService("TextService")
local G = game:GetService("RunService")
local T = game:GetService("StarterGui")
local J = game:GetService("HttpService")
local A = game:GetService("ReplicatedStorage")
local q = game:GetService("ScriptContext")
local S = game:GetService("VirtualUser")
local C = game:GetService("Lighting")
local L = game:GetService("ContextActionService")
local O = game:GetService("Players")
local v = game:GetService("Stats")
local D = O.LocalPlayer
local e = D:GetMouse()
local E = request or http_request or http and http.request or syn and syn.request
local Q = getsynasset or getcustomasset
local s = setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set
local R = getrenv
local N = {}
local x = {}
local M = {}
local f = {}
local a = {
	Tracer = {};
	Box = {};
	ESP = {}
}
local z = {
	Event = nil,
	Function = nil
}
local g
local c
local F
local d
local H
local y
local i
local b
local l
local k
local function n(o)
	o = o or math.random(1, 10)
	local Y = {}
	for o = 1, o, 1 do
		Y[o] = string.char(math.random(32, 126))
	end
	return table.concat(Y)
end
local function w(o)
	return (E({
		Url = o;
		Method = "GET"
	})).Body
end
local function P(o, Y)
	return '{"code":"201","owned":true}' --CRACKED LOOLLL
end
local function p(o)
	if not o or o == "" then
		return
	end
	for Y, j in pairs(O:GetPlayers()) do
		if (string.lower(j.Name)):match(string.lower(o)) or (string.lower(j.DisplayName)):match(string.lower(o)) then
			return j
		end
	end
end
local function V(o)
	if not o or o == "" then
		return
	end
	for Y, j in pairs(O:GetPlayers()) do
		if j.Name == o then
			return j
		end
	end
end
local function h(o)
	if o and o.Character then
		return o.Character.FindFirstChild(o.Character, "PrimaryPart") or o.Character.FindFirstChild(o.Character, "HumanoidRootPart")
	end
end
local function m(o, Y, j)
	local Z = o and (o.Character and h(o))
	if Z then
		Z[Y] = j
		o.Character.PrimaryPart.CFrame = j
	end
end
local function W(o)
	o = o:gsub("<br%s*/>", "\n")
	return o:gsub("<[^<>]->", "")
end
local function B(o, Y)
	(coroutine.wrap(k.prompt))("Symphony Hub Says:", o, Y or 5)
end
local function X(o, Y, j)
	T:SetCore("SendNotification", {
		Title = "Symphony Hub Says:";
		Text = o or "Noob",
		Duration = Y or 5;
		Icon = j or nil
	})
end
local function u(o, Y)
	T:SetCore("ChatMakeSystemMessage", {
		Text = "[SH]: " .. o or "Hi noob!",
		Color = Color3.fromRGB(255, 255, 255),
		RichText = true
	})
end
local function I(o, Y)
	local j = Instance.new("ImageLabel")
	local t = Instance.new("ImageLabel")
	local K = Instance.new("ImageLabel")
	local U = Instance.new("TextLabel")
	local G = Instance.new("TextLabel")
	local T = W(o)
	o = tostring(o) or "Hello World!"
	Y = tonumber(Y) or 5
	j.Name = "Notification"
	j.Parent = d
	j.BackgroundTransparency = 1
	j.Size = UDim2.new(0, 0, 0, 60)
	j.Image = "rbxassetid://\053\048\050\056\056\053\055\052\055\050"
	j.ImageColor3 = Color3.fromRGB(24, 24, 24)
	j.ScaleType = Enum.ScaleType.Slice
	j.SliceCenter = Rect.new(4, 4, 296, 296)
	j.ZIndex = 3
	j.Position = UDim2.new(0, 10, 1, - (j.AbsoluteSize.Y + 10))
	j.ClipsDescendants = true
	t.Name = "Flash"
	t.Parent = j
	t.Size = UDim2.new(1, 0, 1, 0)
	t.BackgroundTransparency = 1
	t.Image = "rbxassetid://\052\054\052\049\049\052\057\053\053\052"
	t.ImageColor3 = Color3.fromRGB(255, 255, 255)
	t.ZIndex = 5
	K.Name = "Glow"
	K.Parent = j
	K.BackgroundTransparency = 1
	K.Position = UDim2.new(0, -15, 0, -15)
	K.Size = UDim2.new(1, 30, 1, 30)
	K.ZIndex = 2
	K.Image = "rbxassetid://\053\048\050\056\056\053\055\048\056\052"
	K.ImageColor3 = Color3.fromRGB(0, 0, 0)
	K.ScaleType = Enum.ScaleType.Slice
	K.SliceCenter = Rect.new(24, 24, 276, 276)
	U.Name = "Title"
	U.Parent = j
	U.BackgroundTransparency = 1
	U.Position = UDim2.new(0, 10, 0, 8)
	U.Size = UDim2.new(1, -40, 0, 16)
	U.ZIndex = 4
	U.Font = Enum.Font.GothamSemibold
	U.Text = "Symphony Hub Says:"
	U.TextColor3 = Color3.fromRGB(255, 255, 255)
	U.TextSize = 14
	U.TextXAlignment = Enum.TextXAlignment.Left
	G.Name = "Text"
	G.Parent = j
	G.BackgroundTransparency = 1
	G.Position = UDim2.new(0, 10, 1, -24)
	G.Size = UDim2.new(1, -40, 0, 16)
	G.ZIndex = 4
	G.Font = Enum.Font.Gotham
	G.Text = o
	G.TextColor3 = Color3.fromRGB(255, 255, 255)
	G.TextSize = 12
	G.RichText = true
	G.TextXAlignment = Enum.TextXAlignment.Left;
	(Z:Create(j, TweenInfo.new(.2), {
		Size = UDim2.new(0, (r:GetTextSize(T, 12, Enum.Font.Gotham, Vector2.new(math.huge, 16))).X + 60, 0, 60)
	})):Play()
	task.wait(.2)
	j.ClipsDescendants = false;
	(Z:Create(t, TweenInfo.new(.2), {
		Size = UDim2.new(0, 0, 0, 60),
		Position = UDim2.new(1, 0, 0, 0)
	})):Play()
	task.wait(Y)
	j.ClipsDescendants = true;
	(Z:Create(t, TweenInfo.new(.2), {
		Size = UDim2.new(1, 0, 1, 0)
	})):Play()
	task.wait(.2);
	(Z:Create(j, TweenInfo.new(.2), {
		Size = UDim2.new(0, 0, 0, 60),
		Position = j.Position + UDim2.new(0, (r:GetTextSize(T, 12, Enum.Font.Gotham, Vector2.new(math.huge, 16))).X + 70, 0, 0)
	})):Play()
	task.wait(.2)
	j:Destroy()
end
local function oK(o, Y)
	local j = {
		"k",
		"M";
		"B",
		"T";
		"Qa",
		"Qn";
		"Sx";
		"Sp",
		"Oc";
		"N"
	}
	return math.floor((o < 1 and o or math.floor(o) / 10 ^ (math.log10(o) - math.log10(o) % 3)) * 10 ^ (Y or 3)) / 10 ^ (Y or 3) .. (j[math.floor(math.log10(o) / 3)] or "")
end
local function YK(o)
	return string.gsub(o, ".", function(o)
		return string.format("%\048\050x", string.byte(o))
	end)
end
local function jK(o)
	return string.gsub(o, "%x%x", function(o)
		return string.char(tonumber(o, 16))
	end)
end
local function ZK(o)
	local Y = YK(o)
	local j = ""
	for o = 1, string.len(Y), 1 do
		j = j .. string.char(string.byte(Y, o) + 50)
	end
	return j
end
local function tK(o)
	local Y = ""
	for j = 1, string.len(o), 1 do
		Y = Y .. string.char(string.byte(o, j) - 50)
	end
	return jK(Y)
end
function x.MakeTask(Z, o, Y, j)
	if M and not M[o] then
		M[o] = Y:Connect(j)
	end
end
function x.RemoveTask(Y, o)
	if M and M[o] then
		M[o]:Disconnect()
		M[o] = nil
	end
end
function x.SetValue(j, o, Y)
	if f then
		f[o] = Y
	end
end
function x.SetNil(Y, o)
	if f then
		f[o] = nil
	end
end
function x.GetValue(Y, o)
	if f then
		return f[o]
	end
end
local function KK(o)
	if o then
		N.Noclip = true
		x:MakeTask("Noclipping", G.RenderStepped, function()
			if D.Character and N.Noclip then
				pcall(function()
					for o, Y in pairs(D.Character:GetChildren()) do
						if Y:IsA("BasePart") and (Y.Name ~= "Safe Void Path" and (Y.Name ~= "Safe Void Path \050" and (Y.CanCollide and N.Noclip))) then
							Y.CanCollide = false
						end
					end
				end)
			end
		end)
	else
		N.Noclip = false
		x:RemoveTask("Noclipping")
	end
end
local function UK(o, Y)
	L:BindAction(o, function(o, j, Z)
		if j == Enum.UserInputState.Begin then
			Y.Callback()
		end
	end, true, "nil", Enum.KeyCode.ButtonR1)
	L:SetTitle(o, Y.OriginalName)
	L:SetPosition(o, Y.Position)
end
local function rK(o)
	L:UnbindAction(o)
end
local function GK(...)
	local o = {
		...
	}
	if getrawmetatable then
		local Y = getrawmetatable(o[1])
		local j = Y[o[2]]
		setreadonly(Y, false)
		Y[o[2]] = o[3]
		return j
	elseif hookmetamethod then
		return hookmetamethod(...)
	end
end
local TK = (loadstring(tK(w("https://raw.githubusercontent.com/ItsJiDy/shwebsocket/main/UI_Library.shf"))))()
local function JK()
	local o = TK:CreateTab("Settings", "rbxassetid://\049\051\054\054\057\054\052\052\048\056\052")
	o:CreateLabel("\194\169 Symphony Hub \050\048\050\050")
	o:CreateLabel("Discord: Elf and Tears (@elfandtears_ndk)")
	o:CreateLabel("YouTube: Elf and Tears (@elfandtears)")
	o:CreateParagraph("Terms of Service", "Welcome to <font color=\"rgb(\048, \050\053\053, \048)\">Symphony Hub</font>, These are the terms that you already agreed by just executing the script:\n\n<font size=\"\050\048\">What we logs</font>\n[+] We logs your Executor Name, Hardware Identifier, Roblox Place Id, Roblox User Id, Roblox Username, Symphony Hub Premium, and etc. <font color=\"rgb(\050\053\053, \048, \048)\">(We do not logs any private impormation such as IP Address, Roblox Password, and etc.)</font>\n\n<font size=\"\050\048\">Script</font>\n[+] Any attempts of bypass, crack, tamper, deobfuscate, or anything that related about <font color=\"rgb(\048, \050\053\053, \048)\">Symphony Hub</font> will be punished.\n[+] Your data that had been stored in our API will change at any time without you noticing.\n[+] <font color=\"rgb(\048, \050\053\053, \048)\">Symphony Hub</font> is secured from Remote Spy nor any Spy scripts.\n\n<font size=\"\049\052\">Last updated since May \050\055, \050\048\050\052</font>")
	o:CreateButton("Copy Discord Invite", function()
		local o = w("https://raw.githubusercontent.com/ItsJiDy/SymphonyHub/main/dcinv.txt")
		if o then
			s(o)
			B("Copied to clipboard.")
		end
	end)
	o:CreateButton("Copy Official Website", function()
		s("https://symphonyhub.odoo.com/")
		B("Copied to clipboard.")
	end)
	o:CreateSection("Script")
	o:CreateLabel("Your Executor: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (identifyexecutor() .. "</font>"))
	o:CreateButton("Reset Configs", function()
		if isfolder("SymphonyHub") and isfolder("SymphonyHub/Configs") then
			local o = listfiles("SymphonyHub/Configs")
			local Y = deletefile and (type(deletefile) == "function" and deletefile) or delfile and (type(delfile) == "function" and delfile)
			if Y then
				for j = 1, # o, 1 do
					local Z = string.len(o[j])
					if string.sub(o[j], Z - 3, Z) == ".shf" then
						Y(o[j]:gsub("\092", "/"))
					end
				end
			end
		end
	end)
	o:CreateButton("Clear Logs", function()
		if isfolder("SymphonyHub") and isfolder("SymphonyHub/Logs") then
			local o = listfiles("SymphonyHub/Logs")
			local Y = deletefile and (type(deletefile) == "function" and deletefile) or delfile and (type(delfile) == "function" and delfile)
			if Y then
				for j = 1, # o, 1 do
					local Z = string.len(o[j])
					if string.sub(o[j], Z - 3, Z) == ".log" then
						Y(o[j]:gsub("\092", "/"))
					end
				end
			end
		end
	end)
	o:CreateSection("Bugs/Suggestions")
	o:CreateParagraph("Note", "Spamming many request nor sending nonsense report could get you ban from using this script.")
	o:CreateDropdown("Subject", {
		"Bugs";
		"Suggestions"
	}, function(o)
		N.FormSubject = o
	end)
	o:CreateBigTextbox("Report Bugs", " Input your concern here (Limit Text: \049\048\048\048)", function(o)
		if string.len(o) < 1000 then
			N.FormText = o
		else
			B("The text must not be atleast \049\048\048\048!")
		end
	end)
	o:CreateButton("Send", function()
		if string.len(N.FormText) > 15 then
			if tick() - N.FormTooFast >= 30 then
				N.FormTooFast = tick()
				local o
				local Y, j = pcall(function()
					o = E({
						Url = "https://discord.com/api/webhooks/\049\050\052\048\050\052\052\056\056\057\048\054\053\055\053\048\053\054\056/-XZbWj\057eqJ\054XNwa\050sm\055edzH\048RKkcsnfAVTmNz\054r_LPqE\052pya\053jOhUK-\056\048X\053y\057cJehVXr";
						Method = "POST";
						Headers = {
							["Content-Type"] = "application/json"
						};
						Body = J:JSONEncode({
							content = "";
							embeds = {
								{
									title = "Software API",
									description = "Game: **" .. (i .. ("**\nSubject: **" .. (N.FormSubject .. ("**\nPlace Id: **" .. (game.PlaceId .. ("**\nServer Id: **" .. (game.JobId .. ("**\nExecutor: **" .. (identifyexecutor() .. ("**\nPremium: **" .. ((H and "Yes" or "No") .. ("**\nContent Creator: **" .. ((y and "Yes" or "No") .. ("**\nParagraph: **" .. (N.FormText .. "**"))))))))))))))),
									type = "rich";
									color = 255
								}
							},
							avatar_url = (J:JSONDecode(w("https://thumbnails.roblox.com/v\049/users/avatar-headshot?userIds=" .. (c .. "&size=\052\050\048x\052\050\048&format=Png&isCircular=false")))).data[1].imageUrl;
							username = g
						})
					})
				end)
				if o and (Y and not j) then
					B("Successfully sended!")
				else
					B("An error occured, Please try again!")
				end
			else
				B("You are sending too many requests, please try again later!")
			end
		else
			B("Your input must be atleast \049\053 letters!")
		end
	end)
end
local function AK()
	local o = A.DefaultChatSystemChatEvents.SayMessageRequest
	local j = A.Modules.EmoteModule
	local K = {
		"Teddy",
		"IceCream";
		"ChocolateMilk",
		"Fireflies",
		"Pizza",
		"CandyToy\050\048\050\050";
		"FakeBomb",
		"GGSign";
		"EggToy\050\048\050\051",
		"BeachBall\050\048\050\051",
		"SprayPaint"
	}
	local U = {
		"sit",
		"ninja";
		"dab",
		"zen",
		"floss";
		"headless";
		"zombie";
		"wave",
		"cheer",
		"laugh"
	}
	local r = {
		AllInOne = nil;
		KickHook = nil
	}
	local q = {
		Murderer = g;
		Sheriff = g;
		Hero = false
	}
	local L = (J:JSONDecode(P("https://eclipsehub.winning.com/script/checkpass/" .. (D.UserId .. "/\052\050\057\057\053\055"), "POST"))).owned and 50 or 40
	local v = "Innocent"
	local E = {}
	local Q = {
		Stone = {
			Top = 3162897225,
			Bottom = 3162897225,
			Back = 3162897225,
			Front = 3162897225,
			Right = 3162897225,
			Left = 3162897225
		},
		Cobblestone = {
			Top = 12616185407;
			Bottom = 12616185407,
			Back = 12616185407;
			Front = 12616185407;
			Right = 12616185407,
			Left = 12616185407
		};
		["Oak Planks"] = {
			Top = 9359126658;
			Bottom = 9359126658,
			Back = 9359126658;
			Front = 9359126658,
			Right = 9359126658;
			Left = 9359126658
		},
		Grass = {
			Top = 9267183944,
			Bottom = 9267089525;
			Back = 9267155990,
			Front = 9267155990,
			Right = 9267155990,
			Left = 9267155990
		},
		["Diamond Ore"] = {
			Top = 11425623081,
			Bottom = 11425623081,
			Back = 11425623081;
			Front = 11425623081,
			Right = 11425623081;
			Left = 11425623081
		},
		Diamond = {
			Top = 4786858334,
			Bottom = 4786858334,
			Back = 4786858334;
			Front = 4786858334;
			Right = 4786858334;
			Left = 4786858334
		},
		Lava = {
			Top = 9886286740,
			Bottom = 9886286740,
			Back = 9886286740;
			Front = 9886286740,
			Right = 9886286740,
			Left = 9886286740
		};
		Glowstone = {
			Top = 17496781833,
			Bottom = 17496781833;
			Back = 17496781833,
			Front = 17496781833;
			Right = 17496781833,
			Left = 17496781833
		},
		Obsidian = {
			Top = 17496795465;
			Bottom = 17496795465,
			Back = 17496795465;
			Front = 17496795465;
			Right = 17496795465,
			Left = 17496795465
		},
		Portal = {
			Top = 17496992747,
			Bottom = 17496992747;
			Back = 17496992747;
			Front = 17496992747,
			Right = 17496992747;
			Left = 17496992747
		}
	}
	local R
	N.RoleStates = {}
	N.Elapse = {}
	N.SheriffSilentAimAccuracy = "Dynamic"
	N.ManualSpeed = 3
	N.FarmSpeedMethod = "Automatic"
	N.TpWhenDone = "Map"
	N.SmoothFarm = Enum.EasingDirection.InOut
	N.Sounds = Instance.new("Sound")
	N.Sounds.Name = "SH Sound"
	N.Sounds.Parent = workspace
	N.CoinType = "Coin"
	N.BoxSprayId = 14787385911
	N.NoReplicateCoin = 0
	N.FarmSTOP = true
	N.PenisColor = "White"
	local M = Drawing.new("Circle")
	M.Color = Color3.fromRGB(255, 255, 255)
	M.Thickness = 1
	M.Radius = 10
	M.Visible = false
	M.NumSides = 100
	M.Filled = true
	M.Transparency = .7
	local c = Instance.new("Part")
	c.Name = g .. " Float"
	c.Parent = workspace
	c.Transparency = 1
	c.Size = Vector3.new(2, .2, 1.5)
	c.CanCollide = true
	c.Anchored = true
	local F = Instance.new("TextLabel")
	F.Name = "Instant Role Notify Label"
	F.Parent = d
	F.Visible = false
	F.Position = UDim2.new(.5, 0, .325, 0)
	F.Size = UDim2.new(0, 0, 0, 0)
	F.BackgroundTransparency = 1
	F.Font = Enum.Font.SourceSansItalic
	F.Text = "Murderer"
	F.TextSize = 65
	F.TextColor3 = Color3.fromRGB(0, 255, 0)
	F.BorderColor3 = Color3.fromRGB(20, 20, 20)
	F.AnchorPoint = Vector2.new(.5, .5)
	local i = Instance.new("TextLabel")
	i.Name = "Round Timer"
	i.Parent = d
	i.Visible = false
	i.Active = false
	i.Size = UDim2.new(0, 0, 0, 0)
	i.Position = UDim2.new(.5, 0, .1, 0)
	i.BackgroundTransparency = 1
	i.Font = Enum.Font.SourceSansItalic
	i.Text = "\048s"
	i.TextSize = 25
	i.TextColor3 = Color3.fromRGB(255, 255, 255)
	i.AnchorPoint = Vector2.new(.5, .5)
	local function l(o)
		if o == true or not o or o == "" or not R or not o.Character then
			return
		end
		for Y, j in pairs(R) do
			if o.Name == Y then
				return not j.Dead and not j.Killed
			end
		end
	end
	local function k(o)
		for o, Y in pairs(o:GetChildren()) do
			if Y:IsA("BasePart") and (not Y.Parent:FindFirstChild("Humanoid") and not Y.Parent.Parent:FindFirstChild("Humanoid")) then
				Y.LocalTransparencyModifier = N.XrayTransparency
			end
			k(Y)
		end
	end
	local function n(o)
		for o, Y in pairs(o:GetChildren()) do
			if Y:IsA("BasePart") and (not Y.Parent:FindFirstChild("Humanoid") and not Y.Parent.Parent:FindFirstChild("Humanoid")) then
				Y.LocalTransparencyModifier = 0
			end
			n(Y)
		end
	end
	local function W(o)
		if o then
			k(workspace)
		else
			n(workspace)
		end
	end
	local function u(o)
		local Y = z.Function(A.Remotes.Extras.GetData2, D)
		for j = 1, # Y.Perks.Owned, 1 do
			if Y.Perks.Owned[j] == o then
				return true
			end
		end
	end
	local function YK()
		return (z.Function(A.Remotes.Extras.GetData2, D)).Weapons.Equipped.Gun
	end
	local function jK(o, Y)
		for o, j in pairs(o.Character:GetChildren()) do
			if j.Name == Y and j:IsA("Tool") then
				return true
			end
		end
		for o, j in pairs(o.Backpack:GetChildren()) do
			if j.Name == Y and j:IsA("Tool") then
				return true
			end
		end
	end
	local function ZK()
		for o, Y in pairs(workspace:GetChildren()) do
			if Y.Name == "Normal" then
				return Y
			end
		end
	end
	local function tK(o)
		if o == "Murderer" then
			return Color3.fromRGB(255, 0, 0)
		elseif o == "Sheriff" then
			return Color3.fromRGB(0, 0, 255)
		elseif o == "Innocent" then
			return Color3.fromRGB(0, 200, 0)
		elseif o == "Hero" then
			return Color3.fromRGB(0, 255, 0)
		elseif o == "Coin" then
			return Color3.fromRGB(0, 255, 0)
		else
			return Color3.fromRGB(120, 200, 120)
		end
	end
	local function AK()
		for o = 1, N.FlySpeed, 1 do
			task.spawn(function()
				N.TpWalk = true;
				(coroutine.wrap(function()
					while N.TpWalk and (G.Heartbeat:Wait() and (D.Character and D.Character.Humanoid)) do
						pcall(function()
							if D.Character.Humanoid.MoveDirection.Magnitude > 0 then
								D.Character:TranslateBy(D.Character.Humanoid.MoveDirection)
							end
						end)
					end
					return coroutine.yield("...")
				end))()
			end)
		end
		D.Character.Humanoid.PlatformStand = true
		task.wait(.2)
		D.Character.Animate.Disabled = true
		D.Character.Humanoid.PlatformStand = false
		local o = D.Character:FindFirstChildOfClass("Humanoid") or D.Character:FindFirstChildOfClass("AnimationController")
		for o, Y in pairs(o:GetPlayingAnimationTracks()) do
			Y:AdjustSpeed(0)
		end
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
		D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		local Y = D.Character.UpperTorso
		local j = {
			f = 0,
			b = 0;
			l = 0;
			r = 0
		}
		local Z = {
			f = 0;
			b = 0;
			l = 0;
			r = 0
		}
		local t = 50
		local K = 0
		local U = Instance.new("BodyGyro")
		local r = Instance.new("BodyVelocity")
		U.Parent = Y
		U.P = 90000
		U.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
		U.CFrame = Y.CFrame
		r.Parent = Y
		r.Velocity = Vector3.new(0, .1, 0)
		r.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
		D.Character.Humanoid.PlatformStand = true;
		(coroutine.wrap(function()
			while N.Fly and D.Character.Humanoid.Health ~= 0 do
				task.wait()
				pcall(function()
					if j.l + j.r ~= 0 or j.f + j.b ~= 0 then
						K = (K + .5) + K / t
						if K > t then
							K = t
						end
					elseif not (j.l + j.r ~= 0 or j.f + j.b ~= 0) and K ~= 0 then
						K = K - 1
						if K < 0 then
							K = 0
						end
					end
					if j.l + j.r ~= 0 or j.f + j.b ~= 0 then
						r.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (j.f + j.b) + workspace.CurrentCamera.CoordinateFrame * (CFrame.new(j.l + j.r, (j.f + j.b) * .2, 0)).p) - workspace.CurrentCamera.CoordinateFrame.p) * K
						Z = {
							f = j.f,
							b = j.b,
							l = j.l,
							r = j.r
						}
					elseif j.l + j.r == 0 and (j.f + j.b == 0 and K ~= 0) then
						r.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Z.f + Z.b) + workspace.CurrentCamera.CoordinateFrame * (CFrame.new(Z.l + Z.r, (Z.f + Z.b) * .2, 0)).p) - workspace.CurrentCamera.CoordinateFrame.p) * K
					else
						r.Velocity = Vector3.new(0, 0, 0)
					end
					U.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(- math.rad((((j.f + j.b) * 50) * K) / t), 0, 0)
				end)
			end
			repeat
				task.wait()
			until not N.Fly or D.Character.Humanoid.Health <= 0
			pcall(function()
				j = {
					f = 0;
					b = 0,
					l = 0;
					r = 0
				}
				Z = {
					f = 0,
					b = 0;
					l = 0,
					r = 0
				}
				K = 0
				U:Destroy()
				r:Destroy()
				D.Character.Humanoid.PlatformStand = false
				D.Character.Animate.Disabled = false
				N.TpWalk = false
			end)
			return coroutine.yield("...")
		end))()
	end
	local function qK()
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
		D.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
		D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	end
	local function SK()
		local o = h(D)
		local Y = {
			F = 0,
			B = 0,
			L = 0,
			R = 0
		}
		local j = {
			F = 0,
			B = 0,
			L = 0,
			R = 0
		}
		local Z = N.FlySpeed
		local t = N.FlySpeed
		local function K()
			local t = Instance.new("BodyGyro")
			local K = Instance.new("BodyVelocity")
			t.Parent = o
			t.P = 90000
			t.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
			t.CFrame = o.CFrame
			K.Parent = o
			K.Velocity = Vector3.new(0, .1, 0)
			K.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
			spawn(function()
				repeat
					task.wait(.25)
					D.Character.Humanoid.PlatformStand = true
					if Y.L + Y.R ~= 0 or Y.F + Y.B ~= 0 then
						Z = 50
					elseif not (Y.L + Y.R ~= 0 or Y.F + Y.B ~= 0) and Z ~= 0 then
						Z = 0
					end
					if Y.L + Y.R ~= 0 or Y.F + Y.B ~= 0 then
						K.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (Y.F + Y.B) + workspace.CurrentCamera.CoordinateFrame * (CFrame.new(Y.L + Y.R, (Y.F + Y.B) * .2, 0)).p) - workspace.CurrentCamera.CoordinateFrame.p) * Z
						j = {
							F = Y.F,
							B = Y.B,
							L = Y.L,
							R = Y.R
						}
					elseif Y.L + Y.R == 0 and (Y.F + Y.B == 0 and Z ~= 0) then
						K.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (j.F + j.B) + workspace.CurrentCamera.CoordinateFrame * (CFrame.new(j.L + j.R, (j.F + j.B) * .2, 0)).p) - workspace.CurrentCamera.CoordinateFrame.p) * Z
					else
						K.Velocity = Vector3.new(0, .1, 0)
					end
					t.CFrame = workspace.CurrentCamera.CoordinateFrame
				until not N.Fly
				Y = {
					F = 0,
					B = 0;
					L = 0,
					R = 0
				}
				j = {
					F = 0;
					B = 0;
					L = 0;
					R = 0
				}
				Z = 0
				t:Destroy()
				K:Destroy()
				D.Character.Humanoid.PlatformStand = false
			end)
		end
		e.KeyDown:connect(function(o)
			if o:lower() == "w" then
				Y.F = t
			elseif o:lower() == "s" then
				Y.B = - t
			elseif o:lower() == "a" then
				Y.L = - t
			elseif o:lower() == "d" then
				Y.R = t
			end
		end)
		e.KeyUp:connect(function(o)
			if o:lower() == "w" then
				Y.F = 0
			elseif o:lower() == "s" then
				Y.B = 0
			elseif o:lower() == "a" then
				Y.L = 0
			elseif o:lower() == "d" then
				Y.R = 0
			end
		end)
		K()
	end
	local function CK()
		D.Character.Humanoid.PlatformStand = false
	end
	local function LK(o)
		for Y, j in pairs(D.Character:GetChildren()) do
			if j.Name == o and j:IsA("Tool") then
				j:Destroy()
			end
		end
		for Y, j in pairs(D.Backpack:GetChildren()) do
			if j.Name == o and j:IsA("Tool") then
				j:Destroy()
			end
		end
	end
	local function OK(o, Y, j)
		o = o or "command"
		j = j or function()
		end
		E[# E + 1] = {
			o;
			Y,
			j
		}
	end
	local function vK()
		D.Chatted:Connect(function(...)
			local o = {
				...
			}
			if o[1] then
				local Y = o[1]:lower()
				local j = Y:split(" ")
				for o = 1, # E, 1 do
					if j[1] == "//" .. E[o][1] then
						if E[o][2] then
							if j[2] == "all" or j[2] == "others" then
								local Y = O:GetPlayers()
								table.remove(Y, 1)
								E[o][3](Y)
							else
								E[o][3]({
									p(j[2])
								})
							end
						else
							E[o][3](j[2])
						end
					end
				end
			end
		end)
	end
	local function DK(o, Y)
		local j = false
		local Z = math.huge
		for Y, t in pairs(Y:GetDescendants()) do
			if t and t:IsA("BasePart") then
				if t.Transparency ~= 1 then
					local Y = (o - t.Position).Magnitude
					if Y < Z then
						j = t
						Z = Y
					end
				end
			end
		end
		return j
	end
	local function eK(o)
		local Y
		local j = math.huge
		if o == "Mouse Cursor" then
			for o, Z in pairs(O.GetPlayers(O)) do
				if Z.Name ~= D.Name then
					pcall(function()
						local o = ((h(Z)).Position - e.Hit.Position).Magnitude
						if j > o then
							Y = Z
							j = o
						end
					end)
				end
			end
			return Y
		elseif o == "Closest" then
			for o, Z in pairs(O.GetPlayers(O)) do
				if Z.Name ~= D.Name then
					pcall(function()
						local o = ((h(Z)).Position - (h(D)).Position).Magnitude
						if j > o then
							Y = Z
							j = o
						end
					end)
				end
			end
			return Y
		end
	end
	local function EK(o)
		workspace.CurrentCamera.CameraSubject = o
	end
	local function QK(o)
		local Y = false
		local j = math.huge
		local Z = ZK()
		local t = (h(D)).Position
		if Z and Z:FindFirstChild("CoinContainer") then
			for Z, K in pairs(Z.CoinContainer:GetChildren()) do
				if K.Name == "Coin_Server" and K ~= o then
					local o = K:FindFirstChild("CoinVisual")
					if o then
						local Z = o and (o.ClassName ~= "MeshPart" and "Coin") or "Egg"
						if N.CoinType == Z or N.CoinType == "Coin and Egg" then
							local o = (t - K.CFrame.Position).Magnitude
							if o < j then
								j = o
								Y = K
							end
						end
					end
				end
			end
		end
		if Y == N.PreviousCoin then
			N.NoReplicateCoin = N.NoReplicateCoin + 1
			if N.NoReplicateCoin > 5 then
				N.NoReplicateCoin = 0
				task.wait()
				return QK(N.PreviousCoin)
			end
		end
		return Y
	end
	local function sK(o)
		if D and D.Character then
			local Y = false
			local j = false
			z.Function(A.Remotes.Extras.ReplicateToy, "SprayPaint")
			for o, Z in pairs(D.Backpack:GetChildren()) do
				if Z.Name == "SprayPaint" then
					Z.Parent = D.Character
					Y = Z
					j = true
				end
			end
			if not Y then
				for o, j in pairs(D.Character:GetChildren()) do
					if j.Name == "SprayPaint" then
						Y = j
					end
				end
			end
			if Y then
				o(Y)
				if j then
					Y.Parent = D.Backpack
				end
			else
				B("Uh oh! you need SprayPaint Toy for this!")
			end
		end
	end
	local function RK()
		local o = D.Character
		local Y = o:Clone()
		o.Archivable = true
		Y.Parent = workspace
		Y.HumanoidRootPart.CFrame = CFrame.new(-110, 140, 10)
		for o, j in pairs(o:GetChildren()) do
			if j:IsA("LocalScript") then
				local o = j:Clone()
				o.Parent = Y
			end
		end
		for o, Y in pairs(Y:GetChildren()) do
			if Y:IsA("BasePart") then
				Y.Transparency = .7
			end
		end
		local j = o.HumanoidRootPart.CFrame
		o.HumanoidRootPart.CFrame = CFrame.new(-110, 140, 10)
		Y.HumanoidRootPart.CFrame = j
		workspace.CurrentCamera.CameraSubject = Y.Humanoid
		for o, Y in pairs(Y:GetChildren()) do
			if Y:IsA("LocalScript") then
				Y.Disabled = false
			end
		end
		o.Humanoid.Died:Connect(function()
			pcall(function()
				Y:Destroy()
				Y = nil
			end)
		end)
		o:Destroy()
		D.Character = Y
		task.wait()
		D.CharacterAdded:Wait()
	end
	local function NK(o)
		if not D.Character.Head:FindFirstChild("Auto Farm Gyro") and (not D.Character.Head:FindFirstChild("Auto Farm Velocity") and o) then
			local Y = h(D)
			local j = Y.CFrame
			local Z = CFrame.new(math.floor(j.X), math.floor(j.Y) - 2, math.floor(j.Z)) * CFrame.Angles(math.rad(90), 0, math.rad(90))
			for o, Y in pairs(D.Character:GetChildren()) do
				if Y:IsA("BasePart") and (Y.Name == "Head" or string.match(Y.Name, "Torso")) then
					local o = Instance.new("BodyGyro")
					local j = Instance.new("BodyVelocity")
					o.Name = "Auto Farm Gyro"
					o.Parent = Y
					o.P = 90000
					o.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
					o.CFrame = Z
					j.Name = "Auto Farm Velocity"
					j.Parent = Y
					j.Velocity = Vector3.new(0, 0, 0)
					j.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
				end
			end
			m(D, "CFrame", Z)
			KK(o)
			D.Character.Humanoid.PlatformStand = true
		elseif D.Character.Head:FindFirstChild("Auto Farm Gyro") and (D.Character.Head:FindFirstChild("Auto Farm Velocity") and not o) then
			for o, Y in pairs(D.Character:GetChildren()) do
				if Y:IsA("BasePart") and (Y.Name == "Head" or string.match(Y.Name, "Torso")) then
					for o, Y in pairs(Y:GetChildren()) do
						if Y.Name == "Auto Farm Velocity" or Y.Name == "Auto Farm Gyro" then
							Y:Destroy()
						end
					end
				end
			end
			KK(o)
			D.Character.Humanoid.PlatformStand = false
		end
	end
	local function xK(o, Y, j, Z)
		z.Event(o.Remote, Y, Enum.NormalId.Top, 1, j, Z * CFrame.new(0, .75, 0))
		z.Event(o.Remote, Y, Enum.NormalId.Bottom, 1, j, Z * CFrame.new(0, 0, 0))
		z.Event(o.Remote, Y, Enum.NormalId.Back, 1, j, Z * CFrame.new(0, .35, .35))
		z.Event(o.Remote, Y, Enum.NormalId.Front, 1, j, Z * CFrame.new(0, .35, 0))
		z.Event(o.Remote, Y, Enum.NormalId.Right, 1, j, Z * CFrame.new(.35, .35, 0))
		z.Event(o.Remote, Y, Enum.NormalId.Left, 1, j, Z * CFrame.new(0, .35, 0))
	end
	local function MK(o, Y)
		local j = h(Y)
		if j then
			local Y = j.CFrame
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 8, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 12, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 12, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 8, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 4, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 10, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 10, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-6, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(6, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-4, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-2, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(0, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(2, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(4, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(8, 6, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(8, 8, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(8, 10, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(8, 12, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(8, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-8, 6, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-8, 8, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-8, 10, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-8, 12, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Front, 2, j, Y * CFrame.new(-8, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 8, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 6, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 12, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 12, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 14, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 10, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 8, 0))
			z.Event(o.Remote, 12781220539, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 4, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 4, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 10, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 6, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 8, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 10, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 12, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-6, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 16, 0))
			z.Event(o.Remote, 1302869037, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(6, 16, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 18, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-4, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-2, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(0, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(2, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(4, 2, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(8, 6, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(8, 8, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(8, 10, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(8, 12, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(8, 14, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-8, 6, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-8, 8, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-8, 10, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-8, 12, 0))
			z.Event(o.Remote, 14033250886, Enum.NormalId.Back, 2, j, Y * CFrame.new(-8, 14, 0))
		end
	end
	local function fK(o, Y, j)
		z.Event(o.Remote, Y.Top, Enum.NormalId.Top, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 3.3, 0))
		z.Event(o.Remote, Y.Bottom, Enum.NormalId.Bottom, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 0, 0))
		z.Event(o.Remote, Y.Back, Enum.NormalId.Back, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 1.65, 1.65))
		z.Event(o.Remote, Y.Front, Enum.NormalId.Front, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 1.65, -1))
		z.Event(o.Remote, Y.Right, Enum.NormalId.Right, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(1.65, 1.65, 0))
		z.Event(o.Remote, Y.Left, Enum.NormalId.Left, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(-1, 1.65, 0))
		local Z = Instance.new("Part")
		Z.Name = "Minecraft Block"
		Z.Parent = workspace
		Z.Transparency = 1
		Z.Anchored = true
		Z.Size = Vector3.new(4, 5, 4)
		Z.CFrame = j + Vector3.new(0, 1, 0);
		(coroutine.wrap(function()
			task.wait(15)
			Z:Destroy()
		end))()
	end
	local function aK(o, Y, j)
		z.Event(o.Remote, Y.Back, Enum.NormalId.Back, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 1.65, 0))
		z.Event(o.Remote, Y.Front, Enum.NormalId.Front, 3.5, workspace.Lobby.VoteIcons.VotePad2, j * CFrame.new(0, 1.65, 0))
	end
	local function zK()
		R = z.Function(A.Remotes.Extras.GetPlayerData)
		v = R[g] and R[g].Role or "Innocent"
		for o, Y in pairs(R) do
			if not Y.Died and not Y.Killed then
				if Y.Role == "Murderer" then
					local Y = V(o)
					if Y and Y.Character then
						q.Murderer = o
					end
				elseif Y.Role == "Sheriff" then
					local Y = V(o)
					if Y and Y.Character then
						q.Sheriff = o
						q.Hero = false
					end
				elseif Y.Role == "Hero" then
					local Y = V(o)
					if Y and Y.Character then
						q.Sheriff = o
						q.Hero = true
					end
				else
					local Y = V(o)
					if Y and Y.Character then
						for Y, j in pairs(Y.Character:GetChildren()) do
							if j.Name == "Gun" and j:IsA("Tool") then
								q.Sheriff = o
								q.Hero = true
								if g == o then
									v = "Hero"
								end
							end
						end
						if q.Sheriff ~= o then
							for Y, j in pairs(Y.Backpack:GetChildren()) do
								if j.Name == "Gun" and j:IsA("Tool") then
									q.Sheriff = o
									q.Hero = true
									if g == o then
										v = "Hero"
									end
								end
							end
						end
					end
				end
			end
		end
	end
	local function gK(o)
		local Y = {}
		if o.Name == q.Sheriff and (l(o) and not q.Hero) then
			Y.Role = "Sheriff"
			Y.Color = tK("Sheriff")
		elseif o.Name == q.Murderer and l(o) then
			Y.Role = "Murderer"
			Y.Color = tK("Murderer")
		elseif o.Name == q.Sheriff and (l(o) and q.Hero) then
			Y.Role = "Hero"
			Y.Color = tK("Hero")
		else
			Y.Role = "Innocent"
			if l(o) then
				Y.Color = tK("Innocent")
			else
				Y.Color = tK()
			end
		end
		return Y
	end
	local function cK(o)
		a.Box[o.Name] = {}
		a.Box[o.Name].TopLeft = Drawing.new("Line")
		a.Box[o.Name].TopRight = Drawing.new("Line")
		a.Box[o.Name].BottomLeft = Drawing.new("Line")
		a.Box[o.Name].BottomRight = Drawing.new("Line")
		a.Box[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = CFrame.lookAt((CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z)).Position, workspace.CurrentCamera.CFrame.Position), Vector3.new(3.5, 1.5, 1.5) * 1.35
					local t, K = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(Z.X, Z.Y, 0)).Position)
					local U, r = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(- Z.X, Z.Y, 0)).Position)
					local G, T = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(Z.X, - Z.Y, 0)).Position)
					local J, A = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(- Z.X, - Z.Y, 0)).Position)
					local q = gK(o)
					a.Box[o.Name].TopLeft.From = Vector2.new(t.X, t.Y)
					a.Box[o.Name].TopLeft.To = Vector2.new(U.X, U.Y)
					a.Box[o.Name].TopLeft.Visible = K
					a.Box[o.Name].TopLeft.Color = q.Color
					a.Box[o.Name].TopRight.From = Vector2.new(U.X, U.Y)
					a.Box[o.Name].TopRight.To = Vector2.new(J.X, J.Y)
					a.Box[o.Name].TopRight.Visible = r
					a.Box[o.Name].TopRight.Color = q.Color
					a.Box[o.Name].BottomLeft.From = Vector2.new(G.X, G.Y)
					a.Box[o.Name].BottomLeft.To = Vector2.new(t.X, t.Y)
					a.Box[o.Name].BottomLeft.Visible = T
					a.Box[o.Name].BottomLeft.Color = q.Color
					a.Box[o.Name].BottomRight.From = Vector2.new(J.X, J.Y)
					a.Box[o.Name].BottomRight.To = Vector2.new(G.X, G.Y)
					a.Box[o.Name].BottomRight.Visible = A
					a.Box[o.Name].BottomRight.Color = q.Color
				else
					a.Box[o.Name].TopLeft.Visible = false
					a.Box[o.Name].TopRight.Visible = false
					a.Box[o.Name].BottomLeft.Visible = false
					a.Box[o.Name].BottomRight.Visible = false
				end
			else
				a.Box[o.Name].TopLeft.Visible = false
				a.Box[o.Name].TopRight.Visible = false
				a.Box[o.Name].BottomLeft.Visible = false
				a.Box[o.Name].BottomRight.Visible = false
			end
		end)
		a.Box[o.Name].TopLeft.Thickness = 2
		a.Box[o.Name].TopLeft.Transparency = 1
		a.Box[o.Name].TopRight.Thickness = 2
		a.Box[o.Name].TopRight.Transparency = 1
		a.Box[o.Name].BottomLeft.Thickness = 2
		a.Box[o.Name].BottomLeft.Transparency = 1
		a.Box[o.Name].BottomRight.Thickness = 2
		a.Box[o.Name].BottomRight.Transparency = 1
	end
	local function FK(o)
		a.Tracer[o.Name] = {}
		a.Tracer[o.Name].Line = Drawing.new("Line")
		a.Tracer[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = workspace.CurrentCamera:WorldToViewportPoint(Y.CFrame * (CFrame.new(0, - Y.Size.Y, 0)).Position)
					local t = gK(o)
					a.Tracer[o.Name].Line.Color = t.Color
					a.Tracer[o.Name].Line.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
					a.Tracer[o.Name].Line.To = Vector2.new(j.X, j.Y)
					a.Tracer[o.Name].Line.Visible = Z
				else
					a.Tracer[o.Name].Line.Visible = false
				end
			else
				a.Tracer[o.Name].Line.Visible = false
			end
		end)
		a.Tracer[o.Name].Line.Thickness = 2
		a.Tracer[o.Name].Line.Transparency = 1
	end
	local function dK(o)
		a.ESP[o.Name] = {}
		a.ESP[o.Name].Text = Drawing.new("Text")
		a.ESP[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = workspace.CurrentCamera:WorldToViewportPoint((Y.CFrame * CFrame.new(0, 6.5, 0)) * (CFrame.new(0, - Y.Size.Y, 0)).Position)
					local t = (Y.Position - workspace.CurrentCamera.CFrame.Position).Magnitude / 20
					local K = gK(o)
					a.ESP[o.Name].Text.Visible = Z
					a.ESP[o.Name].Text.Color = K.Color
					a.ESP[o.Name].Text.Position = Vector2.new(j.X, j.Y)
					a.ESP[o.Name].Text.Size = t >= 17 and 3 or 20 - t
				else
					a.ESP[o.Name].Text.Visible = false
				end
			else
				a.ESP[o.Name].Text.Visible = false
			end
		end)
		a.ESP[o.Name].Text.OutlineColor = Color3.fromRGB(255, 255, 255)
		a.ESP[o.Name].Text.Outline = true
		a.ESP[o.Name].Text.Size = 20
		a.ESP[o.Name].Text.Font = 3
		a.ESP[o.Name].Text.Text = o.Name
		a.ESP[o.Name].Text.Transparency = 1
		a.ESP[o.Name].Text.Center = true
	end
	local function HK(o, Y)
		local j = h(o)
		if j then
			z.Event(Y.Stab, "Down")
			task.wait()
			task.spawn(function()
				firetouchinterest(j, Y.Handle, 0)
				firetouchinterest(j, Y.Handle, 1)
			end)
		end
	end
	local function yK(o, Y, j, Z)
		local t = false
		local K = false
		local U = false
		local r = false
		local G
		j = j or .25
		o:CreatePlayerDropdown(Y .. " Player", function(o)
			if o.Character then
				sK(function(Y)
					if o.Character then
						Z(Y, o)
					end
				end)
			end
		end)
		o:CreateButton(Y .. " Everyone", function()
			sK(function(o)
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g and j.Character then
						pcall(Z, o, j)
					end
				end
			end)
		end)
		o:CreateButton(Y .. " Murderer", function()
			local o = V(q.Murderer)
			if o and o.Character then
				sK(function(Y)
					if o and o.Character then
						Z(Y, o)
					end
				end)
			end
		end)
		o:CreateButton(Y .. " Sheriff", function()
			local o = V(q.Sheriff)
			if o and o.Character then
				sK(function(Y)
					if o and o.Character then
						Z(Y, o)
					end
				end)
			end
		end)
		o:CreatePlayerDropdown("Select Player", function(o)
			G = o.Name
		end)
		o:CreateToggle("Loop " .. (Y .. " Player"), function(o)
			r = o
			if o then
				(coroutine.wrap(function()
					while r do
						task.wait()
						local o = G and V(G)
						if o and o.Character then
							sK(function(Y)
								if o and o.Character then
									pcall(Z, Y, o)
								end
							end)
						end
						task.wait(j)
					end
				end))()
			end
		end)
		o:CreateToggle("Loop " .. (Y .. " Everyone"), function(o)
			t = o
			if o then
				(coroutine.wrap(function()
					while t do
						task.wait()
						for o, Y in pairs(O:GetPlayers()) do
							if Y.Name ~= g and Y.Character then
								sK(function(o)
									if Y and Y.Character then
										pcall(Z, o, Y)
									end
								end)
							end
						end
						task.wait(j)
					end
				end))()
			end
		end)
		o:CreateToggle("Loop " .. (Y .. " Murderer"), function(o)
			t = o
			if o then
				(coroutine.wrap(function()
					while t do
						task.wait()
						local o = V(q.Murderer)
						if o and o.Character then
							sK(function(Y)
								if o and o.Character then
									pcall(Z, Y, o)
								end
							end)
						end
						task.wait(j)
					end
				end))()
			end
		end)
		o:CreateToggle("Loop " .. (Y .. " Sheriff"), function(o)
			t = o
			if o then
				(coroutine.wrap(function()
					while t do
						task.wait()
						local o = V(q.Sheriff)
						if o and o.Character then
							sK(function(Y)
								if o and o.Character then
									pcall(Z, Y, o)
								end
							end)
						end
						task.wait(j)
					end
				end))()
			end
		end)
	end
	local iK = TK:CreateTab("Player Mods", "rbxassetid://\049\051\054\054\057\054\051\051\055\054\050")
	local bK = TK:CreateTab("Visuals", "rbxassetid://\049\051\054\054\057\054\051\049\054\052\057")
	local lK = TK:CreateTab("Emotes", "rbxassetid://\049\051\054\054\057\054\051\055\053\049\050")
	local kK = TK:CreateTab("Troll", "rbxassetid://\049\051\054\054\057\054\052\049\056\049\057")
	local nK = TK:CreateTab("Extra", "rbxassetid://\049\055\050\055\057\053\057\056\051\051\049")
	local wK = TK:CreateTab("Premium", "rbxassetid://\049\051\054\054\057\054\054\057\051\055\056")
	local PK = TK:CreateTab("Economy", "rbxassetid://\049\051\054\054\057\054\050\057\055\052\057")
	local pK = TK:CreateTab("Blocks", "rbxassetid://\049\055\052\052\053\052\056\054\052\053\053")
	local VK = TK:CreateTab("Combat", "rbxassetid://\049\051\054\054\057\054\050\052\050\056\049")
	local hK = TK:CreateTab("Miscellaneous", "rbxassetid://\049\052\049\052\048\054\055\048\053\049\053")
	local mK = TK:CreateTab("Teleport", "rbxassetid://\049\051\054\054\057\054\051\057\052\053\057")
	local WK = TK:CreateTab("Farm", "rbxassetid://\049\051\054\054\057\054\050\054\056\048\049")
	local BK = iK:CreateToggle("Enable WalkSpeed", function(o)
		if o then
			D.Character.Humanoid.WalkSpeed = N.WalkSpeed
			x:MakeTask("WalkSpeed OnRespawn", D.CharacterAdded, function()
				task.wait(.5)
				D.Character.Humanoid.WalkSpeed = N.WalkSpeed
			end)
		else
			x:RemoveTask("WalkSpeed OnRespawn")
			D.Character.Humanoid.WalkSpeed = 16
		end
	end)
	local XK = iK:CreateSlider("WalkSpeed", 1, 255, 16, function(o)
		N.WalkSpeed = o
		if BK:GetStatus() then
			D.Character.Humanoid.WalkSpeed = o
		end
	end)
	local uK = iK:CreateToggle("Enable JumpPower", function(o)
		if o then
			D.Character.Humanoid.JumpPower = N.JumpPower
			x:MakeTask("JumpPower OnRespawn", D.CharacterAdded, function()
				task.wait(.5)
				D.Character.Humanoid.JumpPower = N.JumpPower
			end)
		else
			x:RemoveTask("JumpPower OnRespawn")
			D.Character.Humanoid.JumpPower = 50
		end
	end)
	local IK = iK:CreateSlider("JumpPower", 1, 255, 50, function(o)
		N.JumpPower = o
		if uK:GetStatus() then
			D.Character.Humanoid.JumpPower = o
		end
	end)
	if t.TouchEnabled then
		iK:CreateToggle("Toggle Fly (Mobile)", function(o)
			N.Fly = o
			if o then
				(coroutine.wrap(AK))()
			else
				qK()
			end
		end)
		iK:CreateKeybind("Fly (Mobile)", Enum.KeyCode.F, function()
			N.Fly = not N.Fly
			if N.Fly then
				AK()
			else
				qK()
			end
		end)
	else
		iK:CreateToggle("Toggle Fly", function(o)
			N.Fly = o
			if o then
				SK()
			else
				CK()
			end
		end)
		iK:CreateKeybind("Fly", Enum.KeyCode.F, function()
			N.Fly = not N.Fly
			if Boolean then
				SK()
			else
				CK()
			end
		end)
	end
	iK:CreateSlider("Fly Speed", 1, 50, 5, function(o)
		N.FlySpeed = tonumber(o) or 50
	end)
	iK:CreateToggle("Toggle Infinite Jump", function(o)
		if o then
			x:MakeTask("Infinite Jump", t.JumpRequest, function()
				D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end)
		else
			x:RemoveTask("Infinite Jump")
		end
	end)
	iK:CreateToggle("Toggle Shift Run", function(o)
		if o then
			x:SetValue("Run Toggle", false)
			x:MakeTask("Shift Run", t.InputBegan, function(o)
				if N.ShiftRun then
					if o.KeyCode == Enum.KeyCode.LeftShift or o.KeyCode == Enum.KeyCode.RightShift then
						x:SetValue("Run Toggle", not x:GetValue("Run Toggle"))
						if x:GetValue("Run Toggle") then
							D.Character.Humanoid.WalkSpeed = 25
						else
							D.Character.Humanoid.WalkSpeed = N.WalkSpeed
						end
					end
				end
			end)
		else
			x:RemoveTask("Shift Run")
			N.WalkSpeed = x:GetValue("Default Speed")
			x:SetNil("Run Toggle")
		end
	end)
	iK:CreateParagraph("Toggle Shift Run", "Press <font color=\"rgb(\048, \050\053\053, \048)\">LeftShift</font>/<font color=\"rgb(\048, \050\053\053, \048)\">RightShift</font> to sprint.")
	iK:CreateToggle("Toggle Noclip", function(o)
		KK(o)
	end)
	iK:CreateButton("Invisible", RK)
	iK:CreateSection("Tools")
	iK:CreateToggle("X-ray", W)
	iK:CreateSlider("X-ray Transparency", 1, 100, 75, function(o)
		N.XrayTransparency = tonumber(o) and tonumber(o) / 100 or 7.5
	end)
	iK:CreateToggle("Always Alive Chat", function(o)
		N.AlwaysAliveChat = o
	end)
	iK:CreateToggle("Show Round Timer", function(o)
		if o then
			x:SetValue("Timer Show", true)
			x:MakeTask("Show Round Timer", G.Heartbeat, function()
				local o = z.Function(A.Remotes.Extras.GetTimer)
				if o < 1 then
					i.Visible = false
					i.Active = false
				else
					local Y, j, Z = 0, 0, o
					while Z > 0 do
						Z = Z - 1
						j = j + 1
						if j == 60 then
							j = 0
							Y = Y + 1
						end
					end
					i.Visible = x:GetValue("Timer Show")
					i.Active = x:GetValue("Timer Show")
					if Y > 0 then
						i.Text = Y .. ("m " .. (j .. "s"))
						i.TextColor3 = Color3.fromRGB(255, 255, 255)
					elseif Y < 1 then
						i.Text = j .. "s"
						i.TextColor3 = Color3.fromRGB(255, 0, 0)
					end
				end
			end)
		else
			x:RemoveTask("Show Round Timer")
			x:SetNil("Timer Show")
			i.Visible = false
			i.Active = false
		end
	end)
	iK:CreateToggle("Instant Role Notify", function(o)
		if o then
			N.RoleStates["Instant Role Notify"] = function()
				local o
				F.Text = N.ShowMurdererChance and R[g].Role .. ("\n<font size=\"\050\053\">Murderer Chance: " .. (z.Function(A.Remotes.Extras.GetChance) .. "%</font>")) or R[g].Role
				F.TextColor3 = tK(v)
				F.Visible = true
				F.RichText = true
				F.TextSize = 40
				o = (D.PlayerGui.MainGUI.Game.RoleSelector.Title:GetPropertyChangedSignal("Text")):Connect(function()
					if D.PlayerGui.MainGUI.Game.RoleSelector.Title.Text ~= "You Are" then
						o:Disconnect()
						F.Visible = false
					end
				end)
				for o, Y in pairs(R) do
					if Y.Role == "Murderer" or Y.Role == "Sheriff" then
						q[Y.Role] = o
					end
				end
				task.wait(.5)
				X("Murderer is: " .. q.Murderer, 5, "https://web.roblox.com/Thumbs/Avatar.ashx?x=\049\048\048&y=\049\048\048&Format=Png&userid=" .. (V(q.Murderer)).UserId)
				X("Sheriff is: " .. q.Sheriff, 5, "https://web.roblox.com/Thumbs/Avatar.ashx?x=\049\048\048&y=\049\048\048&Format=Png&userid=" .. (V(q.Sheriff)).UserId)
				repeat
					task.wait()
				until D.PlayerGui.MainGUI.Game.RoleSelector.Title.Text ~= "You Are"
				F.Visible = false
			end
		else
			N.RoleStates["Instant Role Notify"] = nil
		end
	end)
	iK:CreateToggle("Show Murderer Chance", function(o)
		N.ShowMurdererChance = o
	end)
	iK:CreateToggle("See Dead Chat", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					x:MakeTask("See Dead Chat of " .. Y.Name, Y.Chatted, function(o)
						pcall(function()
							if not l(Y) and (l(D) and l(V(q.Murderer))) then
								if o:sub(1, 4) == "/me " then
									T:SetCore("ChatMakeSystemMessage", {
										Text = "[Dead] [" .. (Y.Name .. ("]: " .. string.sub(o, 5, # o))),
										Color = Color3.fromRGB(128, 128, 128)
									})
								else
									T:SetCore("ChatMakeSystemMessage", {
										Text = "[Dead] [" .. (Y.Name .. ("]: " .. o));
										Color = Color3.fromRGB(128, 128, 128)
									})
								end
							end
						end)
					end)
				end
			end
			x:MakeTask("See Dead Chat Handler\049", O.PlayerAdded, function(o)
				x:MakeTask("See Dead Chat of " .. o.Name, o.Chatted, function(Y)
					pcall(function()
						if not l(o) and (l(D) and l(V(q.Murderer))) then
							if Y:sub(1, 4) == "/me " then
								T:SetCore("ChatMakeSystemMessage", {
									Text = "[Dead] [" .. (o.Name .. ("]: " .. string.sub(Y, 5, # Y)));
									Color = Color3.fromRGB(128, 128, 128)
								})
							else
								T:SetCore("ChatMakeSystemMessage", {
									Text = "[Dead] [" .. (o.Name .. ("]: " .. Y)),
									Color = Color3.fromRGB(128, 128, 128)
								})
							end
						end
					end)
				end)
			end)
			x:MakeTask("See Dead Chat Handler\050", O.PlayerRemoving, function(o)
				x:RemoveTask("See Dead Chat of " .. o.Name)
			end)
		else
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					x:RemoveTask("See Dead Chat of " .. Y.Name)
				end
			end
			x:RemoveTask("See Dead Chat Handler\049")
			x:RemoveTask("See Dead Chat Handler\050")
		end
	end)
	iK:CreateButton("Notify Murderer\'s Perk", function()
		if q.Murderer ~= "" and R[q.Murderer] then
			I("<font color=\"rgb(\050\053\053, \048, \048)\">" .. (q.Murderer .. ("</font> is currently using <font color=\"rgb(\050\053\053, \048, \048)\">" .. (R[q.Murderer].Effect .. "</font> Perk!"))), 5)
		end
	end)
	iK:CreateToggle("Auto Notify Murderer\'s Perk", function(o)
		if o then
			N.RoleStates["Auto Notify Murderer\'s Perk"] = function()
				for o, Y in pairs(R) do
					if Y.Role == "Murderer" then
						I("<font color=\"rgb(\050\053\053, \048, \048)\">" .. (o .. ("</font> is currently using <font color=\"rgb(\050\053\053, \048, \048)\">" .. (Y.Effect .. "</font> Perk!"))), 5)
					end
				end
			end
		else
			N.RoleStates["Auto Notify Murderer\'s Perk"] = nil
		end
	end)
	bK:CreateSection("Cham")
	bK:CreateToggle("Cham Everyone", function(o)
		N.ChamEveryone = o
		if o then
			local function o(o)
				local Y = N.ESPFolder:FindFirstChild(o.Name) or Instance.new("Folder")
				local j = Y:FindFirstChild("Cham") or Instance.new("Folder")
				Y.Name = o.Name
				Y.Parent = N.ESPFolder
				j.Name = "Cham"
				j.Parent = Y
				if o and o.Character then
					for Y, Z in pairs(o.Character:GetChildren()) do
						if Z.Name ~= "HumanoidRootPart" and Z:IsA("BasePart") then
							local Y = j:FindFirstChild(Z.Name) or Instance.new("BoxHandleAdornment")
							local t = gK(o)
							Y.Name = Z.Name
							Y.Parent = j
							Y.Size = Z.Size
							Y.Adornee = Z
							Y.Color3 = t.Color
							Y.AlwaysOnTop = true
							Y.Transparency = .55
							Y.ZIndex = 10
						end
					end
				end
			end
			N.RoleStates["Cham Connection \049"] = function()
				task.wait()
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g then
						pcall(o, j)
					end
				end
			end
			x:MakeTask("Cham Connection \050", O.PlayerAdded, function(Y)
				task.wait(2.5)
				x:MakeTask("Cham Connection " .. (Y.Name .. " Giver"), Y.CharacterAdded, function()
					task.wait(2.5)
					pcall(o, Y);
					(coroutine.wrap(function()
						repeat
							task.wait()
						until Y and (Y.Character and (Y.Character:FindFirstChild("Humanoid") and Y.Character.Humanoid.Health <= 0)) or not Y or not Y.Character or not Y.Character:FindFirstChild("Humanoid") or not Y.Character:FindFirstChild("Head") or not N.ChamEveryone
						local o = N.ESPFolder:FindFirstChild(Y.Name)
						if o and o:FindFirstChild("Cham") then
							o.Cham:Destroy()
						end
					end))()
				end)
				pcall(o, Y);
				(coroutine.wrap(function()
					repeat
						task.wait()
					until Y and (Y.Character and (Y.Character:FindFirstChild("Humanoid") and Y.Character.Humanoid.Health <= 0)) or not Y or not Y.Character or not Y.Character:FindFirstChild("Humanoid") or not Y.Character:FindFirstChild("Head") or not N.ChamEveryone
					local o = N.ESPFolder:FindFirstChild(Y.Name)
					if o and o:FindFirstChild("Cham") then
						o.Cham:Destroy()
					end
				end))()
			end)
			x:MakeTask("Cham Connection \051", A.Remotes.Gameplay.RoundEndFade.OnClientEvent, function()
				task.wait(10)
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g then
						pcall(o, j)
					end
				end
			end)
			x:MakeTask("Cham Connection \052", A.UpdatePlayerData.OnClientEvent, function()
				task.wait(1)
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g then
						pcall(o, j)
					end
				end
			end)
			for Y, j in pairs(O:GetPlayers()) do
				if j.Name ~= g then
					pcall(o, j)
					x:MakeTask("Cham Connection " .. (j.Name .. " Giver"), j.CharacterAdded, function()
						task.wait(2.5)
						pcall(o, j);
						(coroutine.wrap(function()
							repeat
								task.wait()
							until j and (j.Character and (j.Character:FindFirstChild("Humanoid") and j.Character.Humanoid.Health <= 0)) or not j or not j.Character or not j.Character:FindFirstChild("Humanoid") or not j.Character:FindFirstChild("Head") or not N.ChamEveryone
							local o = N.ESPFolder:FindFirstChild(j.Name)
							if o and o:FindFirstChild("Cham") then
								o.Cham:Destroy()
							end
						end))()
					end);
					(coroutine.wrap(function()
						repeat
							task.wait()
						until j and (j.Character and (j.Character:FindFirstChild("Humanoid") and j.Character.Humanoid.Health <= 0)) or not j or not j.Character or not j.Character:FindFirstChild("Humanoid") or not j.Character:FindFirstChild("Head") or not N.ChamEveryone
						local o = N.ESPFolder:FindFirstChild(j.Name)
						if o and o:FindFirstChild("Cham") then
							o.Cham:Destroy()
						end
					end))()
				end
			end
		else
			N.RoleStates["Cham Connection \049"] = nil
			x:RemoveTask("Cham Connection \050")
			x:RemoveTask("Cham Connection \051")
			x:RemoveTask("Cham Connection \052")
		end
	end)
	bK:CreateToggle("Cham Dropped Gun", function(o)
		if o then
			local function o(o)
				local Y = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
				local j = Y:FindFirstChild("Cham") or Instance.new("Folder")
				local Z = j:FindFirstChild("Humanoid") or Instance.new("BoxHandleAdornment")
				Y.Name = "Dropped Gun"
				Y.Parent = N.ESPFolder
				j.Name = "Cham"
				j.Parent = Y
				Z.Name = "Humanoid"
				Z.Parent = j
				Z.Size = o.Size
				Z.Adornee = o
				Z.Color3 = tK("Sheriff")
				Z.AlwaysOnTop = true
				Z.Transparency = .55
				Z.ZIndex = 10
			end
			x:MakeTask("Cham Dropped Gun Connection", workspace.ChildAdded, function(Y)
				if Y.Name == "GunDrop" then
					o(Y)
				end
			end)
			x:MakeTask("Cham Dropped Gun Connection \049", workspace.ChildRemoved, function(o)
				if o.Name == "GunDrop" then
					local o = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
					local Y = o:FindFirstChild("Cham") or Instance.new("Folder")
					local j = Y:FindFirstChild("Humanoid") or Instance.new("BoxHandleAdornment")
					o.Name = "Dropped Gun"
					o.Parent = N.ESPFolder
					Y.Name = "Cham"
					Y.Parent = o
					j.Name = "Humanoid"
					j.Parent = Y
					j.Adornee = nil
				end
			end)
			if workspace:FindFirstChild("GunDrop") then
				o(workspace.GunDrop)
			end
		else
			x:RemoveTask("Cham Dropped Gun Connection")
			x:RemoveTask("Cham Dropped Gun Connection \049")
			local o = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
			local Y = o:FindFirstChild("Cham") or Instance.new("Folder")
			local j = Y:FindFirstChild("Humanoid") or Instance.new("BoxHandleAdornment")
			o.Name = "Dropped Gun"
			o.Parent = N.ESPFolder
			Y.Name = "Cham"
			Y.Parent = o
			j.Name = "Humanoid"
			j.Parent = Y
			j.Adornee = nil
		end
	end)
	bK:CreateToggle("Cham Coins", function(o)
		if o then
			local function o(o)
				local Y = o:FindFirstChild("CoinVisual")
				if Y and not o:FindFirstChild("Cham") then
					local Y = Instance.new("BoxHandleAdornment")
					Y.Name = "Cham"
					Y.Parent = o
					Y.Size = Vector3.new(1.5, 1.5, 1.5)
					Y.Adornee = o
					Y.Color3 = tK("Innocent")
					Y.AlwaysOnTop = true
					Y.Transparency = .55
					Y.ZIndex = 10
				end
			end
			x:MakeTask("Cham Coins", G.RenderStepped, function()
				local Y = ZK()
				if Y and Y:FindFirstChild("CoinContainer") then
					for Y, j in pairs(Y.CoinContainer:GetChildren()) do
						if j.Name == "Coin_Server" then
							o(j)
						end
					end
				end
			end)
		else
			local o = ZK()
			x:RemoveTask("Cham Coins")
			if o and o:FindFirstChild("CoinContainer") then
				for o, Y in pairs(o.CoinContainer:GetChildren()) do
					if Y.Name == "Coin_Server" and Y:FindFirstChild("Cham") then
						Y.Cham:Destroy()
					end
				end
			end
		end
	end)
	bK:CreateSection("ESP")
	bK:CreateToggle("ESP Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					dK(Y)
				end
			end
			x:MakeTask("ESP Handler \049", O.PlayerAdded, dK)
			x:MakeTask("ESP Handler \050", O.PlayerRemoving, function(o)
				if a.ESP[o.Name] then
					a.ESP[o.Name].Text:Remove()
					a.ESP[o.Name].Service:Disconnect()
					a.ESP[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("ESP Handler \049")
			x:RemoveTask("ESP Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.ESP[Y.Name] then
					a.ESP[Y.Name].Text:Remove()
					a.ESP[Y.Name].Service:Disconnect()
					a.ESP[Y.Name] = nil
				end
			end
		end
	end)
	bK:CreateToggle("ESP Dropped Gun", function(o)
		if o then
			local function o(o)
				local Y = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
				local j = Y:FindFirstChild("ESP") or Instance.new("Folder")
				local Z = j:FindFirstChild("Humanoid") or Instance.new("BillboardGui")
				local t = Z:FindFirstChild("Text") or Instance.new("TextLabel")
				Y.Name = "Dropped Gun"
				Y.Parent = N.ESPFolder
				j.Name = "ESP"
				j.Parent = Y
				Z.Name = "Humanoid"
				Z.Parent = j
				Z.AlwaysOnTop = true
				Z.ExtentsOffset = Vector3.new(0, 5.5, 0)
				Z.Size = UDim2.new(0, 200, 0, 50)
				Z.Adornee = o
				t.Name = "Text"
				t.Parent = Z
				t.BackgroundTransparency = 1
				t.Size = UDim2.new(0, 200, 0, 50)
				t.Font = Enum.Font.GothamBold
				t.Text = "Dropped Gun"
				t.TextSize = 13
				t.TextColor3 = tK("Sheriff")
			end
			x:MakeTask("ESP Dropped Gun Connection", workspace.ChildAdded, function(Y)
				if Y.Name == "GunDrop" then
					o(Y)
				end
			end)
			x:MakeTask("ESP Dropped Gun Connection \049", workspace.ChildRemoved, function(o)
				if o.Name == "GunDrop" then
					local o = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
					o:Destroy()
				end
			end)
			if workspace:FindFirstChild("GunDrop") then
				o(workspace.GunDrop)
			end
		else
			x:RemoveTask("ESP Dropped Gun Connection")
			x:RemoveTask("ESP Dropped Gun Connection \049")
			local o = N.ESPFolder:FindFirstChild("Dropped Gun") or Instance.new("Folder")
			o:Destroy()
		end
	end)
	bK:CreateToggle("ESP Coins", function(o)
		if o then
			local function o(o)
				local Y = o:FindFirstChild("CoinVisual")
				if Y and not o:FindFirstChild("ESP") then
					local j = Instance.new("BillboardGui")
					local Z = Instance.new("TextLabel")
					j.Name = "ESP"
					j.Parent = o
					j.AlwaysOnTop = true
					j.ExtentsOffset = Vector3.new(0, 5.5, 0)
					j.Size = UDim2.new(0, 200, 0, 50)
					j.Adornee = o
					Z.Name = "Text"
					Z.Parent = j
					Z.BackgroundTransparency = 1
					Z.Size = UDim2.new(0, 200, 0, 50)
					Z.Font = Enum.Font.GothamBold
					Z.Text = Y and (Y.ClassName ~= "MeshPart" and "Coin") or "Egg"
					Z.TextSize = 13
					Z.TextColor3 = tK("Innocent")
				end
			end
			x:MakeTask("ESP Coins", G.RenderStepped, function()
				local Y = ZK()
				if Y and Y:FindFirstChild("CoinContainer") then
					for Y, j in pairs(Y.CoinContainer:GetChildren()) do
						if j.Name == "Coin_Server" then
							o(j)
						end
					end
				end
			end)
		else
			local o = ZK()
			x:RemoveTask("ESP Coins")
			if o and o:FindFirstChild("CoinContainer") then
				for o, Y in pairs(o.CoinContainer:GetChildren()) do
					if Y.Name == "Coin_Server" and Y:FindFirstChild("ESP") then
						Y.ESP:Destroy()
					end
				end
			end
		end
	end)
	bK:CreateSection("ESP Box")
	bK:CreateToggle("ESP Box Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					cK(Y)
				end
			end
			x:MakeTask("Boxes Handler \049", O.PlayerAdded, cK)
			x:MakeTask("Boxes Handler \050", O.PlayerRemoving, function(o)
				if a.Box[o.Name] then
					a.Box[o.Name].TopLeft:Remove()
					a.Box[o.Name].TopRight:Remove()
					a.Box[o.Name].BottomLeft:Remove()
					a.Box[o.Name].BottomRight:Remove()
					a.Box[o.Name].Service:Disconnect()
					a.Box[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("Boxes Handler \049")
			x:RemoveTask("Boxes Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.Box[Y.Name] then
					a.Box[Y.Name].TopLeft:Remove()
					a.Box[Y.Name].TopRight:Remove()
					a.Box[Y.Name].BottomLeft:Remove()
					a.Box[Y.Name].BottomRight:Remove()
					a.Box[Y.Name].Service:Disconnect()
					a.Box[Y.Name] = nil
				end
			end
		end
	end)
	bK:CreateSection("Tracer")
	bK:CreateToggle("Tracer Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					FK(Y)
				end
			end
			x:MakeTask("Tracer Handler \049", O.PlayerAdded, FK)
			x:MakeTask("Tracer Handler \050", O.PlayerRemoving, function(o)
				if a.Tracer[o.Name] then
					a.Tracer[o.Name].Line:Remove()
					a.Tracer[o.Name].Service:Disconnect()
					a.Tracer[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("Tracer Handler \049")
			x:RemoveTask("Tracer Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.Tracer[Y.Name] then
					a.Tracer[Y.Name].Line:Remove()
					a.Tracer[Y.Name].Service:Disconnect()
					a.Tracer[Y.Name] = nil
				end
			end
		end
	end)
	lK:CreateSection("Fe Emotes")
	lK:CreateButton("Sit", function()
		A.Remotes.Misc.PlayEmote:Fire("sit")
	end)
	lK:CreateButton("Ninja", function()
		A.Remotes.Misc.PlayEmote:Fire("ninja")
	end)
	lK:CreateButton("Dab", function()
		A.Remotes.Misc.PlayEmote:Fire("dab")
	end)
	lK:CreateButton("Zen", function()
		A.Remotes.Misc.PlayEmote:Fire("zen")
	end)
	lK:CreateButton("Floss", function()
		A.Remotes.Misc.PlayEmote:Fire("floss")
	end)
	lK:CreateButton("Headless", function()
		A.Remotes.Misc.PlayEmote:Fire("headless")
	end)
	lK:CreateButton("Zombie", function()
		A.Remotes.Misc.PlayEmote:Fire("zombie")
	end)
	lK:CreateSection("Default Emotes:")
	lK:CreateButton("Wave", function()
		A.Remotes.Misc.PlayEmote:Fire("wave")
	end)
	lK:CreateButton("Cheer", function()
		A.Remotes.Misc.PlayEmote:Fire("cheer")
	end)
	lK:CreateButton("Laugh", function()
		A.Remotes.Misc.PlayEmote:Fire("laugh")
	end)
	lK:CreateSection("Free")
	lK:CreateToggle("Seizure", function(o)
		N.Seizure = o
		if o then
			(coroutine.wrap(function()
				while N.Seizure do
					task.wait(.2)
					A.Remotes.Misc.PlayEmote:Fire(U[math.random(1, # U)])
				end
			end))()
		end
	end)
	kK:CreateLabel("Trap Abuser:")
	kK:CreateToggle("Loop Trap Everyone", function(o)
		if o then
			if u("Trap") then
				x:SetValue("Loop Trap", true)
				x:MakeTask("Loop Trap", G.Stepped, function()
					if x:GetValue("Loop Trap") then
						for o, Y in pairs(O:GetPlayers()) do
							if Y.Name ~= g and x:GetValue("Loop Trap") then
								local o = h(Y)
								if o then
									z.Function(A.TrapSystem.PlaceTrap, o.CFrame)
								end
							end
						end
					end
				end)
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		else
			x:SetNil("Loop Trap")
			x:RemoveTask("Loop Trap")
		end
	end)
	kK:CreateToggle("Loop Trap Murderer", function(o)
		if o then
			if u("Trap") then
				x:SetValue("Loop Trap Murderer", true)
				x:MakeTask("Loop Trap Murderer", G.Stepped, function()
					pcall(function()
						if x:GetValue("Loop Trap Murderer") then
							local o = V(q.Murderer)
							if o and (l(o) and x:GetValue("Loop Trap Murderer")) then
								z.Function(A.TrapSystem.PlaceTrap, (h(o)).CFrame)
							end
						end
					end)
				end)
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		else
			x:SetNil("Loop Trap Murderer")
			x:RemoveTask("Loop Trap Murderer")
		end
	end)
	kK:CreateToggle("Loop Trap Sheriff", function(o)
		if o then
			if u("Trap") then
				x:SetValue("Loop Trap Sheriff", true)
				x:MakeTask("Loop Trap Sheriff", G.Stepped, function()
					pcall(function()
						if x:GetValue("Loop Trap Sheriff") then
							local o = V(q.Sheriff)
							if o and (l(o) and x:GetValue("Loop Trap Sheriff")) then
								z.Function(A.TrapSystem.PlaceTrap, (h(o)).CFrame)
							end
						end
					end)
				end)
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		else
			x:SetNil("Loop Trap Sheriff")
			x:RemoveTask("Loop Trap Sheriff")
		end
	end)
	kK:CreateToggle("Loop Trap Player", function(o)
		if o then
			if u("Trap") then
				x:SetValue("Loop Trap Player", true)
				x:MakeTask("Loop Trap Player", G.Stepped, function()
					if x:GetValue("Loop Trap Player") then
						local o = h(N.LoopTrapPlayer)
						if o then
							z.Function(A.TrapSystem.PlaceTrap, o.CFrame)
						end
					end
				end)
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		else
			x:SetNil("Loop Trap Player")
			x:RemoveTask("Loop Trap Player")
		end
	end)
	kK:CreatePlayerDropdown("Select Player", function(o)
		N.LoopTrapPlayer = o
	end)
	kK:CreatePlayerDropdown("Trap Player", function(o)
		if u("Trap") then
			if o and o.Character then
				z.Function(A.TrapSystem.PlaceTrap, (h(o)).CFrame)
			end
		else
			B("Uh oh! you need Trap Perks for this!")
		end
	end)
	kK:CreateButton("Trap Everyone", function()
		if u("Trap") then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and Y.Character then
					z.Function(A.TrapSystem.PlaceTrap, (h(Y)).CFrame)
				end
			end
		else
			B("Uh oh! you need Trap Perks for this!")
		end
	end)
	kK:CreateButton("Trap Murderer", function()
		if u("Trap") then
			local o = V(q.Murderer)
			if o and (l(o) and o.Character) then
				z.Function(A.TrapSystem.PlaceTrap, (h(o)).CFrame)
			end
		else
			B("Uh oh! you need Trap Perks for this!")
		end
	end)
	kK:CreateButton("Trap Sheriff", function()
		if u("Trap") then
			local o = V(q.Sheriff)
			if o and (l(o) and o.Character) then
				z.Function(A.TrapSystem.PlaceTrap, (h(o)).CFrame)
			end
		else
			B("Uh oh! you need Trap Perks for this!")
		end
	end)
	kK:CreateSection("Without Perks")
	kK:CreateToggle("Fake Knife", function(o)
		if o then
			pcall(function()
				local o = Instance.new("Tool")
				local Y = D.Character.KnifeDisplay
				local j = Y.Mesh:Clone()
				local Z = Instance.new("Part")
				local t = false
				local K = {
					Instance.new("Animation");
					Instance.new("Animation")
				}
				K[1].AnimationId = "rbxassetid://\050\052\054\055\053\054\055\055\053\048"
				K[2].AnimationId = "rbxassetid://\049\057\053\055\056\057\048\053\051\056"
				o.Name = "Fake Knife"
				o.RequiresHandle = true
				o.GripPos = Vector3.new(0, -1, 0)
				o.Activated:Connect(function()
					if not t then
						t = true;
						(D.Character.Humanoid:LoadAnimation(K[math.random(1, 2)])):Play()
						task.wait(1)
						t = false
					end
				end)
				Z.Name = "Handle"
				Z.Parent = o
				Z.Size = Y.Size
				j.Parent = Z
				o.Parent = D.Character
			end)
		else
			LK("Fake Knife")
		end
	end)
	if y then
		nK:CreateSection("Survival")
		nK:CreateToggle("Auto Dodge Knives", function(o)
			if o then
				x:MakeTask("Auto Dodge Knives", workspace.ChildAdded, function(o)
					if o.Name == "ThrowingKnife" and (o:IsA("Model") and v ~= "Murderer") then
						local Y = false
						while not Y and o do
							task.wait()
							local j = h(D)
							if j then
								local Z = (o:GetPivot()).Position
								local t = (j.Position - Z).Magnitude
								if t < 15 then
									local o = j.Position.X - Z.X
									local t = j.Position.Y - Z.Y
									if t < 4.35 then
										j.CFrame = j.CFrame * CFrame.new(- o * 3, 0, 0)
										Y = true
									end
								end
							end
						end
					end
				end)
			else
				x:RemoveTask("Auto Dodge Knives")
			end
		end)
		nK:CreateSection("Toy Modification")
		nK:CreateToggle("Auto Prank Bomb Clutch", function(o)
			N.AutoPrankBombClutch = o
		end)
		nK:CreateToggle("Infinite Prank Bomb", function(o)
			if o then
				x:MakeTask("Infinite Prank Bomb", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("FakeBomb")) then
						(getsenv(D.Character.FakeBomb.Client)).firerate = 0
					end
				end)
			else
				x:RemoveTask("Infinite Prank Bomb")
				if D and (D.Character and D.Character:FindFirstChild("FakeBomb")) then
					(getsenv(D.Character.FakeBomb.Client)).firerate = 22
				end
			end
		end)
		nK:CreateToggle("No Prank Bomb Cooldown", function(o)
			if o then
				x:MakeTask("No Prank Bomb Cooldown", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("FakeBomb")) then
						(getsenv(D.Character.FakeBomb.Client)).check = true
					end
				end)
			else
				x:RemoveTask("No Prank Bomb Cooldown")
			end
		end)
		nK:CreateSection("Troll")
		nK:CreateToggle("Force Sheriff To Spam Shoot", function(o)
			if o then
				x:MakeTask("Force Sheriff To Spam Shoot", G.Stepped, function()
					local o = V(q.Sheriff)
					if o and (o.Name ~= g and o.Character) then
						for o, Y in pairs(o.Character:GetChildren()) do
							if Y.Name == "Gun" and Y:IsA("Tool") then
								z.Function(Y.KnifeServer.ShootGun, 0, Vector3.new(), "AH")
							end
						end
						for o, Y in pairs(o.Backpack:GetChildren()) do
							if Y.Name == "Gun" and Y:IsA("Tool") then
								z.Function(Y.KnifeServer.ShootGun, 0, Vector3.new(), "AH")
							end
						end
					end
				end)
			else
				x:RemoveTask("Force Sheriff To Spam Shoot")
			end
		end)
		nK:CreateButton("Force Sheriff to Shoot", function()
			local o = V(q.Sheriff)
			if o and (o.Name ~= g and o.Character) then
				for o, Y in pairs(o.Character:GetChildren()) do
					if Y.Name == "Gun" and Y:IsA("Tool") then
						z.Function(Y.KnifeServer.ShootGun, 0, Vector3.new(), "AH")
					end
				end
				for o, Y in pairs(o.Backpack:GetChildren()) do
					if Y.Name == "Gun" and Y:IsA("Tool") then
						z.Function(Y.KnifeServer.ShootGun, 0, Vector3.new(), "AH")
					end
				end
			end
		end)
		nK:CreateSection("Spray Paint")
		yK(nK, "Give Fake Knife", 15, function(o, Y)
			z.Event(o.Remote, 15093138669, Enum.NormalId.Right, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
			z.Event(o.Remote, 15093138669, Enum.NormalId.Right, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
			z.Event(o.Remote, 15093138669, Enum.NormalId.Right, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
			z.Event(o.Remote, 15096522641, Enum.NormalId.Left, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
			z.Event(o.Remote, 15096522641, Enum.NormalId.Left, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
			z.Event(o.Remote, 15096522641, Enum.NormalId.Left, 3, Y.Character.RightHand, Y.Character.RightHand.CFrame * CFrame.new(0, 0, 0))
		end)
		nK:CreateParagraph("Ghost", "This feature only last \049\053 seconds.")
		nK:CreateButton("Ghost Yourself", function()
			sK(function(o)
				local Y = h(D)
				local j = Y.CFrame
				Y.CFrame = CFrame.new(-110, 140, 10)
				z.Event(o.Remote, 0, Enum.NormalId.Front, 2500, Y, CFrame.new(0, -25000, 0))
				z.Event(o.Remote, 0, Enum.NormalId.Front, 2500, Y, CFrame.new(0, 25000, 0))
				if TCF then
					o.Parent = D.Backpack
				end
				repeat
					task.wait()
				until workspace:FindFirstChild("Spray")
				workspace.Spray:Destroy()
				repeat
					task.wait()
				until workspace:FindFirstChild("Spray")
				workspace.Spray:Destroy()
				Y.CFrame = j
			end)
		end)
		yK(nK, "Sus Fling", 15, function(o, Y)
			z.Event(o.Remote, 0, Enum.NormalId.Back, 10, Y.Character.LeftHand, (h(Y)).CFrame * CFrame.new(10, 5, 0))
		end)
	else
		nK:CreateParagraph("Note", "This channel is for <font color=\"rgb(\050\053\053, \048, \048)\">Content Creators</font> only, if you want to get access here you should showcase <font color=\"rgb(\048, \050\053\053, \048)\">Symphony Hub</font> in <font color=\"rgb(\050\053\053, \048, \048)\">YouTube</font> first and verify into our <font color=\"rgb(\048, \050\053\053, \048)\">Discord Server</font>")
	end
	if b then
		nK:CreateSection("Content Creators")
		for o = 1, # b, 1 do
			local Y = b[o]
			nK:CreateProfileMessage("rbxthumb://type=AvatarHeadShot&id=" .. (Y.Id .. "&w=\049\048\048&h=\049\048\048"), Y.Username .. (" [ <font color=\"rgb(\048, \050\053\053, \048)\">" .. (Y.DisplayName .. "</font> ]")), "# " .. o)
		end
	end
	if H then
		wK:CreateSection("FPS Booster")
		wK:CreateButton("Fps Boost", function()
			for o, Y in pairs(workspace:GetDescendants()) do
				pcall(function()
					if Y:IsA("BasePart") and (not Y.Parent:FindFirstChild("Humanoid") and not Y.Parent.Parent:FindFirstChild("Humanoid")) then
						Y.Material = Enum.Material.SmoothPlastic
						if Y:IsA("Texture") then
							Y:Destroy()
						end
					end
				end)
			end
		end)
		wK:CreateButton("Less Lag", function()
			local o = workspace:FindFirstChildOfClass("Terrain")
			o.WaterWaveSize = 0
			o.WaterWaveSpeed = 0
			o.WaterReflectance = 0
			o.WaterTransparency = 0
			C.GlobalShadows = false
			C.FogEnd = 9000000000
		end)
		wK:CreateSection("Statistics")
		wK:CreateToggle("Auto Delete Dead Body", function(o)
			N.AutoDeleteDeadBody = o
			if o then
				(coroutine.wrap(function()
					while N.AutoDeleteDeadBody do
						task.wait(.25)
						pcall(function()
							if workspace:FindFirstChild("Raggy") then
								workspace.Raggy:Destroy()
							end
						end)
					end
					return coroutine.yield("...")
				end))()
			end
		end)
		wK:CreateToggle("Disable Trap", function(o)
			N.DisableTrap = o
			if o then
				(coroutine.wrap(function()
					while N.DisableTrap do
						task.wait(.25)
						pcall(function()
							for o, Y in pairs(O:GetPlayers()) do
								if Y.Name ~= g then
									for o, Y in pairs(workspace[Y.Name]:GetChildren()) do
										if Y.Name == "Trap" and Y:IsA("Model") then
											Y:Destroy()
										end
									end
								end
							end
						end)
					end
					return coroutine.yield("...")
				end))()
			end
		end)
		wK:CreateParagraph("Disable Trap!", "only affect others trap perk")
		wK:CreateToggle("Btools", function(o)
			if o then
				local o = Instance.new("HopperBin")
				local Y = Instance.new("HopperBin")
				local j = Instance.new("HopperBin")
				local Z = Instance.new("HopperBin")
				local t = Instance.new("HopperBin")
				o.BinType = "Clone"
				o.Parent = D.Backpack
				Y.BinType = "GameTool"
				Y.Parent = D.Backpack
				j.BinType = "Hammer"
				j.Parent = D.Backpack
				Z.BinType = "Script"
				Z.Parent = D.Backpack
				t.BinType = "Grab"
				t.Parent = D.Backpack
				N.Premium.Btoolspack = {
					o,
					Y;
					j,
					Z,
					t
				}
			else
				for o = 1, # N.Premium.Btoolspack, 1 do
					N.Premium.Btoolspack[o]:Destroy()
				end
			end
		end)
		wK:CreateButton("F\051X Btools", function()
			(loadstring((game:GetObjects("rbxassetid://\054\054\057\053\054\052\052\050\057\057"))[1].Source))()
		end)
		wK:CreateButton("Replicate Toys", function()
			for o = 1, # K, 1 do
				z.Function(A.Remotes.Extras.ReplicateToy, K[o])
				task.wait()
				z.Function(A.Remotes.Extras.ReplicateToy, K[o])
			end
		end)
		wK:CreateButton("Get All Emotes and Toys", function()
			local o = {}
			for Y, j in pairs(U) do
				if j ~= "wave" and (j ~= "cheer" and j ~= "laugh") then
					table.insert(o, j)
				end
			end;
			(require(j)).GeneratePage(o, D.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"), "Symphony Hub\'s Premium Emotes \049/\051");
			(require(j)).GeneratePage({
				"Teddy";
				"IceCream";
				"ChocolateMilk";
				"Fireflies";
				"Pizza";
				"CandyToy\050\048\050\050",
				"FakeBomb"
			}, D.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"), "Symphony Hub\'s Premium Emotes \050/\051");
			(require(j)).GeneratePage({
				"GGSign",
				"EggToy\050\048\050\051",
				"SprayPaint"
			}, D.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"), "Symphony Hub\'s Premium Emotes \051/\051")
		end)
		wK:CreateButton("Force Spawn", function()
			local o = h(D)
			N.ForceSpawn = true
			N.ForceSpawnCFrame = o.CFrame
			D.Character.Humanoid.Health = 0
		end)
		wK:CreateToggle("Auto Rotate", function(o)
			D.Character.Humanoid.AutoRotate = not o
		end)
		wK:CreateToggle("Teleport Tool", function(o)
			if o then
				local o = Instance.new("Tool")
				o.Name = "Teleport Tool"
				o.RequiresHandle = false
				o.Parent = D.Backpack
				o.Activated:Connect(function()
					m(D, "CFrame", e.Hit)
				end)
			else
				LK("Teleport Tool")
			end
		end)
		wK:CreateToggle("Toggle Anti-AFK", function(o)
			if o then
				x:MakeTask("Anti AFK", D.Idled, function()
					S:ClickButton2(Vector2.new())
				end)
			else
				x:RemoveTask("Anti AFK")
			end
		end)
		wK:CreateToggle("Toggle Anti Fling", function(o)
			N.AntiFling = o
			if o then
				x:MakeTask("Anti Fling Handler", G.Heartbeat, function()
					if N.AntiFling then
						pcall(function()
							for o, Y in pairs(O:GetPlayers()) do
								if Y.Name ~= g and N.AntiFling then
									local o = h(Y)
									if Y.Character and o then
										if o.AssemblyAngularVelocity.Magnitude > 50 or o.AssemblyLinearVelocity.Magnitude > 100 then
											for o, Y in pairs(Y.Character:GetChildren()) do
												if Y:IsA("BasePart") then
													Y.CanCollide = false
													Y.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
													Y.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
													Y.CustomPhysicalProperties = PhysicalProperties.new(.1, .1, .1)
												end
											end
										end
									end
								end
							end
							if D.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or D.Character.PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
								D.Character.PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								D.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								D.Character.PrimaryPart.CFrame = N.LastPosition
							elseif D.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or D.Character.PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
								N.LastPosition = D.Character.PrimaryPart.CFrame + CFame.new(0, 1, 0)
							end
						end)
					end
				end)
			else
				x:RemoveTask("Anti Fling Handler")
			end
		end)
		wK:CreateToggle("Toggle Anti Kick", function(o)
			N.AntiKick = o
		end)
		wK:CreateToggle("Toggle Anti Void", function(o)
			if o then
				x:MakeTask("Anti Void", G.Heartbeat, function()
					pcall(function()
						local o = (h(D)).CFrame.Y
						if Y <= -465 then
							D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end
					end)
				end)
			else
				x:RemoveTask("Anti Void")
			end
		end)
		wK:CreateToggle("Toggle Double Jump", function(o)
			if o then
				x:SetValue("LastJump", false)
				task.spawn(function()
					x:MakeTask("Double Jump", t.JumpRequest, function()
						pcall(function()
							if not x:GetValue("Last Jump") then
								x:SetValue("Last Jump", true)
								D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
							end
						end)
					end)
				end)
				D.Character.Humanoid.StateChanged:Connect(function(o, Y)
					if Y == Enum.HumanoidStateType.Landed then
						x:SetValue("Last Jump", false)
					elseif Y == Enum.HumanoidStateType.Jumping then
						x:SetValue("Last Jump", false)
					end
				end)
				x:MakeTask("Double Jump Character", D.CharacterAdded, function()
					task.wait(.25)
					D.Character.Humanoid.StateChanged:Connect(function(o, Y)
						if Y == Enum.HumanoidStateType.Landed then
							x:SetValue("Last Jump", false)
						elseif Y == Enum.HumanoidStateType.Jumping then
							x:SetValue("Last Jump", false)
						end
					end)
				end)
			else
				x:RemoveTask("Double Jump Character")
				x:RemoveTask("Double Jump")
				x:SetNil("Last Jump")
			end
		end)
		local Z = wK:CreateSlider("Fov", 1, 100, 75, function(o)
			workspace.CurrentCamera.FieldOfView = tonumber(o)
		end)
		wK:CreateButton("Reset Fov", function()
			Z:SetValue(75)
			workspace.CurrentCamera.FieldOfView = 75
		end)
		wK:CreateToggle("Two Lives", function(o)
			N.SecondLife = o
			if o then
				(coroutine.wrap(function()
					while N.SecondLife do
						wait()
						pcall(function()
							local o = D.Character.Humanoid
							if o.Health <= 0 then
								o:ChangeState(11)
								wait(2.5)
								o.Health = 100
								wait(1)
								o:ChangeState(1)
							end
						end)
					end
				end))()
			end
		end)
		wK:CreateParagraph("Two Lives!", "makes you invincible when you shooted random Innocent or you got shooted by sheriff or or you got thrown/stabbed a knife by the murderer, This only works once every round this might have a chance to make this won\'t work.")
		wK:CreateToggle("Float", function(o)
			N.Float = o
			c.CanCollide = o
			if o then
				(coroutine.wrap(function()
					while N.Float do
						task.wait()
						pcall(function()
							c.CFrame = (h(D)).CFrame * CFrame.new(0, -3, 0)
						end)
					end
					return coroutine.yield("...")
				end))()
			end
		end)
		wK:CreateButton("Fake Dead", function()
			if D.Character then
				local o = h(D)
				D.Character.Humanoid.Sit = true
				o.CFrame = o.CFrame * CFrame.new(0, 3.5, 0)
			end
		end)
		wK:CreateToggle("Toggle Spam Chat", function(Y)
			N.Loop = Y
			if Y then
				(coroutine.wrap(function()
					while N.Loop do
						task.wait(.25)
						pcall(function()
							task.wait(N.LoopDelay)
							z.Event(o, N.LoopText, N.AlwaysAliveChat and "alive" or "normalchat")
						end)
					end
					return coroutine.yield("...")
				end))()
			end
		end)
		wK:CreateTextbox("Text to Spam", function(o)
			N.LoopText = tostring(o)
		end)
		local r = wK:CreateSlider("Text to Spam Delay", 1, 100, 1, function(o)
			N.SpamDelay = tonumber(o) and tonumber(o) / 100 or .1
		end)
		wK:CreateToggle("Toggle Hitbox", function(o)
			if o then
				x:MakeTask("Hitbox", G.RenderStepped, function()
					for o, Y in pairs(O:GetPlayers()) do
						if Y.Name ~= g and Y.Character then
							Y.Character.HumanoidRootPart.Size = Vector3.new(N.HitboxSize, N.HitboxSize, N.HitboxSize)
							Y.Character.HumanoidRootPart.Transparency = .4
							Y.Character.HumanoidRootPart.CanCollide = false
						end
					end
				end)
			else
				x:RemoveTask("Hitbox")
				for o, Y in pairs(O:GetPlayers()) do
					if Y.Name ~= g and Y.Character then
						Y.Character.HumanoidRootPart.Size = Vector3.new(2, 1, 1)
						Y.Character.HumanoidRootPart.Transparency = 1
						Y.Character.HumanoidRootPart.CanCollide = true
					end
				end
			end
		end)
		local T = wK:CreateSlider("Hitbox Size", 1, 25, 5, function(o)
			N.HitboxSize = tonumber(o) or 5
		end)
		wK:CreateButton("God Mode", function()
			local o = workspace.CurrentCamera.CFrame
			local Y = D.Character
			local j = Y.Humanoid
			local Z = j:Clone()
			Z.Parent = D.Character
			D.Character = nil
			Z.Name = "Humanoid"
			Z.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			Z.Health = 100
			Z:SetStateEnabled(15, false)
			Z:SetStateEnabled(1, false)
			Z:SetStateEnabled(0, false)
			Z.BreakJointsOnDeath = true
			j:Destroy()
			D.Character = Y
			workspace.CurrentCamera.CameraSubject = Z
			workspace.CurrentCamera.CFrame = o
			local t = Y.Animate
			t.Disabled = true
			task.wait()
			t.Disabled = false
			D.CharacterAdded:Wait()
		end)
		wK:CreateParagraph("God Mode!", "was like similar to Two Lives but different.")
		wK:CreateToggle("Aim Lock Murderer", function(o)
			if o then
				x:SetValue("Aiming", true)
				x:MakeTask("Aim Lock Murderer", G.Heartbeat, function()
					if x:GetValue("Aiming") then
						pcall(function()
							local o = V(q.Murderer)
							if h(o) and (l(o) and x:GetValue("Aiming")) then
								local Y = (h(o)).Position
								workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Y)
							end
						end)
					end
				end)
			else
				x:SetNil("Aiming")
			end
		end)
		wK:CreateKeybind("Place Trap", Enum.KeyCode.R, function()
			if u("Trap") then
				z.Function(A.TrapSystem.PlaceTrap, (h(D)).CFrame)
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		end)
		wK:CreateToggle("Trap Aura", function(o)
			if o then
				if u("Trap") then
					x:SetValue("Trap Aura Value", true)
					x:MakeTask("Trap Aura", G.Stepped, function()
						pcall(function()
							if x:GetValue("Trap Aura Value") then
								for o, Y in pairs(O:GetPlayers()) do
									if Y.Name ~= g and x:GetValue("Trap Aura Value") then
										local o = ((h(Y)).Position - (h(D)).Position).Magnitude
										if o <= tonumber(N.TrapDistance) then
											z.Function(A.TrapSystem.PlaceTrap, (h(Y)).CFrame)
										end
									end
								end
							end
						end)
					end)
				else
					B("Uh oh! you need Trap Perks for this!")
				end
			else
				x:SetNil("Trap Aura Value")
				x:RemoveTask("Trap Aura")
			end
		end)
		local J = wK:CreateSlider("Trap Distance", 1, 999, 30, function(o)
			N.TrapDistance = tonumber(o) or 30
		end)
		wK:CreateToggle("Click Place Trap", function(o)
			if o then
				if u("Trap") then
					x:MakeTask("Touch Place Trap", t.InputBegan, function(o, Y)
						if Y then
							return
						end
						if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
							z.Function(A.TrapSystem.PlaceTrap, e.Hit)
						end
					end)
				else
					B("Uh oh! you need Trap Perks for this!")
				end
			else
				x:RemoveTask("Touch Place Trap")
			end
		end)
		wK:CreateToggle("Enable Place Trap Bindable Button", function(o)
			if o then
				if u("Trap") then
					UK("Place Trap", {
						OriginalName = "Place Trap",
						Position = UDim2.new(1, -550, 0, -190);
						Callback = function()
							z.Function(A.TrapSystem.PlaceTrap, (h(D)).CFrame)
						end
					})
				else
					B("Uh oh! you need Trap Perks for this!")
				end
			else
				rK("Place Trap")
			end
		end)
		wK:CreateButton("Make Circle Trap", function()
			if u("Trap") then
				for o = 1, 10, 1 do
					z.Function(A.TrapSystem.PlaceTrap, CFrame.new((h(D)).Position + 3 * Vector3.new(math.cos(((2 * math.pi) / 10) * o), 0, math.sin(((2 * math.pi) / 10) * o))))
				end
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateKeybind("Make Circle Trap", Enum.KeyCode.U, function()
			if u("Trap") then
				for o = 1, 10, 1 do
					z.Function(A.TrapSystem.PlaceTrap, CFrame.new((h(D)).Position + 3 * Vector3.new(math.cos(((2 * math.pi) / 10) * o), 0, math.sin(((2 * math.pi) / 10) * o))))
				end
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateToggle("Enable Make Circle Trap Bindable Button", function(o)
			if o then
				if u("Trap") then
					UK("Make Circle Trap", {
						OriginalName = "MCT",
						Position = UDim2.new(1, -550, 0, -140);
						Callback = function()
							for o = 1, 10, 1 do
								z.Function(A.TrapSystem.PlaceTrap, CFrame.new((h(D)).Position + 3 * Vector3.new(math.cos(((2 * math.pi) / 10) * o), 0, math.sin(((2 * math.pi) / 10) * o))))
							end
						end
					})
				else
					B("Uh oh! you need Trap Perks for this!")
				end
			else
				rK("Make Circle Trap")
			end
		end)
		wK:CreateButton("Get Fake Gun", function()
			if u("FakeGun") then
				z.Event(A.Remotes.Gameplay.FakeGun, true)
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateKeybind("Get Fake Gun", Enum.KeyCode.H, function()
			if u("FakeGun") then
				z.Event(A.Remotes.Gameplay.FakeGun, true)
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateToggle("Enable Get Fake Gun Bindable Button", function(o)
			if o then
				if u("FakeGun") then
					UK("Get Fake Gun", {
						OriginalName = "GFG",
						Position = UDim2.new(1, -500, 0, -140),
						Callback = function()
							z.Event(A.Remotes.Gameplay.FakeGun, true)
						end
					})
				else
					B("Uh oh! you need FakeGun Perks for this!")
				end
			else
				rK("Get Fake Gun")
			end
		end)
		wK:CreateSection("Server Sided")
		wK:CreateToggle("Fake Gun Rain", function(o)
			N.FakeGunRain = o
			if o then
				if u("FakeGun") then
					(coroutine.wrap(function()
						while N.FakeGunRain do
							task.wait()
							z.Event(A.Remotes.Gameplay.FakeGun, true)
							if N.X3Drop then
								z.Event(A.Remotes.Gameplay.FakeGun, true)
								z.Event(A.Remotes.Gameplay.FakeGun, true)
							end
						end
					end))();
					(coroutine.wrap(function()
						while N.FakeGunRain do
							task.wait()
							if D.Character then
								local o = YK()
								for Y, j in pairs(D.Character:GetChildren()) do
									if j.Name == o then
										j.Parent = workspace
									end
								end
								for Y, j in pairs(D.Backpack:GetChildren()) do
									if j.Name == o then
										j.Parent = D.Character
										j.Parent = workspace
									end
								end
							end
						end
					end))()
				else
					B("Uh oh! you need FakeGun Perks for this!")
				end
			end
		end)
		wK:CreateToggle("Fake Gun Rain Lobby", function(o)
			N.FakeGunRainLobby = o
			if o then
				if u("FakeGun") then
					local o = tick()
					local Y = h(D)
					local j = Instance.new("BodyGyro")
					local Z = CFrame.new(-110, 150, 25)
					N.LastPos = Y.CFrame
					j.Name = "BodyGyro_Rain"
					j.Parent = D.Character.Head
					j.P = 90000
					j.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
					j.CFrame = Y.CFrame * CFrame.Angles(math.rad(-90), 0, math.rad(-90))
					m(D, "CFrame", Z * CFrame.Angles(math.rad(-90), 0, math.rad(-90)));
					(coroutine.wrap(function()
						while N.FakeGunRainLobby do
							task.wait()
							if D.Character then
								local Y = ((o - tick()) * 2 + ((1 * math.pi) * 15) * 3) % (2 * math.pi)
								local j = math.sin(Y) * 10
								local t = math.cos(Y) * 10
								m(D, "CFrame", (Z * CFrame.new(j, 0, t)) * CFrame.Angles(math.rad(-90), 0, math.rad(-90)))
							end
						end
					end))();
					(coroutine.wrap(function()
						while N.FakeGunRainLobby do
							task.wait()
							z.Event(A.Remotes.Gameplay.FakeGun, true)
							if N.X3Drop then
								z.Event(A.Remotes.Gameplay.FakeGun, true)
								z.Event(A.Remotes.Gameplay.FakeGun, true)
							end
						end
					end))();
					(coroutine.wrap(function()
						while N.FakeGunRainLobby do
							task.wait()
							if D.Character then
								local o = YK()
								for Y, j in pairs(D.Character:GetChildren()) do
									if j.Name == o then
										j.Parent = workspace
									end
								end
								for Y, j in pairs(D.Backpack:GetChildren()) do
									if j.Name == o then
										j.Parent = D.Character
										j.Parent = workspace
									end
								end
							end
						end
					end))()
				else
					B("Uh oh! you need FakeGun Perks for this!")
				end
			else
				if D and (D.Character and (D.Character.Head and D.Character.Head:FindFirstChild("BodyGyro_Rain"))) then
					(D.Character.Head:FindFirstChild("BodyGyro_Rain")):Destroy()
					task.wait(.25)
					local o = h(D)
					o.CFrame = N.LastPos
				end
			end
		end)
		wK:CreateToggle("X\051 Drop", function(o)
			N.X3Drop = o
		end)
		wK:CreateButton("Drop Fake Gun", function()
			if u("FakeGun") then
				if D.Character then
					local o = YK()
					local Y = false
					z.Event(A.Remotes.Gameplay.FakeGun, true)
					repeat
						task.wait()
						for j, Z in pairs(D.Character:GetChildren()) do
							if Z.Name == o then
								Y = true
							end
						end
					until Y
					D.Character[o].Parent = workspace
				end
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateKeybind("Drop Fake Gun", Enum.KeyCode.V, function()
			if u("FakeGun") then
				if D.Character then
					local o = YK()
					local Y = false
					z.Event(A.Remotes.Gameplay.FakeGun, true)
					repeat
						task.wait()
						for j, Z in pairs(D.Character:GetChildren()) do
							if Z.Name == o then
								Y = true
							end
						end
					until Y
					D.Character[o].Parent = workspace
				end
			else
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end)
		wK:CreateToggle("Enable Drop Fake Gun Bindable Button", function(o)
			if o then
				if u("FakeGun") then
					UK("Drop Fake Gun", {
						OriginalName = "Drop Gun",
						Position = UDim2.new(1, -450, 0, -190);
						Callback = function()
							if u("FakeGun") then
								if D.Character then
									local o = YK()
									local Y = false
									z.Event(A.Remotes.Gameplay.FakeGun, true)
									repeat
										task.wait()
										for j, Z in pairs(D.Character:GetChildren()) do
											if Z.Name == o then
												Y = true
											end
										end
									until Y
									D.Character[o].Parent = workspace
								end
							else
								B("Uh oh! you need FakeGun Perks for this!")
							end
						end
					})
				else
					B("Uh oh! you need FakeGun Perks for this!")
				end
			else
				rK("Drop Fake Gun")
			end
		end)
		wK:CreateParagraph("Fake Gun Rain!", "requires a godly gun.")
		wK:CreateButton("Break Gun", function()
			local o = V(q.Sheriff)
			if o and o.Name ~= g then
				local Y = false
				for o, j in pairs(o.Backpack:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						Y = j
					end
				end
				if not Y then
					for o, j in pairs(o.Character:GetChildren()) do
						if j.Name == "Gun" and j:IsA("Tool") then
							Y = j
						end
					end
				end
				if Y then
					local o, j = pcall(function()
						z.Function(Y.KnifeServer.ShootGun, 0, CFrame.new(), "AH")
					end)
					if j and not o then
						I("<font color=\"rgb(\048, \050\053\053, \048)\">Successfully</font> Breaked the gun from <font color=\"rgb(\048, \048, \050\053\053)\">Sheriff</font>!")
					end
				end
			end
		end)
		wK:CreateKeybind("Break Gun", Enum.KeyCode.J, function()
			local o = V(q.Sheriff)
			if o and o.Name ~= g then
				local Y = false
				for o, j in pairs(o.Backpack:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						Y = j
					end
				end
				if not Y then
					for o, j in pairs(o.Character:GetChildren()) do
						if j.Name == "Gun" and j:IsA("Tool") then
							Y = j
						end
					end
				end
				if Y then
					local o, j = pcall(function()
						z.Function(Y.KnifeServer.ShootGun, 0, CFrame.new(), "AH")
					end)
					if j and not o then
						I("<font color=\"rgb(\048, \050\053\053, \048)\">Successfully</font> Breaked the gun from <font color=\"rgb(\048, \048, \050\053\053)\">Sheriff</font>!")
					end
				end
			end
		end)
		wK:CreateToggle("Enable Break Gun Bindable Button", function(o)
			if o then
				UK("Break Gun", {
					OriginalName = "Break Gun",
					Position = UDim2.new(1, -600, 0, -190);
					Callback = function()
						local o = V(q.Sheriff)
						if o and o.Name ~= g then
							local Y = false
							for o, j in pairs(o.Backpack:GetChildren()) do
								if j.Name == "Gun" and j:IsA("Tool") then
									Y = j
								end
							end
							if not Y then
								for o, j in pairs(o.Character:GetChildren()) do
									if j.Name == "Gun" and j:IsA("Tool") then
										Y = j
									end
								end
							end
							if Y then
								local o, j = pcall(function()
									z.Function(Y.KnifeServer.ShootGun, 0, CFrame.new(), "AH")
								end)
								if j and not o then
									I("<font color=\"rgb(\048, \050\053\053, \048)\">Successfully</font> Breaked the gun from <font color=\"rgb(\048, \048, \050\053\053)\">Sheriff</font>!")
								end
							end
						end
					end
				})
			else
				rK("Break Gun")
			end
		end)
		wK:CreateToggle("Auto Break Gun", function(o)
			if o then
				x:MakeTask("Auto Break Gun", G.Stepped, function()
					local o = V(q.Sheriff)
					if o and o.Name ~= g then
						local Y = false
						for o, j in pairs(o.Backpack:GetChildren()) do
							if j.Name == "Gun" and j:IsA("Tool") then
								Y = j
							end
						end
						if not Y then
							for o, j in pairs(o.Character:GetChildren()) do
								if j.Name == "Gun" and j:IsA("Tool") then
									Y = j
								end
							end
						end
						if Y then
							local o, j = pcall(function()
								z.Function(Y.KnifeServer.ShootGun, 0, CFrame.new(), "AH")
							end)
							if j and not o then
								I("<font color=\"rgb(\048, \050\053\053, \048)\">Successfully</font> Breaked the gun from <font color=\"rgb(\048, \048, \050\053\053)\">Sheriff</font>!")
							end
						end
					end
				end)
			else
				x:RemoveTask("Auto Break Gun")
			end
		end)
		wK:CreatePlayerDropdown("Check Player Coins", function(o)
			local Y = (z.Function(A.Remotes.Extras.GetFullInventory, o)).Coins;
			(coroutine.wrap(I))(o.Name .. (" Got <font color=\"rgb(\050\048\048, \050\048\048, \050\048\048)\">" .. (oK(Y) .. (" (" .. (Y .. ") Coins.</font>")))))
		end)
		wK:CreatePlayerDropdown("Check Player Gems", function(o)
			local Y = (z.Function(A.Remotes.Extras.GetFullInventory, o)).Gems;
			(coroutine.wrap(I))(o.Name .. (" Got <font color=\"rgb(\050\048\048, \050\048\048, \050\048\048)\">" .. (oK(Y) .. (" (" .. (Y .. ") Gems.</font>")))))
		end)
		wK:CreatePlayerDropdown("Check Player Perks", function(o)
			local Y = z.Function(A.Remotes.Extras.GetFullInventory, o)
			local j, Z = Y.Perks.Owned, ""
			for o = 1, # j, 1 do
				if Z == "" then
					Z = Z .. j[o]
				else
					if o == # j then
						Z = Z .. (" and " .. j[o])
					else
						Z = Z .. (", " .. j[o])
					end
				end
			end;
			(coroutine.wrap(I))(o.Name .. (" has " .. (Z .. " Perks.")))
		end)
		wK:CreateSection("Toy Modification")
		wK:CreateToggle("Infinite Fireflies", function(o)
			if o then
				x:MakeTask("Infinite Fireflies", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("Fireflies")) then
						(getsenv(D.Character.Fireflies.Client)).Fireflies = math.huge
					end
				end)
			else
				x:RemoveTask("Infinite Fireflies")
				if D and (D.Character and D.Character:FindFirstChild("Fireflies")) then
					(getsenv(D.Character.Fireflies.Client)).fireflies = 7
				end
			end
		end)
		wK:CreateToggle("No Fireflies Cooldown", function(o)
			if o then
				x:MakeTask("No Fireflies Cooldown", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("Fireflies")) then
						(getsenv(D.Character.Fireflies.Client)).check = true
					end
				end)
			else
				x:RemoveTask("No Fireflies Cooldown")
			end
		end)
		wK:CreateSection("Spray Paint")
		wK:CreateToggle("Spray Paint Immunity", function(o)
			if o then
				x:MakeTask("Spray Paint Immunity", workspace.ChildAdded, function(o)
					if o.Name == "Spray" then
						task.wait()
						for o, Y in pairs(workspace:GetChildren()) do
							if Y.Name == "Spray" then
								Y:Destroy()
							end
						end
					end
				end)
			else
				x:RemoveTask("Spray Paint Immunity")
			end
		end)
		wK:CreateButton("Steal Gun", function()
			local o = V(q.Sheriff)
			if o and o.Character then
				sK(function(Y)
					local j = h(o)
					if j then
						local o = 0
						z.Event(Y.Remote, 0, Enum.NormalId.Right, 10, j, CFrame.new(0, - math.huge, 0))
						repeat
							task.wait()
							o = o + 1
						until workspace:FindFirstChild("GunDrop") or o >= 25
						task.spawn(function()
							if workspace:FindFirstChild("GunDrop") and not x:GetValue("Grabbing") then
								local o = (h(D)).CFrame
								x:SetValue("Grabbing", true)
								x:MakeTask("Grab Gun", G.Heartbeat, function()
									if x:GetValue("Grabbing") then
										m(D, "CFrame", workspace.GunDrop.CFrame)
										D.Character.Humanoid.PlatformStand = false
									end
								end)
								repeat
									task.wait()
								until not workspace:FindFirstChild("GunDrop")
								x:RemoveTask("Grab Gun")
								m(D, "CFrame", o)
								x:SetNil("Grabbing")
								D.Character.Humanoid.PlatformStand = false
								D.Character.Humanoid:ChangeState(1)
							end
						end)
					end
				end)
			end
		end)
		wK:CreateButton("Black Lobby", function()
			sK(function(o)
				for Y, j in pairs(workspace.Lobby:GetDescendants()) do
					task.wait()
					if j:IsA("BasePart") or j:IsA("Part") then
						z.Event(o.Remote, 14787385911, Enum.NormalId.Top, 9999, j, j.CFrame)
						z.Event(o.Remote, 14787385911, Enum.NormalId.Front, 9999, j, j.CFrame)
						z.Event(o.Remote, 14787385911, Enum.NormalId.Bottom, 9999, j, j.CFrame)
						z.Event(o.Remote, 14787385911, Enum.NormalId.Right, 9999, j, j.CFrame)
						z.Event(o.Remote, 14787385911, Enum.NormalId.Left, 9999, j, j.CFrame)
						z.Event(o.Remote, 14787385911, Enum.NormalId.Back, 9999, j, j.CFrame)
					end
				end
			end)
		end)
		yK(wK, "Camera Shake", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("Head")
			if j then
				z.Event(o.Remote, 0, Enum.NormalId.Front, 8, j, j.CFrame * CFrame.new(0, 1.5, 0))
			end
		end)
		yK(wK, "Give Hallow", 15, function(o, Y)
			local j = h(Y)
			if j then
				for Y = 1, 10, 1 do
					z.Event(o.Remote, 17618294446, Enum.NormalId.Top, 2, j, j.CFrame * CFrame.new(0, 2.5 + Y / 100, 0))
					z.Event(o.Remote, 17618294446, Enum.NormalId.Bottom, 2, j, j.CFrame * CFrame.new(0, 2.5 + Y / 100, 0))
				end
			end
		end)
		yK(wK, "Slickback", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("LeftLowerArm")
			local Z = Y.Character:FindFirstChild("RightLowerArm")
			if j and Z then
				z.Event(o.Remote, 0, Enum.NormalId.Front, 10000, j, j.CFrame * CFrame.new(0, 0, -1))
				z.Event(o.Remote, 0, Enum.NormalId.Front, 10000, Z, Z.CFrame * CFrame.new(0, 0, -1))
			end
		end)
		yK(wK, "Spoof Role Text", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("Head")
			if j then
				z.Event(o.Remote, q.Murderer == Y.Name and 17528040335 or q.Sheriff == Y.Name and (not q.Hero and 17528079377) or q.Sheriff == Y.Name and (q.Hero and 17528057967) or 17528011613, Enum.NormalId.Front, 5.5, j, j.CFrame * CFrame.new(0, 1.5, 0))
				z.Event(o.Remote, q.Murderer == Y.Name and 17528040335 or q.Sheriff == Y.Name and (not q.Hero and 17528079377) or q.Sheriff == Y.Name and (q.Hero and 17528057967) or 17528011613, Enum.NormalId.Back, 5.5, j, j.CFrame * CFrame.new(0, 1.5, 0))
			end
		end)
		yK(wK, "Floor Clip", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("RightHand")
			if j then
				z.Event(o.Remote, 0, Enum.NormalId.Front, 2500, j, CFrame.new(0, -25000, 0))
				z.Event(o.Remote, 0, Enum.NormalId.Front, 2500, j, CFrame.new(0, 25000, 0))
			end
		end)
		yK(wK, "Box", 15, function(o, Y)
			local j = h(Y)
			if j then
				local Y = j.CFrame
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Top, 6, j, Y * CFrame.new(0, 3, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Bottom, 6, j, Y * CFrame.new(0, 3.15, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Bottom, 6, j, Y * CFrame.new(0, -2, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Top, 6, j, Y * CFrame.new(0, -3, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Front, 6, j, Y * CFrame.new(0, .1, 3.1))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Back, 6, j, Y * CFrame.new(0, .1, 2.86))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Front, 6, j, Y * CFrame.new(0, .1, -2))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Back, 6, j, Y * CFrame.new(0, .1, -3))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Right, 6, j, Y * CFrame.new(2.86, .1, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Left, 6, j, Y * CFrame.new(3.1, .1, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Right, 6, j, Y * CFrame.new(-3, .1, 0))
				z.Event(o.Remote, N.BoxSprayId, Enum.NormalId.Left, 6, j, Y * CFrame.new(-2, .1, 0))
			end
		end)
		wK:CreateTextbox("Customize Box Image ID", function(o)
			N.BoxSprayId = tonumber(o) or 14787385911
		end)
		yK(wK, "Penis", 15, function(o, Y)
			local j = h(Y)
			if j then
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(-1, -1, -1))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(1, -1, -1))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, -1))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, -2))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, -3))
				xK(o, 17621332813, j, j.CFrame * CFrame.new(0, -1, -4))
			end
		end)
		yK(wK, "Back Penis", 15, function(o, Y)
			local j = h(Y)
			if j then
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(-1, -1, 4.5))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(1, -1, 4.5))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, 4.5))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, 3.5))
				xK(o, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, j, j.CFrame * CFrame.new(0, -1, 2.5))
				xK(o, 17621332813, j, j.CFrame * CFrame.new(0, -1, 1.5))
			end
		end)
		wK:CreateDropdown("Penis Color", {
			"White",
			"Black"
		}, function(o)
			N.PenisColor = o
		end)
		yK(wK, "Give White Stuff", 15, function(o, Y)
			for Y, j in pairs(Y.Character:GetChildren()) do
				if j:IsA("BasePart") then
					z.Event(o.Remote, 17593649425, Enum.NormalId.Left, 2, j, j.CFrame * CFrame.new(math.random(0, 1.5), math.random(0, 1.5), math.random(0, 1.5)))
					z.Event(o.Remote, 17593649425, Enum.NormalId.Right, 2, j, j.CFrame * CFrame.new(math.random(0, 1.5), math.random(0, 1.5), math.random(0, 1.5)))
					z.Event(o.Remote, 17593649425, Enum.NormalId.Front, 2, j, j.CFrame * CFrame.new(math.random(0, 1.5), math.random(0, 1.5), math.random(0, 1.5)))
				end
			end
		end)
		yK(wK, "Blind", 15, function(o, Y)
			local j = h(Y)
			if j then
				for Y = 1, 5, 1 do
					z.Event(o.Remote, 14787385911, Enum.NormalId.Left, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
					z.Event(o.Remote, 14787385911, Enum.NormalId.Right, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
					z.Event(o.Remote, 14787385911, Enum.NormalId.Top, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
					z.Event(o.Remote, 14787385911, Enum.NormalId.Bottom, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
					z.Event(o.Remote, 14787385911, Enum.NormalId.Back, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
					z.Event(o.Remote, 14787385911, Enum.NormalId.Front, 55, j, j.CFrame * CFrame.new(0, 5 - 5 * (Y - 1), 0))
				end
			end
		end)
		yK(wK, "Lag", 15, function(o, Y)
			local j = h(Y)
			if j then
				for Y = 1, 250, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Right, 2048, j, j.CFrame)
				end
			end
		end)
		yK(wK, "Freeze", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("LeftLowerArm")
			if j then
				for Y = 1, 30, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Top, 2048, j, j.CFrame)
				end
			end
		end)
		yK(wK, "Knock Up", 15, function(o, Y)
			local j = Y.Character:FindFirstChild("LeftLowerArm")
			local Z = Y.Character:FindFirstChild("RightLowerArm")
			if j and Z then
				for Y = 1, 50, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Top, 2048, Z, Z.CFrame)
				end
				for Y = 1, 50, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Top, 2048, j, j.CFrame)
				end
			end
		end)
		yK(wK, "Old Germany Flag", 15, MK)
		yK(wK, "Reset", .25, function(o, Y)
			local j = h(Y)
			if j then
				z.Event(o.Remote, 0, Enum.NormalId.Right, 10, j, CFrame.new(0, - math.huge, 0))
			end
		end)
		yK(wK, "Glitch", 5, function(o, Y)
			local j = h(Y)
			if j then
				for Y = 1, 150, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Right, 10, j, j.CFrame)
				end
			end
		end)
		yK(wK, "Yeet", 15, function(o, Y)
			local j = h(Y)
			if j then
				for Y = 1, 5, 1 do
					z.Event(o.Remote, 0, Enum.NormalId.Right, 999999, j, CFrame.new(99999, 99999, 99999))
				end
			end
		end)
		wK:CreateToggle("Infinite Spray Size", function(o)
			N.InfiniteSpraySize = o
		end)
		wK:CreateToggle("Infinite Spray Range", function(o)
			if o then
				x:MakeTask("Infinite Spray Range", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("SprayPaint")) then
						(getsenv(D.Character.SprayPaint.Client)).range = math.huge
					end
				end)
			else
				x:RemoveTask("Infinite Spray Range")
				if D and (D.Character and D.Character:FindFirstChild("SprayPaint")) then
					(getsenv(D.Character.SprayPaint.Client)).range = 5
				end
			end
		end)
		wK:CreateToggle("No Spray Cooldown", function(o)
			if o then
				x:MakeTask("No Spray Cooldown", G.RenderStepped, function()
					if D and (D.Character and D.Character:FindFirstChild("SprayPaint")) then
						(getsenv(D.Character.SprayPaint.Client)).cooldown = 0;
						(getsenv(D.Character.SprayPaint.Client)).check = true
					end
				end)
			else
				x:RemoveTask("No Spray Cooldown")
				if D and (D.Character and D.Character:FindFirstChild("SprayPaint")) then
					(getsenv(D.Character.SprayPaint.Client)).cooldown = 9;
					(getsenv(D.Character.SprayPaint.Client)).check = true
				end
			end
		end)
		wK:CreateSection("Advanced")
		wK:CreateToggle("Loop Sound", function(o)
			N.LoopSound = o
			if o then
				(coroutine.wrap(function()
					while N.LoopSound do
						task.wait(.25)
						for o, Y in pairs(workspace:GetDescendants()) do
							if Y:IsA("Sound") then
								Y:Play()
							end
						end
					end
				end))()
			end
		end)
		wK:CreateToggle("Swim", function(o)
			N.Swim = o
			if o then
				local o = Enum.HumanoidStateType:GetEnumItems()
				table.remove(o, table.find(o, Enum.HumanoidStateType.None))
				for o, Y in pairs(o) do
					D.Character.Humanoid:SetStateEnabled(Y, false)
				end
				D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				x:MakeTask("Swim Died", D.Character.Humanoid.Died, function()
					pcall(function()
						if N.SwimBeat then
							N.SwimBeat:Disconnect()
							N.SwimDied:Disconnect()
						end
					end)
				end)
				x:MakeTask("Swim Beat", G.Stepped, function()
					pcall(function()
						D.Character.HumanoidRootPart.Velocity = (D.Character.Humanoid.MoveDirection ~= Vector3.new() or t:IsKeyDown(Enum.KeyCode.Space)) and (h(D)).Velocity or Vector3.new()
					end)
				end)
			else
				pcall(function()
					x:RemoveTask("Swim Died")
					x:RemoveTask("Swim Beat")
					local o = Enum.HumanoidStateType:GetEnumItems()
					table.remove(o, table.find(o, Enum.HumanoidStateType.None))
					for o, Y in pairs(o) do
						D.Character.Humanoid:SetStateEnabled(Y, true)
					end
				end)
			end
		end)
		wK:CreateToggle("Bang Player", function(o)
			N.Bang = o
			if o then
				N.BangAnim = Instance.new("Animation")
				N.BangAnim.AnimationId = "rbxassetid://\053\057\049\056\055\050\054\054\055\052"
				N.Bang = D.Character.Humanoid:LoadAnimation(N.BangAnim)
				N.Bang:Play(.1, 1, 1)
				N.Bang:AdjustSpeed(10)
				x:MakeTask("Bang Died", D.Character.Humanoid.Died, function()
					x:RemoveTask("Bang Died")
					x:RemoveTask("Bang Beat")
				end)
				x:MakeTask("Bang Beat", G.Stepped, function()
					pcall(function()
						if N.BangPlayer ~= "" then
							m(D, "CFrame", (h(N.BangPlayer)).CFrame * CFrame.new(0, 0, 1.1))
						end
					end)
				end)
			else
				pcall(function()
					x:RemoveTask("Bang Died")
					x:RemoveTask("Bang Beat")
					N.Bang:Stop()
					N.BangAnim:Destroy()
				end)
			end
		end)
		wK:CreatePlayerDropdown("Select Player", function(o)
			N.BangPlayer = o
		end)
		wK:CreateToggle("Force Trade", function(o)
			N.ForceTrade = o
			if o then
				(coroutine.wrap(function()
					while N.ForceTrade do
						task.wait(.25)
						pcall(function()
							z.Event(A.Trade.AcceptRequest)
						end)
					end
					return coroutine.yield("...")
				end))()
			end
		end)
		wK:CreateToggle("Fake Lag", function(o)
			N.FakeLag = o
			if o then
				(coroutine.wrap(function()
					while N.FakeLag do
						task.wait(1)
						pcall(function()
							if D and (D.Character and D.Character.Humanoid) then
								local o = h(D)
								o.Anchored = true
								task.wait(1)
								o.Anchored = false
							end
						end)
					end
				end))()
			end
		end)
		wK:CreateSection("Admin Commands")
		wK:CreateLabel("Spray Paint:")
		wK:CreateLabel("[+] //reset [player]")
		wK:CreateLabel("[+] //box [player]")
		wK:CreateLabel("[+] //spoofrole [player]")
		wK:CreateLabel("[+] //blind [player]")
		wK:CreateLabel("[+] //slickback [player]")
		wK:CreateLabel("[+] //pp [player]")
		wK:CreateLabel("[+] //backpp [player]")
		wK:CreateLabel("[+] //floorclip [player]")
		wK:CreateLabel("[+] //lag [player]")
		wK:CreateLabel("[+] //freeze [player]")
		wK:CreateLabel("[+] //knockup [player]")
		wK:CreateLabel("[+] //camerashake [player]")
		wK:CreateLabel("[+] //hallow [player]")
		wK:CreateLabel("[+] //glitch [player]")
		wK:CreateLabel("[+] //yeet [player]")
		wK:CreateLabel("[+] //blacklobby")
		wK:CreateLabel("[+] //stealgun")
		wK:CreateLabel("Casual:")
		wK:CreateLabel("[+] //tp [player]")
		wK:CreateLabel("[+] //breakgun")
		wK:CreateLabel("[+] //blurtroles")
		wK:CreateLabel("[+] //trap")
		wK:CreateLabel("Sheriff:")
		wK:CreateLabel("[+] //shootmurderer")
		wK:CreateLabel("Murderer:")
		wK:CreateLabel("[+] //kill [player]")
		wK:CreateParagraph("Admin Cmd!", "the target can do all or others.")
	else
		local o = J:JSONDecode(w("https://apis.roblox.com/game-passes/v\049/game-passes/\050\050\055\051\057\056\048\052/product-info"))
		wK:CreateSection("Premium Member")
		wK:CreateLabel("Be a Symphony Hub <font color=\"rgb(\048, \048, \050\053\053)\">Premium</font> <u>Member</u>!")
		wK:CreateButton("Buy Premium for <font color=\"rgb(\048, \050\053\053, \048)\">" .. (o.PriceInRobux .. " Robux</font>"), function()
			local o, Y = pcall(function()
				MarketplaceService:PromptGamePassPurchase(D, 22739804)
			end)
			if Y and not o then
				s("https://web.roblox.com/game-pass/\050\050\055\051\057\056\048\052/Symphony-Hub-Premium")
				I("<font color=\"rgb(\050\053\053, \048, \048)\">Failed</font> to callback the prompt, buy it on website instead | Copied to Clipboard")
			end
		end)
		wK:CreateLabel("Not Working?")
		wK:CreateButton("Copy Link Our Official site", function()
			s("https://symphonyhub.odoo.com")
		end)
	end
	local ox = PK:CreateLabel("Murderer is: " .. q.Murderer)
	local Yx = PK:CreateLabel("Sheriff is: " .. q.Sheriff)
	local jx = PK:CreateLabel("Gun Status: <font color=\"rgb(\050\053\053, \048, \048)\">Not Dropped</font>")
	PK:CreateButton("Grab Gun", function()
		local o = workspace:FindFirstChild("GunDrop")
		if o and l(D) then
			if q.Murderer ~= g then
				task.spawn(function()
					if not x:GetValue("Grabbing") then
						local Y = (h(D)).CFrame
						x:SetValue("Grabbing", true)
						x:MakeTask("Grab Gun", G.Heartbeat, function()
							if x:GetValue("Grabbing") then
								m(D, "CFrame", o.CFrame)
								D.Character.Humanoid.PlatformStand = false
							end
						end)
						repeat
							task.wait()
						until not workspace:FindFirstChild("GunDrop")
						x:RemoveTask("Grab Gun")
						m(D, "CFrame", Y)
						x:SetNil("Grabbing")
						D.Character.Humanoid.PlatformStand = false
						D.Character.Humanoid:ChangeState(1)
					end
				end)
			end
		elseif o and not l(D) then
			B("You can\'t get the gun because you\'re not in the game")
		elseif not o ~= nil then
			B("The gun didn\'t dropped yet")
		end
	end)
	PK:CreateKeybind("Grab Gun", Enum.KeyCode.G, function()
		local o = workspace:FindFirstChild("GunDrop")
		if o and l(D) then
			if q.Murderer ~= g then
				task.spawn(function()
					if not x:GetValue("Grabbing") then
						local Y = (h(D)).CFrame
						x:SetValue("Grabbing", true)
						x:MakeTask("Grab Gun", G.Heartbeat, function()
							if x:GetValue("Grabbing") then
								m(D, "CFrame", o.CFrame)
								D.Character.Humanoid.PlatformStand = false
							end
						end)
						repeat
							task.wait()
						until not workspace:FindFirstChild("GunDrop")
						x:RemoveTask("Grab Gun")
						m(D, "CFrame", Y)
						x:SetNil("Grabbing")
						D.Character.Humanoid.PlatformStand = false
						D.Character.Humanoid:ChangeState(1)
					end
				end)
			end
		elseif o and not l(D) then
			B("You can\'t get the gun because you\'re not in the game")
		elseif not o ~= nil then
			B("The gun didn\'t dropped yet")
		end
	end)
	PK:CreateToggle("Enable Grab Gun Bindable Button", function(o)
		if o then
			UK("Grab Gun", {
				OriginalName = "Grab Gun",
				Position = UDim2.new(1, -500, 0, -190);
				Callback = function()
					local o = workspace:FindFirstChild("GunDrop")
					if o and l(D) then
						if q.Murderer ~= g then
							task.spawn(function()
								if not x:GetValue("Grabbing") then
									local Y = (h(D)).CFrame
									x:SetValue("Grabbing", true)
									x:MakeTask("Grab Gun", G.Heartbeat, function()
										if x:GetValue("Grabbing") then
											m(D, "CFrame", o.CFrame)
											D.Character.Humanoid.PlatformStand = false
										end
									end)
									repeat
										task.wait()
									until not workspace:FindFirstChild("GunDrop")
									x:RemoveTask("Grab Gun")
									m(D, "CFrame", Y)
									x:SetNil("Grabbing")
									D.Character.Humanoid.PlatformStand = false
									D.Character.Humanoid:ChangeState(1)
								end
							end)
						end
					elseif o and not l(D) then
						B("You can\'t get the gun because you\'re not in the game")
					elseif not o ~= nil then
						B("The gun didn\'t dropped yet")
					end
				end
			})
		else
			rK("Grab Gun")
		end
	end)
	PK:CreateToggle("Auto Grab Gun", function(o)
		N.AutoGrabGun = o
		if o then
			task.spawn(function()
				(coroutine.wrap(function()
					while N.AutoGrabGun do
						task.wait(.25)
						pcall(function()
							local o = workspace:FindFirstChild("GunDrop")
							local Y = V(q.Murderer)
							if Y ~= nil and (l(Y) and Y.Name ~= g) then
								local j = ((h(Y)).Position - o.CFrame.Position).Magnitude
								if o and (l(D) and j > 10) then
									if not x:GetValue("Grabbing") then
										local Y = (h(D)).CFrame
										x:SetValue("Grabbing", true)
										x:MakeTask("Grab Gun", G.Heartbeat, function()
											if x:GetValue("Grabbing") then
												m(D, "CFrame", o.CFrame)
												D.Character.Humanoid.PlatformStand = false
											end
										end)
										repeat
											task.wait()
										until not workspace:FindFirstChild("GunDrop")
										x:RemoveTask("Grab Gun")
										m(D, "CFrame", Y)
										x:SetNil("Grabbing")
										D.Character.Humanoid.PlatformStand = false
										D.Character.Humanoid:ChangeState(1)
									end
								end
							end
						end)
					end
					return coroutine.yield("...")
				end))()
			end)
		end
	end)
	PK:CreateParagraph("Auto Grab Gun!", "will not trigger, if the murderer was camping the gun")
	PK:CreateSection("Blurt/Expose")
	PK:CreateButton("Blurt Roles", function()
		for Y, j in pairs(R) do
			if j.Role == "Murderer" or j.Role == "Sheriff" or j.Role == "Hero" then
				z.Event(o, j.Role .. (" is: " .. Y), N.AlwaysAliveChat and "alive" or "normalchat")
			end
		end
	end)
	PK:CreateToggle("Auto Blurt Roles", function(Y)
		if Y then
			N.RoleStates["Auto Blurt Roles"] = function()
				for Y, j in pairs(R) do
					if j.Role == "Murderer" or j.Role == "Sheriff" or j.Role == "Hero" then
						z.Event(o, j.Role .. (" is: " .. Y), N.AlwaysAliveChat and "alive" or "normalchat")
					end
				end
			end
		else
			N.RoleStates["Auto Blurt Roles"] = nil
		end
	end)
	PK:CreateButton("Blurt Murderer\'s Perk", function()
		if q.Murderer ~= "" then
			z.Event(o, q.Murderer .. (" is currently using " .. (R[q.Murderer].Effect .. " Perk")), N.AlwaysAliveChat and "alive" or "normalchat")
		end
	end)
	PK:CreateToggle("Auto Blurt Murderer\'s Perk", function(Y)
		if Y then
			N.RoleStates["Auto Blurt Murderer\'s Perk"] = function()
				for Y, j in pairs(R) do
					if j.Role == "Murderer" then
						z.Event(o, Y .. (" is currently using " .. (j.Effect .. " Perk")), N.AlwaysAliveChat and "alive" or "normalchat")
					end
				end
			end
		else
			N.RoleStates["Auto Blurt Murderer\'s Perk"] = nil
		end
	end)
	PK:CreateSection("Spectate")
	PK:CreateButton("Spectate Murderer", function()
		local o = V(q.Murderer)
		if l(o) then
			EK(o.Character)
		end
	end)
	PK:CreateButton("Spectate Sheriff", function()
		local o = V(q.Sheriff)
		if l(o) then
			EK(o.Character)
		end
	end)
	PK:CreateButton("Spectate Gun Drop", function()
		local o = workspace:FindFirstChild("GunDrop")
		if o ~= nil then
			EK(o)
		else
			B("The gun didn\'t dropped yet")
		end
	end)
	PK:CreatePlayerDropdown("Spectate Player", function(o)
		EK(o.Character)
	end)
	PK:CreateButton("Unspectate", function()
		EK(D.Character)
	end)
	PK:CreateToggle("Toggle Circle Cursor", function(o)
		M.Visible = o
		if o then
			x:MakeTask("Circle Cursor", G.Stepped, function()
				M.Position = Vector2.new(e.X, e.Y - 5.5)
			end)
		else
			x:RemoveTask("Circle Cursor")
		end
	end)
	PK:CreateButton("Remove Barriers", function()
		for o, Y in pairs(workspace:GetDescendants()) do
			if Y.Name == "GlitchProof" then
				Y:Destroy()
			end
		end
	end)
	PK:CreateToggle("Remove Knife Effects &\n<font color=\"rgb(\050\053\053, \048, \048)\">C</font><font color=\"rgb(\048, \050\053\053, \048)\">h</font><font color=\"rgb(\048, \048, \050\053\053)\">r</font><font color=\"rgb(\050\053\053, \048, \048)\">o</font><font color=\"rgb(\048, \050\053\053, \048)\">m</font><font color=\"rgb(\048, \048, \050\053\053)\">a</font> Glowing Animation", function(o)
		if o then
			x:MakeTask("Remove Knife Effects & Chroma Glowing Animation", G.RenderStepped, function()
				for o, Y in pairs(O:GetPlayers()) do
					pcall(function()
						for o, Y in pairs(Y.Character.KnifeDisplay:GetDescendants()) do
							if Y.Name ~= "Attachment" and (Y.Name ~= "CustomAttachment" and (Y.Name ~= "RigidConstraint" and Y.Name ~= "Mesh")) or Y.Name == "Chroma" then
								Y:Destroy()
							end
						end
						if q.Murderer == Y.Name then
							local o = Y.Character:FindFirstChild("Knife")
							local j = o and o.Handle:FindFirstChild("Chroma")
							if j then
								j:Destroy()
							end
						elseif q.Sheriff == Y.Name then
							local o = Y.Character:FindFirstChild("Gun")
							local j = o and o.Handle:FindFirstChild("Chroma")
							if j then
								j:Destroy()
							end
						end
					end)
				end
			end)
		else
			x:RemoveTask("Remove Knife Effects & Chroma Glowing Animation")
		end
	end)
	PK:CreateToggle("Optimize Coins", function(o)
		if o then
			x:MakeTask("Optimize Coins", G.Stepped, function()
				local o = ZK()
				if o then
					pcall(function()
						for o, Y in pairs(o.CoinContainer:GetChildren()) do
							if Y.Name == "Coin_Server" then
								if Y.CoinVisual:FindFirstChild("MainCoin") and Y.CoinVisual.MainCoin.Transparency == 1 or not Y.CoinVisual:FindFirstChild("MainCoin") and Y.CoinVisual.Transparency == 1 then
									Y:Destroy()
								end
							end
						end
					end)
				end
			end)
		else
			x:RemoveTask("Optimize Coins")
		end
	end)
	PK:CreateToggle("Loop Interactive", function(o)
		N.LoopInteractive = o
		if o then
			(coroutine.wrap(function()
				while N.LoopInteractive do
					task.wait(.25)
					local o = ZK()
					if o then
						for o, Y in pairs(o:GetDescendants()) do
							if Y.Name == "Interact" and Y:IsA("RemoteEvent") then
								z.Event(Y)
							end
						end
					end
				end
			end))()
		end
	end)
	PK:CreateButton("Get XBox Knife", function()
		if A.Remotes.Extras and A.Remotes.Extras.IsXbox then
			z.Event(A.Remotes.Extras.IsXbox)
		end
	end)
	PK:CreateToggle("Auto Prestige", function(o)
		if o then
			x:MakeTask("Auto Prestige", G.RenderStepped, function()
				z.Event(A.Remotes.Inventory.Prestige)
			end)
		else
			x:RemoveTask("Auto Prestige")
		end
	end)
	PK:CreateButton("Prestige", function()
		z.Event(A.Remotes.Inventory.Prestige)
	end)
	G.RenderStepped:Connect(function()
		pcall(function()
			local o = V(q.Murderer)
			local Y = V(q.Sheriff)
			if l(o) then
				ox:Update("Murderer is: <font color=\"rgb(\050\053\053, \048, \048)\">" .. (q.Murderer .. "</font>"))
			else
				ox:Update("Murderer is: <font color=\"rgb(\049\048\052, \049\048\052, \049\048\052)\">None Detected</font>")
			end
			if l(Y) then
				if q.Hero then
					Yx:Update("Hero is: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (q.Sheriff .. "</font>"))
				else
					Yx:Update("Sheriff is: <font color=\"rgb(\048, \048, \050\053\053)\">" .. (q.Sheriff .. "</font>"))
				end
			else
				Yx:Update("Sheriff is: <font color=\"rgb(\049\048\052, \049\048\052, \049\048\052)\">None Detected</font>")
			end
		end)
	end)
	G.RenderStepped:Connect(function()
		local o = workspace:FindFirstChild("GunDrop")
		if o then
			jx:Update("Gun Status: <font color=\"rgb(\048, \050\053\053, \048)\">Dropped</font>")
		else
			jx:Update("Gun Status: <font color=\"#ff\048\048\048\048\">Not Dropped</font>")
		end
	end)
	pK:CreateParagraph("Blocks", "Every blocks you placed have collision but only for you except for others.")
	for o, Y in pairs(Q) do
		pK:CreateButton("Place " .. (o .. " Block"), function()
			sK(function(o)
				local j = h(D)
				if j then
					j = j.CFrame
					fK(o, Y, CFrame.new(j.X, j.Y - 3, j.Z))
				end
			end)
		end)
	end
	pK:CreateSection("Buildings")
	pK:CreateButton("Place Nether Portal", function()
		sK(function(o)
			local Y = h(D)
			if Y then
				Y = Y.CFrame
				local j, Z, t = Y.X, Y.Y - 3, Y.Z
				for Y = 1, 3, 1 do
					fK(o, Q.Obsidian, CFrame.new(j + 3.5 * (Y - 1), Z, t + 7))
				end
				for Y = 1, 2, 1 do
					fK(o, Q.Obsidian, CFrame.new(j - 3.5 * Y, Z, t + 7))
				end
				for Y = 1, 4, 1 do
					fK(o, Q.Obsidian, CFrame.new(j + 7, Z + 3.5 * Y, t + 7))
				end
				for Y = 1, 4, 1 do
					fK(o, Q.Obsidian, CFrame.new(j - 7, Z + 3.5 * Y, t + 7))
				end
				fK(o, Q.Obsidian, CFrame.new(j + 3.5, Z + 14, t + 7))
				fK(o, Q.Obsidian, CFrame.new(j, Z + 14, t + 7))
				fK(o, Q.Obsidian, CFrame.new(j - 3.5, Z + 14, t + 7))
				for Y = 1, 3, 1 do
					aK(o, Q.Portal, CFrame.new(j + 3.5, Z + 3.5 * Y, t + 7))
					aK(o, Q.Portal, CFrame.new(j, Z + 3.5 * Y, t + 7))
					aK(o, Q.Portal, CFrame.new(j - 3.5, Z + 3.5 * Y, t + 7))
				end
			end
		end)
	end)
	pK:CreateButton("Place Aether Portal", function()
		sK(function(o)
			local Y = h(D)
			if Y then
				Y = Y.CFrame
				local j, Z, t = Y.X, Y.Y - 3, Y.Z
				for Y = 1, 3, 1 do
					fK(o, Q.Glowstone, CFrame.new(j + 3.5 * (Y - 1), Z, t + 7))
				end
				for Y = 1, 2, 1 do
					fK(o, Q.Glowstone, CFrame.new(j - 3.5 * Y, Z, t + 7))
				end
				for Y = 1, 4, 1 do
					fK(o, Q.Glowstone, CFrame.new(j + 7, Z + 3.5 * Y, t + 7))
				end
				for Y = 1, 4, 1 do
					fK(o, Q.Glowstone, CFrame.new(j - 7, Z + 3.5 * Y, t + 7))
				end
				fK(o, Q.Glowstone, CFrame.new(j + 3.5, Z + 14, t + 7))
				fK(o, Q.Glowstone, CFrame.new(j, Z + 14, t + 7))
				fK(o, Q.Glowstone, CFrame.new(j - 3.5, Z + 14, t + 7))
				for Y = 1, 3, 1 do
					aK(o, Q.Portal, CFrame.new(j + 3.5, Z + 3.5 * Y, t + 7))
					aK(o, Q.Portal, CFrame.new(j, Z + 3.5 * Y, t + 7))
					aK(o, Q.Portal, CFrame.new(j - 3.5, Z + 3.5 * Y, t + 7))
				end
			end
		end)
	end)
	pK:CreateButton("Place Basic Villager House", function()
		sK(function(o)
			local Y = h(D)
			if Y then
				Y = Y.CFrame
				local j, Z, t = Y.X, Y.Y - 3, Y.Z
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 3.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 3.5, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 3.5, t))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 3.5, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 3.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 3.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 3.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j, Z + 3.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 3.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 3.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 3.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 3.5, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 3.5, t))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 3.5, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 3.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 7, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 7, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 7, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 7, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 7, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 7, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 7, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 7, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 7, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 7, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 7, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 7, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 10.5, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 10.5, t))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 10.5, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j - 7, Z + 10.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j - 3.5, Z + 10.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j, Z + 10.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 3.5, Z + 10.5, t - 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 10.5, t + 7))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 10.5, t + 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 10.5, t))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 10.5, t - 3.5))
				fK(o, Q["Oak Planks"], CFrame.new(j + 7, Z + 10.5, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z + 14, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z + 14, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z + 14, t))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z + 14, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 7, Z + 14, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z + 14, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z + 14, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z + 14, t))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z + 14, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z + 14, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j, Z + 14, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j, Z + 14, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j, Z + 14, t))
				fK(o, Q.Cobblestone, CFrame.new(j, Z + 14, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j, Z + 14, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z + 14, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z + 14, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z + 14, t))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z + 14, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 7, Z + 14, t - 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z + 14, t + 7))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z + 14, t + 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z + 14, t))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z + 14, t - 3.5))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z + 14, t - 7))
			end
		end)
	end)
	pK:CreateButton("Place PP", function()
		sK(function(o)
			local Y = h(D)
			if Y then
				Y = Y.CFrame
				local j, Z, t = Y.X, Y.Y - 3, Y.Z
				for Y = 1, 3, 1 do
					fK(o, Q.Cobblestone, CFrame.new(j, Z, t + 3.5 * Y))
				end
				fK(o, Q["Oak Planks"], CFrame.new(j, Z, t + 14))
				fK(o, Q.Cobblestone, CFrame.new(j + 3.5, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j, Z, t))
				fK(o, Q.Cobblestone, CFrame.new(j - 3.5, Z, t))
			end
		end)
	end)
	VK:CreateSection("Survival")
	VK:CreateToggle("Auto Dodge Murderer <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		if H then
			if o then
				x:MakeTask("Auto Dodge Murderer", G.Heartbeat, function()
					pcall(function()
						local o = p(q.Murderer) or false
						if o ~= nil and (o.Name ~= g and l(o)) then
							local Y = ((h(o)).Position - (h(D)).Position).Magnitude
							if Y <= 15 then
								local Y = ((h(o)).Position - (h(D)).Position).Unit
								local j = CFrame.new((h(D)).Position + Y * 25)
								m(D, "CFrame", j)
							end
						end
					end)
				end)
			else
				x:RemoveTask("Auto Dodge Murderer")
			end
		end
	end)
	VK:CreateSection("Sheriff")
	VK:CreateButton("Shoot Murderer", function()
		local o = V(q.Murderer)
		if o and (o.Character and (l(o) and not x:GetValue("Shooting Murderer"))) then
			local Y = false
			local j = false
			for o, Z in pairs(D.Backpack:GetChildren()) do
				if Z.Name == "Gun" and Z:IsA("Tool") then
					Z.Parent = D.Character
					Y = Z
					j = true
				end
			end
			if not Y then
				for o, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				local Z = (h(D)).CFrame
				local t
				local K
				x:SetValue("Shooting Murderer", true)
				K = G.Heartbeat:Connect(function()
					m(D, "CFrame", (h(o)).CFrame * CFrame.new(0, 0, 5))
				end)
				task.wait(.2)
				t = G.Heartbeat:Connect(function()
					z.Function(Y.KnifeServer.ShootGun, 0, ((h(o)).CFrame + (o.Character.Humanoid.MoveDirection * o.Character.Humanoid.WalkSpeed) / 16).Position, "AH")
				end)
				task.wait()
				K:Disconnect()
				t:Disconnect()
				x:SetNil("Shooting Murderer")
				m(D, "CFrame", Z)
				if j then
					Y.Parent = D.Backpack
				end
			end
		end
	end)
	VK:CreateKeybind("Shoot Murderer", Enum.KeyCode.C, function()
		local o = V(q.Murderer)
		if o and (o.Character and (l(o) and not x:GetValue("Shooting Murderer"))) then
			local Y = false
			local j = false
			for o, Z in pairs(D.Backpack:GetChildren()) do
				if Z.Name == "Gun" and Z:IsA("Tool") then
					Z.Parent = D.Character
					Y = Z
					j = true
				end
			end
			if not Y then
				for o, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				local Z = (h(D)).CFrame
				local t
				local K
				x:SetValue("Shooting Murderer", true)
				K = G.Heartbeat:Connect(function()
					m(D, "CFrame", (h(o)).CFrame * CFrame.new(0, 0, 5))
				end)
				task.wait(.2)
				t = G.Heartbeat:Connect(function()
					z.Function(Y.KnifeServer.ShootGun, 0, ((h(o)).CFrame + (o.Character.Humanoid.MoveDirection * o.Character.Humanoid.WalkSpeed) / 16).Position, "AH")
				end)
				task.wait()
				K:Disconnect()
				t:Disconnect()
				x:SetNil("Shooting Murderer")
				m(D, "CFrame", Z)
				if j then
					Y.Parent = D.Backpack
				end
			end
		end
	end)
	VK:CreateToggle("Sharp Shooter", function(o)
		N.SharpShooter = o
	end)
	VK:CreateToggle("Sheriff Silent Aim", function(o)
		N.SheriffSilentAim = o
	end)
	local Zx = VK:CreateLabel("Current Silent Aim Accuracy: " .. (N.SheriffSilentAimAccuracy or "Dynamic"))
	VK:CreateParagraph("Sheriff Silent Aim", "Probabilities:\n\nSeismic: <s>\055\048%</s> <u>\056\056%</u> \226\172\134\nOverflow: <s>\055\056%</s> <u>\057\048%</u> \226\172\134\nDynamic: <s>\053\049%</s> <u>\053\051%</u> \226\172\134\nRegular: <s>\050\056%</s> <u>\051\056%</u> \226\172\134\n\n<font size=\"\049\050\">Last updated since patch \048.\056</font>")
	VK:CreateDropdown("Sheriff Silent Aim Accuracy", {
		"Overflow <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>";
		"Seismic <font color=\"rgb(\050\048\048, \049\048, \049\048)\">(Content Creator)</font>",
		"Dynamic",
		"Regular"
	}, function(o)
		if o == "Overflow <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>" then
			if H then
				N.SheriffSilentAimAccuracy = "Overflow"
			else
				B("You need to be a premium user to use this feature.")
			end
		elseif o == "Seismic <font color=\"rgb(\050\048\048, \049\048, \049\048)\">(Content Creator)</font>" then
			if y then
				N.SheriffSilentAimAccuracy = "Seismic"
			else
				B("You need to be a content creator to use this feature.")
			end
		else
			N.SheriffSilentAimAccuracy = o
		end
		Zx:Update("Current Silent Aim Accuracy: " .. N.SheriffSilentAimAccuracy)
	end)
	VK:CreateSection("Murderer")
	VK:CreateDropdown("Target Checking", {
		"Mouse Cursor",
		"Closest"
	}, function(o)
		N.MurdererSilentAimTargetChecking = o
	end)
	VK:CreateToggle("Murderer Silent Aim <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.MurdererSilentAim = H and o
		if not H and o then
			B("You need to be a premium user to use this feature.")
		end
	end)
	VK:CreateToggle("Auto Kill Everyone", function(o)
		if o then
			x:MakeTask("Auto Kill Everyone", G.Heartbeat, function()
				if v == "Murderer" and l(D) then
					local o = false
					for Y, j in pairs(D.Backpack:GetChildren()) do
						if j.Name == "Knife" and j:IsA("Tool") then
							j.Parent = D.Character
							o = j
						end
					end
					if not o then
						for Y, j in pairs(D.Character:GetChildren()) do
							if j.Name == "Knife" and j:IsA("Tool") then
								o = j
							end
						end
					end
					if o then
						for Y, j in pairs(O:GetPlayers()) do
							if j.Name ~= g and l(j) then
								HK(j, o)
							end
						end
					end
				end
			end)
		else
			x:RemoveTask("Auto Kill Everyone")
		end
	end)
	VK:CreateToggle("Knife Aura", function(o)
		N.KnifeAura = o
		if o then
			(coroutine.wrap(function()
				while N.KnifeAura do
					task.wait(.15)
					if v == "Murderer" then
						for o, Y in pairs(O:GetPlayers()) do
							if Y.Name ~= g then
								local o = ((h(Y)).Position - (h(D)).Position).Magnitude
								if o <= N.KnifeRange then
									local o = false
									for Y, j in pairs(D.Character:GetChildren()) do
										if j.Name == "Knife" and j:IsA("Tool") then
											o = j
										end
									end
									if o then
										HK(Y, o)
									end
								end
							end
						end
					end
				end
			end))()
		end
	end)
	local tx = VK:CreateSlider("Knife Range", 1, 100, 30, function(o)
		N.KnifeRange = tonumber(o)
	end)
	VK:CreateButton("Kill Everyone", function()
		if v == "Murderer" then
			local o = false
			for Y, j in pairs(D.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = D.Character
					o = j
				end
			end
			if not o then
				for Y, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						o = j
					end
				end
			end
			if o then
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g then
						HK(j, o)
					end
				end
			end
		end
	end)
	VK:CreateKeybind("Kill Everyone", Enum.KeyCode.B, function()
		if v == "Murderer" then
			local o = false
			for Y, j in pairs(D.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = D.Character
					o = j
				end
			end
			if not o then
				for Y, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						o = j
					end
				end
			end
			if o then
				for Y, j in pairs(O:GetPlayers()) do
					if j.Name ~= g then
						HK(j, o)
					end
				end
			end
		end
	end)
	VK:CreateButton("Kill Sheriff", function()
		local o = V(q.Sheriff)
		if v == "Murderer" then
			local Y = false
			for o, j in pairs(D.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = D.Character
					Y = j
				end
			end
			if not Y then
				for o, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				HK(o, Y)
			end
		end
	end)
	VK:CreatePlayerDropdown("Kill Player", function(o)
		if v == "Murderer" then
			local Y = false
			for o, j in pairs(D.Backpack:GetChildren()) do
				if j.Name == "Knife" and j:IsA("Tool") then
					j.Parent = D.Character
					Y = j
				end
			end
			if not Y then
				for o, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						Y = j
					end
				end
			end
			if Y then
				HK(o, Y)
			end
		end
	end)
	hK:CreateSection("Perks")
	hK:CreateToggle("Stealth", function(o)
		if u("Ghost") then
			z.Event(A.Remotes.Gameplay.Stealth, o)
		else
			if o then
				B("Uh oh! you need Ghost Perks for this!")
			end
		end
	end)
	hK:CreateToggle("Fake Gun", function(o)
		if u("FakeGun") then
			z.Event(A.Remotes.Gameplay.FakeGun, o)
		else
			if o then
				B("Uh oh! you need FakeGun Perks for this!")
			end
		end
	end)
	hK:CreateToggle("Sprint Trail", function(o)
		if u("Sprint") then
			if D.Character then
				z.Event(D.Character.SpeedTrail.Toggle, o)
			end
		else
			if o then
				B("Uh oh! you need Sprint Perks for this!")
			end
		end
	end)
	hK:CreateSection("Client")
	hK:CreateToggle("Headless", function(o)
		if o then
			D.Character.Head.Transparency = 1
			for o, Y in pairs(D.Character.Head:GetChildren()) do
				if Y:IsA("Decal") then
					Y.Transparency = 1
				end
			end
		else
			D.Character.Head.Transparency = 0
			for o, Y in pairs(D.Character.Head:GetChildren()) do
				if Y:IsA("Decal") then
					Y.Transparency = 0
				end
			end
		end
	end)
	hK:CreateButton("Korblox", function(o)
		D.Character.RightLowerLeg.MeshId = "\057\048\050\057\052\050\048\057\051"
		D.Character.RightLowerLeg.Transparency = 1
		D.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=\057\048\050\057\052\050\048\057\054"
		D.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=\057\048\050\056\052\051\051\057\056"
		D.Character.RightFoot.MeshId = "\057\048\050\057\052\050\048\056\057"
		D.Character.RightFoot.Transparency = 1
	end)
	mK:CreateButton("Map", function()
		local o = ZK()
		if o then
			local Y = nil
			local j = nil
			for o, Y in pairs(o.Spawns:GetChildren()) do
				if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
					j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
				end
			end
			if j ~= nil then
				Y = j * CFrame.new(0, 5, 0)
				if Y ~= nil then
					m(D, "CFrame", Y)
				end
			end
		end
	end)
	mK:CreateButton("Above Map", function()
		local o = ZK()
		if o then
			local Y = nil
			local j = nil
			for o, Y in pairs(o.Spawns:GetChildren()) do
				if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
					j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
				end
			end
			if j ~= nil then
				Y = CFrame.new(j.X, (CFrame.new((DK((j * CFrame.new(0, 999, 0)).Position, o)).Position) * CFrame.new(0, 7, 0)).Y, j.Z)
				if Y ~= nil then
					m(D, "CFrame", Y)
				end
			end
		end
	end)
	mK:CreateButton("Voting Map", function()
		local o = CFrame.new(-108, 140, 83)
		m(D, "CFrame", o)
	end)
	mK:CreateButton("Void (Safe)", function()
		local o = CFrame.new(99999, 99999, 99999)
		m(D, "CFrame", o)
		if not D.Character:FindFirstChild("Safe Void Path") then
			local o = Instance.new("Part")
			o.Name = "Safe Void Path"
			o.Parent = D.Character
			o.CFrame = CFrame.new(99999, 99995, 99999)
			o.Anchored = true
			o.Size = Vector3.new(300, .1, 300)
			o.Transparency = .5
		end
	end)
	mK:CreateButton("Lobby", function()
		local o = CFrame.new(-110, 140, 10)
		m(D, "CFrame", o)
	end)
	mK:CreateButton("Murderer", function()
		local o = V(q.Murderer)
		if l(o) then
			local Y = (h(o)).CFrame
			m(D, "CFrame", Y)
		end
	end)
	mK:CreateButton("Sheriff", function()
		local o = V(q.Sheriff)
		if l(o) then
			local Y = (h(o)).CFrame
			m(D, "CFrame", Y)
		end
	end)
	mK:CreatePlayerDropdown("TP to Player", function(o)
		m(D, "CFrame", (h(o)).CFrame)
	end)
	local Kx = WK:CreateLabel("Farm Elapse: \048d \048h \048m \048s")
	local Ux = WK:CreateLabel("Collected Coins: \048")
	local rx = WK:CreateLabel("Collected Eggs: \048")
	WK:CreateToggle("Auto Farm", function(o)
		N.AutoFarm = o
		if o then
			(coroutine.wrap(function()
				while N.AutoFarm do
					task.wait()
					local o = V(q.Murderer)
					local Y
					if N.CoinType == "Coin" then
						Y = N.CoinBag ~= L
					elseif N.CoinType == "Egg" then
						Y = N.EggBag ~= 20
					elseif N.CoinType == "Coin and Egg" then
						Y = N.CoinBag ~= L and N.EggBag ~= 20
					end
					if o and (o.Character and (z.Function(A.Remotes.Extras.GetTimer) > 0 and (l(D) and Y))) then
						local o = QK()
						if o and N.PreviousCoin ~= o then
							local Y = o.CFrame
							local j = h(D)
							local t = (h(D)).Position
							local K = (Y.Position - t).Magnitude
							local U = N.FarmSpeedMethod == "Automatic" and (N.FastFarm and K * .0385 or K * .0415) or N.FarmSpeedMethod == "Manual" and tonumber(N.ManualSpeed)
							local r = N.SafeMode
							local G = 0
							local T = 0
							local J
							N.PreviousCoin = o
							N.FarmSTOP = false
							if U >= 10 then
								U = 3
							end
							z.Event(A.Remotes.Gameplay.Stealth, N.StealthWhenFarm)
							if r then
								local o = ZK()
								if o then
									local j = nil
									local Z = nil
									for o, Y in pairs(o.Spawns:GetChildren()) do
										if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
											Z = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
										end
									end
									if Z ~= nil then
										j = CFrame.new(Z.X, (CFrame.new((DK((Z * CFrame.new(0, -999, 0)).Position, o)).Position) * CFrame.new(0, -20, 0)).Y, Z.Z)
										if j ~= nil then
											G = {
												Y.X;
												j.Y,
												Y.Z
											}
											T = j.Y
										end
									end
								end
							else
								G = {
									Y.X;
									Y.Y - 1.875;
									Y.Z
								}
							end
							if r then
								m(D, "CFrame", CFrame.new(j.CFrame.X, T, j.CFrame.Z) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
							end
							NK(true)
							J = CFrame.new(G[1], G[2], G[3]) * CFrame.Angles(math.rad(90), 0, math.rad(90))
							N.CurrentTween = Z:Create(h(D), TweenInfo.new(U, Enum.EasingStyle.Linear, N.SmoothFarm), {
								CFrame = J
							})
							N.CurrentTween:Play()
							task.wait(U + .1)
							if N.CurrentTween then
								if r then
									m(D, "CFrame", CFrame.new(Y.X, Y.Y - 1.875, Y.Z) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
								end
							end
						end
					else
						if not N.FarmSTOP and (D and (D.Character and l(D))) then
							N.FarmSTOP = true
							N.NoReplicateCoin = 0
							NK(false)
							z.Event(A.Remotes.Gameplay.Stealth, false)
							if l(D) then
								if N.TpWhenDone == "Map" then
									local o = ZK()
									if o then
										local Y = nil
										local j = nil
										for o, Y in pairs(o.Spawns:GetChildren()) do
											if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
												j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
											end
										end
										if j ~= nil then
											Y = j * CFrame.new(0, 5, 0)
											if Y ~= nil then
												m(D, "CFrame", Y)
											else
												if N.OldPos ~= nil then
													m(D, "CFrame", N.OldPos)
													N.OldPos = nil
												end
											end
										end
									end
								elseif N.TpWhenDone == "Lobby" then
									local o = CFrame.new(-110, 140, 10)
									m(D, "CFrame", o)
									N.OldPos = nil
								elseif N.TpWhenDone == "Void (Safe)" then
									local o = CFrame.new(99999, 99999, 99999)
									m(D, "CFrame", o)
									if not D.Character:FindFirstChild("Safe Void Path") then
										local o = Instance.new("Part")
										o.Name = "Safe Void Path"
										o.Parent = D.Character
										o.CFrame = CFrame.new(99999, 99995, 99999)
										o.Anchored = true
										o.Size = Vector3.new(300, .1, 300)
										o.Transparency = .5
									end
									N.OldPos = nil
								elseif N.TpWhenDone == "Above Map" then
									local o = ZK()
									if o then
										local Y = nil
										local j = nil
										for o, Y in pairs(o.Spawns:GetChildren()) do
											if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
												j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
											end
										end
										if j ~= nil then
											Y = CFrame.new(j.X, (CFrame.new((DK((j * CFrame.new(0, 999, 0)).Position, o)).Position) * CFrame.new(0, 3, 0)).Y, j.Z)
											if Y ~= nil then
												m(D, "CFrame", Y)
											else
												if N.OldPos ~= nil then
													m(D, "CFrame", N.OldPos)
													N.OldPos = nil
												end
											end
										end
									end
								end
								if v == "Murderer" then
									if N.KillAllWhenDone then
										local o = false
										for Y, j in pairs(D.Backpack:GetChildren()) do
											if j.Name == "Knife" and j:IsA("Tool") then
												j.Parent = D.Character
												o = j
											end
										end
										if not o then
											for Y, j in pairs(D.Character:GetChildren()) do
												if j.Name == "Knife" and j:IsA("Tool") then
													o = j
												end
											end
										end
										if o then
											for Y, j in pairs(O:GetPlayers()) do
												if j.Name ~= g then
													HK(j, o)
												end
											end
										end
									end
								elseif v == "Sheriff" then
									if o and (o.Character and (l(o) and not x:GetValue("Shooting Murderer"))) then
										local Y = false
										local j = false
										for o, Z in pairs(D.Backpack:GetChildren()) do
											if Z.Name == "Gun" and Z:IsA("Tool") then
												Z.Parent = D.Character
												Y = Z
												j = true
											end
										end
										if not Y then
											for o, j in pairs(D.Character:GetChildren()) do
												if j.Name == "Gun" and j:IsA("Tool") then
													Y = j
												end
											end
										end
										if Y then
											local Z = (h(D)).CFrame
											local t
											local K
											x:SetValue("Shooting Murderer", true)
											K = G.Heartbeat:Connect(function()
												m(D, "CFrame", (h(o)).CFrame * CFrame.new(0, 0, 5))
											end)
											task.wait(.2)
											t = G.Heartbeat:Connect(function()
												z.Function(Y.KnifeServer.ShootGun, 0, ((h(o)).CFrame + (o.Character.Humanoid.MoveDirection * o.Character.Humanoid.WalkSpeed) / 16).Position, "AH")
											end)
											task.wait()
											K:Disconnect()
											t:Disconnect()
											x:SetNil("Shooting Murderer")
											m(D, "CFrame", Z)
											if j then
												Y.Parent = D.Backpack
											end
										end
									end
								end
								if N.ResetEveryoneWhenDone then
									sK(function(o)
										for Y, j in pairs(O:GetPlayers()) do
											if j.Name ~= g and j.Character then
												local Y = h(j)
												if Y then
													z.Event(o.Remote, 0, Enum.NormalId.Right, 10, Y, CFrame.new(0, - math.huge, 0))
												end
											end
										end
									end)
								else
									if N.ResetMurdererWhenDone then
										sK(function(Y)
											local j = h(o)
											if j then
												z.Event(Y.Remote, 0, Enum.NormalId.Right, 10, j, CFrame.new(0, - math.huge, 0))
											end
										end)
									end
									if N.ResetSheriffWhenDone then
										o = V(q.Sheriff)
										if o and (o.Character and l(o)) then
											sK(function(Y)
												local j = h(o)
												if j then
													z.Event(Y.Remote, 0, Enum.NormalId.Right, 10, j, CFrame.new(0, - math.huge, 0))
												end
											end)
										end
									end
								end
								if N.ResetWhenDone then
									D.Character.Humanoid.Health = 0
								end
							end
						end
					end
				end
			end))()
		else
			NK(false)
			N.CollectedCoins = 0
			N.NoReplicateCoin = 0
			N.Elapse.s = 0
			N.Elapse.m = 0
			N.Elapse.h = 0
			N.Elapse.d = 0
			Kx:Update("Farm Elapse: " .. (N.Elapse.d .. ("d " .. (N.Elapse.h .. ("h " .. (N.Elapse.m .. ("m " .. (N.Elapse.s .. "s"))))))))
			N.CurrentCoin = nil
			if N.StealthWhenFarm and u("Ghost") then
				z.Event(A.Remotes.Gameplay.Stealth, false)
			end
			if N.CurrentTween ~= nil then
				N.CurrentTween:Pause()
				N.CurrentTween = nil
				task.wait(.15)
			end
			if l(D) then
				if N.TpWhenDone == "Map" then
					local o = ZK()
					if o then
						local Y = nil
						local j = nil
						for o, Y in pairs(o.Spawns:GetChildren()) do
							if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
								j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
							end
						end
						if j ~= nil then
							Y = j * CFrame.new(0, 5, 0)
							if Y ~= nil then
								m(D, "CFrame", Y)
							else
								if N.OldPos ~= nil then
									m(D, "CFrame", N.OldPos)
									N.OldPos = nil
								end
							end
						end
					end
				elseif N.TpWhenDone == "Lobby" then
					local o = CFrame.new(-110, 140, 10)
					m(D, "CFrame", o)
					N.OldPos = nil
				elseif N.TpWhenDone == "Void (Safe)" then
					local o = CFrame.new(99999, 99999, 99999)
					m(D, "CFrame", o)
					if not D.Character:FindFirstChild("Safe Void Path") then
						local o = Instance.new("Part")
						o.Name = "Safe Void Path"
						o.Parent = D.Character
						o.CFrame = CFrame.new(99999, 99995, 99999)
						o.Anchored = true
						o.Size = Vector3.new(300, .1, 300)
						o.Transparency = .5
					end
					N.OldPos = nil
				elseif N.TpWhenDone == "Above Map" then
					local o = ZK()
					if o then
						local Y = nil
						local j = nil
						for o, Y in pairs(o.Spawns:GetChildren()) do
							if Y.Name == "Spawn" or Y.Name == "PlayerSpawn" then
								j = CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z) * CFrame.Angles(0, 0, 0)
							end
						end
						if j ~= nil then
							Y = CFrame.new(j.X, (CFrame.new((DK((j * CFrame.new(0, 999, 0)).Position, o)).Position) * CFrame.new(0, 3, 0)).Y, j.Z)
							if Y ~= nil then
								m(D, "CFrame", Y)
							else
								if N.OldPos ~= nil then
									m(D, "CFrame", N.OldPos)
									N.OldPos = nil
								end
							end
						end
					end
				end
			end
		end
	end)
	WK:CreateSection("Config")
	WK:CreateToggle("Safe Mode <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.SafeMode = H and o
	end)
	WK:CreateToggle("Extra Farm Speed <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.FastFarm = H and o
	end)
	WK:CreateToggle("Smooth Farm <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.SmoothFarm = H and (o and Enum.EasingDirection.In) or Enum.EasingDirection.InOut
	end)
	WK:CreateDropdown("When Done Return In", {
		"Map";
		"Above Map",
		"Lobby";
		"Void (Safe)"
	}, function(o)
		N.TpWhenDone = o
	end)
	WK:CreateDropdown("Farm Speed Method", {
		"Automatic",
		"Manual"
	}, function(o)
		N.FarmSpeedMethod = o
	end)
	local Gx = WK:CreateSlider("Manual Speed", 1, 5, 3, function(o)
		N.ManualSpeed = tonumber(o) or 3
	end)
	WK:CreateDropdown("Coin Type", {
		"Coin";
		"Egg",
		"Coin and Egg"
	}, function(o)
		N.CoinType = o
	end)
	WK:CreateSection("When Done Farming")
	WK:CreateLabel("Murderer:")
	WK:CreateToggle("Kill Everyone", function(o)
		N.KillAllWhenDone = o
	end)
	WK:CreateLabel("Sheriff:")
	WK:CreateToggle("Shoot Murderer", function(o)
		N.ShootMurdWhenDone = o
	end)
	WK:CreateLabel("All Roles:")
	WK:CreateToggle("Reset", function(o)
		N.ResetWhenDone = o
	end)
	WK:CreateToggle("Invisible", function(o)
		N.InvisibleWhenDone = o
	end)
	WK:CreateSection("Spray Paint (When Done Farming)")
	WK:CreateToggle("Reset Everyone <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.ResetEveryoneWhenDone = H and o
	end)
	WK:CreateToggle("Reset Sheriff <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.ResetSheriffWhenDone = H and o
	end)
	WK:CreateToggle("Reset Murderer <font color=\"#\057f\052fff\">(Premium)</font>", function(o)
		N.ResetMurdererWhenDone = H and o
	end)
	WK:CreateSection("Perks")
	WK:CreateToggle("Use Stealth While Farming", function(o)
		N.StealthWhenFarm = o
	end)
	G.RenderStepped:Connect(function()
		local o = D and (D.PlayerGui and (D.PlayerGui.MainGUI and (D.PlayerGui.MainGUI.Lobby and (D.PlayerGui.MainGUI.Lobby.Dock and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Coin and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Coin.CurrencyFrame and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Coin.CurrencyFrame.Icon and D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Coin.CurrencyFrame.Icon.Coins))))))))) or D and (D.PlayerGui and (D.PlayerGui.MainGUI and (D.PlayerGui.MainGUI.Game and (D.PlayerGui.MainGUI.Game.CoinBags and (D.PlayerGui.MainGUI.Game.CoinBags and (D.PlayerGui.MainGUI.Game.CoinBags.Container and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Coin and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Coin.CurrencyFrame and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Coin.CurrencyFrame.Icon and D.PlayerGui.MainGUI.Game.CoinBags.Container.Coin.CurrencyFrame.Icon.Coins)))))))))
		local Y = D and (D.PlayerGui and (D.PlayerGui.MainGUI and (D.PlayerGui.MainGUI.Lobby and (D.PlayerGui.MainGUI.Lobby.Dock and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Coin and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Egg.CurrencyFrame and (D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Egg.CurrencyFrame.Icon and D.PlayerGui.MainGUI.Lobby.Dock.CoinBags.Container.Egg.CurrencyFrame.Icon.Coins))))))))) or D and (D.PlayerGui and (D.PlayerGui.MainGUI and (D.PlayerGui.MainGUI.Game and (D.PlayerGui.MainGUI.Game.CoinBags and (D.PlayerGui.MainGUI.Game.CoinBags and (D.PlayerGui.MainGUI.Game.CoinBags.Container and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Egg and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Egg.CurrencyFrame and (D.PlayerGui.MainGUI.Game.CoinBags.Container.Egg.CurrencyFrame.Icon and D.PlayerGui.MainGUI.Game.CoinBags.Container.Egg.CurrencyFrame.Icon.Coins)))))))))
		if o and Y then
			if tonumber(o.Text) == L then
				Ux:Update("Collected Coins: " .. (o.Text .. " [Full]"))
			else
				Ux:Update("Collected Coins: " .. o.Text)
			end
			if tonumber(Y.Text) == 20 then
				rx:Update("Collected Eggs: " .. (Y.Text .. " [Full]"))
			else
				rx:Update("Collected Eggs: " .. Y.Text)
			end
			CoinBag = tonumber(o.Text) + tonumber(Y.Text)
			N.CoinBag = tonumber(o.Text)
			N.EggBag = tonumber(Y.Text)
		end
	end)
	D.CharacterAdded:Connect(function()
		pcall(function()
			if N.ForceSpawn then
				task.wait(.5)
				local o = h(D)
				o.CFrame = N.ForceSpawnCFrame
				N.ForceSpawn = false
			end
		end)
	end);
	(coroutine.wrap(function()
		while true do
			if N.AutoFarm then
				task.wait(1)
				N.Elapse.s = N.Elapse.s + 1
				if N.Elapse.s == 60 then
					N.Elapse.s = 0
					N.Elapse.m = N.Elapse.m + 1
					if N.Elapse.m == 60 then
						N.Elapse.m = 0
						N.Elapse.h = N.Elapse.h + 1
						if N.Elapse.h == 24 then
							N.Elapse.h = 0
							N.Elapse.d = N.Elapse.d + 1
						end
					end
				end
			else
				task.wait()
				N.Elapse.s = 0
				N.Elapse.m = 0
				N.Elapse.h = 0
				N.Elapse.d = 0
			end
			Kx:Update("Farm Elapse: " .. (N.Elapse.d .. ("d " .. (N.Elapse.h .. ("h " .. (N.Elapse.m .. ("m " .. (N.Elapse.s .. "s"))))))))
		end
	end))()
	JK()
	A.Remotes.Gameplay.Fade.OnClientEvent:Connect(function(o)
		R = o
		v = R[g] and R[g].Role or "Innocent"
		for o, Y in pairs(R) do
			if not Y.Died and not Y.Killed then
				if Y.Role == "Murderer" then
					local Y = V(o)
					if Y and Y.Character then
						q.Murderer = o
					end
				elseif Y.Role == "Sheriff" then
					local Y = V(o)
					if Y and Y.Character then
						q.Sheriff = o
						q.Hero = false
					end
				elseif Y.Role == "Hero" then
					local Y = V(o)
					if Y and Y.Character then
						q.Sheriff = o
						q.Hero = true
					end
				else
					local Y = V(o)
					if Y and Y.Character then
						for Y, j in pairs(Y.Character:GetChildren()) do
							if j.Name == "Gun" and j:IsA("Tool") then
								q.Sheriff = o
								q.Hero = true
								if g == o then
									v = "Hero"
								end
							end
						end
						if q.Sheriff ~= o then
							for Y, j in pairs(Y.Backpack:GetChildren()) do
								if j.Name == "Gun" and j:IsA("Tool") then
									q.Sheriff = o
									q.Hero = true
									if g == o then
										v = "Hero"
									end
								end
							end
						end
					end
				end
			end
		end
		for o, Y in pairs(N.RoleStates) do
			(coroutine.wrap(Y))()
		end
	end)
	A.Remotes.Gameplay.RoundEndFade.OnClientEvent:Connect(function()
		for o, Y in pairs(O:GetPlayers()) do
			R[Y.Name] = {}
			R[Y.Name].Dead = true
			R[Y.Name].Killed = true
		end
		q.Murderer = ""
		q.Sheriff = ""
	end)
	A.UpdatePlayerData.OnClientEvent:Connect(zK)
	workspace.ChildRemoved:Connect(function()
		task.spawn(function()
			task.wait()
			zK()
		end)
	end)
	O.PlayerRemoving:Connect(function(o)
		local Y = N.ESPFolder:FindFirstChild(o.Name)
		if Y then
			Y:Destroy()
		end
	end)
	OK("freeze", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = j.Character:FindFirstChild("LeftLowerArm")
					if o then
						for j = 1, 30, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Top, 2048, o, o.CFrame)
						end
					end
				end
			end
		end)
	end)
	OK("knockup", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = j.Character:FindFirstChild("LeftLowerArm")
					local Z = j.Character:FindFirstChild("RightLowerArm")
					if o and Z then
						for o = 1, 50, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Top, 2048, Z, Z.CFrame)
						end
						for j = 1, 50, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Top, 2048, o, o.CFrame)
						end
					end
				end
			end
		end)
	end)
	OK("lag", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						for j = 1, 250, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Right, 2048, o, o.CFrame)
						end
					end
				end
			end
		end)
	end)
	OK("camerashake", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						z.Event(Y.Remote, 0, Enum.NormalId.Front, 8, Head, Head.CFrame * CFrame.new(0, 1.5, 0))
					end
				end
			end
		end)
	end)
	OK("spoofrole", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = j.Character:FindFirstChild("Head")
					if o then
						z.Event(Y.Remote, q.Murderer == j.Name and 17528040335 or q.Sheriff == j.Name and (not q.Hero and 17528079377) or q.Sheriff == j.Name and (q.Hero and 17528057967) or 17528011613, Enum.NormalId.Front, 5.5, o, o.CFrame * CFrame.new(0, 1.5, 0))
						z.Event(Y.Remote, q.Murderer == j.Name and 17528040335 or q.Sheriff == j.Name and (not q.Hero and 17528079377) or q.Sheriff == j.Name and (q.Hero and 17528057967) or 17528011613, Enum.NormalId.Back, 5.5, o, o.CFrame * CFrame.new(0, 1.5, 0))
					end
				end
			end
		end)
	end)
	OK("box", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						local j = o.CFrame
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Top, 6, o, j * CFrame.new(0, 3, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Bottom, 6, o, j * CFrame.new(0, 3.15, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Bottom, 6, o, j * CFrame.new(0, -2, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Top, 6, o, j * CFrame.new(0, -3, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Front, 6, o, j * CFrame.new(0, .1, 3.1))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Back, 6, o, j * CFrame.new(0, .1, 2.86))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Front, 6, o, j * CFrame.new(0, .1, -2))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Back, 6, o, j * CFrame.new(0, .1, -3))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Right, 6, o, j * CFrame.new(2.86, .1, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Left, 6, o, j * CFrame.new(3.1, .1, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Right, 6, o, j * CFrame.new(-3, .1, 0))
						z.Event(Y.Remote, N.BoxSprayId, Enum.NormalId.Left, 6, o, j * CFrame.new(-2, .1, 0))
					end
				end
			end
		end)
	end)
	OK("blind", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						for j = 1, 5, 1 do
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Left, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Right, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Top, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Bottom, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Back, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
							z.Event(Y.Remote, 14787385911, Enum.NormalId.Front, 55, o, o.CFrame * CFrame.new(0, 5 - 5 * (j - 1), 0))
						end
					end
				end
			end
		end)
	end)
	OK("slickback", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = j.Character:FindFirstChild("LeftLowerArm")
					local Z = j.Character:FindFirstChild("RightLowerArm")
					if o and Z then
						z.Event(Y.Remote, 0, Enum.NormalId.Front, 10000, o, o.CFrame * CFrame.new(0, 0, -1))
						z.Event(Y.Remote, 0, Enum.NormalId.Front, 10000, Z, Z.CFrame * CFrame.new(0, 0, -1))
					end
				end
			end
		end)
	end)
	OK("reset", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						z.Event(Y.Remote, 0, Enum.NormalId.Right, 10, o, CFrame.new(0, - math.huge, 0))
					end
				end
			end
		end)
	end)
	OK("hallow", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						for j = 1, 10, 1 do
							z.Event(Y.Remote, 17618294446, Enum.NormalId.Top, 2, o, o.CFrame * CFrame.new(0, 2.5 + j / 100, 0))
							z.Event(Y.Remote, 17618294446, Enum.NormalId.Bottom, 2, o, o.CFrame * CFrame.new(0, 2.5 + j / 100, 0))
						end
					end
				end
			end
		end)
	end)
	OK("glitch", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						for j = 1, 150, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Right, 10, o, o.CFrame)
						end
					end
				end
			end
		end)
	end)
	OK("yeet", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						for j = 1, 5, 1 do
							z.Event(Y.Remote, 0, Enum.NormalId.Right, 999999, o, CFrame.new(99999, 99999, 99999))
						end
					end
				end
			end
		end)
	end)
	OK("floorclip", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = j.Character:FindFirstChild("RighHand")
					if o then
						z.Event(Y.Remote, 0, Enum.NormalId.Front, 2500, o, CFrame.new(0, -25000, 0))
						z.Event(Y.Remote, 0, Enum.NormalId.Front, 2500, o, CFrame.new(0, 25000, 0))
					end
				end
			end
		end)
	end)
	OK("pp", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(-1, -1, -1))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(1, -1, -1))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, -1))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, -2))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, -3))
						xK(Y, 17621332813, o, o.CFrame * CFrame.new(0, -1, -4))
					end
				end
			end
		end)
	end)
	OK("backpp", true, function(o)
		sK(function(Y)
			for o, j in pairs(o) do
				if j and j.Character then
					local o = h(j)
					if o then
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(-1, -1, 4.5))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(1, -1, 4.5))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, 4.5))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, 3.5))
						xK(Y, N.PenisColor == "White" and 17621332813 or N.PenisColor == "Black" and 17621324485, o, o.CFrame * CFrame.new(0, -1, 2.5))
						xK(Y, 17621332813, o, o.CFrame * CFrame.new(0, -1, 1.5))
					end
				end
			end
		end)
	end)
	OK("blacklobby", false, function(o)
		sK(function(o)
			for Y, j in pairs(workspace.Lobby:GetDescendants()) do
				task.wait()
				if j:IsA("BasePart") or j:IsA("Part") then
					z.Event(o.Remote, 14787385911, Enum.NormalId.Top, 9999, j, j.CFrame)
					z.Event(o.Remote, 14787385911, Enum.NormalId.Front, 9999, j, j.CFrame)
					z.Event(o.Remote, 14787385911, Enum.NormalId.Bottom, 9999, j, j.CFrame)
					z.Event(o.Remote, 14787385911, Enum.NormalId.Right, 9999, j, j.CFrame)
					z.Event(o.Remote, 14787385911, Enum.NormalId.Left, 9999, j, j.CFrame)
					z.Event(o.Remote, 14787385911, Enum.NormalId.Back, 9999, j, j.CFrame)
				end
			end
		end)
	end)
	OK("stealgun", false, function(o)
		local Y = V(q.Sheriff)
		if Y and Y.Character then
			sK(function(o)
				local j = h(Y)
				if j then
					local Y = 0
					z.Event(o.Remote, 0, Enum.NormalId.Right, 10, j, CFrame.new(0, - math.huge, 0))
					repeat
						task.wait()
						Y = Y + 1
					until workspace:FindFirstChild("GunDrop") or Y >= 25
					task.spawn(function()
						if workspace:FindFirstChild("GunDrop") and not x:GetValue("Grabbing") then
							local o = (h(D)).CFrame
							x:SetValue("Grabbing", true)
							x:MakeTask("Grab Gun", G.Heartbeat, function()
								if x:GetValue("Grabbing") then
									m(D, "CFrame", workspace.GunDrop.CFrame)
									D.Character.Humanoid.PlatformStand = false
								end
							end)
							repeat
								task.wait()
							until not workspace:FindFirstChild("GunDrop")
							x:RemoveTask("Grab Gun")
							m(D, "CFrame", o)
							x:SetNil("Grabbing")
							D.Character.Humanoid.PlatformStand = false
							D.Character.Humanoid:ChangeState(1)
						end
					end)
				end
			end)
		end
	end)
	OK("breakgun", false, function(o)
		local Y = V(q.Sheriff)
		if Y and Y.Name ~= g then
			local o = false
			for Y, j in pairs(Y.Backpack:GetChildren()) do
				if j.Name == "Gun" and j:IsA("Tool") then
					o = j
				end
			end
			if not o then
				for Y, j in pairs(Y.Character:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						o = j
					end
				end
			end
			if o then
				local Y, j = pcall(function()
					z.Function(o.KnifeServer.ShootGun, 0, CFrame.new(), "AH")
				end)
				if j and not Y then
					I("<font color=\"rgb(\048, \050\053\053, \048)\">Successfully</font> Breaked the gun from <font color=\"rgb(\048, \048, \050\053\053)\">Sheriff</font>!")
				end
			end
		end
	end)
	OK("kill", true, function(o)
		if o ~= nil then
			if v == "Murderer" and l(Player) then
				local Y = false
				for o, j in pairs(D.Backpack:GetChildren()) do
					if j.Name == "Knife" and j:IsA("Tool") then
						j.Parent = D.Character
						Y = j
					end
				end
				if not Y then
					for o, j in pairs(D.Character:GetChildren()) do
						if j.Name == "Knife" and j:IsA("Tool") then
							Y = j
						end
					end
				end
				if Y then
					for o, j in pairs(o) do
						HK(j, Y)
					end
				end
			end
		end
	end)
	OK("shootmurderer", false, function(o)
		local Y = V(q.Murderer)
		if Y and (Y.Character and (l(Y) and not x:GetValue("Shooting Murderer"))) then
			local o = false
			local j = false
			for Y, Z in pairs(D.Backpack:GetChildren()) do
				if Z.Name == "Gun" and Z:IsA("Tool") then
					Z.Parent = D.Character
					o = Z
					j = true
				end
			end
			if not o then
				for Y, j in pairs(D.Character:GetChildren()) do
					if j.Name == "Gun" and j:IsA("Tool") then
						o = j
					end
				end
			end
			if o then
				local Z = (h(D)).CFrame
				local t
				local K
				x:SetValue("Shooting Murderer", true)
				K = G.Heartbeat:Connect(function()
					m(D, "CFrame", (h(Y)).CFrame * CFrame.new(0, 0, 5))
				end)
				task.wait(.2)
				t = G.Heartbeat:Connect(function()
					z.Function(o.KnifeServer.ShootGun, 0, ((h(Y)).CFrame + (Y.Character.Humanoid.MoveDirection * Y.Character.Humanoid.WalkSpeed) / 16).Position, "AH")
				end)
				task.wait()
				K:Disconnect()
				t:Disconnect()
				x:SetNil("Shooting Murderer")
				m(D, "CFrame", Z)
				if j then
					o.Parent = D.Backpack
				end
			end
		end
	end)
	OK("trap", true, function(o)
		if o ~= nil then
			if u("Trap") then
				for o, Y in pairs(o) do
					if Y and Y.Character then
						z.Function(A.TrapSystem.PlaceTrap, (h(Y)).CFrame)
					end
				end
			else
				B("Uh oh! you need Trap Perks for this!")
			end
		end
	end);
	(coroutine.wrap(function()
		for o, Y in pairs(O:GetPlayers()) do
			Y.CharacterAdded:Connect(function()
				task.spawn(function()
					local o = false
					repeat
						task.wait()
						pcall(function()
							local j = Y.Character.UpperTorso
							if j then
								o = true
							end
						end)
					until o
					local j = Instance.new("BillboardGui")
					j.Name = "Target"
					j.Parent = Y.Character.UpperTorso
					local Z = Instance.new("ImageLabel")
					Z.Name = "Icon"
					Z.Parent = j
				end)
			end)
			pcall(function()
				task.spawn(function()
					local o = false
					repeat
						task.wait()
						pcall(function()
							local j = Y.Character.UpperTorso
							if j then
								o = true
							end
						end)
					until o
					local j = Instance.new("BillboardGui")
					j.Name = "Target"
					j.Parent = Y.Character.UpperTorso
					local Z = Instance.new("ImageLabel")
					Z.Name = "Icon"
					Z.Parent = j
				end)
			end)
		end
		O.PlayerAdded:Connect(function(o)
			o.CharacterAdded:Connect(function()
				task.spawn(function()
					local Y = false
					repeat
						task.wait()
						pcall(function()
							local j = o.Character.UpperTorso
							if j then
								Y = true
							end
						end)
					until Y
					local j = Instance.new("BillboardGui")
					j.Name = "Target"
					j.Parent = o.Character.UpperTorso
					local Z = Instance.new("ImageLabel")
					Z.Name = "Icon"
					Z.Parent = j
				end)
			end)
			pcall(function()
				task.spawn(function()
					local Y = false
					repeat
						task.wait()
						pcall(function()
							local j = o.Character.UpperTorso
							if j then
								Y = true
							end
						end)
					until Y
					local j = Instance.new("BillboardGui")
					j.Name = "Target"
					j.Parent = o.Character.UpperTorso
					local Z = Instance.new("ImageLabel")
					Z.Name = "Icon"
					Z.Parent = j
				end)
			end)
		end)
	end))()
	r.AllInOne = GK(game, "__namecall", function(Y, ...)
		local j = getnamecallmethod()
		if not checkcaller() then
			local Z = {
				...
			}
			if j == "InvokeServer" then
				if Y.Name == "ShootGun" and Y.Parent.Name == "KnifeServer" then
					if N.SheriffSilentAim then
						if f["Shooting Murderer"] then
							return
						else
							local o = O[q.Murderer]
							local j = N.SharpShooter and o.Character.PrimaryPart or o.Character.HumanoidRootPart
							Z[1] = 0
							if N.SheriffSilentAimAccuracy == "Seismic" then
								local o = j.AssemblyLinearVelocity
								if o.Magnitude == 0 then
									Z[2] = j.Position
								else
									local Y = (o.Unit * j.Velocity.Magnitude) / 16.5
									local t = Y.Y
									if t > 2.65 then
										t = 2.65
									elseif t < -2 then
										t = -2
									end
									Z[2] = j.Position + Vector3.new(Y.X, t, Y.Z / 1.25)
								end
							elseif N.SheriffSilentAimAccuracy == "Overflow" then
								local Y = j.AssemblyLinearVelocity
								if Y.Magnitude == 0 then
									Z[2] = j.Position
								else
									local t = (Y.Unit * j.Velocity.Magnitude) / 17 + o.Character.Humanoid.MoveDirection
									local K = t.Y
									if K > 2.5 then
										K = 2.5
									elseif K < -2 then
										K = -2
									end
									Z[2] = j.Position + Vector3.new(t.X, K, t.Z)
								end
							elseif N.SheriffSilentAimAccuracy == "Dynamic" then
								Z[2] = j.Position + o.Character.Humanoid.MoveDirection
							elseif N.SheriffSilentAimAccuracy == "Regular" then
								Z[2] = j.Position
							end
							return r.AllInOne(Y, unpack(Z))
						end
					end
				end
				return r.AllInOne(Y, ...)
			elseif j == "FireServer" then
				if Y.Name == "Throw" then
					if N.MurdererSilentAim then
						local o = eK(N.MurdererSilentAimTargetChecking)
						if o then
							local Y = o.Character.HumanoidRootPart.AssemblyLinearVelocity / 3
							Z[1] = CFrame.new(o.Character.HumanoidRootPart.Position + Vector3.new(Y.X, Y.Y / 1.5, Y.Z))
						end
						return r.AllInOne(Y, Z[1], Z[2])
					end
				elseif Y.Name == "Remote" then
					if Y.Parent.Name == "SprayPaint" then
						if N.InfiniteSpraySize then
							Z[3] = 9999
							return r.AllInOne(Y, Z[1], Z[2], Z[3], Z[4], Z[5])
						end
					elseif Y.Parent.Name == "FakeBomb" then
						if N.AutoPrankBombClutch then
							Z[1] = D.Character.Head.CFrame * CFrame.new(0, -4, -5)
							return r.AllInOne(Y, Z[1], Z[2])
						end
					end
				elseif Y == o then
					if N.AlwaysAliveChat then
						Z[2] = "alive"
						return r.AllInOne(Y, Z[1], Z[2])
					end
				end
				return r.AllInOne(Y, ...)
			elseif j == "Kick" then
				if Y == D then
					if N.AntiKick then
						return
					end
				end
			end
		end
		return r.AllInOne(Y, ...)
	end)
	r.KickHook = hookfunction(D.Kick, newcclosure(function(...)
		if N.AntiKick then
			return
		else
			return r.KickHooks(...)
		end
	end))
	for o, Y in pairs(getconnections(A.UpdatePlayerData.OnClientEvent)) do
		pcall(zK)
		Y.Function(R)
	end
	if H then
		vK()
	end
end
local function qK()
	local o = {
		Bandit = {
			Enemy = "Bandit [Lv. \053]",
			QuestName = "BanditQuest\049",
			EnemyName = "Bandit";
			LevelQuest = 1,
			CFramePos = CFrame.new(1059.37195, 15.4495068, 1550.4231, .939700544, 0, 0, 0, 1, 0, .341998369, 0, .939700544);
			QuestGiver = "Bandit Quest Giver",
			World = 1
		};
		Monkey = {
			Enemy = "Monkey [Lv. \049\052]";
			QuestName = "JungleQuest";
			EnemyName = "Monkey";
			LevelQuest = 1,
			CFramePos = CFrame.new(-1598, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			QuestGiver = "Adventurer",
			World = 1
		},
		Gorilla = {
			Enemy = "Gorilla [Lv. \050\048]",
			QuestName = "JungleQuest",
			EnemyName = "Gorilla",
			LevelQuest = 2,
			CFramePos = CFrame.new(-1598, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			QuestGiver = "Adventurer",
			World = 1
		};
		Pirate = {
			Enemy = "Pirate [Lv. \051\053]";
			QuestName = "BuggyQuest\049";
			EnemyName = "Pirate";
			LevelQuest = 1,
			CFramePos = CFrame.new(-1141, 4.10001802, 3831.5498, .965929627, 0, 0, 0, 1, 0, .258804798, 0, .965929627),
			QuestGiver = "Pirate Adventurer";
			World = 1
		};
		Brute = {
			Enemy = "Brute [Lv. \052\053]";
			QuestName = "BuggyQuest\049",
			EnemyName = "Brute",
			LevelQuest = 2,
			CFramePos = CFrame.new(-1141, 4.10001802, 3831.5498, .965929627, 0, 0, 0, 1, 0, .258804798, 0, .965929627);
			QuestGiver = "Pirate Adventurer";
			World = 1
		};
		Desert_Bandit = {
			Enemy = "Desert Bandit [Lv. \054\048]";
			QuestName = "DesertQuest",
			EnemyName = "Desert Bandit";
			LevelQuest = 1;
			CFramePos = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, 0, 0, 1, 0, .573571265, 0, .819155693);
			QuestGiver = "Desert Adventurer";
			World = 1
		};
		Desert_Officer = {
			Enemy = "Desert Officer [Lv. \055\048]";
			QuestName = "DesertQuest",
			EnemyName = "Desert Officer",
			LevelQuest = 2;
			CFramePos = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, 0, 0, 1, 0, .573571265, 0, .819155693),
			QuestGiver = "Desert Adventurer";
			World = 1
		};
		Snow_Bandit = {
			Enemy = "Snow Bandit [Lv. \057\048]",
			QuestName = "SnowQuest";
			EnemyName = "Snow Bandit",
			LevelQuest = 1,
			CFramePos = CFrame.new(1389.74451, 88.1519318, -1298, 0, 0, .939684391, 0, 1, 0, 0, 0, 0),
			QuestGiver = "Villager";
			World = 1
		},
		Snowman = {
			Enemy = "Snowman [Lv. \049\048\048]",
			QuestName = "SnowQuest",
			EnemyName = "Snowman",
			LevelQuest = 2,
			CFramePos = CFrame.new(1389.74451, 88.1519318, -1298, 0, 0, .939684391, 0, 1, 0, 0, 0, 0),
			QuestGiver = "Villager",
			World = 1
		};
		Chief_Petty_Officer = {
			Enemy = "Chief Petty Officer [Lv. \049\050\048]";
			QuestName = "MarineQuest\050",
			EnemyName = "Cheif Petty Officer";
			LevelQuest = 1,
			CFramePos = CFrame.new(-5039, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			QuestGiver = "Marine";
			World = 1
		};
		Sky_Bandit = {
			Enemy = "Sky Bandit [Lv. \049\053\048]";
			QuestName = "SkyQuest";
			EnemyName = "Sky Bandit";
			LevelQuest = 1,
			CFramePos = CFrame.new(-4839, 716.368591, -2619, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268),
			QuestGiver = "Sky Adventurer";
			World = 1
		},
		Dark_Master = {
			Enemy = "Dark Master [Lv. \049\055\053]",
			QuestName = "SkyQuest";
			EnemyName = "Dark Master",
			LevelQuest = 2,
			CFramePos = CFrame.new(-4839, 716.368591, -2619, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268),
			QuestGiver = "Sky Adventurer",
			World = 1
		},
		Prisoner = {
			Enemy = "Prisoner [Lv. \049\057\048]",
			QuestName = "PrisonerQuest";
			EnemyName = "Prisoner";
			LevelQuest = 1;
			CFramePos = CFrame.new(5308.93115, 1.65517521, 475.120514, 0, 0, 0, 1.60817859e-09, 1, 0, .995993316, 0, 0);
			QuestGiver = "Jail Keeper",
			World = 1
		};
		Dangerous_Prisoner = {
			Enemy = "Dangerous Prisoner [Lv. \050\049\048]";
			QuestName = "PrisonerQuest",
			EnemyName = "Dangerous Prisoner";
			LevelQuest = 2,
			CFramePos = CFrame.new(5308.93115, 1.65517521, 475.120514, 0, 0, 0, 1.60817859e-09, 1, 0, .995993316, 0, 0);
			QuestGiver = "Jail Keeper";
			World = 1
		},
		Toga_Warrior = {
			Enemy = "Toga Warrior [Lv. \050\053\048]",
			QuestName = "ColosseumQuest";
			EnemyName = "Toga Warrior",
			LevelQuest = 1;
			CFramePos = CFrame.new(-1580, 6.35000277, -2986, 0, 0, 0, 0, 1, 0, .857167721, 0, 0),
			QuestGiver = "Colosseum Quest Giver",
			World = 1
		},
		Gladiator = {
			Enemy = "Gladiator [Lv. \050\055\053]",
			QuestName = "ColosseumQuest",
			EnemyName = "Gladiator";
			LevelQuest = 2,
			CFramePos = CFrame.new(-1580, 6.35000277, -2986, 0, 0, 0, 0, 1, 0, .857167721, 0, 0);
			QuestGiver = "Colosseum Quest Giver",
			World = 1
		},
		Military_Soldier = {
			Enemy = "Military Soldier [Lv. \051\048\048]",
			QuestName = "MagmaQuest";
			EnemyName = "Military Soldier";
			LevelQuest = 1,
			CFramePos = CFrame.new(-5313, 10.9500084, 8515.29395, 0, 0, .866048813, 0, 1, 0, 0, 0, 0),
			QuestGiver = "The Mayor",
			World = 1
		};
		Military_Spy = {
			Enemy = "Military Spy [Lv. \051\050\053]";
			QuestName = "MagmaQuest";
			EnemyName = "Military Spy",
			LevelQuest = 2;
			CFramePos = CFrame.new(-5313, 10.9500084, 8515.29395, 0, 0, .866048813, 0, 1, 0, 0, 0, 0),
			QuestGiver = "The Mayor";
			World = 1
		};
		Fishman_Warrior = {
			Enemy = "Fishman Warrior [Lv. \051\055\053]",
			QuestName = "FishmanQuest";
			EnemyName = "Fishman Warrior";
			LevelQuest = 1;
			CFramePos = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734),
			Entrance = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
			QuestGiver = "King Neptune",
			World = 1
		},
		Fishman_Commando = {
			Enemy = "Fishman Commando [Lv. \052\048\048]",
			QuestName = "FishmanQuest";
			EnemyName = "Fishman Commando",
			LevelQuest = 2;
			CFramePos = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			Entrance = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
			QuestGiver = "King Neptune";
			World = 1
		};
		God_Guard = {
			Enemy = "God\'s Guard [Lv. \052\053\048]";
			QuestName = "SkyExp\049Quest",
			EnemyName = "God\'s Guard",
			LevelQuest = 1;
			CFramePos = CFrame.new(-4721, 843.874695, -1949, .996191859, 0, 0, 0, 1, 0, .0871884301, 0, .996191859),
			Entrance = Vector3.new(-4607, 872.54248, -1667);
			QuestGiver = "Mole",
			World = 1
		};
		Shanda = {
			Enemy = "Shanda [Lv. \052\055\053]",
			QuestName = "SkyExp\049Quest",
			EnemyName = "Shanda",
			LevelQuest = 2;
			CFramePos = CFrame.new(-7894, 5547.1416015625, -380);
			Entrance = Vector3.new(-7894, 5547.1416015625, -380);
			QuestGiver = "Mole";
			World = 1
		};
		Royal_Squad = {
			Enemy = "Royal Squad [Lv. \053\050\053]";
			QuestName = "SkyExp\050Quest",
			EnemyName = "Royal Squad",
			LevelQuest = 1,
			CFramePos = CFrame.new(-7906, 5634.6626, -1411, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			Entrance = Vector3.new(-7894, 5547.1416015625, -380);
			QuestGiver = "Gan Fall Adventurer",
			World = 1
		};
		Royal_Soldier = {
			Enemy = "Royal Soldier [Lv. \053\053\048]",
			QuestName = "SkyExp\050Quest";
			EnemyName = "Royal Soldier",
			LevelQuest = 2,
			CFramePos = CFrame.new(-7906, 5634.6626, -1411, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Entrance = Vector3.new(-7894, 5547.1416015625, -380),
			QuestGiver = "Gan Fall Adventurer",
			World = 1
		},
		Galley_Pirate = {
			Enemy = "Galley Pirate [Lv. \054\050\053]",
			QuestName = "FountainQuest",
			EnemyName = "Galley Pirate";
			LevelQuest = 1,
			CFramePos = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, 0, 0, .087131381);
			QuestGiver = "Freezeburg Quest Giver";
			World = 1
		},
		Galley_Captain = {
			Enemy = "Galley Captain [Lv. \054\053\048]";
			QuestName = "FountainQuest",
			EnemyName = "Galley Captain";
			LevelQuest = 2,
			CFramePos = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, 0, 0, .087131381),
			QuestGiver = "Freezeburg Quest Giver";
			World = 1
		},
		Raider = {
			Enemy = "Raider [Lv. \055\048\048]";
			QuestName = "Area\049Quest";
			EnemyName = "Raider",
			LevelQuest = 1;
			CFramePos = CFrame.new(-429, 71.7699966, 1836.18188, 0, 0, 0, 0, 1, 0, .974368095, 0, 0);
			QuestGiver = "Area \049 Quest Giver";
			World = 2
		},
		Mercenary = {
			Enemy = "Mercenary [Lv. \055\050\053]";
			QuestName = "Area\049Quest",
			EnemyName = "Mercenary",
			LevelQuest = 2;
			CFramePos = CFrame.new(-429, 71.7699966, 1836.18188, 0, 0, 0, 0, 1, 0, .974368095, 0, 0);
			QuestGiver = "Area \050 Quest Giver",
			World = 2
		};
		Swan_Pirate = {
			Enemy = "Swan Pirate [Lv. \055\055\053]";
			QuestName = "Area\050Quest",
			EnemyName = "Spawn Pirate",
			LevelQuest = 1,
			CFramePos = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, 0, 0, .139203906),
			QuestGiver = "Area \050 Quest Giver";
			World = 2
		};
		Factory_Staff = {
			Enemy = "Factory Staff [Lv. \056\048\048]",
			QuestName = "Area\050Quest";
			EnemyName = "Factory Staff",
			LevelQuest = 2,
			CFramePos = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, 0, 0, .139203906),
			QuestGiver = "Area \050 Quest Giver";
			World = 2
		};
		Marine_Lieutenant = {
			Enemy = "Marine Lieutenant [Lv. \056\055\053]";
			QuestName = "MarineQuest\051";
			EnemyName = "Marine Lieutenant";
			LevelQuest = 1,
			CFramePos = CFrame.new(-2440, 71.7140732, -3216, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268),
			QuestGiver = "Marine Quest Giver";
			World = 2
		};
		Marine_Captain = {
			Enemy = "Marine Captain [Lv. \057\048\048]",
			QuestName = "MarineQuest\051",
			EnemyName = "Marine Captain";
			LevelQuest = 2,
			CFramePos = CFrame.new(-2440, 71.7140732, -3216, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268),
			QuestGiver = "Marine Quest Giver";
			World = 2
		};
		Zombie = {
			Enemy = "Zombie [Lv. \057\053\048]";
			QuestName = "ZombieQuest",
			EnemyName = "Zombie",
			LevelQuest = 1,
			CFramePos = CFrame.new(-2440, 71.7140732, -3216, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268);
			QuestGiver = "Graveyard Quest Giver",
			World = 2
		};
		Vampire = {
			Enemy = "Vampire [Lv. \057\055\053]";
			QuestName = "ZombieQuest",
			EnemyName = "Vampire",
			LevelQuest = 2;
			CFramePos = CFrame.new(-2440, 71.7140732, -3216, .866007268, 0, .500031412, 0, 1, 0, 0, 0, .866007268),
			QuestGiver = "Graveyard Quest Giver";
			World = 2
		},
		Snow_Trooper = {
			Enemy = "Snow Trooper [Lv. \049\048\048\048]";
			QuestName = "SnowMountainQuest",
			EnemyName = "Snow Trooper";
			LevelQuest = 1;
			CFramePos = CFrame.new(609.858826, 400.119904, -5372, 0, 0, .92718488, 0, 1, 0, 0, 0, 0);
			QuestGiver = "Snow Quest Giver";
			World = 2
		};
		Winter_Warrior = {
			Enemy = "Winter Warrior [Lv. \049\048\053\048]";
			QuestName = "SnowMountainQuest";
			EnemyName = "Winter Warrior";
			LevelQuest = 2,
			CFramePos = CFrame.new(609.858826, 400.119904, -5372, 0, 0, .92718488, 0, 1, 0, 0, 0, 0),
			QuestGiver = "Snow Quest Giver",
			World = 2
		},
		Lab_Subordinate = {
			Enemy = "Lab Subordinate [Lv. \049\049\048\048]",
			QuestName = "IceSideQuest",
			EnemyName = "Lab Subordinate";
			LevelQuest = 1,
			CFramePos = CFrame.new(-6064, 15.2422857, -4902, .453972578, 0, 0, 0, 1, 0, .891015649, 0, .453972578);
			QuestGiver = "Ice Quest Giver";
			World = 2
		},
		Horned_Warrior = {
			Enemy = "Horned Warrior [Lv. \049\049\050\053]",
			QuestName = "IceSideQuest";
			EnemyName = "Horned Warrior";
			LevelQuest = 2,
			CFramePos = CFrame.new(-6064, 15.2422857, -4902, .453972578, 0, 0, 0, 1, 0, .891015649, 0, .453972578),
			QuestGiver = "Ice Quest Giver",
			World = 2
		};
		Magma_Ninja = {
			Enemy = "Magma Ninja [Lv. \049\049\055\053]",
			QuestName = "FireSideQuest";
			EnemyName = "Magma Ninja";
			LevelQuest = 1,
			CFramePos = CFrame.new(-5428, 15.0622921, -5299, 0, 0, .469463557, 0, 1, 0, 0, 0, 0),
			QuestGiver = "Fire Quest Giver";
			World = 2
		};
		Lava_Pirate = {
			Enemy = "Lava Pirate [Lv. \049\050\048\048]",
			QuestName = "FireSideQuest",
			EnemyName = "Lava Pirate",
			LevelQuest = 2,
			CFramePos = CFrame.new(-5428, 15.0622921, -5299, 0, 0, .469463557, 0, 1, 0, 0, 0, 0);
			QuestGiver = "Fire Quest Giver";
			World = 2
		},
		Ship_Deckhand = {
			Enemy = "Ship Deckhand [Lv. \049\050\053\048]";
			QuestName = "ShipQuest\049",
			EnemyName = "Ship Deckhand",
			LevelQuest = 1;
			CFramePos = CFrame.new(1037.80127, 125.092171, 32911.6016);
			Entrance = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125);
			QuestGiver = "Rear Crew Quest Giver";
			World = 2
		},
		Ship_Engineer = {
			Enemy = "Ship Engineer [Lv. \049\050\055\053]";
			QuestName = "ShipQuest\049",
			EnemyName = "Ship Engineer";
			LevelQuest = 2;
			CFramePos = CFrame.new(1037.80127, 125.092171, 32911.6016),
			Entrance = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125);
			QuestGiver = "Rear Crew Quest Giver",
			World = 2
		};
		Ship_Steward = {
			Enemy = "Ship Steward [Lv. \049\051\048\048]";
			QuestName = "ShipQuest\050",
			EnemyName = "Ship Steward";
			LevelQuest = 1,
			CFramePos = CFrame.new(968.80957, 125.092171, 33244.125);
			Entrance = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
			QuestGiver = "Front Crew Quest Giver";
			World = 2
		};
		Ship_Officer = {
			Enemy = "Ship Officer [Lv. \049\051\050\053]",
			QuestName = "ShipQuest\050",
			EnemyName = "Ship Officer",
			LevelQuest = 2;
			CFramePos = CFrame.new(968.80957, 125.092171, 33244.125),
			Entrance = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125);
			QuestGiver = "Front Crew Quest Giver";
			World = 2
		};
		Arctic_Warrior = {
			Enemy = "Arctic Warrior [Lv. \049\051\053\048]";
			QuestName = "FrostQuest";
			EnemyName = "Arctic Warrior";
			LevelQuest = 1;
			CFramePos = CFrame.new(5667.6582, 26.7997818, -6486, 0, 0, 0, 0, 1, 0, .358349502, 0, 0),
			QuestGiver = "Frost Quest Giver";
			World = 2
		},
		Snow_Lurker = {
			Enemy = "Snow Lurker [Lv. \049\051\055\053]";
			QuestName = "FrostQuest";
			EnemyName = "Snow Lurker",
			LevelQuest = 2;
			CFramePos = CFrame.new(5667.6582, 26.7997818, -6486, 0, 0, 0, 0, 1, 0, .358349502, 0, 0),
			QuestGiver = "Frost Quest Giver",
			World = 2
		};
		Sea_Soldier = {
			Enemy = "Sea Soldier [Lv. \049\052\050\053]";
			QuestName = "ForgottenQuest",
			EnemyName = "Sea Soldier",
			LevelQuest = 1,
			CFramePos = CFrame.new(-3054, 235.544281, -10142, .990270376, 0, 0, 0, 1, 0, .13915664, 0, .990270376),
			QuestGiver = "Forgotten Quest Giver";
			World = 2
		};
		Water_Fighter = {
			Enemy = "Water Fighter [Lv. \049\052\053\048]",
			QuestName = "ForgottenQuest",
			EnemyName = "Water Fighter",
			LevelQuest = 2;
			CFramePos = CFrame.new(-3054, 235.544281, -10142, .990270376, 0, 0, 0, 1, 0, .13915664, 0, .990270376),
			QuestGiver = "Forgotten Quest Giver",
			World = 2
		},
		Pirate_Millionaire = {
			Enemy = "Pirate Millionaire [Lv. \049\053\048\048]";
			QuestName = "PiratePortQuest";
			EnemyName = "Pirate Millionaire",
			LevelQuest = 1;
			CFramePos = CFrame.new(-290, 42.9034653, 5581.58984, .965929627, 0, 0, 0, 1, 0, .258804798, 0, .965929627);
			QuestGiver = "";
			World = 3
		};
		Pistol_Billonaire = {
			Enemy = "Pistol Billionaire [Lv. \049\053\050\053]";
			QuestName = "PiratePortQuest",
			EnemyName = "Pistol Billionaire",
			LevelQuest = 2;
			CFramePos = CFrame.new(-290, 42.9034653, 5581.58984, .965929627, 0, 0, 0, 1, 0, .258804798, 0, .965929627);
			QuestGiver = "",
			World = 3
		};
		Dragon_Crew_Warrior = {
			Enemy = "Dragon Crew Warrior [Lv. \049\053\055\053]";
			QuestName = "AmazonQuest",
			EnemyName = "Dragon Crew Warrior";
			LevelQuest = 1;
			CFramePos = CFrame.new(5832.83594, 51.6806107, -1101, .898790359, 0, 0, 0, 1, 0, .438378751, 0, .898790359);
			QuestGiver = "";
			Wolrd = 3
		};
		Dragon_Crew_Archer = {
			Enemy = "Dragon Crew Archer [Lv. \049\054\048\048]";
			QuestName = "AmazonQuest";
			EnemyName = "Dragon Crew Archer";
			LevelQuest = 2,
			CFramePos = CFrame.new(5833.1147460938, 51.60498046875, -1103);
			QuestGiver = "";
			World = 3
		};
		Female_Islander = {
			Enemy = "Female Islander [Lv. \049\054\050\053]";
			QuestName = "AmazonQuest\050",
			EnemyName = "Female Islander",
			LevelQuest = 1,
			CFramePos = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422),
			QuestGiver = "",
			World = 3
		};
		Giant_Islander = {
			Enemy = "Giant Islander [Lv. \049\054\053\048]";
			QuestName = "AmazonQuest\050";
			EnemyName = "Giant Islander",
			LevelQuest = 2,
			CFramePos = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			QuestGiver = "",
			Wolrd = 3
		};
		Marine_Commodore = {
			Enemy = "Marine Commodore [Lv. \049\055\048\048]";
			QuestName = "MarineTreeIsland",
			EnemyName = "Marine Commodore",
			LevelQuest = 1;
			CFramePos = CFrame.new(2180.54126, 27.8156815, -6741, 0, 0, .258804798, 0, 1, 0, 0, 0, 0);
			QuestGiver = "",
			World = 3
		};
		Marine_Rear_Admiral = {
			Enemy = "Marine Rear Admiral [Lv. \049\055\050\053]";
			QuestName = "MarineTreeIsland";
			EnemyName = "Marine Rear Admiral";
			LevelQuest = 2;
			CFramePos = CFrame.new(2180.54126, 27.8156815, -6741, 0, 0, .258804798, 0, 1, 0, 0, 0, 0);
			QuestGiver = "";
			World = 3
		},
		Fishman_Raider = {
			Enemy = "Fishman Raider [Lv. \049\055\055\053]",
			QuestName = "DeepForestIsland\051",
			EnemyName = "Fishman Raider";
			LevelQuest = 1,
			CFramePos = CFrame.new(-10581, 330.872955, -8761, 0, 0, .469463557, 0, 1, 0, 0, 0, 0);
			QuestGiver = "",
			World = 3
		};
		Fishman_Captain = {
			Enemy = "Fishman Captain [Lv. \049\056\048\048]";
			QuestName = "DeepForestIsland\051",
			EnemyName = "Fishman Captain";
			LevelQuest = 2;
			CFramePos = CFrame.new(-10581, 330.872955, -8761, 0, 0, .469463557, 0, 1, 0, 0, 0, 0);
			QuestGiver = "",
			World = 3
		},
		Forest_Pirate = {
			Enemy = "Forest Pirate [Lv. \049\056\050\053]";
			QuestName = "DeepForestIsland";
			EnemyName = "Forest Pirate";
			LevelQuest = 1,
			CFramePos = CFrame.new(-13234, 331.488495, -7625, .707134247, 0, 0, 0, 1, 0, .707079291, 0, .707134247);
			QuestGiver = "";
			World = 3
		};
		Mythological_Pirate = {
			Enemy = "Mythological Pirate [Lv. \049\056\053\048]",
			QuestName = "DeepForestIsland";
			EnemyName = "Mythological Pirate",
			LevelQuest = 2,
			CFramePos = CFrame.new(-13234, 331.488495, -7625, .707134247, 0, 0, 0, 1, 0, .707079291, 0, .707134247),
			QuestGiver = "",
			World = 3
		},
		Jungle_Pirate = {
			Enemy = "Jungle Pirate [Lv. \049\057\048\048]";
			QuestName = "DeepForestIsland\050";
			EnemyName = "Jungle Pirate",
			LevelQuest = 1;
			CFramePos = CFrame.new(-12680, 389.971039, -9902, 0, 0, .996196866, 0, 1, 0, 0, 0, 0),
			QuestGiver = "";
			World = 3
		},
		Musketeer_Pirate = {
			Enemy = "Musketeer Pirate [Lv. \049\057\050\053]",
			QuestName = "DeepForestIsland\050",
			EnemyName = "Musketeer Pirate";
			LevelQuest = 2;
			CFramePos = CFrame.new(-12680, 389.971039, -9902, 0, 0, .996196866, 0, 1, 0, 0, 0, 0),
			QuestGiver = "",
			World = 3
		};
		Reborn_Skeleton = {
			Enemy = "Reborn Skeleton [Lv. \049\057\055\053]",
			QuestName = "HauntedQuest\049";
			EnemyName = "Reborn Skeleton",
			LevelQuest = 1;
			CFramePos = CFrame.new(-9479, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			QuestGiver = "",
			World = 3
		};
		Living_Zombie = {
			Enemy = "Living Zombie [Lv. \050\048\048\048]";
			QuestName = "HauntedQuest\049";
			EnemyName = "Living Zombie",
			LevelQuest = 2;
			CFramePos = CFrame.new(-9479, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0),
			QuestGiver = "",
			World = 3
		};
		Demonic_Soul = {
			Enemy = "Demonic Soul [Lv. \050\048\050\053]",
			QuestName = "HauntedQuest\050",
			EnemyName = "Demonic Soul";
			LevelQuest = 1,
			CFramePos = CFrame.new(-9479, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0),
			QuestGiver = "",
			World = 3
		},
		Posessed_Mummy = {
			Enemy = "Posessed Mummy [Lv. \050\048\053\048]",
			QuestName = "HauntedQuest\050",
			EnemyName = "Posessed Mummy";
			LevelQuest = 2;
			CFramePos = CFrame.new(-9516, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			QuestGiver = "";
			World = 3
		},
		Peanut_Scout = {
			Enemy = "Peanut Scout [Lv. \050\048\055\053]";
			QuestName = "NutsIslandQuest";
			EnemyName = "Peanut Scout",
			LevelQuest = 1,
			CFramePos = CFrame.new(-2104, 38.104167938232, -10194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			QuestGiver = "";
			World = 3
		},
		Peanut_President = {
			Enemy = "Peanut President [Lv. \050\049\048\048]";
			QuestName = "NutsIslandQuest",
			EnemyName = "Peanut President",
			LevelQuest = 2,
			CFramePos = CFrame.new(-2104, 38.104167938232, -10194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			QuestGiver = "";
			World = 3
		},
		Ice_Cream_Chef = {
			Enemy = "Ice Cream Chef [Lv. \050\049\050\053]",
			QuestName = "IceCreamIslandQuest",
			EnemyName = "Ice Cream Chef",
			LevelQuest = 1,
			CFramePos = CFrame.new(-819, 65.845329284668, -10965),
			QuestGiver = "";
			World = 3
		};
		Ice_Cream_Commander = {
			Enemy = "Ice Cream Commander [Lv. \050\049\053\048]";
			QuestName = "IceCreamIslandQuest";
			EnemyName = "Ice Cream Commander";
			LevelQuest = 2,
			CFramePos = CFrame.new(-819, 65.845329284668, -10965),
			QuestGiver = "",
			World = 3
		};
		Cookie_Crafter = {
			Enemy = "Cookie Crafter [Lv. \050\050\048\048]";
			QuestName = "CakeQuest\049",
			EnemyName = "Cookie Crafter",
			LevelQuest = 1;
			CFramePos = CFrame.new(-2022, 36.9275894, -12030, 0, 0, 0, 0, 1, 0, .275594592, 0, 0),
			QuestGiver = "",
			World = 3
		};
		Cake_Guard = {
			Enemy = "Cake Guard [Lv. \050\050\050\053]";
			QuestName = "CakeQuest\049";
			EnemyName = "Cake Guard";
			LevelQuest = 2,
			CFramePos = CFrame.new(-2022, 36.9275894, -12030, 0, 0, 0, 0, 1, 0, .275594592, 0, 0);
			QuestGiver = "",
			World = 3
		},
		Baking_Staff = {
			Enemy = "Baking Staff [Lv. \050\050\053\048]",
			QuestName = "CakeQuest\050";
			EnemyName = "Baking Staff",
			LevelQuest = 1,
			CFramePos = CFrame.new(-1928, 37.7296638, -12840, .951068401, 0, 0, 0, 1, 0, .308980465, 0, .951068401),
			QuestGiver = "";
			World = 3
		};
		Head_Baker = {
			Enemy = "Head Baker [Lv. \050\050\055\053]";
			QuestName = "CakeQuest\050",
			EnemyName = "Head Baker",
			LevelQuest = 2;
			CFramePos = CFrame.new(-1928, 37.7296638, -12840, .951068401, 0, 0, 0, 1, 0, .308980465, 0, .951068401);
			QuestGiver = "",
			World = 3
		};
		Cocoa_Warrior = {
			Enemy = "Cocoa Warrior [Lv. \050\051\048\048]",
			QuestName = "ChocQuest\049",
			EnemyName = "Cocoa Warrior",
			LevelQuest = 1,
			CFramePos = CFrame.new(231.75, 23.900302886963, -12200);
			QuestGiver = " ",
			World = 3
		},
		Chocolate_Bar_Battler = {
			Enemy = "Chocolate Bar Battler [Lv. \050\051\050\053]",
			QuestName = "ChocQuest\049";
			EnemyName = "Chocolate Bar Battler";
			LevelQuest = 2;
			CFramePos = CFrame.new(231.75, 23.900302886963, -12200);
			QuestGiver = " ";
			World = 3
		};
		Sweet_Thief = {
			Enemy = "Sweet Thief [Lv. \050\051\053\048]",
			QuestName = "ChocQuest\050",
			EnemyName = "Sweet Thief",
			LevelQuest = 1;
			CFramePos = CFrame.new(151.1982421875, 23.890714645386, -12774),
			QuestGiver = " ";
			World = 3
		};
		Candy_Rebel = {
			Enemy = "Candy Rebel [Lv. \050\051\055\053]",
			QuestName = "ChocQuest\050";
			EnemyName = "Candy Rebel";
			LevelQuest = 2;
			CFramePos = CFrame.new(151.1982421875, 23.890714645386, -12774);
			QuestGiver = " ";
			World = 3
		},
		Candy_Pirate = {
			Enemy = "Candy Pirate [Lv. \050\052\048\048]";
			QuestName = "CandyQuest\049",
			EnemyName = "Candy Pirate",
			LevelQuest = 1;
			CFramePos = CFrame.new(-1149, 13.575903892517, -14445),
			QuestGiver = " ",
			World = 3
		};
		Snow_Demon = {
			Enemy = "Snow Demon [Lv. \050\052\050\053]",
			QuestName = "CandyQuest\049";
			EnemyName = "Snow Demon",
			LevelQuest = 2;
			CFramePos = CFrame.new(-1149, 13.575903892517, -14445),
			QuestGiver = " ",
			World = 3
		}
	}
	local Y = {
		Bandit = {
			Enemy = "Bandit",
			LowestLevel = 0,
			MaxLevel = 14
		};
		Monkey = {
			Enemy = "Monkey";
			LowestLevel = 14,
			MaxLevel = 20
		};
		Gorilla = {
			Enemy = "Gorilla";
			LowestLevel = 20,
			MaxLevel = 35
		},
		Pirate = {
			Enemy = "Pirate",
			LowestLevel = 35;
			MaxLevel = 45
		};
		Brute = {
			Enemy = "Brute";
			LowestLevel = 45;
			MaxLevel = 60
		};
		Desert_Bandit = {
			Enemy = "Desert Bandit",
			LowestLevel = 60;
			MaxLevel = 70
		},
		Desert_Officer = {
			Enemy = "Desert Officer",
			LowestLevel = 70,
			MaxLevel = 90
		},
		Snow_Bandit = {
			Enemy = "Snow Bandit";
			LowestLevel = 90;
			MaxLevel = 100
		},
		Snowman = {
			Enemy = "Snowman",
			LowestLevel = 100;
			MaxLevel = 120
		};
		Chief_Petty_Officer = {
			Enemy = "Chief Petty Officer",
			LowestLevel = 120,
			MaxLevel = 150
		};
		Sky_Bandit = {
			Enemy = "Sky Bandit";
			LowestLevel = 150,
			MaxLevel = 175
		};
		Dark_Master = {
			Enemy = "Dark Master";
			LowestLevel = 175;
			MaxLevel = 190
		},
		Prisoner = {
			Enemy = "Prisoner";
			LowestLevel = 190;
			MaxLevel = 210
		};
		Dangerous_Prisoner = {
			Enemy = "Dangerous Prisoner",
			LowestLevel = 210;
			MaxLevel = 250
		};
		Toga_Warrior = {
			Enemy = "Toga Warrior",
			LowestLevel = 250,
			MaxLevel = 275
		};
		Gladiator = {
			Enemy = "Gladiator";
			LowestLevel = 275,
			MaxLevel = 300
		};
		Military_Soldier = {
			Enemy = "Military Soldier",
			LowestLevel = 300;
			MaxLevel = 325
		};
		Military_Spy = {
			Enemy = "Military Spy";
			LowestLevel = 325;
			MaxLevel = 375
		},
		Fishman_Warror = {
			Enemy = "Fishman Warrior";
			LowestLevel = 375,
			MaxLevel = 400
		};
		Fishman_Commando = {
			Enemy = "Fishman Commando";
			LowestLevel = 400;
			MaxLevel = 450
		},
		God_Guard = {
			Enemy = "God\'s Guard",
			LowestLevel = 450;
			MaxLevel = 475
		},
		Shanda = {
			Enemy = "Shanda";
			LowestLevel = 475,
			MaxLevel = 525
		},
		Royal_Squad = {
			Enemy = "Royal Squad",
			LowestLevel = 525;
			MaxLevel = 550
		};
		Royal_Soldier = {
			Enemy = "Royal Soldier",
			LowestLevel = 550;
			MaxLevel = 625
		},
		Gallery_Pirate = {
			Enemy = "Gallery Pirate",
			LowestLevel = 625;
			MaxLevel = 700
		};
		Raider = {
			Enemy = "Raider";
			LowestLevel = 700,
			MaxLevel = 725
		};
		Mercenary = {
			Enemy = "Mercenary",
			LowestLevel = 725;
			MaxLevel = 775
		},
		Swan_Pirate = {
			Enemy = "Swan Pirate",
			LowestLevel = 775;
			MaxLevel = 800
		};
		Factory_Staff = {
			Enemy = "Factory Staff";
			LowestLevel = 800;
			MaxLevel = 875
		},
		Marine_Lieutenant = {
			Enemy = "Marine Lieutenant";
			LowestLevel = 875;
			MaxLevel = 900
		};
		Marine_Captain = {
			Enemy = "Marine Captain",
			LowestLevel = 900,
			MaxLevel = 950
		};
		Zombie = {
			Enemy = "Zombie",
			LowestLevel = 950;
			MaxLevel = 975
		},
		Vampire = {
			Enemy = "Vampire";
			LowestLevel = 975;
			MaxLevel = 1000
		};
		Snow_Trooper = {
			Enemy = "Snow Trooper",
			LowestLevel = 1000,
			MaxLevel = 1050
		};
		Winter_Warrior = {
			Enemy = "Winter Warrior";
			LowestLevel = 1050,
			MaxLevel = 1100
		},
		Lab_Subordinate = {
			Enemy = "Lab Subordinate";
			LowestLevel = 1100;
			MaxLevel = 1125
		};
		Horned_Warrior = {
			Enemy = "Horned Warrior";
			LowestLevel = 1125,
			MaxLevel = 1175
		},
		Magma_Ninja = {
			Enemy = "Magma Ninja";
			LowestLevel = 1175;
			MaxLevel = 1200
		},
		Lava_Pirate = {
			Enemy = "Lava Pirate",
			LowestLevel = 1200;
			MaxLevel = 1250
		};
		Ship_Deckhand = {
			Enemy = "Ship Deckhand";
			LowestLevel = 1250,
			MaxLevel = 1275
		};
		Ship_Engineer = {
			Enemy = "Ship Engineer";
			LowestLevel = 1275,
			MaxLevel = 1300
		},
		Ship_Steward = {
			Enemy = "Ship Steward",
			LowestLevel = 1300,
			MaxLevel = 1325
		},
		Ship_Officer = {
			Enemy = "Ship Officer";
			LowestLevel = 1325;
			MaxLevel = 1375
		};
		Arctic_Warrior = {
			Enemy = "Arctic Warrior";
			LowestLevel = 1375,
			MaxLevel = 1425
		},
		Snow_Lurker = {
			Enemy = "Snow Lurker";
			LowestLevel = 1375,
			MaxLevel = 1425
		};
		Sea_Soldier = {
			Enemy = "Sea Soldier";
			LowestLevel = 1425;
			MaxLevel = 1450
		},
		Water_Fighter = {
			Enemy = "Water Fighter",
			LowestLevel = 1450,
			MaxLevel = 1500
		},
		Pirate_Millionaire = {
			Enemy = "Pirate Millionaire",
			LowestLevel = 1500;
			MaxLevel = 1525
		},
		Pistol_Billonaire = {
			Enemy = "Pistol Billionaire";
			LowestLevel = 1525;
			MaxLevel = 1575
		},
		Dragon_Crew_Warrior = {
			Enemy = "Dragon Crew Warrior",
			LowestLevel = 1575;
			MaxLevel = 1600
		};
		Dragon_Crew_Archer = {
			Enemy = "Dragon Crew Archer",
			LowestLevel = 1600,
			MaxLevel = 1625
		},
		Female_Islander = {
			Enemy = "Female Islander";
			LowestLevel = 1625,
			MaxLevel = 1650
		},
		Giant_Islander = {
			Enemy = "Giant Islander";
			LowestLevel = 1650,
			MaxLevel = 1700
		},
		Marine_Commodore = {
			Enemy = "Marine Commodore";
			LowestLevel = 1700;
			MaxLevel = 1725
		};
		Marine_Rear_Admiral = {
			Enemy = "Marine Rear Admiral",
			LowestLevel = 1725;
			MaxLevel = 1775
		},
		Fishman_Raider = {
			Enemy = "Fishman Raider",
			LowestLevel = 1775,
			MaxLevel = 1800
		};
		Fishman_Captain = {
			Enemy = "Fishman Captain";
			LowestLevel = 1800,
			MaxLevel = 1825
		},
		Forest_Pirate = {
			Enemy = "Forest Pirate";
			LowestLevel = 1825;
			MaxLevel = 1850
		};
		Mythological_Pirate = {
			Enemy = "Mythological Pirate",
			LowestLevel = 1850;
			MaxLevel = 1900
		},
		Jungle_Pirate = {
			Enemy = "Jungle Pirate",
			LowestLevel = 1900,
			MaxLevel = 1925
		};
		Musketeer_Pirate = {
			Enemy = "Musketeer Pirate",
			LowestLevel = 1925,
			MaxLevel = 1975
		};
		Reborn_Skeleton = {
			Enemy = "Reborn Skeleton",
			LowestLevel = 1975,
			MaxLevel = 2000
		},
		Living_Zombie = {
			Enemy = "Living Zombie",
			LowestLevel = 2000,
			MaxLevel = 2025
		};
		Demonic_Soul = {
			Enemy = "Demonic Soul",
			LowestLevel = 2025;
			MaxLevel = 2050
		};
		Posessed_Mummy = {
			Enemy = "Posessed Mummy";
			LowestLevel = 2050,
			MaxLevel = 2075
		},
		Peanut_Scout = {
			Enemy = "Peanut Scout",
			LowestLevel = 2075,
			MaxLevel = 2100
		},
		Peanut_President = {
			Enemy = "Peanut President";
			LowestLevel = 2100,
			MaxLevel = 2125
		};
		Ice_Cream_Chef = {
			Enemy = "Ice Cream Chef";
			LowestLevel = 2125;
			MaxLevel = 2150
		},
		Ice_Cream_Commander = {
			Enemy = "Ice Cream Commander";
			LowestLevel = 2150;
			MaxLevel = 2200
		},
		Cookie_Crafter = {
			Enemy = "Cookie Crafter",
			LowestLevel = 2200;
			MaxLevel = 2225
		},
		Cake_Guard = {
			Enemy = "Cake Guard";
			LowestLevel = 2225;
			MaxLevel = 2250
		},
		Baking_Staff = {
			Enemy = "Baking Staff";
			LowestLevel = 2250;
			MaxLevel = 2275
		};
		Head_Baker = {
			Enemy = "Head Baker";
			LowestLevel = 2275,
			MaxLevel = 2300
		};
		Cocoa_Warrior = {
			Enemy = "Cocoa Warrior",
			LowestLevel = 2300,
			MaxLevel = 2325
		},
		Chocolate_Bar_Battler = {
			Enemy = "Chocolate Bar Battler";
			LowestLevel = 2325;
			MaxLevel = 2350
		};
		Sweet_Thief = {
			Enemy = "Sweet Thief",
			LowestLevel = 2350;
			MaxLevel = 2375
		};
		Candy_Rebel = {
			Enemy = "Candy Rebel";
			LowestLevel = 2375,
			MaxLevel = 2400
		},
		Candy_Pirate = {
			Enemy = "Candy Pirate";
			LowestLevel = 2400,
			MaxLevel = 2425
		},
		Snow_Demon = {
			Enemy = "Snow Demon",
			LowestLevel = 2425;
			MaxLevel = 2450
		}
	}
	local j = require(D.PlayerScripts.CombatFramework)
	local t = (debug.getupvalues(j))[2]
	local U = {
		ESP = {};
		Tracer = {}
	}
	N.ServerSea = game.PlaceId == 2753915549 and 1 or game.PlaceId == 4442272183 and 2 or game.PlaceId == 7449423635 and 3
	N.ServerWorld = N.ServerSea == 1 and "First Sea" or N.ServerSea == 2 and "Second Sea" or N.ServerSea == 3 and "Third Sea"
	N.Tools = {}
	N.SelectedTool = "Combat"
	N.AutoFarmType = "Quest"
	N.AutoUpgradePerSeconds = 30
	N.StatsCountPerUpgrade = 1
	N.ModScripts = {}
	N.ModScripts.increment = t.activeController.increment
	N.ModScripts.timeToNextBlock = t.activeController.timeToNextBlock
	N.ModScripts.timeToNextAttack = t.activeController.timeToNextAttack
	N.ModScripts.hitboxMagnitude = t.activeController.hitboxMagnitude
	N.InCombatAimbot = nil
	sethiddenproperty(D, "SimulationRadius", math.huge)
	local function r()
		local j = D.Data.Level.Value
		for Y, Z in pairs(Y) do
			if Z.MaxLevel >= j and (Z.LowestLevel <= j and o[Y].World == N.ServerSea) then
				return {
					o[Y].EnemyName,
					o[Y].LevelQuest;
					o[Y].QuestName,
					o[Y].CFramePos
				}
			end
		end
	end
	local function T(o)
		local Y = h(D)
		local j = (o.Position - Y.Position).Magnitude
		local t = 0
		if j < 10 then
			t = 1000
		elseif j < 170 then
			Y.CFrame = o
			t = 350
		elseif j < 1000 then
			t = 350
		elseif j >= 1000 then
			t = 300
		end
		N.CurrentTween = Z:Create(Y, TweenInfo.new(j / t, Enum.EasingStyle.Linear), {
			CFrame = o
		})
		N.CurrentTween:Play()
		if not D.Character.UpperTorso:FindFirstChild("BodyGyro") and not D.Character.UpperTorso:FindFirstChild("BodyVelocity") then
			local o = Instance.new("BodyGyro")
			local Y = Instance.new("BodyVelocity")
			o.Name = "BodyGyro"
			o.Parent = D.Character.UpperTorso
			o.P = 90000
			o.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
			o.CFrame = D.Character.UpperTorso.CFrame
			Y.Name = "BodyVelocity"
			Y.Parent = D.Character.UpperTorso
			Y.Velocity = Vector3.new(0, .01, 0)
			Y.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
		end
		N.CurrentTween.Completed:Wait()
		N.CurrentTween = nil
		if not N.AutoFarm then
			if D.Character.UpperTorso:FindFirstChild("BodyGyro") and D.Character.UpperTorso:FindFirstChild("BodyVelocity") then
				D.Character.UpperTorso.BodyGyro:Destroy()
				D.Character.UpperTorso.BodyVelocity:Destroy()
			end
		end
	end
	local function q()
		(coroutine.wrap(function()
			pcall(function()
				if N.CurrentTween then
					N.CurrentTween:Stop()
				end
			end)
		end))()
	end
	local function C(o)
		local Y = h(D)
		local j = math.huge
		local Z
		for t, K in pairs(workspace.Enemies:GetChildren()) do
			if K.Name:match(o) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0) then
				local o = (Y.Position - K.HumanoidRootPart.Position).Magnitude
				if o < j then
					j = o
					Z = K
				end
			end
		end
		return Z
	end
	local function L()
		local o = h(D)
		local Y = math.huge
		local j
		for Z, t in pairs(workspace:GetChildren()) do
			if t.Name:match("Chest") and t:IsA("Part") then
				local Z = (o.Position - t.CFrame.Position).Magnitude
				if Z < Y then
					Y = Z
					j = t
				end
			end
		end
		return j
	end
	local function v()
		for o, Y in pairs(D.Backpack:GetChildren()) do
			if Y:IsA("Tool") then
				table.insert(N.Tools, Y.Name)
			end
		end
		for o, Y in pairs(D.Character:GetChildren()) do
			if Y:IsA("Tool") then
				table.insert(N.Tools, Y.Name)
			end
		end
	end
	local function e(o, Y)
		for Y = 1, Y, 1 do
			z.Function(A.Remotes.CommF_, {
				[1] = "AddPoint",
				[2] = o;
				[3] = 1
			})
		end
	end
	local function E(o)
		K:SendKeyEvent(true, o, false, game)
		task.wait()
		K:SendKeyEvent(false, o, false, game)
	end
	local function Q(o)
		z.Function(A.Remotes.Redeem, o)
	end
	local R = TK:CreateTab("Player Mods", "rbxassetid://\049\051\054\054\057\054\051\051\055\054\050")
	local M = TK:CreateTab("Premium", "rbxassetid://\049\051\054\054\057\054\054\057\051\055\056")
	local f = TK:CreateTab("Teleport", "rbxassetid://\049\051\054\054\057\054\051\057\052\053\057")
	local a = TK:CreateTab("Farm", "rbxassetid://\049\051\054\054\057\054\050\054\056\048\049")
	R:CreateButton("Join Pirates Team", function()
		z.Function(A.Remotes.CommF_, "SetTeam", "Pirates")
	end)
	R:CreateButton("Join Marines Team", function()
		z.Function(A.Remotes.CommF_, "SetTeam", "Marines")
	end)
	R:CreateButton("Redeem All Valid Codes", function()
		Q("Sub\050Fer\057\057\057")
		Q("Enyu_is_Pro")
		Q("Magicbus")
		Q("JCWK")
		Q("Starcodeheo")
		Q("Bluxxy")
		Q("THEGREATACE")
		Q("SUB\050GAMERROBOT_EXP\049")
		Q("StrawHatMaine")
		Q("Sub\050OfficialNoobie")
		Q("SUB\050NOOBMASTER\049\050\051")
		Q("Sub\050Daigrock")
		Q("Axiore")
		Q("TantaiGaming")
		Q("STRAWHATMAINE")
	end)
	R:CreateSection("PVP")
	R:CreateToggle("Auto Enable PVP", function(o)
		N.AutoEnablePVP = o
		if o then
			(coroutine.wrap(function()
				while N.AutoEnablePVP do
					task.wait()
					if D.PlayerGui.Main.PvpDisabled.Visible then
						z.Function(A.Remotes.CommF_, "EnablePvp")
						task.wait()
						if not D.PlayerGui.Main.PvpDisabled.Visible then
							B("PVP has been enabled.")
						end
					end
				end
			end))()
		end
	end)
	R:CreateButton("Enable PVP", function()
		z.Function(A.Remotes.CommF_, "EnablePvp")
		task.wait()
		if not D.PlayerGui.Main.PvpDisabled.Visible then
			B("PVP has been enabled.")
		end
	end)
	R:CreateSection("Modifications")
	R:CreateToggle("Infinite Obversation Range", function(o)
		N.InfiniteObversationRange = o
		if o then
			(coroutine.wrap(function()
				while N.InfiniteObversationRange do
					task.wait()
					if D and D.Character then
						D.VisionRadius.Value = math.huge
					end
				end
			end))()
		end
	end)
	R:CreateToggle("No Dodge Cooldown", function(o)
		N.NoDodgeCooldown = o
		if o then
			(coroutine.wrap(function()
				while N.NoDodgeCooldown do
					task.wait(.15)
					for o, Y in pairs(getgc()) do
						if D and (D.Character and D.Character:FindFirstChild("Dodge")) then
							if typeof(Y) == "function" and (getfenv(Y)).script == D.Character.Dodge then
								for o, j in pairs(debug.getupvalues(Y)) do
									if tonumber(j) == .1 then
										repeat
											task.wait(.15)
											debug.getupvalue(Y, o, 0)
										until not N.NoDodgeCooldown
									end
								end
							end
						end
					end
				end
			end))()
		end
	end)
	R:CreateToggle("Infinite Gepo", function(o)
		N.InfiniteGeppo = o
		if o then
			(coroutine.wrap(function()
				while N.InfiniteGeppo do
					task.wait(.15)
					for o, Y in pairs(getgc()) do
						if D and (D.Character and D.Character:FindFirstChild("Geppo")) then
							if typeof(Y) == "function" and (getfenv(Y)).script == D.Character.Geppo then
								for o, j in pairs(debug.getupvalues(Y)) do
									if tonumber(o) == 9 then
										repeat
											task.wait(.15)
											debug.getupvalue(Y, o, 0)
										until not N.InfiniteGeppo or D.Character.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end
			end))()
		end
	end)
	if H then
		M:CreateSection("Client")
		M:CreateButton("No Camera Shake", function()
			(require(A.Util.CameraShaker)):Stop()
		end)
		M:CreateButton("Rain Fake Devil Fruits", function()
			local o = h(D)
			for Y, j in pairs((game:GetObjects("rbxassetid://\049\052\055\053\057\051\054\056\050\048\049"))[1]:GetChildren()) do
				for Y = 1, 5, 1 do
					j.Parent = workspace.Map
					j:MoveTo(o.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
					if j.Fruit:FindFirstChild("AnimationController") then
						((j.Fruit:FindFirstChild("AnimationController")):LoadAnimation(j.Fruit:FindFirstChild("Idle"))):Play()
					end
					j.Handle.Touched:Connect(function(o)
						if o.Parent == D.Character then
							j.Parent = o.Parent
						end
					end)
				end
			end
		end)
		M:CreateToggle("Anti AFK", function(o)
			if o then
				x:MakeTask("Anti AFK", D.Idled, function()
					S:ClickButton2(Vector2.new())
				end)
			else
				x:RemoveTask("Anti AFK")
			end
		end)
		M:CreateSection("PVP")
		local o = M:CreateParagraph("PVP Status:", "Status: <font color=\"rgb(\048, \050\053\053, \048)\">Not in Combat</font>")
		M:CreateParagraph("PVP Aimbot", "This can be only use when you are in combat.")
		M:CreateToggle("Aimbot", function(o)
			N.PVPAimbot = o
		end)
		G.RenderStepped:Connect(function()
			if D.PlayerGui.Main.InCombat.Visible then
				o:Update("PVP Status:", "Status: <font color=\"rgb(\050\053\053, \048, \048)\">In Combat</font>")
			else
				o:Update("PVP Status:", "Status: <font color=\"rgb(\048, \050\053\053, \048)\">Not in Combat</font>")
			end
		end)
	else
		local o = J:JSONDecode(w("https://apis.roblox.com/game-passes/v\049/game-passes/\050\050\055\051\057\056\048\052/product-info"))
		M:CreateSection("Premium Member")
		M:CreateLabel("Be a Symphony Hub <font color=\"rgb(\048, \048, \050\053\053)\">Premium</font> <u>Member</u>!")
		M:CreateButton("Buy Premium for <font color=\"rgb(\048, \050\053\053, \048)\">" .. (o.PriceInRobux .. " Robux</font>"), function()
			local o, Y = pcall(function()
				MarketplaceService:PromptGamePassPurchase(D, 22739804)
			end)
			if Y and not o then
				s("https://web.roblox.com/game-pass/\050\050\055\051\057\056\048\052/Symphony-Hub-Premium")
				I("<font color=\"rgb(\050\053\053, \048, \048)\">Failed</font> to callback the prompt, buy it on website instead | Copied to Clipboard")
			end
		end)
		M:CreateLabel("Not Working?")
		M:CreateButton("Copy Link Our Official site", function()
			s("https://itsjidy.github.io/SymphonyHub")
		end)
	end
	f:CreateSection(N.ServerWorld)
	if N.ServerSea == 1 then
		f:CreateButton("First land", function()
			T(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
		end)
		f:CreateButton("Shell Town", function()
			T(CFrame.new(-2599, 6.9146227836609, 2062.2216796875))
		end)
		f:CreateButton("Marine Ford", function()
			T(CFrame.new(-5081, 85.221641540527, 4257.3588867188))
		end)
		f:CreateButton("Midle Town", function()
			T(CFrame.new(-655, 7.878026008606, 1573.7612304688))
		end)
		f:CreateButton("Jungle", function()
			T(CFrame.new(-1499, 22.877912521362, 353.87060546875))
		end)
		f:CreateButton("Pirate", function()
			T(CFrame.new(-1163, 44.777843475342, 3842.8276367188))
		end)
		f:CreateButton("Desert", function()
			T(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
		end)
		f:CreateButton("Ice Land", function()
			T(CFrame.new(1144.5270996094, 7.3292083740234, -1164))
		end)
		f:CreateButton("Colosseum", function()
			T(CFrame.new(-1667, 39.385631561279, -3135))
		end)
		f:CreateButton("Prison", function()
			T(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
		end)
		f:CreateButton("Mob Leader", function()
			T(CFrame.new(-2841, 7.3560485839844, 5318.1040039063))
		end)
		f:CreateButton("Magma Land", function()
			T(CFrame.new(-5328, 8.6164798736572, 8427.3994140625))
		end)
		f:CreateButton("Water \055", function()
			T(CFrame.new(3893.953125, 5.3989524841309, -1893))
		end)
		f:CreateButton("Fish Man Village", function()
			T(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
		end)
		f:CreateButton("Fountain City", function()
			T(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
		end)
		f:CreateButton("Sky \049", function()
			T(CFrame.new(-4878, 717.71246337891, -2637))
		end)
		f:CreateButton("Sky \050", function()
			T(CFrame.new(-7899, 5545.6030273438, -422))
		end)
	elseif N.ServerSea == 2 then
		f:CreateButton("Dock", function()
			T(CFrame.new(-12, 19.302536010742, 2827.853515625))
		end)
		f:CreateButton("Mansion", function()
			T(CFrame.new(-390, 321.89730834961, 869.00506591797))
		end)
		f:CreateButton("Kingdom of Rose", function()
			T(CFrame.new(-388, 138.35575866699, 1132.1662597656))
		end)
		f:CreateButton("Cafe", function()
			T(CFrame.new(-379, 73.0458984375, 304.84692382813))
		end)
		f:CreateButton("Sunflower", function()
			T(CFrame.new(-1576, 198.61849975586, 13.725157737732))
		end)
		f:CreateButton("Jeramy Mountain", function()
			T(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
		end)
		f:CreateButton("Colossuem \050", function()
			T(CFrame.new(-1871, 45.820514678955, 1359.6843261719))
		end)
		f:CreateButton("Usopp\'s Island", function()
			T(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
		end)
		f:CreateButton("Factory", function()
			T(CFrame.new(349.53750610352, 74.446998596191, -355))
		end)
		f:CreateButton("The Bridge", function()
			T(CFrame.new(-1860, 88.384948730469, -1859))
		end)
		f:CreateButton("Green Bit", function()
			T(CFrame.new(-2202, 73.097663879395, -2819))
		end)
		f:CreateButton("Graveyard", function()
			T(CFrame.new(-5617, 492.22183227539, -778))
		end)
		f:CreateButton("Dark Area", function()
			T(CFrame.new(3464.7700195313, 13.375151634216, -3368))
		end)
		f:CreateButton("Superhuman Mountain", function()
			T(CFrame.new(561.23834228516, 401.44781494141, -5297))
		end)
		f:CreateButton("Lava Island", function()
			T(CFrame.new(-5505, 15.977565765381, -5366))
		end)
		f:CreateButton("Cold IsLand", function()
			T(CFrame.new(-5924, 15.977565765381, -4996))
		end)
		f:CreateButton("Ice Castle", function()
			T(CFrame.new(6111.7109375, 294.41259765625, -6716))
		end)
		f:CreateButton("inscription Island", function()
			T(CFrame.new(-5099, 98.241539001465, 2424.4035644531))
		end)
		f:CreateButton("Forgotten Island", function()
			T(CFrame.new(-3051, 238.87203979492, -10250))
		end)
		f:CreateButton("Ghost Ship", function()
			z.Function(A.Remotes.CommF_, "requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end)
	elseif N.ServerSea == 3 then
		f:CreateButton("Port Town", function()
			T(CFrame.new(-275, 43.755737304688, 5451.0659179688))
		end)
		f:CreateButton("Hydra Island", function()
			T(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
		end)
		f:CreateButton("Gaint Tree", function()
			T(CFrame.new(2276.0859375, 25.87850189209, -6493))
		end)
		f:CreateButton("Zou ISland", function()
			T(CFrame.new(-10034, 331.78845214844, -8319))
		end)
		f:CreateButton("Mansion", function()
			T(CFrame.new(-12548, 332.40396118164, -7603))
		end)
		f:CreateButton("Castle on the Sea", function()
			T(CFrame.new(-5498, 313.79473876953, -2860))
		end)
		f:CreateButton("Graveyard Island", function()
			T(CFrame.new(-9515, 142.130615, 5537.58398))
		end)
		f:CreateButton("CoCoNut Island", function()
			T(CFrame.new(-1846, 38.128959655762, -10451))
		end)
		f:CreateButton("HoCake Island \049", function()
			T(CFrame.new(-927, 58.971530914307, -10895))
		end)
		f:CreateButton("HoCake Island \050", function()
			T(CFrame.new(-1973, 37.824035644531, -11883))
		end)
	end
	f:CreateSection("Shop")
	if N.ServerSea == 1 then
		f:CreateButton("Buso Shop", function()
			T(CFrame.new(5841.3208007812, 12.240174293518, 3603.513671875))
		end)
		f:CreateButton("Ken Shop", function()
			T(CFrame.new(65.571594238281, 386.49786376953, 4064.0361328125))
		end)
		f:CreateButton("Sword Shop", function()
			T(CFrame.new(2360.3986816406, 40.296642303467, 9683.9658203125))
		end)
	elseif N.ServerSea == 2 then
		f:CreateButton("Electro Shop", function()
			T(CFrame.new(2462.4741210938, 173.04458618164, -1099))
		end)
		f:CreateButton("Dragon Claw Shop", function()
			T(CFrame.new(2719.3259277344, 430.65707397461, 721.21575927734))
		end)
		f:CreateButton("ReStat Shop", function()
			T(CFrame.new(2433.724609375, 57.307052612305, 142.75276184082))
		end)
	end
	f:CreateButton("Black Leg Shop", function()
		if N.ServerSea == 1 then
			T(CFrame.new(6457.8754882812, 168.47467041016, -2376))
		elseif N.ServerSea == 2 then
			T(CFrame.new(2367.072265625, 57.307052612305, 135.18827819824))
		else
			B("This shop can be only found at First Sea and Second Sea.")
		end
	end)
	f:CreateButton("Cybrog Shop", function()
		if N.ServerSea == 1 then
			T(CFrame.new(6457.8754882812, 168.47467041016, -2376))
		elseif N.ServerSea == 2 then
			T(CFrame.new(2325.8371582031, 57.267036437988, 235.82777404785))
		else
			B("This shop can be only found at First Sea and Second Sea.")
		end
	end)
	f:CreateButton("Water Style Shop", function()
		if N.ServerSea == 1 then
			T(CFrame.new(3944.1264648438, 123.67578125, 1489.2821044922))
		elseif N.ServerSea == 2 then
			T(CFrame.new(2455.255859375, 57.307052612305, 224.07823181152))
		else
			B("This shop can be only found at First Sea and Second Sea.")
		end
	end)
	f:CreateSection("Dungeon")
	f:CreateButton("Teleport to Dungeon", function()
		if N.ServerSea == 1 then
			T(CFrame.new(6729.3916015625, 103.67321777344, 952.03881835938))
		elseif N.ServerSea == 2 then
			T(CFrame.new(2698.6772460938, 223.11566162109, 6.6630764007568))
		else
			B("This dungeon can be only found at First Sea and Second Sea.")
		end
	end)
	f:CreateSection("Sea")
	f:CreateButton("Teleport To First Sea", function()
		z.Function(A.Remotes.CommF_, "TravelMain")
	end)
	f:CreateButton("Teleport To Second Sea", function()
		z.Function(A.Remotes.CommF_, "TravelDressrosa")
	end)
	f:CreateButton("Teleport To Third Sea", function()
		z.Function(A.Remotes.CommF_, "TravelZou")
	end)
	local c = a:CreateParagraph("Server Info:", "Server: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (N.ServerWorld .. ("</font>\nFPS: \048\nLevel: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (D.Data.Level.Value .. "</font>\nAuto Farm Current Target: <font color=\"rgb(\050\053\053, \048, \048)\">null</font>"))))
	a:CreateToggle("Auto Farm Quests", function(o)
		N.AutoFarmQuests = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmQuests do
					task.wait()
					local o = r()
					local Y = D.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
					N.CurrentTarget = nil
					if D.PlayerGui.Main.Quest.Visible and not string.match(Y, o[1]) then
						z.Function(A.Remotes.CommF_, "AbandonQuest")
					end
					if not D.PlayerGui.Main.Quest.Visible then
						T(o[4])
						task.wait(.5)
						z.Function(A.Remotes.CommF_, "StartQuest", o[3], o[2])
					else
						local Y = C(o[1])
						if Y then
							repeat
								task.wait()
								T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
								Y.HumanoidRootPart.Size = Vector3.new(20, 20, 20)
								Y.HumanoidRootPart.CanCollide = false
								Y.HumanoidRootPart.Transparency = 1
								Y.Humanoid.JumpPower = 0
								Y.Humanoid.WalkSpeed = 0
								N.CurrentTarget = Y
								task.wait()
							until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmQuests
							N.CurrentTarget = nil
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Chests", function(o)
		N.AutoFarmChests = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmChests do
					task.wait()
					local o = L()
					if o then
						T(o.CFrame * CFrame.new(0, 5, 2))
					end
					N.CurrentTarget = nil
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Ectoplasm", function(o)
		N.AutoFarmEctoplasm = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmEctoplasm do
					task.wait()
					if N.ServerSea == 3 then
						local o = h(D)
						if workspace.Enemies:FindFirstChild("Ship Deckhand [Lv. \049\050\053\048]") or workspace.Enemies:FindFirstChild("Ship Engineer [Lv. \049\050\055\053]") or workspace.Enemies:FindFirstChild("Ship Steward [Lv. \049\051\048\048]") or workspace.Enemies:FindFirstChild("Ship Officer [Lv. \049\051\050\053]") then
							for o, Y in pairs(workspace.Enemies:GetChildren()) do
								if Y.Name:match("Bone") and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
									repeat
										task.wait()
										T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
										Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
										Y.HumanoidRootPart.Transparency = 1
										Y.Humanoid.JumpPower = 0
										Y.Humanoid.WalkSpeed = 0
										Y.HumanoidRootPart.CanCollide = false
										N.CurrentTarget = Y
									until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmEctoplasm
									N.CurrentTarget = nil
								end
							end
						else
							local o = ((CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)).Position - (h(D)).Position).Magnitude
							if o > 1800 then
								z.Function(A.Remotes.CommF_, "requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							end
							T(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Factory", function(o)
		N.AutoFarmFactory = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmFactory do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Core") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Core" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmFactory
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Canvander", function(o)
		N.AutoFarmCanvander = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmFactory do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. \049\057\053\048] [Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Beautiful Pirate [Lv. \049\057\053\048] [Boss]" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmCanvander
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Hallow Scythe", function(o)
		N.AutoFarmHallowScythe = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmHallowScythe do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Soul Reaper [Lv. \050\049\048\048] [Raid Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Soul Reaper [Lv. \050\049\048\048] [Raid Boss]" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmHallowScythe
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Cake Queen", function(o)
		N.AutoFarmCakeQueen = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmCakeQueen do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Cake Queen [Lv. \050\049\055\053] [Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Cake Queen [Lv. \050\049\055\053] [Boss]" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmCakeQueen
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Rip Indra", function(o)
		N.AutoFarmRipIndra = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmRipIndra do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. \053\048\048\048] [Raid Boss]") or workspace.Enemies:FindFirstChild("rip_indra [Lv. \053\048\048\048] [Raid Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name:match("rip_indra") and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmRipIndra
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Swan Glasses", function(o)
		N.AutoFarmSwanGlasses = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmSwanGlasses do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Don Swan [Lv. \049\048\048\048] [Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Don Swan [Lv. \049\048\048\048] [Boss]" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmSwanGlasses
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Saber", function(o)
		N.AutoFarmSaber = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmSaber do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Saber Expert [Lv. \050\048\048] [Boss]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if Y.Name == "Saber Expert [Lv. \050\048\048] [Boss]" and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmSaber
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Rengoku", function(o)
		N.AutoFarmRengoku = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmRengoku do
					task.wait()
					local o = h(D)
					if workspace.Enemies:FindFirstChild("Snow Lurker [Lv. \049\051\055\053]") or workspace.Enemies:FindFirstChild("Arctic Warrior [Lv. \049\051\053\048]") then
						for o, Y in pairs(workspace.Enemies:GetChildren()) do
							if (Y.Name == "Snow Lurker [Lv. \049\051\055\053]" or Y.Name == "Arctic Warrior [Lv. \049\051\053\048]") and (Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0)) then
								repeat
									task.wait()
									T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									Y.HumanoidRootPart.Transparency = 1
									Y.Humanoid.JumpPower = 0
									Y.Humanoid.WalkSpeed = 0
									Y.HumanoidRootPart.CanCollide = false
									N.CurrentTarget = Y
								until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoFarmRengoku
								N.CurrentTarget = nil
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Bone", function(o)
		N.AutoFarmBone = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoFarmBone do
					task.wait()
					if N.ServerSea == 3 then
						local o = h(D)
						if workspace.Enemies:FindFirstChild("Reborn Skeleton [Lv. \049\057\055\053]") or workspace.Enemies:FindFirstChild("Living Zombie [Lv. \050\048\048\048]") or workspace.Enemies:FindFirstChild("Demonic Soul [Lv. \050\048\050\053]") or workspace.Enemies:FindFirstChild("Posessed Mummy [Lv. \050\048\053\048]") then
							for o, Y in pairs(workspace.Enemies:GetChildren()) do
								if Y.Name == "Reborn Skeleton [Lv. \049\057\055\053]" or Y.Name == "Living Zombie [Lv. \050\048\048\048]" or Y.Name == "Demonic Soul [Lv. \050\048\050\053]" or Y.Name == "Posessed Mummy [Lv. \050\048\053\048]" then
									if Y:FindFirstChild("HumanoidRootPart") and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0) then
										repeat
											task.wait()
											T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
											Y.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
											Y.HumanoidRootPart.Transparency = 1
											Y.Humanoid.JumpPower = 0
											Y.Humanoid.WalkSpeed = 0
											Y.HumanoidRootPart.CanCollide = false
											N.CurrentTarget = Y
										until Y:FindFirstChild("Humanoid") and Y.Humanoid.Health <= 0 or not N.AutoFarmBone
										N.CurrentTarget = nil
									end
								end
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Second Sea", function(o)
		N.AutoSecondSea = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoSecondSea do
					task.wait()
					if D.Data.Level.Value >= 700 and N.ServerSea == 1 then
						if not workspace.Map.Ice.Door.CanCollide and workspace.Map.Ice.Door.Transparency == 1 then
							local o = CFrame.new(4849.29883, 5.65138149, 719.611877)
							local Y = h(D)
							repeat
								task.wait()
								T(o)
							until (o.Position - Y.Position).Magnitude <= 3 or not N.AutoSecondSea
							task.wait(1)
							if z.Function(A.Remotes.CommF_, "DressrosaQuestProgress", "Detective") ~= 1 then
								z.Function(A.Remotes.CommF_, "DressrosaQuestProgress", "Detective")
								task.wait(1.5)
								if D and D.Backpack:FindFirstChild("Key") then
									D.Character.Backpack.Key.Parent = D.Character
								end
							end
							repeat
								task.wait()
								T(CFrame.new(1347.7124, 37.3751602, -1325))
							until (Vector3.new(1347.7124, 37.3751602, -1325) - Y.Position).Magnitude <= 3 or not N.AutoSecondSea
							task.wait(2)
							for o, Y in pairs(workspace.Enemies:GetChildren()) do
								if Y.Name == "Ice Admiral [Lv. \055\048\048] [Boss]" then
									z.Function(A.Remotes.CommF_, "SetSpawnPoint")
									repeat
										task.wait()
										T(Y.HumanoidRootPart.CFrame * CFrame.new(0, 25, 15))
										Y.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										Y.HumanoidRootPart.Transparency = 1
										Y.HumanoidRootPart.CanCollide = false
										N.CurrentTarget = Y
									until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0
									task.wait(2)
									z.Function(A.Remotes.CommF_, "TravelDressrosa")
									task.wait(25)
								end
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Third Sea", function(o)
		N.AutoThirdSea = o
		if o then
			q();
			(coroutine.wrap(function()
				while N.AutoThirdSea do
					task.wait()
					if D.Data.Level.Value >= 1500 and N.ServerSea == 2 then
						if z.Function(A.Remotes.CommF_, "ZQuestProgress", "Check") == 0 then
							T(CFrame.new(-1926, 12.819851875305, 1738.3092041016))
							if ((CFrame.new(-1926, 12.819851875305, 1738.3092041016)).Position - D.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								task.wait(1.5)
								z.Function(A.Remotes.CommF_, "ZQuestProgress", "Begin")
							end
							task.wait(2)
							if workspace.Enemies:FindFirstChild("rip_indra [Lv. \049\053\048\048] [Boss]") then
								for o, Y in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if Y.Name == "rip_indra [Lv. \049\053\048\048] [Boss]" then
										repeat
											task.wait()
											Y.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											Y.HumanoidRootPart.Transparency = 1
											Y.HumanoidRootPart.CanCollide = false
											Y.Humanoid.WalkSpeed = 0
											N.CurrentTarget = Y
											z.Function(A.Remotes.CommF_, "TravelZou")
										until not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0 or not N.AutoThirdSea
									end
								end
							elseif not workspace.Enemies:FindFirstChild("rip_indra [Lv. \049\053\048\048] [Boss]") and ((CFrame.new(-26880, 22.848554611206, 473.18951416016)).Position - D.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
								T(CFrame.new(-26880, 22.848554611206, 473.18951416016))
							end
						end
					end
				end
			end))()
		end
	end)
	a:CreateSection("Farm Configuration")
	a:CreateToggle("Auto Haki", function(o)
		N.AutoHaki = o
		if o then
			(coroutine.wrap(function()
				while N.AutoHaki do
					task.wait()
					if D and (D.Character and not D.Character:FindFirstChild("HasBuso")) then
						z.Function(A.Remotes.CommF_, "Buso")
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Farm Silent Aim", function(o)
		N.AutoFarmSilentAim = o
	end)
	a:CreateToggle("Auto Basic Attack", function(o)
		N.AutoBasicAttack = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBasicAttack do
					task.wait()
					if D.Backpack:FindFirstChild(N.SelectedTool) then
						D.Backpack[N.SelectedTool].Parent = D.Character
					end
					S:CaptureController()
					S:Button1Down(Vector2.new(0, 1, 0, 1))
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Cast Skills", function(o)
		N.AutoCastSkills = o
		if o then
			(coroutine.wrap(function()
				while N.AutoCastSkills do
					task.wait()
					if D.Backpack:FindFirstChild(N.SelectedTool) then
						D.Backpack[N.SelectedTool].Parent = D.Character
					end
					if N.AutoCastZSkill then
						E("Z")
					end
					if N.AutoCastXSkill then
						E("X")
					end
					if N.AutoCastCSkill then
						E("C")
					end
					if N.AutoCastVSkill then
						E("V")
					end
				end
			end))()
		end
	end)
	a:CreateToggle("Enable Auto Cast Z Skill", function(o)
		N.AutoCastZSkill = o
	end)
	a:CreateToggle("Enable Auto Cast X Skill", function(o)
		N.AutoCastXSkill = o
	end)
	a:CreateToggle("Enable Auto Cast C Skill", function(o)
		N.AutoCastCSkill = o
	end)
	a:CreateToggle("Enable Auto Cast V Skill", function(o)
		N.AutoCastVSkill = o
	end)
	local F = a:CreateDropdown("Select Weapon", {
		"Combat"
	}, function(o)
		N.SelectedTool = o
	end)
	a:CreateToggle("Rapid Attack <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>", function(o)
		if o then
			x:MakeTask("Rapid Attack", G.Stepped, function()
				t.activeController.attacking = false
				t.activeController.increment = 3
				t.activeController.blocking = false
				t.activeController.timeToNextBlock = 0
				t.activeController.timeToNextAttack = 0
				t.activeController.hitboxMagnitude = 54
			end)
		else
			x:RemoveTask("Rapid Attack")
			t.activeController.increment = N.ModScripts.increment
			t.activeController.timeToNextBlock = N.ModScripts.timeToNextBlock
			t.activeController.timeToNextAttack = N.ModScripts.timeToNextAttack
			t.activeController.hitboxMagnitude = N.ModScripts.hitboxMagnitude
		end
	end)
	a:CreateSection("Stats")
	a:CreateToggle("Auto Upgrade Stats", function(o)
		N.AutoUpgradeStats = o
		if o then
			(coroutine.wrap(function()
				while N.AutoUpgradeStats do
					task.wait(N.AutoUpgradePerSeconds)
					if N.AutoUpgradeMeleeStats then
						e("Melee", N.StatsCountPerUpgrade)
					end
					if N.AutoUpgradeDefenseStats then
						e("Defense", N.StatsCountPerUpgrade)
					end
					if N.AutoUpgradeSwordStats then
						e("Sword", N.StatsCountPerUpgrade)
					end
					if N.AutoUpgradeGunStats then
						e("Gun", N.StatsCountPerUpgrade)
					end
					if N.AutoUpgradeDevilFruitStats then
						e("Demon Fruit", N.StatsCountPerUpgrade)
					end
				end
			end))()
		end
	end)
	a:CreateSection("Auto Upgrade Stats Configuration")
	a:CreateSlider("Stats Count Per Upgrade", 1, 5, 1, function(o)
		N.StatsCountPerUpgrade = tonumber(o) or 1
	end)
	a:CreateSlider("Auto Upgrade Stats Per Seconds", 3, 60, 30, function(o)
		N.AutoUpgradePerSeconds = tonumber(o) or 30
	end)
	a:CreateToggle("Melee", function(o)
		N.AutoUpgradeMeleeStats = o
	end)
	a:CreateToggle("Defense", function(o)
		N.AutoUpgradeDefenseStats = o
	end)
	a:CreateToggle("Sword", function(o)
		N.AutoUpgradeSwordStats = o
	end)
	a:CreateToggle("Gun", function(o)
		N.AutoUpgradeGunStats = o
	end)
	a:CreateToggle("Devil Fruit", function(o)
		N.AutoUpgradeDevilFruitStats = o
	end)
	a:CreateSection("Visual Indicators")
	a:CreateToggle("ESP Current Target", function(o)
		if o then
			U.ESP["Current Target"] = {}
			U.ESP["Current Target"].Text = Drawing.new("Text")
			U.ESP["Current Target"].Service = G.RenderStepped:Connect(function()
				if N.CurrentTarget and N.CurrentTarget:FindFirstChild("Humanoid") then
					local o, Y = workspace.CurrentCamera:WorldToViewportPoint((N.CurrentTarget.Head.CFrame * CFrame.new(0, 1.5, 0)) * (CFrame.new(0, - N.CurrentTarget.HumanoidRootPart.Size.Y, 0)).Position)
					local j = (N.CurrentTarget.HumanoidRootPart.Position - workspace.CurrentCamera.CFrame.Position).Magnitude / 20
					U.ESP["Current Target"].Text.Visible = Y
					U.ESP["Current Target"].Text.Color = Color3.fromRGB(255, 0, 0)
					U.ESP["Current Target"].Text.Position = Vector2.new(o.X, o.Y)
					U.ESP["Current Target"].Text.Size = j >= 17 and 3 or 20 - j
					U.ESP["Current Target"].Text.Text = N.CurrentTarget.Name
				else
					U.ESP["Current Target"].Text.Visible = false
				end
			end)
			U.ESP["Current Target"].Text.OutlineColor = Color3.fromRGB(255, 255, 255)
			U.ESP["Current Target"].Text.Outline = true
			U.ESP["Current Target"].Text.Size = 20
			U.ESP["Current Target"].Text.Font = 3
			U.ESP["Current Target"].Text.Transparency = 1
			U.ESP["Current Target"].Text.Center = true
		else
			if U.ESP["Current Target"] then
				U.ESP["Current Target"].Service:Disconnect()
				U.ESP["Current Target"].Text:Remove()
			end
		end
	end)
	a:CreateToggle("Tracer Current Target", function(o)
		if o then
			U.Tracer["Current Target"] = {}
			U.Tracer["Current Target"].Line = Drawing.new("Line")
			U.Tracer["Current Target"].Service = G.RenderStepped:Connect(function()
				if N.CurrentTarget and N.CurrentTarget:FindFirstChild("Humanoid") then
					local o, Y = workspace.CurrentCamera:WorldToViewportPoint(N.CurrentTarget.Head.CFrame * (CFrame.new(0, - N.CurrentTarget.HumanoidRootPart.Size.Y, 0)).Position)
					U.Tracer["Current Target"].Line.Color = Color3.fromRGB(255, 0, 0)
					U.Tracer["Current Target"].Line.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
					U.Tracer["Current Target"].Line.To = Vector2.new(o.X, o.Y)
					U.Tracer["Current Target"].Line.Visible = Y
				else
					U.Tracer["Current Target"].Line.Visible = false
				end
			end)
			U.Tracer["Current Target"].Line.Thickness = 2
			U.Tracer["Current Target"].Line.Transparency = 1
		else
			if U.Tracer["Current Target"] then
				U.Tracer["Current Target"].Service:Disconnect()
				U.Tracer["Current Target"].Text:Remove()
			end
		end
	end)
	a:CreateSection("Auto Buy")
	a:CreateToggle("Auto Buy Legendary Sword", function(o)
		N.AutoBuyLegendarySword = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyLegendarySword do
					task.wait()
					z.Function(A.Remotes.CommF_, "LegendarySwordDealer", "\049")
					z.Function(A.Remotes.CommF_, "LegendarySwordDealer", "\050")
					z.Function(A.Remotes.CommF_, "LegendarySwordDealer", "\051")
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Buy Random Fruits", function(o)
		N.AutoBuyRandomFruits = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyRandomFruits do
					task.wait()
					z.Function(A.Remotes.CommF_, "Cousin", "Buy")
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Buy Microchip Law Boss", function(o)
		N.AutoBuyMicrochipLawBoss = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyMicrochipLawBoss do
					task.wait()
					z.Function(A.Remotes.CommF_, "BlackbeardReward", "Microchip", "\050")
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Buy Enchancement Color", function(o)
		N.AutoBuyEnchancement = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyEnchancement do
					task.wait()
					z.Function(A.Remotes.CommF_, "ColorsDealer", "\050")
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Buy Dragon Talon", function(o)
		N.AutoBuyDragonTalon = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyDragonTalon do
					if D.Backpack:FindFirstChild("Dragon Claw") or D.Character:FindFirstChild("Dragon Claw") or D.Backpack:FindFirstChild("Dragon Talon") or D.Character:FindFirstChild("Dragon Talon") then
						if D.Backpack:FindFirstChild("Dragon Claw") and (D.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
							z.Function(A.Remotes.CommF_, "BuyDragonTalon")
						elseif D.Character:FindFirstChild("Dragon Claw") and (D.Character:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
							z.Function(A.Remotes.CommF_, "BuyDragonTalon")
						end
					else
						z.Function(A.Remotes.CommF_, "BlackbeardReward", "DragonClaw", "\050")
					end
				end
			end))()
		end
	end)
	a:CreateButton("Buy Geppo", function()
		z.Function(A.Remotes.CommF_, "BuyHaki", "Geppo")
	end)
	a:CreateButton("Buy Buso Haki", function()
		z.Function(A.Remotes.CommF_, "BuyHaki", "Buso")
	end)
	a:CreateButton("Buy Soru", function()
		z.Function(A.Remotes.CommF_, "BuyHaki", "Soru")
	end)
	a:CreateButton("Buy Observation Ken Haki", function()
		z.Function(A.Remotes.CommF_, "KenTalk", "Buy")
	end)
	a:CreateButton("Buy Black Leg", function()
		z.Function(A.Remotes.CommF_, "BuyBlackLeg")
	end)
	a:CreateButton("Buy Electro", function()
		z.Function(A.Remotes.CommF_, "BuyElectro")
	end)
	a:CreateButton("Buy Fishman Karate", function()
		z.Function(A.Remotes.CommF_, "BuyFishmanKarate")
	end)
	a:CreateButton("Buy Dragon Claw", function()
		z.Function(A.Remotes.CommF_, "BlackbeardReward", "DragonClaw", "\049")
		z.Function(A.Remotes.CommF_, "BlackbeardReward", "DragonClaw", "\050")
	end)
	a:CreateButton("Buy Superhuman", function()
		z.Function(A.Remotes.CommF_, "BuySuperhuman")
	end)
	a:CreateButton("Buy Death Step", function()
		z.Function(A.Remotes.CommF_, "BuyDeathStep")
	end)
	a:CreateButton("Buy Sharkman Karate", function()
		z.Function(A.Remotes.CommF_, "BuySharkmanKarate", true)
		z.Function(A.Remotes.CommF_, "BuySharkmanKarate")
	end)
	a:CreateButton("Buy Electric Claw", function()
		z.Function(A.Remotes.CommF_, "BuyElectricClaw")
	end)
	a:CreateButton("Buy Dragon Talon", function()
		z.Function(A.Remotes.CommF_, "BuyDragonTalon")
	end)
	a:CreateButton("Buy Surprise", function()
		z.Function(A.Remotes.CommF_, "Bones", "Buy", 1, 1)
	end)
	a:CreateButton("Buy Stat Refund", function()
		z.Function(A.Remotes.CommF_, "Bones", "Buy", 1, 2)
	end)
	a:CreateButton("Buy Race Reroll", function()
		z.Function(A.Remotes.CommF_, "Bones", "Buy", 1, 3)
	end)
	a:CreateButton("Buy Black Cape", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Black Cape")
	end)
	a:CreateButton("Buy Iron Mace", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Iron Mace")
	end)
	a:CreateButton("Buy Duel Katana", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Duel Katana")
	end)
	a:CreateButton("Buy Triple Katana", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Triple Katana")
	end)
	a:CreateButton("Buy Pipe", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Pipe")
	end)
	a:CreateButton("Buy Dual Headed Blade", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Dual-Headed Blade")
	end)
	a:CreateButton("Buy Bisento", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Bisento")
	end)
	a:CreateButton("Buy Soul Cane", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Soul Cane")
	end)
	a:CreateButton("Buy Slingshot", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Slingshot")
	end)
	a:CreateButton("Buy Musket", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Musket")
	end)
	a:CreateButton("Buy Flintlock", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Flintlock")
	end)
	a:CreateButton("Buy Refined Flintlock", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Refined Flintlock")
	end)
	a:CreateButton("Buy Cannon", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Cannon")
	end)
	a:CreateButton("Buy Kabucha", function()
		z.Function(A.Remotes.CommF_, "BlackbeardReward", "Slingshot", "\049")
		z.Function(A.Remotes.CommF_, "BlackbeardReward", "Slingshot", "\050")
	end)
	a:CreateButton("Buy Swordsman Hat", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Swordsman Hat")
	end)
	a:CreateButton("Buy Cutlass", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Cutlass")
	end)
	a:CreateButton("Buy Katana", function()
		z.Function(A.Remotes.CommF_, "BuyItem", "Katana")
	end)
	a:CreateSection("Auto")
	a:CreateToggle("Auto Ken Haki", function(o)
		N.AutoKenHaki = o
		if o then
			(coroutine.wrap(function()
				while N.AutoKenHaki do
					task.wait()
					z.Event(A.Remotes.CommE, "Ken", true)
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Awakener", function(o)
		N.AutoAwakener = o
		if o then
			(coroutine.wrap(function()
				while N.AutoAwakener do
					task.wait()
					z.Function(A.Remotes.CommF_, "Awakener", "Check")
					z.Function(A.Remotes.CommF_, "Awakener", "Awaken")
				end
			end))()
		end
	end)
	a:CreateToggle("Auto Grab Dropped Fruits", function(o)
		N.AutoGrabDroppedFruits = o
		if o then
			x:MakeTask("Auto Grab Dropped Fruits", workspace.ChildAdded, function(o)
				if o:IsA("Tool") and o:FindFirstChild("Handle") then
					local Y = h(D)
					local j
					j = G.Stepped:Connect(function()
						if D and (D.Character and (Y and (o.Parent == workspace and N.AutoGrabDroppedFruits))) then
							o.Handle.CFrame = Y.CFrame
							task.spawn(function()
								firetouchinterest(o.Handle, Y, 0)
								firetouchinterest(o.Handle, Y, 1)
							end)
						end
					end)
					repeat
						task.wait()
					until o.Parent ~= workspace or not N.AutoGrabDroppedFruits
					j:Disconnect()
				end
			end)
			for o, Y in pairs(workspace:GetChildren()) do
				if Y:IsA("Tool") and Y:FindFirstChild("Handle") then
					local o = h(D)
					local j
					j = G.Stepped:Connect(function()
						if D and (D.Character and (o and (Y.Parent == workspace and N.AutoGrabDroppedFruits))) then
							Y.Handle.CFrame = o.CFrame
							task.spawn(function()
								firetouchinterest(Y.Handle, o, 0)
								firetouchinterest(Y.Handle, o, 1)
							end)
						end
					end)
					repeat
						task.wait()
					until Y.Parent ~= workspace or not N.AutoGrabDroppedFruits
					j:Disconnect()
				end
			end
		else
			x:RemoveTask("Auto Grab Dropped Fruits")
		end
	end)
	a:CreateToggle("Auto Yama", function(o)
		N.AutoYama = o
		if o then
			(coroutine.wrap(function()
				while N.AutoYama do
					task.wait()
					if z.Function(A.Remotes.CommF_, "EliteHunter", "Progress") >= 30 then
						repeat
							task.wait()
							fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
						until D.Backpack:FindFirstChild("Yama") or D.Backpack:FindFirstChild("Yama") or not N.AutoYama
					end
				end
			end))()
		end
	end)
	G.Stepped:Connect(function()
		local o = math.floor(workspace:GetRealPhysicsFPS())
		local Y = o >= 45 and "<font color=\"rgb(\048, \050\053\053, \048)\">" .. (o .. "</font>") or "<font color=\"rgb(\050\053\053, \048, \048)\">" .. (o .. "</font>")
		c:Update("Server Info:", "Server: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (N.ServerWorld .. ("</font>\nFPS: " .. (Y .. ("\nLevel: <font color=\"rgb(\048, \050\053\053, \048)\">" .. (D.Data.Level.Value .. ("</font>\nAuto Farm Current Target: " .. (N.CurrentTarget and "<font color=\"rgb(\048, \050\053\053, \048)\">" .. (N.CurrentTarget.Name .. "</font>") or "<font color=\"rgb(\050\053\053, \048, \048)\">null</font>"))))))))
	end)
	D.Character.ChildAdded:Connect(function(o)
		if o:IsA("Tool") then
			N.Tools = {}
			v()
			F:Change(N.Tools)
		end
	end)
	D.Backpack.ChildAdded:Connect(function(o)
		if o:IsA("Tool") then
			N.Tools = {}
			v()
			F:Change(N.Tools)
		end
	end)
	D.CharacterAdded:Connect(function()
		task.wait(1.5)
		D.Character.ChildAdded:Connect(function(o)
			if o:IsA("Tool") then
				N.Tools = {}
				v()
				F:Change(N.Tools)
			end
		end)
		D.Backpack.ChildAdded:Connect(function(o)
			if o:IsA("Tool") then
				N.Tools = {}
				v()
				F:Change(N.Tools)
			end
		end)
	end)
	v()
	F:Change(N.Tools)
	JK()
	N.InCombatAimbot = GK(game, "__namecall", function(o, ...)
		local Y = getnamecallmethod()
		if not checkcaller() then
			local j = {
				...
			}
			if Y == "FireServer" then
				if o.Name == "RemoteEvent" and o.Parent.Parent == D.Character then
					if N.PVPAimbot and (D.PlayerGui.Main.InCombat.Visible and type(j[1]) == "Vector\051") then
						local Y = h(D)
						local j = math.huge
						local Z
						for o, t in pairs(O.GetPlayers(O)) do
							if t.Name ~= g and (Child.FindFirstChild(Child, "Character") and (Child.Character.FindFirstChild(Child.Character, "Humanoid") and Child.Character.Humanoid.Health > 0)) then
								local o = (Y.Position - (h(t)).Position).Magnitude
								if o < j then
									j = o
									Z = t
								end
							end
						end
						if Z then
							return N.InCombatAimbot(o, (h(Z)).Position)
						end
					elseif N.AutoFarmSilentAim and (N.CurrentTarget and N.CurrentTarget.FindFirstChild(N.CurrentTarget, "Humanoid")) then
						return N.InCombatAimbot(o, N.CurrentTarget.HumanoidRootPart.Position)
					end
				end
			end
		end
		return N.InCombatAimbot(o, ...)
	end)
end
local function SK()
	local o = game:GetService("AdService")
	local Y = game:GetService("SocialService")
	local j = A.Remotes.AbilityButtonPress
	local Z = (D.PlayerGui:WaitForChild("Hotbar")).Block.UIGradient
	N.LastTick = tick()
	N.CurvingStyle = "Left"
	N.PredictionType = "Force"
	N.BallTarget = ""
	local function K(o)
		local Y = workspace.Alive:FindFirstChild(o)
		return Y and Y.Humanoid.Health ~= 0
	end
	local function U()
		if N.ParryRemote then
			local o = {}
			o[1] = .5
			if N.AutoCurveBall then
				if N.CurvingStyle == "Up" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(0, 100, 0))
				elseif N.CurvingStyle == "Down" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(0, -100, 0))
				elseif N.CurvingStyle == "Left" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(100, 0, 0))
				elseif N.CurvingStyle == "Right" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(-100, 0, 0))
				elseif N.CurvingStyle == "Back" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(0, 0, 100))
				elseif N.CurvingStyle == "Back-Left" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(100, 0, 100))
				elseif N.CurvingStyle == "Back-Right" then
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Vector3.new(-100, 0, 100))
				elseif N.CurvingStyle == "Random" then
					local Y = {
						Vector3.new(0, 100, 0);
						Vector3.new(0, -100, 0),
						Vector3.new(100, 0, 0);
						Vector3.new(-100, 0, 0),
						Vector3.new(0, 0, 100);
						Vector3.new(100, 0, 100);
						Vector3.new(-100, 0, 100)
					}
					o[2] = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, D.Character.Head.Position * Y[math.random(1, # Y)])
				end
			else
				o[2] = workspace.CurrentCamera.CFrame
			end
			o[3] = (function()
				local o = {}
				for Y, j in pairs(workspace.Alive:GetChildren()) do
					o[j.Name] = j.HumanoidRootPart.Position
				end
				return o
			end)()
			o[4] = {
				375,
				145
			}
			z.Event(N.ParryRemote, o[1], o[2], o[3], o[4], false)
		end
	end
	local function r(o)
		a.Box[o.Name] = {}
		a.Box[o.Name].TopLeft = Drawing.new("Line")
		a.Box[o.Name].TopRight = Drawing.new("Line")
		a.Box[o.Name].BottomLeft = Drawing.new("Line")
		a.Box[o.Name].BottomRight = Drawing.new("Line")
		a.Box[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = CFrame.lookAt((CFrame.new(Y.CFrame.X, Y.CFrame.Y, Y.CFrame.Z)).Position, workspace.CurrentCamera.CFrame.Position), Vector3.new(3.5, 1.5, 1.5) * 1.35
					local t, K = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(Z.X, Z.Y, 0)).Position)
					local U, r = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(- Z.X, Z.Y, 0)).Position)
					local G, T = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(Z.X, - Z.Y, 0)).Position)
					local J, A = workspace.CurrentCamera:WorldToViewportPoint(j * (CFrame.new(- Z.X, - Z.Y, 0)).Position)
					local q = N.CurrentBallTarget == o.Name and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
					a.Box[o.Name].TopLeft.From = Vector2.new(t.X, t.Y)
					a.Box[o.Name].TopLeft.To = Vector2.new(U.X, U.Y)
					a.Box[o.Name].TopLeft.Visible = K
					a.Box[o.Name].TopLeft.Color = q
					a.Box[o.Name].TopRight.From = Vector2.new(U.X, U.Y)
					a.Box[o.Name].TopRight.To = Vector2.new(J.X, J.Y)
					a.Box[o.Name].TopRight.Visible = r
					a.Box[o.Name].TopRight.Color = q
					a.Box[o.Name].BottomLeft.From = Vector2.new(G.X, G.Y)
					a.Box[o.Name].BottomLeft.To = Vector2.new(t.X, t.Y)
					a.Box[o.Name].BottomLeft.Visible = T
					a.Box[o.Name].BottomLeft.Color = q
					a.Box[o.Name].BottomRight.From = Vector2.new(J.X, J.Y)
					a.Box[o.Name].BottomRight.To = Vector2.new(G.X, G.Y)
					a.Box[o.Name].BottomRight.Visible = A
					a.Box[o.Name].BottomRight.Color = q
				else
					a.Box[o.Name].TopLeft.Visible = false
					a.Box[o.Name].TopRight.Visible = false
					a.Box[o.Name].BottomLeft.Visible = false
					a.Box[o.Name].BottomRight.Visible = false
				end
			else
				a.Box[o.Name].TopLeft.Visible = false
				a.Box[o.Name].TopRight.Visible = false
				a.Box[o.Name].BottomLeft.Visible = false
				a.Box[o.Name].BottomRight.Visible = false
			end
		end)
		a.Box[o.Name].TopLeft.Thickness = 2
		a.Box[o.Name].TopLeft.Transparency = 1
		a.Box[o.Name].TopRight.Thickness = 2
		a.Box[o.Name].TopRight.Transparency = 1
		a.Box[o.Name].BottomLeft.Thickness = 2
		a.Box[o.Name].BottomLeft.Transparency = 1
		a.Box[o.Name].BottomRight.Thickness = 2
		a.Box[o.Name].BottomRight.Transparency = 1
	end
	local function T(o)
		a.Tracer[o.Name] = {}
		a.Tracer[o.Name].Line = Drawing.new("Line")
		a.Tracer[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = workspace.CurrentCamera:WorldToViewportPoint(Y.CFrame * (CFrame.new(0, - Y.Size.Y, 0)).Position)
					a.Tracer[o.Name].Line.Color = N.CurrentBallTarget == o.Name and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
					a.Tracer[o.Name].Line.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
					a.Tracer[o.Name].Line.To = Vector2.new(j.X, j.Y)
					a.Tracer[o.Name].Line.Visible = Z
				else
					a.Tracer[o.Name].Line.Visible = false
				end
			else
				a.Tracer[o.Name].Line.Visible = false
			end
		end)
		a.Tracer[o.Name].Line.Thickness = 2
		a.Tracer[o.Name].Line.Transparency = 1
	end
	local function J()
		a.Tracer["Ball Core"] = {}
		a.Tracer["Ball Core"].Line = Drawing.new("Line")
		a.Tracer["Ball Core"].Service = G.RenderStepped:Connect(function()
			local o = N.CurrentBall
			if o then
				local Y, j = workspace.CurrentCamera:WorldToViewportPoint(o.CFrame * (CFrame.new(0, - o.Size.Y, 0)).Position)
				a.Tracer["Ball Core"].Line.Color = Color3.fromRGB(0, 0, 255)
				a.Tracer["Ball Core"].Line.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
				a.Tracer["Ball Core"].Line.To = Vector2.new(Y.X, Y.Y)
				a.Tracer["Ball Core"].Line.Visible = j
			else
				a.Tracer["Ball Core"].Line.Visible = false
			end
		end)
		a.Tracer["Ball Core"].Line.Thickness = 2
		a.Tracer["Ball Core"].Line.Transparency = 1
	end
	local function q(o)
		a.ESP[o.Name] = {}
		a.ESP[o.Name].Text = Drawing.new("Text")
		a.ESP[o.Name].Service = G.RenderStepped:Connect(function()
			if o and o.Character then
				local Y = h(o)
				if Y then
					local j, Z = workspace.CurrentCamera:WorldToViewportPoint((Y.CFrame * CFrame.new(0, 6.5, 0)) * (CFrame.new(0, - Y.Size.Y, 0)).Position)
					local t = (Y.Position - workspace.CurrentCamera.CFrame.Position).Magnitude / 20
					a.ESP[o.Name].Text.Visible = Z
					a.ESP[o.Name].Text.Color = N.CurrentBallTarget == o.Name and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
					a.ESP[o.Name].Text.Position = Vector2.new(j.X, j.Y)
					a.ESP[o.Name].Text.Size = t >= 17 and 3 or 20 - t
				else
					a.ESP[o.Name].Text.Visible = false
				end
			else
				a.ESP[o.Name].Text.Visible = false
			end
		end)
		a.ESP[o.Name].Text.OutlineColor = Color3.fromRGB(255, 255, 255)
		a.ESP[o.Name].Text.Outline = true
		a.ESP[o.Name].Text.Size = 30
		a.ESP[o.Name].Text.Font = 3
		a.ESP[o.Name].Text.Text = o.Name
		a.ESP[o.Name].Text.Transparency = 1
		a.ESP[o.Name].Text.Center = true
	end
	local S = TK:CreateTab("Player Mods", "rbxassetid://\049\051\054\054\057\054\051\051\055\054\050")
	local C = TK:CreateTab("Visuals", "rbxassetid://\049\051\054\054\057\054\051\049\054\052\057")
	local L = TK:CreateTab("Combat", "rbxassetid://\049\051\054\054\057\054\050\052\050\056\049")
	local e = TK:CreateTab("Farm", "rbxassetid://\049\051\054\054\057\054\050\054\056\048\049")
	local E = S:CreateToggle("Enable WalkSpeed", function(o)
		if o then
			D.Character.Humanoid.WalkSpeed = N.WalkSpeed
			x:MakeTask("WalkSpeed OnRespawn", D.CharacterAdded, function()
				task.wait(.5)
				D.Character.Humanoid.WalkSpeed = N.WalkSpeed
			end)
		else
			x:RemoveTask("WalkSpeed OnRespawn")
			D.Character.Humanoid.WalkSpeed = 16
		end
	end)
	local Q = S:CreateSlider("WalkSpeed", 1, 255, 16, function(o)
		N.WalkSpeed = o
		if E:GetStatus() then
			D.Character.Humanoid.WalkSpeed = o
		end
	end)
	S:CreateToggle("Toggle Infinite Jump", function(o)
		if o then
			x:MakeTask("Infinite Jump", t.JumpRequest, function()
				D.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end)
		else
			x:RemoveTask("Infinite Jump")
		end
	end)
	S:CreateToggle("Toggle Noclip", function(o)
		KK(o)
	end)
	S:CreateToggle("Bypass Pulse Ability <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>", function(o)
		if o then
			if H then
				x:MakeTask("Bypass Pulse", G.RenderStepped, function()
					pcall(function()
						D.PlayerGui.Hotbar.Ability.Red.Visible = false
					end)
				end)
			end
		else
			x:RemoveTask("Bypass Pulse")
		end
	end)
	S:CreateSection("Buy")
	S:CreateButton("Buy Normal Sword Crate (\056\048 Coins)", function()
		z.Function(A.Remote.RemoteFunction, "PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
	end)
	S:CreateButton("Buy Normal Exploision Crate (\056\048 Coins)", function()
		z.Function(A.Remote.RemoteFunction, "PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
	end)
	S:CreateToggle("Auto Buy Normal Sword Crate (\056\048 Coins)", function(o)
		N.AutoBuyNormalSwordCrate = o
		if o then
			(coroutine.wrap(function()
				while N.AutoBuyNormalSwordCrate do
					task.wait()
					z.Function(A.Remote.RemoteFunction, "PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
					task.wait(1)
				end
			end))()
		end
	end)
	S:CreateButton("Auto Buy Normal Exploision Crate (\056\048 Coins)", function()
		N.AutoBuyNormalExplosionCrate = Boolean
		if Boolean then
			(coroutine.wrap(function()
				while N.AutoBuyNormalExplosionCrate do
					task.wait()
					z.Function(A.Remote.RemoteFunction, "PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
					task.wait(1)
				end
			end))()
		end
	end)
	S:CreateParagraph("Bypass Pulse Ability", "You are immune on others that uses <font color=\"rgb(\050\053\053, \048, \048)\">Pulse</font> ability.")
	C:CreateSection("ESP")
	C:CreateToggle("ESP Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					q(Y)
				end
			end
			x:MakeTask("ESP Handler \049", O.PlayerAdded, q)
			x:MakeTask("ESP Handler \050", O.PlayerRemoving, function(o)
				if a.ESP[o.Name] then
					a.ESP[o.Name].Text:Remove()
					a.ESP[o.Name].Service:Disconnect()
					a.ESP[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("ESP Handler \049")
			x:RemoveTask("ESP Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.ESP[Y.Name] then
					a.ESP[Y.Name].Text:Remove()
					a.ESP[Y.Name].Service:Disconnect()
					a.ESP[Y.Name] = nil
				end
			end
		end
	end)
	C:CreateSection("ESP Box")
	C:CreateToggle("ESP Box Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					r(Y)
				end
			end
			x:MakeTask("Boxes Handler \049", O.PlayerAdded, r)
			x:MakeTask("Boxes Handler \050", O.PlayerRemoving, function(o)
				if a.Box[o.Name] then
					a.Box[o.Name].TopLeft:Remove()
					a.Box[o.Name].TopRight:Remove()
					a.Box[o.Name].BottomLeft:Remove()
					a.Box[o.Name].BottomRight:Remove()
					a.Box[o.Name].Service:Disconnect()
					a.Box[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("Boxes Handler \049")
			x:RemoveTask("Boxes Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.Box[Y.Name] then
					a.Box[Y.Name].TopLeft:Remove()
					a.Box[Y.Name].TopRight:Remove()
					a.Box[Y.Name].BottomLeft:Remove()
					a.Box[Y.Name].BottomRight:Remove()
					a.Box[Y.Name].Service:Disconnect()
					a.Box[Y.Name] = nil
				end
			end
		end
	end)
	C:CreateSection("Tracer")
	C:CreateToggle("Tracer Everyone", function(o)
		if o then
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g then
					T(Y)
				end
			end
			x:MakeTask("Tracer Handler \049", O.PlayerAdded, T)
			x:MakeTask("Tracer Handler \050", O.PlayerRemoving, function(o)
				if a.Tracer[o.Name] then
					a.Tracer[o.Name].Line:Remove()
					a.Tracer[o.Name].Service:Disconnect()
					a.Tracer[o.Name] = nil
				end
			end)
		else
			x:RemoveTask("Tracer Handler \049")
			x:RemoveTask("Tracer Handler \050")
			for o, Y in pairs(O:GetPlayers()) do
				if Y.Name ~= g and a.Tracer[Y.Name] then
					a.Tracer[Y.Name].Line:Remove()
					a.Tracer[Y.Name].Service:Disconnect()
					a.Tracer[Y.Name] = nil
				end
			end
		end
	end)
	C:CreateToggle("Tracer Ball", function(o)
		if o then
			J()
		else
			a.Tracer["Ball Core"].Line:Remove()
			a.Tracer["Ball Core"].Service:Disconnect()
			a.Tracer["Ball Core"] = nil
		end
	end)
	L:CreateSection("Ability Modification")
	for o, Y in pairs(D.Character.Abilities:GetChildren()) do
		if Y:IsA("LocalScript") and (Y.Disabled == false or Y.Disabled == true) then
			L:CreateToggle("No Cooldown " .. Y.Name, function(o)
				if o then
					x:SetValue("Original Level of " .. Y.Name, D.Upgrades[Y.Name].Value)
					D.Upgrades[Y.Name].Value = 999999
				else
					D.Upgrades[Y.Name].Value = x:GetValue("Original Level of " .. Y.Name)
				end
			end)
		end
	end
	L:CreateSection("Ability Changer")
	local s = L:CreateLabel("Current Ability: <font color=\"rgb(\050\053\053, \048, \048)\">Telekinesis</font>")
	repeat
		task.wait()
	until D and D.Character
	for o, Y in pairs(D.Character.Abilities:GetChildren()) do
		if Y:IsA("LocalScript") then
			L:CreateButton(Y.Name, function()
				x:SetValue("Ability Chosen", Y.Name)
				s:Update("Current Ability: <font color=\"rgb(\050\053\053, \048, \048)\">" .. (Y.Name .. "</font>"))
				for o, j in pairs(D.Character.Abilities:GetChildren()) do
					if j:IsA("LocalScript") then
						if j.Name == Y.Name then
							j.Enabled = true
						else
							j.Enabled = false
						end
					end
				end
				if workspace:FindFirstChild("AbilityThingyk\049\050\049\050") then
					(workspace:FindFirstChild("AbilityThingyk\049\050\049\050")).Value = Y.Name
				end
			end)
		end
	end
	task.spawn(function()
		local o
		if workspace:FindFirstChild("AbilityThingyk\049\050\049\050") then
			o = Instance.new("StringValue")
			o.Name = "AbilityThingyk\049\050\049\050"
			workspace.AbilityThingyk1212:Remove()
		end
		if o then
			o.Parent = workspace
		end
	end)
	for o, Y in pairs(D.Character.Abilities:GetChildren()) do
		if Y:IsA("LocalScript") then
			if not Y.Disabled then
				x:SetValue("Ability Chosen", Y.Name)
				s:Update("Current Ability: <font color=\"rgb(\050\053\053, \048, \048)\">" .. (Y.Name .. "</font>"))
				if workspace:FindFirstChild("AbilityThingyk\049\050\049\050") then
					(workspace:FindFirstChild("AbilityThingyk\049\050\049\050")).Value = Y.Name
				end
			end
		end
	end
	e:CreateParagraph("Note", "This script is recommended on low ping users.")
	e:CreateToggle("Auto Parry", function(o)
		if o then
			x:MakeTask("Auto Parry", G.Heartbeat, function()
				if D and D.Character then
					local o = h(D)
					local Y = N.CurrentBall
					local t = N.CurrentBallTarget
					if Y and (Z.Offset.Y == .5 and (not N.OnClash and not N.OnFlashed)) then
						local Z, K = N.PredictionType == "Force" and Y.Velocity.Magnitude or N.PredictionType == "Assembly" and Y.AssemblyLinearVelocity.Magnitude or N.PredictionType == "Speed" and Y.zoomies.VectorVelocity.Magnitude, (o.Position - Y.Position).Magnitude
						if Z > 0 then
							Z = ((Z * .05 + Z / 4.5) + 10) + (N.PingBased and v.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000 or 0)
						end
						if t == g then
							if Z > K then
								if N.Debounce then
									N.Debounce = false
									if N.AutoRage then
										if D.PlayerGui.Hotbar.Ability.UIGradient.Offset.Y == .5 then
											if D.Character.Abilities["Raging Deflection"].Enabled or D.Character.Abilities.Rapture.Enabled then
												if not D.PlayerGui.Hotbar.Ability.Red.Visible then
													if Y.Velocity.Magnitude >= 150 then
														j:Fire()
													else
														U()
													end
												else
													U()
												end
											else
												U()
											end
										else
											U()
										end
									else
										U()
									end
								end
							end
						end
					end
				end
			end)
		else
			x:DestroyTask("Auto Parry")
		end
	end)
	e:CreateSection("Configuration")
	e:CreateToggle("Auto Curve Ball", function(o)
		N.AutoCurveBall = o
	end)
	e:CreateDropdown("Curving Style", {
		"Left",
		"Down",
		"Up",
		"Right",
		"Back",
		"Back-Left";
		"Back-Right";
		"Random"
	}, function(o)
		N.CurvingStyle = o
	end)
	e:CreateDropdown("Auto Parry Range Prediction Type", {
		"Force",
		"Assembly";
		"Speed"
	}, function(o)
		N.PredictionType = o
	end)
	e:CreateParagraph("Auto Parry Range Prediction Type", "We recommend using <font color=\"rgb(\048, \050\053\053, \048)\">Speed</font> nor <font color=\"rgb(\048, \050\053\053, \048)\">Assembly</font>.")
	e:CreateToggle("Additional Range Ping Based", function(o)
		N.PingBased = o
	end)
	e:CreateToggle("Spam Parry on Clash <font color=\"rgb(\048, \048, \050\053\053)\">(Optional)</font>", function(o)
		N.SpamParryOnClash = o
	end)
	e:CreateSlider("Auto Parry Hit/s Before Clash", 1, 5, 2, function(o)
		N.HitsTillClash = o
	end)
	e:CreateToggle("Auto Notify When Parried", function(o)
		N.AutoNotifyWhenParried = o
	end)
	e:CreateToggle("Auto Notify On Detected Clash", function(o)
		N.AutoNotifOnClash = o
	end)
	e:CreateToggle("Auto Flash Counter", function(o)
		if o then
			x:MakeTask("Auto Flash Counter", G.Heartbeat, function()
				if D and D.Character then
					local o = h(D)
					local Y = N.CurrentBall
					if Y then
						local Z = N.CurrentBallTarget
						if Z == g then
							if D.Character.Abilities["Flash Counter"].Enabled then
								if not D.PlayerGui.Hotbar.Ability.Red.Visible then
									if D.PlayerGui.Hotbar.Ability.UIGradient.Offset.Y == .5 then
										local Z = Y.AssemblyLinearVelocity.Magnitude / 5
										if Z > 40 then
											local t = (o.Position - Y.Position).Magnitude
											local K = 50 + Z * .125
											local U = 75 + Z * .225
											if t > K and t < U then
												if not N.OnFlashed then
													N.OnFlashed = true
													j:Fire()
												end
											end
										end
									end
								end
							end
						else
							N.OnFlashed = false
						end
					end
				end
			end)
		else
			x:RemoveTask("Auto Flash Counter")
		end
	end)
	e:CreateToggle("Auto Pull/Telekinesis", function(o)
		if o then
			x:MakeTask("Auto Pull/Telekinesis", G.RenderStepped, function()
				if D and D.Character then
					local o = N.CurrentBall
					if o then
						local Y = N.CurrentBallTarget
						if Y ~= g then
							local Z, t = (N.PingBased and v.Network.ServerStatsItem["Data Ping"]:GetValue() / 45 or 0) + (N.PredictionType == "Force" and o.Velocity.Magnitude or N.PredictionType == "Assembly" and o.AssemblyLinearVelocity.Magnitude or N.PredictionType == "Speed" and o.zoomies.VectorVelocity.Magnitude), (workspace.Alive[Y].HumanoidRootPart.Position - o.Position).Magnitude
							Z = Z / 4.5
							if Z > 0 then
								Z = Z + 20
							end
							if o.Velocity.Magnitude >= 50 then
								if Z > t then
									if (D.Character.Abilities.Pull.Enabled or D.Character.Abilities.Telekinesis.Enabled) and (not D.PlayerGui.Hotbar.Ability.Red.Visible and D.PlayerGui.Hotbar.Ability.UIGradient.Offset.Y == .5) then
										j:Fire()
									end
								end
							end
						end
					end
				end
			end)
		else
			x:RemoveTask("Auto Pull/Telekinesis")
		end
	end)
	e:CreateParagraph("Auto Pull/Telekinesis", "it is like a trap for others when they about to hit the ball and your ability <font color=\"rgb(\050\053\053, \048, \048)\">(Pull/Telekinesis)</font> will trigger automatically. <font color=\"rgb(\048, \048, \050\053\053)\">(must own these ability and equipped)</font>")
	e:CreateToggle("Auto Raging Deflection/Rapture", function(o)
		N.AutoRage = o
	end)
	e:CreateParagraph("Auto Raging Deflection/Rapture", "Your ability <font color=\"rgb(\050\053\053, \048, \048)\">(Raging Deflection/Rapture)</font> will trigger when the ball reached <font color=\"rgb(\048, \050\053\053, \048)\">\049\053\048</font> speed. <font color=\"rgb(\048, \048, \050\053\053)\">(must own these ability and equipped)</font>")
	e:CreateToggle("Auto Look At Ball", function(o)
		if o then
			x:MakeTask("Auto LookAt Ball", G.RenderStepped, function()
				if D and D.Character then
					local o = h(D)
					local Y = N.CurrentBall
					if Y then
						local j = Y.Position
						D.Character.HumanoidRootPart.CFrame = CFrame.lookAt(o.Position, Vector3.new(j.X, o.CFrame.Y, j.Z))
					end
				end
			end)
		else
			x:RemoveTask("Auto LookAt Ball")
		end
	end)
	e:CreateToggle("AI Auto Play <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>", function(o)
		N.AutoPlay = o
		if o and H then
			(coroutine.wrap(function()
				while N.AutoPlay do
					task.wait()
					if D and (D.Character and K(g)) then
						local o = h(D)
						local Y = N.CurrentBall
						if Y then
							local j = N.CurrentBallTarget
							if N.AiDirection == "Ball" then
								D.Character.Humanoid:MoveTo(N.OnBallMove == "Backward" and o.Position + Vector3.new(math.random(1, 3), 0, -3) or N.OnBallMove == "Forward" and Y.Position)
								task.wait(1)
							elseif N.AiDirection == "Ball\'s Target" then
								D.Character.Humanoid:MoveTo(workspace.Alive[j].HumanoidRootPart.Position + Vector3.new(math.random(1, 3), 0, 0))
								task.wait(1)
							end
						end
					end
				end
			end))()
		end
	end)
	e:CreateDropdown("If Ball Targetting You Move To", {
		"Forward";
		"Backward"
	}, function(o)
		N.OnBallMove = o
	end)
	e:CreateDropdown("AI Follows the", {
		"Ball";
		"Ball\'s Target"
	}, function(o)
		N.AiDirection = o
	end)
	e:CreateToggle("Intense Orbit Ball", function(o)
		if o then
			x:MakeTask("Intense Orbit Ball", G.Heartbeat, function()
				if D and D.Character then
					local o = N.CurrentBall
					if o then
						local Y = N.CurrentBallTarget
						if Y == g then
							workspace.CurrentCamera.CameraSubject = o
							m(D, "CFrame", o.CFrame * CFrame.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)))
						else
							local o = O[Y]
							if o and o.Character then
								m(D, "CFrame", o.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)))
							end
						end
					end
				end
			end)
		else
			x:RemoveTask("Intense Orbit Ball")
			if D and D.Character then
				workspace.CurrentCamera.CameraSubject = D.Character
			end
		end
	end)
	e:CreateToggle("Show Sphere Hitbox Aura", function(o)
		N.ShowSphereAura = o
		if o then
			local o = Instance.new("Part")
			o.Name = "SH Aura Sphere"
			o.Parent = workspace
			o.Color = Color3.fromRGB(0, 0, 255)
			o.Shape = Enum.PartType.Ball
			o.CanCollide = false
			o.Anchored = true
			o.CastShadow = false
			o.Transparency = .6
			o.Material = "ForceField"
			x:MakeTask("Show Sphere Hitbox Aura", G.Heartbeat, function()
				if D and D.Character then
					local Y = h(D)
					local j = N.CurrentBall
					o.CFrame = Y.CFrame
					if j then
						local Z = N.CurrentBallTarget
						local t, K = N.PredictionType == "Force" and j.Velocity.Magnitude or N.PredictionType == "Assembly" and j.AssemblyLinearVelocity.Magnitude or N.PredictionType == "Speed" and j.zoomies.VectorVelocity.Magnitude, (Y.Position - j.Position).Magnitude
						if t > 0 then
							t = ((t * .05 + t / 4.5) + 10) + (N.PingBased and v.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000 or 0)
						end
						o.Size = Vector3.new(t, t, t)
						if N.OnClash then
							o.Color = Color3.fromRGB(255, 0, 0)
						else
							if Z == g then
								o.Color = Color3.fromRGB(0, 255, 0)
							else
								o.Color = Color3.fromRGB(0, 0, 255)
							end
						end
					else
						o.Color = Color3.fromRGB(0, 255, 0)
					end
				end
			end)
		else
			x:RemoveTask("Show Sphere Hitbox Aura")
			if workspace:FindFirstChild("SH Aura Sphere") then
				workspace["SH Aura Sphere"]:Destroy()
			end
		end
	end)
	local R = e:CreateToggle("Spam Parry", function(o)
		N.SpamParry = o
	end)
	e:CreateKeybind("Spam Parry", Enum.KeyCode.T, function()
		R:Toggle()
		if R:GetStatus() then
			I("Spam Parry has been Enabled.")
		else
			I("Spam Parry has been Disabled.")
		end
	end)
	e:CreateToggle("Auto Titan Blade Mode <font color=\"rgb(\048, \048, \050\053\053)\">(Premium)</font>", function(o)
		if o and H then
			if D and D.Character then
				if D.Character.Abilities["Titan Blade"].Enabled then
					x:MakeTask("Auto Titan Blade Mode", G.RenderStepped, function()
						z.Event(A.Remotes.TitanBlade)
					end)
				else
					B("You must equip Titan Blade Ability to use this (must owned Titan Blade Ability).")
				end
			end
		else
			x:RemoveTask("Auto Titan Blade Mode")
		end
	end)
	G.RenderStepped:Connect(function()
		if D and D.Character then
			local o = h(D)
			local Y = N.CurrentBall
			local j = N.CurrentBallTarget
			if N.OnClash and (# workspace.Alive:GetChildren() < 2 or j ~= g and N.LastTarget ~= j or not K(g) or not K(N.LastTarget) or (o.Position - workspace.Alive[N.LastTarget].HumanoidRootPart.Position).Magnitude >= 35 or not Y) then
				N.OnClash = false
				N.LastTarget = nil
				N.LastTick = 0
				N.LastAttack = 0
				if N.AutoNotifOnClash then
					local o = tick() - N.ClashRecord
					local Y = "" .. (o .. "")
					local j = ""
					local Z, t = false, 0
					for o = 1, string.len(Y), 1 do
						if string.sub(Y, o, o) == "." and not Z then
							Z = true
							j = j .. "."
						else
							if Z and t < 2 then
								t = t + 1
								j = j .. string.sub(Y, o, o)
							elseif not Z then
								j = j .. string.sub(Y, o, o)
							end
						end
					end
				end
				B("Clash Ended! The match took " .. (TookTime .. "s."))
				N.ClashRecord = tick()
			end
		end
	end)
	G.Stepped:Connect(function()
		if N.SpamParry or N.OnClash then
			U()
		end
	end)
	G.Heartbeat:Connect(function()
		if not N.ParryRemote then
			for o, Y in pairs(o:GetChildren()) do
				if Y:IsA("RemoteEvent") and Y.Name:match("\n") then
					N.ParryRemote = Y
				end
			end
			if not N.ParryRemote then
				for o, Y in pairs(Y:GetChildren()) do
					if Y:IsA("RemoteEvent") and Y.Name:match("\n") then
						N.ParryRemote = Y
					end
				end
			end
		end
	end)
	workspace.Balls.ChildAdded:Connect(function(o)
		task.wait()
		if o:GetAttribute("realBall") then
			N.CurrentBallTarget = o:GetAttribute("target")
			N.CurrentBall = o
			N.Debounce = true
			N.OnFlashed = false
			N.OnClash = false;
			(o:GetAttributeChangedSignal("target")):Connect(function()
				local Y = o:GetAttribute("target")
				N.CurrentBallTarget = o:GetAttribute("target")
				if not N.Debounce and Y ~= g then
					N.Debounce = true
					N.OnFlashed = false
					if N.AutoNotifyWhenParried then
						(coroutine.wrap(B))("Ball Parried.")
					end
					if not N.OnClash then
						if N.SpamParryOnClash then
							local j = tick() - N.LastTick
							if j < .5 then
								if Y == N.LastTarget then
									N.LastAttack = N.LastAttack + 1
									if N.LastAttack >= N.HitsTillClash then
										local Y = h(D)
										local j = (Y.Position - o.Position).Magnitude
										if j <= 40 then
											local o = (Y.Position - workspace.Alive[N.LastTarget].HumanoidRootPart.Position).Magnitude
											if o <= 30 then
												if N.AutoNotifOnClash then
													B("Clashing with " .. (N.LastTarget .. "! Spamming Block..."))
												end
												N.OnClash = true
												N.ClashRecord = tick()
											end
										end
									end
								end
							else
								N.LastAttack = 0
							end
						end
					end
					N.LastTick = tick()
					N.LastTarget = Y
				end
				N.Debounce = true
			end)
		end
	end)
	workspace.Balls.ChildRemoved:Connect(function(o)
		if o:GetAttribute("realBall") then
			N.CurrentBall = nil
		end
	end)
	for o, Y in pairs(workspace.Balls:GetChildren()) do
		if Y:GetAttribute("realBall") then
			N.CurrentBallTarget = Y:GetAttribute("target")
			N.CurrentBall = Y
			N.Debounce = true
			N.OnFlashed = false
			N.OnClash = false;
			(Y:GetAttributeChangedSignal("target")):Connect(function()
				local o = Y:GetAttribute("target")
				N.CurrentBallTarget = Y:GetAttribute("target")
				if not N.Debounce and o ~= g then
					N.Debounce = true
					N.OnFlashed = false
					if N.AutoNotifyWhenParried then
						(coroutine.wrap(B))("Ball Parried.")
					end
					if not N.OnClash then
						if N.SpamParryOnClash then
							local j = tick() - N.LastTick
							if j < .5 then
								if o == N.LastTarget then
									N.LastAttack = N.LastAttack + 1
									if N.LastAttack >= N.HitsTillClash then
										local o = h(D)
										local j = (o.Position - Y.Position).Magnitude
										if j <= 40 then
											local Y = (o.Position - workspace.Alive[N.LastTarget].HumanoidRootPart.Position).Magnitude
											if Y <= 30 then
												if N.AutoNotifOnClash then
													B("Clashing with " .. (N.LastTarget .. "! Spamming Block..."))
												end
												N.OnClash = true
												N.ClashRecord = tick()
											end
										end
									end
								end
							else
								N.LastAttack = 0
							end
						end
					end
					N.LastTick = tick()
					N.LastTarget = o
				end
				N.Debounce = true
			end)
		end
	end
	JK()
end
TK:OnPreload(function(o, Y, j)
	l = j
	d = o
	i = Y
	TK:OnGameInvoke(142823291, AK)
	TK:OnGameInvoke(game.PlaceId == 2753915549 and 2753915549 or game.PlaceId == 4442272183 and 4442272183 or game.PlaceId == 7449423635 and 7449423635, qK)
	TK:OnGameInvoke(i:match("Blade Ball: ") and game.PlaceId or 13772394625, SK)
	N.ESPFolder = Instance.new("Folder")
	N.ESPFolder.Name = "SH \051D Visual"
	N.ESPFolder.Parent = workspace
	N.FormSubject = "Bugs"
	N.FormText = ""
	N.FormTooFast = tick()
	k = (loadstring(w("https://raw.githubusercontent.com/xwel\051\051/hud/main/Notification")))()
	z.Event = Instance.new("RemoteEvent")
	z.Function = Instance.new("RemoteFunction")
	z.Event.FireServer(z.Event)
	z.Function.InvokeServer(z.Function)
end)
TK:OnLoad(function(Y, j, Z, t, K, U)
	task.wait()
	F = U
	g = Y
	c = j
	H = Z
	y = t
	b = K
	local function r()
		return F
	end
	local G
	G = hookfunction(r, function(...)
		return G(...)
	end)
	local T
	T = hookfunction(hookfunction, function(...)
		local o = {
			...
		}
		local Y
		if o[1] == z.Event or o[1] == z.Function then
			Y = true
		else
			if type(o[1]) == "function" then
				local j = (debug.getinfo(o[1])).name
				if j == "FireServer" or j == "InvokeServer" then
					Y = true
				end
			end
		end
		if Y then
			local Y
			Y = T(o[1], function(...)
				local j = {
					...
				}
				o[2](j[1], "SH-API-" .. F, n(1), math.random(0, 9), "Bearer", "Elf and Tears", H, c, y, g)
				return Y(...)
			end)
			return Y
		end
		return T(...)
	end)
	if type(r) == "function" and (type(r()) == "string" and r() == F) then
		local Y = {}
		for o, j in pairs(getgc()) do
			local Z = (debug.getinfo(j)).name
			if Z == "FireServer" then
				if not Y.Event then
					Y.Event = j
				end
			elseif Z == "InvokeServer" then
				if not Y.Function then
					Y.Function = j
				end
			end
		end
		z.Event = Y.Event or z.Event
		z.Function = Y.Function or z.Function
		local j = "" .. (tick() - o .. "")
		local Z = ""
		local t, K = false, 0
		for o = 1, string.len(j), 1 do
			if string.sub(j, o, o) == "." and not t then
				t = true
				Z = Z .. "."
			else
				if t and K < 2 then
					K = K + 1
					Z = Z .. string.sub(j, o, o)
				elseif not t then
					Z = Z .. string.sub(j, o, o)
				end
			end
		end
		B("Symphony Hub Loaded! Took " .. (Z .. "s to load."))
	else
		d:Destroy()
		M, f = nil, nil
	end
end)
return TK:Init()