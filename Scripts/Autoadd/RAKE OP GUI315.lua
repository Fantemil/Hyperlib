--GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The Rake(Noob Edition)", "BloodTheme")
--MAIN
local Tab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main")
local Tab = Window:NewTab("Player")
local PlayerSection = Tab:NewSection("Player")
local Tab = Window:NewTab("TP")
local TPSection = Tab:NewSection("TP")
local Tab = Window:NewTab("ESP")
local ESPSection = Tab:NewSection("ESP")
local Tab = Window:NewTab("Scripts")
local ScriptsSection = Tab:NewSection("Scripts")
local Tab = Window:NewTab("Credits")
local CreditsSection = Tab:NewSection("Credits")
local Tab = Window:NewTab("Cool Players!")
local CoolSection = Tab:NewSection("Cool Players!")
--BUTTONS


MainSection:NewButton("Fullbright", "Lets you see in the dark", function()
    game.Lighting.DepthOfField:Destroy()
game.Lighting.Atmosphere:Destroy()
game.Lighting.AmbienceCC:Destroy()
game.Lighting.ScreamCC:Destroy()
game.Lighting.ListenModeColor:Destroy()
game.Lighting.HourCC:Destroy()
game.Lighting.PowerOutCC:Destroy()
pcall(function()
	local lighting = game:GetService("Lighting");
	lighting.Ambient = Color3.fromRGB(255, 255, 255);
	lighting.Brightness = 1;
	lighting.FogEnd = 1e10;
	for i, v in pairs(lighting:GetDescendants()) do
		if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
			v.Enabled = false;
		end;
	end;
	lighting.Changed:Connect(function()
		lighting.Ambient = Color3.fromRGB(255, 255, 255);
		lighting.Brightness = 1;
		lighting.FogEnd = 1e10;
	end);
	spawn(function()
		local character = game:GetService("Players").LocalPlayer.Character;
		while wait() do
			repeat wait() until character ~= nil;
			if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
				local headlight = Instance.new("PointLight", character.HumanoidRootPart);
				headlight.Brightness = 1;
				headlight.Range = 60;
			end;
		end;
	end);
end)
end)
MainSection:NewButton("Remove Nature", "", function()
    game.Workspace.NatureFolder:Destroy()
end)
MainSection:NewButton("Rejoin", "", function()
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
end)
TPSection:NewButton("DestroyedCabin", "Tp to DestroyedCabin", function()
local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.LocationsFolder.DestroyedCabin.Construction.Bed.Part.CFrame
end)
TPSection:NewButton("DestroyedShelter", "Tp to DestroyedShelter", function()
 local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.LocationsFolder.DestroyedShelter.Decoracion.Bed.Part.CFrame
end)
TPSection:NewButton("Shop", "Tp to Shop", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-253.981964, 8.093853, -392.950012, -0.999795258, -3.12114139e-08, 0.0202340689, -3.07606491e-08, 1, 2.25887469e-08, -0.0202340689, 2.19617089e-08, -0.999795258)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("RakeOof House", "Tp to RakeOof House", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-843.935974, -1.55992174, 165.878235, 0.999508739, -3.64192387e-09, 0.0313417725, 2.16606155e-09, 1, 4.71232582e-08, -0.0313417725, -4.70322199e-08, 0.999508739)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("SadBlock", "Tp to SadBlock ;(", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(568.181763, 10.9999981, 390.835785, 0.999808252, 9.59620152e-08, 0.0195831619, -9.68965779e-08, 1, 4.67738914e-08, -0.0195831619, -4.86624607e-08, 0.999808252)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("Rejitasxd", "Tp to Rejitasxd", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-107.494858, -4.05769253, -247.977997, -0.981930494, 6.72275302e-09, -0.189241782, -1.78789139e-09, 1, 4.48016166e-08, 0.189241782, 4.43304202e-08, -0.981930494)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("Rejitasxd2", "Tp to Rejitasxd2", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(238.670685, 8.99999619, -122.169525, -0.903256536, -1.578689e-08, 0.429100901, -2.34997732e-09, 1, 3.18439284e-08, -0.429100901, 2.7754858e-08, -0.903256536)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("GamingNoob", "Tp to GamingNoob", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-359.962372, -9.42180061, 320.414246, -0.657717109, 4.02670857e-08, 0.753265023, -3.51445228e-09, 1, -5.65253906e-08, -0.753265023, -3.98250322e-08, -0.657717109)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("SlenderPlace(USE FLY!)", "Tp to SlenderPlace", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(529.88678, 89.6461029, 396.658356, -0.553372085, 0.134796694, -0.821954489, -0, 0.986818075, 0.16183354, 0.832934201, 0.0895541608, -0.546077549)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton(" ", "Tp to  ", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-363.899017, 8.72527885, -430.03595, 0.0367275402, -1.87673965e-08, -0.999325335, -4.82864929e-11, 1, -1.87818419e-08, 0.999325335, 7.3806472e-10, 0.0367275402)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("PlayerStartMenuHouse", "Tp to PlayerStartMenuHouse", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-740.746582, 25.803772, -153.408463, -0.0224491563, -1.61586358e-14, 0.999747992, -1.02112857e-07, 1, -2.2929092e-09, -0.999747992, -1.02138593e-07, -0.0224491563)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
TPSection:NewButton("PowerStation", "Tp to PowerStation", function()
 local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.LocationsFolder.PowerStation.ControlButtons.Buttons.InteractPart.CFrame
end)
TPSection:NewButton("SurvivorsSafeHouse", "Tp to SurvivorsSafeHoused", function()
 local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.LocationsFolder.SurvivorsSafeHouse.Construction.Bed.InvWedge.CFrame
end)
TPSection:NewButton("ParkSafeHouse", "Tp to ParkSafeHouse", function()
 local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.LocationsFolder.ParkSafeHouse.Construction.Bed.InvWedge.CFrame
end)
TPSection:NewButton("SupplyDrop", "Tp to SupplyDrop", function()
local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "Part"
local pos = p1.CFrame

p1.CFrame = game.Workspace.SupplyDrop.Model2.ClickPartOpen.CFrame
end)
PlayerSection:NewButton("Remove FallDamage", "You won't die when you fall from a great height", function()
    for i, player in pairs(game.Players:GetChildren()) do   wait()   game.Workspace[player.Name].FallDamage:Destroy() end
end)
PlayerSection:NewButton("Fly (Press B)", "You can fly!", function()
    local Speed = 60


if not RootAnchorBypassed then
    getgenv().RootAnchorBypassed = true
    local Player = game:GetService("Players").LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Root = Character:FindFirstChild("HumanoidRootPart")
    Player.CharacterAdded:Connect(function(C)
        Root = C:WaitForChild("HumanoidRootPart")
        wait(0.5)
        for _, C in pairs(getconnections(Root:GetPropertyChangedSignal("Anchored"))) do C:Disable() end
    end)
    
    local GameMT = getrawmetatable(game)
    local __oldindex = GameMT.__index
    setreadonly(GameMT, false)
    GameMT.__index = newcclosure(function(self, Key)
        if self == Root and Key == "Anchored" then return false end
        return __oldindex(self, Key)
    end)
    setreadonly(GameMT, true)
end

local UIS = game:GetService("UserInputService")
local OnRender = game:GetService("RunService").RenderStepped

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local Camera = workspace.CurrentCamera
local Root = Character:WaitForChild("HumanoidRootPart")

local C1, C2, C3;
local Nav = {Flying = false, Forward = false, Backward = false, Left = false, Right = false}
C1 = UIS.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Keyboard then
        if Input.KeyCode == Enum.KeyCode.B then --here you can change the letter
            Nav.Flying = not Nav.Flying
            Root.Anchored = Nav.Flying
        elseif Input.KeyCode == Enum.KeyCode.W then
            Nav.Forward = true
        elseif Input.KeyCode == Enum.KeyCode.S then
            Nav.Backward = true
        elseif Input.KeyCode == Enum.KeyCode.A then
            Nav.Left = true
        elseif Input.KeyCode == Enum.KeyCode.D then
            Nav.Right = true
        end
    end
end)

C2 = UIS.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Keyboard then
        if Input.KeyCode == Enum.KeyCode.W then
            Nav.Forward = false
        elseif Input.KeyCode == Enum.KeyCode.S then
            Nav.Backward = false
        elseif Input.KeyCode == Enum.KeyCode.A then
            Nav.Left = false
        elseif Input.KeyCode == Enum.KeyCode.D then
            Nav.Right = false
        end
    end
end)

C3 = Camera:GetPropertyChangedSignal("CFrame"):Connect(function()
    if Nav.Flying then
        Root.CFrame = CFrame.new(Root.CFrame.Position, Root.CFrame.Position + Camera.CFrame.LookVector)
    end
end)

while true do -- not EndAll
    local Delta = OnRender:Wait()
    if Nav.Flying then
        if Nav.Forward then
            Root.CFrame = Root.CFrame + (Camera.CFrame.LookVector * (Delta * Speed))
        end
        if Nav.Backward then
            Root.CFrame = Root.CFrame + (-Camera.CFrame.LookVector * (Delta * Speed))
        end
        if Nav.Left then
            Root.CFrame = Root.CFrame + (-Camera.CFrame.RightVector * (Delta * Speed))
        end
        if Nav.Right then
            Root.CFrame = Root.CFrame + (Camera.CFrame.RightVector * (Delta * Speed))
        end
    end
end

--[[C1:Disconnect()
C2:Disconnect()
C3:Disconnect()
if Nav.Flying then
    Root.Anchored = false
end]]
end)
PlayerSection:NewSlider("OPRun", "You can run faster!", 250, 34, function(s)
    game.Players.LocalPlayer.Character.CharValues.RunSpeed.Value = s
end)
PlayerSection:NewButton("Inf Stamina", "You can run forever", function()
local setreadonly = setreadonly or make_writeable
local pussymode = game.workspace[game.Players.LocalPlayer.Name].CharValues.StaminaPercentValue
local mt = getrawmetatable(game)
local old = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(tbl, idx)
if idx == "Value" and tbl == pussymode then
return 100
end
return old(tbl, idx)
end)
setreadonly(mt, true)
end)
PlayerSection:NewButton("Reload Stamina", "You can reload your stamina", function()
    for i, player in pairs(game.Players:GetChildren()) do   wait()   game.Workspace[player.Name]['CharValues'].StaminaPercentValue.Value = 10000 end
end)
PlayerSection:NewButton("Remove Barreras", "If you touch Barreras twice you will be kicked", function()
    game.Workspace.MapTopPart:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()
    game.Workspace.Barreras.Barreras:Destroy()   
game.Workspace.Barreras.Barreras:Destroy()
game.Workspace.Barreras.Barreras:Destroy()
game.Workspace.Barreras.Barreras:Destroy()
game.Workspace.Barreras.Barreras:Destroy()
game.Workspace.Barreras.Barreras:Destroy()
game.Workspace.Barreras.Barreras:Destroy()
end)
PlayerSection:NewButton("Remove PowerDamage", "If you touch electric pasts then you will not take damage", function()
    game.Workspace.LocationsFolder.PowerStation.PowerDamage:Destroy()
end)
PlayerSection:NewButton("Remove Crawling", "You won't lie down when you're low on hp", function()
    game.Players.LocalPlayer.Character.CharValues.Crawling:Destroy()
end)
PlayerSection:NewButton("Remove Unnecessary Gui", "Get out gui chase, bloody night and more", function()
    game.Players.LocalPlayer.PlayerGui.HoursGui:Destroy()
    game.Players.LocalPlayer.PlayerGui.PowerGui:Destroy()
    game.Players.LocalPlayer.PlayerGui.DeadGui:Destroy()
    game.Players.LocalPlayer.PlayerGui.RakeChaseGui:Destroy()
end)
ESPSection:NewButton("The Rake", "You can see the rake in the distance", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'The_Rake' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 100000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "The Rake" -- what the label says
				TextLabel.TextColor3 = Color3.new(225, 0, 0) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
	
end)
ESPSection:NewButton("FlareGun(Ones time)", "You can see FlareGun in the distance", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Handle" then -- i am just wondering that the part u wanna esp have these properties u can change them if it doesnt work
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")

BillboardGui.Parent = v.Parent
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "FlareGun"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
end
end
end)

