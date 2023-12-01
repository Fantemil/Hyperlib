-- Hub hecho por Nesoroco (Este HUB tiene EXACTAMENTE 2086 renglones, asi que porfavor denle like en la pagina de scriptblox y siguanme)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("_🟩🇨🇴⬛🇲🇽⬛🟩🇵🇪⬛🐍SPANISH HUB'S V4 2.0🐍⬛🇪🇸🟩🇻🇪⬛🇦🇷⬛🟩_", "BloodTheme")

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB

-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos

-- DISCORD: https://discord.gg/shFngMs5

-- SCRIPTBLOX: https://scriptblox.com/profile

-- ROBLOX: https://www.roblox.com/users/2399670479/profile

-- Menu
local Main = Window:NewTab("🌌Scripts Universales📄")
local MainSection = Main:NewSection("SPANISH HUB'S V4 2.0")

MainSection:NewButton("💡Tema luminoso💡", "Light theme", function()
    -- Spanish hub
-- quisiera decir que este script
-- eN principio lo queria llamar "Ñ HUB"
-- pero por alguna extraña razon
-- al intentar escribir "Ñ" en el titulo del HUB,
-- era imposible hacerlo, pero
-- cuando intentntaba ponerlo en la descripcion,
-- si me era posible XD


-- Hub hecho por Nesoroco (Este HUB tiene EXACTAMENTE 2086 renglones, asi que porfavor denle like en la pagina de scriptblox y siguanme)



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("_🟩🇨🇴⬛🇲🇽⬛🟩🇵🇪⬛🐍SPANISH HUB - nescoroco🐍⬛🇪🇸🟩🇻🇪⬛🇦🇷⬛🟩_", "LightTheme")

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB

-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos

-- DISCORD: https://discord.gg/ZRTkSVRp

-- SCRIPTBLOX: https://scriptblox.com/profile

-- ROBLOX: https://www.roblox.com/users/2399670479/profile

-- Menu
local Main = Window:NewTab("🌌Scripts Universales📄")
local MainSection = Main:NewSection("Universal's comunes")

MainSection:NewButton("🐍Caminar en las paredes🐍", "Va a cambir la gravedad segun tu poscicion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)


MainSection:NewButton("🐍Project validus v2🐍", "Aimbot bien insano wazaaa 👻", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Project-Validus-v2/main/Main.lua"))()
end)


MainSection:NewButton("🐍Cambiar De Servidor🐍", "Te va a unir automaticamente a un servidor aleatorio del juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gzdmr95u"))()
end)

-- CHOCLO ENORME DE SCRIPT ---------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍DELTA executor🐍", "es un ejecutador como el que usaste para hacer funcionaer el Ñ HUB, solamente que si un script no te funciona, puedes probar hacerlo funcionar con este", function()
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

MainSection:NewButton("🐍Congelarte a ti mismo FE🐍", "Se desplegara una pestaña la cual podras prender o apagar una opcion en la cual te congelas en la poscicion que la activaste", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SavaLava9/FEFreeze/main/FEFreeze.txt"))()
end)


MainSection:NewButton("🐍Gigachad HUB🐍", "Un hub como este pero gigachad xd", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Gigachad%20Hub%20V7.lua", true))()
end)

