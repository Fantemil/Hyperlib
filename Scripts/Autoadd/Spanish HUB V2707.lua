-- Spanish hub

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SPANISH HUB - nescoroco", "DarkTheme")

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPTHUB

-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos

-- DISCORD: https://discord.gg/64pnKhQj

-- SCRIPTBLOX: https://scriptblox.com/profile

-- ROBLOX: https://www.roblox.com/users/2399670479/profile

-- Menu
local Main = Window:NewTab("Scripts Universales")
local MainSection = Main:NewSection("Scripts")

MainSection:NewButton("Caminar en las paredes", "Va a cambir la gravedad segun tu poscicion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)


MainSection:NewButton("Cambiar De Servidor", "Te va a unir automaticamente a un servidor aleatorio del juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gzdmr95u"))()
end)

-- CHOCLO ENORME DE SCRIPT ---------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("DELTA executor", "es un ejecutador como el que usaste para hacer funcionaer el Ñ HUB, solamente que si un script no te funciona, puedes probar hacerlo funcionar con este", function()
    local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

wait(1)
Notification:Notify(
    {Title = "Note", Description = "This executor is a joke, its a level 4 please understand :)"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

local ScreenGui = Instance.new("ScreenGui")
local Executor = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TopBar = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Down = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local EditorScroller = Instance.new("ScrollingFrame")
local Editor = Instance.new("TextBox")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ScriptTab = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Execute = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Clear = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Save = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Executor.Name = "Executor"
Executor.Parent = ScreenGui
Executor.BackgroundColor3 = Color3.fromRGB(12, 4, 20)
Executor.BackgroundTransparency = 0.120
Executor.BorderColor3 = Color3.fromRGB(27, 42, 53)
Executor.Position = UDim2.new(0.307999998, 0, 1.26199996, 0)
Executor.Size = UDim2.new(0, 481, 0, 287)

UICorner.Parent = Executor

TopBar.Name = "TopBar"
TopBar.Parent = Executor
TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BackgroundTransparency = 0.600
TopBar.Size = UDim2.new(0, 481, 0, 35)
TopBar.Font = Enum.Font.SourceSansItalic
TopBar.Text = "Delta"
TopBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TopBar.TextSize = 25.000

UICorner_2.Parent = TopBar

UIAspectRatioConstraint.Parent = TopBar
UIAspectRatioConstraint.AspectRatio = 13.743

Down.Name = "Down"
Down.Parent = Executor
Down.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Down.BackgroundTransparency = 0.700
Down.Position = UDim2.new(0, 0, 0, 281)
Down.Size = UDim2.new(0, 480, 0, 6)

UICorner_3.Parent = Down

UIAspectRatioConstraint_2.Parent = Down
UIAspectRatioConstraint_2.AspectRatio = 80.000

EditorScroller.Name = "EditorScroller"
EditorScroller.Parent = Executor
EditorScroller.Active = true
EditorScroller.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorScroller.BackgroundTransparency = 0.600
EditorScroller.BorderSizePixel = 0
EditorScroller.Position = UDim2.new(0, 9, 0, 47)
EditorScroller.Size = UDim2.new(0, 367, 0, 191)
EditorScroller.ScrollBarThickness = 5
EditorScroller.AutomaticCanvasSize = "XY"

Editor.Name = "Editor"
Editor.Parent = EditorScroller
Editor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Editor.BackgroundTransparency = 1.000
Editor.Size = UDim2.new(0, 366, 0, 191)
Editor.ClearTextOnFocus = false
Editor.Font = Enum.Font.SourceSans
Editor.MultiLine = true
Editor.Text = ""
Editor.TextColor3 = Color3.fromRGB(255, 255, 255)
Editor.TextSize = 20.000
Editor.TextXAlignment = Enum.TextXAlignment.Left
Editor.TextYAlignment = Enum.TextYAlignment.Top
Editor.AutomaticSize = "XY"

UIAspectRatioConstraint_3.Parent = Editor
UIAspectRatioConstraint_3.AspectRatio = 1.916

UIAspectRatioConstraint_4.Parent = EditorScroller
UIAspectRatioConstraint_4.AspectRatio = 1.921

ScriptTab.Name = "ScriptTab"
ScriptTab.Parent = Executor
ScriptTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BackgroundTransparency = 0.600
ScriptTab.Position = UDim2.new(0, 386, 0, 46)
ScriptTab.Size = UDim2.new(0, 84, 0, 192)

UICorner_4.Parent = ScriptTab

UIAspectRatioConstraint_5.Parent = ScriptTab
UIAspectRatioConstraint_5.AspectRatio = 0.438

Execute.Name = "Execute"
Execute.Parent = Executor
Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Execute.BackgroundTransparency = 0.600
Execute.Position = UDim2.new(0, 70, 0, 248)
Execute.Size = UDim2.new(0, 102, 0, 25)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 20.000

UICorner_5.Parent = Execute

UIAspectRatioConstraint_6.Parent = Execute
UIAspectRatioConstraint_6.AspectRatio = 4.080

Clear.Name = "Clear"
Clear.Parent = Executor
Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clear.BackgroundTransparency = 0.600
Clear.Position = UDim2.new(0, 182, 0, 248)
Clear.Size = UDim2.new(0, 102, 0, 25)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 20.000

UICorner_6.Parent = Clear

UIAspectRatioConstraint_7.Parent = Clear
UIAspectRatioConstraint_7.AspectRatio = 4.080

Save.Name = "Save"
Save.Parent = Executor
Save.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Save.BackgroundTransparency = 0.600
Save.Position = UDim2.new(0, 294, 0, 248)
Save.Size = UDim2.new(0, 102, 0, 25)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 20.000

UICorner_7.Parent = Save

UIAspectRatioConstraint_8.Parent = Save
UIAspectRatioConstraint_8.AspectRatio = 4.080

UIAspectRatioConstraint_9.Parent = Executor
UIAspectRatioConstraint_9.AspectRatio = 1.676

-- Scripts:

local function QDVHE_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local execute = script.Parent
	Editor = script.Parent.Parent.EditorScroller.Editor

	execute.MouseButton1Click:Connect(
		function()
			assert(loadstring(Editor.Text))()
		end
	)

end
coroutine.wrap(QDVHE_fake_script)()
local function MLYQ_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	Clear = script.Parent
	Clear.MouseButton1Click:Connect(function()
		script.Parent.Parent.EditorScroller.Editor.Text = ""
	end)
end
coroutine.wrap(MLYQ_fake_script)()
local function ORCKN_fake_script() -- Executor.LocalScript 
	local script = Instance.new('LocalScript', Executor)

	script.Parent.Active = true
	script.Parent.Draggable = true
	script.Parent.Parent.ResetOnSpawn = false
end
coroutine.wrap(ORCKN_fake_script)()
local function JPWI_fake_script() -- Executor.LocalScript 
	local script = Instance.new('LocalScript', Executor)

	script.Parent:TweenPosition(UDim2.new(0.308, 0,0.262, 0), "Out", "Quint",1,true)
end
coroutine.wrap(JPWI_fake_script)()
end)
-- FIN DEL CHOCLO ENORME DE SCRIPT ---------------------------------------------------------------------------------------------------------------------

MainSection:NewButton("Congelarte a ti mismo FE", "Se desplegara una pestaña la cual podras prender o apagar una opcion en la cual te congelas en la poscicion que la activaste", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SavaLava9/FEFreeze/main/FEFreeze.txt"))()
end)


MainSection:NewButton("Gigachad HUB", "Un hub como este pero gigachad xd", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Gigachad%20Hub%20V7.lua", true))()
end)

-- CHOCLO DE SCRIPTS 2 --------------------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("FPS gui", "Sobre tu cabeza aparecera la cantidad de FPS a la que te va (Probablemente te apareceran 60)", function()
    local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local colors = {
    Color3.fromRGB(255, 0, 0), 
    Color3.fromRGB(255, 165, 0), 
    Color3.fromRGB(255, 255, 0), 
    Color3.fromRGB(0, 128, 0), 
    Color3.fromRGB(0, 0, 255), 
    Color3.fromRGB(75, 0, 130), 
    Color3.fromRGB(238, 130, 238)
}
local colorIndex = 1

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local fpsLabel = Instance.new("BillboardGui")
fpsLabel.Parent = head
fpsLabel.Size = UDim2.new(0, 100, 0, 50)
fpsLabel.StudsOffset = Vector3.new(0, 2, 0)

local fpsTextLabel = Instance.new("TextLabel")
fpsTextLabel.Parent = fpsLabel
fpsTextLabel.Size = UDim2.new(1, 0, 1, 0)
fpsTextLabel.TextColor3 = Color3.new(1, 1, 1)
fpsTextLabel.BackgroundTransparency = 1
fpsTextLabel.TextScaled = true

local function formatFPS(fps)
    return string.format("%d FPS", math.floor(fps + 0.5))
end

local lastFrameTime = tick()
local frameCount = 0

RunService.RenderStepped:Connect(function()
    local currentTime = tick()
    frameCount += 1
    if currentTime - lastFrameTime >= 1 then
        local fps = frameCount / (currentTime - lastFrameTime)
        fpsTextLabel.Text = formatFPS(fps)
        frameCount = 0
        lastFrameTime = currentTime
    end
end)

UserInputService.InputBegan:Connect(function(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.F then
        fpsLabel.Enabled = not fpsLabel.Enabled
    end
end)

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

while true do
    fpsTextLabel.TextColor3 = colors[colorIndex]
    colorIndex = colorIndex % #colors + 1
    wait(0.10)
end

--open source
end)
-- FIN DEL CHOCLO DE SCRIPTS 2 --------------------------------------------------------------------------------------------------------------------------------

-- CHOQULITO DE SCRIPTS -----------------------------------------------------------------------------------------

-- CHOQULITO DE SCRIPTS V2 ------------------------------------------------------------------------------------
MainSection:NewButton("Ser inmortal", "No podras morir", function()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
   Name = "get haste'd",
   LoadingTitle = "Interface Loading...",
   LoadingSubtitle = "By haste",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "haste"
   },
   Discord = {
      Enabled = false,
      Invite = "CpjJEfZcRy", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Lake",
      Subtitle = "Key System",
      Note = "Key in discord(No Downloads/Linkvertise!)",
      FileName = "Lake - Key",
      SaveKey = false,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "https://pastebin.com/raw/jWQFi8kR"
   }
})


Rayfield:Notify({
   Title = "Script From noone",
   Content = "Thank you for using nobody script",
   Duration = 0.1,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "e",
         Callback = function()
         print("you sir are disabled")
      end
   },
},
})