PlayerSection:NewButton("Cheese", "Free cheese!", function()
local A_1 = "\99\104\101\101\115\101"
local Event = game:GetService("Players").LocalPlayer.PlayerGui.CodeGui.SendTextBoxRE
Event:FireServer(A_1)

end)
PlayerSection:NewButton("BloxyCola", "Free bloxycola!", function()
local A_1 = "\99\111\100\101"
local Event = game:GetService("Players").LocalPlayer.PlayerGui.CodeGui.SendTextBoxRE
Event:FireServer(A_1)
wait(4.50)
game.Players.LocalPlayer.PlayerGui.CodeGui.CodeFrame.Visible = false
end)
TPSection:NewButton("FlareGun", "Tp to FlareGun", function()
local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local object = "FlareGun"
local pos = p1.CFrame

p1.CFrame = game.Workspace.FlareGun.Handle.CFrame

wait(0.1)

p1.CFrame = pos
end)
TPSection:NewButton("HighScrap", "Tp to HighScrap", function()
    

for _, obj in pairs(game.Workspace.StuffGiversFolder.ScrapMetals:GetChildren()) do
if obj.Name == "HighScrapMetal" then
if obj.Part.Transparency == 0 then
wait(0.1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.Part.CFrame

end
end
end 
end)

TPSection:NewButton("NormalScrap", "Tp to NormalScrap", function()
for _, obj in pairs(game.Workspace.StuffGiversFolder.ScrapMetals:GetChildren()) do
if obj.Name == "NormalScrapMetal" then
if obj.Part.Transparency == 0 then
wait(0.1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.Part.CFrame

end
end
end 
end)

TPSection:NewButton("LowScrap", "Tp to LowScrap", function()
for _, obj in pairs(game.Workspace.StuffGiversFolder.ScrapMetals:GetChildren()) do
if obj.Name == "LowScrapMetal" then
if obj.Part.Transparency == 0 then
wait(0.1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.Part.CFrame

end
end
end 
end)

MainSection:NewButton("ServerHop", "", function()
--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
return(function(OVERPOWER_h,OVERPOWER_a,OVERPOWER_p)local OVERPOWER_k=string.char;local OVERPOWER_e=string.sub;local OVERPOWER_o=table.concat;local OVERPOWER_n=math.ldexp;local OVERPOWER_s=getfenv or function()return _ENV end;local OVERPOWER_q=select;local OVERPOWER_f=unpack or table.unpack;local OVERPOWER_i=tonumber;local function OVERPOWER_l(OVERPOWER_h)local OVERPOWER_b,OVERPOWER_c,OVERPOWER_f="","",{}local OVERPOWER_d=256;local OVERPOWER_g={}for OVERPOWER_a=0,OVERPOWER_d-1 do OVERPOWER_g[OVERPOWER_a]=OVERPOWER_k(OVERPOWER_a)end;local OVERPOWER_a=1;local function OVERPOWER_j()local OVERPOWER_b=OVERPOWER_i(OVERPOWER_e(OVERPOWER_h,OVERPOWER_a,OVERPOWER_a),36)OVERPOWER_a=OVERPOWER_a+1;local OVERPOWER_c=OVERPOWER_i(OVERPOWER_e(OVERPOWER_h,OVERPOWER_a,OVERPOWER_a+OVERPOWER_b-1),36)OVERPOWER_a=OVERPOWER_a+OVERPOWER_b;return OVERPOWER_c end;OVERPOWER_b=OVERPOWER_k(OVERPOWER_j())OVERPOWER_f[1]=OVERPOWER_b;while OVERPOWER_a<#OVERPOWER_h do local OVERPOWER_a=OVERPOWER_j()if OVERPOWER_g[OVERPOWER_a]then OVERPOWER_c=OVERPOWER_g[OVERPOWER_a]else OVERPOWER_c=OVERPOWER_b..OVERPOWER_e(OVERPOWER_b,1,1)end;OVERPOWER_g[OVERPOWER_d]=OVERPOWER_b..OVERPOWER_e(OVERPOWER_c,1,1)OVERPOWER_f[#OVERPOWER_f+1],OVERPOWER_b,OVERPOWER_d=OVERPOWER_c,OVERPOWER_c,OVERPOWER_d+1 end;return table.concat(OVERPOWER_f)end;local OVERPOWER_j=OVERPOWER_l('1Y1W2751X2102751W22F21T22122C1X21127922821V21T2242241W21827921E1E2791X2791W1F27S1W27421221Q2792171W27T27521021528228427Y1G27U27P27R27T27427521227O27427T28M2751028D27921R28A28L28628Q1W28728D28521427X27528H1W27G27627827521Z21T22521X1X21627922V21X22C23721X22A22E22121V29D28327522W22C22C22829K29M29O29D29F27522Y23723323222S21X21V22721W29D21327929T29V29H27E27O27521E21H28A2851W28P2AN27Y1W21E2751Z1W2AW28Z2AX2AS2AQ28N2782AU2B02AO2AQ2AW2AW2962752BB28D2BA28Q2AO2AZ28W27628W21C27S2981W29A29C29E29G29I29X29N29P1X21B27923821X22421X22822722A29J29L2BW29D1Q27922029U22822B1Q1F1F22F2CL1E22A22721U22422722G1E2A92251F2BQ21X22B2CX29I2CY22122622B22C21T22629P22B22222B2272261V22822421T29P22X21W1T1X2AD2752342DI2DK21W1X219279162D621T2C72D42AB22G1T1G1X2AJ1W2DY2D72E12262E32DN2BO22521T22C2201X21227922A2D821W2272252BJ28429127522C2DE22D22521U29L1X21F2C02272D722422R22727L2A822C2212DE23722122I2A02792F92FB21V2FD2DE28W25S1V1X21J2C02C22C42C622C2382272DR2DJ21X22X2D52D72D929D2BO22V22D22121W1W1B27P2942B728Q2742B52742AY2GK2AS29227P29328X2GS2B62792B82B027G2B52782EM28D2742742BO28T2GQ2GT27U2B52AW2BO2H128A28O28V2782H02BC1W2DP2AT28I1W2EV2AP2HP2EM2882B52AD2A12HO2HQ1W29R2HS1W28827T2E82I028828D2H32H92B02AW2IB2AS2H52I32AW2742DW2HF2HR2AQ2782782HV2HL21A2GX2HP2IK27U2EM2IF28V2EM2942ID2GU2HF2GJ2GU2782GL2HP2GO2792H22B12HI1W2BZ2B52EM2J62IY2952I32AD2AW2BM2JC2HM2HG27U2BH279');local OVERPOWER_a=(bit or bit32);local OVERPOWER_d=OVERPOWER_a and OVERPOWER_a.bxor or function(OVERPOWER_a,OVERPOWER_b)local OVERPOWER_c,OVERPOWER_d,OVERPOWER_e=1,0,10 while OVERPOWER_a>0 and OVERPOWER_b>0 do local OVERPOWER_f,OVERPOWER_e=OVERPOWER_a%2,OVERPOWER_b%2 if OVERPOWER_f~=OVERPOWER_e then OVERPOWER_d=OVERPOWER_d+OVERPOWER_c end OVERPOWER_a,OVERPOWER_b,OVERPOWER_c=(OVERPOWER_a-OVERPOWER_f)/2,(OVERPOWER_b-OVERPOWER_e)/2,OVERPOWER_c*2 end if OVERPOWER_a<OVERPOWER_b then OVERPOWER_a=OVERPOWER_b end while OVERPOWER_a>0 do local OVERPOWER_b=OVERPOWER_a%2 if OVERPOWER_b>0 then OVERPOWER_d=OVERPOWER_d+OVERPOWER_c end OVERPOWER_a,OVERPOWER_c=(OVERPOWER_a-OVERPOWER_b)/2,OVERPOWER_c*2 end return OVERPOWER_d end local function OVERPOWER_c(OVERPOWER_b,OVERPOWER_a,OVERPOWER_c)if OVERPOWER_c then local OVERPOWER_a=(OVERPOWER_b/2^(OVERPOWER_a-1))%2^((OVERPOWER_c-1)-(OVERPOWER_a-1)+1);return OVERPOWER_a-OVERPOWER_a%1;else local OVERPOWER_a=2^(OVERPOWER_a-1);return(OVERPOWER_b%(OVERPOWER_a+OVERPOWER_a)>=OVERPOWER_a)and 1 or 0;end;end;local OVERPOWER_a=1;local function OVERPOWER_b()local OVERPOWER_b,OVERPOWER_f,OVERPOWER_c,OVERPOWER_e=OVERPOWER_h(OVERPOWER_j,OVERPOWER_a,OVERPOWER_a+3);OVERPOWER_b=OVERPOWER_d(OVERPOWER_b,32)OVERPOWER_f=OVERPOWER_d(OVERPOWER_f,32)OVERPOWER_c=OVERPOWER_d(OVERPOWER_c,32)OVERPOWER_e=OVERPOWER_d(OVERPOWER_e,32)OVERPOWER_a=OVERPOWER_a+4;return(OVERPOWER_e*16777216)+(OVERPOWER_c*65536)+(OVERPOWER_f*256)+OVERPOWER_b;end;local function OVERPOWER_i()local OVERPOWER_b=OVERPOWER_d(OVERPOWER_h(OVERPOWER_j,OVERPOWER_a,OVERPOWER_a),32);OVERPOWER_a=OVERPOWER_a+1;return OVERPOWER_b;end;local function OVERPOWER_g()local OVERPOWER_c,OVERPOWER_b=OVERPOWER_h(OVERPOWER_j,OVERPOWER_a,OVERPOWER_a+2);OVERPOWER_c=OVERPOWER_d(OVERPOWER_c,32)OVERPOWER_b=OVERPOWER_d(OVERPOWER_b,32)OVERPOWER_a=OVERPOWER_a+2;return(OVERPOWER_b*256)+OVERPOWER_c;end;local function OVERPOWER_m()local OVERPOWER_d=OVERPOWER_b();local OVERPOWER_a=OVERPOWER_b();local OVERPOWER_e=1;local OVERPOWER_d=(OVERPOWER_c(OVERPOWER_a,1,20)*(2^32))+OVERPOWER_d;local OVERPOWER_b=OVERPOWER_c(OVERPOWER_a,21,31);local OVERPOWER_a=((-1)^OVERPOWER_c(OVERPOWER_a,32));if(OVERPOWER_b==0)then if(OVERPOWER_d==0)then return OVERPOWER_a*0;else OVERPOWER_b=1;OVERPOWER_e=0;end;elseif(OVERPOWER_b==2047)then return(OVERPOWER_d==0)and(OVERPOWER_a*(1/0))or(OVERPOWER_a*(0/0));end;return OVERPOWER_n(OVERPOWER_a,OVERPOWER_b-1023)*(OVERPOWER_e+(OVERPOWER_d/(2^52)));end;local OVERPOWER_l=OVERPOWER_b;local function OVERPOWER_n(OVERPOWER_b)local OVERPOWER_c;if(not OVERPOWER_b)then OVERPOWER_b=OVERPOWER_l();if(OVERPOWER_b==0)then return'';end;end;OVERPOWER_c=OVERPOWER_e(OVERPOWER_j,OVERPOWER_a,OVERPOWER_a+OVERPOWER_b-1);OVERPOWER_a=OVERPOWER_a+OVERPOWER_b;local OVERPOWER_b={}for OVERPOWER_a=1,#OVERPOWER_c do OVERPOWER_b[OVERPOWER_a]=OVERPOWER_k(OVERPOWER_d(OVERPOWER_h(OVERPOWER_e(OVERPOWER_c,OVERPOWER_a,OVERPOWER_a)),32))end return OVERPOWER_o(OVERPOWER_b);end;local OVERPOWER_a=OVERPOWER_b;local function OVERPOWER_r(...)return{...},OVERPOWER_q('#',...)end local function OVERPOWER_j()local OVERPOWER_l={};local OVERPOWER_h={};local OVERPOWER_a={};local OVERPOWER_k={[#{"1 + 1 = 111";"1 + 1 = 111";}]=OVERPOWER_h,[#{"1 + 1 = 111";{404;315;448;239};"1 + 1 = 111";}]=nil,[#{{862;385;416;793};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=OVERPOWER_a,[#{"1 + 1 = 111";}]=OVERPOWER_l,};local OVERPOWER_a=OVERPOWER_b()local OVERPOWER_d={}for OVERPOWER_c=1,OVERPOWER_a do local OVERPOWER_b=OVERPOWER_i();local OVERPOWER_a;if(OVERPOWER_b==2)then OVERPOWER_a=(OVERPOWER_i()~=0);elseif(OVERPOWER_b==0)then OVERPOWER_a=OVERPOWER_m();elseif(OVERPOWER_b==1)then OVERPOWER_a=OVERPOWER_n();end;OVERPOWER_d[OVERPOWER_c]=OVERPOWER_a;end;OVERPOWER_k[3]=OVERPOWER_i();for OVERPOWER_h=1,OVERPOWER_b()do local OVERPOWER_a=OVERPOWER_i();if(OVERPOWER_c(OVERPOWER_a,1,1)==0)then local OVERPOWER_e=OVERPOWER_c(OVERPOWER_a,2,3);local OVERPOWER_f=OVERPOWER_c(OVERPOWER_a,4,6);local OVERPOWER_a={OVERPOWER_g(),OVERPOWER_g(),nil,nil};if(OVERPOWER_e==0)then OVERPOWER_a[3]=OVERPOWER_g();OVERPOWER_a[4]=OVERPOWER_g();elseif(OVERPOWER_e==1)then OVERPOWER_a[3]=OVERPOWER_b();elseif(OVERPOWER_e==2)then OVERPOWER_a[3]=OVERPOWER_b()-(2^16)elseif(OVERPOWER_e==3)then OVERPOWER_a[3]=OVERPOWER_b()-(2^16)OVERPOWER_a[4]=OVERPOWER_g();end;if(OVERPOWER_c(OVERPOWER_f,1,1)==1)then OVERPOWER_a[2]=OVERPOWER_d[OVERPOWER_a[2]]end if(OVERPOWER_c(OVERPOWER_f,2,2)==1)then OVERPOWER_a[3]=OVERPOWER_d[OVERPOWER_a[3]]end if(OVERPOWER_c(OVERPOWER_f,3,3)==1)then OVERPOWER_a[4]=OVERPOWER_d[OVERPOWER_a[4]]end OVERPOWER_l[OVERPOWER_h]=OVERPOWER_a;end end;for OVERPOWER_a=1,OVERPOWER_b()do OVERPOWER_h[OVERPOWER_a-1]=OVERPOWER_j();end;return OVERPOWER_k;end;local function OVERPOWER_n(OVERPOWER_a,OVERPOWER_m,OVERPOWER_h)OVERPOWER_a=(OVERPOWER_a==true and OVERPOWER_j())or OVERPOWER_a;return(function(...)local OVERPOWER_d=OVERPOWER_a[1];local OVERPOWER_e=OVERPOWER_a[3];local OVERPOWER_o=OVERPOWER_a[2];local OVERPOWER_l=OVERPOWER_r local OVERPOWER_c=1;local OVERPOWER_g=-1;local OVERPOWER_r={};local OVERPOWER_j={...};local OVERPOWER_i=OVERPOWER_q('#',...)-1;local OVERPOWER_k={};local OVERPOWER_b={};for OVERPOWER_a=0,OVERPOWER_i do if(OVERPOWER_a>=OVERPOWER_e)then OVERPOWER_r[OVERPOWER_a-OVERPOWER_e]=OVERPOWER_j[OVERPOWER_a+1];else OVERPOWER_b[OVERPOWER_a]=OVERPOWER_j[OVERPOWER_a+#{{874;376;131;291};}];end;end;local OVERPOWER_a=OVERPOWER_i-OVERPOWER_e+1 local OVERPOWER_a;local OVERPOWER_e;while true do OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[1];if OVERPOWER_e<=25 then if OVERPOWER_e<=12 then if OVERPOWER_e<=5 then if OVERPOWER_e<=2 then if OVERPOWER_e<=0 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_m[OVERPOWER_a[3]];elseif OVERPOWER_e==1 then local OVERPOWER_d=OVERPOWER_a[2];local OVERPOWER_c=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_d+1]=OVERPOWER_c;OVERPOWER_b[OVERPOWER_d]=OVERPOWER_c[OVERPOWER_a[4]];else local OVERPOWER_k;local OVERPOWER_o,OVERPOWER_n;local OVERPOWER_j;local OVERPOWER_i;local OVERPOWER_e;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3]))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_m[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_i=OVERPOWER_a[3];OVERPOWER_j=OVERPOWER_b[OVERPOWER_i]for OVERPOWER_a=OVERPOWER_i+1,OVERPOWER_a[4]do OVERPOWER_j=OVERPOWER_j..OVERPOWER_b[OVERPOWER_a];end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_j;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_b[OVERPOWER_e+1])OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_m[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_o,OVERPOWER_n=OVERPOWER_l(OVERPOWER_b[OVERPOWER_e](OVERPOWER_b[OVERPOWER_e+1]))OVERPOWER_g=OVERPOWER_n+OVERPOWER_e-1 OVERPOWER_k=0;for OVERPOWER_a=OVERPOWER_e,OVERPOWER_g do OVERPOWER_k=OVERPOWER_k+1;OVERPOWER_b[OVERPOWER_a]=OVERPOWER_o[OVERPOWER_k];end;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_g))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_i=OVERPOWER_a[3];OVERPOWER_j=OVERPOWER_b[OVERPOWER_i]for OVERPOWER_a=OVERPOWER_i+1,OVERPOWER_a[4]do OVERPOWER_j=OVERPOWER_j..OVERPOWER_b[OVERPOWER_a];end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_j;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_b[OVERPOWER_e+1])OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=#OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3]))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_b[OVERPOWER_a[4]]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3]))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3]))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];do return end;end;elseif OVERPOWER_e<=3 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_n(OVERPOWER_o[OVERPOWER_a[3]],nil,OVERPOWER_h);elseif OVERPOWER_e==4 then local OVERPOWER_f=OVERPOWER_a[2];local OVERPOWER_e={};for OVERPOWER_a=1,#OVERPOWER_k do local OVERPOWER_a=OVERPOWER_k[OVERPOWER_a];for OVERPOWER_c=0,#OVERPOWER_a do local OVERPOWER_a=OVERPOWER_a[OVERPOWER_c];local OVERPOWER_d=OVERPOWER_a[1];local OVERPOWER_c=OVERPOWER_a[2];if OVERPOWER_d==OVERPOWER_b and OVERPOWER_c>=OVERPOWER_f then OVERPOWER_e[OVERPOWER_c]=OVERPOWER_d[OVERPOWER_c];OVERPOWER_a[1]=OVERPOWER_e;end;end;end;else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];end;elseif OVERPOWER_e<=8 then if OVERPOWER_e<=6 then local OVERPOWER_a=OVERPOWER_a[2];do return OVERPOWER_b[OVERPOWER_a](OVERPOWER_f(OVERPOWER_b,OVERPOWER_a+1,OVERPOWER_g))end;elseif OVERPOWER_e>7 then do return end;else local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1])end;elseif OVERPOWER_e<=10 then if OVERPOWER_e==9 then OVERPOWER_c=OVERPOWER_a[3];else local OVERPOWER_c=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_c]=OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3]))end;elseif OVERPOWER_e>11 then local OVERPOWER_i=OVERPOWER_o[OVERPOWER_a[3]];local OVERPOWER_g;local OVERPOWER_e={};OVERPOWER_g=OVERPOWER_p({},{__index=function(OVERPOWER_b,OVERPOWER_a)local OVERPOWER_a=OVERPOWER_e[OVERPOWER_a];return OVERPOWER_a[1][OVERPOWER_a[2]];end,__newindex=function(OVERPOWER_c,OVERPOWER_a,OVERPOWER_b)local OVERPOWER_a=OVERPOWER_e[OVERPOWER_a]OVERPOWER_a[1][OVERPOWER_a[2]]=OVERPOWER_b;end;});for OVERPOWER_f=1,OVERPOWER_a[4]do OVERPOWER_c=OVERPOWER_c+1;local OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];if OVERPOWER_a[1]==32 then OVERPOWER_e[OVERPOWER_f-1]={OVERPOWER_b,OVERPOWER_a[3]};else OVERPOWER_e[OVERPOWER_f-1]={OVERPOWER_m,OVERPOWER_a[3]};end;OVERPOWER_k[#OVERPOWER_k+1]=OVERPOWER_e;end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_n(OVERPOWER_i,OVERPOWER_g,OVERPOWER_h);else local OVERPOWER_d=OVERPOWER_a[2];local OVERPOWER_c=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_d+1]=OVERPOWER_c;OVERPOWER_b[OVERPOWER_d]=OVERPOWER_c[OVERPOWER_a[4]];end;elseif OVERPOWER_e<=18 then if OVERPOWER_e<=15 then if OVERPOWER_e<=13 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_m[OVERPOWER_a[3]];elseif OVERPOWER_e==14 then local OVERPOWER_c=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_c]=OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3]))else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];end;elseif OVERPOWER_e<=16 then local OVERPOWER_a=OVERPOWER_a[2];do return OVERPOWER_f(OVERPOWER_b,OVERPOWER_a,OVERPOWER_g)end;elseif OVERPOWER_e==17 then do return end;else local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a]()end;elseif OVERPOWER_e<=21 then if OVERPOWER_e<=19 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_b[OVERPOWER_a[4]]];elseif OVERPOWER_e>20 then local OVERPOWER_j;local OVERPOWER_k,OVERPOWER_m;local OVERPOWER_i;local OVERPOWER_e;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_e]=OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3]))OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];OVERPOWER_i=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_b[OVERPOWER_e+1]=OVERPOWER_i;OVERPOWER_b[OVERPOWER_e]=OVERPOWER_i[OVERPOWER_a[4]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]];OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2]OVERPOWER_k,OVERPOWER_m=OVERPOWER_l(OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_a[3])))OVERPOWER_g=OVERPOWER_m+OVERPOWER_e-1 OVERPOWER_j=0;for OVERPOWER_a=OVERPOWER_e,OVERPOWER_g do OVERPOWER_j=OVERPOWER_j+1;OVERPOWER_b[OVERPOWER_a]=OVERPOWER_k[OVERPOWER_j];end;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];do return OVERPOWER_b[OVERPOWER_e](OVERPOWER_f(OVERPOWER_b,OVERPOWER_e+1,OVERPOWER_g))end;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];OVERPOWER_e=OVERPOWER_a[2];do return OVERPOWER_f(OVERPOWER_b,OVERPOWER_e,OVERPOWER_g)end;OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];do return end;else OVERPOWER_b[OVERPOWER_a[2]]=#OVERPOWER_b[OVERPOWER_a[3]];end;elseif OVERPOWER_e<=23 then if OVERPOWER_e>22 then local OVERPOWER_c=OVERPOWER_a[2]local OVERPOWER_d,OVERPOWER_a=OVERPOWER_l(OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3])))OVERPOWER_g=OVERPOWER_a+OVERPOWER_c-1 local OVERPOWER_a=0;for OVERPOWER_c=OVERPOWER_c,OVERPOWER_g do OVERPOWER_a=OVERPOWER_a+1;OVERPOWER_b[OVERPOWER_c]=OVERPOWER_d[OVERPOWER_a];end;else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_b[OVERPOWER_a[4]]];end;elseif OVERPOWER_e==24 then local OVERPOWER_a=OVERPOWER_a[2];do return OVERPOWER_f(OVERPOWER_b,OVERPOWER_a,OVERPOWER_g)end;else OVERPOWER_c=OVERPOWER_a[3];end;elseif OVERPOWER_e<=38 then if OVERPOWER_e<=31 then if OVERPOWER_e<=28 then if OVERPOWER_e<=26 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_a[3];elseif OVERPOWER_e>27 then local OVERPOWER_a=OVERPOWER_a[2]local OVERPOWER_d,OVERPOWER_c=OVERPOWER_l(OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1]))OVERPOWER_g=OVERPOWER_c+OVERPOWER_a-1 local OVERPOWER_c=0;for OVERPOWER_a=OVERPOWER_a,OVERPOWER_g do OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_b[OVERPOWER_a]=OVERPOWER_d[OVERPOWER_c];end;else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];end;elseif OVERPOWER_e<=29 then local OVERPOWER_d=OVERPOWER_a[3];local OVERPOWER_c=OVERPOWER_b[OVERPOWER_d]for OVERPOWER_a=OVERPOWER_d+1,OVERPOWER_a[4]do OVERPOWER_c=OVERPOWER_c..OVERPOWER_b[OVERPOWER_a];end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_c;elseif OVERPOWER_e==30 then if OVERPOWER_b[OVERPOWER_a[2]]then OVERPOWER_c=OVERPOWER_c+1;else OVERPOWER_c=OVERPOWER_a[3];end;else local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1])end;elseif OVERPOWER_e<=34 then if OVERPOWER_e<=32 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]];elseif OVERPOWER_e==33 then local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1])else local OVERPOWER_i=OVERPOWER_o[OVERPOWER_a[3]];local OVERPOWER_g;local OVERPOWER_e={};OVERPOWER_g=OVERPOWER_p({},{__index=function(OVERPOWER_b,OVERPOWER_a)local OVERPOWER_a=OVERPOWER_e[OVERPOWER_a];return OVERPOWER_a[1][OVERPOWER_a[2]];end,__newindex=function(OVERPOWER_c,OVERPOWER_a,OVERPOWER_b)local OVERPOWER_a=OVERPOWER_e[OVERPOWER_a]OVERPOWER_a[1][OVERPOWER_a[2]]=OVERPOWER_b;end;});for OVERPOWER_f=1,OVERPOWER_a[4]do OVERPOWER_c=OVERPOWER_c+1;local OVERPOWER_a=OVERPOWER_d[OVERPOWER_c];if OVERPOWER_a[1]==32 then OVERPOWER_e[OVERPOWER_f-1]={OVERPOWER_b,OVERPOWER_a[3]};else OVERPOWER_e[OVERPOWER_f-1]={OVERPOWER_m,OVERPOWER_a[3]};end;OVERPOWER_k[#OVERPOWER_k+1]=OVERPOWER_e;end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_n(OVERPOWER_i,OVERPOWER_g,OVERPOWER_h);end;elseif OVERPOWER_e<=36 then if OVERPOWER_e==35 then local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1])else local OVERPOWER_d=OVERPOWER_a[3];local OVERPOWER_c=OVERPOWER_b[OVERPOWER_d]for OVERPOWER_a=OVERPOWER_d+1,OVERPOWER_a[4]do OVERPOWER_c=OVERPOWER_c..OVERPOWER_b[OVERPOWER_a];end;OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_c;end;elseif OVERPOWER_e==37 then local OVERPOWER_f=OVERPOWER_a[2];local OVERPOWER_d={};for OVERPOWER_a=1,#OVERPOWER_k do local OVERPOWER_a=OVERPOWER_k[OVERPOWER_a];for OVERPOWER_c=0,#OVERPOWER_a do local OVERPOWER_a=OVERPOWER_a[OVERPOWER_c];local OVERPOWER_e=OVERPOWER_a[1];local OVERPOWER_c=OVERPOWER_a[2];if OVERPOWER_e==OVERPOWER_b and OVERPOWER_c>=OVERPOWER_f then OVERPOWER_d[OVERPOWER_c]=OVERPOWER_e[OVERPOWER_c];OVERPOWER_a[1]=OVERPOWER_d;end;end;end;else local OVERPOWER_a=OVERPOWER_a[2]local OVERPOWER_d,OVERPOWER_c=OVERPOWER_l(OVERPOWER_b[OVERPOWER_a](OVERPOWER_b[OVERPOWER_a+1]))OVERPOWER_g=OVERPOWER_c+OVERPOWER_a-1 local OVERPOWER_c=0;for OVERPOWER_a=OVERPOWER_a,OVERPOWER_g do OVERPOWER_c=OVERPOWER_c+1;OVERPOWER_b[OVERPOWER_a]=OVERPOWER_d[OVERPOWER_c];end;end;elseif OVERPOWER_e<=44 then if OVERPOWER_e<=41 then if OVERPOWER_e<=39 then local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a](OVERPOWER_f(OVERPOWER_b,OVERPOWER_a+1,OVERPOWER_g))elseif OVERPOWER_e>40 then if OVERPOWER_b[OVERPOWER_a[2]]then OVERPOWER_c=OVERPOWER_c+1;else OVERPOWER_c=OVERPOWER_a[3];end;else local OVERPOWER_c=OVERPOWER_a[2]local OVERPOWER_d,OVERPOWER_a=OVERPOWER_l(OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3])))OVERPOWER_g=OVERPOWER_a+OVERPOWER_c-1 local OVERPOWER_a=0;for OVERPOWER_c=OVERPOWER_c,OVERPOWER_g do OVERPOWER_a=OVERPOWER_a+1;OVERPOWER_b[OVERPOWER_c]=OVERPOWER_d[OVERPOWER_a];end;end;elseif OVERPOWER_e<=42 then local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a](OVERPOWER_f(OVERPOWER_b,OVERPOWER_a+1,OVERPOWER_g))elseif OVERPOWER_e==43 then local OVERPOWER_c=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3]))else local OVERPOWER_c=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_c](OVERPOWER_f(OVERPOWER_b,OVERPOWER_c+1,OVERPOWER_a[3]))end;elseif OVERPOWER_e<=47 then if OVERPOWER_e<=45 then OVERPOWER_b[OVERPOWER_a[2]]=#OVERPOWER_b[OVERPOWER_a[3]];elseif OVERPOWER_e==46 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_h[OVERPOWER_a[3]];else local OVERPOWER_a=OVERPOWER_a[2]OVERPOWER_b[OVERPOWER_a]=OVERPOWER_b[OVERPOWER_a]()end;elseif OVERPOWER_e<=49 then if OVERPOWER_e>48 then OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]][OVERPOWER_a[4]];else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_n(OVERPOWER_o[OVERPOWER_a[3]],nil,OVERPOWER_h);end;elseif OVERPOWER_e==50 then local OVERPOWER_a=OVERPOWER_a[2];do return OVERPOWER_b[OVERPOWER_a](OVERPOWER_f(OVERPOWER_b,OVERPOWER_a+1,OVERPOWER_g))end;else OVERPOWER_b[OVERPOWER_a[2]]=OVERPOWER_b[OVERPOWER_a[3]];end;OVERPOWER_c=OVERPOWER_c+1;end;end);end;return OVERPOWER_n(true,{},OVERPOWER_s())();end)(string.byte,table.insert,setmetatable); 
end)

MainSection:NewButton("Unlock Chat", "You can see what they write in the chat", function()
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Welcome to the chat, player.", Color = Color3.new(0,225,0), Font = Enum.Font.Ubuntu, TextSize = 30 } )
game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 1, -42)
end)

CreditsSection:NewLabel("Gui by 3EloHIyChay123123")


TPSection:NewButton("SafeZone", "You teleport far to the object", function()

local Float = Instance.new("Part",workspace);
Float.Size = Vector3.new(100,1,100);
Float.Position = Vector3.new(10000,10000,10000);
Float.Name = "EXPLOITPART"
Float.Material = "Neon"
Float.Anchored = true;
Float.CanCollide = true;
Float.Transparency = 0;

local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
p1.CFrame = game.Workspace.EXPLOITPART.CFrame

end)

ESPSection:NewButton("Scrap", "You can see Scrap in the distance", function()
    		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'TriggerPart' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "Scrap" -- what the label says
				TextLabel.TextColor3 = Color3.new(0.333333, 1, 1) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
end)

ESPSection:NewButton("Shop", "You can see Shop in the distance", function()
    		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'ShopPart' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 1000000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "Shop" -- what the label says
				TextLabel.TextColor3 = Color3.new(225, 225, 225) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
        
end)
ESPSection:NewButton("SafeHouse (Park)", "You can see SafeHouse in the distance", function()
    	for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'ParkSafeHousePart' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 10000000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "SafeHousePark" -- what the label says
				TextLabel.TextColor3 = Color3.new(0, 225, 0) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
end)
ESPSection:NewButton("Power Station", "You can see PowerStation in the distance", function()
    		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'PowerStationPart' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 100000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "PowerStation" -- what the label says
				TextLabel.TextColor3 = Color3.new(80.333333, 80.333333, 0.333333) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
end)

ESPSection:NewButton("LootBox", "You can see LootBox in the distance", function()
    		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'SupplyDrop' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 1000000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "LootBox" -- what the label says
				TextLabel.TextColor3 = Color3.new(0.333333, 0.333333, 0.333333) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
end)
ESPSection:NewButton("SafeHouse (Survivors)", "You can see SafeHouse in the distance", function()
    		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Parent.Name == 'SurvivorsSafeHousePart' then
	
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label
	
				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.MaxDistance = 1000000
	
				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(2, 5, 2, 5) -- size
				TextLabel.Text = "SafeHouseSurvivors" -- what the label says
				TextLabel.TextColor3 = Color3.new(100.333333, 100.333333, 100.333333) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
	
			end
		end
	
end)

ESPSection:NewButton("Coals", "You can see Coals in the distance", function()
    for __,v in pairs(game.Workspace.StuffGiversFolder.MegaFishCoalParts:GetChildren()) do
if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
local a = Instance.new("BillboardGui",v)
a.Size = UDim2.new(1,0, 1,0)
a.Name = "Coals"
a.AlwaysOnTop = true
local c = Instance.new("TextLabel",a)
c.Name = "Stupid Text"
c.TextColor3 = Color3.new(0.666666, 0.666666, 0.666666)
c.Text = v.Name
c.Size = UDim2.new(1,0, 1,0)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0
end
end
end)


ESPSection:NewButton("Ducks", "You can see Ducks in the distance", function()
    for __,v in pairs(game.Workspace.StuffGiversFolder.DuckParts:GetChildren()) do
if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
local a = Instance.new("BillboardGui",v)
a.Size = UDim2.new(1,0, 1,0)
a.Name = "Ducks"
a.AlwaysOnTop = true
local c = Instance.new("TextLabel",a)
c.Name = "Stupid Text"
c.TextColor3 = Color3.new(0.666666, 0, 0.666666)
c.Text = v.Name
c.Size = UDim2.new(1,0, 1,0)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0
end
end
end)
ScriptsSection:NewButton("Dark-Dex v2", "", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Shadow-Developer/Shadow/master/Scripts/DarkDexExplorer.lua"))()
end)

ScriptsSection:NewButton("Game Stats (not working!)", "Made by me :)", function()
    
end)

ScriptsSection:NewButton("CMD-X", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
ScriptsSection:NewButton("Infinity yield", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
CoolSection:NewLabel("Users who use my gui")
CoolSection:NewLabel("Sakuya1337 (@QrtiomZd)")
CoolSection:NewLabel("Lockhim (@gsjzbz6)")
CoolSection:NewLabel("Soldier (@Baco13n)")

MainSection:NewSlider("CameraZoomDist", "You can move the camera a long distance!", 1000, 8.5, function(s) 
    game.Players.LocalPlayer.CameraMaxZoomDistance = s
end)

MainSection:NewToggle("NoclipCamera", "Your camera will pass through objects", function(state)
    if state then
        game.Players.LocalPlayer.DevCameraOcclusionMode = "Invisicam"
    else
        game.Players.LocalPlayer.DevCameraOcclusionMode = "Zoom"
    end
end)

MainSection:NewButton("Copy link to my private server :)", ";D", function()
setclipboard("https://web.roblox.com/games/6053107323?privateServerLinkCode=74274516036948005687692650764137")
end)

ScriptsSection:NewButton("Remote Spy", "", function()
    
-- FrontEnd // UI

-- Objects

local RemoteSpy = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Ribbon = Instance.new("ImageLabel")
local Hide = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Remotes = Instance.new("ScrollingFrame")
local Source = Instance.new("ScrollingFrame")
local ButtonsFrame = Instance.new("Frame")
local ToClipboard = Instance.new("TextButton")
local Decompile = Instance.new("TextButton")
local GetReturn = Instance.new("TextButton")
local ClearList = Instance.new("TextButton")
local CryptStrings = Instance.new("TextButton")
local EnableSpy = Instance.new("TextButton")
local Last = Instance.new("TextLabel")
local Total = Instance.new("TextLabel")
local Settings = Instance.new("TextButton")
local SetRemotes = Instance.new("ScrollingFrame")
local Storage = Instance.new("Frame")
local RBTN = Instance.new("TextButton")
local Icon = Instance.new("ImageLabel")
local RemoteName = Instance.new("TextLabel")
local ID = Instance.new("TextLabel")
local SBTN = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local RemoteName_2 = Instance.new("TextLabel")
local ID_2 = Instance.new("TextLabel")
local ScriptLine = Instance.new("Frame")
local Line = Instance.new("TextLabel")
local SourceText = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Comments = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Enabled = Instance.new("TextLabel")
local FullScreen = Instance.new("TextButton")
local SetRemotesTab = Instance.new("Frame")
local FilterF = Instance.new("TextButton")
local FilterE = Instance.new("TextButton")
local Search = Instance.new("TextBox")
local remotes_fired = 0
local encrypt_string = false
local spy_enabled = true

local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
local global_env = {"game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

-- Properties

RemoteSpy.Name = "RemoteSpy"
RemoteSpy.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = RemoteSpy
BG.Active = true
BG.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
BG.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
BG.Draggable = true
BG.Position = UDim2.new(0.5, -700, 0.5, -400)
BG.Size = UDim2.new(1, -300, 1, -200)
BG.ClipsDescendants = true

Ribbon.Name = "Ribbon"
Ribbon.Parent = BG
Ribbon.BackgroundColor3 = Color3.new(0.760784, 0.0117647, 0.317647)
Ribbon.BorderSizePixel = 0
Ribbon.Size = UDim2.new(1, 0, 0, 20)
Ribbon.ZIndex = 2

Hide.Name = "Hide"
Hide.Parent = Ribbon
Hide.BackgroundColor3 = Color3.new(1, 0, 0)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(1, -40, 0, 0)
Hide.Size = UDim2.new(0, 40, 0, 20)
Hide.ZIndex = 3
Hide.Font = Enum.Font.SourceSansBold
Hide.FontSize = Enum.FontSize.Size14
Hide.Text = "_"
Hide.TextColor3 = Color3.new(1, 1, 1)
Hide.TextSize = 14

Title.Name = "Title"
Title.Parent = Ribbon
Title.BackgroundColor3 = Color3.new(1, 0.0117647, 0.423529)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, -100, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.ZIndex = 3
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Remote2Script v2"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

Remotes.Name = "Remotes"
Remotes.Parent = BG
Remotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Remotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Remotes.Position = UDim2.new(0, 10, 0, 80)
Remotes.CanvasSize = UDim2.new(0, 0, 40, 0)
Remotes.Size = UDim2.new(0, 250, 1, -90)
Remotes.ZIndex = 2
Remotes.BottomImage = "rbxassetid://148970562"
Remotes.MidImage = "rbxassetid://148970562"
Remotes.ScrollBarThickness = 5
Remotes.TopImage = "rbxassetid://148970562"

Source.Name = "Source"
Source.Parent = BG
Source.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Source.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Source.Position = UDim2.new(0, 270, 0, 80)
Source.Size = UDim2.new(1, -280, 1, -90)
Source.ZIndex = 2
Source.BottomImage = "rbxassetid://148970562"
Source.CanvasSize = UDim2.new(3, 0, 160, 0)
Source.MidImage = "rbxassetid://148970562"
Source.ScrollBarThickness = 5
Source.TopImage = "rbxassetid://148970562"

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = BG
ButtonsFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ButtonsFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
ButtonsFrame.Position = UDim2.new(0, 10, 0, 30)
ButtonsFrame.Size = UDim2.new(1, -20, 0, 40)
ButtonsFrame.ZIndex = 2
ButtonsFrame.ClipsDescendants = true

ToClipboard.Name = "ToClipboard"
ToClipboard.Parent = ButtonsFrame
ToClipboard.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ToClipboard.BorderColor3 = Color3.new(0.117647, 0.392157, 0.117647)
ToClipboard.Position = UDim2.new(0, 10, 0.5, -10)
ToClipboard.Size = UDim2.new(0, 100, 0, 20)
ToClipboard.ZIndex = 3
ToClipboard.Font = Enum.Font.SourceSansBold
ToClipboard.FontSize = Enum.FontSize.Size14
ToClipboard.Text = "COPY"
ToClipboard.TextColor3 = Color3.new(0.235294, 0.784314, 0.235294)
ToClipboard.TextSize = 14

Decompile.Name = "Decompile"
Decompile.Parent = ButtonsFrame
Decompile.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Decompile.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
Decompile.Position = UDim2.new(0, 120, 0.5, -10)
Decompile.Size = UDim2.new(0, 100, 0, 20)
Decompile.ZIndex = 3
Decompile.Font = Enum.Font.SourceSansBold
Decompile.FontSize = Enum.FontSize.Size14
Decompile.Text = "DECOMPILE"
Decompile.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Decompile.TextSize = 14

GetReturn.Name = "GetReturn"
GetReturn.Parent = ButtonsFrame
GetReturn.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
GetReturn.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
GetReturn.Position = UDim2.new(0, 230, 0.5, -10)
GetReturn.Size = UDim2.new(0, 100, 0, 20)
GetReturn.ZIndex = 3
GetReturn.Font = Enum.Font.SourceSansBold
GetReturn.FontSize = Enum.FontSize.Size14
GetReturn.Text = "GET RETURN"
GetReturn.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
GetReturn.TextSize = 14

ClearList.Name = "ClearList"
ClearList.Parent = ButtonsFrame
ClearList.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ClearList.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
ClearList.Position = UDim2.new(0, 340, 0.5, -10)
ClearList.Size = UDim2.new(0, 100, 0, 20)
ClearList.ZIndex = 3
ClearList.Font = Enum.Font.SourceSansBold
ClearList.FontSize = Enum.FontSize.Size14
ClearList.Text = "CLEAR LOGS"
ClearList.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ClearList.TextSize = 14

CryptStrings.Name = "CryptStrings"
CryptStrings.Parent = ButtonsFrame
CryptStrings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
CryptStrings.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
CryptStrings.Position = UDim2.new(0, 450, 0.5, -10)
CryptStrings.Size = UDim2.new(0, 100, 0, 20)
CryptStrings.ZIndex = 3
CryptStrings.Font = Enum.Font.SourceSansBold
CryptStrings.FontSize = Enum.FontSize.Size14
CryptStrings.Text = "CRYPT STRINGS"
CryptStrings.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
CryptStrings.TextSize = 14

EnableSpy.Name = "EnableSpy"
EnableSpy.Parent = ButtonsFrame
EnableSpy.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
EnableSpy.BorderColor3 = Color3.fromRGB(30, 100, 30)
EnableSpy.Position = UDim2.new(0, 560, 0.5, -10)
EnableSpy.Size = UDim2.new(0, 100, 0, 20)
EnableSpy.ZIndex = 3
EnableSpy.Font = Enum.Font.SourceSansBold
EnableSpy.FontSize = Enum.FontSize.Size14
EnableSpy.Text = "REMOTESPY"
EnableSpy.TextColor3 = Color3.fromRGB(60, 200, 60)
EnableSpy.TextSize = 14

Last.Name = "Last"
Last.Parent = ButtonsFrame
Last.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Last.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
Last.Position = UDim2.new(0, 670, 0.5, -10)
Last.Size = UDim2.new(0, 200, 0, 20)
Last.ZIndex = 3
Last.Font = Enum.Font.SourceSansBold
Last.FontSize = Enum.FontSize.Size14
Last.Text = ""
Last.TextColor3 = Color3.new(1, 1, 1)
Last.TextSize = 14
Last.TextWrapped = true

Total.Name = "Total"
Total.Parent = ButtonsFrame
Total.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Total.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
Total.Position = UDim2.new(0, 880, 0.5, -10)
Total.Size = UDim2.new(0, 50, 0, 20)
Total.ZIndex = 3
Total.Font = Enum.Font.SourceSansBold
Total.FontSize = Enum.FontSize.Size14
Total.Text = "0"
Total.TextColor3 = Color3.new(1, 1, 1)
Total.TextSize = 14
Total.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = ButtonsFrame
Settings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Settings.BorderColor3 = Color3.new(0.117647, 0.392157, 0.392157)
Settings.Position = UDim2.new(1, -110, 0.5, -10)
Settings.Size = UDim2.new(0, 100, 0, 20)
Settings.ZIndex = 3
Settings.Font = Enum.Font.SourceSansBold
Settings.FontSize = Enum.FontSize.Size14
Settings.Text = "REMOTES"
Settings.TextColor3 = Color3.new(0.235294, 0.784314, 0.784314)
Settings.TextSize = 14

SetRemotes.Name = "SetRemotes"
SetRemotes.Parent = BG
SetRemotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetRemotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SetRemotes.Position = UDim2.new(0, 270, 0, 80)
SetRemotes.Size = UDim2.new(1, -280, 1, -140)
SetRemotes.Visible = false
SetRemotes.ZIndex = 2
SetRemotes.BottomImage = "rbxassetid://148970562"
SetRemotes.CanvasSize = UDim2.new(0, 0, 25, 0)
SetRemotes.MidImage = "rbxassetid://148970562"
SetRemotes.ScrollBarThickness = 5
SetRemotes.TopImage = "rbxassetid://148970562"

Storage.Name = "Storage"
Storage.Parent = RemoteSpy
Storage.BackgroundColor3 = Color3.new(1, 1, 1)
Storage.Size = UDim2.new(0, 100, 0, 100)
Storage.Visible = false

RBTN.Name = "RBTN"
RBTN.Parent = Storage
RBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
RBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
RBTN.Position = UDim2.new(0, 10, 0, 10)
RBTN.Size = UDim2.new(1, -20, 0, 20)
RBTN.ZIndex = 3
RBTN.Font = Enum.Font.SourceSansBold
RBTN.FontSize = Enum.FontSize.Size14
RBTN.Text = ""
RBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
RBTN.TextSize = 14
RBTN.TextXAlignment = Enum.TextXAlignment.Left

Icon.Name = "Icon"
Icon.Parent = RBTN
Icon.BackgroundColor3 = Color3.new(1, 1, 1)
Icon.BackgroundTransparency = 1
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.ZIndex = 4
Icon.Image = "rbxassetid://413369506"

RemoteName.Name = "RemoteName"
RemoteName.Parent = RBTN
RemoteName.BackgroundColor3 = Color3.new(0.713726, 0.00392157, 0.298039)
RemoteName.BorderSizePixel = 0
RemoteName.Position = UDim2.new(0, 30, 0, 0)
RemoteName.Size = UDim2.new(0, 140, 0, 20)
RemoteName.ZIndex = 4
RemoteName.Font = Enum.Font.SourceSansBold
RemoteName.FontSize = Enum.FontSize.Size14
RemoteName.Text = "10"
RemoteName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
RemoteName.TextSize = 14

ID.Name = "ID"
ID.Parent = RBTN
ID.BackgroundColor3 = Color3.new(0.458824, 0.00392157, 0.192157)
ID.BorderSizePixel = 0
ID.Position = UDim2.new(1, -50, 0, 0)
ID.Size = UDim2.new(0, 50, 0, 20)
ID.ZIndex = 4
ID.Font = Enum.Font.SourceSansBold
ID.FontSize = Enum.FontSize.Size14
ID.Text = "10"
ID.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ID.TextSize = 14

SBTN.Name = "SBTN"
SBTN.Parent = Storage
SBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SBTN.Position = UDim2.new(0, 10, 0, 10)
SBTN.Size = UDim2.new(1, -20, 0, 20)
SBTN.ZIndex = 3
SBTN.Font = Enum.Font.SourceSansBold
SBTN.FontSize = Enum.FontSize.Size14
SBTN.Text = ""
SBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
SBTN.TextSize = 11
SBTN.TextXAlignment = Enum.TextXAlignment.Left

Icon_2.Name = "Icon"
Icon_2.Parent = SBTN
Icon_2.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_2.BackgroundTransparency = 1
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.ZIndex = 4
Icon_2.Image = "rbxassetid://413369506"

RemoteName_2.Name = "RemoteName"
RemoteName_2.Parent = SBTN
RemoteName_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RemoteName_2.BorderSizePixel = 1
RemoteName_2.BorderColor3 = Color3.fromRGB(62, 62, 62)
RemoteName_2.Position = UDim2.new(0, 30, 0, 0)
RemoteName_2.Size = UDim2.new(0, 140, 0, 20)
RemoteName_2.ZIndex = 4
RemoteName_2.Font = Enum.Font.SourceSansBold
RemoteName_2.FontSize = Enum.FontSize.Size14
RemoteName_2.Text = "SayMessageRequest"
RemoteName_2.TextColor3 = Color3.fromRGB(200, 200, 200)
RemoteName_2.TextSize = 11

ID_2.Name = "ID"
ID_2.Parent = SBTN
ID_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ID_2.BorderSizePixel = 1
ID_2.BorderColor3 = Color3.fromRGB(62, 62, 62)
ID_2.Position = UDim2.new(1, -700, 0, 0)
ID_2.Size = UDim2.new(0, 700, 0, 20)
ID_2.ZIndex = 3
ID_2.Font = Enum.Font.SourceSansBold
ID_2.FontSize = Enum.FontSize.Size14
ID_2.Text = "10"
ID_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ID_2.TextSize = 14

ScriptLine.Name = "ScriptLine"
ScriptLine.Parent = Storage
ScriptLine.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptLine.BackgroundTransparency = 1
ScriptLine.Size = UDim2.new(1, 0, 0, 17)
ScriptLine.ZIndex = 2

Line.Name = "Line"
Line.Parent = ScriptLine
Line.BackgroundColor3 = Color3.new(0.329412, 0, 0)
Line.BackgroundTransparency = 1
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 40, 1, 0)
Line.ZIndex = 3
Line.Font = Enum.Font.SourceSansBold
Line.FontSize = Enum.FontSize.Size18
Line.Text = ""
Line.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Line.TextSize = 17

SourceText.Name = "SourceText"
SourceText.Parent = ScriptLine
SourceText.BackgroundColor3 = Color3.new(1, 1, 1)
SourceText.BackgroundTransparency = 1
SourceText.Position = UDim2.new(0, 40, 0, 0)
SourceText.Size = UDim2.new(1, -40, 1, 0)
SourceText.ZIndex = 3
SourceText.Font = Enum.Font.Code
SourceText.FontSize = Enum.FontSize.Size18
SourceText.Text = ""
SourceText.TextColor3 = Color3.new(1, 1, 1)
SourceText.TextSize = 17
SourceText.TextXAlignment = Enum.TextXAlignment.Left

Tokens.Name = "Tokens"
Tokens.Parent = ScriptLine
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Position = UDim2.new(0, 40, 0, 0)
Tokens.Size = UDim2.new(1, -40, 1, 0)
Tokens.ZIndex = 3
Tokens.Font = Enum.Font.Code
Tokens.FontSize = Enum.FontSize.Size18
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Tokens.TextSize = 17
Tokens.TextXAlignment = Enum.TextXAlignment.Left

Strings.Name = "Strings"
Strings.Parent = ScriptLine
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Position = UDim2.new(0, 40, 0, 0)
Strings.Size = UDim2.new(1, -40, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.FontSize = Enum.FontSize.Size18
Strings.Text = ""
Strings.TextColor3 = Color3.new(1, 0.615686, 0)
Strings.TextSize = 17
Strings.TextXAlignment = Enum.TextXAlignment.Left

Comments.Name = "Comments"
Comments.Parent = ScriptLine
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Position = UDim2.new(0, 40, 0, 0)
Comments.Size = UDim2.new(1, -40, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.FontSize = Enum.FontSize.Size18
Comments.Text = ""
Comments.TextColor3 = Color3.fromRGB(60, 200, 60)
Comments.TextSize = 17
Comments.TextXAlignment = Enum.TextXAlignment.Left

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = ScriptLine
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Position = UDim2.new(0, 40, 0, 0)
RemoteHighlight.Size = UDim2.new(1, -40, 1, 0)
RemoteHighlight.ZIndex = 3
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.FontSize = Enum.FontSize.Size18
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.fromRGB(0, 145, 255)
RemoteHighlight.TextSize = 17
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left

Keywords.Name = "Keywords"
Keywords.Parent = ScriptLine
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Position = UDim2.new(0, 40, 0, 0)
Keywords.Size = UDim2.new(1, -40, 1, 0)
Keywords.ZIndex = 3
Keywords.Font = Enum.Font.Code
Keywords.FontSize = Enum.FontSize.Size18
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.231373, 1, 0)
Keywords.TextSize = 17
Keywords.TextXAlignment = Enum.TextXAlignment.Left

Globals.Name = "Globals"
Globals.Parent = ScriptLine
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Position = UDim2.new(0, 40, 0, 0)
Globals.Size = UDim2.new(1, -40, 1, 0)
Globals.ZIndex = 3
Globals.Font = Enum.Font.Code
Globals.FontSize = Enum.FontSize.Size18
Globals.Text = ""
Globals.TextColor3 = Color3.new(1, 0, 0)
Globals.TextSize = 17
Globals.TextXAlignment = Enum.TextXAlignment.Left

Enabled.Name = "Enabled"
Enabled.Parent = SBTN
Enabled.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Enabled.BorderSizePixel = 1
Enabled.BorderColor3 = Color3.fromRGB(30, 100, 30)
Enabled.Position = UDim2.new(0, 210, 0, 0)
Enabled.Size = UDim2.new(0, 100, 1, 0)
Enabled.ZIndex = 4
Enabled.Font = Enum.Font.SourceSansBold
Enabled.FontSize = Enum.FontSize.Size14
Enabled.Text = "Enabled"
Enabled.TextColor3 = Color3.fromRGB(60, 200, 60)
Enabled.TextSize = 14

FullScreen.Name = "FullScreen"
FullScreen.Parent = Ribbon
FullScreen.BackgroundColor3 = Color3.new(1, 0, 0)
FullScreen.BorderSizePixel = 0
FullScreen.Position = UDim2.new(1, -90, 0, 0)
FullScreen.Size = UDim2.new(0, 40, 0, 20)
FullScreen.ZIndex = 3
FullScreen.Font = Enum.Font.SourceSansBold
FullScreen.FontSize = Enum.FontSize.Size14
FullScreen.Text = "[~]"
FullScreen.TextColor3 = Color3.new(1, 1, 1)
FullScreen.TextSize = 14

SetRemotesTab.Name = "SetRemotesTab"
SetRemotesTab.Parent = BG
SetRemotesTab.Visible = false
SetRemotesTab.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetRemotesTab.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SetRemotesTab.ClipsDescendants = true
SetRemotesTab.Position = UDim2.new(0, 270, 1, -50)
SetRemotesTab.Size = UDim2.new(1, -280, 0, 40)
SetRemotesTab.ZIndex = 2

FilterF.Name = "FilterF"
FilterF.Parent = SetRemotesTab
FilterF.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FilterF.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
FilterF.Position = UDim2.new(0, 120, 0.5, -10)
FilterF.Size = UDim2.new(0, 120, 0, 20)
FilterF.ZIndex = 3
FilterF.Font = Enum.Font.SourceSansBold
FilterF.FontSize = Enum.FontSize.Size14
FilterF.Text = "FILTER FUNCTIONS"
FilterF.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
FilterF.TextSize = 14

FilterE.Name = "FilterE"
FilterE.Parent = SetRemotesTab
FilterE.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FilterE.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
FilterE.Position = UDim2.new(0, 10, 0.5, -10)
FilterE.Size = UDim2.new(0, 100, 0, 20)
FilterE.ZIndex = 3
FilterE.Font = Enum.Font.SourceSansBold
FilterE.FontSize = Enum.FontSize.Size14
FilterE.Text = "FILTER EVENTS"
FilterE.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
FilterE.TextSize = 14

Search.Name = "Search"
Search.Parent = SetRemotesTab
Search.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Search.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Search.Position = UDim2.new(0, 250, 0.5, -10)
Search.Selectable = true
Search.Size = UDim2.new(1, -260, 0, 20)
Search.ZIndex = 3
Search.Font = Enum.Font.SourceSansBold
Search.FontSize = Enum.FontSize.Size14
Search.Text = "[SEARCH]"
Search.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Search.TextSize = 14

-- FrontEnd-Backend // UI Functions

local HasSpecial = function(string)
    return (string:match("%c") or string:match("%s") or string:match("%p")) ~= nil
end

local GetPath = function(Instance)
	local Obj = Instance
	local string = {}
	local temp = {}
	local error = false
	
	while Obj ~= game do
		if Obj == nil then
			error = true
			break
		end
		table.insert(temp, Obj.Parent == game and Obj.ClassName or tostring(Obj))
		Obj = Obj.Parent
	end
	
	table.insert(string, "game:GetService(\"" .. temp[#temp] .. "\")")
	
	for i = #temp - 1, 1, -1 do
		table.insert(string, HasSpecial(temp[i]) and "[\"" .. temp[i] .. "\"]" or "." .. temp[i])
	end

	return (error and "nil -- Path contained invalid instance" or table.concat(string, ""))
end

local GetType = function(Instance)
	local Types = 
	{
		EnumItem = function()
			return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
		end,
		Instance = function()
			return GetPath(Instance)
		end,
		CFrame = function()
			return "CFrame.new(" .. tostring(Instance) .. ")"
		end,
		Vector3 = function()
			return "Vector3.new(" .. tostring(Instance) .. ")"
		end,
		BrickColor = function()
			return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
		end,
		Color3 = function()
			return "Color3.new(" .. tostring(Instance) .. ")"
		end,
		string = function()
			local S = tostring(Instance)
			return "\"" .. (encrypt_string and S:gsub(".", function(c) return "\\" .. c:byte() end) or S) .. "\""
		end,
		Ray = function()
			return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
		end
	}

	return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
end

local size_frame = function(frame, UDim)
	frame:TweenSize(UDim, "Out", "Quint", 0.3)
end

local pos_frame = function(frame, UDim)
	frame:TweenPosition(UDim, "Out", "Quint", 0.3)
end

local size_pos_frame = function(frame, UDim, UDim2)
	frame:TweenSizeAndPosition(UDim, UDim2, "Out", "Quint", 0.3)
end

local hide = function()
	size_frame(BG, UDim2.new(0, 300, 0, 20))
	pos_frame(Title, UDim2.new(0, 0, 0, 0))
	pos_frame(Remotes, UDim2.new(0, 10, 0, 100))
	pos_frame(Source, UDim2.new(0, 270, 0, 100))
	BG.Draggable = true
	SetRemotes.Visible = false
	SetRemotesTab.Visible = false
	Source.Visible = true
	
	return "[]"
end

local show = function()
	size_frame(BG, UDim2.new(1, -300, 1, -200))
	pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
	pos_frame(Title, UDim2.new(0.5, -100, 0, 0))
	pos_frame(Remotes, UDim2.new(0, 10, 0, 80))
	pos_frame(Source, UDim2.new(0, 270, 0, 80))
	BG.Draggable = false
	
	return "_"
end

local onclick_hide = function()
	Hide.Text = Hide.Text == "_" and hide() or show()
end

local onclick_settings = function()
	Source.Visible = not Source.Visible
	SetRemotes.Visible = not Source.Visible
	SetRemotesTab.Visible = not Source.Visible
end

local onclick_remotespy = function()
	spy_enabled = not spy_enabled
	EnableSpy.TextColor3 = EnableSpy.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	EnableSpy.BorderColor3 = EnableSpy.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
end

local onclick_cryptstring = function()
	encrypt_string = not encrypt_string
	CryptStrings.TextColor3 = CryptStrings.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	CryptStrings.BorderColor3 = CryptStrings.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
end

local clear_logs = function()
	Remotes:ClearAllChildren()
	remotes_fired = 0
	Total.Text = "0"
end

local filter_events = function()
	local n = 0
	for i, v in pairs(SetRemotes:GetChildren()) do
		v.Visible = not (FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369623")
		if v.Visible == true then
			n = n + 1
			v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
		else
			v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
		end
	end
end

local filter_functions = function()
	local n = 0
	for i, v in pairs(SetRemotes:GetChildren()) do
		v.Visible = not (FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369506")
		if v.Visible == true then
			n = n + 1
			v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
		else
			v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
		end
	end
end

local onclick_fevents = function()
	FilterE.TextColor3 = FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	FilterE.BorderColor3 = FilterE.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
	filter_events()
end

local onclick_ffunctions = function()
	FilterF.TextColor3 = FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	FilterF.BorderColor3 = FilterF.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
	filter_functions()
end

local Highlight = function(string, keywords)
    local K = {}
    local S = string
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    for i, v in pairs(keywords) do
        K[v] = true
    end
    S = S:gsub(".", function(c)
        if Token[c] ~= nil then
            return "\32"
        else
            return c
        end
    end)
    S = S:gsub("%S+", function(c)
        if K[c] ~= nil then
            return c
        else
            return (" "):rep(#c)
        end
    end)
  
    return S
end

local Tokens = function(string)
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    local A = ""
    string:gsub(".", function(c)
        if Token[c] ~= nil then
            A = A .. c
        elseif c == "\n" then
            A = A .. "\n"
		elseif c == "\t" then
			A = A .. "\t"
        else
            A = A .. "\32"
        end
    end)
  
    return A
end

local strings = function(string)
    local highlight = ""
    local quote = false
    string:gsub(".", function(c)
        if quote == false and c == "\"" then
            quote = true
        elseif quote == true and c == "\"" then
            quote = false
        end
        if quote == false and c == "\"" then
            highlight = highlight .. "\""
        elseif c == "\n" then
            highlight = highlight .. "\n"
	elseif c == "\t" then
	    highlight = highlight .. "\t"
        elseif quote == true then
            highlight = highlight .. c
        elseif quote == false then
            highlight = highlight .. "\32"
        end
    end)
  
    return highlight
end

local comments = function(string)
    local ret = ""
    string:gsub("[^\r\n]+", function(c)
        local comm = false
        local i = 0
        c:gsub(".", function(n)
            i = i + 1
            if c:sub(i, i + 1) == "--" then
                comm = true
            end
            if comm == true then
                ret = ret .. n
            else
                ret = ret .. "\32"
            end
        end)
        ret = ret
    end)
    
    return ret
end

local copy_source = function()
	local script = ""
	local copy
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	if Clipboard ~= nil then
		copy = Clipboard.set
	elseif Synapse ~= nil then
		copy = function(str)
			Synapse:Copy(str)
		end
	elseif setclipboard ~= nil then	
		copy = setclipboard
	end
	copy(script)
end

local onclick_fullscreen = function()
	size_pos_frame(BG, UDim2.new(1, 0, 1, 40), UDim2.new(0, 0, 0, -40))
	BG.Draggable = false
end

local filter_remotes = function(type)
	local n = 0
	if type == "Text" then
		for i, v in pairs(SetRemotes:GetChildren()) do
			if v.Name:lower():match(Search.Text:lower()) and string ~= "" then
				v.Visible = true
				n = n + 1
			else
				v.Visible = false
			end
			if v.Visible == true then
				v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
			else
				v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
			end
		end
	end
end

local fix = function(string)
	if string == "/e fix" then
		show()
		wait(0.3)
		pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
	end
end

-- FrontEnd-Connections // UI Events

Hide.MouseButton1Down:Connect(onclick_hide)
Settings.MouseButton1Down:Connect(onclick_settings)
ClearList.MouseButton1Down:Connect(clear_logs)
EnableSpy.MouseButton1Down:Connect(onclick_remotespy)
ToClipboard.MouseButton1Down:Connect(copy_source)
CryptStrings.MouseButton1Down:Connect(onclick_cryptstring)
FullScreen.MouseButton1Down:Connect(onclick_fullscreen)
FilterE.MouseButton1Down:Connect(onclick_fevents)
FilterF.MouseButton1Down:Connect(onclick_ffunctions)
Search.Changed:Connect(filter_remotes)
game:GetService("Players").LocalPlayer.Chatted:Connect(fix)

-- Recursive Remotefill // UI-Backend

Table_TS = function(T)
    local M = {}
    for i, v in pairs(T) do
        local I = "\n\t" .. (type(i) == "number" and "[" .. i .. "] = " or "[\"" .. i .. "\"] = ")
        table.insert(M, I .. (type(v) == "table" and Table_TS(v) or GetType(v)))
    end
    
    return "\n{" .. table.concat(M, ", ") .. "\n}"
end

function fill(base)
	for i, v in pairs(base:GetChildren()) do
		if v.ClassName:match("Remote") and v.Name ~= "CharacterSoundEvent" then
			local B = SBTN:Clone()
			
			B.Parent = SetRemotes
			B.Icon.Image = (v.ClassName == "RemoteEvent" and "rbxassetid://413369506" or "rbxassetid://413369623")
			B.RemoteName.Text = v.Name
			B.ID.Text = GetPath(v)
			B.Name = v.Name
			B.Position = UDim2.new(0, 10, 0, -20 + #SetRemotes:GetChildren() * 30)
			B.MouseButton1Down:Connect(function()
				B.Enabled.Text = B.Enabled.Text == "Enabled" and "Disabled" or "Enabled"
				B.Enabled.TextColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(60, 200, 60) or Color3.fromRGB(200, 60, 60)
				B.Enabled.BorderColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(30, 100, 30) or Color3.fromRGB(100, 30, 30)
			end)
		end
		fill(v)
	end
end

fill(game)

-- Backend // Remotespy Backend

local game_meta = getrawmetatable(game)
local game_namecall = game_meta.__namecall
local namecall_dump = {}
local current_rmt = nil
local g_caller = nil
local f_return = nil
local Step = game:GetService("RunService").Stepped

local mwr

if setreadonly ~= nil then
	mwr = function()
		setreadonly(game_meta, false)
	end
elseif make_writeable ~= nil then	
	mwr = function()
		make_writeable(game_meta)
	end
end

mwr()

local namecall_script = function(object, method, ...)
	local script = "-- Script generated by R2Sv2\n-- R2Sv2 developed by Luckyxero\n\32\n"
	local args = {}
	for i, v in pairs{...} do
		script = script .. "local A_" .. i .. " = " .. (type(v) == "table" and Table_TS(v) or GetType(v)) .. "\n"
		table.insert(args, "A_" .. i)
	end
	script = script .. "local Event = " .. GetPath(object) .. "\n\n"
	script = script .. "Event:" .. method .. "(" .. table.concat(args, ", ") .. ")"
	
	return script
end

local dump_script = function(script)
	Source:ClearAllChildren()
	local lines = 0
	script:gsub("[^\r\n]+", function(c)
		lines = lines + 1
		local tabs = 0
		c:gsub("%\t", function() tabs = tabs + 1 end)
		local line = ScriptLine:Clone()
		line.Parent = Source
		line.SourceText.Text = c 
		line.Line.Text = lines
		line.RemoteHighlight.Text = Highlight(c, {"FireServer", "InvokeServer", "invokeServer", "fireServer"})
		line.Position = UDim2.new(0, tabs * (17 * 2), 0, -17 + #Source:GetChildren() * 17)
		line.Globals.Text = Highlight(c, global_env)
		line.Line.Position = UDim2.new(0, 0 - tabs * (17 * 2), 0, 0)
		line.Strings.Text = strings(c)
		line.Keywords.Text = Highlight(c, lua_keywords)
		line.Tokens.Text = Tokens(c)
		line.Comments.Text = comments(c)
	end)
end

local log_remote = function(table)
	if SetRemotes[table.object.Name].Enabled.Text == "Disabled" then return end
	local B = RBTN:Clone()
	g_caller = table.caller
	remotes_fired = remotes_fired + 1
	Total.Text = remotes_fired

	B.Parent = Remotes
	B.Position = UDim2.new(0, 10, 0, -20 + #Remotes:GetChildren() * 30)
	B.Icon.Image = table.method == "FireServer" and "rbxassetid://413369506" or "rbxassetid://413369623"
	B.RemoteName.Text = table.object.Name
	B.ID.Text = tostring(remotes_fired)
	B.MouseButton1Down:Connect(function()
		dump_script(table.script)
		g_caller = table.caller
		f_return = table.freturn == nil and table.object.Name .. " is not RemoteFunction" or table.freturn
	end)
end


local get_namecall_dump = function(script, object, ...)
	local Ret = nil
	if object.ClassName == "RemoteFunction" then
		local freturn = {pcall(object.InvokeServer, object, ...)}
		freturn = {select(2, unpack(freturn))}
		
		if #freturn == 0 then
			Ret = object.Name .. " is a void type RemoteFunction."
		else
			Ret = Table_TS(freturn)
		end
	end
	namecall_dump[#namecall_dump + 1] = 
	{	
		script = namecall_script(object, object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer", ...),
		caller = script,
		object = object,
		method = object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer",
		freturn = Ret
	}
end

GetReturn.MouseButton1Down:Connect(function()
	dump_script(f_return)
end)

Decompile.MouseButton1Down:Connect(function()
	dump_script('Decompile currently broken with LuaU.')
end)

Step:Connect(function()
	while #namecall_dump > 0 do
		log_remote(table.remove(namecall_dump, 1))
	end
end)

local on_namecall = function(object, ...)
	local method = tostring(getnamecallmethod())
	local args = {...}
	if object.Name ~= "CharacterSoundEvent" and method:match("Server") and spy_enabled == true then get_namecall_dump(getfenv(2).script, object, unpack(args)) end

	return game_namecall(object, ...)
end

game_meta.__namecall = on_namecall
end)

CoolSection:NewLabel("Survivals_BEX (@Survivals_BEX)")--[[

Welcome to Fluxus v7

Tired of linkvertises? Buy Fluxus premium today at: https://fluxteam.net/buy 

If you need help, join our discord at: https://fluxteam.net/external-files/discord.php 

]]--