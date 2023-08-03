-- Instances:

local v6 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local killcheck = Instance.new("ImageButton")
local WinCheck = Instance.new("ImageButton")
local Inftext = Instance.new("TextLabel")
local policecheck = Instance.new("ImageButton")
local version = Instance.new("TextLabel")
local Killtext = Instance.new("TextLabel")
local Policetext = Instance.new("TextLabel")
local Wintext = Instance.new("TextLabel")
local Infinitecheck = Instance.new("ImageButton")
local targetfind = Instance.new("TextButton")
local esp = Instance.new("TextButton")
local soon = Instance.new("TextButton")
local setspeed = Instance.new("TextButton")
local setjump = Instance.new("TextButton")
local underfind = Instance.new("TextButton")
local close = Instance.new("TextButton")
local Speed = Instance.new("TextBox")
local Jump = Instance.new("TextBox")
local credit = Instance.new("TextLabel")

local TextButton = Instance.new("TextButton")

-- Checks
local infbool = Instance.new("BoolValue")
local killbool = Instance.new("BoolValue")
local winbool = Instance.new("BoolValue")
local policebool = Instance.new("BoolValue")

--Properties:

v6.Name = "v6"
v6.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = v6
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.Position = UDim2.new(0.0661512017, 0, 0.172519803, 0)
Main.Size = UDim2.new(0, 534, 0, 262)
Main.Active = true
Main.Draggable = true

killcheck.Name = "killcheck"
killcheck.Parent = Main
killcheck.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
killcheck.Position = UDim2.new(0.0392858088, 0, 0.414220214, 0)
killcheck.Size = UDim2.new(0, 29, 0, 29)
killcheck.Image = "rbxassetid://6663119143"
killcheck.MouseButton1Down:Connect(function()
	if killbool.Value then
		killbool.Value = false
		killcheck.Image = "rbxassetid://6663119143"
	else
		killbool.Value = true
		killcheck.Image = "rbxassetid://6663320273"
	end
	
end)

WinCheck.Name = "WinCheck"
WinCheck.Parent = Main
WinCheck.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
WinCheck.Position = UDim2.new(0.0392858014, 0, 0.606613755, 0)
WinCheck.Size = UDim2.new(0, 29, 0, 29)
WinCheck.Image = "rbxassetid://6663119143"
WinCheck.MouseButton1Down:Connect(function()
	if winbool.Value then
		winbool.Value = false
		WinCheck.Image = "rbxassetid://6663119143"
	else
		winbool.Value = true
		WinCheck.Image = "rbxassetid://6663320273"
	end
end)

Inftext.Name = "Inftext"
Inftext.Parent = Main
Inftext.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Inftext.BorderSizePixel = 0
Inftext.Position = UDim2.new(0.125717521, 0, 0.220569149, 0)
Inftext.Size = UDim2.new(0, 107, 0, 29)
Inftext.Font = Enum.Font.PermanentMarker
Inftext.Text = "Infinite Ammo"
Inftext.TextColor3 = Color3.fromRGB(255, 255, 255)
Inftext.TextSize = 20.000
Inftext.TextXAlignment = Enum.TextXAlignment.Left

policecheck.Name = "policecheck"
policecheck.Parent = Main
policecheck.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
policecheck.Position = UDim2.new(0.0392858088, 0, 0.799278915, 0)
policecheck.Size = UDim2.new(0, 29, 0, 29)
policecheck.Image = "rbxassetid://6663119143"
policecheck.MouseButton1Down:Connect(function()
	if policebool.Value then
		policebool.Value = false
		policecheck.Image = "rbxassetid://6663119143"
	else
		policebool.Value = true
		policecheck.Image = "rbxassetid://6663320273"
	end
	
end)

version.Name = "version"
version.Parent = Main
version.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
version.BorderSizePixel = 0
version.Position = UDim2.new(-0.00258530769, 0, 0.0174040757, 0)
version.Size = UDim2.new(0, 534, 0, 27)
version.Font = Enum.Font.PermanentMarker
version.Text = "FramedGUI v1.0 Full release"
version.TextColor3 = Color3.fromRGB(255, 255, 255)
version.TextSize = 30.000

Killtext.Name = "Killtext"
Killtext.Parent = Main
Killtext.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Killtext.BorderSizePixel = 0
Killtext.Position = UDim2.new(0.125717521, 0, 0.412826926, 0)
Killtext.Size = UDim2.new(0, 107, 0, 29)
Killtext.Font = Enum.Font.PermanentMarker
Killtext.Text = "Auto Kill"
Killtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Killtext.TextSize = 20.000
Killtext.TextXAlignment = Enum.TextXAlignment.Left

Policetext.Name = "Policetext"
Policetext.Parent = Main
Policetext.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Policetext.BorderSizePixel = 0
Policetext.Position = UDim2.new(0.123844855, 0, 0.797885656, 0)
Policetext.Size = UDim2.new(0, 107, 0, 29)
Policetext.Font = Enum.Font.PermanentMarker
Policetext.Text = "Police Auto Tp"
Policetext.TextColor3 = Color3.fromRGB(255, 255, 255)
Policetext.TextSize = 20.000
Policetext.TextXAlignment = Enum.TextXAlignment.Left