-- CHOCLO DE SCRIPTS 2 --------------------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍FPS gui🐍", "Sobre tu cabeza aparecera la cantidad de FPS a la que te va (Probablemente te apareceran 60)", function()
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
MainSection:NewButton("🐍Ser inmortal🐍", "No podras morir", function()
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
MainSection:NewButton("🐍AimBot - Punteria Automatica🐍", "Al activar este script todos tus tiros iran directamente a la CABEZA DEL ENEMIGO", function()
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

MainSection:NewButton("🐍NoClip - Atravesar las paredes🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
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
MainSection:NewButton("🐍OrangeX Hub V5🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt"))()
end)


MainSection:NewButton("🐍PSY HUB🐍", "Un hub.. Poco trabajado -_-", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)


MainSection:NewButton("🐍FE TELEPORT PLAYERS - Teletransportarse a alguien🐍", "Al activarlo, una ventana se abrira y  ahi tendras las intruscciones de como usarla", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)

local MainSection = Main:NewSection("Los mejores Universal Scripts")

MainSection:NewButton("🐍ADMIN YIELDS🐍", "¡Tendras comandos de Administrados!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


MainSection:NewButton("🐍Divine HUB🐍", "Es un hub en el cual se utilizo el mismo estilo que el Ñ HUB, solo que es capaz de utilizarse en juegos mas variados", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealCrazyfuy/DivineHubCracked/main/DivineHubV1'))()
end)


MainSection:NewButton("🐍EZ HUB (+150 JUEGOS)🐍", "¡El mismo nombre lo dice!, mas de 15 juego, es de los mejores hubs que eh visto y su interfaz esta muy bien trabajada, mis respetos al creador", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)
-- FIN DEL MAIN IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
--Aca habia un Main 2                      3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Al cual saque por que era inecesario,    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Podras ver cual era en las versiones     3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--1 y 2 del Spanish Hub                    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
-- FIN DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main3 = Window:NewTab("💰Prision Life👮")
local Main3Section = Main3:NewSection("Scripts")


Main3Section:NewButton("🐍Juanko Mods🐍", "Hecho por mi pana", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main3Section:NewButton("🐍Destruir los arboles🐍", "Este script esta diseñado mas para PVP, haciendo que tu enemigo no se esconda detras de los arboles", function()
    -- Hi, this script was created more specifically for PVP, so your enemy isn't 
-- hiding behind trees.

game:GetService("Workspace").Trees:Destroy()
end)


Main3Section:NewButton("🐍Tiger Admin🐍", "¡EL MEJOR SCRIPT TIPO ADMIN ABUSE DE TODO PRISION LIFE!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)


Main3Section:NewButton("🐍PrisonLife Hub🐍", "Contiene muchos scripts para Prision Life", function()
    local s = loadstring(game:HttpGet(("https://raw.githubusercontent.com/kiko200000000/ME/main/README.MD"), true))()
print(s)
end)


Main3Section:NewButton("🐍Prison Beaker V1.5🐍", "Un script muy bueno, con interfaz rara.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ryt9hGz6"))()
end)


Main3Section:NewButton("🐍Hacete el mas pija del server🐍", "NO, a comparacion de lo que se dice, no es FE.", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)


Main3Section:NewButton("🐍Valkyrie Script🐍", "Un universal script muy bueno en prision life", function()
    ected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'


,nil,nil;(function() _msec=(function(e,o,n)local K=o[(-#'howtodumpscript'+(((0x4b57-9682)+-#"impulse was here omg")/0xd5))];local G=n[e[(0x55b-703)]][e[((175143/0xed)+-#'null')]];local i=(-#'good googly moogly'+(129+-0x6b))/((-#"yiff"+(25530/((351+-0x77)+-#"IP grabbed")))-109)local r=((0xa2-(((0x60d6/74)-0xda)+-#'Bwomp'))+-#'never gonna give you up never gonna let you down')-(228/0xe4)local v=n[e[((-66+0x14b)+-73)]][e[((-0x40+363)+-#'me when they are is have the me when are is do me when')]];local P=(((-0x16+(0x8dae/186))-0x8f)+-#'Fucking losed 027728272728271')+(-#[[Me be like at 5am in the morning]]+(4828/0x8e))local U=n[e[((107748+-#{",";{};'nil',{}})/208)]][e[(-#'i love minors'+(-103+0x3f4))]]local _=(76-0x4a)-(0x43/(5628/(0x11f-203)))local F=(-#"nico der hurensohn"+((-#'Reduce meme string slowmode when plsplspls'+(((-#"imagine not being able to talk"+(-0xa0+70))+0x2466)/63))-82))local B=(676/(((0x95be-(0x4b89+-123))+-23)/113))local j=(-58+(-#{",";{};{};{};1;'}',103}+69))local C=((5200/((468-0xf6)-0x7a))-48)local p=((((0x105d+(-12772/0x7c))/18)+-#'panzerfaust')/0x36)local m=(456/(-#'ur mom is hot'+((((0x2c-68)+-#[[penis]])+-0x42)+0xde)))local c=(-#'niggers'+((-#[[dies of cringe]]+((-0x930/(-#{(function()return{','}end)();178,","}+87))-33))+85))local u=(44+(-#[[sussy chat sussy sussy]]+(((((10704/0x30)+-#'anime is for fags')+-109)+-#[[give me moonsex v4 or i will attach a car battery to your testicles]])-49)))local g=(6+-#{'}';(function()return#{('OMhmMO'):find("\104")}>0 and 1 or 0 end);'nil'})local b=(0x23+((((201+-0x3b)+-#[[this is an ip grabber]])-0x66)-0x33))local O=((56+-#{'}';'nil';{};",",194,27})-0x2f)local t=((45+-#{{},(function()return{','}end)();84;84})+-0x26)local w=(6+-#{1,{},",";91})local k=(0xda/((348+-#{1,36,(function()return{','}end)(),",";(function()return#{('BhffMF'):find("\102")}>0 and 1 or 0 end);36;'nil'})-0xe8))local s=(0x1d0/((0x422-(565+-#{71,",";47,47}))-265))local f=(((-0x168/(0x8e-122))+0xc2)/88)local x=(-#{'}';{},79}+5)local h=(((-#[[warboy hates you]]+(-33+(-#{(function()return#{('FOBmBL'):find("\66")}>0 and 1 or 0 end),1,(function()return{','}end)();'nil','nil';'nil','}'}+1253)))/171)+-#[[sussy]])local Y=e[(2700-0x569)];local R=n[e[(0x7ec0/169)]][e[(479+-#{28;14,{};28})]];local L=n[(function(e)return type(e):sub(1,1)..'\101\116'end)('*,^&#&/&')..'\109\101'..('\116\97'or'$&!^.=$!')..e[((-16+0x23c)+-#[[i dont fucking care if its your own ui]])]];local A=n[e[((1217-0x27d)+-#[[I like watching videos of black men shaking their booty cheeks]])]][e[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]];local D=(0xa4/82)-(0x79-((-0x389a/210)+188))local N=(((((34060/0xa)/0x1a)+-#"Impulse real 2022")-90)+-#"I watch gay furry porn")-((0xccd/113)+-#[[goofy ahh uncle productions]])local H=n[e[(39168/0xcc)]][e[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]];local o=function(o,e)return o..e end local S=(9+-#{'}','nil',{},1;'}'})*(97+((-188+0x20)+63))local J=n[e[(2397-0x4df)]];local a=(0x6/3)*(((0x30fc3e-1605182)/0xbe)/66)local I=(2154-0x46a)*(0x71-((0x16c-(0x20a-(0x184+-103)))+-#[[pairu sucks dick]]))local V=(((0x141810/155)+-72)/162)local M=(-#'monkey mode'+((-#'Impulse real 2022'+(208-(-0x2f+173)))-0x34))*(0x28+-38)local y=n[e[(-#[[zxcvbnm]]+(0x855-1115))]]or n[e[((((1166+-0x14)+-#'0nly was here mf')-582)+-#"Mulheres me deixam de pau duro")]][e[(-#[[zxcvbnm]]+(0x855-1115))]];local d=((-#"testpsx dupe no scam legit 2022 free no virus"+(0xb-(0x2ec/44)))+0x133)local e=n[e[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]];local z=(function(d)local a,n=1,0x10 local o={j={},v={}}local l=-_ local e=n+r while true do o[d:sub(e,(function()e=a+e return e-r end)())]=(function()l=l+_ return l end)()if l==(S-_)then l=""n=D break end end local l=#d while e<l+r do o.v[n]=d:sub(e,(function()e=a+e return e-r end)())n=n+_ if n%i==D then n=N A(o.j,(H((o[o.v[N]]*S)+o[o.v[_]])))end end return U(o.j)end)("..:::MoonSec::..!*%&/+^,;.:_#$}=.=^+%,}_:=,^&,=__=;&/=!_#=.&+.*=$=:&^,;}+,*/}..$!&#&;,/_,*/#!_#!%!}&:,^_%==&_,^_,}&/#,;_/=*&$,._#=^&:._*^=&&=,%}=&_+,!&.=^*+*,$_.=^&+.=,:=,&&,/%!:}$.#;!*/=_:^.*++*:$__$=%_&,,&_,%&;}.^$!=$&.,^$&&}&::^_&^=&_,,_&=&*#,;}/=*^$,.#+=%.*.:_,%&&=#__;!/&!;#_.&^!*,$_.=^;%,}#:=,,//=__=;&/=!_$!.&^.%=$=:^^,&%}=_&,,&_%$#&;:/_*%$&.;+_*==;:,^}%==+_,,_&=*+=:;_+%*&$:._+=%&=.=*^=&,=,#*,=/&!,$$;=+&*#$_:%^&%,}_:=,&&,!*_=;&/,!_#=:++,*_}^:&^:%_}=_&,_&_==#;;,^.!=$/.,+_++}&_!^_&&=&_,,_+**=#,.+/=*;$,._+=/&},:_,.&&!*__;!/&%,#_;=+}*,$_.=^_%,}_:=,&//=_#,;&/,!_#=.&+,%.$=:_^,%_}=_&,,&_!:#&.+/_**$&_,+_*=}}:,,^%==+_,,_&=!&$%;_+**&$.._+=%&},_^^=&}=,_},=^&!,#_.:+&%%$_:&^&%,}_:=,$&,=$_=;+/,!_#=.&+_*_};:&,*%_}=_&,,//==#^;,/$!==&.,+_%%}&_!^_&&=&__.=&=!;#,../=*/$,:$,&%&}#:_,^&&=,__,=;^!,$!;=+/*,$=.=^&&#}__&,&&.=__=;&/,+##=.&+,*#$=:&^,%$=!_&,,&_==#&;,/_!=$&.,+_*=}::,^_%==&#!,_&=!&#;;_/=*&$,._+=%&},:_^=&&=,__,=/&!,#_;=+&*,$_.=^&%,}_:=,^&,=__=;&/,!_#=.&+,*_$=:&^,%_}=_&,,&$==#&;,/_!=$&.,+_%!}&:,^_&*=&_,,_!*!;#,;_/=;&&:=##_;=,;:_^=&&=,__,=/&!,}.;=+&*,}$$%^&%.}__*,&&,=_$*_^/,!}#=.++,*_$=_+,_%_=&_&,;&_==#&;$,:!=$;.,+_*=}/:,^=%==&=/,_&=!&#.;_/=*&$,$;+=%&},:_^=&&=,___#/&!,#_.%+&*,$_.=:!%,}_:=,/&,=__=;&/.!_$&.&+.*_}!:&^$^#}=_&,,/,==#/;,/#!=$,:/+_*=}&_&^_&!=&__;;&=!&#,:+/=*/$,:*,}%&},:_;.&&=;__;!/&!_$;;=+&*,=+.=^/%,=*#},&&;=_$.;&/;!_#=.&+_%;$=:&^,/+}=_/,,&_!&#&;_/_**$&.:+_*=},:,,!%==^_,,$&=!.!;;_+&*&}#._^!%&}#:_,&/!=,__,=+;!,##;=+,%/$_.=^&/*}__!,&&,==_=;,/,!$#=.^+,*_}&:&^#%_=%_&,.&_!+}%;,/=!=}$.,+#*=};:,^=&#=&_,,_+.!&#;;_+&%!$,._+=&}},:#^=&&%#__;&/&!,#_;=+&*,*/.=^,%,}#:=,&&,=_$/;&/_!_$*.&+,*_$==/^,%_}=_/,,&_==%=;,/_!=.+.=+_*=}&*!$$,#^^%!_}:;+;%..&/=*&$,}&$&.,+,=_$}:^^_*$;%/&!,#_=$_;;}.$_%^&%,}_!%};.:+}%/=^_:,*//==#&./==!=$^.%+^*;$_#$!&#&;,/_,^&/!/#!}*},:,^_%=&_*#$#:&&+$*;_/=*&%*!}#}.*%_*!$%:%+_%!}*+*!,#_;=:*,#+%*&$%.++}*}$.:_/+*%$%.+=$$,.&+,*_%,*,$_._&=%%}::=!*#,;,/_!=*_=#_#;&:+_!^_%==&*}$#:#^;&:=!_$;^&#;$^.%&},:__^.;^_!}}/_+,$&/=%_;/.$=.=^&%,+_*!}+:__$$/;&/,!_&&=##:,}/}*+#_+.+^*::^:%+!!;#=,$;/%$!=_!;:*+:}^_%==&*$}$:},!*.$%.*,+$=._+=%&/.*/}&^*+.&&}}_+#.$*;=+&*,*#!#$%.#+.%&,+&_=__=;&:}^#&#=;}.%/$=:&^,:%+}%+}%:}^=%/}:_!!*$$.,+_*=%.*!$$.//^*#}$_+^;&.;$+:*&$,._:_.%/:!#$_;&^&*#=;:;,.#$.^+&*,$_=+#;;:+=*}}+^:}$#;;&/,!_*%=__;;$/!!^$_.!^*/+,}&_==#&}__/;%&^!^#$;&}+_*^_%==&!:=!_*^.%;}}_/+:/#!/.*%#},:_^=;:+;%,}:_^,,&!=/_,*.}!.=^&%,&}*%}%:.^!#*;:/,!_#=};#:;!+*}##_^+;*_,,,&_==!^};_},,!+:&+_*=}&};#=.&&;%=}=_*^/!:}##%,_$.:!+=%&},}}$,.;^:%=;*^*!,#_;=_/;+=_!;#,.!+:%&.&:#^}%/},^,,=&,=;,,;*+*!;##/_^+*;}.:}^;&%=+!$%!$&.,+_,*/;*,$,.;+^*;}=:/^,*:==_};+&;!%#/}+}$:_^=&&^:%&}!:,,^/%%*+$*,$_.=::;#+=!%$;:.,*%;}^:#&$$:.&+,*_%_*%#:;#+_!&}&.#,;%;=.!$*:$&.,+_^_/;!;#=./^+*.}::!,+%_*$+_*&$,.__&.++!*%$^.;^.!!=+:;,+&==*+;*,$_.=_;^_+/*#:+^.!+_=;&/,,,&}=/__;}+&*+$!..+^:+,=&_==#&#._:,&/#$}$/.*+%$.,/%==&_,$%:},+&%=}_=,/&:!!=*&%},:_^=,/+_*=#/_.^#&.!&._,;/.!&#=;#+$:*,;&,=__=$+_!,%&,!,;.%+$=:&^,;:/}%^$#.},/&+}#_!;!!+:%+_*=}&}:$/:&+#&*}!:$,^%==/_=*+$$._+=%&&,*,$!:#+#%$}*/_!,#_;=.^,;/,!_#+;;/}*:,+/%=__=;&;;^=&#=##+^$//*!$^.=+/*+,}&_==#&#:_/;&&#**#!;$$+::^_%==&=}}!_&&+$!;_/=*&/}!!#*;_+^*:$:,#&__$;^/&!,#_$,#,;_/_}^#;._$$_;,&&,=_!*=%:_;/*+!%#.,}//!+,&%_}=_&#!:.,+&%=%_!^%&;!.$*;/++&.^=%==&_,#&:/^/%_*$+**&$,._#}.^:._+^=&&=,!+$%.%++*!=$_^;^&=!/%+%}}_:=,&,:^:&*};;};!&;=+^+*_$=:&#};#+#*;}::!^$&^}#,:,,/,!_#_}*}::,^_%=/&%&$#_;^;&.=}+**}$,._+=^_+_*=$=;^+#%$=+:#^:&!+*^_*,$_.=$&;;+}%&$;..^/%$_*::,:&##%#.,#+^$%$#,^%%}:_$:+//;+.!/_!=$&!}_#;_/}*:$_./+;*_,$//!&#,;_.%,=/^*%#$_+}#:_^=&&//%:}$:;;!#$.%+&*,$_}_#;;},$_#,&&,=_%!=&_!&:/^=;_.;&/}*%$%.}*}_+;!&_==#&$/:#,^/*!!#=.//,!#+$&^=&_,,_;=^=%;}}_/+#&_%$^^%&},:_$,:,^_%__.,%&^#$..+&*,$_}:##;:+^==$=.;,/%/=+$.!=#=.&+,^,//!.$_+$=/_&,,&_+/&^}#_$/.#+$,+_*=}&!=$=:&^&%:_+^}&%&.}##^/*&}!/$&;_+#!$}/:^+#%$}%_%,+&==/#*;_!.!%$%./*:!%}%:/^!!/=___,$&!$^_=;//=*^.^.**}%!$;:/^$=%}$_$,/&;#+#,.///..,&%==&_,_$:}^,/!$%#;;+/^%$^&%&},:_$^./^/%!;*/_!,#_;=:&;&&#!%#;,!/=}.$+^$=__=;&:=,=/&!&#:++!}$%#=.:+}*}}:^.,.%/=,_/,//+#+_};}+!$^$&.}^%%%}}^}^^%;==_%,_!^##.*+_*}}*:,^#%=}:}*::,^&}!!#$;+!:.*^;%,}_:=__:^^.%/=#/.*%#=.&+,^&+&*,$,,%+/%,&.&}==#&;,.!^%%&;.^_*=}&:,_&:/^!*;}.:}^#%_$$_};%/_}_#!.++_$$,.&&=,__};_^,&%}=_#%;:+!**#;+.=/:=,&&,+}%,}/_.^#&%!,_#;$$*:}^,%_}=*^$=:!^%%}}::#,_&==##$**}/:,^_%=+%:.;&&=!&#,$}_%;+&#!.:^.;+!$$,,&&=,__#;_*,:&==!#*,:/!.*^,%,}_:=},:!^;%//++^!_#=.&__;}/+#&$!.}!=*_$;:$^#%=}#_};%#+:&+_*=}&}}_^../;%##!:,+%&$!*#^;,#.:*+=%&},=$$/:!^^%=}//+!=#_;=+&^:/!*&_^;:+:%*$;#.!^_=;&/,,,&/=/__;!+**^$_;#^&%^&./!==#&;,.*,}/+=:#!;*}_:,^_%=&_%#};:!,*&^=/_&!+$_._+=%&&,!#}*:,}.#/,=/&!,!$=}_,.!%*!}$+;:+!/*,,&,=__=$*:;,;&/.++:*_$=:&:;,_&;/+;_&_==#&$:_!;&%&!.#/;#//*.}/,=+/%.}=;%/.&.}#_#,;!.:*+=%&},%&$=.^+;%,}_/+*!#_;=+&^,/,!!$#;#+$=^};:!_$#+;&/,!_%/!^_#;$%;!,+.&*}=_&,,;;^}&*=%_!;;^+._+_*=}&=*$}.}^*,.,}&=!&#,}#_=,#!_._+=%&}.}&^=&&=,_#,=/&!,$$;=+&*,$_##^&%,}_:=,&&,=__=;&/,!_#=.&+,*_}!:&^,%_}=_&;.&_==#/;,:,!=$&.,^$*=}&:;^_;^=&_,,_^+!&#,;#/=*#$,.#+=&*},:=,#&&=,__;;/&!;#_;=:/*,$_.=^/%,}_:=,+^==_#!;&/,!_#=.&^.&%$=:/^,%#}=_&,,/$==#&;;/_&,$&.,+_&*}&:,^$%==;_,,_&=%&#,;_+**&$..__!%&=.:_^=&,=,!^,=/&!,#_;=+&*.$_:&^&%,}_:=,&&,=#_=;&/,!$#=.&+,*_}!:&^;%_=!_&;.&_==#/;,.:!=$&.,^$*=}&:.^_&/=&_,,_+=%=#,;$/=*+$,$;+=/&*,:_,*&&=.__.//&%,#_;=++*,$$.=#,%,=$:=,&&:=_#/;&/,!_}=.&+,*}$=:^^,^;}=$&,,&_!%#&;:/_%/$&_,+_*=}^:,^}%=+#_,;$&=!&#_;_+/*&$,._,=%&},:=^=&,=,!*,=/&!,#_./+&*=$_.=^&&.}_:=,.&,*__=;&/,*$!%.&+}*_%.:&^,%_}=$$,,/&==#+;,/_!=}+.,+_%;}&#&^_%==&_,,_&=!$#,;}/=*&$,:$+=%&=%:__$&&=,__,=/&!,$,;=+,*,$_.=,+%,}__#,&&_=__=;&/,!_#=.;+,%;$=:/^,&$!&_&,$&_!/#&;,/_%=!:.,^**=}.:,;}%=!+_,,_/,!&!+;_/=*&$,._+=%.},_&^=&+=,$_,=/&!$#_.++&+*$_.=^&%,=&:=,;&,=__=;&/,!_$+.&+=*_}*:&,.%_}=_:,,/!==#&;,^_!=$&.}+_%^}&_!^_%==&_,;/&=!/#,;_/=*&$,._^.%&}$:_^=&&=,$&,=/:!,$+;=+/*,$_=!^&%,}__!,&&,=_");local U=(0xce-146)local n=97 local l=_;local e={}e={[((131-0x65)+-#[[use luraph if want lost money]])]=function()local o,_,r,e=v(z,l,l+P);l=l+M;n=(n+(U*M))%d;return(((e+n-(U)+a*(M*i))%a)*((i*I)^i))+(((r+n-(U*i)+a*(i^P))%d)*(a*d))+(((_+n-(U*P)+I)%d)*a)+((o+n-(U*M)+I)%d);end,[((0x51/9)+-#'nigglet')]=function(e,e,e)local e=v(z,l,l);l=l+r;n=(n+(U))%d;return((e+n-(U)+I)%a);end,[(-0x6f+114)]=function()local e,o=v(z,l,l+i);n=(n+(U*i))%d;l=l+i;return(((o+n-(U)+a*(i*M))%a)*d)+((e+n-(U*i)+d*(i^P))%a);end,[(704/0xb0)]=function(o,e,n)if n then local e=(o/i^(e-_))%i^((n-r)-(e-_)+r);return e-e%_;else local e=i^(e-r);return(o%(e+e)>=e)and _ or N;end;end,[((173-0x8a)+-#'Nicuse is good at sucking dick')]=function()local o=e[(155/0x9b)]();local l=e[(-0x20+33)]();local x=_;local n=(e[(0x18+-20)](l,r,S+M)*(i^(S*i)))+o;local o=e[((62-0x35)+-#[[ballz]])](l,21,31);local e=((-_)^e[(192/(-72+0x78))](l,32));if(o==N)then if(n==D)then return e*N;else o=r;x=D;end;elseif(o==(a*(i^P))-r)then return(n==N)and(e*(r/D))or(e*(N/D));end;return G(e,o-((d*(M))-_))*(x+(n/(i^V)));end,[(-50+0x38)]=function(o,i,i)local i;if(not o)then o=e[(28-(-#"heil eco mother fuckers"+(0x1a90/136)))]();if(o==N)then return'';end;end;i=R(z,l,l+o-_);l=l+o;local e=''for o=r,#i do e=Y(e,H((v(R(i,o,o))+n)%d))n=(n+U)%a end return e;end}local function I(...)return{...},J('#',...)end local function R()local b={};local l={};local o={};local h={b,l,nil,o};local n={}local s=(10+-#{(function()return{','}end)(),",",(function()return{','}end)(),{};1})local d={[(-#[[nate higger nuck figgers and nill kiggers]]+(0x7f-83))]=(function(o)return not(#o==e[((0xfc-157)+-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]])]())end),[(0x1c/28)]=(function(o)return e[(0x42-61)]()end),[((-0x52+134)+-#'da hood money generator 2022 working free no virus')]=(function(o)return e[(0x3f6/169)]()end),[(264/0x42)]=(function(o)local l=e[(-#[[impulse is hot]]+(4240/0xd4))]()local e=''local o=1 for n=1,#l do o=(o+s)%d e=Y(e,H((v(l:sub(n,n))+o)%a))end return e end)};h[3]=e[(122+-0x78)]();for e=r,e[(0x24+(-6370/0xb6))]()do l[e-r]=R();end;local o=e[((12993/0xb7)+-#"pussy day pussy clean pussy fresh pussy pretty pussy fat full of fresh")]()for o=1,o do local e=e[((112-0x5e)+-#'pairu sucks dick')]();local l;local e=d[e%((((37074/0xde)+-#'ambattakam')+-0x62)+-#'monkey mode')];n[o]=e and e({});end;for h=1,e[((143-0x62)+-#[[MoonsecV2 deobfuscator 2020 free 100 percent]])]()do local o=e[(-60+0x3e)]();if(e[(132/(-0x4a+107))](o,_,r)==D)then local a=e[(464/(-#'impulse reel pastebin'+(32606/0xee)))](o,i,P);local l=e[(113-0x6d)](o,M,i+M);local o={e[(459/0x99)](),e[((-#"get some bitches"+(-0x34+-21))+0x5c)](),nil,nil};local d={[(0x6f-(-108+0xdb))]=function()o[u]=e[(0x3a+-55)]();o[B]=e[(651/0xd9)]();end,[((0x9e-106)+-#'how to find my dad at the dollar store getting milk')]=function()o[t]=e[(-96+0x61)]();end,[((0x7b-(-0x3e+163))+-#"get good use moonsec")]=function()o[c]=e[(0x8d/(187+-0x2e))]()-(i^S)end,[((-19404/0xfc)+0x50)]=function()o[O]=e[(((-0x67+231)+-#"moonsec backrooms confirmed")-0x64)]()-(i^S)o[m]=e[(651/0xd9)]();end};d[a]();if(e[(468/0x75)](l,r,_)==r)then o[w]=n[o[x]]end if(e[(0x374/221)](l,i,i)==_)then o[t]=n[o[c]]end if(e[(728/0xb6)](l,P,P)==r)then o[m]=n[o[m]]end b[h]=o;end end;return h;end;local function N(e,M,U)local a=e[i];local n=e[P];local H=e[_];return(function(...)local d=n;local z=J('#',...)-r;local Y={};local l=_;local e=_ e*=-1 local P=e;local v=I local n={};local D=a;local S={};local I={...};local a=H;for e=0,z do if(e>=d)then Y[e-d]=I[e+r];else n[e]=I[e+_];end;end;local e=z-d+_ local e;local d;while true do e=a[l];d=e[(128+-0x7f)];o=(15422400)while d<=(0x79+-81)do o-= o o=(10279710)while d<=(91-0x48)do o-= o o=(9366620)while d<=(-#'never gonna give you up never gonna let you down'+(173-(343-0xe3)))do o-= o o=(7632625)while d<=(-0x3c+64)do o-= o o=(161499)while d<=(113-0x70)do o-= o o=(10055220)while(0x4b-75)<d do o-= o n[e[f]]={};break end while 4035==(o)/((-0x2d+2537))do U[e[g]]=n[e[x]];l=l+_;e=a[l];n[e[h]]={};l=l+_;e=a[l];n[e[f]]={};l=l+_;e=a[l];U[e[b]]=n[e[x]];l=l+_;e=a[l];n[e[x]]=U[e[b]];l=l+_;e=a[l];if(n[e[f]]~=e[m])then l=l+r;else l=e[t];end;break end;break;end while 533==(o)/((0xa5b4/140))do o=(1990156)while d<=((51+-0x19)+-#'big niggers sucking cock')do o-= o local e=e[h]n[e](n[e+r])break;end while(o)/((2147-0x457))==1921 do o=(977500)while(117-0x72)<d do o-= o n[e[h]]=n[e[b]]-n[e[j]];break end while 391==(o)/((5027-0x9df))do n[e[w]]();break end;break;end break;end break;end while(o)/(((808800/0xf0)+-#"Protected vírus"))==2275 do o=(5824336)while(-#"you get no absolute bitches"+(0x6d-76))>=d do o-= o o=(1617364)while d>(76+-0x47)do o-= o do return n[e[w]]end break end while(o)/(((2532-0x50d)+-#'IP grabbed'))==1316 do n[e[f]]=#n[e[c]];break end;break;end while 3128==(o)/((0x79d+-87))do o=(4726440)while((0xc9-146)+-#[[never gonna give you up never gonna let you down]])>=d do o-= o local o=e[h]n[o]=n[o](y(n,o+_,e[b]))break;end while(o)/(((0xd99-1755)+-#[[atakan der nigga]]))==2764 do o=(7549556)while d>((129+-0x5b)+-#"Nicuse is good at sucking dick")do o-= o n[e[h]]=M[e[b]];l=l+_;e=a[l];n[e[s]]=#n[e[u]];l=l+_;e=a[l];M[e[O]]=n[e[k]];l=l+_;e=a[l];n[e[w]]=M[e[g]];l=l+_;e=a[l];n[e[x]]=#n[e[b]];l=l+_;e=a[l];M[e[g]]=n[e[s]];l=l+_;e=a[l];do return end;break end while 2212==(o)/((((542935-0x42483)/0x4f)+-#[[how do i get moonsex v3]]))do if(n[e[f]]~=e[B])then l=l+r;else l=e[c];end;break end;break;end break;end break;end break;end while 2983==(o)/((-#'Only a to Z 0 to 9 is allowed'+(6462-0xcdd)))do o=(8946000)while(0x71-99)>=d do o-= o o=(41055)while(-#[[you cut your pubes with nail clippers]]+(1104/0x17))>=d do o-= o o=(1456728)while d>((0xb4/6)+-#[[free pornhub premium]])do o-= o local l=e[b];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[s]]=o;break end while(o)/((2273-0x49d))==1334 do n[e[f]]={};break end;break;end while(o)/((-0x6f+132))==1955 do o=(3731398)while(63-0x33)>=d do o-= o if(n[e[x]]==n[e[m]])then l=l+r;else l=e[O];end;break;end while 1814==(o)/((4231-0x87e))do o=(1432320)while((129-0x60)+-#'get good use moonsec')<d do o-= o local e=e[h]n[e]=n[e](y(n,e+_,P))break end while(o)/((0x40d-557))==2984 do l=e[g];break end;break;end break;end break;end while(o)/((6839-0xd67))==2625 do o=(1288844)while d<=(0x86+-118)do o-= o o=(7581501)while d>(1800/0x78)do o-= o M[e[O]]=n[e[x]];break end while(o)/((-0x48+2439))==3203 do if(n[e[w]]~=e[m])then l=l+r;else l=e[c];end;break end;break;end while 1538==(o)/((0x6a1-859))do o=(2876920)while d<=(140-0x7b)do o-= o local d=D[e[t]];local _;local o={};_=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[p]do l=l+r;local e=a[l];if e[(-#[[Nsrds GAYYYYAIAHAKAJAVAHAUA]]+(108-0x50))]==61 then o[_-1]={n,e[b]};else o[_-1]={M,e[u]};end;S[#S+1]=o;end;n[e[x]]=N(d,_,U);break;end while(o)/((-#'Help I cant think of a funny and original meme string pls help'+(0x868+-64)))==1420 do o=(7350772)while d>((0x10e-186)+-#'I have stolen your father figure and all your milk muahahahahahaha')do o-= o local l=e[f];local o=n[e[c]];n[l+1]=o;n[l]=o[e[m]];break end while(o)/((4053+-0x47))==1846 do local o=e[s]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break end;break;end break;end break;end break;end break;end while 3087==(o)/((549450/((0x114+-48)+-#"Luraph v13 has been released changed absolutely fucking nothing")))do o=(139536)while((72+-0x1c)+-#"Protected vírus")>=d do o-= o o=(9098854)while(85+-0x3d)>=d do o-= o o=(1555918)while(-29+0x32)>=d do o-= o o=(388278)while(-#'if found dad when back from milk then print yay end'+(236-(196+-0x1f)))<d do o-= o do return n[e[h]]end break end while(o)/((47286/0x47))==583 do n[e[w]]=U[e[b]];break end;break;end while(o)/((260039/0xf1))==1442 do o=(11491320)while(0x646/73)>=d do o-= o local e=e[x]n[e]=n[e](y(n,e+_,P))break;end while(o)/((-46+0xe75))==3144 do o=(2257752)while d>(103-(-#"sussy chat sussy sussy"+(260-0x9e)))do o-= o local o=e[x]n[o](y(n,o+r,e[u]))break end while 906==(o)/((2566+-0x4a))do local d;local i,c;local r;local o;U[e[O]]=n[e[s]];l=l+_;e=a[l];n[e[x]]=U[e[t]];l=l+_;e=a[l];n[e[s]]=U[e[g]];l=l+_;e=a[l];o=e[x];r=n[e[t]];n[o+1]=r;n[o]=r[e[p]];l=l+_;e=a[l];n[e[f]]=e[u];l=l+_;e=a[l];o=e[x]i,c=v(n[o](y(n,o+1,e[u])))P=c+o-1 d=0;for e=o,P do d=d+_;n[e]=i[d];end;l=l+_;e=a[l];o=e[h]n[o]=n[o](y(n,o+_,P))l=l+_;e=a[l];n[e[f]]();l=l+_;e=a[l];n[e[x]]=e[u];l=l+_;e=a[l];n[e[h]]=U[e[g]];break end;break;end break;end break;end while(o)/((0x98baa/246))==3578 do o=(823116)while d<=((3264/0x60)+-#[[Hey skid]])do o-= o o=(6297676)while d>(-#[[Asses]]+(0x75+-87))do o-= o n[e[k]]=n[e[g]]-n[e[m]];break end while 3556==(o)/(((0x70e+-22)+-#'i love minors'))do M[e[g]]=n[e[x]];break end;break;end while(o)/((-#[[Protected vírus]]+(183327/0x35)))==239 do o=(13384364)while d<=(81-0x36)do o-= o local o=e[k];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[b];else n[o+3]=_;end elseif(_<n[o+1])then l=e[b];else n[o+3]=_;end break;end while(o)/((-27+((732564/0xcc)+-#'zykem krul')))==3766 do o=(13564522)while((201-0xa1)+-#'mike litoris')<d do o-= o l=e[t];break end while(o)/(((17403828/0x4e)/58))==3526 do local M;local d;local b;local o;n[e[f]]=U[e[t]];l=l+_;e=a[l];n[e[k]]=n[e[t]][e[C]];l=l+_;e=a[l];o=e[s];b=n[e[g]];n[o+1]=b;n[o]=b[e[m]];l=l+_;e=a[l];n[e[w]]=n[e[c]];l=l+_;e=a[l];n[e[f]]=n[e[O]];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];o=e[h];b=n[e[O]];n[o+1]=b;n[o]=b[e[F]];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];d={n,e};d[r][d[i][s]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[s]]=n[e[u]]%e[B];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];b=e[g];M=n[b]for e=b+1,e[m]do M=M..n[e];end;n[e[x]]=M;l=l+_;e=a[l];d={n,e};d[r][d[i][x]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[w]]=n[e[u]]%e[p];break end;break;end break;end break;end break;end while(o)/((0xf8a/78))==2736 do o=(6336177)while d<=((-0x2f+120)+-#'psx real dupe steal all ur pets no joke')do o-= o o=(8154800)while d<=((-58+0x5e)+-#[[ballz]])do o-= o o=(392310)while((172-0x7a)+-#[[Impulse youtube real]])<d do o-= o if(n[e[x]]==n[e[B]])then l=l+r;else l=e[O];end;break end while 135==(o)/((0x1712-3000))do n[e[f]]=n[e[c]]%e[B];break end;break;end while(o)/((0x44a70/74))==2146 do o=(8681802)while d<=(-#[[if syn request then print your mom then end and then kill yourself]]+(233-0x87))do o-= o local o=e[w]n[o]=n[o](y(n,o+_,e[t]))break;end while(o)/(((2670+-0x79)+-#"Ur mom"))==3414 do o=(8214112)while d>(-0x2d+78)do o-= o n[e[k]]();break end while 2606==(o)/((0xa6380/216))do if(n[e[f]]~=n[e[m]])then l=l+r;else l=e[t];end;break end;break;end break;end break;end while(o)/((-#[[Negro]]+(821688/0xdb)))==1691 do o=(800541)while d<=(4329/0x75)do o-= o o=(3634590)while(0x1d1f/213)>=d do o-= o n[e[k]]=M[e[c]];break;end while(o)/((0x62b+-124))==2498 do o=(4959568)while(0x1290/132)<d do o-= o local o=e[w];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[c];else n[o+3]=_;end elseif(_<n[o+1])then l=e[u];else n[o+3]=_;end break end while(o)/((3256-0x674))==3092 do local o=e[k];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[c];n[o+3]=_;end elseif(_>=n[o+1])then l=e[O];n[o+3]=_;end break end;break;end break;end while(o)/((0x1bd98/56))==393 do o=(1228339)while d<=(0x1c34/190)do o-= o local o=e[h]n[o](y(n,o+r,e[t]))break;end while 2653==(o)/((69913/(-82+0xe9)))do o=(5342240)while d>(-#[[game players kick localplayer kicked by nicuse and beliveri12 ahhahahahahahhaha]]+(5192/0x2c))do o-= o n[e[k]]=N(D[e[O]],nil,U);break end while(o)/((5602-0xb12))==1930 do n[e[h]]=U[e[c]];break end;break;end break;end break;end break;end break;end break;end while 4080==(o)/((7648-0xf1c))do o=(11961030)while(0x2850/172)>=d do o-= o o=(1582632)while d<=((0x3078/188)+-#"atakan der nigga")do o-= o o=(4754217)while(78+-0x21)>=d do o-= o o=(1796703)while d<=(-#"Ur mom"+(203-0x9b))do o-= o o=(2181200)while(-#'you can pull my IP but you cant pull any bitches fucking loner'+(-0x5c+195))<d do o-= o local d;local o;n[e[s]]=n[e[t]];l=l+_;e=a[l];n[e[x]]=e[c];l=l+_;e=a[l];n[e[x]]=n[e[O]];l=l+_;e=a[l];n[e[h]]=e[g];l=l+_;e=a[l];n[e[x]]=n[e[g]];l=l+_;e=a[l];n[e[x]]=e[t];l=l+_;e=a[l];o=e[k];d=n[o];for e=o+1,e[b]do A(d,n[e])end;break end while(o)/((0x64d-834))==2800 do local o=e[s];local l=n[o];for e=o+1,e[b]do A(l,n[e])end;break end;break;end while(o)/((1347-0x2de))==2931 do o=(11054660)while(-#'panzerfaust'+((487-0x11a)-0x97))>=d do o-= o n[e[w]]=(e[t]~=0);l=l+r;break;end while 3391==(o)/((6612-0xd18))do o=(2262007)while(-#'If not skid then return hasbitches end'+(-0x52+164))<d do o-= o U[e[c]]=n[e[k]];break end while 2603==(o)/((0x305f4/228))do n[e[x]]=n[e[c]][e[B]];break end;break;end break;end break;end while(o)/(((72361+-0x51)/0x28))==2631 do o=(1124188)while(0x8d-94)>=d do o-= o o=(366471)while d>(0xb3-133)do o-= o local i=D[e[c]];local d;local o={};d=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[C]do l=l+r;local e=a[l];if e[(92+-0x5b)]==61 then o[_-1]={n,e[O]};else o[_-1]={M,e[c]};end;S[#S+1]=o;end;n[e[f]]=N(i,d,U);break end while(o)/((-#[[Negro]]+(0x6e62a/181)))==147 do n[e[h]]=n[e[O]][n[e[p]]];break end;break;end while 676==(o)/((3360-0x6a1))do o=(10836215)while d<=((-0x62+151)+-#"Bwomp")do o-= o n[e[w]]=n[e[g]][e[p]];l=l+_;e=a[l];n[e[s]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[s]]=U[e[u]];l=l+_;e=a[l];n[e[h]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[f]]=n[e[O]][e[C]];l=l+_;e=a[l];n[e[s]]=n[e[c]][e[m]];l=l+_;e=a[l];n[e[h]]=U[e[c]];l=l+_;e=a[l];n[e[w]]=n[e[b]][e[C]];l=l+_;e=a[l];n[e[w]]={};l=l+_;e=a[l];n[e[x]]=e[c];break;end while(o)/((-68+(-#"i dont fucking care if its your own ui"+(-0x24+2937))))==3877 do o=(768636)while(0xac+-123)<d do o-= o if not n[e[k]]then l=l+r;else l=e[u];end;break end while(o)/(((-0x3d+(-#"cilerteddoesntlikeburgers"+(-0x6c+862)))+-#"impulse loves moonsex"))==1188 do n[e[s]]=n[e[g]][e[j]];break end;break;end break;end break;end break;end while(o)/((558576/(-#"fatee is gay 0nly on top"+(579-0x153))))==612 do o=(2907660)while d<=(-#'you get no absolute bitches'+(0x668/20))do o-= o o=(560619)while d<=((0x5a+-20)+-#[[Rodenladder is gay]])do o-= o o=(949032)while(121-0x46)<d do o-= o local o=e[s];local l=n[o];for e=o+1,e[O]do A(l,n[e])end;break end while(o)/((-#"warboy hates you"+((0x2df24-94120)/0x1d)))==294 do n[e[w]]=e[b];break end;break;end while(o)/((0xbf9-1562))==373 do o=(5790024)while d<=(0xda-165)do o-= o n[e[h]]=(e[b]~=0);l=l+r;break;end while(o)/((4200-0x840))==2773 do o=(2727249)while(0x2412/171)<d do o-= o local d;local o;o=e[h];d=n[e[c]];n[o+1]=d;n[o]=d[e[m]];l=l+_;e=a[l];n[e[f]]=e[t];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[b]))l=l+_;e=a[l];o=e[w];d=n[e[u]];n[o+1]=d;n[o]=d[e[F]];l=l+_;e=a[l];n[e[f]]=n[e[u]];l=l+_;e=a[l];o=e[s]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];n[e[h]]=U[e[t]];l=l+_;e=a[l];o=e[f];d=n[e[u]];n[o+1]=d;n[o]=d[e[C]];l=l+_;e=a[l];n[e[f]]=n[e[b]];l=l+_;e=a[l];n[e[h]]=n[e[t]];break end while(o)/((-0x71+2242))==1281 do n[e[k]]=n[e[b]];break end;break;end break;end break;end while(o)/((134160/0x34))==1127 do o=(421270)while(-#'nate higger nuck figgers and nill kiggers'+(-0x35+151))>=d do o-= o o=(2412332)while(149-((0x183-207)+-#"when the he went where when he where where when the he when ther wher he then here went"))<d do o-= o n[e[w]]=(e[u]~=0);break end while(o)/((-#[[Hoo gah hooga hoo gahoo hoo gah hooga hoo gahoo]]+(212212/((0xc4-137)+-#'mf stfu'))))==598 do n[e[s]]=N(D[e[g]],nil,U);break end;break;end while 4090==(o)/((-#'free bobux no skem'+(0x70f7/239)))do o=(313972)while(0xf2e/67)>=d do o-= o local o=e[x];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[O];n[o+3]=_;end elseif(_>=n[o+1])then l=e[c];n[o+3]=_;end break;end while(o)/((-#'0nly 1337'+(0x88+-21)))==2962 do o=(3742218)while d>(0x140d/87)do o-= o local e=e[x]n[e]=n[e](n[e+r])break end while(o)/(((3948-0x7d3)+-#"how to join the kkk"))==1943 do U[e[c]]=n[e[k]];break end;break;end break;end break;end break;end break;end while 2994==(o)/(((176483120/0xb0)/251))do o=(6509115)while(0xc6-(0xb1+-49))>=d do o-= o o=(7419152)while d<=(9295/0x8f)do o-= o o=(4981461)while(4030/0x41)>=d do o-= o o=(4508237)while d>(0x225/9)do o-= o local e={n,e};e[r][e[i][k]]=e[_][e[i][p]]+e[r][e[i][u]];break end while(o)/((-#'if found dad when back from milk then print yay end'+(0xa95-1387)))==3547 do n[e[f]]=n[e[c]];break end;break;end while(o)/((0x1c5ce/58))==2487 do o=(878952)while d<=((2130660/0xb2)/0xbe)do o-= o local e=e[k]n[e]=n[e](n[e+r])break;end while 2764==(o)/((395+-0x4d))do o=(3007936)while(-46+0x6e)<d do o-= o if(n[e[k]]~=n[e[F]])then l=l+r;else l=e[u];end;break end while(o)/(((419216/0x98)+-#[[Ur mom]]))==1093 do n[e[s]]=(e[c]~=0);break end;break;end break;end break;end while 2692==(o)/((2777+-0x15))do o=(7440000)while d<=(-#[[my ass hurts]]+(0x2cbf/145))do o-= o o=(1786228)while((-0x7e+216)+-#[[0nly 1337 smashed ur wap]])<d do o-= o n[e[x]][n[e[c]]]=n[e[B]];break end while(o)/((0x16bd2/129))==2474 do n[e[h]]=e[O];break end;break;end while 2976==(o)/(((5135-0xa3a)+-#'iPipeh i love You'))do o=(1663518)while(-80+0x94)>=d do o-= o local l=e[t];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[x]]=o;break;end while(o)/((195708/0xbc))==1598 do o=(6885076)while d>((360-0xd8)+-#"brawl stars hard gay porn shelly nsked minecraft gay porn roblox rule34 hot")do o-= o local r;local d;local o;n[e[s]]=e[O];l=l+_;e=a[l];n[e[k]]=e[u];l=l+_;e=a[l];n[e[k]]=#n[e[b]];l=l+_;e=a[l];n[e[k]]=e[t];l=l+_;e=a[l];o=e[h];d=n[o]r=n[o+2];if(r>0)then if(d>n[o+1])then l=e[u];else n[o+3]=d;end elseif(d<n[o+1])then l=e[O];else n[o+3]=d;end break end while(o)/(((0xef0+(-0xff0/60))+-#'Omg guys'))==1837 do n[e[h]]=n[e[O]][n[e[C]]];break end;break;end break;end break;end break;end while 1655==(o)/((0x5856c/92))do o=(791910)while(125+-0x32)>=d do o-= o o=(561411)while d<=(0xbe-118)do o-= o o=(392445)while(0x13b1/(-49+0x78))<d do o-= o local e=e[k]n[e](n[e+r])break end while 513==(o)/((-#'I have stolen your father figure and all your milk muahahahahahaha'+(65649/0x4f)))do n[e[x]]=#n[e[t]];break end;break;end while(o)/(((1548-0x33b)+-#[[null]]))==783 do o=(1537471)while d<=(-38+0x6f)do o-= o local o=e[x]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break;end while 2951==(o)/((8857/0x11))do o=(8560870)while d>(4366/0x3b)do o-= o local e={n,e};e[r][e[i][h]]=e[_][e[i][C]]+e[r][e[i][t]];break end while(o)/((0x8685a/149))==2315 do do return end;break end;break;end break;end break;end while 378==(o)/((2155+-0x3c))do o=(3256000)while d<=((183+-0x64)+-#[[penis]])do o-= o o=(6872775)while(9196/0x79)>=d do o-= o n[e[s]]=n[e[t]]%e[p];break;end while 1729==(o)/((4067+-0x5c))do o=(2168064)while d>((-#"holy shit"+(0x86f9/109))/0x4)do o-= o local o=e[h];local l=n[e[b]];n[o+1]=l;n[o]=l[e[j]];break end while(o)/((-111+0x2af))==3764 do n[e[w]]=M[e[g]];break end;break;end break;end while(o)/((-#"Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes"+(1996+-0x1d)))==1760 do o=(1725615)while d<=((0x1f00/64)+-#'testpsx dupe no scam legit 2022 free no virus')do o-= o n[e[w]][n[e[g]]]=n[e[j]];break;end while(o)/((-0x4c+3787))==465 do o=(2951907)while d>((9579/0x67)+-#[[Daddy fuck me]])do o-= o do return end;break end while 3269==(o)/(((0x75b-970)+-#'zykem krul'))do if not n[e[w]]then l=l+r;else l=e[u];end;break end;break;end break;end break;end break;end break;end break;end l+= r end;end);end;return N(R(),{},K())()end)_msec({[((((11375/0x19)+-#"panzerfaust")-238)+-#[[FranzJPresents]])]='\115\116'..(function(e)return(e and'(-#\'pls free synapse x i am gamer girl uwu\'+(387-0xf9))')or'\114\105'or'\120\58'end)((0x30+-43)==(0x558/228))..'\110g',[((175143/0xed)+-#'null')]='\108\100'..(function(e)return(e and'(0x8b+-39)')or'\101\120'or'\119\111'end)((0x77-114)==((54-0x26)+-#'IP grabbed'))..'\112',[((-0x40+363)+-#'me when they are is have the me when are is do me when')]=(function(e)return(e and'(-#"Protected vírus"+(0xa4+-49))')and'\98\121'or'\100\120'end)((82-0x4d)==(65-(182-0x7a)))..'\116\101',[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]='\99'..(function(e)return(e and'(312-0xd4)')and'\90\19\157'or'\104\97'end)((0x80+-123)==(-0x1d+32))..'\114',[(21756/0x2a)]='\116\97'..(function(e)return(e and'(((-0x4f+-32)+0xeb)+-#\'big niggers sucking cock\')')and'\64\113'or'\98\108'end)((0x384/150)==((0x4f-60)+-#"waste of sperm"))..'\101',[(479+-#{28;14,{};28})]=(function(e)return(e and'((0x13e-211)+-#\'mf stfu\')')or'\115\117'or'\78\107'end)((-0x79+124)==(140-0x6d))..'\98',[(-#'i love minors'+(-103+0x3f4))]='\99\111'..(function(e)return(e and'(0x13d-(26908/0x7c))')and'\110\99'or'\110\105\103\97'end)((-#'blinx1 is a sissy little femboy that loves men'+(10164/0x84))==(-#"nicowashere"+(-0x12+60)))..'\97\116',[(0xb944/71)]=(function(e,o)return(e and'((1212600/0x81)/0x5e)')and'\48\159\158\188\10'or'\109\97'end)((0x40+-59)==(-#"avan"+(0x712/(386-0xcd))))..'\116\104',[(0xab5-1426)]=(function(e,o)return((78+-0x49)==((375/0x19)+-#"deadphonelua")and'\48'..'\195'or e..((not'\20\95\69'and'\90'..'\180'or o)))or'\199\203\95'end),[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]='\105\110'..(function(e,o)return(e and'(0x41a0/168)')and'\90\115\138\115\15'or'\115\101'end)((48-0x2b)==(2077/0x43))..'\114\116',[(-#[[zxcvbnm]]+(0x855-1115))]='\117\110'..(function(e,o)return(e and'(-#\'MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch\'+(260+-0x43))')or'\112\97'or'\20\38\154'end)((0x302/((0x9768/228)+-#'Fucking Retarted'))==(0x9c-125))..'\99\107',[(2397-0x4df)]='\115\101'..(function(e)return(e and'((-#\'legend says i was here\'+(-0x54+240))+-34)')and'\110\112\99\104'or'\108\101'end)((-#'ambatakum'+(65-0x33))==(0x6d-78))..'\99\116',[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]='\116\111\110'..(function(e,o)return(e and'(-#"Smokey BArbecue BAcon BUford from checkers mm"+(230+-0x55))')and'\117\109\98'or'\100\97\120\122'end)(((-0x12+105)+-#'i have found your porn folder i am now approaching your house at 83 miles per hour')==(65-0x3c))..'\101\114'},{[(-#"Reduce meme string slowmode when plsplspls"+(179-0x6b))]=((getfenv))},((getfenv))()) end)()



end)


Main3Section:NewButton("🐍Septex Admin🐍", "Un Admin especializado en prision life", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)
--------------------------------------------------------------MAIN SECTION CON KEY----------------------------------------------------------------
local Main3Section = Main3:NewSection("Scripts con KEY")


Main3Section:NewButton("🐍PrisonWare (CON KEY)🐍", "Un script bastante util, pero con key.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)


local Main3Section = Main3:NewSection("Spanish HUB versione santeriores")


Main3Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main3Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main3Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
-- FIN DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main4 = Window:NewTab("💥Destruction Sim💣")
local Main4Section = Main4:NewSection("Sin Key")


Main4Section:NewButton("🐍Inf Money V1🐍", "Te dara cientos de miles o millones de monedas en SEGUNDOS", function()
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


Main4Section:NewButton("🐍PROXIMA HUB GUI🐍", "¡EL MEJOR SCRIPT DE ESTE JUEGO!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
-----------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main4Section = Main4:NewSection("Con Key")

Main4Section:NewButton("🐍Pog Hub UPDATED🐍", "¡Puede ser utilizado en muchos juegos mas!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/Loader/main/Loader.lua"))()
end)


Main4Section:NewButton("🐍OP GUI"🐍, "Casi el mejor script para este juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JrFPkKMa"))()
end)


Main4Section:NewButton("🐍Eclipse HUB🐍", "¡Puede ser utilizado en muchisisimos juegos mas!", function()
    getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)
-- FIN DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main5 = Window:NewTab("🔥Admin's Scripts💫")
local Main5Section = Main5:NewSection("Sin Key")


Main5Section:NewButton("🐍IV Admin V3🐍", "Un admin que se utiliza por chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍CMD-X🐍", "Se abrira un panel para poner comandos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)


Main5Section:NewButton("🐍Fate's admin🐍", "Este script admin tambien es mediante chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)


Main5Section:NewButton("🐍Leg's Admin V2🐍", "Un admin que se utiliza por chat (Tambien)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main5Section:NewButton("🐍Admin Pack🐍", "Al accionarlo apareceran mucho panelas admin", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
-- INFINITE YIELD
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt'),true))()
-- PRISONWARE GUI
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- -- Admin commands
loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
--TIGER ADMIN
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- - Admin commands Repeat script, gurantee work
-- THE BEST ROBLOX PRISON LIFE (CARS FIXED!) SCRIPT EXPLOIT - MADE BY OPERATOR
---THANK YOU TO ALL THE CREATORS OF THESE SCRIPTS, ALL CREDIT GOES TO THEM
end)


Main5Section:NewButton("🐍IV Admin V3🐍", "Un hub hecho por Juanko's mods", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍Chaos Script V9.5🐍", "Un script tambien hecho por Juanko's mods.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)
----------------------------------------------------SCRIPTS CON KEY----------------------------------
local Main5Section = Main5:NewSection("Con Key")

Main5Section:NewButton("🐍Adminus"🐍, "Un admin muy utilizado", function()
    local Theme = "Default" ---- change to New if u want a cool intro

if Theme == "Default" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-ADMINUS-GUI-(UPDATE)-1290")()
elseif Theme == "New" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-test-1232")()
end
end)



-- FIN DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main6 = Window:NewTab("💪Hubs y Guis☠")
local Main6Section = Main6:NewSection("Sin Key")


Main6Section:NewButton("🐍Hoho Hub Script🐍", "Si lo usas en un juego al cual no soporta te echara", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)


Main6Section:NewButton("🐍Ez Hub🐍", "Un HUB con mas de 100 juegos compatibles!!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)


Main6Section:NewButton("🐍Universal Waypoints GUI🐍", "Hub Universal", function()
    loadstring(game:HttpGet('https://weinzspace.com/revamp.lua'))()
end)


Main6Section:NewButton("🐍AirHub V2🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main6Section:NewButton("🐍Fathom Hub🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Y4AGJALY"))();
end)


Main6Section:NewButton("🐍AuratusX🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMrQuacks/AuratusX/master/Load"))()
end)


Main6Section:NewButton("🐍Multi scripter hub x v3🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
end)
--------------------------------------------------------------------------------SPANISH HUB VERSIONES ANTERIORES---------------------------------
local Main6Section = Main6:NewSection("Spanish HUB versione santeriores")

Main6Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main6Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main6Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
----------------------------------------------------------------EXTRA------------------------------------------------------------------------------
local Main6Section = Main6:NewSection("Spanish HUB V3 Con diferentes TEMAS")
-- LIGHT THEME -----------------------------------------------------------
Main6Section:NewButton("🐍Tema blanco🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uXSYigqV"))()
end)
-- DARK THEME ----------------------------------------------------------
Main6Section:NewButton("🐍Tema negro🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cMgvgqse"))()
end)
-- GRAPE THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema uva🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8EwiED0s"))()
end)
-- BLOOD THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema sangre🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YSh1EkRN"))()
end)
-- OCEAN THEME---------------------------------------------------------
Main6Section:NewButton("🐍Tema oceano🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KmE4Mhtu"))()
end)
-- MIDNIGHT THEME ------------------------------------------------------
Main6Section:NewButton("🐍Tema medianoche🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cq01Qm7F"))()
end)
-- SENTINEL THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema sentinela🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mjwRWR7i"))()
end)
-- SYNAPSE THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema synapse🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aCV6mgph"))()
end)
-- SERPENTE THEME (🐍Secret THEME🐍) ----------------------------------------
Main6Section:NewButton("Tema serpiente", "Es el SPANISH HUB *V* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6Bcd4LZT"))()
end)
-- FIN DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main7 = Window:NewTab("🕶Dark Dex's🌑")
local Main7Section = Main7:NewSection("Roba contenido interno de los juegos")


Main7Section:NewButton("🐍Dark Dex ANTI KEY SISTEM🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/003AcccountMaker/Main/main/DarkHub"))();
end)


Main7Section:NewButton("🐍Dark Dex Bypass🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Didward/DarkhubBypassed/main/bypassed.lua", true))()
end)


Main7Section:NewButton("🐍Gran Dark Dex🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4'))()
end)
--------------------------------------------------------------------------DARK DEX V1-V4
local Main7Section = Main7:NewSection("Dark Dex's en orden")

Main7Section:NewButton("🐍Dark Dex V1🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://3025032531")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V2🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script4", true))()
end)


Main7Section:NewButton("🐍Dark Dex V3🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V4🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script5", true))()
end)
-- FIN DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main8 = Window:NewTab("🔫Da Hood🌇")
local Main8Section = Main8:NewSection("Scripts SIN KEY")


Main8Section:NewButton("🐍GUI ZINC HUB🐍", "Uno de los HUB mejor valorados de Da Hood", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍ZINC HUB (OP)🐍", "Como la segunda version de - GUI ZINC HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍JUMPSCARE MIMIC🐍", "Te gusta asustar gente?, este es tu script.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/mimic-simple-script/main/README.md", true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "CREANME, ESTA HOT", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Jojo's DaHood🐍", "Un script que el mismo nombre lo dice", function()
    getgenv().settings =  {
        ['Stand'] =1, --userid of the stand
        ['Owner'] =2, -- userid of the jojo stand owner
      }
      getgenv().commands =  {
         ['Summon'] = "Summon!", -- if someone else wants to own the stand.
         ['Follow'] = "Follow!", -- follow/unfollow you
         ['Ghost'] = "Disappear!", -- disappear
         ['Unghost'] = "Appear!", -- appear
         ['Attack'] = "Ora!", -- loop attack a target
         ['Stopattack'] = "Booga!", -- stop attacking the target
         ['Void'] = "Void!", -- send the target to the void when ko (goes with attack)
         ['Godmode'] = "Requiem!", -- enable/disable godmode
         ['Autosave'] = "Save!", -- grab you when k.o
         ['Autosave2'] = "Bird!", -- send you in the air when k.o
         ['Reset'] = "Stop!", -- resets commands and character (debug)
      }
       
      loadstring(game:HttpGet("https://raw.githubusercontent.com/racemodex/my-scripts/master/dahoodjojostand-v3rmversion", true))()
      
end)


Main8Section:NewButton("🐍Aim Ware🐍", "Eyy, ¡encontraste mi easter egg!", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/fg0C9NSS'))()
end)