local Tab = Window:CreateTab("Main", 4483362458)
local Button = Tab:CreateButton({
   Name = "Global Script - 1",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
   end,
})

local Tab2 = Window:CreateTab("Credits", 4483362458)
local Paragraph = Tab2:CreateParagraph({Title = "Youtube Channel", Content = ""})
local Paragraph = Tab2:CreateParagraph({Title = "Website", Content = ""})
local Paragraph = Tab2:CreateParagraph({Title = "Discord Server", Content = ""})
end)

-- FIN DE MINI CHOQULITO DE SCRIPTS ------------------------------------------------------------------------------------
MainSection:NewButton("AimBot - Punteria Automatica", "Al activar este script todos tus tiros iran directamente a la CABEZA DEL ENEMIGO", function()
    local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

_G.AimbotEnabled = true
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

_G.CircleSides = 64 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.7 -- Transparency of the circle.
_G.CircleRadius = 80 -- The radius of the circle / FOV.
_G.CircleFilled = false -- Determines whether or not the circle is filled.
_G.CircleVisible = true -- Determines whether or not the circle is visible.
_G.CircleThickness = 0 -- The thickness of the circle.

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
							
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness

    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)
end)
-- FIN DEL CHOQULITO DE SCRIPTS V2 ------------------------------------------------------------------------------------