Wintext.Name = "Wintext"
Wintext.Parent = Main
Wintext.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Wintext.BorderSizePixel = 0
Wintext.Position = UDim2.new(0.123844869, 0, 0.605220556, 0)
Wintext.Size = UDim2.new(0, 107, 0, 29)
Wintext.Font = Enum.Font.PermanentMarker
Wintext.Text = "Auto Win"
Wintext.TextColor3 = Color3.fromRGB(255, 255, 255)
Wintext.TextSize = 20.000
Wintext.TextXAlignment = Enum.TextXAlignment.Left

Infinitecheck.Name = "Infinitecheck"
Infinitecheck.Parent = Main
Infinitecheck.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Infinitecheck.Position = UDim2.new(0.0392858088, 0, 0.221962392, 0)
Infinitecheck.Size = UDim2.new(0, 29, 0, 29)
Infinitecheck.Image = "rbxassetid://6663119143"
Infinitecheck.MouseButton1Down:Connect(function()
	if infbool.Value then
		infbool.Value = false
		Infinitecheck.Image = "rbxassetid://6663119143"
	else
		infbool.Value = true
		Infinitecheck.Image = "rbxassetid://6663320273"
	end
end)

targetfind.Name = "targetfind"
targetfind.Parent = Main
targetfind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
targetfind.BorderSizePixel = 0
targetfind.Position = UDim2.new(0.404899806, 0, 0.403463751, 0)
targetfind.Size = UDim2.new(0, 108, 0, 32)
targetfind.Font = Enum.Font.PermanentMarker
targetfind.Text = "Target Finder"
targetfind.TextColor3 = Color3.fromRGB(255, 255, 255)
targetfind.TextSize = 20.000
targetfind.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/AClassicSecretAccount/v0.5/main/GuiTarget'))()
end)

esp.Name = "esp"
esp.Parent = Main
esp.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
esp.BorderSizePixel = 0
esp.Position = UDim2.new(0.404899806, 0, 0.598120213, 0)
esp.Size = UDim2.new(0, 108, 0, 32)
esp.Font = Enum.Font.PermanentMarker
esp.Text = "Esp gui"
esp.TextColor3 = Color3.fromRGB(255, 255, 255)
esp.TextSize = 20.000
esp.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/XggXWolf/Esp/main/source'))()
end)


soon.Name = "soon"
soon.Parent = Main
soon.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
soon.BorderSizePixel = 0
soon.Position = UDim2.new(0.404899806, 0, 0.78895992, 0)
soon.Size = UDim2.new(0, 108, 0, 32)
soon.Font = Enum.Font.PermanentMarker
soon.Text = "Destroy Gui"
soon.TextColor3 = Color3.fromRGB(255, 255, 255)
soon.TextSize = 20.000
soon.MouseButton1Down:Connect(function()
	v6:Destroy()
end)

setspeed.Name = "setspeed"
setspeed.Parent = Main
setspeed.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
setspeed.BorderSizePixel = 0
setspeed.Position = UDim2.new(0.67830795, 0, 0.399647027, 0)
setspeed.Size = UDim2.new(0, 139, 0, 32)
setspeed.Font = Enum.Font.PermanentMarker
setspeed.Text = "Set Speed"
setspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
setspeed.TextSize = 20.000
setspeed.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Speed.Text)
end)

setjump.Name = "setjump"
setjump.Parent = Main
setjump.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
setjump.BorderSizePixel = 0
setjump.Position = UDim2.new(0.67830795, 0, 0.785143197, 0)
setjump.Size = UDim2.new(0, 139, 0, 32)
setjump.Font = Enum.Font.PermanentMarker
setjump.Text = "Set Jump"
setjump.TextColor3 = Color3.fromRGB(255, 255, 255)
setjump.TextSize = 20.000
setjump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Jump.Text)
end)

underfind.Name = "underfind"
underfind.Parent = Main
underfind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
underfind.BorderSizePixel = 0
underfind.Position = UDim2.new(0.404899806, 0, 0.212624073, 0)
underfind.Size = UDim2.new(0, 108, 0, 32)
underfind.Font = Enum.Font.PermanentMarker
underfind.Text = "Under Finder"
underfind.TextColor3 = Color3.fromRGB(255, 255, 255)
underfind.TextSize = 20.000
underfind.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/AClassicSecretAccount/v0.5/main/GuiUnder'))()
end)

close.Name = "close"
close.Parent = Main
close.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
close.BorderColor3 = Color3.fromRGB(50, 50, 50)
close.Position = UDim2.new(0.938607574, 0, -0.00111639593, 0)
close.Size = UDim2.new(0, 32, 0, 32)
close.Font = Enum.Font.PermanentMarker
close.Text = "-"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 20.000
close.MouseButton1Down:Connect(function()
	TextButton.Visible = true
	TextButton.Active = true
	Main.Visible = false
	Main.Active = false
end)