Main8Section:NewButton("🐍Anti AFK🐍", "Si te quedas AFK por mas de 20min no seras expulsado", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHoodCrasher/main/Crash'))()
end)


Main8Section:NewButton("🐍OP Script HUB🐍", "Es un HUB OP", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/gwa6nEzD'))()
end)
----------------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main8Section = Main8:NewSection("Scripts CON KEY")

Main8Section:NewButton("🐍LX63 R6 Animation🐍", "Lageara el servidor hasta hacerlo injugable", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Gogogamer61/LXHub-Main/main/LXHub%20Main%20Script'),true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "Mas de 20 scripts", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Server Crasher🐍", "Lageara el servidor hasta hacerlo injugable", function()
    --you need to join this group for the script to work :   
 --https://www.roblox.com/groups/15655824/Strike-Hub 

 loadstring(game:HttpGet('https://raw.githubusercontent.com/NoobieDev2009/StrikeHub/main/CrashV2', true))()
end)


Main8Section:NewButton("🐍FE Jesus🐍", "TYe convertiras en Jesus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/fejesusscript/main/README.md", true))()
end)


Main8Section:NewButton("🐍Ven X🐍", "AimLoc, SilentAim, Teleports, ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Impulseonyoutube/VENX/main/subtoimpulseyea.lua"))()
end)


Main8Section:NewButton("🐍Autofarm + Aimlock GUI🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main8Section:NewButton("🐍Dread's Scripts🐍", "Esta pro", function()
    local thekeybindis = "b"

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "@dread.w",
    Text = "Your keybind is " ..thekeybindis,
})

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local orgp = player.Character.HumanoidRootPart.Position
local istping = false

local function teleport()
while istping do
local randomPosition = orgp + Vector3.new(math.random(-15, 15), math.random(-15, 35), math.random(-15, 15))
player.Character.HumanoidRootPart.CFrame = CFrame.new(randomPosition)
wait()
end
end

mouse.KeyDown:Connect(function(key)
if key == thekeybindis then
if istping then
istping = false
player.Character.HumanoidRootPart.CFrame = CFrame.new(orgp)
else -- made by @dread.w
istping = true
orgp = player.Character.HumanoidRootPart.Position
teleport()
end
end
end)
end)
-- FIN DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main9 = Window:NewTab("⚔Blade Ball🔴")
local Main9Section = Main9:NewSection("Sin Key")


Main9Section:NewButton("🐍Ln Hub V3 Updated🐍", "Contiene 7 scripts para Blade Ball (Bastante utiles)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)

 
Main9Section:NewButton("🐍Sikded Hub🐍", "Contiene - Auto spam block - y mas", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)


Main9Section:NewButton("🐍X7 PARRY🐍", "BROOO, EL NOMBRE LO DICE!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly"))()

end)


Main9Section:NewButton("🐍Xero Hub🐍", "Contiene Rage mode y Auto parry", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/BladeBall/main/bladeball.lua"))()
end)


Main9Section:NewButton("🐍Opensource Autoparry🐍", "Es el HUB mas visto esta semana de Blade Ball", function()
    local Debug = false -- Set this to true if you want my debug output.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9) -- A second argument in waitforchild what could it mean?
local Balls = workspace:WaitForChild("Balls", 9e9)

-- Functions

local function print(...) -- Debug print.
    if Debug then
        warn(...)
    end
end

local function VerifyBall(Ball) -- Returns nil if the ball isn't a valid projectile; true if it's the right ball.
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
        return true
    end
end

local function IsTarget() -- Returns true if we are the current target.
    return (Player.Character and Player.Character:FindFirstChild("Highlight"))
end

local function Parry() -- Parries.
    Remotes:WaitForChild("ParryButtonPress"):Fire()
end

-- The actual code

Balls.ChildAdded:Connect(function(Ball)
    if not VerifyBall(Ball) then
        return
    end
    
    print(`Ball Spawned: {Ball}`)
    
    local OldPosition = Ball.Position
    local OldTick = tick()
    
    Ball:GetPropertyChangedSignal("Position"):Connect(function()
        if IsTarget() then -- No need to do the math if we're not being attacked.
            local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
            local Velocity = (OldPosition - Ball.Position).Magnitude -- Fix for .Velocity not working. Yes I got the lowest possible grade in accuplacer math.
            
            print(`Distance: {Distance}\nVelocity: {Velocity}\nTime: {Distance / Velocity}`)
        
            if (Distance / Velocity) <= 10 then -- Sorry for the magic number. This just works. No, you don't get a slider for this because it's 2am.
                Parry()
            end
        end
        
        if (tick() - OldTick >= 1/60) then -- Don't want it to update too quickly because my velocity implementation is aids. Yes, I tried Ball.Velocity. No, it didn't work.
            OldTick = tick()
            OldPosition = Ball.Position
        end
    end)
end)
end)

local Main9Section = Main9:NewSection("Sin Key")

Main9Section:NewButton("🐍*Gui*🐍", "El mejor script de Blade Ball", function()
    loadstring(game:HttpGet("https://www.nicuse.xyz/BladeBall.lua"))()
end)


Main9Section:NewButton("🐍OP Script🐍", "Un script con una gran variedad de funciones", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main9Section:NewButton("🐍Syr HUB🐍", "Mas de 7 scripts para este juego", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BackOnTop/main/SyrBladeBall.lua.txt"))()
end)


Main9Section:NewButton("🐍Auto farm🐍", "¡MUCIHISMOS SCRIPTS!", function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)


Main9Section:NewButton("🐍DevHub🐍", "5 Scripts (Sirven eh)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustD1v/Scripts/main/DevHub.lua", true))()
end)
-- FIN DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main10 = Window:NewTab("🐯Blox Fruits🍈")
local Main10Section = Main10:NewSection("CON KEY (Es mejor los que utilizan key)")


Main10Section:NewButton("🐍BT PROJECT🐍", "El HUB MEJOR VALORADO de blox fruits", function()
    loadstring(game:HttpGet('https://btteam.net/scripts-auth/', true))()
end)


Main10Section:NewButton("🐍Bean Hub🐍", "Utiliza Key y 12 scripts para utilizar", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SoyElPekka/BeanHub/main/bloxfruitsnewpc2023'),true))()
end)


Main10Section:NewButton("🐍Free Kaitan🐍", "Contiene Key - te dara todos los items del juego", function()
    --report bug/get update announce in discord: https://discord.gg/aUd8umqUKu
repeat wait() until game:IsLoaded()
_G.Start_Kaitun = false
_G.Config = true
_G.Settings = {
	Main = {
		["Auto Farm"] = true,
		["Auto Go To Fruit"] = true,
		["Store Fruit"] = true,

		["Buy Fruit"] = true,
		["Select Fruit"] = {
			"Lepoard-Lepoard",
			"Dough-Dough",
			"Linght-Linght",
		}, --[[
			Kilo-Kilo
			Spin-Spin
			Chop-Chop
			Spring-Spring
			Bomb-Bomb
			Smoke-Smoke
			Spike-Spike
			Flame-Flame
			Falcon-Falcon
			Ice-Ice
			Sand-Sand
			Dark-Dark
			Revive-Revive
			Diamond-Diamond
			Linght-Linght
			Rubber-Rubber
			Barber-Barber
			Magma-Magma
			Quake-Quake
			Buddha-Buddha
			Love-Love
			Spider-Spider
			Phoenix-Phoenix
			Portal-Portal
			Rumble-Rumble
			Paw-Paw
			Blizzard-Blizzard
			Gravity-Gravity
			Dough-Dough
			Shadow-Shadow
			Venom-Venom
			Control-Control
			Spirit-Spirit
			Dragon-Dragon
			Leopard-Leopard
		]]


		-- // [[ World 1 ]] \\ --
		["Auto Saber"] = true,
		["Auto Pole"] = true,

		["Auto New World"] = true,

		-- // [[ World 2 ]] \\ --
		["Thire World"] = true,
		["Auto Bartilo Quest"] = true,
		["Auto Rengoku"] = true,
		["Open Flamingo Access"] = true,
		["Midnight Blade"] = true,
		["Auto Factory Farm"] = true,
		["Auto Super Human"] = true,

		-- // [ World 3] \\ --
		["Auto Yama"] = true,
		["Auto Tushita"] = true,
		["Auto ElectricClaw"] = true,
		["Auto Farm Mastery Sword All"] = true, --When reached Level Max
		["Auto Soul Guitar"] = true, -- When reached Level 2300+
	},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhhau207/SilverHub/main/Kaitun2"))()
end)


Main10Section:NewButton("🐍OP Script🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
end)


Main10Section:NewButton("🐍XIBA HUB V3🐍", "Ta hot", function()
    local XIBAHUBSETTINGS = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=XIBAHUBSETTINGS;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end

end)


Main10Section:NewButton("🐍PEELY HUB V3🐍", "Mas de 10 propiedades bien insanas wazaaa", function()
    -- peely hub remastered
-- Updated for UPD 20
local peely_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=peely_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Sub Hub V3🐍", "Ojala algun dia probar un SubWay :c", function()
    -- SUB-HUB v3
-- Powered by Celestial AI ©
local subhubv3_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm | This autofarm is presented to you by Celestial AI ©
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=subhubv3_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Mango HUB🐍", "HUB VERIFICADO", function()
    getgenv().WaterMark = true
loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
end)


Main10Section:NewButton("🐍QUE PRO HUB🐍", "QUE PRO", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/INoobie/Lua/main/blox%20fruits', true))()
end)


Main10Section:NewButton("🐍FAST CHEST FARM🐍", "El mejor script de bloxfruits, 55 likes, verificado y 100K visitas", function()
    
getgenv().Server_Hop = true
getgenv().Chest_Farm = true
getgenv().wait_Time = 35 -- Seconds

local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then
repeat wait() until game:IsLoaded() ~= false


local Counter = 0
local PlaceID = game.PlaceId
     local AllIDs = {}
     local foundAnything = ""
     local actualHour = os.date("!*t").hour
     local Deleted = false

     local File = pcall(function()
         AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
     end)
     if not File then
         table.insert(AllIDs, actualHour)
         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
     end
    
     function TPReturner()
         local Site;
         if foundAnything == "" then
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
         else
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
         end
         local ID = ""
         if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
             foundAnything = Site.nextPageCursor
         end
         local num = 0;
         for i,v in pairs(Site.data) do
             local Possible = true
             ID = tostring(v.id)
             if tonumber(v.maxPlayers) > tonumber(v.playing) then
                 for _,Existing in pairs(AllIDs) do
                     if num ~= 0 then
                         if ID == tostring(Existing) then
                             Possible = false
                         end
                     else
                         if tonumber(actualHour) ~= tonumber(Existing) then
                             local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                 AllIDs = {}
                                 table.insert(AllIDs, actualHour)
                             end)
                         end
                     end
                     num = num + 1
                 end
                 if Possible == true then
                     table.insert(AllIDs, ID)
                     wait()
                     pcall(function()
                         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                         wait()
                         game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                     end)
                     wait(4)
                 end
             end
         end
     end
 
     function Teleport()
        while wait() do
            pcall(function()
                 TPReturner()
                 if foundAnything ~= "" then
                     TPReturner()
                 end
            end)
        end
     end

     spawn(function()
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end)


spawn(function()
   while wait(.8) do
      if Chest_Farm then
          pcall(function()
  
  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait(.15)
      end
  end
  game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
      end
  end
end)

spawn(function()
    while wait() do
        if Server_Hop then
            pcall(function()
                        wait(wait_Time)
                        Teleport()
                        print("Finding new server")
            end)
        end
    end
end)


end
end)
------------------------------------------------------------------------------------------------SCRIPTS SIN KEY--------------------------------
local Main10Section = Main10:NewSection("SIN KEY (Son mas inseguros)")

Main10Section:NewButton("🐍Banana Suit🐍", "Utiliza Key y 12 scripts para utilizar", function()
    _G.AutoSteal = true
while _G.AutoSteal do
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Part") and v.Name == ("Currency") then
        fireclickdetector(game:GetService("Workspace").Currency.ClickDetector)
    end
end
wait()
end
end)


Main10Section:NewButton("🐍Farmea cofres y  frutas🐍v", "Utiliza Key y 12 scripts para utilizar", function()
    local Configs = {
        Join_Team = "Marines", -- select your team (Pirates/Marines)
        Stop_Farm = true, -- the script will stop working as soon as you drop a rare item from the chest (recommended)
        Farm_Chest = true, -- Auto farm chest
        Farm_Fruit = true,  -- Auto Collect Fruits (as soon as you find some fruit on the map the whole script will stop working to ensure that you won't lose it)
        Server_Hop = true, -- after collecting all the chests/fruits, you will be teleported to an empty server
        Auto_Reset = true, -- reset your player (recommended) (Anti Kick)
        Reset_Delay = 15 -- select the time your doll will reset (recommended 10, 15, 20)
      }
      
      local Chests_Farm = { -- select the chests you want to farm
        Basic = true; -- false/true
        Golden = true; -- false/true
        Diamond = true; -- false/true
      }
      
      -- ////////////////////////////////////////////////////////////////////////
      local placeId = game.PlaceId
      if placeId ~= 2753915549 and placeId ~= 4442272183 and placeId ~= 7449423635 then
      else
      
      _G.JoinTeam = Configs.Join_Team;
      _G.StopFarm = Configs.Stop_Farm;
      _G.FarmChest = Configs.Farm_Chest;
      _G.FarmFruit = Configs.Farm_Fruit;
      _G.ServerHop = Configs.Server_Hop;
      _G.AutoReset = Configs.Auto_Reset;
      
      task.spawn(function()
        while _G.FarmFruit == true do task.wait()
          local Workspace = game:GetService("Workspace")
          local Player = game.Players.LocalPlayer
          local PlayerRP = Player.Character:FindFirstChild("HumanoidRootPart")
          for _,v in pairs(Workspace:GetChildren()) do
            if Workspace:FindFirstChild(v.Name) and v.ClassName == 'Tool' and PlayerRP then
              _G.StopFarm = false;
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              repeat task.wait()
                PlayerRP.CFrame = v.Handle.CFrame
              until not Workspace:FindFirstChild(v.Name) or Player.Backpack:FindFirstChild(v.Name) or Player.Character:FindFirstChild(v.Name)
            end
          end
        end
      end)
      
      local plrTeam = game.Players.LocalPlayer.Team
      
      if plrTeam ~= 'Pirates' and plrTeam ~= 'Marines' then
        local a_1 = "SetTeam"
        local a_2 = _G.JoinTeam
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a_1, a_2)
      end
      
      task.spawn(function()
        while _G.StopFarm == true do task.wait()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
          for _,v in pairs(player.Backpack:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
          for _,v in pairs(player.Character:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
        end
      end)
      
      task.spawn(function()
        while _G.FarmChest == true do task.wait()
        local Workspace = game:GetService("Workspace")
        local plr = game.Players.LocalPlayer
        local plrRP = plr.Character:FindFirstChild("HumanoidRootPart")
        local FindSit = plr.Character:FindFirstChildOfClass('Humanoid') and plr.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local chest1 = Workspace:FindFirstChild("Chest1")
        local chest2 = Workspace:FindFirstChild("Chest2")
        local chest3 = Workspace:FindFirstChild("Chest3")
        if FindSit then
          plr.Character.Humanoid.Sit = false
          task.wait(0.2)
        end
          if chest3 and plrRP and chest3.Transparency < 0.1 and Chests_Farm.Diamond == true then
            plrRP.CFrame = chest3.CFrame
          elseif chest2 and plrRP and chest2.Transparency < 0.1 and Chests_Farm.Golden == true then
            plrRP.CFrame = chest2.CFrame
          elseif chest1 and plrRP and chest1.Transparency < 0.1 and Chests_Farm.Basic == true then
            plrRP.CFrame = chest1.CFrame
          elseif _G.ServerHop == true then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end
      end)
      
      task.spawn(function()
        while _G.AutoReset == true do
          local plr = game.Players.LocalPlayer
          local plrH = plr.Character.Humanoid
          plrH.Health = -math.huge
          task.wait(Configs.Reset_Delay)
        end
      end)
      
      task.spawn(function()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
          if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end)
      end)
      
      end
end)


Main10Section:NewButton("🐍Alone HUB🐍", "?", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.Config = {
    WebHook = "", -- Discord Webhook
    Team = "Pirate", -- Pirate, Marine
    Time = 120,
    Invisible = true, -- Please use bundle: https://www.roblox.com/bundles/238/Man,
    Melee = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        }
    },
    Sword = {
        Use = false,
        Z = {
            Use = true,
            Hold = 1
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Gun = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Fruit = {
        Use = true,
        Z = {
            Use = true,
            Hold = 3
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        },
        V = {
            Use = true,
            Hold = 0
        },
        F = {
            Use = true,
            Hold = 0
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/AloneHub/main/Bounty%20Beta.lua", true))()
end)
-- FIN DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN11 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII.
local Main11 = Window:NewTab("🎩Creditos🍷")
local Main11Section = Main11:NewSection("Redes")


Main11Section:NewButton("🐍Discord🐍", "Unanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Discord: https://discord.gg/vrv3Cg8Q", "Serpent")
end)


Main11Section:NewButton("🐍YouTube🐍", "Suscribanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Youtube: https://www.youtube.com/@Nescoroco/videos", "Serpent")
end)


Main11Section:NewButton("🐍Script Blox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Blox: pon *1nescoroco* en la busqueda de scriptblox", "Serpent")
end)


Main11Section:NewButton("🐍Roblox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Roblox: https://www.roblox.com/users/2399670479/profile", "Serpent")
end)




-----------------------------------------------------------------JUANKO'S MOD SECTION-----------------------------------------------------------




local Main11Section = Main11:NewSection("JUANKO'S MOD SCRIPTS")


Main11Section:NewButton("🐍MM2 Script🐍", "HUB Para Murder Mistery 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sLsf0HEH"))()
end)


Main11Section:NewButton("🐍Robar ID'S de sonidos🐍", "Uns script universal", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3aks6wJy"))()
end)


Main11Section:NewButton("🐍Script para TODOS LOS TYCOONS🐍", "Script para todos los tycoons existentes", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/DJvHjLPd"))()
end)


Main11Section:NewButton("🐍Zaque Hub"🐍, "Contiene Key - Es un AutoFarm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub"))()
end)


Main11Section:NewButton("🐍Da Hood Destrozer🐍", "Hub para Da Hood", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TSY3hAKW"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 FE🐍", "Un pack de animacion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QZqF6x2P"))()
end)


Main11Section:NewButton("🐍PRISION ADMIN HUB🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 + R15🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tcTds0ky"))()
end)


Main11Section:NewButton("🐍CDMS ADMIN CHAT🐍", "Un hub con comandos de Admin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1a5iCHpu"))()
end)


Main11Section:NewButton("🐍BrookHaven HUB🐍", "Un hub para BrookHaven", function()
    loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end)








-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB








-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos








-- DISCORD: https://discord.gg/ZRTkSVRp





-- SCRIPTBLOX: https://scriptblox.com/profile






-- ROBLOX: https://www.roblox.com/users/2399670479/profile
end)


MainSection:NewButton("🌃Tema Oscuro🌃", "Dark theme", function()
    -- Spanish hub
-- quisiera decir que este script
-- eN principio lo queria llamar "Ñ HUB"
-- pero por alguna extraña razon
-- al intentar escribir "Ñ" en el titulo del HUB,
-- era imposible hacerlo, pero
-- cuando intentntaba ponerlo en la descripcion,
-- si me era posible XD


-- Hub hecho por Nesoroco (Este HUB tiene EXACTAMENTE 2086 renglones, asi que porfavor denle like en la pagina de scriptblox y siguanme)



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("_🟩🇨🇴⬛🇲🇽⬛🟩🇵🇪⬛🐍SPANISH HUB - nescoroco🐍⬛🇪🇸🟩🇻🇪⬛🇦🇷⬛🟩_", "DarkTheme")

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB

-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos

-- DISCORD: https://discord.gg/ZRTkSVRp

-- SCRIPTBLOX: https://scriptblox.com/profile

-- ROBLOX: https://www.roblox.com/users/2399670479/profile

-- Menu
local Main = Window:NewTab("🌌Scripts Universales📄")
local MainSection = Main:NewSection("Universal's comunes")

MainSection:NewButton("🐍Caminar en las paredes🐍", "Va a cambir la gravedad segun tu poscicion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)


MainSection:NewButton("🐍Project validus v2🐍", "Aimbot bien insano wazaaa 👻", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Project-Validus-v2/main/Main.lua"))()
end)


MainSection:NewButton("🐍Cambiar De Servidor🐍", "Te va a unir automaticamente a un servidor aleatorio del juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gzdmr95u"))()
end)

-- CHOCLO ENORME DE SCRIPT ---------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍DELTA executor🐍", "es un ejecutador como el que usaste para hacer funcionaer el Ñ HUB, solamente que si un script no te funciona, puedes probar hacerlo funcionar con este", function()
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

MainSection:NewButton("🐍Congelarte a ti mismo FE🐍", "Se desplegara una pestaña la cual podras prender o apagar una opcion en la cual te congelas en la poscicion que la activaste", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SavaLava9/FEFreeze/main/FEFreeze.txt"))()
end)


MainSection:NewButton("🐍Gigachad HUB🐍", "Un hub como este pero gigachad xd", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Gigachad%20Hub%20V7.lua", true))()
end)