MainSection:NewButton("NoClip - Atravesar las paredes", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/B5xRxTnk",true))()
end)
--CHOCLASO DE SCRIPT ---------------------------------------------------------------------------------------------

MainSection:NewButton("OP SCRIPT HUB", "Sera un HUB como este, solamente que con scripts OP", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Zxin's Hub", "BloodTheme")
 
-- MAIN
local Tab = Window:NewTab("Scripts")
local MainSection = Tab:NewSection("Scripts")
 
 
MainSection:NewButton("CMD-X", "Cool Features", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)
 
MainSection:NewButton("Nameless Admin", "Better Than Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
end)
 
MainSection:NewButton("FE BackFlip", "KeyBind Z And X" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zC9hckXK"))()
end)
 
MainSection:NewButton("Infinite Yield", "Basically Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
MainSection:NewToggle("Super-Human", "Go Fast and Jump High", function(state)
	if state then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
end)
 
MainSection:NewButton("FE Emote", "All Emotes Keybind Open Is Comma" , function()
	--keybind to open is comma
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua"))()
end)
 
MainSection:NewButton("Spider Man (R15)", "Walk on Walls" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
 
MainSection:NewButton("AutoPlayer Piano", "Works in all piano games!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Madness676/3.2Lol/main/AutoPiano3-2.lua", true))()
end)
 
MainSection:NewButton("Spider Man (R6)", "Walk on Walls With The Suit" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/2X0hKUgq'),true))()
end)
 
MainSection:NewButton("Keyboard", "Mobile Keyboard" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
 
MainSection:NewButton("R15 To R6 (FE)", "Change's animation" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
end)
 
MainSection:NewButton("Chat Bypass FE", "Press F to Toggle or Untoggle" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/AksvXnxV"))()
end)
 
MainSection:NewButton("Dex Explorer", "Access To The File" , function()
	loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)
 
MainSection:NewButton("Fps Unlocker", "Makes Your Game Faster" , function()
	setfpscap(999)
end)
 
MainSection:NewButton("SimpleSpy", "Has Remotes!" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/hUSH0zgt"))()
end)
 
MainSection:NewButton("Hydroxide", "Like RemoteSpy" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/SqfkEjyj"))()
end)
 
local Tab = Window:NewTab("Games")
local MainSection = Tab:NewSection("Games")
 
MainSection:NewButton("Bedwars Script", "Kill Aura and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)
 
MainSection:NewButton("MM2 Script", "Bring Gun and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Doggo-cryto/EclipseMM2/master/Script", true))()
end)
 
MainSection:NewButton("Da Hood Script", "Auto Kill and tons" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/mrhackerman35297/AgentCC/main/Launch.lua"))()
end)
 
MainSection:NewButton("Breaking Point", "Inf Credits" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/H4R7NHacks/Obfuscated/master/Breaking%20Point%20H4R7N%20Hack%20v1.2.lua"))()
end)
 
MainSection:NewButton("Piggy Script", "Teleport Items" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Piggy'),true))()
end)
MainSection:NewButton("Be A Parkour Ninja Script", "Tons of feature" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Min1273/n-to/main/README.md"))()
end)
 
MainSection:NewButton("Lucky Blocks Battlegrounds", "Alot of Lucky Blocks" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/stillnotgivingafuck/LuckyBlocks/main/loader.lua')))()
end)
 
MainSection:NewButton("Speed Run 4 All Stage", "Completes All Stages" , function()
	while true do
 
		local args = {
			[1] = "Level 1",
			[2] = "Normal",
			[3] = false
		}
 
		game:GetService("ReplicatedStorage"):WaitForChild("BeatLevel"):FireServer(unpack(args))
 
		wait(0)
	end
end)
 
MainSection:NewButton("Giant Survival!", "Inf cash and AutoKill" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0giant", true))()
end)
 
MainSection:NewButton("Destruction Simulator", "Inf Money And Boost" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
 
MainSection:NewButton("Hide and Seek Extreme", "Bring Coins" , function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Hide%20And%20Seek%20Extreme'))()
end)
 
MainSection:NewButton("Brookhaven RP", "Rainbow House And Etc" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
 
MainSection:NewButton("A Wolf Or Other", "Alot Of Feature" , function()
	loadstring(game:HttpGet("https://paste.ee/r/NuSeu", true))()
end)
 
MainSection:NewButton("DH Aimlock", "Basically Aimbot" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XQhuR8sG"))();
end)
 
MainSection:NewButton("IceBreaker Inf Coins", "Click On It For More Coins" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/E2ytQ48s"))();
end)
 
MainSection:NewButton("Tower Of Hell", "TP To The Top and More" , function()
	loadstring(game:HttpGet('https://pastebin.com/raw/BbVHjH56'))()
end)	
 
MainSection:NewButton("Break In (Story)", "AutoKill And Roles" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
 
MainSection:NewButton("Work At A Pizza Place", "Keybind TAB Open/Close" , function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/bb2f1182a224999682a2d1a87aa8517a/raw/66c7791224be0434b23938ca26244238649d0143/ameicaa", true))()
end)
 
MainSection:NewButton("Funky Friday", "AutoPlay Sick/Good/Ok/Bad" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)
 
MainSection:NewButton("Prison Life Admin", "Has ADMIN!!!" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)
 
MainSection:NewButton("Ultimate Lifting Simulator", "Inf Strength and More!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/YWqChWs9'),true))()
end)
 
MainSection:NewButton("Superhero Simulator", "Inf Coins!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/qmk5ek30'),true))()
end)
 
MainSection:NewButton("Viking Simulator", "Inf Coins and etcs!" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/91x0wWx8", true))()
end)
 
MainSection:NewButton("Adopt Me", "Auto Farm and More!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
 
MainSection:NewButton("Field Trip Z", "Auto Heal / Heal All" , function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
 
MainSection:NewButton("The Strongest Battlegrounds", "Auto Farm and More!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/saitama"))()
end)
 
MainSection:NewButton("The Strongest Battlegrounds (KEY)", "Best Script AutoFarm" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
end)
 
MainSection:NewButton("Bee Swarm Simulator", "Auto Farm and Auto Find!" , function()
	loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
end)
 
MainSection:NewButton("KAT", "Aimbot/Aimlock" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/NOWAY/main/darkyyware.lua"))()
end)
 
MainSection:NewButton("Arsenal", "Aimbot/Aimlock and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)
 
MainSection:NewButton("PLS DONATE", "Auto Beg!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/f0a3yune')))()
end)
 
MainSection:NewButton("Muscle Legends", "Autofarm and Etc" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends'),true))()
end)
 
MainSection:NewButton("Murders vs Sheriffs", "Kill all" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MurderersVsSheriffs.lua"))()loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MurderersVsSheriffs.lua"))()
end)
 
MainSection:NewButton("Zombie Attack", "Autofarm and More!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/f0a3yune')))()
end)
 
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
 
PlayerSection:NewSlider("Walkspeed", "Change's your speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
PlayerSection:NewSlider("Jumppower", "Make's you jump High", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
 
PlayerSection:NewButton("TP Tool", "Click to Teleport" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e"))();
end)
 
PlayerSection:NewButton("Noclip", "Walk threw Walls" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/KcZxW1Sp"))();
end)
 
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Discord: Zxin#9433")
local Section = Tab:NewSection("Youtube Channel: @Zxin69420")
 
Section:NewKeybind("Keybind", "Open/Close Menu", Enum.KeyCode.V, function()
	Library:ToggleUI(V)
end)
end)

-- FIN DEL CHOCLASO DE SCRIPT ----------------------------------------------------------------------------------
MainSection:NewButton("OrangeX Hub V5", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt"))()
end)


MainSection:NewButton("PSY HUB", "Un hub.. Poco trabajado -_-", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)


MainSection:NewButton("FE TELEPORT PLAYERS - Teletransportarse a alguien", "Al activarlo, una ventana se abrira y  ahi tendras las intruscciones de como usarla", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)
-- FIN DEL MAIN IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main2 = Window:NewTab("Univerales TOP")
local Main2Section = Main2:NewSection("Scripts TOP")


Main2Section:NewButton("ADMIN YIELDS", "¡Tendras comandos de Administrados!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


Main2Section:NewButton("Divine HUB", "Es un hub en el cual se utilizo el mismo estilo que el Ñ HUB, solo que es capaz de utilizarse en juegos mas variados", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealCrazyfuy/DivineHubCracked/main/DivineHubV1'))()
end)


Main2Section:NewButton("EZ HUB (+150 JUEGOS)", "¡El mismo nombre lo dice!, mas de 15 juego, es de los mejores hubs que eh visto y su interfaz esta muy bien trabajada, mis respetos al creador", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)
-- FIN DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main3 = Window:NewTab("Prision Life")
local Main3Section = Main3:NewSection("Scripts")


Main3Section:NewButton("Juanko Mods", "Hecho por mi pana", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main3Section:NewButton("Destruir los arboles", "Este script esta diseñado mas para PVP, haciendo que tu enemigo no se esconda detras de los arboles", function()
    -- Hi, this script was created more specifically for PVP, so your enemy isn't 
-- hiding behind trees.

game:GetService("Workspace").Trees:Destroy()
end)


Main3Section:NewButton("Tiger Admin", "¡EL MEJOR SCRIPT TIPO ADMIN ABUSE DE TODO PRISION LIFE!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)


Main3Section:NewButton("PrisonLife Hub", "Contiene muchos scripts para Prision Life", function()
    local s = loadstring(game:HttpGet(("https://raw.githubusercontent.com/kiko200000000/ME/main/README.MD"), true))()
print(s)
end)


Main3Section:NewButton("Prison Beaker V1.5", "Un script muy bueno, con interfaz rara.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ryt9hGz6"))()
end)


Main3Section:NewButton("PrisonWare (CON KEY)", "Un script bastante util, pero con key.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)


Main3Section:NewButton("Hacete el mas pija del server", "NO, a comparacion de lo que se dice, no es FE.", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)
-- FIN DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main4 = Window:NewTab("DestructionSim")
local Main4Section = Main4:NewSection("Inf Money")


Main4Section:NewButton("Inf Money V1", "Te dara cientos de miles o millones de monedas en SEGUNDOS", function()
    -- Enhanced by nescoroco, made by Miya_AtsumuXD

-- Original script: https://scriptblox.com/script/Destruction-Simulator-Inf-Money-GUI-6227

-- ─────▄█▀█▄──▄███▄────❤
-- ────▐█░██████████▌────
-- ─────██▒█████████─────
-- ──────▀████████▀──────
-- ─────────▀██▀─────────
 
if game.PlaceId == 2248408710 then
    local colors = {
        SchemeColor = Color3.fromRGB(0,256,254),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(253,256,254),
        ElementColor = Color3.fromRGB(19, 19, 19)
    }
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("💥 Destruction Simulator Script", colors)
    local Tab = Window:NewTab("Money")
    local Section = Tab:NewSection("Inf money")
    
    Section:NewSlider("Money", "Money", 999999999999999, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",s,9999999)
    end)
    
    Section:NewButton("SellBricks", "ButtonInfo", function()
        -- Script generated by Luguin
    
    game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
    
    end)
    end
end)


Main4Section:NewButton("Inf Money V2", "Te dara cientos de miles o millones de monedas en SEGUNDOS", function()
    -- Enhanced by nescoroco, made by Miya_AtsumuXD

-- Original script: https://scriptblox.com/script/Destruction-Simulator-Inf-Money-GUI-6227

-- ─────▄█▀█▄──▄███▄────❤
-- ────▐█░██████████▌────
-- ─────██▒█████████─────
-- ──────▀████████▀──────
-- ─────────▀██▀─────────
 
if game.PlaceId == 2248408710 then
    local colors = {
        SchemeColor = Color3.fromRGB(0,270,260),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(300,300,300),
        ElementColor = Color3.fromRGB(19, 19, 19)
    }
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("💥 Destruction Simulator Script", colors)
    local Tab = Window:NewTab("Money")
    local Section = Tab:NewSection("Inf money")
    
    Section:NewSlider("Money", "Money", 99999999999999999, 0, function(s) -- 5000 (MaxValue) | 0 (MinValue)
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",s,99999999999999999)
    end)
    
    Section:NewButton("SellBricks", "ButtonInfo", function()
        -- Script generated by Luguin
    
    game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
    
    end)
    end
end)
-- FIN DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main5 = Window:NewTab("Admin's Scripts")
local Main5Section = Main5:NewSection("Admins")


Main5Section:NewButton("IV Admin V3", "Un admin que se utiliza por chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("CMD-X", "Se abrira un panel para poner comandos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)


Main5Section:NewButton("Fate's admin", "Este script admin tambien es mediante chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)


Main5Section:NewButton("Leg's Admin V2", "Un admin que se utiliza por chat (Tambien)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)