Speed.Name = "Speed"
Speed.Parent = Main
Speed.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.677362084, 0, 0.214328825, 0)
Speed.Size = UDim2.new(0, 139, 0, 32)
Speed.Font = Enum.Font.PermanentMarker
Speed.Text = "16"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 14.000

Jump.Name = "Jump"
Jump.Parent = Main
Jump.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Jump.BorderSizePixel = 0
Jump.Position = UDim2.new(0.677362084, 0, 0.603641808, 0)
Jump.Size = UDim2.new(0, 139, 0, 32)
Jump.Font = Enum.Font.PermanentMarker
Jump.Text = ""
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextSize = 14.000

credit.Name = "credit"
credit.Parent = Main
credit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
credit.BorderSizePixel = 0
credit.Position = UDim2.new(0.0610851049, 0, 0.914914072, 0)
credit.Size = UDim2.new(0, 174, 0, 22)
credit.Font = Enum.Font.PermanentMarker
credit.Text = "Made by Maou Framed on YT"
credit.TextColor3 = Color3.fromRGB(255, 255, 255)
credit.TextSize = 20.000

-- Closed

TextButton.Parent = v6
TextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton.BorderColor3 = Color3.fromRGB(50, 50, 50)
TextButton.Position = UDim2.new(0, 0, 0.462450534, 0)
TextButton.Size = UDim2.new(0, 41, 0, 40)
TextButton.Font = Enum.Font.PermanentMarker
TextButton.Text = "+"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.Visible = false
TextButton.MouseButton1Down:Connect(function()
	TextButton.Visible = false
	TextButton.Active = false
	Main.Visible = true
	Main.Active = true
end)

-- bools

infbool.Parent = Main
killbool.Parent = Main
winbool.Parent = Main
policebool.Parent = Main
infbool.Value = false
killbool.Value = false
winbool.Value = false
policebool.Value = false

-- Loops

while wait() do
	if infbool.Value then
		print("infbool")
		local success, problem = pcall(function()
			game.Players.LocalPlayer.Backpack["Hand Cannon"].Ammo.Value = 999
		end)

		if success then

		else


			--Checking M1911
			local success, problem = pcall(function()
				game.Players.LocalPlayer.Backpack.M1911.Ammo.Value = 999
			end)

			if success then

			else


				--Checking Luger

				local success, problem = pcall(function()
					game.Players.LocalPlayer.Backpack.Luger.Ammo.Value = 999
				end)

				if success then

				else



					--Checking Mac 10
					local success, problem = pcall(function()
						game.Players.LocalPlayer.Backpack.MAC10.Ammo.Value = 999
					end)

					if success then

					else



						--Checking Six Shooter

						local success, problem = pcall(function()
							game.Players.LocalPlayer.Backpack["Six Shooter"].Ammo.Value = 999
						end)

						if success then

						else


							--Checking Mauser

							local success, problem = pcall(function()
								game.Players.LocalPlayer.Backpack.Mauser.Ammo.Value = 999
							end)

							if success then

							else


							end
						end
					end
				end
			end
		end
	end
	if killbool.Value then
		print("killbool")
		local success, problem = pcall(function()
		local localplr = game.Players.LocalPlayer
		local yourcharacter = localplr.Character

		local yourface = yourcharacter.Head.face



		for _,player in pairs(game:GetService("Players"):GetPlayers())do
			if player and player.Character then

				local character = player.Character
				local face = character.Head.face
				local tool = localplr.Backpack["Check Target"].PistolPart.SurfaceGui.Phone.FaceColor.FaceImage.Image


				if face:IsA("Decal") then-- if it's a validz face, then...
					if tool == face.Texture then
						local targetplayer = face.Parent.Parent.HumanoidRootPart
						print(targetplayer)

						yourcharacter.HumanoidRootPart.CFrame = targetplayer.CFrame


					end
				end


			end
		end

	end)

	if success then

else

end

	end
	if winbool.Value then
		print("winbool")
		local Event = game:GetService("Workspace").Events.TouchEvent
		Event:FireServer()
	end
	if policebool.Value then
		print("policebool")
		local success, problem = pcall(function()
			

			local localplr = game.Players.LocalPlayer
			local yourcharacter = localplr.Character

			local yourface = yourcharacter.Head.face
			local Teams = game:GetService("Teams")


			for _,player in pairs(game:GetService("Players"):GetPlayers())do
				if player and player.Character then

					local character = player.Character
					local redHanded = player.RedHanded.Value
					if redHanded == true then
						if localplr.Team == Teams.Police then
							print(player.Character.Name)
							print(player.Character.HumanoidRootPart.CFrame)
							yourcharacter.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame

						else

							print("you're not police")
						end
					end

				end
			end

		end)

		if success then
			print("yes")
		else
			print(problem)
		end

	end
end