-- CHOCLO DE SCRIPTS 2 --------------------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍FPS gui🐍", "Sobre tu cabeza aparecera la cantidad de FPS a la que te va (Probablemente te apareceran 60)", function()
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
MainSection:NewButton("🐍Ser inmortal🐍", "No podras morir", function()
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
MainSection:NewButton("🐍AimBot - Punteria Automatica🐍", "Al activar este script todos tus tiros iran directamente a la CABEZA DEL ENEMIGO", function()
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

MainSection:NewButton("🐍NoClip - Atravesar las paredes🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
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
MainSection:NewButton("🐍OrangeX Hub V5🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt"))()
end)


MainSection:NewButton("🐍PSY HUB🐍", "Un hub.. Poco trabajado -_-", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)


MainSection:NewButton("🐍FE TELEPORT PLAYERS - Teletransportarse a alguien🐍", "Al activarlo, una ventana se abrira y  ahi tendras las intruscciones de como usarla", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)

local MainSection = Main:NewSection("Los mejores Universal Scripts")

MainSection:NewButton("🐍ADMIN YIELDS🐍", "¡Tendras comandos de Administrados!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


MainSection:NewButton("🐍Divine HUB🐍", "Es un hub en el cual se utilizo el mismo estilo que el Ñ HUB, solo que es capaz de utilizarse en juegos mas variados", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealCrazyfuy/DivineHubCracked/main/DivineHubV1'))()
end)


MainSection:NewButton("🐍EZ HUB (+150 JUEGOS)🐍", "¡El mismo nombre lo dice!, mas de 15 juego, es de los mejores hubs que eh visto y su interfaz esta muy bien trabajada, mis respetos al creador", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)
-- FIN DEL MAIN IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
--Aca habia un Main 2                      3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Al cual saque por que era inecesario,    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Podras ver cual era en las versiones     3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--1 y 2 del Spanish Hub                    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
-- FIN DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main3 = Window:NewTab("💰Prision Life👮")
local Main3Section = Main3:NewSection("Scripts")


Main3Section:NewButton("🐍Juanko Mods🐍", "Hecho por mi pana", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main3Section:NewButton("🐍Destruir los arboles🐍", "Este script esta diseñado mas para PVP, haciendo que tu enemigo no se esconda detras de los arboles", function()
    -- Hi, this script was created more specifically for PVP, so your enemy isn't 
-- hiding behind trees.

game:GetService("Workspace").Trees:Destroy()
end)


Main3Section:NewButton("🐍Tiger Admin🐍", "¡EL MEJOR SCRIPT TIPO ADMIN ABUSE DE TODO PRISION LIFE!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)


Main3Section:NewButton("🐍PrisonLife Hub🐍", "Contiene muchos scripts para Prision Life", function()
    local s = loadstring(game:HttpGet(("https://raw.githubusercontent.com/kiko200000000/ME/main/README.MD"), true))()
print(s)
end)


Main3Section:NewButton("🐍Prison Beaker V1.5🐍", "Un script muy bueno, con interfaz rara.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ryt9hGz6"))()
end)


Main3Section:NewButton("🐍Hacete el mas pija del server🐍", "NO, a comparacion de lo que se dice, no es FE.", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)


Main3Section:NewButton("🐍Valkyrie Script🐍", "Un universal script muy bueno en prision life", function()
    ected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'


,nil,nil;(function() _msec=(function(e,o,n)local K=o[(-#'howtodumpscript'+(((0x4b57-9682)+-#"impulse was here omg")/0xd5))];local G=n[e[(0x55b-703)]][e[((175143/0xed)+-#'null')]];local i=(-#'good googly moogly'+(129+-0x6b))/((-#"yiff"+(25530/((351+-0x77)+-#"IP grabbed")))-109)local r=((0xa2-(((0x60d6/74)-0xda)+-#'Bwomp'))+-#'never gonna give you up never gonna let you down')-(228/0xe4)local v=n[e[((-66+0x14b)+-73)]][e[((-0x40+363)+-#'me when they are is have the me when are is do me when')]];local P=(((-0x16+(0x8dae/186))-0x8f)+-#'Fucking losed 027728272728271')+(-#[[Me be like at 5am in the morning]]+(4828/0x8e))local U=n[e[((107748+-#{",";{};'nil',{}})/208)]][e[(-#'i love minors'+(-103+0x3f4))]]local _=(76-0x4a)-(0x43/(5628/(0x11f-203)))local F=(-#"nico der hurensohn"+((-#'Reduce meme string slowmode when plsplspls'+(((-#"imagine not being able to talk"+(-0xa0+70))+0x2466)/63))-82))local B=(676/(((0x95be-(0x4b89+-123))+-23)/113))local j=(-58+(-#{",";{};{};{};1;'}',103}+69))local C=((5200/((468-0xf6)-0x7a))-48)local p=((((0x105d+(-12772/0x7c))/18)+-#'panzerfaust')/0x36)local m=(456/(-#'ur mom is hot'+((((0x2c-68)+-#[[penis]])+-0x42)+0xde)))local c=(-#'niggers'+((-#[[dies of cringe]]+((-0x930/(-#{(function()return{','}end)();178,","}+87))-33))+85))local u=(44+(-#[[sussy chat sussy sussy]]+(((((10704/0x30)+-#'anime is for fags')+-109)+-#[[give me moonsex v4 or i will attach a car battery to your testicles]])-49)))local g=(6+-#{'}';(function()return#{('OMhmMO'):find("\104")}>0 and 1 or 0 end);'nil'})local b=(0x23+((((201+-0x3b)+-#[[this is an ip grabber]])-0x66)-0x33))local O=((56+-#{'}';'nil';{};",",194,27})-0x2f)local t=((45+-#{{},(function()return{','}end)();84;84})+-0x26)local w=(6+-#{1,{},",";91})local k=(0xda/((348+-#{1,36,(function()return{','}end)(),",";(function()return#{('BhffMF'):find("\102")}>0 and 1 or 0 end);36;'nil'})-0xe8))local s=(0x1d0/((0x422-(565+-#{71,",";47,47}))-265))local f=(((-0x168/(0x8e-122))+0xc2)/88)local x=(-#{'}';{},79}+5)local h=(((-#[[warboy hates you]]+(-33+(-#{(function()return#{('FOBmBL'):find("\66")}>0 and 1 or 0 end),1,(function()return{','}end)();'nil','nil';'nil','}'}+1253)))/171)+-#[[sussy]])local Y=e[(2700-0x569)];local R=n[e[(0x7ec0/169)]][e[(479+-#{28;14,{};28})]];local L=n[(function(e)return type(e):sub(1,1)..'\101\116'end)('*,^&#&/&')..'\109\101'..('\116\97'or'$&!^.=$!')..e[((-16+0x23c)+-#[[i dont fucking care if its your own ui]])]];local A=n[e[((1217-0x27d)+-#[[I like watching videos of black men shaking their booty cheeks]])]][e[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]];local D=(0xa4/82)-(0x79-((-0x389a/210)+188))local N=(((((34060/0xa)/0x1a)+-#"Impulse real 2022")-90)+-#"I watch gay furry porn")-((0xccd/113)+-#[[goofy ahh uncle productions]])local H=n[e[(39168/0xcc)]][e[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]];local o=function(o,e)return o..e end local S=(9+-#{'}','nil',{},1;'}'})*(97+((-188+0x20)+63))local J=n[e[(2397-0x4df)]];local a=(0x6/3)*(((0x30fc3e-1605182)/0xbe)/66)local I=(2154-0x46a)*(0x71-((0x16c-(0x20a-(0x184+-103)))+-#[[pairu sucks dick]]))local V=(((0x141810/155)+-72)/162)local M=(-#'monkey mode'+((-#'Impulse real 2022'+(208-(-0x2f+173)))-0x34))*(0x28+-38)local y=n[e[(-#[[zxcvbnm]]+(0x855-1115))]]or n[e[((((1166+-0x14)+-#'0nly was here mf')-582)+-#"Mulheres me deixam de pau duro")]][e[(-#[[zxcvbnm]]+(0x855-1115))]];local d=((-#"testpsx dupe no scam legit 2022 free no virus"+(0xb-(0x2ec/44)))+0x133)local e=n[e[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]];local z=(function(d)local a,n=1,0x10 local o={j={},v={}}local l=-_ local e=n+r while true do o[d:sub(e,(function()e=a+e return e-r end)())]=(function()l=l+_ return l end)()if l==(S-_)then l=""n=D break end end local l=#d while e<l+r do o.v[n]=d:sub(e,(function()e=a+e return e-r end)())n=n+_ if n%i==D then n=N A(o.j,(H((o[o.v[N]]*S)+o[o.v[_]])))end end return U(o.j)end)("..:::MoonSec::..!*%&/+^,;.:_#$}=.=^+%,}_:=,^&,=__=;&/=!_#=.&+.*=$=:&^,;}+,*/}..$!&#&;,/_,*/#!_#!%!}&:,^_%==&_,^_,}&/#,;_/=*&$,._#=^&:._*^=&&=,%}=&_+,!&.=^*+*,$_.=^&+.=,:=,&&,/%!:}$.#;!*/=_:^.*++*:$__$=%_&,,&_,%&;}.^$!=$&.,^$&&}&::^_&^=&_,,_&=&*#,;}/=*^$,.#+=%.*.:_,%&&=#__;!/&!;#_.&^!*,$_.=^;%,}#:=,,//=__=;&/=!_$!.&^.%=$=:^^,&%}=_&,,&_%$#&;:/_*%$&.;+_*==;:,^}%==+_,,_&=*+=:;_+%*&$:._+=%&=.=*^=&,=,#*,=/&!,$$;=+&*#$_:%^&%,}_:=,&&,!*_=;&/,!_#=:++,*_}^:&^:%_}=_&,_&_==#;;,^.!=$/.,+_++}&_!^_&&=&_,,_+**=#,.+/=*;$,._+=/&},:_,.&&!*__;!/&%,#_;=+}*,$_.=^_%,}_:=,&//=_#,;&/,!_#=.&+,%.$=:_^,%_}=_&,,&_!:#&.+/_**$&_,+_*=}}:,,^%==+_,,_&=!&$%;_+**&$.._+=%&},_^^=&}=,_},=^&!,#_.:+&%%$_:&^&%,}_:=,$&,=$_=;+/,!_#=.&+_*_};:&,*%_}=_&,,//==#^;,/$!==&.,+_%%}&_!^_&&=&__.=&=!;#,../=*/$,:$,&%&}#:_,^&&=,__,=;^!,$!;=+/*,$=.=^&&#}__&,&&.=__=;&/,+##=.&+,*#$=:&^,%$=!_&,,&_==#&;,/_!=$&.,+_*=}::,^_%==&#!,_&=!&#;;_/=*&$,._+=%&},:_^=&&=,__,=/&!,#_;=+&*,$_.=^&%,}_:=,^&,=__=;&/,!_#=.&+,*_$=:&^,%_}=_&,,&$==#&;,/_!=$&.,+_%!}&:,^_&*=&_,,_!*!;#,;_/=;&&:=##_;=,;:_^=&&=,__,=/&!,}.;=+&*,}$$%^&%.}__*,&&,=_$*_^/,!}#=.++,*_$=_+,_%_=&_&,;&_==#&;$,:!=$;.,+_*=}/:,^=%==&=/,_&=!&#.;_/=*&$,$;+=%&},:_^=&&=,___#/&!,#_.%+&*,$_.=:!%,}_:=,/&,=__=;&/.!_$&.&+.*_}!:&^$^#}=_&,,/,==#/;,/#!=$,:/+_*=}&_&^_&!=&__;;&=!&#,:+/=*/$,:*,}%&},:_;.&&=;__;!/&!_$;;=+&*,=+.=^/%,=*#},&&;=_$.;&/;!_#=.&+_%;$=:&^,/+}=_/,,&_!&#&;_/_**$&.:+_*=},:,,!%==^_,,$&=!.!;;_+&*&}#._^!%&}#:_,&/!=,__,=+;!,##;=+,%/$_.=^&/*}__!,&&,==_=;,/,!$#=.^+,*_}&:&^#%_=%_&,.&_!+}%;,/=!=}$.,+#*=};:,^=&#=&_,,_+.!&#;;_+&%!$,._+=&}},:#^=&&%#__;&/&!,#_;=+&*,*/.=^,%,}#:=,&&,=_$/;&/_!_$*.&+,*_$==/^,%_}=_/,,&_==%=;,/_!=.+.=+_*=}&*!$$,#^^%!_}:;+;%..&/=*&$,}&$&.,+,=_$}:^^_*$;%/&!,#_=$_;;}.$_%^&%,}_!%};.:+}%/=^_:,*//==#&./==!=$^.%+^*;$_#$!&#&;,/_,^&/!/#!}*},:,^_%=&_*#$#:&&+$*;_/=*&%*!}#}.*%_*!$%:%+_%!}*+*!,#_;=:*,#+%*&$%.++}*}$.:_/+*%$%.+=$$,.&+,*_%,*,$_._&=%%}::=!*#,;,/_!=*_=#_#;&:+_!^_%==&*}$#:#^;&:=!_$;^&#;$^.%&},:__^.;^_!}}/_+,$&/=%_;/.$=.=^&%,+_*!}+:__$$/;&/,!_&&=##:,}/}*+#_+.+^*::^:%+!!;#=,$;/%$!=_!;:*+:}^_%==&*$}$:},!*.$%.*,+$=._+=%&/.*/}&^*+.&&}}_+#.$*;=+&*,*#!#$%.#+.%&,+&_=__=;&:}^#&#=;}.%/$=:&^,:%+}%+}%:}^=%/}:_!!*$$.,+_*=%.*!$$.//^*#}$_+^;&.;$+:*&$,._:_.%/:!#$_;&^&*#=;:;,.#$.^+&*,$_=+#;;:+=*}}+^:}$#;;&/,!_*%=__;;$/!!^$_.!^*/+,}&_==#&}__/;%&^!^#$;&}+_*^_%==&!:=!_*^.%;}}_/+:/#!/.*%#},:_^=;:+;%,}:_^,,&!=/_,*.}!.=^&%,&}*%}%:.^!#*;:/,!_#=};#:;!+*}##_^+;*_,,,&_==!^};_},,!+:&+_*=}&};#=.&&;%=}=_*^/!:}##%,_$.:!+=%&},}}$,.;^:%=;*^*!,#_;=_/;+=_!;#,.!+:%&.&:#^}%/},^,,=&,=;,,;*+*!;##/_^+*;}.:}^;&%=+!$%!$&.,+_,*/;*,$,.;+^*;}=:/^,*:==_};+&;!%#/}+}$:_^=&&^:%&}!:,,^/%%*+$*,$_.=::;#+=!%$;:.,*%;}^:#&$$:.&+,*_%_*%#:;#+_!&}&.#,;%;=.!$*:$&.,+_^_/;!;#=./^+*.}::!,+%_*$+_*&$,.__&.++!*%$^.;^.!!=+:;,+&==*+;*,$_.=_;^_+/*#:+^.!+_=;&/,,,&}=/__;}+&*+$!..+^:+,=&_==#&#._:,&/#$}$/.*+%$.,/%==&_,$%:},+&%=}_=,/&:!!=*&%},:_^=,/+_*=#/_.^#&.!&._,;/.!&#=;#+$:*,;&,=__=$+_!,%&,!,;.%+$=:&^,;:/}%^$#.},/&+}#_!;!!+:%+_*=}&}:$/:&+#&*}!:$,^%==/_=*+$$._+=%&&,*,$!:#+#%$}*/_!,#_;=.^,;/,!_#+;;/}*:,+/%=__=;&;;^=&#=##+^$//*!$^.=+/*+,}&_==#&#:_/;&&#**#!;$$+::^_%==&=}}!_&&+$!;_/=*&/}!!#*;_+^*:$:,#&__$;^/&!,#_$,#,;_/_}^#;._$$_;,&&,=_!*=%:_;/*+!%#.,}//!+,&%_}=_&#!:.,+&%=%_!^%&;!.$*;/++&.^=%==&_,#&:/^/%_*$+**&$,._#}.^:._+^=&&=,!+$%.%++*!=$_^;^&=!/%+%}}_:=,&,:^:&*};;};!&;=+^+*_$=:&#};#+#*;}::!^$&^}#,:,,/,!_#_}*}::,^_%=/&%&$#_;^;&.=}+**}$,._+=^_+_*=$=;^+#%$=+:#^:&!+*^_*,$_.=$&;;+}%&$;..^/%$_*::,:&##%#.,#+^$%$#,^%%}:_$:+//;+.!/_!=$&!}_#;_/}*:$_./+;*_,$//!&#,;_.%,=/^*%#$_+}#:_^=&&//%:}$:;;!#$.%+&*,$_}_#;;},$_#,&&,=_%!=&_!&:/^=;_.;&/}*%$%.}*}_+;!&_==#&$/:#,^/*!!#=.//,!#+$&^=&_,,_;=^=%;}}_/+#&_%$^^%&},:_$,:,^_%__.,%&^#$..+&*,$_}:##;:+^==$=.;,/%/=+$.!=#=.&+,^,//!.$_+$=/_&,,&_+/&^}#_$/.#+$,+_*=}&!=$=:&^&%:_+^}&%&.}##^/*&}!/$&;_+#!$}/:^+#%$}%_%,+&==/#*;_!.!%$%./*:!%}%:/^!!/=___,$&!$^_=;//=*^.^.**}%!$;:/^$=%}$_$,/&;#+#,.///..,&%==&_,_$:}^,/!$%#;;+/^%$^&%&},:_$^./^/%!;*/_!,#_;=:&;&&#!%#;,!/=}.$+^$=__=;&:=,=/&!&#:++!}$%#=.:+}*}}:^.,.%/=,_/,//+#+_};}+!$^$&.}^%%%}}^}^^%;==_%,_!^##.*+_*}}*:,^#%=}:}*::,^&}!!#$;+!:.*^;%,}_:=__:^^.%/=#/.*%#=.&+,^&+&*,$,,%+/%,&.&}==#&;,.!^%%&;.^_*=}&:,_&:/^!*;}.:}^#%_$$_};%/_}_#!.++_$$,.&&=,__};_^,&%}=_#%;:+!**#;+.=/:=,&&,+}%,}/_.^#&%!,_#;$$*:}^,%_}=*^$=:!^%%}}::#,_&==##$**}/:,^_%=+%:.;&&=!&#,$}_%;+&#!.:^.;+!$$,,&&=,__#;_*,:&==!#*,:/!.*^,%,}_:=},:!^;%//++^!_#=.&__;}/+#&$!.}!=*_$;:$^#%=}#_};%#+:&+_*=}&}}_^../;%##!:,+%&$!*#^;,#.:*+=%&},=$$/:!^^%=}//+!=#_;=+&^:/!*&_^;:+:%*$;#.!^_=;&/,,,&/=/__;!+**^$_;#^&%^&./!==#&;,.*,}/+=:#!;*}_:,^_%=&_%#};:!,*&^=/_&!+$_._+=%&&,!#}*:,}.#/,=/&!,!$=}_,.!%*!}$+;:+!/*,,&,=__=$*:;,;&/.++:*_$=:&:;,_&;/+;_&_==#&$:_!;&%&!.#/;#//*.}/,=+/%.}=;%/.&.}#_#,;!.:*+=%&},%&$=.^+;%,}_/+*!#_;=+&^,/,!!$#;#+$=^};:!_$#+;&/,!_%/!^_#;$%;!,+.&*}=_&,,;;^}&*=%_!;;^+._+_*=}&=*$}.}^*,.,}&=!&#,}#_=,#!_._+=%&}.}&^=&&=,_#,=/&!,$$;=+&*,$_##^&%,}_:=,&&,=__=;&/,!_#=.&+,*_}!:&^,%_}=_&;.&_==#/;,:,!=$&.,^$*=}&:;^_;^=&_,,_^+!&#,;#/=*#$,.#+=&*},:=,#&&=,__;;/&!;#_;=:/*,$_.=^/%,}_:=,+^==_#!;&/,!_#=.&^.&%$=:/^,%#}=_&,,/$==#&;;/_&,$&.,+_&*}&:,^$%==;_,,_&=%&#,;_+**&$..__!%&=.:_^=&,=,!^,=/&!,#_;=+&*.$_:&^&%,}_:=,&&,=#_=;&/,!$#=.&+,*_}!:&^;%_=!_&;.&_==#/;,.:!=$&.,^$*=}&:.^_&/=&_,,_+=%=#,;$/=*+$,$;+=/&*,:_,*&&=.__.//&%,#_;=++*,$$.=#,%,=$:=,&&:=_#/;&/,!_}=.&+,*}$=:^^,^;}=$&,,&_!%#&;:/_%/$&_,+_*=}^:,^}%=+#_,;$&=!&#_;_+/*&$,._,=%&},:=^=&,=,!*,=/&!,#_./+&*=$_.=^&&.}_:=,.&,*__=;&/,*$!%.&+}*_%.:&^,%_}=$$,,/&==#+;,/_!=}+.,+_%;}&#&^_%==&_,,_&=!$#,;}/=*&$,:$+=%&=%:__$&&=,__,=/&!,$,;=+,*,$_.=,+%,}__#,&&_=__=;&/,!_#=.;+,%;$=:/^,&$!&_&,$&_!/#&;,/_%=!:.,^**=}.:,;}%=!+_,,_/,!&!+;_/=*&$,._+=%.},_&^=&+=,$_,=/&!$#_.++&+*$_.=^&%,=&:=,;&,=__=;&/,!_$+.&+=*_}*:&,.%_}=_:,,/!==#&;,^_!=$&.}+_%^}&_!^_%==&_,;/&=!/#,;_/=*&$,._^.%&}$:_^=&&=,$&,=/:!,$+;=+/*,$_=!^&%,}__!,&&,=_");local U=(0xce-146)local n=97 local l=_;local e={}e={[((131-0x65)+-#[[use luraph if want lost money]])]=function()local o,_,r,e=v(z,l,l+P);l=l+M;n=(n+(U*M))%d;return(((e+n-(U)+a*(M*i))%a)*((i*I)^i))+(((r+n-(U*i)+a*(i^P))%d)*(a*d))+(((_+n-(U*P)+I)%d)*a)+((o+n-(U*M)+I)%d);end,[((0x51/9)+-#'nigglet')]=function(e,e,e)local e=v(z,l,l);l=l+r;n=(n+(U))%d;return((e+n-(U)+I)%a);end,[(-0x6f+114)]=function()local e,o=v(z,l,l+i);n=(n+(U*i))%d;l=l+i;return(((o+n-(U)+a*(i*M))%a)*d)+((e+n-(U*i)+d*(i^P))%a);end,[(704/0xb0)]=function(o,e,n)if n then local e=(o/i^(e-_))%i^((n-r)-(e-_)+r);return e-e%_;else local e=i^(e-r);return(o%(e+e)>=e)and _ or N;end;end,[((173-0x8a)+-#'Nicuse is good at sucking dick')]=function()local o=e[(155/0x9b)]();local l=e[(-0x20+33)]();local x=_;local n=(e[(0x18+-20)](l,r,S+M)*(i^(S*i)))+o;local o=e[((62-0x35)+-#[[ballz]])](l,21,31);local e=((-_)^e[(192/(-72+0x78))](l,32));if(o==N)then if(n==D)then return e*N;else o=r;x=D;end;elseif(o==(a*(i^P))-r)then return(n==N)and(e*(r/D))or(e*(N/D));end;return G(e,o-((d*(M))-_))*(x+(n/(i^V)));end,[(-50+0x38)]=function(o,i,i)local i;if(not o)then o=e[(28-(-#"heil eco mother fuckers"+(0x1a90/136)))]();if(o==N)then return'';end;end;i=R(z,l,l+o-_);l=l+o;local e=''for o=r,#i do e=Y(e,H((v(R(i,o,o))+n)%d))n=(n+U)%a end return e;end}local function I(...)return{...},J('#',...)end local function R()local b={};local l={};local o={};local h={b,l,nil,o};local n={}local s=(10+-#{(function()return{','}end)(),",",(function()return{','}end)(),{};1})local d={[(-#[[nate higger nuck figgers and nill kiggers]]+(0x7f-83))]=(function(o)return not(#o==e[((0xfc-157)+-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]])]())end),[(0x1c/28)]=(function(o)return e[(0x42-61)]()end),[((-0x52+134)+-#'da hood money generator 2022 working free no virus')]=(function(o)return e[(0x3f6/169)]()end),[(264/0x42)]=(function(o)local l=e[(-#[[impulse is hot]]+(4240/0xd4))]()local e=''local o=1 for n=1,#l do o=(o+s)%d e=Y(e,H((v(l:sub(n,n))+o)%a))end return e end)};h[3]=e[(122+-0x78)]();for e=r,e[(0x24+(-6370/0xb6))]()do l[e-r]=R();end;local o=e[((12993/0xb7)+-#"pussy day pussy clean pussy fresh pussy pretty pussy fat full of fresh")]()for o=1,o do local e=e[((112-0x5e)+-#'pairu sucks dick')]();local l;local e=d[e%((((37074/0xde)+-#'ambattakam')+-0x62)+-#'monkey mode')];n[o]=e and e({});end;for h=1,e[((143-0x62)+-#[[MoonsecV2 deobfuscator 2020 free 100 percent]])]()do local o=e[(-60+0x3e)]();if(e[(132/(-0x4a+107))](o,_,r)==D)then local a=e[(464/(-#'impulse reel pastebin'+(32606/0xee)))](o,i,P);local l=e[(113-0x6d)](o,M,i+M);local o={e[(459/0x99)](),e[((-#"get some bitches"+(-0x34+-21))+0x5c)](),nil,nil};local d={[(0x6f-(-108+0xdb))]=function()o[u]=e[(0x3a+-55)]();o[B]=e[(651/0xd9)]();end,[((0x9e-106)+-#'how to find my dad at the dollar store getting milk')]=function()o[t]=e[(-96+0x61)]();end,[((0x7b-(-0x3e+163))+-#"get good use moonsec")]=function()o[c]=e[(0x8d/(187+-0x2e))]()-(i^S)end,[((-19404/0xfc)+0x50)]=function()o[O]=e[(((-0x67+231)+-#"moonsec backrooms confirmed")-0x64)]()-(i^S)o[m]=e[(651/0xd9)]();end};d[a]();if(e[(468/0x75)](l,r,_)==r)then o[w]=n[o[x]]end if(e[(0x374/221)](l,i,i)==_)then o[t]=n[o[c]]end if(e[(728/0xb6)](l,P,P)==r)then o[m]=n[o[m]]end b[h]=o;end end;return h;end;local function N(e,M,U)local a=e[i];local n=e[P];local H=e[_];return(function(...)local d=n;local z=J('#',...)-r;local Y={};local l=_;local e=_ e*=-1 local P=e;local v=I local n={};local D=a;local S={};local I={...};local a=H;for e=0,z do if(e>=d)then Y[e-d]=I[e+r];else n[e]=I[e+_];end;end;local e=z-d+_ local e;local d;while true do e=a[l];d=e[(128+-0x7f)];o=(15422400)while d<=(0x79+-81)do o-= o o=(10279710)while d<=(91-0x48)do o-= o o=(9366620)while d<=(-#'never gonna give you up never gonna let you down'+(173-(343-0xe3)))do o-= o o=(7632625)while d<=(-0x3c+64)do o-= o o=(161499)while d<=(113-0x70)do o-= o o=(10055220)while(0x4b-75)<d do o-= o n[e[f]]={};break end while 4035==(o)/((-0x2d+2537))do U[e[g]]=n[e[x]];l=l+_;e=a[l];n[e[h]]={};l=l+_;e=a[l];n[e[f]]={};l=l+_;e=a[l];U[e[b]]=n[e[x]];l=l+_;e=a[l];n[e[x]]=U[e[b]];l=l+_;e=a[l];if(n[e[f]]~=e[m])then l=l+r;else l=e[t];end;break end;break;end while 533==(o)/((0xa5b4/140))do o=(1990156)while d<=((51+-0x19)+-#'big niggers sucking cock')do o-= o local e=e[h]n[e](n[e+r])break;end while(o)/((2147-0x457))==1921 do o=(977500)while(117-0x72)<d do o-= o n[e[h]]=n[e[b]]-n[e[j]];break end while 391==(o)/((5027-0x9df))do n[e[w]]();break end;break;end break;end break;end while(o)/(((808800/0xf0)+-#"Protected vírus"))==2275 do o=(5824336)while(-#"you get no absolute bitches"+(0x6d-76))>=d do o-= o o=(1617364)while d>(76+-0x47)do o-= o do return n[e[w]]end break end while(o)/(((2532-0x50d)+-#'IP grabbed'))==1316 do n[e[f]]=#n[e[c]];break end;break;end while 3128==(o)/((0x79d+-87))do o=(4726440)while((0xc9-146)+-#[[never gonna give you up never gonna let you down]])>=d do o-= o local o=e[h]n[o]=n[o](y(n,o+_,e[b]))break;end while(o)/(((0xd99-1755)+-#[[atakan der nigga]]))==2764 do o=(7549556)while d>((129+-0x5b)+-#"Nicuse is good at sucking dick")do o-= o n[e[h]]=M[e[b]];l=l+_;e=a[l];n[e[s]]=#n[e[u]];l=l+_;e=a[l];M[e[O]]=n[e[k]];l=l+_;e=a[l];n[e[w]]=M[e[g]];l=l+_;e=a[l];n[e[x]]=#n[e[b]];l=l+_;e=a[l];M[e[g]]=n[e[s]];l=l+_;e=a[l];do return end;break end while 2212==(o)/((((542935-0x42483)/0x4f)+-#[[how do i get moonsex v3]]))do if(n[e[f]]~=e[B])then l=l+r;else l=e[c];end;break end;break;end break;end break;end break;end while 2983==(o)/((-#'Only a to Z 0 to 9 is allowed'+(6462-0xcdd)))do o=(8946000)while(0x71-99)>=d do o-= o o=(41055)while(-#[[you cut your pubes with nail clippers]]+(1104/0x17))>=d do o-= o o=(1456728)while d>((0xb4/6)+-#[[free pornhub premium]])do o-= o local l=e[b];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[s]]=o;break end while(o)/((2273-0x49d))==1334 do n[e[f]]={};break end;break;end while(o)/((-0x6f+132))==1955 do o=(3731398)while(63-0x33)>=d do o-= o if(n[e[x]]==n[e[m]])then l=l+r;else l=e[O];end;break;end while 1814==(o)/((4231-0x87e))do o=(1432320)while((129-0x60)+-#'get good use moonsec')<d do o-= o local e=e[h]n[e]=n[e](y(n,e+_,P))break end while(o)/((0x40d-557))==2984 do l=e[g];break end;break;end break;end break;end while(o)/((6839-0xd67))==2625 do o=(1288844)while d<=(0x86+-118)do o-= o o=(7581501)while d>(1800/0x78)do o-= o M[e[O]]=n[e[x]];break end while(o)/((-0x48+2439))==3203 do if(n[e[w]]~=e[m])then l=l+r;else l=e[c];end;break end;break;end while 1538==(o)/((0x6a1-859))do o=(2876920)while d<=(140-0x7b)do o-= o local d=D[e[t]];local _;local o={};_=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[p]do l=l+r;local e=a[l];if e[(-#[[Nsrds GAYYYYAIAHAKAJAVAHAUA]]+(108-0x50))]==61 then o[_-1]={n,e[b]};else o[_-1]={M,e[u]};end;S[#S+1]=o;end;n[e[x]]=N(d,_,U);break;end while(o)/((-#'Help I cant think of a funny and original meme string pls help'+(0x868+-64)))==1420 do o=(7350772)while d>((0x10e-186)+-#'I have stolen your father figure and all your milk muahahahahahaha')do o-= o local l=e[f];local o=n[e[c]];n[l+1]=o;n[l]=o[e[m]];break end while(o)/((4053+-0x47))==1846 do local o=e[s]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break end;break;end break;end break;end break;end break;end while 3087==(o)/((549450/((0x114+-48)+-#"Luraph v13 has been released changed absolutely fucking nothing")))do o=(139536)while((72+-0x1c)+-#"Protected vírus")>=d do o-= o o=(9098854)while(85+-0x3d)>=d do o-= o o=(1555918)while(-29+0x32)>=d do o-= o o=(388278)while(-#'if found dad when back from milk then print yay end'+(236-(196+-0x1f)))<d do o-= o do return n[e[h]]end break end while(o)/((47286/0x47))==583 do n[e[w]]=U[e[b]];break end;break;end while(o)/((260039/0xf1))==1442 do o=(11491320)while(0x646/73)>=d do o-= o local e=e[x]n[e]=n[e](y(n,e+_,P))break;end while(o)/((-46+0xe75))==3144 do o=(2257752)while d>(103-(-#"sussy chat sussy sussy"+(260-0x9e)))do o-= o local o=e[x]n[o](y(n,o+r,e[u]))break end while 906==(o)/((2566+-0x4a))do local d;local i,c;local r;local o;U[e[O]]=n[e[s]];l=l+_;e=a[l];n[e[x]]=U[e[t]];l=l+_;e=a[l];n[e[s]]=U[e[g]];l=l+_;e=a[l];o=e[x];r=n[e[t]];n[o+1]=r;n[o]=r[e[p]];l=l+_;e=a[l];n[e[f]]=e[u];l=l+_;e=a[l];o=e[x]i,c=v(n[o](y(n,o+1,e[u])))P=c+o-1 d=0;for e=o,P do d=d+_;n[e]=i[d];end;l=l+_;e=a[l];o=e[h]n[o]=n[o](y(n,o+_,P))l=l+_;e=a[l];n[e[f]]();l=l+_;e=a[l];n[e[x]]=e[u];l=l+_;e=a[l];n[e[h]]=U[e[g]];break end;break;end break;end break;end while(o)/((0x98baa/246))==3578 do o=(823116)while d<=((3264/0x60)+-#[[Hey skid]])do o-= o o=(6297676)while d>(-#[[Asses]]+(0x75+-87))do o-= o n[e[k]]=n[e[g]]-n[e[m]];break end while 3556==(o)/(((0x70e+-22)+-#'i love minors'))do M[e[g]]=n[e[x]];break end;break;end while(o)/((-#[[Protected vírus]]+(183327/0x35)))==239 do o=(13384364)while d<=(81-0x36)do o-= o local o=e[k];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[b];else n[o+3]=_;end elseif(_<n[o+1])then l=e[b];else n[o+3]=_;end break;end while(o)/((-27+((732564/0xcc)+-#'zykem krul')))==3766 do o=(13564522)while((201-0xa1)+-#'mike litoris')<d do o-= o l=e[t];break end while(o)/(((17403828/0x4e)/58))==3526 do local M;local d;local b;local o;n[e[f]]=U[e[t]];l=l+_;e=a[l];n[e[k]]=n[e[t]][e[C]];l=l+_;e=a[l];o=e[s];b=n[e[g]];n[o+1]=b;n[o]=b[e[m]];l=l+_;e=a[l];n[e[w]]=n[e[c]];l=l+_;e=a[l];n[e[f]]=n[e[O]];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];o=e[h];b=n[e[O]];n[o+1]=b;n[o]=b[e[F]];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];d={n,e};d[r][d[i][s]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[s]]=n[e[u]]%e[B];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];b=e[g];M=n[b]for e=b+1,e[m]do M=M..n[e];end;n[e[x]]=M;l=l+_;e=a[l];d={n,e};d[r][d[i][x]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[w]]=n[e[u]]%e[p];break end;break;end break;end break;end break;end while(o)/((0xf8a/78))==2736 do o=(6336177)while d<=((-0x2f+120)+-#'psx real dupe steal all ur pets no joke')do o-= o o=(8154800)while d<=((-58+0x5e)+-#[[ballz]])do o-= o o=(392310)while((172-0x7a)+-#[[Impulse youtube real]])<d do o-= o if(n[e[x]]==n[e[B]])then l=l+r;else l=e[O];end;break end while 135==(o)/((0x1712-3000))do n[e[f]]=n[e[c]]%e[B];break end;break;end while(o)/((0x44a70/74))==2146 do o=(8681802)while d<=(-#[[if syn request then print your mom then end and then kill yourself]]+(233-0x87))do o-= o local o=e[w]n[o]=n[o](y(n,o+_,e[t]))break;end while(o)/(((2670+-0x79)+-#"Ur mom"))==3414 do o=(8214112)while d>(-0x2d+78)do o-= o n[e[k]]();break end while 2606==(o)/((0xa6380/216))do if(n[e[f]]~=n[e[m]])then l=l+r;else l=e[t];end;break end;break;end break;end break;end while(o)/((-#[[Negro]]+(821688/0xdb)))==1691 do o=(800541)while d<=(4329/0x75)do o-= o o=(3634590)while(0x1d1f/213)>=d do o-= o n[e[k]]=M[e[c]];break;end while(o)/((0x62b+-124))==2498 do o=(4959568)while(0x1290/132)<d do o-= o local o=e[w];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[c];else n[o+3]=_;end elseif(_<n[o+1])then l=e[u];else n[o+3]=_;end break end while(o)/((3256-0x674))==3092 do local o=e[k];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[c];n[o+3]=_;end elseif(_>=n[o+1])then l=e[O];n[o+3]=_;end break end;break;end break;end while(o)/((0x1bd98/56))==393 do o=(1228339)while d<=(0x1c34/190)do o-= o local o=e[h]n[o](y(n,o+r,e[t]))break;end while 2653==(o)/((69913/(-82+0xe9)))do o=(5342240)while d>(-#[[game players kick localplayer kicked by nicuse and beliveri12 ahhahahahahahhaha]]+(5192/0x2c))do o-= o n[e[k]]=N(D[e[O]],nil,U);break end while(o)/((5602-0xb12))==1930 do n[e[h]]=U[e[c]];break end;break;end break;end break;end break;end break;end break;end while 4080==(o)/((7648-0xf1c))do o=(11961030)while(0x2850/172)>=d do o-= o o=(1582632)while d<=((0x3078/188)+-#"atakan der nigga")do o-= o o=(4754217)while(78+-0x21)>=d do o-= o o=(1796703)while d<=(-#"Ur mom"+(203-0x9b))do o-= o o=(2181200)while(-#'you can pull my IP but you cant pull any bitches fucking loner'+(-0x5c+195))<d do o-= o local d;local o;n[e[s]]=n[e[t]];l=l+_;e=a[l];n[e[x]]=e[c];l=l+_;e=a[l];n[e[x]]=n[e[O]];l=l+_;e=a[l];n[e[h]]=e[g];l=l+_;e=a[l];n[e[x]]=n[e[g]];l=l+_;e=a[l];n[e[x]]=e[t];l=l+_;e=a[l];o=e[k];d=n[o];for e=o+1,e[b]do A(d,n[e])end;break end while(o)/((0x64d-834))==2800 do local o=e[s];local l=n[o];for e=o+1,e[b]do A(l,n[e])end;break end;break;end while(o)/((1347-0x2de))==2931 do o=(11054660)while(-#'panzerfaust'+((487-0x11a)-0x97))>=d do o-= o n[e[w]]=(e[t]~=0);l=l+r;break;end while 3391==(o)/((6612-0xd18))do o=(2262007)while(-#'If not skid then return hasbitches end'+(-0x52+164))<d do o-= o U[e[c]]=n[e[k]];break end while 2603==(o)/((0x305f4/228))do n[e[x]]=n[e[c]][e[B]];break end;break;end break;end break;end while(o)/(((72361+-0x51)/0x28))==2631 do o=(1124188)while(0x8d-94)>=d do o-= o o=(366471)while d>(0xb3-133)do o-= o local i=D[e[c]];local d;local o={};d=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[C]do l=l+r;local e=a[l];if e[(92+-0x5b)]==61 then o[_-1]={n,e[O]};else o[_-1]={M,e[c]};end;S[#S+1]=o;end;n[e[f]]=N(i,d,U);break end while(o)/((-#[[Negro]]+(0x6e62a/181)))==147 do n[e[h]]=n[e[O]][n[e[p]]];break end;break;end while 676==(o)/((3360-0x6a1))do o=(10836215)while d<=((-0x62+151)+-#"Bwomp")do o-= o n[e[w]]=n[e[g]][e[p]];l=l+_;e=a[l];n[e[s]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[s]]=U[e[u]];l=l+_;e=a[l];n[e[h]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[f]]=n[e[O]][e[C]];l=l+_;e=a[l];n[e[s]]=n[e[c]][e[m]];l=l+_;e=a[l];n[e[h]]=U[e[c]];l=l+_;e=a[l];n[e[w]]=n[e[b]][e[C]];l=l+_;e=a[l];n[e[w]]={};l=l+_;e=a[l];n[e[x]]=e[c];break;end while(o)/((-68+(-#"i dont fucking care if its your own ui"+(-0x24+2937))))==3877 do o=(768636)while(0xac+-123)<d do o-= o if not n[e[k]]then l=l+r;else l=e[u];end;break end while(o)/(((-0x3d+(-#"cilerteddoesntlikeburgers"+(-0x6c+862)))+-#"impulse loves moonsex"))==1188 do n[e[s]]=n[e[g]][e[j]];break end;break;end break;end break;end break;end while(o)/((558576/(-#"fatee is gay 0nly on top"+(579-0x153))))==612 do o=(2907660)while d<=(-#'you get no absolute bitches'+(0x668/20))do o-= o o=(560619)while d<=((0x5a+-20)+-#[[Rodenladder is gay]])do o-= o o=(949032)while(121-0x46)<d do o-= o local o=e[s];local l=n[o];for e=o+1,e[O]do A(l,n[e])end;break end while(o)/((-#"warboy hates you"+((0x2df24-94120)/0x1d)))==294 do n[e[w]]=e[b];break end;break;end while(o)/((0xbf9-1562))==373 do o=(5790024)while d<=(0xda-165)do o-= o n[e[h]]=(e[b]~=0);l=l+r;break;end while(o)/((4200-0x840))==2773 do o=(2727249)while(0x2412/171)<d do o-= o local d;local o;o=e[h];d=n[e[c]];n[o+1]=d;n[o]=d[e[m]];l=l+_;e=a[l];n[e[f]]=e[t];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[b]))l=l+_;e=a[l];o=e[w];d=n[e[u]];n[o+1]=d;n[o]=d[e[F]];l=l+_;e=a[l];n[e[f]]=n[e[u]];l=l+_;e=a[l];o=e[s]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];n[e[h]]=U[e[t]];l=l+_;e=a[l];o=e[f];d=n[e[u]];n[o+1]=d;n[o]=d[e[C]];l=l+_;e=a[l];n[e[f]]=n[e[b]];l=l+_;e=a[l];n[e[h]]=n[e[t]];break end while(o)/((-0x71+2242))==1281 do n[e[k]]=n[e[b]];break end;break;end break;end break;end while(o)/((134160/0x34))==1127 do o=(421270)while(-#'nate higger nuck figgers and nill kiggers'+(-0x35+151))>=d do o-= o o=(2412332)while(149-((0x183-207)+-#"when the he went where when he where where when the he when ther wher he then here went"))<d do o-= o n[e[w]]=(e[u]~=0);break end while(o)/((-#[[Hoo gah hooga hoo gahoo hoo gah hooga hoo gahoo]]+(212212/((0xc4-137)+-#'mf stfu'))))==598 do n[e[s]]=N(D[e[g]],nil,U);break end;break;end while 4090==(o)/((-#'free bobux no skem'+(0x70f7/239)))do o=(313972)while(0xf2e/67)>=d do o-= o local o=e[x];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[O];n[o+3]=_;end elseif(_>=n[o+1])then l=e[c];n[o+3]=_;end break;end while(o)/((-#'0nly 1337'+(0x88+-21)))==2962 do o=(3742218)while d>(0x140d/87)do o-= o local e=e[x]n[e]=n[e](n[e+r])break end while(o)/(((3948-0x7d3)+-#"how to join the kkk"))==1943 do U[e[c]]=n[e[k]];break end;break;end break;end break;end break;end break;end while 2994==(o)/(((176483120/0xb0)/251))do o=(6509115)while(0xc6-(0xb1+-49))>=d do o-= o o=(7419152)while d<=(9295/0x8f)do o-= o o=(4981461)while(4030/0x41)>=d do o-= o o=(4508237)while d>(0x225/9)do o-= o local e={n,e};e[r][e[i][k]]=e[_][e[i][p]]+e[r][e[i][u]];break end while(o)/((-#'if found dad when back from milk then print yay end'+(0xa95-1387)))==3547 do n[e[f]]=n[e[c]];break end;break;end while(o)/((0x1c5ce/58))==2487 do o=(878952)while d<=((2130660/0xb2)/0xbe)do o-= o local e=e[k]n[e]=n[e](n[e+r])break;end while 2764==(o)/((395+-0x4d))do o=(3007936)while(-46+0x6e)<d do o-= o if(n[e[k]]~=n[e[F]])then l=l+r;else l=e[u];end;break end while(o)/(((419216/0x98)+-#[[Ur mom]]))==1093 do n[e[s]]=(e[c]~=0);break end;break;end break;end break;end while 2692==(o)/((2777+-0x15))do o=(7440000)while d<=(-#[[my ass hurts]]+(0x2cbf/145))do o-= o o=(1786228)while((-0x7e+216)+-#[[0nly 1337 smashed ur wap]])<d do o-= o n[e[x]][n[e[c]]]=n[e[B]];break end while(o)/((0x16bd2/129))==2474 do n[e[h]]=e[O];break end;break;end while 2976==(o)/(((5135-0xa3a)+-#'iPipeh i love You'))do o=(1663518)while(-80+0x94)>=d do o-= o local l=e[t];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[x]]=o;break;end while(o)/((195708/0xbc))==1598 do o=(6885076)while d>((360-0xd8)+-#"brawl stars hard gay porn shelly nsked minecraft gay porn roblox rule34 hot")do o-= o local r;local d;local o;n[e[s]]=e[O];l=l+_;e=a[l];n[e[k]]=e[u];l=l+_;e=a[l];n[e[k]]=#n[e[b]];l=l+_;e=a[l];n[e[k]]=e[t];l=l+_;e=a[l];o=e[h];d=n[o]r=n[o+2];if(r>0)then if(d>n[o+1])then l=e[u];else n[o+3]=d;end elseif(d<n[o+1])then l=e[O];else n[o+3]=d;end break end while(o)/(((0xef0+(-0xff0/60))+-#'Omg guys'))==1837 do n[e[h]]=n[e[O]][n[e[C]]];break end;break;end break;end break;end break;end while 1655==(o)/((0x5856c/92))do o=(791910)while(125+-0x32)>=d do o-= o o=(561411)while d<=(0xbe-118)do o-= o o=(392445)while(0x13b1/(-49+0x78))<d do o-= o local e=e[k]n[e](n[e+r])break end while 513==(o)/((-#'I have stolen your father figure and all your milk muahahahahahaha'+(65649/0x4f)))do n[e[x]]=#n[e[t]];break end;break;end while(o)/(((1548-0x33b)+-#[[null]]))==783 do o=(1537471)while d<=(-38+0x6f)do o-= o local o=e[x]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break;end while 2951==(o)/((8857/0x11))do o=(8560870)while d>(4366/0x3b)do o-= o local e={n,e};e[r][e[i][h]]=e[_][e[i][C]]+e[r][e[i][t]];break end while(o)/((0x8685a/149))==2315 do do return end;break end;break;end break;end break;end while 378==(o)/((2155+-0x3c))do o=(3256000)while d<=((183+-0x64)+-#[[penis]])do o-= o o=(6872775)while(9196/0x79)>=d do o-= o n[e[s]]=n[e[t]]%e[p];break;end while 1729==(o)/((4067+-0x5c))do o=(2168064)while d>((-#"holy shit"+(0x86f9/109))/0x4)do o-= o local o=e[h];local l=n[e[b]];n[o+1]=l;n[o]=l[e[j]];break end while(o)/((-111+0x2af))==3764 do n[e[w]]=M[e[g]];break end;break;end break;end while(o)/((-#"Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes"+(1996+-0x1d)))==1760 do o=(1725615)while d<=((0x1f00/64)+-#'testpsx dupe no scam legit 2022 free no virus')do o-= o n[e[w]][n[e[g]]]=n[e[j]];break;end while(o)/((-0x4c+3787))==465 do o=(2951907)while d>((9579/0x67)+-#[[Daddy fuck me]])do o-= o do return end;break end while 3269==(o)/(((0x75b-970)+-#'zykem krul'))do if not n[e[w]]then l=l+r;else l=e[u];end;break end;break;end break;end break;end break;end break;end break;end l+= r end;end);end;return N(R(),{},K())()end)_msec({[((((11375/0x19)+-#"panzerfaust")-238)+-#[[FranzJPresents]])]='\115\116'..(function(e)return(e and'(-#\'pls free synapse x i am gamer girl uwu\'+(387-0xf9))')or'\114\105'or'\120\58'end)((0x30+-43)==(0x558/228))..'\110g',[((175143/0xed)+-#'null')]='\108\100'..(function(e)return(e and'(0x8b+-39)')or'\101\120'or'\119\111'end)((0x77-114)==((54-0x26)+-#'IP grabbed'))..'\112',[((-0x40+363)+-#'me when they are is have the me when are is do me when')]=(function(e)return(e and'(-#"Protected vírus"+(0xa4+-49))')and'\98\121'or'\100\120'end)((82-0x4d)==(65-(182-0x7a)))..'\116\101',[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]='\99'..(function(e)return(e and'(312-0xd4)')and'\90\19\157'or'\104\97'end)((0x80+-123)==(-0x1d+32))..'\114',[(21756/0x2a)]='\116\97'..(function(e)return(e and'(((-0x4f+-32)+0xeb)+-#\'big niggers sucking cock\')')and'\64\113'or'\98\108'end)((0x384/150)==((0x4f-60)+-#"waste of sperm"))..'\101',[(479+-#{28;14,{};28})]=(function(e)return(e and'((0x13e-211)+-#\'mf stfu\')')or'\115\117'or'\78\107'end)((-0x79+124)==(140-0x6d))..'\98',[(-#'i love minors'+(-103+0x3f4))]='\99\111'..(function(e)return(e and'(0x13d-(26908/0x7c))')and'\110\99'or'\110\105\103\97'end)((-#'blinx1 is a sissy little femboy that loves men'+(10164/0x84))==(-#"nicowashere"+(-0x12+60)))..'\97\116',[(0xb944/71)]=(function(e,o)return(e and'((1212600/0x81)/0x5e)')and'\48\159\158\188\10'or'\109\97'end)((0x40+-59)==(-#"avan"+(0x712/(386-0xcd))))..'\116\104',[(0xab5-1426)]=(function(e,o)return((78+-0x49)==((375/0x19)+-#"deadphonelua")and'\48'..'\195'or e..((not'\20\95\69'and'\90'..'\180'or o)))or'\199\203\95'end),[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]='\105\110'..(function(e,o)return(e and'(0x41a0/168)')and'\90\115\138\115\15'or'\115\101'end)((48-0x2b)==(2077/0x43))..'\114\116',[(-#[[zxcvbnm]]+(0x855-1115))]='\117\110'..(function(e,o)return(e and'(-#\'MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch\'+(260+-0x43))')or'\112\97'or'\20\38\154'end)((0x302/((0x9768/228)+-#'Fucking Retarted'))==(0x9c-125))..'\99\107',[(2397-0x4df)]='\115\101'..(function(e)return(e and'((-#\'legend says i was here\'+(-0x54+240))+-34)')and'\110\112\99\104'or'\108\101'end)((-#'ambatakum'+(65-0x33))==(0x6d-78))..'\99\116',[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]='\116\111\110'..(function(e,o)return(e and'(-#"Smokey BArbecue BAcon BUford from checkers mm"+(230+-0x55))')and'\117\109\98'or'\100\97\120\122'end)(((-0x12+105)+-#'i have found your porn folder i am now approaching your house at 83 miles per hour')==(65-0x3c))..'\101\114'},{[(-#"Reduce meme string slowmode when plsplspls"+(179-0x6b))]=((getfenv))},((getfenv))()) end)()



end)


Main3Section:NewButton("🐍Septex Admin🐍", "Un Admin especializado en prision life", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)
--------------------------------------------------------------MAIN SECTION CON KEY----------------------------------------------------------------
local Main3Section = Main3:NewSection("Scripts con KEY")


Main3Section:NewButton("🐍PrisonWare (CON KEY)🐍", "Un script bastante util, pero con key.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)


local Main3Section = Main3:NewSection("Spanish HUB versione santeriores")


Main3Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main3Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main3Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
-- FIN DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main4 = Window:NewTab("💥Destruction Sim💣")
local Main4Section = Main4:NewSection("Sin Key")


Main4Section:NewButton("🐍Inf Money V1🐍", "Te dara cientos de miles o millones de monedas en SEGUNDOS", function()
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


Main4Section:NewButton("🐍PROXIMA HUB GUI🐍", "¡EL MEJOR SCRIPT DE ESTE JUEGO!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
-----------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main4Section = Main4:NewSection("Con Key")

Main4Section:NewButton("🐍Pog Hub UPDATED🐍", "¡Puede ser utilizado en muchos juegos mas!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/Loader/main/Loader.lua"))()
end)


Main4Section:NewButton("🐍OP GUI"🐍, "Casi el mejor script para este juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JrFPkKMa"))()
end)


Main4Section:NewButton("🐍Eclipse HUB🐍", "¡Puede ser utilizado en muchisisimos juegos mas!", function()
    getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)
-- FIN DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main5 = Window:NewTab("🔥Admin's Scripts💫")
local Main5Section = Main5:NewSection("Sin Key")


Main5Section:NewButton("🐍IV Admin V3🐍", "Un admin que se utiliza por chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍CMD-X🐍", "Se abrira un panel para poner comandos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)


Main5Section:NewButton("🐍Fate's admin🐍", "Este script admin tambien es mediante chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)


Main5Section:NewButton("🐍Leg's Admin V2🐍", "Un admin que se utiliza por chat (Tambien)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main5Section:NewButton("🐍Admin Pack🐍", "Al accionarlo apareceran mucho panelas admin", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
-- INFINITE YIELD
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt'),true))()
-- PRISONWARE GUI
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- -- Admin commands
loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
--TIGER ADMIN
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- - Admin commands Repeat script, gurantee work
-- THE BEST ROBLOX PRISON LIFE (CARS FIXED!) SCRIPT EXPLOIT - MADE BY OPERATOR
---THANK YOU TO ALL THE CREATORS OF THESE SCRIPTS, ALL CREDIT GOES TO THEM
end)


Main5Section:NewButton("🐍IV Admin V3🐍", "Un hub hecho por Juanko's mods", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍Chaos Script V9.5🐍", "Un script tambien hecho por Juanko's mods.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)
----------------------------------------------------SCRIPTS CON KEY----------------------------------
local Main5Section = Main5:NewSection("Con Key")

Main5Section:NewButton("🐍Adminus"🐍, "Un admin muy utilizado", function()
    local Theme = "Default" ---- change to New if u want a cool intro

if Theme == "Default" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-ADMINUS-GUI-(UPDATE)-1290")()
elseif Theme == "New" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-test-1232")()
end
end)



-- FIN DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main6 = Window:NewTab("💪Hubs y Guis☠")
local Main6Section = Main6:NewSection("Sin Key")


Main6Section:NewButton("🐍Hoho Hub Script🐍", "Si lo usas en un juego al cual no soporta te echara", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)


Main6Section:NewButton("🐍Ez Hub🐍", "Un HUB con mas de 100 juegos compatibles!!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)


Main6Section:NewButton("🐍Universal Waypoints GUI🐍", "Hub Universal", function()
    loadstring(game:HttpGet('https://weinzspace.com/revamp.lua'))()
end)


Main6Section:NewButton("🐍AirHub V2🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main6Section:NewButton("🐍Fathom Hub🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Y4AGJALY"))();
end)


Main6Section:NewButton("🐍AuratusX🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMrQuacks/AuratusX/master/Load"))()
end)


Main6Section:NewButton("🐍Multi scripter hub x v3🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
end)
--------------------------------------------------------------------------------SPANISH HUB VERSIONES ANTERIORES---------------------------------
local Main6Section = Main6:NewSection("Spanish HUB versione santeriores")

Main6Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main6Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main6Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
----------------------------------------------------------------EXTRA------------------------------------------------------------------------------
local Main6Section = Main6:NewSection("Spanish HUB V3 Con diferentes TEMAS")
-- LIGHT THEME -----------------------------------------------------------
Main6Section:NewButton("🐍Tema blanco🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uXSYigqV"))()
end)
-- DARK THEME ----------------------------------------------------------
Main6Section:NewButton("🐍Tema negro🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cMgvgqse"))()
end)
-- GRAPE THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema uva🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8EwiED0s"))()
end)
-- BLOOD THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema sangre🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YSh1EkRN"))()
end)
-- OCEAN THEME---------------------------------------------------------
Main6Section:NewButton("🐍Tema oceano🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KmE4Mhtu"))()
end)
-- MIDNIGHT THEME ------------------------------------------------------
Main6Section:NewButton("🐍Tema medianoche🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cq01Qm7F"))()
end)
-- SENTINEL THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema sentinela🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mjwRWR7i"))()
end)
-- SYNAPSE THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema synapse🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aCV6mgph"))()
end)
-- SERPENTE THEME (🐍Secret THEME🐍) ----------------------------------------
Main6Section:NewButton("Tema serpiente", "Es el SPANISH HUB *V* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6Bcd4LZT"))()
end)
-- FIN DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main7 = Window:NewTab("🕶Dark Dex's🌑")
local Main7Section = Main7:NewSection("Roba contenido interno de los juegos")


