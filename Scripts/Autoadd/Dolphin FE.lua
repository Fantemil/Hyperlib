wait(1)
local UI = Instance.new("ScreenGui")
local PassedMaybe = false
UI.Parent = game.CoreGui

function loader()
	local Tos = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Name = Instance.new("TextLabel")
	local X = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local Sides = Instance.new("Frame")
	local Sides_2 = Instance.new("Frame")
	local DFEL = Instance.new("ImageLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local TextBox = Instance.new("TextBox")
	local yes = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local no = Instance.new("TextButton")
	local TextLabel_2 = Instance.new("TextLabel")
	local Loading = Instance.new("ImageLabel")
	local TextLabel_3 = Instance.new("TextLabel")

	Tos.Name="Tos" Tos.Parent=UI Tos.BackgroundColor3=Color3.fromRGB(21,21,21) Tos.Position=UDim2.new(0.37, 0, 0.3, 0) Tos.Size=UDim2.new(0,502,0,363)UICorner.Parent=Tos Top.Name="Top"Top.Parent=Tos Top.BackgroundColor3=Color3.fromRGB(26,26,26)Top.Position=UDim2.new(0,0,-0.0465656593,0)Top.Size=UDim2.new(0,502,0,27)UICorner_2.Parent=Top Name.Name="Name"Name.Parent=Top Name.BackgroundColor3=Color3.fromRGB(255,255,255)Name.BackgroundTransparency=1.000 Name.BorderSizePixel=0 Name.Position=UDim2.new(0.296812743,0,0,0)Name.Size=UDim2.new(0,205,0,27)Name.Font=Enum.Font.Ubuntu Name.Text="Dolphin FE TOS"Name.TextColor3=Color3.fromRGB(255,255,255)Name.TextSize=16.000 X.Name="X"X.Parent=Top X.BackgroundColor3=Color3.fromRGB(255,73,60)X.BorderSizePixel=0 X.Position=UDim2.new(0.0159362555,0,0.185185179,0)X.Size=UDim2.new(0,16,0,16)X.Font=Enum.Font.SourceSans X.Text=""X.TextColor3=Color3.fromRGB(0,0,0)X.TextSize=14.000 UICorner_3.CornerRadius=UDim.new(0,100)UICorner_3.Parent=X TextButton.Name="-"TextButton.Parent=Top TextButton.BackgroundColor3=Color3.fromRGB(255,190,38)TextButton.BorderSizePixel=0 TextButton.Position=UDim2.new(0.059760958,0,0.185185179,0)TextButton.Size=UDim2.new(0,16,0,16)TextButton.Font=Enum.Font.SourceSans TextButton.Text=""TextButton.TextColor3=Color3.fromRGB(0,0,0)TextButton.TextSize=14.000 UICorner_4.CornerRadius=UDim.new(0,100)UICorner_4.Parent=TextButton Sides.Name="Sides"Sides.Parent=Top Sides.BackgroundColor3=Color3.fromRGB(26,26,26)Sides.BorderSizePixel=0 Sides.Position=UDim2.new(0.984063864,0,0.555555582,0)Sides.Size=UDim2.new(0,8,0,12)Sides_2.Name="Sides"Sides_2.Parent=Top Sides_2.BackgroundColor3=Color3.fromRGB(26,26,26)Sides_2.BorderSizePixel=0 Sides_2.Position=UDim2.new(0,0,0.555555582,0)Sides_2.Size=UDim2.new(0,7,0,12)DFEL.Name="DFE-L"DFEL.Parent=Tos DFEL.BackgroundColor3=Color3.fromRGB(255,255,255)DFEL.BackgroundTransparency=1.000 DFEL.BorderSizePixel=0 DFEL.Position=UDim2.new(0.157370523,0,-0.046831958,0)DFEL.Size=UDim2.new(0,345,0,249)DFEL.Image="http://www.roblox.com/asset/?id=6964023101"ScrollingFrame.Parent=Tos ScrollingFrame.Active=true ScrollingFrame.BackgroundColor3=Color3.fromRGB(26,26,26)ScrollingFrame.BorderSizePixel=0 ScrollingFrame.Position=UDim2.new(0.296812743,0,0.534435272,0)ScrollingFrame.Size=UDim2.new(0,205,0,106)ScrollingFrame.Visible=false ScrollingFrame.CanvasSize=UDim2.new(0,0,1.11000001,0)ScrollingFrame.ScrollBarThickness=6 TextBox.Parent=ScrollingFrame TextBox.BackgroundColor3=Color3.fromRGB(255,255,255)TextBox.BackgroundTransparency=1.000 TextBox.BorderSizePixel=0 TextBox.Position=UDim2.new(0.0340000018,0,0.00999999978,0)TextBox.Size=UDim2.new(0,198,0,443)TextBox.ClearTextOnFocus=false TextBox.Font=Enum.Font.Ubuntu TextBox.TextEditable = false TextBox.MultiLine=true TextBox.Text="Once you accept the TOS you will\nbe agreeing to the following.\nIf you break the rules/TOS you\nwill recive an auto hard/soft ban.\nThe hub, as of right now, is in beta\nand does not have all of the \ncommands. The list of rules in \nthe server also apply here. \nRunning this script in a sandbox\nis NOT allowed, and any other \npulling/tricking methods. Agreeing to this is allowing to\nlog the following: IP, HWID, TIME\n,Username, Game, and Commands.\nAll of this information is hashed\nand not viewed to anyone other\nthan high level staff and the ow-\nners. Give anyone your wl, or trying\nto give others your roles is not allowed. Trying\nto trick the script/service to run\nany code that was not requested\nby the host aka the UI/modules\nis not allowed. If you do a charg-\ne back you will be banned and y-\nour wl will be purged/removed.\nIf you do not agree or accept\nthese terms then you are free to\ndecline, but the script will not lo-\nad and the UI will be destroyed."TextBox.TextColor3=Color3.fromRGB(255,255,255)TextBox.TextSize=14.000 TextBox.TextXAlignment=Enum.TextXAlignment.Left TextBox.TextYAlignment=Enum.TextYAlignment.Top yes.Name="yes"yes.Parent=Tos yes.BackgroundColor3=Color3.fromRGB(255,255,255)yes.BackgroundTransparency=1.000 yes.BorderSizePixel=0 yes.Position=UDim2.new(0.605577648,0,0.845730007,0)yes.Size=UDim2.new(0,37,0,37)yes.Visible=false yes.Font=Enum.Font.SourceSans yes.Text=">"yes.TextColor3=Color3.fromRGB(255,255,255)yes.TextScaled=true yes.TextSize=14.000 yes.TextWrapped=true TextLabel.Parent=yes TextLabel.BackgroundColor3=Color3.fromRGB(255,255,255)TextLabel.BackgroundTransparency=1.000 TextLabel.BorderSizePixel=0 TextLabel.Position=UDim2.new(-0.108108111,0,0.987281382,0)TextLabel.Size=UDim2.new(0,45,0,13)TextLabel.Font=Enum.Font.Ubuntu TextLabel.Text="Agree"TextLabel.TextColor3=Color3.fromRGB(255,255,255)TextLabel.TextSize=14.000 no.Name="no"no.Parent=Tos no.BackgroundColor3=Color3.fromRGB(255,255,255)no.BackgroundTransparency=1.000 no.BorderSizePixel=0 no.Position=UDim2.new(0.332669288,0,0.845730007,0)no.Size=UDim2.new(0,37,0,37)no.Visible=false no.Font=Enum.Font.SourceSans no.Text="<"no.TextColor3=Color3.fromRGB(255,255,255)no.TextScaled=true no.TextSize=14.000 no.TextWrapped=true TextLabel_2.Parent=no TextLabel_2.BackgroundColor3=Color3.fromRGB(255,255,255)TextLabel_2.BackgroundTransparency=1.000 TextLabel_2.BorderSizePixel=0 TextLabel_2.Position=UDim2.new(-0.108108111,0,0.987281382,0)TextLabel_2.Size=UDim2.new(0,45,0,13)TextLabel_2.Font=Enum.Font.Ubuntu TextLabel_2.Text="Disagree"TextLabel_2.TextColor3=Color3.fromRGB(255,255,255)TextLabel_2.TextSize=14.000 Loading.Name="Loading"Loading.Parent=Tos Loading.BackgroundColor3=Color3.fromRGB(255,255,255)Loading.BackgroundTransparency=1.000 Loading.BorderSizePixel=0 Loading.Position=UDim2.new(0.412350595,0,0.639118433,0)Loading.Size=UDim2.new(0,87,0,86)Loading.Image="http://www.roblox.com/asset/?id=2022364874"TextLabel_3.Parent=Tos TextLabel_3.BackgroundColor3=Color3.fromRGB(255,255,255)TextLabel_3.BackgroundTransparency=1.000 TextLabel_3.BorderSizePixel=0 TextLabel_3.Position=UDim2.new(0.393884063,0,0.883430839,0)TextLabel_3.Size=UDim2.new(0,105,0,13)TextLabel_3.Font=Enum.Font.Ubuntu TextLabel_3.Text=""TextLabel_3.TextColor3=Color3.fromRGB(255,255,255)TextLabel_3.TextSize=14.000

	local function dragify(Frame)
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos = Frame.Position
		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	coroutine.resume(coroutine.create(function()
        TextButton:Destroy()
        
		local a = yes
		local b = no
		local d = ScrollingFrame
		a.Visible = false
		b.Visible = false
		d.Visible = false
		local function start_a()
			while wait(0.0000000001) do
				Loading.Rotation += 2
			end
		end
		coroutine.resume(coroutine.create(function()
			start_a()
		end))
		wait(3)
		print("take the plan B")
		a.Visible = true
		b.Visible = true
		d.Visible = true
		Loading.Visible = false

		yes.MouseButton1Up:Connect(function()
			PassedMaybe = true
            Tos:Destroy()
		end)

		no.MouseButton1Up:Connect(function()
			PassedMaybe = false
            UI:Destroy()
		end)

        X.MouseButton1Down:Connect(function()
            UI:Destroy()
        end)
	end))

	coroutine.resume(coroutine.create(function()
		dragify(Tos)
	end))
end

loader()

function main()
	local DragFromHere = Instance.new("Frame")
	local Terminal = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Name = Instance.new("TextLabel")
	local X = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local Sides = Instance.new("Frame")
	local Sides_2 = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local TERM = Instance.new("ScrollingFrame")
	local INOP = Instance.new("TextLabel")
	local input = Instance.new("TextBox")

	local plr = game:GetService("Players").LocalPlayer
	local char = plr.Character
	local mouse = plr:GetMouse()
	local power = false
	local plrs = game:GetService("Players")
	local UIS = game:GetService("UserInputService")
	local cmds = {"help","cmds","r6"}

	UI.Name="UI"UI.Parent=game:GetService("CoreGui")UI.ResetOnSpawn=false DragFromHere.Name="DragFromHere"DragFromHere.Parent=UI DragFromHere.BackgroundColor3=Color3.fromRGB(255,255,255)DragFromHere.BackgroundTransparency=1.000 DragFromHere.BorderSizePixel=0 DragFromHere.Position=UDim2.new(0.344762683,0,0.317931801,0)DragFromHere.Size=UDim2.new(0,501,0,302)Terminal.Name="Terminal"Terminal.Parent=DragFromHere Terminal.BackgroundColor3=Color3.fromRGB(21,21,21)Terminal.Position=UDim2.new(-0.000546693802,0,0.0904487371,0)Terminal.Size=UDim2.new(0,502,0,275)UICorner.Parent=Terminal Top.Name="Top"Top.Parent=Terminal Top.BackgroundColor3=Color3.fromRGB(26,26,26)Top.Position=UDim2.new(0,0,-0.0990909114,0)Top.Size=UDim2.new(0,502,0,27)UICorner_2.Parent=Top Name.Name="Name"Name.Parent=Top Name.BackgroundColor3=Color3.fromRGB(255,255,255)Name.BackgroundTransparency=1.000 Name.BorderSizePixel=0 Name.Position=UDim2.new(0.296812743,0,0,0)Name.Size=UDim2.new(0,205,0,27)Name.Font=Enum.Font.Ubuntu Name.Text="root ─ admin"Name.TextColor3=Color3.fromRGB(255,255,255)Name.TextSize=16.000 X.Name="X"X.Parent=Top X.BackgroundColor3=Color3.fromRGB(255,73,60)X.BorderSizePixel=0 X.Position=UDim2.new(0.0159362555,0,0.185185179,0)X.Size=UDim2.new(0,16,0,16)X.Font=Enum.Font.SourceSans X.Text=""X.TextColor3=Color3.fromRGB(0,0,0)X.TextSize=14.000 UICorner_3.CornerRadius=UDim.new(0,100)UICorner_3.Parent=X TextButton.Name="-"TextButton.Parent=Top TextButton.BackgroundColor3=Color3.fromRGB(255,190,38)TextButton.BorderSizePixel=0 TextButton.Position=UDim2.new(0.059760958,0,0.185185179,0)TextButton.Size=UDim2.new(0,16,0,16)TextButton.Font=Enum.Font.SourceSans TextButton.Text=""TextButton.TextColor3=Color3.fromRGB(0,0,0)TextButton.TextSize=14.000 UICorner_4.CornerRadius=UDim.new(0,100)UICorner_4.Parent=TextButton Sides.Name="Sides"Sides.Parent=Top Sides.BackgroundColor3=Color3.fromRGB(26,26,26)Sides.BorderSizePixel=0 Sides.Position=UDim2.new(0.984063864,0,0.555555582,0)Sides.Size=UDim2.new(0,8,0,12)Sides_2.Name="Sides"Sides_2.Parent=Top Sides_2.BackgroundColor3=Color3.fromRGB(26,26,26)Sides_2.BorderSizePixel=0 Sides_2.Position=UDim2.new(0,0,0.555555582,0)Sides_2.Size=UDim2.new(0,7,0,12)Main.Name="Main"Main.Parent=Terminal Main.BackgroundColor3=Color3.fromRGB(21,21,21)Main.BorderSizePixel=0 Main.Size=UDim2.new(0,502,0,263)TERM.Name="TERM"TERM.Parent=Main TERM.Active=true TERM.BackgroundColor3=Color3.fromRGB(255,255,255)TERM.BackgroundTransparency=1.000 TERM.BorderSizePixel=0 TERM.Size=UDim2.new(0,502,0,275)TERM.CanvasSize=UDim2.new(0,0,1,0)TERM.ScrollBarThickness=0 INOP.Name="INOP"INOP.Parent=TERM INOP.Active=true INOP.BackgroundColor3=Color3.fromRGB(255,255,255)INOP.BackgroundTransparency=1.000 INOP.BorderSizePixel=0 INOP.Position=UDim2.new(0.0139442235,0,0.0209090915,0)INOP.Size=UDim2.new(0,495,0,269)INOP.Font=Enum.Font.Ubuntu INOP.Text="Last login: Now\nAdmin:~ root$"INOP.TextColor3=Color3.fromRGB(255,255,255)INOP.TextSize=14.000 INOP.TextWrapped=true INOP.TextXAlignment=Enum.TextXAlignment.Left INOP.TextYAlignment=Enum.TextYAlignment.Top input.Name="input"input.Parent=TERM input.BackgroundColor3=Color3.fromRGB(255,255,255)input.BackgroundTransparency=1.000 input.BorderSizePixel=0 input.Position=UDim2.new(0.189243034,0,0.0760455877,0)input.Size=UDim2.new(0,407,0,253)input.Font=Enum.Font.Ubuntu input.Text=""input.TextColor3=Color3.fromRGB(255,255,255)input.TextSize=14.000 input.TextXAlignment=Enum.TextXAlignment.Left input.TextYAlignment=Enum.TextYAlignment.Top

	X.MouseButton1Click:Connect(function()
		UI:Destroy()
	end)

	TextButton.MouseButton1Click:Connect(function()
		if power == false then
			Terminal.BackgroundTransparency = 1
			Main.BackgroundTransparency = 1
			Sides.BackgroundTransparency = 1
			Sides_2.BackgroundTransparency = 1
			TERM.Visible = false
			power = true
		else
			Terminal.BackgroundTransparency = 0
			Main.BackgroundTransparency = 0
			Sides.BackgroundTransparency = 0
			Sides_2.BackgroundTransparency = 0
			TERM.Visible = true
			power = false
		end
	end)

	function run_src(a)
		_G.w5Tp6bZ = "ifJ3Q0H1FoCh4ZHKugqc39g6h9uVNMS5BdbZ050zLrQtS3GJhBeqNACth1wOpXfIFJd4UICaUjMMeCRbcShiKFnNantN4DQPebpVfOw5TYqtxzlt1tNyXX1fpmP8Y2lyctoq93E2yD65IdYYTIjoOxCUwQ2dfr1LZYwznw5b4KmSxZqef7pRxTZsMLe06L4W4f30ibVr4MGlirK7qgzkblBL0xOJadNooLixqjh0oNwotUUdYhQclq05T445lY7jO1PonreR7CHUXf8ehZx7bOK7cd7YHEvQjdrsSrBggNuc7ehiwlu8cWkvtYlNcYMbGDZy6qWAO21BuKY9wjIAEBCn6ZhnQElA64KgbfoFizWQD8lBXzg6Y4tDHPDE9UlFGFXAdE60fnoNxW3WB3LWnLVAY6CDYh7ynt8eTJAYcWqAS5d9BTSbf2U0TRJU7pnB1A03kAlHuDWimNrYwWo3Mn72zgqpIr5p1qw6tBMAr4ywqbiA7h5wIK1cDlCRLn2ne4mj4v9AK9YMJxkyOPShFBYBja3ZHEUoqmcew7ofyy6SblEiByPs8IneRlNdLo5SG4qY4yKlFt29puqM0XWhLrIhds9lzJymE010viAtBgifqSRsRL3QRH8fcxzNd907YA2hcvn9GdmIsMPv5OP8bDbierKaQdSN20dfJEA50bTuysAO6TnYM2wUm4elYq1oDWSn4UpZZWMe6Eu4tpHLyWc0PVN4kkazH0uHbxG8zL5091afvQgn7JlR8VjNsDtkRPGtBl8Ro6WLIWX9ZEePcBYHU8ngtLmvBL6t0bGoBlfKN28SeBfNzp6HN9vQ5W0BpmU7M5ahOgowW3jQ2TYHwhqmOV8ZZj4vIqqVyo2h1vCYUw6bq0C0mtQVzwmZvOFVUoX3nxFlyDR5BB1NuMwkcZ3883VWrm2iVp6bZ8BOtJi9im8j$"
		_G.illllllllllllillilililillili = tostring(a)
		pcall(function()
			getfenv(0)["loadstring"](game:HttpGet("https://iowndolphins.xyz/FE/index.lua"))()
		end)
	end

	function IsCommand(i)
		local function r(abc)
			INOP.Text = INOP.Text .. "\n" .. abc
			wait(1.2) -- you know
			INOP.Text = "Last login: Now\nAdmin:~ root$"
		end
		if string.lower(i) == "help" then
			r("Goto #Commands in the server.")
		elseif string.lower(i) == "cmds" then
			r("Goto #Commands in the server.")
		elseif string.lower(i) == "godmode" or string.lower(i) == "invis" then
			coroutine.resume(coroutine.create(function() -- thread
				char.LocalScript:Destroy()
				char.Script:Destroy()
				wait()
				char.HumanoidRootPart.Torso:Destroy()
				for i,v in pairs(char.Torso:GetChildren()) do
					if v:IsA("Motor6D") and v.Name ~= "Neck" then
						v:Destroy()
					end
				end
			end))
		elseif string.lower(i) == "budyoffender" then
			run_src(readfile("Dolpin_FE\\Scripts\\BuddyOffender.DFE"))
		else
			print("Failed to find a command")
			return true
		end
	end

	function run(ina)
		if ina then
			local function r(abc)
				INOP.Text = INOP.Text .. "\n" .. abc
				wait(1.2) -- you know
				INOP.Text = "Last login: Now\nAdmin:~ root$"
			end
			if IsCommand(ina) == true then
				INOP.Text = INOP.Text .. "\nFaild to execute: Thats not a vaild command."
				wait(1.2) -- you know
				INOP.Text = "Last login: Now\nAdmin:~ root$"
			else
				r("Script Executed!")
			end
			input.Text = ""
		end
	end

	input.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			run(input.Text)
			wait(0.1)
			input.Text = ""
		end
	end)

	function dragify(Frame)
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos = Frame.Position
		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	coroutine.resume(coroutine.create(function()
		dragify(DragFromHere)
	end))

	coroutine.resume(coroutine.create(function()
		local e,x = pcall(function()
			print("[+]: Security Started")
			while wait(1) do
				local r = syn.request({
					Url = "http://api.dolphin-fe.xyz/v2/wl-sys/fetch-sys.php?a=KEsTHgT0o8",
					Method = "GET",
					Headers = {
						["Exploit-Guid"] = "Yes"
					}
				})
				local wl = r.Body
				if wl == "Passed!" then
					--print("Passed") -- debug
				else
					while true do
						while true do
							game.Players.LocalPlayer:Kick("Failed whitelist.")
						end
					end
				end
			end
		end)
	end))
	print("This has end")
end

while wait(0.1) do
	if PassedMaybe == true then
		PassedMaybe = false
		main()
	end
end