Main7Section:NewButton("🐍Dark Dex ANTI KEY SISTEM🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/003AcccountMaker/Main/main/DarkHub"))();
end)


Main7Section:NewButton("🐍Dark Dex Bypass🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Didward/DarkhubBypassed/main/bypassed.lua", true))()
end)


Main7Section:NewButton("🐍Gran Dark Dex🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4'))()
end)
--------------------------------------------------------------------------DARK DEX V1-V4
local Main7Section = Main7:NewSection("Dark Dex's en orden")

Main7Section:NewButton("🐍Dark Dex V1🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://3025032531")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V2🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script4", true))()
end)


Main7Section:NewButton("🐍Dark Dex V3🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V4🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script5", true))()
end)
-- FIN DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main8 = Window:NewTab("🔫Da Hood🌇")
local Main8Section = Main8:NewSection("Scripts SIN KEY")


Main8Section:NewButton("🐍GUI ZINC HUB🐍", "Uno de los HUB mejor valorados de Da Hood", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍ZINC HUB (OP)🐍", "Como la segunda version de - GUI ZINC HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍JUMPSCARE MIMIC🐍", "Te gusta asustar gente?, este es tu script.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/mimic-simple-script/main/README.md", true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "CREANME, ESTA HOT", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Jojo's DaHood🐍", "Un script que el mismo nombre lo dice", function()
    getgenv().settings =  {
        ['Stand'] =1, --userid of the stand
        ['Owner'] =2, -- userid of the jojo stand owner
      }
      getgenv().commands =  {
         ['Summon'] = "Summon!", -- if someone else wants to own the stand.
         ['Follow'] = "Follow!", -- follow/unfollow you
         ['Ghost'] = "Disappear!", -- disappear
         ['Unghost'] = "Appear!", -- appear
         ['Attack'] = "Ora!", -- loop attack a target
         ['Stopattack'] = "Booga!", -- stop attacking the target
         ['Void'] = "Void!", -- send the target to the void when ko (goes with attack)
         ['Godmode'] = "Requiem!", -- enable/disable godmode
         ['Autosave'] = "Save!", -- grab you when k.o
         ['Autosave2'] = "Bird!", -- send you in the air when k.o
         ['Reset'] = "Stop!", -- resets commands and character (debug)
      }
       
      loadstring(game:HttpGet("https://raw.githubusercontent.com/racemodex/my-scripts/master/dahoodjojostand-v3rmversion", true))()
      
end)


Main8Section:NewButton("🐍Aim Ware🐍", "Eyy, ¡encontraste mi easter egg!", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/fg0C9NSS'))()
end)


Main8Section:NewButton("🐍Anti AFK🐍", "Si te quedas AFK por mas de 20min no seras expulsado", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHoodCrasher/main/Crash'))()
end)


Main8Section:NewButton("🐍OP Script HUB🐍", "Es un HUB OP", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/gwa6nEzD'))()
end)
----------------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main8Section = Main8:NewSection("Scripts CON KEY")

Main8Section:NewButton("🐍LX63 R6 Animation🐍", "Lageara el servidor hasta hacerlo injugable", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Gogogamer61/LXHub-Main/main/LXHub%20Main%20Script'),true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "Mas de 20 scripts", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Server Crasher🐍", "Lageara el servidor hasta hacerlo injugable", function()
    --you need to join this group for the script to work :   
 --https://www.roblox.com/groups/15655824/Strike-Hub 

 loadstring(game:HttpGet('https://raw.githubusercontent.com/NoobieDev2009/StrikeHub/main/CrashV2', true))()
end)


Main8Section:NewButton("🐍FE Jesus🐍", "TYe convertiras en Jesus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/fejesusscript/main/README.md", true))()
end)


Main8Section:NewButton("🐍Ven X🐍", "AimLoc, SilentAim, Teleports, ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Impulseonyoutube/VENX/main/subtoimpulseyea.lua"))()
end)


Main8Section:NewButton("🐍Autofarm + Aimlock GUI🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main8Section:NewButton("🐍Dread's Scripts🐍", "Esta pro", function()
    local thekeybindis = "b"

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "@dread.w",
    Text = "Your keybind is " ..thekeybindis,
})

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local orgp = player.Character.HumanoidRootPart.Position
local istping = false

local function teleport()
while istping do
local randomPosition = orgp + Vector3.new(math.random(-15, 15), math.random(-15, 35), math.random(-15, 15))
player.Character.HumanoidRootPart.CFrame = CFrame.new(randomPosition)
wait()
end
end

mouse.KeyDown:Connect(function(key)
if key == thekeybindis then
if istping then
istping = false
player.Character.HumanoidRootPart.CFrame = CFrame.new(orgp)
else -- made by @dread.w
istping = true
orgp = player.Character.HumanoidRootPart.Position
teleport()
end
end
end)
end)
-- FIN DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main9 = Window:NewTab("⚔Blade Ball🔴")
local Main9Section = Main9:NewSection("Sin Key")


Main9Section:NewButton("🐍Ln Hub V3 Updated🐍", "Contiene 7 scripts para Blade Ball (Bastante utiles)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)

 
Main9Section:NewButton("🐍Sikded Hub🐍", "Contiene - Auto spam block - y mas", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)


Main9Section:NewButton("🐍X7 PARRY🐍", "BROOO, EL NOMBRE LO DICE!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly"))()

end)


Main9Section:NewButton("🐍Xero Hub🐍", "Contiene Rage mode y Auto parry", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/BladeBall/main/bladeball.lua"))()
end)


Main9Section:NewButton("🐍Opensource Autoparry🐍", "Es el HUB mas visto esta semana de Blade Ball", function()
    local Debug = false -- Set this to true if you want my debug output.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9) -- A second argument in waitforchild what could it mean?
local Balls = workspace:WaitForChild("Balls", 9e9)

-- Functions

local function print(...) -- Debug print.
    if Debug then
        warn(...)
    end
end

local function VerifyBall(Ball) -- Returns nil if the ball isn't a valid projectile; true if it's the right ball.
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
        return true
    end
end

local function IsTarget() -- Returns true if we are the current target.
    return (Player.Character and Player.Character:FindFirstChild("Highlight"))
end

local function Parry() -- Parries.
    Remotes:WaitForChild("ParryButtonPress"):Fire()
end

-- The actual code

Balls.ChildAdded:Connect(function(Ball)
    if not VerifyBall(Ball) then
        return
    end
    
    print(`Ball Spawned: {Ball}`)
    
    local OldPosition = Ball.Position
    local OldTick = tick()
    
    Ball:GetPropertyChangedSignal("Position"):Connect(function()
        if IsTarget() then -- No need to do the math if we're not being attacked.
            local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
            local Velocity = (OldPosition - Ball.Position).Magnitude -- Fix for .Velocity not working. Yes I got the lowest possible grade in accuplacer math.
            
            print(`Distance: {Distance}\nVelocity: {Velocity}\nTime: {Distance / Velocity}`)
        
            if (Distance / Velocity) <= 10 then -- Sorry for the magic number. This just works. No, you don't get a slider for this because it's 2am.
                Parry()
            end
        end
        
        if (tick() - OldTick >= 1/60) then -- Don't want it to update too quickly because my velocity implementation is aids. Yes, I tried Ball.Velocity. No, it didn't work.
            OldTick = tick()
            OldPosition = Ball.Position
        end
    end)
end)
end)

local Main9Section = Main9:NewSection("Sin Key")

Main9Section:NewButton("🐍*Gui*🐍", "El mejor script de Blade Ball", function()
    loadstring(game:HttpGet("https://www.nicuse.xyz/BladeBall.lua"))()
end)


Main9Section:NewButton("🐍OP Script🐍", "Un script con una gran variedad de funciones", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main9Section:NewButton("🐍Syr HUB🐍", "Mas de 7 scripts para este juego", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BackOnTop/main/SyrBladeBall.lua.txt"))()
end)


Main9Section:NewButton("🐍Auto farm🐍", "¡MUCIHISMOS SCRIPTS!", function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)


Main9Section:NewButton("🐍DevHub🐍", "5 Scripts (Sirven eh)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustD1v/Scripts/main/DevHub.lua", true))()
end)
-- FIN DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main10 = Window:NewTab("🐯Blox Fruits🍈")
local Main10Section = Main10:NewSection("CON KEY (Es mejor los que utilizan key)")


Main10Section:NewButton("🐍BT PROJECT🐍", "El HUB MEJOR VALORADO de blox fruits", function()
    loadstring(game:HttpGet('https://btteam.net/scripts-auth/', true))()
end)


Main10Section:NewButton("🐍Bean Hub🐍", "Utiliza Key y 12 scripts para utilizar", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SoyElPekka/BeanHub/main/bloxfruitsnewpc2023'),true))()
end)


Main10Section:NewButton("🐍Free Kaitan🐍", "Contiene Key - te dara todos los items del juego", function()
    --report bug/get update announce in discord: https://discord.gg/aUd8umqUKu
repeat wait() until game:IsLoaded()
_G.Start_Kaitun = false
_G.Config = true
_G.Settings = {
	Main = {
		["Auto Farm"] = true,
		["Auto Go To Fruit"] = true,
		["Store Fruit"] = true,

		["Buy Fruit"] = true,
		["Select Fruit"] = {
			"Lepoard-Lepoard",
			"Dough-Dough",
			"Linght-Linght",
		}, --[[
			Kilo-Kilo
			Spin-Spin
			Chop-Chop
			Spring-Spring
			Bomb-Bomb
			Smoke-Smoke
			Spike-Spike
			Flame-Flame
			Falcon-Falcon
			Ice-Ice
			Sand-Sand
			Dark-Dark
			Revive-Revive
			Diamond-Diamond
			Linght-Linght
			Rubber-Rubber
			Barber-Barber
			Magma-Magma
			Quake-Quake
			Buddha-Buddha
			Love-Love
			Spider-Spider
			Phoenix-Phoenix
			Portal-Portal
			Rumble-Rumble
			Paw-Paw
			Blizzard-Blizzard
			Gravity-Gravity
			Dough-Dough
			Shadow-Shadow
			Venom-Venom
			Control-Control
			Spirit-Spirit
			Dragon-Dragon
			Leopard-Leopard
		]]


		-- // [[ World 1 ]] \\ --
		["Auto Saber"] = true,
		["Auto Pole"] = true,

		["Auto New World"] = true,

		-- // [[ World 2 ]] \\ --
		["Thire World"] = true,
		["Auto Bartilo Quest"] = true,
		["Auto Rengoku"] = true,
		["Open Flamingo Access"] = true,
		["Midnight Blade"] = true,
		["Auto Factory Farm"] = true,
		["Auto Super Human"] = true,

		-- // [ World 3] \\ --
		["Auto Yama"] = true,
		["Auto Tushita"] = true,
		["Auto ElectricClaw"] = true,
		["Auto Farm Mastery Sword All"] = true, --When reached Level Max
		["Auto Soul Guitar"] = true, -- When reached Level 2300+
	},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhhau207/SilverHub/main/Kaitun2"))()
end)


Main10Section:NewButton("🐍OP Script🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
end)


Main10Section:NewButton("🐍XIBA HUB V3🐍", "Ta hot", function()
    local XIBAHUBSETTINGS = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=XIBAHUBSETTINGS;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end

end)


Main10Section:NewButton("🐍PEELY HUB V3🐍", "Mas de 10 propiedades bien insanas wazaaa", function()
    -- peely hub remastered
-- Updated for UPD 20
local peely_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=peely_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Sub Hub V3🐍", "Ojala algun dia probar un SubWay :c", function()
    -- SUB-HUB v3
-- Powered by Celestial AI ©
local subhubv3_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm | This autofarm is presented to you by Celestial AI ©
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=subhubv3_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Mango HUB🐍", "HUB VERIFICADO", function()
    getgenv().WaterMark = true
loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
end)


Main10Section:NewButton("🐍QUE PRO HUB🐍", "QUE PRO", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/INoobie/Lua/main/blox%20fruits', true))()
end)


Main10Section:NewButton("🐍FAST CHEST FARM🐍", "El mejor script de bloxfruits, 55 likes, verificado y 100K visitas", function()
    
getgenv().Server_Hop = true
getgenv().Chest_Farm = true
getgenv().wait_Time = 35 -- Seconds

local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then
repeat wait() until game:IsLoaded() ~= false


local Counter = 0
local PlaceID = game.PlaceId
     local AllIDs = {}
     local foundAnything = ""
     local actualHour = os.date("!*t").hour
     local Deleted = false

     local File = pcall(function()
         AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
     end)
     if not File then
         table.insert(AllIDs, actualHour)
         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
     end
    
     function TPReturner()
         local Site;
         if foundAnything == "" then
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
         else
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
         end
         local ID = ""
         if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
             foundAnything = Site.nextPageCursor
         end
         local num = 0;
         for i,v in pairs(Site.data) do
             local Possible = true
             ID = tostring(v.id)
             if tonumber(v.maxPlayers) > tonumber(v.playing) then
                 for _,Existing in pairs(AllIDs) do
                     if num ~= 0 then
                         if ID == tostring(Existing) then
                             Possible = false
                         end
                     else
                         if tonumber(actualHour) ~= tonumber(Existing) then
                             local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                 AllIDs = {}
                                 table.insert(AllIDs, actualHour)
                             end)
                         end
                     end
                     num = num + 1
                 end
                 if Possible == true then
                     table.insert(AllIDs, ID)
                     wait()
                     pcall(function()
                         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                         wait()
                         game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                     end)
                     wait(4)
                 end
             end
         end
     end
 
     function Teleport()
        while wait() do
            pcall(function()
                 TPReturner()
                 if foundAnything ~= "" then
                     TPReturner()
                 end
            end)
        end
     end

     spawn(function()
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end)


spawn(function()
   while wait(.8) do
      if Chest_Farm then
          pcall(function()
  
  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait(.15)
      end
  end
  game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
      end
  end
end)

spawn(function()
    while wait() do
        if Server_Hop then
            pcall(function()
                        wait(wait_Time)
                        Teleport()
                        print("Finding new server")
            end)
        end
    end
end)


end
end)
------------------------------------------------------------------------------------------------SCRIPTS SIN KEY--------------------------------
local Main10Section = Main10:NewSection("SIN KEY (Son mas inseguros)")

Main10Section:NewButton("🐍Banana Suit🐍", "Utiliza Key y 12 scripts para utilizar", function()
    _G.AutoSteal = true
while _G.AutoSteal do
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Part") and v.Name == ("Currency") then
        fireclickdetector(game:GetService("Workspace").Currency.ClickDetector)
    end
end
wait()
end
end)


Main10Section:NewButton("🐍Farmea cofres y  frutas🐍v", "Utiliza Key y 12 scripts para utilizar", function()
    local Configs = {
        Join_Team = "Marines", -- select your team (Pirates/Marines)
        Stop_Farm = true, -- the script will stop working as soon as you drop a rare item from the chest (recommended)
        Farm_Chest = true, -- Auto farm chest
        Farm_Fruit = true,  -- Auto Collect Fruits (as soon as you find some fruit on the map the whole script will stop working to ensure that you won't lose it)
        Server_Hop = true, -- after collecting all the chests/fruits, you will be teleported to an empty server
        Auto_Reset = true, -- reset your player (recommended) (Anti Kick)
        Reset_Delay = 15 -- select the time your doll will reset (recommended 10, 15, 20)
      }
      
      local Chests_Farm = { -- select the chests you want to farm
        Basic = true; -- false/true
        Golden = true; -- false/true
        Diamond = true; -- false/true
      }
      
      -- ////////////////////////////////////////////////////////////////////////
      local placeId = game.PlaceId
      if placeId ~= 2753915549 and placeId ~= 4442272183 and placeId ~= 7449423635 then
      else
      
      _G.JoinTeam = Configs.Join_Team;
      _G.StopFarm = Configs.Stop_Farm;
      _G.FarmChest = Configs.Farm_Chest;
      _G.FarmFruit = Configs.Farm_Fruit;
      _G.ServerHop = Configs.Server_Hop;
      _G.AutoReset = Configs.Auto_Reset;
      
      task.spawn(function()
        while _G.FarmFruit == true do task.wait()
          local Workspace = game:GetService("Workspace")
          local Player = game.Players.LocalPlayer
          local PlayerRP = Player.Character:FindFirstChild("HumanoidRootPart")
          for _,v in pairs(Workspace:GetChildren()) do
            if Workspace:FindFirstChild(v.Name) and v.ClassName == 'Tool' and PlayerRP then
              _G.StopFarm = false;
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              repeat task.wait()
                PlayerRP.CFrame = v.Handle.CFrame
              until not Workspace:FindFirstChild(v.Name) or Player.Backpack:FindFirstChild(v.Name) or Player.Character:FindFirstChild(v.Name)
            end
          end
        end
      end)
      
      local plrTeam = game.Players.LocalPlayer.Team
      
      if plrTeam ~= 'Pirates' and plrTeam ~= 'Marines' then
        local a_1 = "SetTeam"
        local a_2 = _G.JoinTeam
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a_1, a_2)
      end
      
      task.spawn(function()
        while _G.StopFarm == true do task.wait()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
          for _,v in pairs(player.Backpack:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
          for _,v in pairs(player.Character:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
        end
      end)
      
      task.spawn(function()
        while _G.FarmChest == true do task.wait()
        local Workspace = game:GetService("Workspace")
        local plr = game.Players.LocalPlayer
        local plrRP = plr.Character:FindFirstChild("HumanoidRootPart")
        local FindSit = plr.Character:FindFirstChildOfClass('Humanoid') and plr.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local chest1 = Workspace:FindFirstChild("Chest1")
        local chest2 = Workspace:FindFirstChild("Chest2")
        local chest3 = Workspace:FindFirstChild("Chest3")
        if FindSit then
          plr.Character.Humanoid.Sit = false
          task.wait(0.2)
        end
          if chest3 and plrRP and chest3.Transparency < 0.1 and Chests_Farm.Diamond == true then
            plrRP.CFrame = chest3.CFrame
          elseif chest2 and plrRP and chest2.Transparency < 0.1 and Chests_Farm.Golden == true then
            plrRP.CFrame = chest2.CFrame
          elseif chest1 and plrRP and chest1.Transparency < 0.1 and Chests_Farm.Basic == true then
            plrRP.CFrame = chest1.CFrame
          elseif _G.ServerHop == true then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end
      end)
      
      task.spawn(function()
        while _G.AutoReset == true do
          local plr = game.Players.LocalPlayer
          local plrH = plr.Character.Humanoid
          plrH.Health = -math.huge
          task.wait(Configs.Reset_Delay)
        end
      end)
      
      task.spawn(function()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
          if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end)
      end)
      
      end
end)


Main10Section:NewButton("🐍Alone HUB🐍", "?", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.Config = {
    WebHook = "", -- Discord Webhook
    Team = "Pirate", -- Pirate, Marine
    Time = 120,
    Invisible = true, -- Please use bundle: https://www.roblox.com/bundles/238/Man,
    Melee = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        }
    },
    Sword = {
        Use = false,
        Z = {
            Use = true,
            Hold = 1
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Gun = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Fruit = {
        Use = true,
        Z = {
            Use = true,
            Hold = 3
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        },
        V = {
            Use = true,
            Hold = 0
        },
        F = {
            Use = true,
            Hold = 0
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/AloneHub/main/Bounty%20Beta.lua", true))()
end)
-- FIN DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN11 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII.
local Main11 = Window:NewTab("🎩Creditos🍷")
local Main11Section = Main11:NewSection("Redes")


Main11Section:NewButton("🐍Discord🐍", "Unanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Discord: https://discord.gg/vrv3Cg8Q", "Serpent")
end)


Main11Section:NewButton("🐍YouTube🐍", "Suscribanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Youtube: https://www.youtube.com/@Nescoroco/videos", "Serpent")
end)


Main11Section:NewButton("🐍Script Blox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Blox: pon *1nescoroco* en la busqueda de scriptblox", "Serpent")
end)


Main11Section:NewButton("🐍Roblox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Roblox: https://www.roblox.com/users/2399670479/profile", "Serpent")
end)




-----------------------------------------------------------------JUANKO'S MOD SECTION-----------------------------------------------------------




local Main11Section = Main11:NewSection("JUANKO'S MOD SCRIPTS")


Main11Section:NewButton("🐍MM2 Script🐍", "HUB Para Murder Mistery 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sLsf0HEH"))()
end)


Main11Section:NewButton("🐍Robar ID'S de sonidos🐍", "Uns script universal", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3aks6wJy"))()
end)


Main11Section:NewButton("🐍Script para TODOS LOS TYCOONS🐍", "Script para todos los tycoons existentes", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/DJvHjLPd"))()
end)


Main11Section:NewButton("🐍Zaque Hub"🐍, "Contiene Key - Es un AutoFarm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub"))()
end)


Main11Section:NewButton("🐍Da Hood Destrozer🐍", "Hub para Da Hood", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TSY3hAKW"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 FE🐍", "Un pack de animacion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QZqF6x2P"))()
end)


Main11Section:NewButton("🐍PRISION ADMIN HUB🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 + R15🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tcTds0ky"))()
end)


Main11Section:NewButton("🐍CDMS ADMIN CHAT🐍", "Un hub con comandos de Admin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1a5iCHpu"))()
end)


Main11Section:NewButton("🐍BrookHaven HUB🐍", "Un hub para BrookHaven", function()
    loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end)








-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB








-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos








-- DISCORD: https://discord.gg/ZRTkSVRp





-- SCRIPTBLOX: https://scriptblox.com/profile






-- ROBLOX: https://www.roblox.com/users/2399670479/profile
end)


MainSection:NewButton("🍇Tema Uva🍇", "Grape theme", function()
    -- Spanish hub
-- quisiera decir que este script
-- eN principio lo queria llamar "Ñ HUB"
-- pero por alguna extraña razon
-- al intentar escribir "Ñ" en el titulo del HUB,
-- era imposible hacerlo, pero
-- cuando intentntaba ponerlo en la descripcion,
-- si me era posible XD


-- Hub hecho por Nesoroco (Este HUB tiene EXACTAMENTE 2086 renglones, asi que porfavor denle like en la pagina de scriptblox y siguanme)



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("_🟩🇨🇴⬛🇲🇽⬛🟩🇵🇪⬛🐍SPANISH HUB - nescoroco🐍⬛🇪🇸🟩🇻🇪⬛🇦🇷⬛🟩_", "GrapeTheme")

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB

-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos

-- DISCORD: https://discord.gg/ZRTkSVRp

-- SCRIPTBLOX: https://scriptblox.com/profile

-- ROBLOX: https://www.roblox.com/users/2399670479/profile

-- Menu
local Main = Window:NewTab("🌌Scripts Universales📄")
local MainSection = Main:NewSection("Universal's comunes")

MainSection:NewButton("🐍Caminar en las paredes🐍", "Va a cambir la gravedad segun tu poscicion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)


MainSection:NewButton("🐍Project validus v2🐍", "Aimbot bien insano wazaaa 👻", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Project-Validus-v2/main/Main.lua"))()
end)


MainSection:NewButton("🐍Cambiar De Servidor🐍", "Te va a unir automaticamente a un servidor aleatorio del juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gzdmr95u"))()
end)

-- CHOCLO ENORME DE SCRIPT ---------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍DELTA executor🐍", "es un ejecutador como el que usaste para hacer funcionaer el Ñ HUB, solamente que si un script no te funciona, puedes probar hacerlo funcionar con este", function()
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

MainSection:NewButton("🐍Congelarte a ti mismo FE🐍", "Se desplegara una pestaña la cual podras prender o apagar una opcion en la cual te congelas en la poscicion que la activaste", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SavaLava9/FEFreeze/main/FEFreeze.txt"))()
end)


MainSection:NewButton("🐍Gigachad HUB🐍", "Un hub como este pero gigachad xd", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Gigachad%20Hub%20V7.lua", true))()
end)

-- CHOCLO DE SCRIPTS 2 --------------------------------------------------------------------------------------------------------------------------------
MainSection:NewButton("🐍FPS gui🐍", "Sobre tu cabeza aparecera la cantidad de FPS a la que te va (Probablemente te apareceran 60)", function()
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
MainSection:NewButton("🐍Ser inmortal🐍", "No podras morir", function()
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
MainSection:NewButton("🐍AimBot - Punteria Automatica🐍", "Al activar este script todos tus tiros iran directamente a la CABEZA DEL ENEMIGO", function()
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

MainSection:NewButton("🐍NoClip - Atravesar las paredes🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
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
MainSection:NewButton("🐍OrangeX Hub V5🐍", "Al activarlo podras atravesar las paredes(Los bloques que hacen daño no soeran atravesables)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt"))()
end)


MainSection:NewButton("🐍PSY HUB🐍", "Un hub.. Poco trabajado -_-", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)


MainSection:NewButton("🐍FE TELEPORT PLAYERS - Teletransportarse a alguien🐍", "Al activarlo, una ventana se abrira y  ahi tendras las intruscciones de como usarla", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JwGf73hp"))()
end)

local MainSection = Main:NewSection("Los mejores Universal Scripts")

MainSection:NewButton("🐍ADMIN YIELDS🐍", "¡Tendras comandos de Administrados!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


MainSection:NewButton("🐍Divine HUB🐍", "Es un hub en el cual se utilizo el mismo estilo que el Ñ HUB, solo que es capaz de utilizarse en juegos mas variados", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealCrazyfuy/DivineHubCracked/main/DivineHubV1'))()
end)


MainSection:NewButton("🐍EZ HUB (+150 JUEGOS)🐍", "¡El mismo nombre lo dice!, mas de 15 juego, es de los mejores hubs que eh visto y su interfaz esta muy bien trabajada, mis respetos al creador", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)
-- FIN DEL MAIN IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
--Aca habia un Main 2                      3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Al cual saque por que era inecesario,    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--Podras ver cual era en las versiones     3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
--1 y 2 del Spanish Hub                    3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
-- FIN DEL MAIN2 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main3 = Window:NewTab("💰Prision Life👮")
local Main3Section = Main3:NewSection("Scripts")


Main3Section:NewButton("🐍Juanko Mods🐍", "Hecho por mi pana", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main3Section:NewButton("🐍Destruir los arboles🐍", "Este script esta diseñado mas para PVP, haciendo que tu enemigo no se esconda detras de los arboles", function()
    -- Hi, this script was created more specifically for PVP, so your enemy isn't 
-- hiding behind trees.

game:GetService("Workspace").Trees:Destroy()
end)


Main3Section:NewButton("🐍Tiger Admin🐍", "¡EL MEJOR SCRIPT TIPO ADMIN ABUSE DE TODO PRISION LIFE!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)


Main3Section:NewButton("🐍PrisonLife Hub🐍", "Contiene muchos scripts para Prision Life", function()
    local s = loadstring(game:HttpGet(("https://raw.githubusercontent.com/kiko200000000/ME/main/README.MD"), true))()
print(s)
end)


Main3Section:NewButton("🐍Prison Beaker V1.5🐍", "Un script muy bueno, con interfaz rara.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ryt9hGz6"))()
end)


Main3Section:NewButton("🐍Hacete el mas pija del server🐍", "NO, a comparacion de lo que se dice, no es FE.", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)


Main3Section:NewButton("🐍Valkyrie Script🐍", "Un universal script muy bueno en prision life", function()
    ected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'


,nil,nil;(function() _msec=(function(e,o,n)local K=o[(-#'howtodumpscript'+(((0x4b57-9682)+-#"impulse was here omg")/0xd5))];local G=n[e[(0x55b-703)]][e[((175143/0xed)+-#'null')]];local i=(-#'good googly moogly'+(129+-0x6b))/((-#"yiff"+(25530/((351+-0x77)+-#"IP grabbed")))-109)local r=((0xa2-(((0x60d6/74)-0xda)+-#'Bwomp'))+-#'never gonna give you up never gonna let you down')-(228/0xe4)local v=n[e[((-66+0x14b)+-73)]][e[((-0x40+363)+-#'me when they are is have the me when are is do me when')]];local P=(((-0x16+(0x8dae/186))-0x8f)+-#'Fucking losed 027728272728271')+(-#[[Me be like at 5am in the morning]]+(4828/0x8e))local U=n[e[((107748+-#{",";{};'nil',{}})/208)]][e[(-#'i love minors'+(-103+0x3f4))]]local _=(76-0x4a)-(0x43/(5628/(0x11f-203)))local F=(-#"nico der hurensohn"+((-#'Reduce meme string slowmode when plsplspls'+(((-#"imagine not being able to talk"+(-0xa0+70))+0x2466)/63))-82))local B=(676/(((0x95be-(0x4b89+-123))+-23)/113))local j=(-58+(-#{",";{};{};{};1;'}',103}+69))local C=((5200/((468-0xf6)-0x7a))-48)local p=((((0x105d+(-12772/0x7c))/18)+-#'panzerfaust')/0x36)local m=(456/(-#'ur mom is hot'+((((0x2c-68)+-#[[penis]])+-0x42)+0xde)))local c=(-#'niggers'+((-#[[dies of cringe]]+((-0x930/(-#{(function()return{','}end)();178,","}+87))-33))+85))local u=(44+(-#[[sussy chat sussy sussy]]+(((((10704/0x30)+-#'anime is for fags')+-109)+-#[[give me moonsex v4 or i will attach a car battery to your testicles]])-49)))local g=(6+-#{'}';(function()return#{('OMhmMO'):find("\104")}>0 and 1 or 0 end);'nil'})local b=(0x23+((((201+-0x3b)+-#[[this is an ip grabber]])-0x66)-0x33))local O=((56+-#{'}';'nil';{};",",194,27})-0x2f)local t=((45+-#{{},(function()return{','}end)();84;84})+-0x26)local w=(6+-#{1,{},",";91})local k=(0xda/((348+-#{1,36,(function()return{','}end)(),",";(function()return#{('BhffMF'):find("\102")}>0 and 1 or 0 end);36;'nil'})-0xe8))local s=(0x1d0/((0x422-(565+-#{71,",";47,47}))-265))local f=(((-0x168/(0x8e-122))+0xc2)/88)local x=(-#{'}';{},79}+5)local h=(((-#[[warboy hates you]]+(-33+(-#{(function()return#{('FOBmBL'):find("\66")}>0 and 1 or 0 end),1,(function()return{','}end)();'nil','nil';'nil','}'}+1253)))/171)+-#[[sussy]])local Y=e[(2700-0x569)];local R=n[e[(0x7ec0/169)]][e[(479+-#{28;14,{};28})]];local L=n[(function(e)return type(e):sub(1,1)..'\101\116'end)('*,^&#&/&')..'\109\101'..('\116\97'or'$&!^.=$!')..e[((-16+0x23c)+-#[[i dont fucking care if its your own ui]])]];local A=n[e[((1217-0x27d)+-#[[I like watching videos of black men shaking their booty cheeks]])]][e[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]];local D=(0xa4/82)-(0x79-((-0x389a/210)+188))local N=(((((34060/0xa)/0x1a)+-#"Impulse real 2022")-90)+-#"I watch gay furry porn")-((0xccd/113)+-#[[goofy ahh uncle productions]])local H=n[e[(39168/0xcc)]][e[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]];local o=function(o,e)return o..e end local S=(9+-#{'}','nil',{},1;'}'})*(97+((-188+0x20)+63))local J=n[e[(2397-0x4df)]];local a=(0x6/3)*(((0x30fc3e-1605182)/0xbe)/66)local I=(2154-0x46a)*(0x71-((0x16c-(0x20a-(0x184+-103)))+-#[[pairu sucks dick]]))local V=(((0x141810/155)+-72)/162)local M=(-#'monkey mode'+((-#'Impulse real 2022'+(208-(-0x2f+173)))-0x34))*(0x28+-38)local y=n[e[(-#[[zxcvbnm]]+(0x855-1115))]]or n[e[((((1166+-0x14)+-#'0nly was here mf')-582)+-#"Mulheres me deixam de pau duro")]][e[(-#[[zxcvbnm]]+(0x855-1115))]];local d=((-#"testpsx dupe no scam legit 2022 free no virus"+(0xb-(0x2ec/44)))+0x133)local e=n[e[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]];local z=(function(d)local a,n=1,0x10 local o={j={},v={}}local l=-_ local e=n+r while true do o[d:sub(e,(function()e=a+e return e-r end)())]=(function()l=l+_ return l end)()if l==(S-_)then l=""n=D break end end local l=#d while e<l+r do o.v[n]=d:sub(e,(function()e=a+e return e-r end)())n=n+_ if n%i==D then n=N A(o.j,(H((o[o.v[N]]*S)+o[o.v[_]])))end end return U(o.j)end)("..:::MoonSec::..!*%&/+^,;.:_#$}=.=^+%,}_:=,^&,=__=;&/=!_#=.&+.*=$=:&^,;}+,*/}..$!&#&;,/_,*/#!_#!%!}&:,^_%==&_,^_,}&/#,;_/=*&$,._#=^&:._*^=&&=,%}=&_+,!&.=^*+*,$_.=^&+.=,:=,&&,/%!:}$.#;!*/=_:^.*++*:$__$=%_&,,&_,%&;}.^$!=$&.,^$&&}&::^_&^=&_,,_&=&*#,;}/=*^$,.#+=%.*.:_,%&&=#__;!/&!;#_.&^!*,$_.=^;%,}#:=,,//=__=;&/=!_$!.&^.%=$=:^^,&%}=_&,,&_%$#&;:/_*%$&.;+_*==;:,^}%==+_,,_&=*+=:;_+%*&$:._+=%&=.=*^=&,=,#*,=/&!,$$;=+&*#$_:%^&%,}_:=,&&,!*_=;&/,!_#=:++,*_}^:&^:%_}=_&,_&_==#;;,^.!=$/.,+_++}&_!^_&&=&_,,_+**=#,.+/=*;$,._+=/&},:_,.&&!*__;!/&%,#_;=+}*,$_.=^_%,}_:=,&//=_#,;&/,!_#=.&+,%.$=:_^,%_}=_&,,&_!:#&.+/_**$&_,+_*=}}:,,^%==+_,,_&=!&$%;_+**&$.._+=%&},_^^=&}=,_},=^&!,#_.:+&%%$_:&^&%,}_:=,$&,=$_=;+/,!_#=.&+_*_};:&,*%_}=_&,,//==#^;,/$!==&.,+_%%}&_!^_&&=&__.=&=!;#,../=*/$,:$,&%&}#:_,^&&=,__,=;^!,$!;=+/*,$=.=^&&#}__&,&&.=__=;&/,+##=.&+,*#$=:&^,%$=!_&,,&_==#&;,/_!=$&.,+_*=}::,^_%==&#!,_&=!&#;;_/=*&$,._+=%&},:_^=&&=,__,=/&!,#_;=+&*,$_.=^&%,}_:=,^&,=__=;&/,!_#=.&+,*_$=:&^,%_}=_&,,&$==#&;,/_!=$&.,+_%!}&:,^_&*=&_,,_!*!;#,;_/=;&&:=##_;=,;:_^=&&=,__,=/&!,}.;=+&*,}$$%^&%.}__*,&&,=_$*_^/,!}#=.++,*_$=_+,_%_=&_&,;&_==#&;$,:!=$;.,+_*=}/:,^=%==&=/,_&=!&#.;_/=*&$,$;+=%&},:_^=&&=,___#/&!,#_.%+&*,$_.=:!%,}_:=,/&,=__=;&/.!_$&.&+.*_}!:&^$^#}=_&,,/,==#/;,/#!=$,:/+_*=}&_&^_&!=&__;;&=!&#,:+/=*/$,:*,}%&},:_;.&&=;__;!/&!_$;;=+&*,=+.=^/%,=*#},&&;=_$.;&/;!_#=.&+_%;$=:&^,/+}=_/,,&_!&#&;_/_**$&.:+_*=},:,,!%==^_,,$&=!.!;;_+&*&}#._^!%&}#:_,&/!=,__,=+;!,##;=+,%/$_.=^&/*}__!,&&,==_=;,/,!$#=.^+,*_}&:&^#%_=%_&,.&_!+}%;,/=!=}$.,+#*=};:,^=&#=&_,,_+.!&#;;_+&%!$,._+=&}},:#^=&&%#__;&/&!,#_;=+&*,*/.=^,%,}#:=,&&,=_$/;&/_!_$*.&+,*_$==/^,%_}=_/,,&_==%=;,/_!=.+.=+_*=}&*!$$,#^^%!_}:;+;%..&/=*&$,}&$&.,+,=_$}:^^_*$;%/&!,#_=$_;;}.$_%^&%,}_!%};.:+}%/=^_:,*//==#&./==!=$^.%+^*;$_#$!&#&;,/_,^&/!/#!}*},:,^_%=&_*#$#:&&+$*;_/=*&%*!}#}.*%_*!$%:%+_%!}*+*!,#_;=:*,#+%*&$%.++}*}$.:_/+*%$%.+=$$,.&+,*_%,*,$_._&=%%}::=!*#,;,/_!=*_=#_#;&:+_!^_%==&*}$#:#^;&:=!_$;^&#;$^.%&},:__^.;^_!}}/_+,$&/=%_;/.$=.=^&%,+_*!}+:__$$/;&/,!_&&=##:,}/}*+#_+.+^*::^:%+!!;#=,$;/%$!=_!;:*+:}^_%==&*$}$:},!*.$%.*,+$=._+=%&/.*/}&^*+.&&}}_+#.$*;=+&*,*#!#$%.#+.%&,+&_=__=;&:}^#&#=;}.%/$=:&^,:%+}%+}%:}^=%/}:_!!*$$.,+_*=%.*!$$.//^*#}$_+^;&.;$+:*&$,._:_.%/:!#$_;&^&*#=;:;,.#$.^+&*,$_=+#;;:+=*}}+^:}$#;;&/,!_*%=__;;$/!!^$_.!^*/+,}&_==#&}__/;%&^!^#$;&}+_*^_%==&!:=!_*^.%;}}_/+:/#!/.*%#},:_^=;:+;%,}:_^,,&!=/_,*.}!.=^&%,&}*%}%:.^!#*;:/,!_#=};#:;!+*}##_^+;*_,,,&_==!^};_},,!+:&+_*=}&};#=.&&;%=}=_*^/!:}##%,_$.:!+=%&},}}$,.;^:%=;*^*!,#_;=_/;+=_!;#,.!+:%&.&:#^}%/},^,,=&,=;,,;*+*!;##/_^+*;}.:}^;&%=+!$%!$&.,+_,*/;*,$,.;+^*;}=:/^,*:==_};+&;!%#/}+}$:_^=&&^:%&}!:,,^/%%*+$*,$_.=::;#+=!%$;:.,*%;}^:#&$$:.&+,*_%_*%#:;#+_!&}&.#,;%;=.!$*:$&.,+_^_/;!;#=./^+*.}::!,+%_*$+_*&$,.__&.++!*%$^.;^.!!=+:;,+&==*+;*,$_.=_;^_+/*#:+^.!+_=;&/,,,&}=/__;}+&*+$!..+^:+,=&_==#&#._:,&/#$}$/.*+%$.,/%==&_,$%:},+&%=}_=,/&:!!=*&%},:_^=,/+_*=#/_.^#&.!&._,;/.!&#=;#+$:*,;&,=__=$+_!,%&,!,;.%+$=:&^,;:/}%^$#.},/&+}#_!;!!+:%+_*=}&}:$/:&+#&*}!:$,^%==/_=*+$$._+=%&&,*,$!:#+#%$}*/_!,#_;=.^,;/,!_#+;;/}*:,+/%=__=;&;;^=&#=##+^$//*!$^.=+/*+,}&_==#&#:_/;&&#**#!;$$+::^_%==&=}}!_&&+$!;_/=*&/}!!#*;_+^*:$:,#&__$;^/&!,#_$,#,;_/_}^#;._$$_;,&&,=_!*=%:_;/*+!%#.,}//!+,&%_}=_&#!:.,+&%=%_!^%&;!.$*;/++&.^=%==&_,#&:/^/%_*$+**&$,._#}.^:._+^=&&=,!+$%.%++*!=$_^;^&=!/%+%}}_:=,&,:^:&*};;};!&;=+^+*_$=:&#};#+#*;}::!^$&^}#,:,,/,!_#_}*}::,^_%=/&%&$#_;^;&.=}+**}$,._+=^_+_*=$=;^+#%$=+:#^:&!+*^_*,$_.=$&;;+}%&$;..^/%$_*::,:&##%#.,#+^$%$#,^%%}:_$:+//;+.!/_!=$&!}_#;_/}*:$_./+;*_,$//!&#,;_.%,=/^*%#$_+}#:_^=&&//%:}$:;;!#$.%+&*,$_}_#;;},$_#,&&,=_%!=&_!&:/^=;_.;&/}*%$%.}*}_+;!&_==#&$/:#,^/*!!#=.//,!#+$&^=&_,,_;=^=%;}}_/+#&_%$^^%&},:_$,:,^_%__.,%&^#$..+&*,$_}:##;:+^==$=.;,/%/=+$.!=#=.&+,^,//!.$_+$=/_&,,&_+/&^}#_$/.#+$,+_*=}&!=$=:&^&%:_+^}&%&.}##^/*&}!/$&;_+#!$}/:^+#%$}%_%,+&==/#*;_!.!%$%./*:!%}%:/^!!/=___,$&!$^_=;//=*^.^.**}%!$;:/^$=%}$_$,/&;#+#,.///..,&%==&_,_$:}^,/!$%#;;+/^%$^&%&},:_$^./^/%!;*/_!,#_;=:&;&&#!%#;,!/=}.$+^$=__=;&:=,=/&!&#:++!}$%#=.:+}*}}:^.,.%/=,_/,//+#+_};}+!$^$&.}^%%%}}^}^^%;==_%,_!^##.*+_*}}*:,^#%=}:}*::,^&}!!#$;+!:.*^;%,}_:=__:^^.%/=#/.*%#=.&+,^&+&*,$,,%+/%,&.&}==#&;,.!^%%&;.^_*=}&:,_&:/^!*;}.:}^#%_$$_};%/_}_#!.++_$$,.&&=,__};_^,&%}=_#%;:+!**#;+.=/:=,&&,+}%,}/_.^#&%!,_#;$$*:}^,%_}=*^$=:!^%%}}::#,_&==##$**}/:,^_%=+%:.;&&=!&#,$}_%;+&#!.:^.;+!$$,,&&=,__#;_*,:&==!#*,:/!.*^,%,}_:=},:!^;%//++^!_#=.&__;}/+#&$!.}!=*_$;:$^#%=}#_};%#+:&+_*=}&}}_^../;%##!:,+%&$!*#^;,#.:*+=%&},=$$/:!^^%=}//+!=#_;=+&^:/!*&_^;:+:%*$;#.!^_=;&/,,,&/=/__;!+**^$_;#^&%^&./!==#&;,.*,}/+=:#!;*}_:,^_%=&_%#};:!,*&^=/_&!+$_._+=%&&,!#}*:,}.#/,=/&!,!$=}_,.!%*!}$+;:+!/*,,&,=__=$*:;,;&/.++:*_$=:&:;,_&;/+;_&_==#&$:_!;&%&!.#/;#//*.}/,=+/%.}=;%/.&.}#_#,;!.:*+=%&},%&$=.^+;%,}_/+*!#_;=+&^,/,!!$#;#+$=^};:!_$#+;&/,!_%/!^_#;$%;!,+.&*}=_&,,;;^}&*=%_!;;^+._+_*=}&=*$}.}^*,.,}&=!&#,}#_=,#!_._+=%&}.}&^=&&=,_#,=/&!,$$;=+&*,$_##^&%,}_:=,&&,=__=;&/,!_#=.&+,*_}!:&^,%_}=_&;.&_==#/;,:,!=$&.,^$*=}&:;^_;^=&_,,_^+!&#,;#/=*#$,.#+=&*},:=,#&&=,__;;/&!;#_;=:/*,$_.=^/%,}_:=,+^==_#!;&/,!_#=.&^.&%$=:/^,%#}=_&,,/$==#&;;/_&,$&.,+_&*}&:,^$%==;_,,_&=%&#,;_+**&$..__!%&=.:_^=&,=,!^,=/&!,#_;=+&*.$_:&^&%,}_:=,&&,=#_=;&/,!$#=.&+,*_}!:&^;%_=!_&;.&_==#/;,.:!=$&.,^$*=}&:.^_&/=&_,,_+=%=#,;$/=*+$,$;+=/&*,:_,*&&=.__.//&%,#_;=++*,$$.=#,%,=$:=,&&:=_#/;&/,!_}=.&+,*}$=:^^,^;}=$&,,&_!%#&;:/_%/$&_,+_*=}^:,^}%=+#_,;$&=!&#_;_+/*&$,._,=%&},:=^=&,=,!*,=/&!,#_./+&*=$_.=^&&.}_:=,.&,*__=;&/,*$!%.&+}*_%.:&^,%_}=$$,,/&==#+;,/_!=}+.,+_%;}&#&^_%==&_,,_&=!$#,;}/=*&$,:$+=%&=%:__$&&=,__,=/&!,$,;=+,*,$_.=,+%,}__#,&&_=__=;&/,!_#=.;+,%;$=:/^,&$!&_&,$&_!/#&;,/_%=!:.,^**=}.:,;}%=!+_,,_/,!&!+;_/=*&$,._+=%.},_&^=&+=,$_,=/&!$#_.++&+*$_.=^&%,=&:=,;&,=__=;&/,!_$+.&+=*_}*:&,.%_}=_:,,/!==#&;,^_!=$&.}+_%^}&_!^_%==&_,;/&=!/#,;_/=*&$,._^.%&}$:_^=&&=,$&,=/:!,$+;=+/*,$_=!^&%,}__!,&&,=_");local U=(0xce-146)local n=97 local l=_;local e={}e={[((131-0x65)+-#[[use luraph if want lost money]])]=function()local o,_,r,e=v(z,l,l+P);l=l+M;n=(n+(U*M))%d;return(((e+n-(U)+a*(M*i))%a)*((i*I)^i))+(((r+n-(U*i)+a*(i^P))%d)*(a*d))+(((_+n-(U*P)+I)%d)*a)+((o+n-(U*M)+I)%d);end,[((0x51/9)+-#'nigglet')]=function(e,e,e)local e=v(z,l,l);l=l+r;n=(n+(U))%d;return((e+n-(U)+I)%a);end,[(-0x6f+114)]=function()local e,o=v(z,l,l+i);n=(n+(U*i))%d;l=l+i;return(((o+n-(U)+a*(i*M))%a)*d)+((e+n-(U*i)+d*(i^P))%a);end,[(704/0xb0)]=function(o,e,n)if n then local e=(o/i^(e-_))%i^((n-r)-(e-_)+r);return e-e%_;else local e=i^(e-r);return(o%(e+e)>=e)and _ or N;end;end,[((173-0x8a)+-#'Nicuse is good at sucking dick')]=function()local o=e[(155/0x9b)]();local l=e[(-0x20+33)]();local x=_;local n=(e[(0x18+-20)](l,r,S+M)*(i^(S*i)))+o;local o=e[((62-0x35)+-#[[ballz]])](l,21,31);local e=((-_)^e[(192/(-72+0x78))](l,32));if(o==N)then if(n==D)then return e*N;else o=r;x=D;end;elseif(o==(a*(i^P))-r)then return(n==N)and(e*(r/D))or(e*(N/D));end;return G(e,o-((d*(M))-_))*(x+(n/(i^V)));end,[(-50+0x38)]=function(o,i,i)local i;if(not o)then o=e[(28-(-#"heil eco mother fuckers"+(0x1a90/136)))]();if(o==N)then return'';end;end;i=R(z,l,l+o-_);l=l+o;local e=''for o=r,#i do e=Y(e,H((v(R(i,o,o))+n)%d))n=(n+U)%a end return e;end}local function I(...)return{...},J('#',...)end local function R()local b={};local l={};local o={};local h={b,l,nil,o};local n={}local s=(10+-#{(function()return{','}end)(),",",(function()return{','}end)(),{};1})local d={[(-#[[nate higger nuck figgers and nill kiggers]]+(0x7f-83))]=(function(o)return not(#o==e[((0xfc-157)+-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]])]())end),[(0x1c/28)]=(function(o)return e[(0x42-61)]()end),[((-0x52+134)+-#'da hood money generator 2022 working free no virus')]=(function(o)return e[(0x3f6/169)]()end),[(264/0x42)]=(function(o)local l=e[(-#[[impulse is hot]]+(4240/0xd4))]()local e=''local o=1 for n=1,#l do o=(o+s)%d e=Y(e,H((v(l:sub(n,n))+o)%a))end return e end)};h[3]=e[(122+-0x78)]();for e=r,e[(0x24+(-6370/0xb6))]()do l[e-r]=R();end;local o=e[((12993/0xb7)+-#"pussy day pussy clean pussy fresh pussy pretty pussy fat full of fresh")]()for o=1,o do local e=e[((112-0x5e)+-#'pairu sucks dick')]();local l;local e=d[e%((((37074/0xde)+-#'ambattakam')+-0x62)+-#'monkey mode')];n[o]=e and e({});end;for h=1,e[((143-0x62)+-#[[MoonsecV2 deobfuscator 2020 free 100 percent]])]()do local o=e[(-60+0x3e)]();if(e[(132/(-0x4a+107))](o,_,r)==D)then local a=e[(464/(-#'impulse reel pastebin'+(32606/0xee)))](o,i,P);local l=e[(113-0x6d)](o,M,i+M);local o={e[(459/0x99)](),e[((-#"get some bitches"+(-0x34+-21))+0x5c)](),nil,nil};local d={[(0x6f-(-108+0xdb))]=function()o[u]=e[(0x3a+-55)]();o[B]=e[(651/0xd9)]();end,[((0x9e-106)+-#'how to find my dad at the dollar store getting milk')]=function()o[t]=e[(-96+0x61)]();end,[((0x7b-(-0x3e+163))+-#"get good use moonsec")]=function()o[c]=e[(0x8d/(187+-0x2e))]()-(i^S)end,[((-19404/0xfc)+0x50)]=function()o[O]=e[(((-0x67+231)+-#"moonsec backrooms confirmed")-0x64)]()-(i^S)o[m]=e[(651/0xd9)]();end};d[a]();if(e[(468/0x75)](l,r,_)==r)then o[w]=n[o[x]]end if(e[(0x374/221)](l,i,i)==_)then o[t]=n[o[c]]end if(e[(728/0xb6)](l,P,P)==r)then o[m]=n[o[m]]end b[h]=o;end end;return h;end;local function N(e,M,U)local a=e[i];local n=e[P];local H=e[_];return(function(...)local d=n;local z=J('#',...)-r;local Y={};local l=_;local e=_ e*=-1 local P=e;local v=I local n={};local D=a;local S={};local I={...};local a=H;for e=0,z do if(e>=d)then Y[e-d]=I[e+r];else n[e]=I[e+_];end;end;local e=z-d+_ local e;local d;while true do e=a[l];d=e[(128+-0x7f)];o=(15422400)while d<=(0x79+-81)do o-= o o=(10279710)while d<=(91-0x48)do o-= o o=(9366620)while d<=(-#'never gonna give you up never gonna let you down'+(173-(343-0xe3)))do o-= o o=(7632625)while d<=(-0x3c+64)do o-= o o=(161499)while d<=(113-0x70)do o-= o o=(10055220)while(0x4b-75)<d do o-= o n[e[f]]={};break end while 4035==(o)/((-0x2d+2537))do U[e[g]]=n[e[x]];l=l+_;e=a[l];n[e[h]]={};l=l+_;e=a[l];n[e[f]]={};l=l+_;e=a[l];U[e[b]]=n[e[x]];l=l+_;e=a[l];n[e[x]]=U[e[b]];l=l+_;e=a[l];if(n[e[f]]~=e[m])then l=l+r;else l=e[t];end;break end;break;end while 533==(o)/((0xa5b4/140))do o=(1990156)while d<=((51+-0x19)+-#'big niggers sucking cock')do o-= o local e=e[h]n[e](n[e+r])break;end while(o)/((2147-0x457))==1921 do o=(977500)while(117-0x72)<d do o-= o n[e[h]]=n[e[b]]-n[e[j]];break end while 391==(o)/((5027-0x9df))do n[e[w]]();break end;break;end break;end break;end while(o)/(((808800/0xf0)+-#"Protected vírus"))==2275 do o=(5824336)while(-#"you get no absolute bitches"+(0x6d-76))>=d do o-= o o=(1617364)while d>(76+-0x47)do o-= o do return n[e[w]]end break end while(o)/(((2532-0x50d)+-#'IP grabbed'))==1316 do n[e[f]]=#n[e[c]];break end;break;end while 3128==(o)/((0x79d+-87))do o=(4726440)while((0xc9-146)+-#[[never gonna give you up never gonna let you down]])>=d do o-= o local o=e[h]n[o]=n[o](y(n,o+_,e[b]))break;end while(o)/(((0xd99-1755)+-#[[atakan der nigga]]))==2764 do o=(7549556)while d>((129+-0x5b)+-#"Nicuse is good at sucking dick")do o-= o n[e[h]]=M[e[b]];l=l+_;e=a[l];n[e[s]]=#n[e[u]];l=l+_;e=a[l];M[e[O]]=n[e[k]];l=l+_;e=a[l];n[e[w]]=M[e[g]];l=l+_;e=a[l];n[e[x]]=#n[e[b]];l=l+_;e=a[l];M[e[g]]=n[e[s]];l=l+_;e=a[l];do return end;break end while 2212==(o)/((((542935-0x42483)/0x4f)+-#[[how do i get moonsex v3]]))do if(n[e[f]]~=e[B])then l=l+r;else l=e[c];end;break end;break;end break;end break;end break;end while 2983==(o)/((-#'Only a to Z 0 to 9 is allowed'+(6462-0xcdd)))do o=(8946000)while(0x71-99)>=d do o-= o o=(41055)while(-#[[you cut your pubes with nail clippers]]+(1104/0x17))>=d do o-= o o=(1456728)while d>((0xb4/6)+-#[[free pornhub premium]])do o-= o local l=e[b];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[s]]=o;break end while(o)/((2273-0x49d))==1334 do n[e[f]]={};break end;break;end while(o)/((-0x6f+132))==1955 do o=(3731398)while(63-0x33)>=d do o-= o if(n[e[x]]==n[e[m]])then l=l+r;else l=e[O];end;break;end while 1814==(o)/((4231-0x87e))do o=(1432320)while((129-0x60)+-#'get good use moonsec')<d do o-= o local e=e[h]n[e]=n[e](y(n,e+_,P))break end while(o)/((0x40d-557))==2984 do l=e[g];break end;break;end break;end break;end while(o)/((6839-0xd67))==2625 do o=(1288844)while d<=(0x86+-118)do o-= o o=(7581501)while d>(1800/0x78)do o-= o M[e[O]]=n[e[x]];break end while(o)/((-0x48+2439))==3203 do if(n[e[w]]~=e[m])then l=l+r;else l=e[c];end;break end;break;end while 1538==(o)/((0x6a1-859))do o=(2876920)while d<=(140-0x7b)do o-= o local d=D[e[t]];local _;local o={};_=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[p]do l=l+r;local e=a[l];if e[(-#[[Nsrds GAYYYYAIAHAKAJAVAHAUA]]+(108-0x50))]==61 then o[_-1]={n,e[b]};else o[_-1]={M,e[u]};end;S[#S+1]=o;end;n[e[x]]=N(d,_,U);break;end while(o)/((-#'Help I cant think of a funny and original meme string pls help'+(0x868+-64)))==1420 do o=(7350772)while d>((0x10e-186)+-#'I have stolen your father figure and all your milk muahahahahahaha')do o-= o local l=e[f];local o=n[e[c]];n[l+1]=o;n[l]=o[e[m]];break end while(o)/((4053+-0x47))==1846 do local o=e[s]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break end;break;end break;end break;end break;end break;end while 3087==(o)/((549450/((0x114+-48)+-#"Luraph v13 has been released changed absolutely fucking nothing")))do o=(139536)while((72+-0x1c)+-#"Protected vírus")>=d do o-= o o=(9098854)while(85+-0x3d)>=d do o-= o o=(1555918)while(-29+0x32)>=d do o-= o o=(388278)while(-#'if found dad when back from milk then print yay end'+(236-(196+-0x1f)))<d do o-= o do return n[e[h]]end break end while(o)/((47286/0x47))==583 do n[e[w]]=U[e[b]];break end;break;end while(o)/((260039/0xf1))==1442 do o=(11491320)while(0x646/73)>=d do o-= o local e=e[x]n[e]=n[e](y(n,e+_,P))break;end while(o)/((-46+0xe75))==3144 do o=(2257752)while d>(103-(-#"sussy chat sussy sussy"+(260-0x9e)))do o-= o local o=e[x]n[o](y(n,o+r,e[u]))break end while 906==(o)/((2566+-0x4a))do local d;local i,c;local r;local o;U[e[O]]=n[e[s]];l=l+_;e=a[l];n[e[x]]=U[e[t]];l=l+_;e=a[l];n[e[s]]=U[e[g]];l=l+_;e=a[l];o=e[x];r=n[e[t]];n[o+1]=r;n[o]=r[e[p]];l=l+_;e=a[l];n[e[f]]=e[u];l=l+_;e=a[l];o=e[x]i,c=v(n[o](y(n,o+1,e[u])))P=c+o-1 d=0;for e=o,P do d=d+_;n[e]=i[d];end;l=l+_;e=a[l];o=e[h]n[o]=n[o](y(n,o+_,P))l=l+_;e=a[l];n[e[f]]();l=l+_;e=a[l];n[e[x]]=e[u];l=l+_;e=a[l];n[e[h]]=U[e[g]];break end;break;end break;end break;end while(o)/((0x98baa/246))==3578 do o=(823116)while d<=((3264/0x60)+-#[[Hey skid]])do o-= o o=(6297676)while d>(-#[[Asses]]+(0x75+-87))do o-= o n[e[k]]=n[e[g]]-n[e[m]];break end while 3556==(o)/(((0x70e+-22)+-#'i love minors'))do M[e[g]]=n[e[x]];break end;break;end while(o)/((-#[[Protected vírus]]+(183327/0x35)))==239 do o=(13384364)while d<=(81-0x36)do o-= o local o=e[k];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[b];else n[o+3]=_;end elseif(_<n[o+1])then l=e[b];else n[o+3]=_;end break;end while(o)/((-27+((732564/0xcc)+-#'zykem krul')))==3766 do o=(13564522)while((201-0xa1)+-#'mike litoris')<d do o-= o l=e[t];break end while(o)/(((17403828/0x4e)/58))==3526 do local M;local d;local b;local o;n[e[f]]=U[e[t]];l=l+_;e=a[l];n[e[k]]=n[e[t]][e[C]];l=l+_;e=a[l];o=e[s];b=n[e[g]];n[o+1]=b;n[o]=b[e[m]];l=l+_;e=a[l];n[e[w]]=n[e[c]];l=l+_;e=a[l];n[e[f]]=n[e[O]];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];o=e[h];b=n[e[O]];n[o+1]=b;n[o]=b[e[F]];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];d={n,e};d[r][d[i][s]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[s]]=n[e[u]]%e[B];l=l+_;e=a[l];o=e[x]n[o]=n[o](n[o+r])l=l+_;e=a[l];b=e[g];M=n[b]for e=b+1,e[m]do M=M..n[e];end;n[e[x]]=M;l=l+_;e=a[l];d={n,e};d[r][d[i][x]]=d[_][d[i][m]]+d[r][d[i][t]];l=l+_;e=a[l];n[e[w]]=n[e[u]]%e[p];break end;break;end break;end break;end break;end while(o)/((0xf8a/78))==2736 do o=(6336177)while d<=((-0x2f+120)+-#'psx real dupe steal all ur pets no joke')do o-= o o=(8154800)while d<=((-58+0x5e)+-#[[ballz]])do o-= o o=(392310)while((172-0x7a)+-#[[Impulse youtube real]])<d do o-= o if(n[e[x]]==n[e[B]])then l=l+r;else l=e[O];end;break end while 135==(o)/((0x1712-3000))do n[e[f]]=n[e[c]]%e[B];break end;break;end while(o)/((0x44a70/74))==2146 do o=(8681802)while d<=(-#[[if syn request then print your mom then end and then kill yourself]]+(233-0x87))do o-= o local o=e[w]n[o]=n[o](y(n,o+_,e[t]))break;end while(o)/(((2670+-0x79)+-#"Ur mom"))==3414 do o=(8214112)while d>(-0x2d+78)do o-= o n[e[k]]();break end while 2606==(o)/((0xa6380/216))do if(n[e[f]]~=n[e[m]])then l=l+r;else l=e[t];end;break end;break;end break;end break;end while(o)/((-#[[Negro]]+(821688/0xdb)))==1691 do o=(800541)while d<=(4329/0x75)do o-= o o=(3634590)while(0x1d1f/213)>=d do o-= o n[e[k]]=M[e[c]];break;end while(o)/((0x62b+-124))==2498 do o=(4959568)while(0x1290/132)<d do o-= o local o=e[w];local _=n[o]local d=n[o+2];if(d>0)then if(_>n[o+1])then l=e[c];else n[o+3]=_;end elseif(_<n[o+1])then l=e[u];else n[o+3]=_;end break end while(o)/((3256-0x674))==3092 do local o=e[k];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[c];n[o+3]=_;end elseif(_>=n[o+1])then l=e[O];n[o+3]=_;end break end;break;end break;end while(o)/((0x1bd98/56))==393 do o=(1228339)while d<=(0x1c34/190)do o-= o local o=e[h]n[o](y(n,o+r,e[t]))break;end while 2653==(o)/((69913/(-82+0xe9)))do o=(5342240)while d>(-#[[game players kick localplayer kicked by nicuse and beliveri12 ahhahahahahahhaha]]+(5192/0x2c))do o-= o n[e[k]]=N(D[e[O]],nil,U);break end while(o)/((5602-0xb12))==1930 do n[e[h]]=U[e[c]];break end;break;end break;end break;end break;end break;end break;end while 4080==(o)/((7648-0xf1c))do o=(11961030)while(0x2850/172)>=d do o-= o o=(1582632)while d<=((0x3078/188)+-#"atakan der nigga")do o-= o o=(4754217)while(78+-0x21)>=d do o-= o o=(1796703)while d<=(-#"Ur mom"+(203-0x9b))do o-= o o=(2181200)while(-#'you can pull my IP but you cant pull any bitches fucking loner'+(-0x5c+195))<d do o-= o local d;local o;n[e[s]]=n[e[t]];l=l+_;e=a[l];n[e[x]]=e[c];l=l+_;e=a[l];n[e[x]]=n[e[O]];l=l+_;e=a[l];n[e[h]]=e[g];l=l+_;e=a[l];n[e[x]]=n[e[g]];l=l+_;e=a[l];n[e[x]]=e[t];l=l+_;e=a[l];o=e[k];d=n[o];for e=o+1,e[b]do A(d,n[e])end;break end while(o)/((0x64d-834))==2800 do local o=e[s];local l=n[o];for e=o+1,e[b]do A(l,n[e])end;break end;break;end while(o)/((1347-0x2de))==2931 do o=(11054660)while(-#'panzerfaust'+((487-0x11a)-0x97))>=d do o-= o n[e[w]]=(e[t]~=0);l=l+r;break;end while 3391==(o)/((6612-0xd18))do o=(2262007)while(-#'If not skid then return hasbitches end'+(-0x52+164))<d do o-= o U[e[c]]=n[e[k]];break end while 2603==(o)/((0x305f4/228))do n[e[x]]=n[e[c]][e[B]];break end;break;end break;end break;end while(o)/(((72361+-0x51)/0x28))==2631 do o=(1124188)while(0x8d-94)>=d do o-= o o=(366471)while d>(0xb3-133)do o-= o local i=D[e[c]];local d;local o={};d=L({},{__index=function(n,e)local e=o[e];return e[1][e[2]];end,__newindex=function(l,e,n)local e=o[e]e[1][e[2]]=n;end;});for _=1,e[C]do l=l+r;local e=a[l];if e[(92+-0x5b)]==61 then o[_-1]={n,e[O]};else o[_-1]={M,e[c]};end;S[#S+1]=o;end;n[e[f]]=N(i,d,U);break end while(o)/((-#[[Negro]]+(0x6e62a/181)))==147 do n[e[h]]=n[e[O]][n[e[p]]];break end;break;end while 676==(o)/((3360-0x6a1))do o=(10836215)while d<=((-0x62+151)+-#"Bwomp")do o-= o n[e[w]]=n[e[g]][e[p]];l=l+_;e=a[l];n[e[s]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[s]]=U[e[u]];l=l+_;e=a[l];n[e[h]]=n[e[b]][e[m]];l=l+_;e=a[l];n[e[f]]=n[e[O]][e[C]];l=l+_;e=a[l];n[e[s]]=n[e[c]][e[m]];l=l+_;e=a[l];n[e[h]]=U[e[c]];l=l+_;e=a[l];n[e[w]]=n[e[b]][e[C]];l=l+_;e=a[l];n[e[w]]={};l=l+_;e=a[l];n[e[x]]=e[c];break;end while(o)/((-68+(-#"i dont fucking care if its your own ui"+(-0x24+2937))))==3877 do o=(768636)while(0xac+-123)<d do o-= o if not n[e[k]]then l=l+r;else l=e[u];end;break end while(o)/(((-0x3d+(-#"cilerteddoesntlikeburgers"+(-0x6c+862)))+-#"impulse loves moonsex"))==1188 do n[e[s]]=n[e[g]][e[j]];break end;break;end break;end break;end break;end while(o)/((558576/(-#"fatee is gay 0nly on top"+(579-0x153))))==612 do o=(2907660)while d<=(-#'you get no absolute bitches'+(0x668/20))do o-= o o=(560619)while d<=((0x5a+-20)+-#[[Rodenladder is gay]])do o-= o o=(949032)while(121-0x46)<d do o-= o local o=e[s];local l=n[o];for e=o+1,e[O]do A(l,n[e])end;break end while(o)/((-#"warboy hates you"+((0x2df24-94120)/0x1d)))==294 do n[e[w]]=e[b];break end;break;end while(o)/((0xbf9-1562))==373 do o=(5790024)while d<=(0xda-165)do o-= o n[e[h]]=(e[b]~=0);l=l+r;break;end while(o)/((4200-0x840))==2773 do o=(2727249)while(0x2412/171)<d do o-= o local d;local o;o=e[h];d=n[e[c]];n[o+1]=d;n[o]=d[e[m]];l=l+_;e=a[l];n[e[f]]=e[t];l=l+_;e=a[l];o=e[x]n[o]=n[o](y(n,o+_,e[b]))l=l+_;e=a[l];o=e[w];d=n[e[u]];n[o+1]=d;n[o]=d[e[F]];l=l+_;e=a[l];n[e[f]]=n[e[u]];l=l+_;e=a[l];o=e[s]n[o]=n[o](y(n,o+_,e[u]))l=l+_;e=a[l];n[e[h]]=U[e[t]];l=l+_;e=a[l];o=e[f];d=n[e[u]];n[o+1]=d;n[o]=d[e[C]];l=l+_;e=a[l];n[e[f]]=n[e[b]];l=l+_;e=a[l];n[e[h]]=n[e[t]];break end while(o)/((-0x71+2242))==1281 do n[e[k]]=n[e[b]];break end;break;end break;end break;end while(o)/((134160/0x34))==1127 do o=(421270)while(-#'nate higger nuck figgers and nill kiggers'+(-0x35+151))>=d do o-= o o=(2412332)while(149-((0x183-207)+-#"when the he went where when he where where when the he when ther wher he then here went"))<d do o-= o n[e[w]]=(e[u]~=0);break end while(o)/((-#[[Hoo gah hooga hoo gahoo hoo gah hooga hoo gahoo]]+(212212/((0xc4-137)+-#'mf stfu'))))==598 do n[e[s]]=N(D[e[g]],nil,U);break end;break;end while 4090==(o)/((-#'free bobux no skem'+(0x70f7/239)))do o=(313972)while(0xf2e/67)>=d do o-= o local o=e[x];local d=n[o+2];local _=n[o]+d;n[o]=_;if(d>0)then if(_<=n[o+1])then l=e[O];n[o+3]=_;end elseif(_>=n[o+1])then l=e[c];n[o+3]=_;end break;end while(o)/((-#'0nly 1337'+(0x88+-21)))==2962 do o=(3742218)while d>(0x140d/87)do o-= o local e=e[x]n[e]=n[e](n[e+r])break end while(o)/(((3948-0x7d3)+-#"how to join the kkk"))==1943 do U[e[c]]=n[e[k]];break end;break;end break;end break;end break;end break;end while 2994==(o)/(((176483120/0xb0)/251))do o=(6509115)while(0xc6-(0xb1+-49))>=d do o-= o o=(7419152)while d<=(9295/0x8f)do o-= o o=(4981461)while(4030/0x41)>=d do o-= o o=(4508237)while d>(0x225/9)do o-= o local e={n,e};e[r][e[i][k]]=e[_][e[i][p]]+e[r][e[i][u]];break end while(o)/((-#'if found dad when back from milk then print yay end'+(0xa95-1387)))==3547 do n[e[f]]=n[e[c]];break end;break;end while(o)/((0x1c5ce/58))==2487 do o=(878952)while d<=((2130660/0xb2)/0xbe)do o-= o local e=e[k]n[e]=n[e](n[e+r])break;end while 2764==(o)/((395+-0x4d))do o=(3007936)while(-46+0x6e)<d do o-= o if(n[e[k]]~=n[e[F]])then l=l+r;else l=e[u];end;break end while(o)/(((419216/0x98)+-#[[Ur mom]]))==1093 do n[e[s]]=(e[c]~=0);break end;break;end break;end break;end while 2692==(o)/((2777+-0x15))do o=(7440000)while d<=(-#[[my ass hurts]]+(0x2cbf/145))do o-= o o=(1786228)while((-0x7e+216)+-#[[0nly 1337 smashed ur wap]])<d do o-= o n[e[x]][n[e[c]]]=n[e[B]];break end while(o)/((0x16bd2/129))==2474 do n[e[h]]=e[O];break end;break;end while 2976==(o)/(((5135-0xa3a)+-#'iPipeh i love You'))do o=(1663518)while(-80+0x94)>=d do o-= o local l=e[t];local o=n[l]for e=l+1,e[B]do o=o..n[e];end;n[e[x]]=o;break;end while(o)/((195708/0xbc))==1598 do o=(6885076)while d>((360-0xd8)+-#"brawl stars hard gay porn shelly nsked minecraft gay porn roblox rule34 hot")do o-= o local r;local d;local o;n[e[s]]=e[O];l=l+_;e=a[l];n[e[k]]=e[u];l=l+_;e=a[l];n[e[k]]=#n[e[b]];l=l+_;e=a[l];n[e[k]]=e[t];l=l+_;e=a[l];o=e[h];d=n[o]r=n[o+2];if(r>0)then if(d>n[o+1])then l=e[u];else n[o+3]=d;end elseif(d<n[o+1])then l=e[O];else n[o+3]=d;end break end while(o)/(((0xef0+(-0xff0/60))+-#'Omg guys'))==1837 do n[e[h]]=n[e[O]][n[e[C]]];break end;break;end break;end break;end break;end while 1655==(o)/((0x5856c/92))do o=(791910)while(125+-0x32)>=d do o-= o o=(561411)while d<=(0xbe-118)do o-= o o=(392445)while(0x13b1/(-49+0x78))<d do o-= o local e=e[k]n[e](n[e+r])break end while 513==(o)/((-#'I have stolen your father figure and all your milk muahahahahahaha'+(65649/0x4f)))do n[e[x]]=#n[e[t]];break end;break;end while(o)/(((1548-0x33b)+-#[[null]]))==783 do o=(1537471)while d<=(-38+0x6f)do o-= o local o=e[x]local l,e=v(n[o](y(n,o+1,e[u])))P=e+o-1 local e=0;for o=o,P do e=e+_;n[o]=l[e];end;break;end while 2951==(o)/((8857/0x11))do o=(8560870)while d>(4366/0x3b)do o-= o local e={n,e};e[r][e[i][h]]=e[_][e[i][C]]+e[r][e[i][t]];break end while(o)/((0x8685a/149))==2315 do do return end;break end;break;end break;end break;end while 378==(o)/((2155+-0x3c))do o=(3256000)while d<=((183+-0x64)+-#[[penis]])do o-= o o=(6872775)while(9196/0x79)>=d do o-= o n[e[s]]=n[e[t]]%e[p];break;end while 1729==(o)/((4067+-0x5c))do o=(2168064)while d>((-#"holy shit"+(0x86f9/109))/0x4)do o-= o local o=e[h];local l=n[e[b]];n[o+1]=l;n[o]=l[e[j]];break end while(o)/((-111+0x2af))==3764 do n[e[w]]=M[e[g]];break end;break;end break;end while(o)/((-#"Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes"+(1996+-0x1d)))==1760 do o=(1725615)while d<=((0x1f00/64)+-#'testpsx dupe no scam legit 2022 free no virus')do o-= o n[e[w]][n[e[g]]]=n[e[j]];break;end while(o)/((-0x4c+3787))==465 do o=(2951907)while d>((9579/0x67)+-#[[Daddy fuck me]])do o-= o do return end;break end while 3269==(o)/(((0x75b-970)+-#'zykem krul'))do if not n[e[w]]then l=l+r;else l=e[u];end;break end;break;end break;end break;end break;end break;end break;end l+= r end;end);end;return N(R(),{},K())()end)_msec({[((((11375/0x19)+-#"panzerfaust")-238)+-#[[FranzJPresents]])]='\115\116'..(function(e)return(e and'(-#\'pls free synapse x i am gamer girl uwu\'+(387-0xf9))')or'\114\105'or'\120\58'end)((0x30+-43)==(0x558/228))..'\110g',[((175143/0xed)+-#'null')]='\108\100'..(function(e)return(e and'(0x8b+-39)')or'\101\120'or'\119\111'end)((0x77-114)==((54-0x26)+-#'IP grabbed'))..'\112',[((-0x40+363)+-#'me when they are is have the me when are is do me when')]=(function(e)return(e and'(-#"Protected vírus"+(0xa4+-49))')and'\98\121'or'\100\120'end)((82-0x4d)==(65-(182-0x7a)))..'\116\101',[(-#{",",'nil',1;22,(function()return{','}end)();22}+381)]='\99'..(function(e)return(e and'(312-0xd4)')and'\90\19\157'or'\104\97'end)((0x80+-123)==(-0x1d+32))..'\114',[(21756/0x2a)]='\116\97'..(function(e)return(e and'(((-0x4f+-32)+0xeb)+-#\'big niggers sucking cock\')')and'\64\113'or'\98\108'end)((0x384/150)==((0x4f-60)+-#"waste of sperm"))..'\101',[(479+-#{28;14,{};28})]=(function(e)return(e and'((0x13e-211)+-#\'mf stfu\')')or'\115\117'or'\78\107'end)((-0x79+124)==(140-0x6d))..'\98',[(-#'i love minors'+(-103+0x3f4))]='\99\111'..(function(e)return(e and'(0x13d-(26908/0x7c))')and'\110\99'or'\110\105\103\97'end)((-#'blinx1 is a sissy little femboy that loves men'+(10164/0x84))==(-#"nicowashere"+(-0x12+60)))..'\97\116',[(0xb944/71)]=(function(e,o)return(e and'((1212600/0x81)/0x5e)')and'\48\159\158\188\10'or'\109\97'end)((0x40+-59)==(-#"avan"+(0x712/(386-0xcd))))..'\116\104',[(0xab5-1426)]=(function(e,o)return((78+-0x49)==((375/0x19)+-#"deadphonelua")and'\48'..'\195'or e..((not'\20\95\69'and'\90'..'\180'or o)))or'\199\203\95'end),[((0x1f6ee/125)+-#"i have found your porn folder i am now approaching your house at 83 miles per hour")]='\105\110'..(function(e,o)return(e and'(0x41a0/168)')and'\90\115\138\115\15'or'\115\101'end)((48-0x2b)==(2077/0x43))..'\114\116',[(-#[[zxcvbnm]]+(0x855-1115))]='\117\110'..(function(e,o)return(e and'(-#\'MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch\'+(260+-0x43))')or'\112\97'or'\20\38\154'end)((0x302/((0x9768/228)+-#'Fucking Retarted'))==(0x9c-125))..'\99\107',[(2397-0x4df)]='\115\101'..(function(e)return(e and'((-#\'legend says i was here\'+(-0x54+240))+-34)')and'\110\112\99\104'or'\108\101'end)((-#'ambatakum'+(65-0x33))==(0x6d-78))..'\99\116',[(1237+-#{(function()return{','}end)(),'nil';1,'}',{};'}'})]='\116\111\110'..(function(e,o)return(e and'(-#"Smokey BArbecue BAcon BUford from checkers mm"+(230+-0x55))')and'\117\109\98'or'\100\97\120\122'end)(((-0x12+105)+-#'i have found your porn folder i am now approaching your house at 83 miles per hour')==(65-0x3c))..'\101\114'},{[(-#"Reduce meme string slowmode when plsplspls"+(179-0x6b))]=((getfenv))},((getfenv))()) end)()



end)


Main3Section:NewButton("🐍Septex Admin🐍", "Un Admin especializado en prision life", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)
--------------------------------------------------------------MAIN SECTION CON KEY----------------------------------------------------------------
local Main3Section = Main3:NewSection("Scripts con KEY")


Main3Section:NewButton("🐍PrisonWare (CON KEY)🐍", "Un script bastante util, pero con key.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)


local Main3Section = Main3:NewSection("Spanish HUB versione santeriores")


Main3Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main3Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main3Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
-- FIN DEL MAIN3 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main4 = Window:NewTab("💥Destruction Sim💣")
local Main4Section = Main4:NewSection("Sin Key")


Main4Section:NewButton("🐍Inf Money V1🐍", "Te dara cientos de miles o millones de monedas en SEGUNDOS", function()
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


Main4Section:NewButton("🐍PROXIMA HUB GUI🐍", "¡EL MEJOR SCRIPT DE ESTE JUEGO!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
-----------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main4Section = Main4:NewSection("Con Key")

Main4Section:NewButton("🐍Pog Hub UPDATED🐍", "¡Puede ser utilizado en muchos juegos mas!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/Loader/main/Loader.lua"))()
end)


Main4Section:NewButton("🐍OP GUI"🐍, "Casi el mejor script para este juego", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/JrFPkKMa"))()
end)


Main4Section:NewButton("🐍Eclipse HUB🐍", "¡Puede ser utilizado en muchisisimos juegos mas!", function()
    getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)
-- FIN DEL MAIN4 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main5 = Window:NewTab("🔥Admin's Scripts💫")
local Main5Section = Main5:NewSection("Sin Key")


Main5Section:NewButton("🐍IV Admin V3🐍", "Un admin que se utiliza por chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍CMD-X🐍", "Se abrira un panel para poner comandos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)


Main5Section:NewButton("🐍Fate's admin🐍", "Este script admin tambien es mediante chat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)


Main5Section:NewButton("🐍Leg's Admin V2🐍", "Un admin que se utiliza por chat (Tambien)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main5Section:NewButton("🐍Admin Pack🐍", "Al accionarlo apareceran mucho panelas admin", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
-- INFINITE YIELD
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt'),true))()
-- PRISONWARE GUI
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- -- Admin commands
loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
--TIGER ADMIN
loadstring(game:HttpGet(('https://pastebin.com/raw/KA7xFcbL'),true))()
-- - Admin commands Repeat script, gurantee work
-- THE BEST ROBLOX PRISON LIFE (CARS FIXED!) SCRIPT EXPLOIT - MADE BY OPERATOR
---THANK YOU TO ALL THE CREATORS OF THESE SCRIPTS, ALL CREDIT GOES TO THEM
end)


Main5Section:NewButton("🐍IV Admin V3🐍", "Un hub hecho por Juanko's mods", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)


Main5Section:NewButton("🐍Chaos Script V9.5🐍", "Un script tambien hecho por Juanko's mods.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
end)
----------------------------------------------------SCRIPTS CON KEY----------------------------------
local Main5Section = Main5:NewSection("Con Key")

Main5Section:NewButton("🐍Adminus"🐍, "Un admin muy utilizado", function()
    local Theme = "Default" ---- change to New if u want a cool intro

if Theme == "Default" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-ADMINUS-GUI-(UPDATE)-1290")()
elseif Theme == "New" then
loadstring(game:HttpGet"https://rawscripts.net/raw/Universal-Script-test-1232")()
end
end)



-- FIN DEL MAIN5 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main6 = Window:NewTab("💪Hubs y Guis☠")
local Main6Section = Main6:NewSection("Sin Key")


Main6Section:NewButton("🐍Hoho Hub Script🐍", "Si lo usas en un juego al cual no soporta te echara", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)


Main6Section:NewButton("🐍Ez Hub🐍", "Un HUB con mas de 100 juegos compatibles!!", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)


Main6Section:NewButton("🐍Universal Waypoints GUI🐍", "Hub Universal", function()
    loadstring(game:HttpGet('https://weinzspace.com/revamp.lua'))()
end)


Main6Section:NewButton("🐍AirHub V2🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()
end)


Main6Section:NewButton("🐍Fathom Hub🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Y4AGJALY"))();
end)


Main6Section:NewButton("🐍AuratusX🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMrQuacks/AuratusX/master/Load"))()
end)


Main6Section:NewButton("🐍Multi scripter hub x v3🐍", "Otro universal Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
end)
--------------------------------------------------------------------------------SPANISH HUB VERSIONES ANTERIORES---------------------------------
local Main6Section = Main6:NewSection("Spanish HUB versione santeriores")

Main6Section:NewButton("🔥 Spanish HUB V1 🔥", "La primera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hf8znMZB", true))()
end)


Main6Section:NewButton("💣 Spanish HUB V2 💣", "La segunda version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9q2ySJ0U", true))()
end)


Main6Section:NewButton("🌌 Spanish HUB V3 🌌", "La tercera version de este HUB", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/i44p1nYp", true))()
end)
----------------------------------------------------------------EXTRA------------------------------------------------------------------------------
local Main6Section = Main6:NewSection("Spanish HUB V3 Con diferentes TEMAS")
-- LIGHT THEME -----------------------------------------------------------
Main6Section:NewButton("🐍Tema blanco🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uXSYigqV"))()
end)
-- DARK THEME ----------------------------------------------------------
Main6Section:NewButton("🐍Tema negro🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cMgvgqse"))()
end)
-- GRAPE THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema uva🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8EwiED0s"))()
end)
-- BLOOD THEME ---------------------------------------------------------
Main6Section:NewButton("🐍Tema sangre🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YSh1EkRN"))()
end)
-- OCEAN THEME---------------------------------------------------------
Main6Section:NewButton("🐍Tema oceano🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KmE4Mhtu"))()
end)
-- MIDNIGHT THEME ------------------------------------------------------
Main6Section:NewButton("🐍Tema medianoche🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cq01Qm7F"))()
end)
-- SENTINEL THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema sentinela🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mjwRWR7i"))()
end)
-- SYNAPSE THEME -------------------------------------------------------
Main6Section:NewButton("🐍Tema synapse🐍", "Es el SPANISH HUB *V3* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aCV6mgph"))()
end)
-- SERPENTE THEME (🐍Secret THEME🐍) ----------------------------------------
Main6Section:NewButton("Tema serpiente", "Es el SPANISH HUB *V* con otros colores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6Bcd4LZT"))()
end)
-- FIN DEL MAIN6 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main7 = Window:NewTab("🕶Dark Dex's🌑")
local Main7Section = Main7:NewSection("Roba contenido interno de los juegos")


Main7Section:NewButton("🐍Dark Dex ANTI KEY SISTEM🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/003AcccountMaker/Main/main/DarkHub"))();
end)


Main7Section:NewButton("🐍Dark Dex Bypass🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Didward/DarkhubBypassed/main/bypassed.lua", true))()
end)


Main7Section:NewButton("🐍Gran Dark Dex🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4'))()
end)
--------------------------------------------------------------------------DARK DEX V1-V4
local Main7Section = Main7:NewSection("Dark Dex's en orden")

Main7Section:NewButton("🐍Dark Dex V1🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://3025032531")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V2🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script4", true))()
end)


Main7Section:NewButton("🐍Dark Dex V3🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end)


Main7Section:NewButton("🐍Dark Dex V4🐍", "Las Dark dex son capazes de robar contenido de los juegos", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script5", true))()
end)
-- FIN DEL MAIN7 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main8 = Window:NewTab("🔫Da Hood🌇")
local Main8Section = Main8:NewSection("Scripts SIN KEY")


Main8Section:NewButton("🐍GUI ZINC HUB🐍", "Uno de los HUB mejor valorados de Da Hood", function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍ZINC HUB (OP)🐍", "Como la segunda version de - GUI ZINC HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua"))()
end)


Main8Section:NewButton("🐍JUMPSCARE MIMIC🐍", "Te gusta asustar gente?, este es tu script.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/mimic-simple-script/main/README.md", true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "CREANME, ESTA HOT", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Jojo's DaHood🐍", "Un script que el mismo nombre lo dice", function()
    getgenv().settings =  {
        ['Stand'] =1, --userid of the stand
        ['Owner'] =2, -- userid of the jojo stand owner
      }
      getgenv().commands =  {
         ['Summon'] = "Summon!", -- if someone else wants to own the stand.
         ['Follow'] = "Follow!", -- follow/unfollow you
         ['Ghost'] = "Disappear!", -- disappear
         ['Unghost'] = "Appear!", -- appear
         ['Attack'] = "Ora!", -- loop attack a target
         ['Stopattack'] = "Booga!", -- stop attacking the target
         ['Void'] = "Void!", -- send the target to the void when ko (goes with attack)
         ['Godmode'] = "Requiem!", -- enable/disable godmode
         ['Autosave'] = "Save!", -- grab you when k.o
         ['Autosave2'] = "Bird!", -- send you in the air when k.o
         ['Reset'] = "Stop!", -- resets commands and character (debug)
      }
       
      loadstring(game:HttpGet("https://raw.githubusercontent.com/racemodex/my-scripts/master/dahoodjojostand-v3rmversion", true))()
      
end)


Main8Section:NewButton("🐍Aim Ware🐍", "Eyy, ¡encontraste mi easter egg!", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/fg0C9NSS'))()
end)


Main8Section:NewButton("🐍Anti AFK🐍", "Si te quedas AFK por mas de 20min no seras expulsado", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHoodCrasher/main/Crash'))()
end)


Main8Section:NewButton("🐍OP Script HUB🐍", "Es un HUB OP", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/gwa6nEzD'))()
end)
----------------------------------------------------------SCRIPTS CON KEY---------------------------------
local Main8Section = Main8:NewSection("Scripts CON KEY")

Main8Section:NewButton("🐍LX63 R6 Animation🐍", "Lageara el servidor hasta hacerlo injugable", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Gogogamer61/LXHub-Main/main/LXHub%20Main%20Script'),true))()
end)


Main8Section:NewButton("🐍DG Community🐍", "Mas de 20 scripts", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/Da%20hood%20script%202022"))()
end)


Main8Section:NewButton("🐍Server Crasher🐍", "Lageara el servidor hasta hacerlo injugable", function()
    --you need to join this group for the script to work :   
 --https://www.roblox.com/groups/15655824/Strike-Hub 

 loadstring(game:HttpGet('https://raw.githubusercontent.com/NoobieDev2009/StrikeHub/main/CrashV2', true))()
end)


Main8Section:NewButton("🐍FE Jesus🐍", "TYe convertiras en Jesus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cjdjmj/fejesusscript/main/README.md", true))()
end)


Main8Section:NewButton("🐍Ven X🐍", "AimLoc, SilentAim, Teleports, ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Impulseonyoutube/VENX/main/subtoimpulseyea.lua"))()
end)


Main8Section:NewButton("🐍Autofarm + Aimlock GUI🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main8Section:NewButton("🐍Dread's Scripts🐍", "Esta pro", function()
    local thekeybindis = "b"

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "@dread.w",
    Text = "Your keybind is " ..thekeybindis,
})

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local orgp = player.Character.HumanoidRootPart.Position
local istping = false

local function teleport()
while istping do
local randomPosition = orgp + Vector3.new(math.random(-15, 15), math.random(-15, 35), math.random(-15, 15))
player.Character.HumanoidRootPart.CFrame = CFrame.new(randomPosition)
wait()
end
end

mouse.KeyDown:Connect(function(key)
if key == thekeybindis then
if istping then
istping = false
player.Character.HumanoidRootPart.CFrame = CFrame.new(orgp)
else -- made by @dread.w
istping = true
orgp = player.Character.HumanoidRootPart.Position
teleport()
end
end
end)
end)
-- FIN DEL MAIN8 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main9 = Window:NewTab("⚔Blade Ball🔴")
local Main9Section = Main9:NewSection("Sin Key")


Main9Section:NewButton("🐍Ln Hub V3 Updated🐍", "Contiene 7 scripts para Blade Ball (Bastante utiles)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)

 
Main9Section:NewButton("🐍Sikded Hub🐍", "Contiene - Auto spam block - y mas", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV3.lua'))();
end)


Main9Section:NewButton("🐍X7 PARRY🐍", "BROOO, EL NOMBRE LO DICE!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly"))()

end)


Main9Section:NewButton("🐍Xero Hub🐍", "Contiene Rage mode y Auto parry", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/BladeBall/main/bladeball.lua"))()
end)


Main9Section:NewButton("🐍Opensource Autoparry🐍", "Es el HUB mas visto esta semana de Blade Ball", function()
    local Debug = false -- Set this to true if you want my debug output.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9) -- A second argument in waitforchild what could it mean?
local Balls = workspace:WaitForChild("Balls", 9e9)

-- Functions

local function print(...) -- Debug print.
    if Debug then
        warn(...)
    end
end

local function VerifyBall(Ball) -- Returns nil if the ball isn't a valid projectile; true if it's the right ball.
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
        return true
    end
end

local function IsTarget() -- Returns true if we are the current target.
    return (Player.Character and Player.Character:FindFirstChild("Highlight"))
end

local function Parry() -- Parries.
    Remotes:WaitForChild("ParryButtonPress"):Fire()
end

-- The actual code

Balls.ChildAdded:Connect(function(Ball)
    if not VerifyBall(Ball) then
        return
    end
    
    print(`Ball Spawned: {Ball}`)
    
    local OldPosition = Ball.Position
    local OldTick = tick()
    
    Ball:GetPropertyChangedSignal("Position"):Connect(function()
        if IsTarget() then -- No need to do the math if we're not being attacked.
            local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
            local Velocity = (OldPosition - Ball.Position).Magnitude -- Fix for .Velocity not working. Yes I got the lowest possible grade in accuplacer math.
            
            print(`Distance: {Distance}\nVelocity: {Velocity}\nTime: {Distance / Velocity}`)
        
            if (Distance / Velocity) <= 10 then -- Sorry for the magic number. This just works. No, you don't get a slider for this because it's 2am.
                Parry()
            end
        end
        
        if (tick() - OldTick >= 1/60) then -- Don't want it to update too quickly because my velocity implementation is aids. Yes, I tried Ball.Velocity. No, it didn't work.
            OldTick = tick()
            OldPosition = Ball.Position
        end
    end)
end)
end)

local Main9Section = Main9:NewSection("Sin Key")

Main9Section:NewButton("🐍*Gui*🐍", "El mejor script de Blade Ball", function()
    loadstring(game:HttpGet("https://www.nicuse.xyz/BladeBall.lua"))()
end)


Main9Section:NewButton("🐍OP Script🐍", "Un script con una gran variedad de funciones", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/lua/main/Loader.lua"))()
end)


Main9Section:NewButton("🐍Syr HUB🐍", "Mas de 7 scripts para este juego", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BackOnTop/main/SyrBladeBall.lua.txt"))()
end)


Main9Section:NewButton("🐍Auto farm🐍", "¡MUCIHISMOS SCRIPTS!", function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)


Main9Section:NewButton("🐍DevHub🐍", "5 Scripts (Sirven eh)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustD1v/Scripts/main/DevHub.lua", true))()
end)
-- FIN DEL MAIN9 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
local Main10 = Window:NewTab("🐯Blox Fruits🍈")
local Main10Section = Main10:NewSection("CON KEY (Es mejor los que utilizan key)")


Main10Section:NewButton("🐍BT PROJECT🐍", "El HUB MEJOR VALORADO de blox fruits", function()
    loadstring(game:HttpGet('https://btteam.net/scripts-auth/', true))()
end)


Main10Section:NewButton("🐍Bean Hub🐍", "Utiliza Key y 12 scripts para utilizar", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SoyElPekka/BeanHub/main/bloxfruitsnewpc2023'),true))()
end)


Main10Section:NewButton("🐍Free Kaitan🐍", "Contiene Key - te dara todos los items del juego", function()
    --report bug/get update announce in discord: https://discord.gg/aUd8umqUKu
repeat wait() until game:IsLoaded()
_G.Start_Kaitun = false
_G.Config = true
_G.Settings = {
	Main = {
		["Auto Farm"] = true,
		["Auto Go To Fruit"] = true,
		["Store Fruit"] = true,

		["Buy Fruit"] = true,
		["Select Fruit"] = {
			"Lepoard-Lepoard",
			"Dough-Dough",
			"Linght-Linght",
		}, --[[
			Kilo-Kilo
			Spin-Spin
			Chop-Chop
			Spring-Spring
			Bomb-Bomb
			Smoke-Smoke
			Spike-Spike
			Flame-Flame
			Falcon-Falcon
			Ice-Ice
			Sand-Sand
			Dark-Dark
			Revive-Revive
			Diamond-Diamond
			Linght-Linght
			Rubber-Rubber
			Barber-Barber
			Magma-Magma
			Quake-Quake
			Buddha-Buddha
			Love-Love
			Spider-Spider
			Phoenix-Phoenix
			Portal-Portal
			Rumble-Rumble
			Paw-Paw
			Blizzard-Blizzard
			Gravity-Gravity
			Dough-Dough
			Shadow-Shadow
			Venom-Venom
			Control-Control
			Spirit-Spirit
			Dragon-Dragon
			Leopard-Leopard
		]]


		-- // [[ World 1 ]] \\ --
		["Auto Saber"] = true,
		["Auto Pole"] = true,

		["Auto New World"] = true,

		-- // [[ World 2 ]] \\ --
		["Thire World"] = true,
		["Auto Bartilo Quest"] = true,
		["Auto Rengoku"] = true,
		["Open Flamingo Access"] = true,
		["Midnight Blade"] = true,
		["Auto Factory Farm"] = true,
		["Auto Super Human"] = true,

		-- // [ World 3] \\ --
		["Auto Yama"] = true,
		["Auto Tushita"] = true,
		["Auto ElectricClaw"] = true,
		["Auto Farm Mastery Sword All"] = true, --When reached Level Max
		["Auto Soul Guitar"] = true, -- When reached Level 2300+
	},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/minhhau207/SilverHub/main/Kaitun2"))()
end)


Main10Section:NewButton("🐍OP Script🐍", "El mismo nombre lo dice", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
end)


Main10Section:NewButton("🐍XIBA HUB V3🐍", "Ta hot", function()
    local XIBAHUBSETTINGS = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=XIBAHUBSETTINGS;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end

end)


Main10Section:NewButton("🐍PEELY HUB V3🐍", "Mas de 10 propiedades bien insanas wazaaa", function()
    -- peely hub remastered
-- Updated for UPD 20
local peely_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=peely_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Sub Hub V3🐍", "Ojala algun dia probar un SubWay :c", function()
    -- SUB-HUB v3
-- Powered by Celestial AI ©
local subhubv3_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm | This autofarm is presented to you by Celestial AI ©
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=subhubv3_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
end)


Main10Section:NewButton("🐍Mango HUB🐍", "HUB VERIFICADO", function()
    getgenv().WaterMark = true
loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
end)


Main10Section:NewButton("🐍QUE PRO HUB🐍", "QUE PRO", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/INoobie/Lua/main/blox%20fruits', true))()
end)


Main10Section:NewButton("🐍FAST CHEST FARM🐍", "El mejor script de bloxfruits, 55 likes, verificado y 100K visitas", function()
    
getgenv().Server_Hop = true
getgenv().Chest_Farm = true
getgenv().wait_Time = 35 -- Seconds

local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then
repeat wait() until game:IsLoaded() ~= false


local Counter = 0
local PlaceID = game.PlaceId
     local AllIDs = {}
     local foundAnything = ""
     local actualHour = os.date("!*t").hour
     local Deleted = false

     local File = pcall(function()
         AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
     end)
     if not File then
         table.insert(AllIDs, actualHour)
         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
     end
    
     function TPReturner()
         local Site;
         if foundAnything == "" then
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
         else
             Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
         end
         local ID = ""
         if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
             foundAnything = Site.nextPageCursor
         end
         local num = 0;
         for i,v in pairs(Site.data) do
             local Possible = true
             ID = tostring(v.id)
             if tonumber(v.maxPlayers) > tonumber(v.playing) then
                 for _,Existing in pairs(AllIDs) do
                     if num ~= 0 then
                         if ID == tostring(Existing) then
                             Possible = false
                         end
                     else
                         if tonumber(actualHour) ~= tonumber(Existing) then
                             local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                 AllIDs = {}
                                 table.insert(AllIDs, actualHour)
                             end)
                         end
                     end
                     num = num + 1
                 end
                 if Possible == true then
                     table.insert(AllIDs, ID)
                     wait()
                     pcall(function()
                         writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                         wait()
                         game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                     end)
                     wait(4)
                 end
             end
         end
     end
 
     function Teleport()
        while wait() do
            pcall(function()
                 TPReturner()
                 if foundAnything ~= "" then
                     TPReturner()
                 end
            end)
        end
     end

     spawn(function()
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end)


spawn(function()
   while wait(.8) do
      if Chest_Farm then
          pcall(function()
  
  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait(.15)
      end
  end
  game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
      end
  end
end)

spawn(function()
    while wait() do
        if Server_Hop then
            pcall(function()
                        wait(wait_Time)
                        Teleport()
                        print("Finding new server")
            end)
        end
    end
end)


end
end)
------------------------------------------------------------------------------------------------SCRIPTS SIN KEY--------------------------------
local Main10Section = Main10:NewSection("SIN KEY (Son mas inseguros)")

Main10Section:NewButton("🐍Banana Suit🐍", "Utiliza Key y 12 scripts para utilizar", function()
    _G.AutoSteal = true
while _G.AutoSteal do
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Part") and v.Name == ("Currency") then
        fireclickdetector(game:GetService("Workspace").Currency.ClickDetector)
    end
end
wait()
end
end)


Main10Section:NewButton("🐍Farmea cofres y  frutas🐍v", "Utiliza Key y 12 scripts para utilizar", function()
    local Configs = {
        Join_Team = "Marines", -- select your team (Pirates/Marines)
        Stop_Farm = true, -- the script will stop working as soon as you drop a rare item from the chest (recommended)
        Farm_Chest = true, -- Auto farm chest
        Farm_Fruit = true,  -- Auto Collect Fruits (as soon as you find some fruit on the map the whole script will stop working to ensure that you won't lose it)
        Server_Hop = true, -- after collecting all the chests/fruits, you will be teleported to an empty server
        Auto_Reset = true, -- reset your player (recommended) (Anti Kick)
        Reset_Delay = 15 -- select the time your doll will reset (recommended 10, 15, 20)
      }
      
      local Chests_Farm = { -- select the chests you want to farm
        Basic = true; -- false/true
        Golden = true; -- false/true
        Diamond = true; -- false/true
      }
      
      -- ////////////////////////////////////////////////////////////////////////
      local placeId = game.PlaceId
      if placeId ~= 2753915549 and placeId ~= 4442272183 and placeId ~= 7449423635 then
      else
      
      _G.JoinTeam = Configs.Join_Team;
      _G.StopFarm = Configs.Stop_Farm;
      _G.FarmChest = Configs.Farm_Chest;
      _G.FarmFruit = Configs.Farm_Fruit;
      _G.ServerHop = Configs.Server_Hop;
      _G.AutoReset = Configs.Auto_Reset;
      
      task.spawn(function()
        while _G.FarmFruit == true do task.wait()
          local Workspace = game:GetService("Workspace")
          local Player = game.Players.LocalPlayer
          local PlayerRP = Player.Character:FindFirstChild("HumanoidRootPart")
          for _,v in pairs(Workspace:GetChildren()) do
            if Workspace:FindFirstChild(v.Name) and v.ClassName == 'Tool' and PlayerRP then
              _G.StopFarm = false;
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              repeat task.wait()
                PlayerRP.CFrame = v.Handle.CFrame
              until not Workspace:FindFirstChild(v.Name) or Player.Backpack:FindFirstChild(v.Name) or Player.Character:FindFirstChild(v.Name)
            end
          end
        end
      end)
      
      local plrTeam = game.Players.LocalPlayer.Team
      
      if plrTeam ~= 'Pirates' and plrTeam ~= 'Marines' then
        local a_1 = "SetTeam"
        local a_2 = _G.JoinTeam
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a_1, a_2)
      end
      
      task.spawn(function()
        while _G.StopFarm == true do task.wait()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
          for _,v in pairs(player.Backpack:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
          for _,v in pairs(player.Character:GetChildren()) do
            if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
              _G.FarmChest = false;
              _G.ServerHop = false;
              _G.AutoReset = false;
              _G.FarmFruit = false;
            end
          end
        end
      end)
      
      task.spawn(function()
        while _G.FarmChest == true do task.wait()
        local Workspace = game:GetService("Workspace")
        local plr = game.Players.LocalPlayer
        local plrRP = plr.Character:FindFirstChild("HumanoidRootPart")
        local FindSit = plr.Character:FindFirstChildOfClass('Humanoid') and plr.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local chest1 = Workspace:FindFirstChild("Chest1")
        local chest2 = Workspace:FindFirstChild("Chest2")
        local chest3 = Workspace:FindFirstChild("Chest3")
        if FindSit then
          plr.Character.Humanoid.Sit = false
          task.wait(0.2)
        end
          if chest3 and plrRP and chest3.Transparency < 0.1 and Chests_Farm.Diamond == true then
            plrRP.CFrame = chest3.CFrame
          elseif chest2 and plrRP and chest2.Transparency < 0.1 and Chests_Farm.Golden == true then
            plrRP.CFrame = chest2.CFrame
          elseif chest1 and plrRP and chest1.Transparency < 0.1 and Chests_Farm.Basic == true then
            plrRP.CFrame = chest1.CFrame
          elseif _G.ServerHop == true then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end
      end)
      
      task.spawn(function()
        while _G.AutoReset == true do
          local plr = game.Players.LocalPlayer
          local plrH = plr.Character.Humanoid
          plrH.Health = -math.huge
          task.wait(Configs.Reset_Delay)
        end
      end)
      
      task.spawn(function()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
          if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
            module:Teleport(game.PlaceId)
          end
        end)
      end)
      
      end
end)


Main10Section:NewButton("🐍Alone HUB🐍", "?", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.Config = {
    WebHook = "", -- Discord Webhook
    Team = "Pirate", -- Pirate, Marine
    Time = 120,
    Invisible = true, -- Please use bundle: https://www.roblox.com/bundles/238/Man,
    Melee = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        }
    },
    Sword = {
        Use = false,
        Z = {
            Use = true,
            Hold = 1
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Gun = {
        Use = true,
        Z = {
            Use = true,
            Hold = 0
        },
        X = {
            Use = true,
            Hold = 0
        }
    },
    Fruit = {
        Use = true,
        Z = {
            Use = true,
            Hold = 3
        },
        X = {
            Use = true,
            Hold = 0
        },
        C = {
            Use = true,
            Hold = 0
        },
        V = {
            Use = true,
            Hold = 0
        },
        F = {
            Use = true,
            Hold = 0
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlongNgu/AloneHub/main/Bounty%20Beta.lua", true))()
end)
-- FIN DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN11 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII.
local Main11 = Window:NewTab("🎩Creditos🍷")
local Main11Section = Main11:NewSection("Redes")


Main11Section:NewButton("🐍Discord🐍", "Unanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Discord: https://discord.gg/vrv3Cg8Q", "Serpent")
end)


Main11Section:NewButton("🐍YouTube🐍", "Suscribanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Youtube: https://www.youtube.com/@Nescoroco/videos", "Serpent")
end)


Main11Section:NewButton("🐍Script Blox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Blox: pon *1nescoroco* en la busqueda de scriptblox", "Serpent")
end)


Main11Section:NewButton("🐍Roblox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Roblox: https://www.roblox.com/users/2399670479/profile", "Serpent")
end)




-----------------------------------------------------------------JUANKO'S MOD SECTION-----------------------------------------------------------




local Main11Section = Main11:NewSection("JUANKO'S MOD SCRIPTS")


Main11Section:NewButton("🐍MM2 Script🐍", "HUB Para Murder Mistery 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sLsf0HEH"))()
end)


Main11Section:NewButton("🐍Robar ID'S de sonidos🐍", "Uns script universal", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3aks6wJy"))()
end)


Main11Section:NewButton("🐍Script para TODOS LOS TYCOONS🐍", "Script para todos los tycoons existentes", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/DJvHjLPd"))()
end)


Main11Section:NewButton("🐍Zaque Hub"🐍, "Contiene Key - Es un AutoFarm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub"))()
end)


Main11Section:NewButton("🐍Da Hood Destrozer🐍", "Hub para Da Hood", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TSY3hAKW"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 FE🐍", "Un pack de animacion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QZqF6x2P"))()
end)


Main11Section:NewButton("🐍PRISION ADMIN HUB🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 + R15🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tcTds0ky"))()
end)


Main11Section:NewButton("🐍CDMS ADMIN CHAT🐍", "Un hub con comandos de Admin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1a5iCHpu"))()
end)


Main11Section:NewButton("🐍BrookHaven HUB🐍", "Un hub para BrookHaven", function()
    loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end)








-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB








-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos








-- DISCORD: https://discord.gg/ZRTkSVRp





-- SCRIPTBLOX: https://scriptblox.com/profile






-- ROBLOX: https://www.roblox.com/users/2399670479/profile
end)


MainSection:NewButton("🩸Tema Sangre🩸", "Blood theme", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5SgxE85n"))()
end)


MainSection:NewButton("🌊Tema Oceano🌊", "Ocean", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7J33QrnE"))()
end)


MainSection:NewButton("🌓Tema medianoche🌓", "Midnight", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmUU3XHR"))()
end)


MainSection:NewButton("⌛Tema sentinela⌛", "Sentinel", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/W3uNaWNT"))()
end)


MainSection:NewButton("🏮Tema synapse🏮", "Synapse", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fb6tNQMW"))()
end)


MainSection:NewButton("🐍Tema serpiente🐍", "Serpent", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0SMXPsYW"))()
end)
-- FIN DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN11 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII.
local Main11 = Window:NewTab("🎩Creditos🍷")
local Main11Section = Main11:NewSection("Redes")


Main11Section:NewButton("🐍Discord🐍", "Unanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Discord: https://discord.gg/vrv3Cg8Q", "Serpent")
end)


Main11Section:NewButton("🐍YouTube🐍", "Suscribanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Youtube: https://www.youtube.com/@Nescoroco/videos", "Serpent")
end)


Main11Section:NewButton("🐍Script Blox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Blox: pon *1nescoroco* en la busqueda de scriptblox", "Serpent")
end)


Main11Section:NewButton("🐍Roblox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Roblox: https://www.roblox.com/users/2399670479/profile", "Serpent")
end)




-----------------------------------------------------------------JUANKO'S MOD SECTION-----------------------------------------------------------




local Main11Section = Main11:NewSection("JUANKO'S MOD SCRIPTS")


Main11Section:NewButton("🐍MM2 Script🐍", "HUB Para Murder Mistery 2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sLsf0HEH"))()
end)


Main11Section:NewButton("🐍Robar ID'S de sonidos🐍", "Uns script universal", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/3aks6wJy"))()
end)


Main11Section:NewButton("🐍Script para TODOS LOS TYCOONS🐍", "Script para todos los tycoons existentes", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/DJvHjLPd"))()
end)


Main11Section:NewButton("🐍Zaque Hub"🐍, "Contiene Key - Es un AutoFarm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub"))()
end)


Main11Section:NewButton("🐍Da Hood Destrozer🐍", "Hub para Da Hood", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TSY3hAKW"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 FE🐍", "Un pack de animacion", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QZqF6x2P"))()
end)


Main11Section:NewButton("🐍PRISION ADMIN HUB🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0Jyaa9aQ"))()
end)


Main11Section:NewButton("🐍Agent Animation R6 + R15🐍", "Hub para Prision Life", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tcTds0ky"))()
end)


Main11Section:NewButton("🐍CDMS ADMIN CHAT🐍", "Un hub con comandos de Admin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1a5iCHpu"))()
end)


Main11Section:NewButton("🐍BrookHaven HUB🐍", "Un hub para BrookHaven", function()
    loadstring(game:HttpGet("https://pastefy.app/tIiioko4/raw"))()
end)








-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB








-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos








-- DISCORD: https://discord.gg/ZRTkSVRp





-- SCRIPTBLOX: https://scriptblox.com/profile






-- ROBLOX: https://www.roblox.com/users/2399670479/profile
end)
-- FIN DEL MAIN10 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
-- INICIO DEL MAIN11 IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII.
local Main11 = Window:NewTab("🎩Creditos🍷")
local Main11Section = Main11:NewSection("Redes")


Main11Section:NewButton("🐍Discord🐍", "Unanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Discord: https://discord.gg/cUTAdeYP", "Serpent")
end)


Main11Section:NewButton("🐍YouTube🐍", "Suscribanse porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Youtube: https://www.youtube.com/@Nescoroco/videos", "Serpent")
end)


Main11Section:NewButton("🐍Script Blox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Blox: pon *1nescoroco* en la busqueda de scriptblox", "Serpent")
end)


Main11Section:NewButton("🐍Roblox🐍", "Siguanme porfavor", function()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Roblox: https://www.roblox.com/users/2399670479/profile", "Serpent")
end)

-- SCRIPTS HECHO TOTALMENTE POR NESCOROCO, SUBIDO ORIGINALMENTE EN SCRIPT HUB



-- YOUTUBE: https://www.youtube.com/@Nescoroco/videos



-- DISCORD: https://discord.gg/shFngMs5



-- SCRIPTBLOX: https://scriptblox.com/profile



-- ROBLOX: https://www.roblox.com/users/2399670479/profile