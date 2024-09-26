--[[
	patchma hub by MyWorld
	one last unpatch... 

	IDs of paid accessories:

	-for arms 11159410305,11263254795 or 14255556501,14255554762 or 12344545199,12344591101

	-for legs 14768693948,14768701869 or 11159483910,12652786974

	-for torso 14255528083 or 13421786478 or 14768678294

	or anything else that covers ur torso. examples:
	13423624885,11502853991,14053485259,13779879140,14443132226
	can be same stuff but different colors

	there are 48 ways to make a rig with the ids above

	IDs of free accessories:
	3033910400,3409612660,3438342658,3398308134,4324158403,3822880197,4154538250,3443038622,4819740796
]]

--no need to get and index the library tables with function names every time the script uses them
local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local clamp=math.clamp
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack

--the script doesnt have to read global varaibles every time to get them
--why not have them saved in local varaibles for faster access times
local pairs=pairs 
local next=next
local pcall=pcall
local type=type

local typeof=typeof
local game=game

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

--findfirstchildofclass faster than getservice
local plrs=game:FindFirstChildOfClass("Players")
local rs=game:FindFirstChildOfClass("RunService")
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local gs=game:FindFirstChildOfClass("GuiService")
local lp=plrs.LocalPlayer
local pg=lp:FindFirstChildOfClass("PlayerGui")
local mouse=lp:GetMouse()
local stepped=rs.Stepped
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_net=v3_010*25.01

--setting empty fenv for the rest of the script later
local function noglobals()

	local function rs(l) 
		l=l or mrandom(8,15) 
		local s="" 
		for i=1,l do 
			if mrandom(1,2)==1 then 
				s=s..schar(mrandom(65,90)) 
			else 
				s=s..schar(mrandom(97,122)) 
			end 
		end 
		return s 
	end
	local function gp(p,n,cl)
		if typeof(p)=="Instance" then
			local c=p:GetChildren()
			for i=1,#c do
				local v=c[i]
				if (v.Name==n) and v:IsA(cl) then
					return v
				end
			end
		end
		return nil
	end
	local function timegp(p,n,c,t)
		t=osclock()+t
		while t>osclock() do
			local r=gp(p,n,c)
			if r then
				return r
			end
			stepped:Wait()
		end
		return nil
	end
	local function getNetlessVelocity(realVel)
		--if true then return v3_0 end
		--if true then return realPartVelocity end
		--if true then return v3_net end
		if realVel.Magnitude>25.01 then
			realVel=realVel.Unit*25.01
		end
		return realVel*v3_xz+v3_net
	end
	local sft=1/45
	local function getFallingTime(Ypos,destY,gravity)
		local velY=25.01
		local fallingTime=0
		gravity=gravity*sft
		while (Ypos>destY) or (velY>0) do
			fallingTime=fallingTime+sft
			velY=velY-gravity
			Ypos=Ypos+(velY*sft)
		end
		return fallingTime
	end
	local function getMeshOfPart(v)
		if v:IsA("MeshPart") then
			return v.MeshId, v.TextureID
		elseif v:IsA("BasePart") then
			v=v:FindFirstChildOfClass("SpecialMesh")
			if v then
				return v.MeshId, v.TextureId
			end
		end
		return nil, nil
	end
	local function makeplaceholder(v)
		if typeof(v)~="Instance" then
			return nil
		end
		if not v.Archivable then
			v.Archivable=true
		end
		v=v:Clone()
		local c=v:GetChildren()
		for i=1,#c do
			local v=c[i]
			if v:IsA("SpecialMesh") then
				v.Name=rs()
				v:ClearAllChildren()
			else
				v:Destroy()
			end
		end
		v.Name=rs()
		v.Anchored=true
		v.CanCollide=false
		v.Transparency=0.25
		v.Parent=ws
		return v
	end
	local function emptyfunction() end

	local guiTheme={
		guiTitle="patchma hub",
		windowTitleColor=c3(0,0,1),
		windowTopColor=c3(0,0,0),
		windowBottomColor=c3(0,0,0.584314),
		windowMinimizedSize=u2(0,220,0,22),
		windowRegularSize=u2(0,220,0,290),
		buttonsTextColor=c3(0.0941177,0.317647,0.878431),
		labelsTextColor=c3(0.560784,0.560784,0.560784),
		listTopColor=c3(0,0,0),
		listBottomColor=c3(0.0705882,0.0705882,0.0705882)
	}

	local accessorylimbs={

		{meshid="11263221350",textureid="11263219250",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
		{meshid="11159370334",textureid="11159284657",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},

		{meshid="14255522247",textureid="",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
		{meshid="14255522247",textureid="",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},

		{meshid="12344207333",textureid="",C0=angles(2,0,0),Name="Left Arm"},
		{meshid="12344206657",textureid="",C0=angles(2,0,0),Name="Right Arm"},

		{meshid="11159370334",textureid="11159285454",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
		{meshid="12652772399",textureid="12652775021",C0=cf(0,-0.125,0),Name="Right Leg"},

		{meshid="14768684979",textureid="",C0=angles(0,0,1.5707963267948966),Name="Left Leg"},
		{meshid="14768684979",textureid="",C0=angles(0,0,1.5707963267948966),Name="Right Leg"},

		{meshid="14768666349",textureid="",C0=cf_0,Name="Torso"},
		{meshid="14241018198",textureid="",C0=cf_0,Name="Torso"},
		{meshid="13421774668",textureid="",C0=cf_0,Name="Torso"},
			
		{meshid="4324138105",textureid="4324138210",C0=angles(-1.6144295580947547,1.5707963267948966,0)*cf(-0.125,0.3,0),Name="Left Arm"},
		{meshid="4154474745",textureid="4154474807",C0=angles(1.5271630954950384,-1.5707963267948966,0)*cf(-0.125,-0.3,0),Name="Left Arm"},
		{meshid="3030546036",textureid="3650191503",C0=angles(1.5271630954950384,1.5707963267948966,0)*cf(0.125,-0.3,0),Name="Right Arm"},
		{meshid="3030546036",textureid="3443321249",C0=angles(-1.6144295580947547,-1.5707963267948966,0)*cf(0.125,0.3,0),Name="Right Arm"},
		{meshid="3030546036",textureid="3360974849",C0=angles(1.5271630954950384,1.5707963267948966,0)*cf(-0.125,-0.35,0),Name="Left Leg"},
		{meshid="3030546036",textureid="3360978739",C0=angles(-1.6144295580947547,-1.5707963267948966,0)*cf(-0.125,0.3,0),Name="Left Leg"},
		{meshid="3030546036",textureid="3033898741",C0=angles(1.5271630954950384,-1.5707963267948966,0)*cf(0.125,-0.35,0),Name="Right Leg"},
		{meshid="3030546036",textureid="3409604993",C0=angles(-1.6144295580947547,1.5707963267948966,0)*cf(0.125,0.3,0),Name="Right Leg"},
		{meshid="4819720316",textureid="4819722776",C0=angles(0,0,0.2617993877991494),Name="Torso"}
	}

	local i1=i("Frame") 
	local i2=i("Frame") 
	local i3=i("ScrollingFrame") 
	local i4=i("UIListLayout") 
	local i5=i("UIGradient") 
	local i6=i("TextBox") 
	local i7=i("TextButton") 
	local i8=i("UIGradient") 
	local i9=i("ScreenGui") 
	i1.AnchorPoint=v2(0.5,0) 
	i1.BackgroundColor3=c3(1,1,1) 
	i1.BorderSizePixel=0 
	i1.Position=u2(0.5,0,0.5,-150) 
	i1.Size=guiTheme.windowRegularSize 
	i1.Name=rs() 
	i1.Parent=i9 
	i2.BackgroundColor3=c3(1,1,1) 
	i2.BorderSizePixel=0 
	i2.Position=u2(0,5,0,20) 
	i2.Size=u2(1,-10,1,-25) 
	i2.Name=rs() 
	i2.Parent=i1 
	i3.Active=true 
	i3.BackgroundTransparency=1 
	i3.BorderSizePixel=0 
	i3.Size=u2(1,-3,1,0) 
	i3.AutomaticCanvasSize=e.AutomaticSize.Y 
	i3.CanvasSize=u2(0,0,0,0) 
	i3.ScrollBarThickness=7 
	i3.Name=rs() 
	i3.Parent=i2 
	i4.Name=rs() 
	i4.Parent=i3 
	i4.SortOrder=e.SortOrder.LayoutOrder 
	i5.Name=rs() 
	i5.Parent=i2 
	i5.Color=cs({csk(0,guiTheme.listTopColor),csk(1,guiTheme.listBottomColor)}) 
	i5.Rotation=90 
	i6.Font=e.Font.SourceSans 
	i6.FontSize=e.FontSize.Size18 
	i6.ClearTextOnFocus=false 
	i6.Text=guiTheme.guiTitle 
	i6.TextColor3=guiTheme.windowTitleColor 
	i6.TextSize=16 
	i6.AnchorPoint=v2(0.5,0) 
	i6.BackgroundTransparency=1 
	i6.Position=u2(0.5,0,0,11) 
	i6.Name=rs() 
	i6.Parent=i1 
	i7.AnchorPoint=v2(1,0) 
	i7.BackgroundTransparency=1 
	i7.Position=u2(1,0,0,0) 
	i7.Size=u2(0,40,0,20) 
	i7.Name=rs() 
	i7.Parent=i1 
	i7.Font=e.Font.SourceSans 
	i7.FontSize=e.FontSize.Size18 
	i7.Text="-" 
	i7.TextColor3=c3(1,1,1) 
	i7.TextSize=16 
	i8.Name=rs() 
	i8.Parent=i1 
	i8.Color=cs({csk(0,guiTheme.windowTopColor),csk(1,guiTheme.windowBottomColor)}) 
	i8.Rotation=90 
	i9.ZIndexBehavior=e.ZIndexBehavior.Sibling 
	i9.IgnoreGuiInset=true 
	i9.ResetOnSpawn=false 
	i9.DisplayOrder=2147483647 
	i9.Name=rs() 
	local min=false
	i7.MouseButton1Click:Connect(function()
		min = not min
		if min then
			i2.Visible=false 
			i8.Color=cs({csk(0,c3(0,0,0)),csk(1,c3(0,0,0))}) 
			i1.Size=guiTheme.windowMinimizedSize 
		else
			i1.Size=guiTheme.windowRegularSize 
			i8.Color=cs({csk(0,c3(0,0,0)),csk(1,c3(0,0,0.584314))}) 
			i2.Visible=true 
		end
	end)
	local function Draggable(window,obj)
		local MB1enum = e.UserInputType.MouseButton1
		local TOUCHenum = e.UserInputType.Touch
		obj = obj or window
		local activeEntered = 0
		local mouseStart = nil
		local dragStart = nil
		local inputbegancon = nil
		local rendersteppedcon = nil
		local inputendedcon = nil
		local function inputendedf(a)
			a=a.UserInputType
			if (a==MB1enum) or (a==TOUCHenum) then
				rendersteppedcon:Disconnect()
				inputendedcon:Disconnect()
			end
		end
		local function rendersteppedf()
			local off = uis:GetMouseLocation()-mouseStart
			window.Position=dragStart+u2(0,off.X,0,off.Y)
		end
		local function inputbeganf(a)
			a=a.UserInputType
			if ((a==MB1enum) or (a==TOUCHenum)) and (activeEntered==0) and not uis:GetFocusedTextBox() then
				mouseStart=uis:GetMouseLocation()
				dragStart=window.Position
				if rendersteppedcon then rendersteppedcon:Disconnect() end
				rendersteppedcon = renderstepped:Connect(rendersteppedf)
				if inputendedcon then inputendedcon:Disconnect() end
				inputendedcon = uis.InputEnded:Connect(inputendedf)
			end
		end
		obj.MouseEnter:Connect(function()
			if inputbegancon then inputbegancon:Disconnect() end
			inputbegancon = uis.InputBegan:Connect(inputbeganf)
		end)
		obj.MouseLeave:Connect(function()
			inputbegancon:Disconnect()
		end)
		local function ondes(d)
			if d:IsA("GuiObject") then
				local thisEntered = false
				local thisAdded = false
				local con0 = d.MouseEnter:Connect(function()
					thisEntered = true
					if (not thisAdded) and d.Active then
						activeEntered = activeEntered + 1
						thisAdded = true
					end
				end)
				local con1 = d.MouseLeave:Connect(function()
					thisEntered = false
					if thisAdded then
						activeEntered = activeEntered - 1
						thisAdded = false
					end
				end)
				local con2 = d:GetPropertyChangedSignal("Active"):Connect(function()
					if thisEntered then
						if thisAdded and not d.Active then
							activeEntered = activeEntered - 1
							thisAdded = false
						elseif d.Active and not thisAdded then
							activeEntered = activeEntered + 1
							thisAdded = true
						end
					end
				end)
				local con3 = nil
				con3 = d.AncestryChanged:Connect(function()
					if not d:IsDescendantOf(window) then
						if thisEntered then
							activeEntered = activeEntered - 1
						end
						con0:Disconnect()
						con1:Disconnect()
						con2:Disconnect()
						con3:Disconnect()
					end
				end)
			end
		end
		window.DescendantAdded:Connect(ondes)
		local des=window:GetDescendants()
		for i=1,#des do 
			ondes(des[i])
		end
	end
	local function btn(txt, f)
		local i1=i("TextBox") 
		local i2=i("TextButton")
		i1.Font=e.Font.SourceSans 
		i1.FontSize=e.FontSize.Size14 
		i1.Text=txt 
		i1.ClearTextOnFocus=false 
		i1.Position=u2(0.5,0,0.5,0) 
		i1.TextColor3=guiTheme.buttonsTextColor 
		i1.Name=rs()
		i1.Parent=i2
		i2.BackgroundTransparency=1 
		i2.TextTransparency=1 
		i2.Size=u2(1,0,0,14) 
		i2.Name=rs() 
		if f then 
			i2.MouseButton1Click:Connect(f) 
		end 
		i2.Parent=i3 
		return i1
	end
	local function lbl(txt)
		local i1=i("TextBox") 
		local i2=i("Frame") 
		i1.Font=e.Font.SourceSans 
		i1.FontSize=e.FontSize.Size14 
		i1.Text=txt 
		i1.ClearTextOnFocus=false 
		i1.TextColor3=guiTheme.labelsTextColor 
		i1.Position=u2(0.5,0,0.5) 
		i1.BackgroundTransparency=1 
		i1.Name=rs() 
		i1.Parent=i2 
		i2.Size=u2(1,0,0,14) 
		i2.BackgroundTransparency=1 
		i2.Name=rs() 
		i2.Parent=i3 
		return i1
	end

	Draggable(i1)

	lbl("by MyWorld")
	lbl("discord.gg/QMy5f6DrbH")

	local allowshiftlock=nil
	local ctrltp=nil
	local placeholders=nil
	local clickfling=nil
	local highlightflingtargets=nil
	local discharscripts=nil

	local c=nil
	local function stopreanimate() 
		if c then
			c=nil
			return true
		end
		return false
	end
	local function reanimate()
		--[[
			FDless reanimate by MyWorld
			aka no client sided instances
			"what else do i optimize here"
		]]

		local novoid = true --prevents parts from going under workspace.FallenPartsDestroyHeight if you control them
		local speedlimit = 3000 --makes your parts move slower if the magnitude of their velocity is higher than this
		local retVelTime = 0.51 --time that claimed parts have velocity to reclaim in case u lose them
		local walkSpeed = 16 --your walkspeed (can be changed at runtime)
		local jumpPower = 50 --your jump power (can be changed at runtime)
		local gravity = 196.2 --how fast the characters velocity decreases while falling (can be changed at runtime)
		local ctrlclicktp = ctrltp --makes you teleport where u point ur mouse cursor at when click and hold ctrl down
		local clickfling = clickfling --makes you fling the person you clicked when its available to do so
		local flingvel = v3(15000,16000,15000) --the rotation velocity that ur character will have while flinging
		local highlightflingtargets = highlightflingtargets --highlights characters that are going to get flung
		
		if stopreanimate() then return end
		c=lp.Character
		if not (c and c:IsDescendantOf(ws)) then return end

		local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or timegp(c,"HumanoidRootPart","BasePart",0.5) or c:FindFirstChildWhichIsA("BasePart")
		if not rootpart then return end

		local cam=nil
		--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
		local function refcam()
			cam=ws.CurrentCamera
			while not cam do
				ws:GetPropertyChangedSignal("CurrentCamera"):Wait()
				cam=ws.CurrentCamera
			end
		end
		refcam()
		local camcf=cam.CFrame
		local enumCamS=e.CameraType.Scriptable
		local camt=cam.CameraType
		local camcon0=nil
		local camcon1=nil
		local camcon2=nil
		local function onnewcamera()
			refcam()
			if camcon0 then 
				camcon0:Disconnect()
				camcon1:Disconnect()
				camcon0=nil
			end
			if not c then 
				if cam.CameraType==enumCamS then
					cam.CameraType=camt
				end
				return camcon2:Disconnect() 
			end
			camcon0=cam:GetPropertyChangedSignal("CFrame"):Connect(function()
				if cam.CFrame~=camcf then
					cam.CFrame=camcf
				end
			end)
			camcon1=cam:GetPropertyChangedSignal("CameraType"):Connect(function()
				if cam.CameraType~=enumCamS then
					cam.CameraType=enumCamS
				end
			end)
			if cam.CameraType~=enumCamS then
				cam.CameraType=enumCamS
			end
			if cam.CFrame~=camcf then
				cam.CFrame=camcf
			end
		end
		camcon2=ws:GetPropertyChangedSignal("CurrentCamera"):Connect(onnewcamera)
		onnewcamera()

		local rGravity=ws.Gravity
		ws:GetPropertyChangedSignal("Gravity"):Connect(function()
			rGravity=ws.Gravity
		end)

		local fpdh=ws.FallenPartsDestroyHeight
		novoid=novoid and (fpdh+1)

		local Yvel=0
		local cfr=rootpart.CFrame
		local pos=cfr.Position
		local primarypart=nil
		local shiftlock=false
		local firstperson=false
		local xzvel=v3_0
		local v3_0150=v3_010*1.5
		local camoff=cf(v3_0,camcf.LookVector)
		camoff=camoff-v3_001*(camcf.Position-(pos+v3_0150)).Magnitude
		
		local R6parts={ 
			head={Name="Head"},
			torso={Name="Torso"},
			root={Name="HumanoidRootPart"},
			leftArm={Name="Left Arm"},
			rightArm={Name="Right Arm"},
			leftLeg={Name="Left Leg"},
			rightLeg={Name="Right Leg"}
		}
		rootpart=R6parts.root
		local cframes={}
		for i,v in pairs(R6parts) do
			cframes[v]=cfr
		end
		local joints={
			{
				Name="Neck",
				Part0=R6parts.torso,Part1=R6parts.head,
				C0=cf(0,1,0,-1,0,0,0,0,1,0,1,-0),
				C1=cf(0,-0.5,0,-1,0,0,0,0,1,0,1,-0)
			},
			{
				Name="RootJoint",
				Part0=rootpart,Part1=R6parts.torso,
				C0=cf(0,0,0,-1,0,0,0,0,1,0,1,-0),
				C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
			},
			{
				Name="Right Shoulder",
				Part0=R6parts.torso,Part1=R6parts.rightArm,
				C0=cf(1,0.5,0,0,0,1,0,1,-0,-1,0,0),
				C1=cf(-0.5,0.5,0,0,0,1,0,1,-0,-1,0,0)
			},
			{
				Name="Left Shoulder",
				Part0=R6parts.torso,Part1=R6parts.leftArm,
				C0=cf(-1,0.5,0,0,0,-1,0,1,0,1,0,0),
				C1=cf(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
			},
			{
				Name="Right Hip",
				Part0=R6parts.torso,Part1=R6parts.rightLeg,
				C0=cf(1,-1,0,0,0,1,0,1,-0,-1,0,0),
				C1=cf(0.5,1,0,0,0,1,0,1,-0,-1,0,0)
			},
			{
				Name="Left Hip",
				Part0=R6parts.torso,Part1=R6parts.leftLeg,
				C0=cf(-1,-1,0,0,0,-1,0,1,0,1,0,0),
				C1=cf(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
			}
		}
		
		local refreshedjoints={}
		local refreshjointsI=nil
		refreshjointsI=function(part)
			tinsert(refreshedjoints,part)
			for i,v in pairs(joints) do
				local part0=v.Part0
				local part1=v.Part1
				if part1 and (part0==part) then
					cframes[part1]=cframes[part]*v.C0*v.C1:Inverse()
					if not tfind(refreshedjoints,part1) then
						refreshjointsI(part1)
					end
				elseif part0 and (part1==part) then
					cframes[part0]=cframes[part]*v.C1*v.C0:Inverse()
					if not tfind(refreshedjoints,part0) then
						refreshjointsI(part0)
					end
				end
			end
		end
		refreshjointsI(rootpart)
		tclear(refreshedjoints)
		
		local attachments={
			RightShoulderAttachment={R6parts.rightArm,cf(0,1,0,1,0,0,0,1,0,0,0,1)},
			RightGripAttachment={R6parts.rightArm,cf(0,-1,0,1,0,0,0,1,0,0,0,1)},
			LeftFootAttachment={R6parts.leftLeg,cf(0,-1,0,1,0,0,0,1,0,0,0,1)},
			LeftShoulderAttachment={R6parts.leftArm,cf(0,1,0,1,0,0,0,1,0,0,0,1)},
			LeftGripAttachment={R6parts.leftArm,cf(0,-1,0,1,0,0,0,1,0,0,0,1)},
			RootAttachment={rootpart,cf(0,0,0,1,0,0,0,1,0,0,0,1)},
			RightFootAttachment={R6parts.rightLeg,cf(0,-1,0,1,0,0,0,1,0,0,0,1)},
			NeckAttachment={R6parts.torso,cf(0,1,0,1,0,0,0,1,0,0,0,1)},
			BodyFrontAttachment={R6parts.torso,cf(0,0,-0.5,1,0,0,0,1,0,0,0,1)},
			BodyBackAttachment={R6parts.torso,cf(0,0,0.5,1,0,0,0,1,0,0,0,1)},
			LeftCollarAttachment={R6parts.torso,cf(-1,1,0,1,0,0,0,1,0,0,0,1)},
			RightCollarAttachment={R6parts.torso,cf(1,1,0,1,0,0,0,1,0,0,0,1)},
			WaistFrontAttachment={R6parts.torso,cf(0,-1,-0.5,1,0,0,0,1,0,0,0,1)},
			WaistCenterAttachment={R6parts.torso,cf(0,-1,0,1,0,0,0,1,0,0,0,1)},
			WaistBackAttachment={R6parts.torso,cf(0,-1,0.5,1,0,0,0,1,0,0,0,1)},
			HairAttachment={R6parts.head,cf(0,0.6,0,1,0,0,0,1,0,0,0,1)},
			HatAttachment={R6parts.head,cf(0,0.6,0,1,0,0,0,1,0,0,0,1)},
			FaceFrontAttachment={R6parts.head,cf(0,0,-0.6,1,0,0,0,1,0,0,0,1)},
			FaceCenterAttachment={R6parts.head,cf(0,0,0,1,0,0,0,1,0,0,0,1)}
		}

		local function getPart(name,blacklist)
			for i,v in pairs(cframes) do
				if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
					return i
				end
			end
			return nil
		end
		
		local function getJoint(name)
			for i,v in pairs(joints) do
				if v.Name==name then
					return v
				end
			end
			return {C0=cf_0,C1=cf_0}
		end
		
		local function getPartFromMesh(m,t,blacklist)
			if blacklist then
				for v,_ in pairs(cframes) do
					if v.m and (not tfind(blacklist,v)) and sfind(v.m,m) and sfind(v.t,t) then
						return v
					end
				end
			else
				for v,_ in pairs(cframes) do
					if v.m and sfind(v.m,m) and sfind(v.t,t) then
						return v
					end
				end
			end
			local p={m=m,t=t}
			cframes[p]=cfr
			local j={C0=cf_0,C1=cf_0,Part0=p}
			p.j=j
			return p
		end

		local function getPartJoint(p)
			if cframes[p] then
				local j=p.j
				if j then
					return j
				end
				for i,v in pairs(joints) do
					if v.Part0==p then
						return v
					end
				end
				for i,v in pairs(joints) do
					if v.Part1==p then
						return v
					end
				end
			end
			return nil
		end

		local function getAccWeldFromMesh(m,t)
			return getPartJoint(getPartFromMesh(m,t))
		end

		local raycastparams=rp()
		raycastparams.FilterType=e.RaycastFilterType.Blacklist
		raycastparams.RespectCanCollide=true
		local rayfilter={}
		local characters={}
		local function refreshrayfilter()
			tclear(rayfilter)
			for i,v in pairs(characters) do
				tinsert(rayfilter,v)
			end
			raycastparams.FilterDescendantsInstances=rayfilter
		end
		local flingtable={}
		local rootparts={}
		for i=1,#accessorylimbs do
			local v=accessorylimbs[i]
			v.p=getPart(v.Name)
		end
		local ondes=nil
		ondes=function(v)
			if v:IsA("Attachment") then
				local v1=attachments[v.Name]
				if v1 then
					local p=v.Parent
					if (p.Parent~=c) and p:IsDescendantOf(c) then
						local meshid,textureid=getMeshOfPart(p)
						if meshid then
							local found=false
							for i,_ in pairs(cframes) do
								if (meshid==i.m) and (textureid==i.t) then
									local p1=i.p
									if p1 and p1:IsDescendantOf(c) then
										if p1==p then
											found=true
											break
										end
									else
										found=true
										i.p=p
										break
									end
								else
									local j=i.j
									if j and sfind(meshid,i.m) and sfind(textureid,i.t) then
										i.m=meshid
										i.t=textureid
										i.l=p.Position
										i.p=p
										i.j=nil
										i.Name=p.Name
										j.C0=v.CFrame
										j.C1=v1[2]
										j.Part1=v1[1]
										tinsert(joints,j)
										found=true
										break
									end
								end
							end
							if not found then
								for i=1,#accessorylimbs do
									local l=accessorylimbs[i]
									if l.p and sfind(meshid,l.meshid) and sfind(textureid,l.textureid) then
										local t={Name=p.Name,l=p.Position,m=meshid,t=textureid,p=p}
										if placeholders then
											t.v=makeplaceholder(p)
										end
										cframes[t]=p.CFrame
										tinsert(joints,{Part0=t,Part1=l.p,C0=l.C0,C1=cf_0})
										l.p=nil
										found=true
										break
									end
								end
								if not found then
									local t={Name=p.Name,l=p.Position,m=meshid,t=textureid,p=p}
									if placeholders then
										t.v=makeplaceholder(p)
									end
									cframes[t]=v.CFrame
									tinsert(joints,{Part0=t,Part1=v1[1],C0=v.CFrame,C1=v1[2]})
								end
							end
						end
					end
				end
			end
		end
		
		local function onplayer(v)
			local lastc=nil
			local function oncharacter()
				local newc=v.Character
				if c and newc and (newc~=lastc) then
					lastc=newc
					characters[v]=newc
					refreshrayfilter()
					if v==lp then
						if discharscripts then
							newc.DescendantAdded:Connect(discharscripts)
							for i,v in pairs(newc:GetDescendants()) do
								if v:IsA("Script") then
									v.Disabled=true
								end
							end
						end
						local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
						if not (hrp and c and newc:IsDescendantOf(ws)) then return end
						c=newc
						local fi,fv=next(flingtable)
						if fi then
							for i,v in pairs(tclone(flingtable)) do
								if not c then
									return
								end
								local startpos=i.Position
								local stoptime=sine+3
								while true do
									twait()
									if sine>stoptime then
										break
									end
									if (startpos-i.Position).Magnitude>200 then
										break
									end
									local tcf=i.CFrame+i.Velocity*(sin(sine*15)+1)
									if novoid and (tcf.Y<novoid) then
										tcf=tcf+v3_010*(novoid-tcf.Y)
									end
									hrp.CFrame=tcf
									hrp.Velocity=i.Velocity*v3_101*75
									hrp.RotVelocity=flingvel
								end
								if v then
									v:Destroy()
								end
								flingtable[i]=nil
							end
							hrp.Velocity=v3_0
							hrp.RotVelocity=v3_0
							hrp.CFrame=cfr
							twait(0.26)
						end
						local startpos=pos+v3(mrandom(-32,32),0,mrandom(-32,32))
						local dir=nil
						local poscheck=true
						while poscheck do
							poscheck=false
							for i,v in pairs(rootparts) do
								local diff=(startpos-v.Position)*v3_101
								if diff.Magnitude<10 then
									poscheck=true
									dir=dir or (diff.Unit * 3)
									startpos=startpos+dir
								end
							end
							local diff=(startpos-pos)*v3_101
							if diff.Magnitude<10 then
								poscheck=true
								dir=dir or (diff.Unit * 3)
								startpos=startpos+dir
							end
						end
						startpos=cfr.Rotation+startpos
						primarypart=c.PrimaryPart or hrp
						hrp.CFrame=startpos
						hrp.Velocity=v3_0
						hrp.RotVelocity=v3_0
						twait(0.26)
						newc:BreakJoints()
						local cd=newc:GetDescendants()
						newc.DescendantAdded:Connect(ondes)
						for i=1,#cd do
							ondes(cd[i])
						end
					else
						local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
						if hrp and c and newc:IsDescendantOf(ws) then
							rootparts[v]=hrp
						end
					end
				end
			end
			v:GetPropertyChangedSignal("Character"):Connect(oncharacter)
			oncharacter()
		end
		local plrst=plrs:GetPlayers()
		for i=1,#plrst do onplayer(plrst[i]) end
		plrs.PlayerAdded:Connect(onplayer)
		plrs.PlayerRemoving:Connect(function(v)
			characters[v]=nil
			rootparts[v]=nil
		end)

		local mradN05=rad(-0.5)
		local KeyCode=e.KeyCode
		local enumMLC=e.MouseBehavior.LockCenter
		local enumMB2=e.UserInputType.MouseButton2
		local enumMLCP=e.MouseBehavior.LockCurrentPosition
		local enumMD=e.MouseBehavior.Default
		local enumMW=e.UserInputType.MouseWheel
		if uis.TouchEnabled then
			enumMB2=e.UserInputType.MouseButton1
		end

		local mouseBehavior=nil
		local lastMouseBehavior=uis.MouseBehavior
		uis:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
			if mouseBehavior and (uis.MouseBehavior~=mouseBehavior) then
				uis.MouseBehavior=mouseBehavior
			end
		end)

		local mode="default"
		local defaultmode={}
		local modes={default=defaultmode}

		local lerpsIdle=emptyfunction
		local lerpsWalk=emptyfunction
		local lerpsJump=emptyfunction
		local lerpsFall=emptyfunction

		local function addmode(key,mode)
			if (type(key)~="string") or (type(mode)~="table") then
				return
			end
			for i,v in pairs(mode) do
				if type(v)~="function" then
					mode[i]=nil
				end
			end
			if key=="default" then
				defaultmode=mode
				modes.default=mode
				lerpsIdle=mode.idle or emptyfunction
				lerpsWalk=mode.walk or emptyfunction
				lerpsJump=mode.jump or emptyfunction
				lerpsFall=mode.fall or emptyfunction
				if mode.modeEntered then
					mode.modeEntered()
				end
			elseif #key==1 then
				key=KeyCode[supper(ssub(key,1,1))]
				modes[key]=mode
			end
		end

		local keyW=KeyCode.W
		local Wpressed=uis:IsKeyDown(keyW)
		local keyA=KeyCode.A
		local Apressed=uis:IsKeyDown(keyA)
		local keyS=KeyCode.S
		local Spressed=uis:IsKeyDown(keyS)
		local keyD=KeyCode.D
		local Dpressed=uis:IsKeyDown(keyD)
		local keySpace=KeyCode.Space
		local spacePressed=uis:IsKeyDown(keySpace)

		local keyShift=KeyCode.LeftShift
		uis.InputBegan:Connect(function(a)
			if gs.MenuIsOpen or uis:GetFocusedTextBox() then
				return
			end
			a=a.KeyCode
			if a==keyW then
				Wpressed=true
			elseif a==keyA then
				Apressed=true
			elseif a==keyS then
				Spressed=true
			elseif a==keyD then
				Dpressed=true
			elseif a==keySpace then
				spacePressed=true
			elseif a==keyShift then
				shiftlock=allowshiftlock and not shiftlock
			elseif modes[a] then
				if modes[mode].modeLeft then
					modes[mode].modeLeft()
				end
				if mode==a then
					mode="default"
				else
					mode=a
				end
				local modet=modes[mode]
				lerpsIdle=modet.idle or defaultmode.idle or emptyfunction
				lerpsWalk=modet.walk or defaultmode.walk or emptyfunction
				lerpsJump=modet.jump or defaultmode.jump or emptyfunction
				lerpsFall=modet.fall or defaultmode.fall or emptyfunction
				if modes[mode].modeEntered then
					modes[mode].modeEntered()
				end
			end
		end)
		uis.InputEnded:Connect(function(a)
			a=a.KeyCode
			if a==keyW then
				Wpressed=false
			elseif a==keyA then
				Apressed=false
			elseif a==keyS then
				Spressed=false
			elseif a==keyD then
				Dpressed=false
			elseif a==keySpace then
				spacePressed=false
			end
		end)
		uis.InputChanged:Connect(function(a,b)
			if (not b) and (a.UserInputType==enumMW) then
				camoff=camoff+a.Position*v3_001*(0.75-camoff.Z/4)
				if camoff.Z>0 then
					camoff=camoff-camoff.Position
				end
				firstperson=camoff.Z==0
			end
		end)

		local function predictionfling(target)
			if not c then
				return twait() and false
			end
			if typeof(target)~="Instance" then 
				target=mouse.Target
				if not target then
					return twait() and false
				end
			end
			if target:IsA("Humanoid") or target:IsA("BasePart") then 
				target=target.Parent 
				if target:IsA("Accessory") then
					target=target.Parent
				end
			end
			if (not target:IsA("Model")) or (target==c) then
				return twait() and false
			end
			local targetpart=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart")
			if not (targetpart and targetpart:IsDescendantOf(ws)) then
				return twait() and false
			end
			if highlightflingtargets then
				local h=i("Highlight")
				h.Name=rs()
				h.Adornee=target
				h.FillColor=c3(1,0,0)
				h.OutlineColor=c3(1,0,0)
				h.FillTransparency=0.5
				h.OutlineTransparency=0
				h.Parent=i9
				flingtable[targetpart]=h
			else
				flingtable[targetpart]=false
			end
			twait()
			return true
		end

		if ctrlclicktp then
			ctrlclicktp=KeyCode.LeftControl
			local tpoff=v3_010*3
			if clickfling then
				mouse.Button1Down:Connect(function()
					if mouse.Target then
						if uis:IsKeyDown(ctrlclicktp) then
							pos=mouse.Hit.Position+tpoff
							cfr=cf(pos,pos+camoff.LookVector*v3_101)
							xzvel=v3_0
							Yvel=0
						else
							predictionfling()
						end
					end
				end)
			else
				mouse.Button1Down:Connect(function()
					if mouse.Target and uis:IsKeyDown(ctrlclicktp) then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					end
				end)
			end
		elseif clickfling then
			mouse.Button1Down:Connect(predictionfling)
		end

		local noYvelTime=1
		local lastsine=sine
		local con=nil
		local function mainFunction()
			if not c then 
				for i,v in pairs(cframes) do
					local p=i.v
					if p then
						p:Destroy()
					end
				end
				for i,v in pairs(flingtable) do
					if v then
						v:Destroy()
					end
				end
				mouseBehavior=nil
				uis.MouseBehavior=enumMD
				onnewcamera()
				local c=lp.Character
				if c then
					cam.CameraSubject=c:FindFirstChildOfClass("Humanoid")
				end
				return con and con:Disconnect() 
			end

			sine=osclock()
			local delta=sine-lastsine
			deltaTime=clamp(delta*10,0,1)
			lastsine=sine

			if shiftlock then
				if allowshiftlock then
					mouseBehavior=enumMLC
					local rotation=uis:GetMouseDelta()*mradN05
					local camoffpos=camoff.Position
					camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
				else
					shiftlock=false
				end
			elseif firstperson then
				mouseBehavior=enumMLC
				local rotation=uis:GetMouseDelta()*mradN05
				local camoffpos=camoff.Position
				camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			elseif uis:IsMouseButtonPressed(enumMB2) then
				mouseBehavior=enumMLCP
				local rotation=uis:GetMouseDelta()*mradN05
				local camoffpos=camoff.Position
				camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			else
				mouseBehavior=enumMD
			end
			if lastMouseBehavior~=mouseBehavior then
				lastMouseBehavior=mouseBehavior
				uis.MouseBehavior=mouseBehavior
			end

			local raycastresult=ws:Raycast(pos,v3_010*(fpdh-pos.Y),raycastparams)
			local onground=nil
			if raycastresult then
				raycastresult=raycastresult.Position
				onground=(pos.Y-raycastresult.Y)<3.01
				if onground then
					Yvel=0
					cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)*clamp(delta*20,0,1)
					if spacePressed then
						Yvel=jumpPower
					end
				else
					Yvel=Yvel-gravity*delta
					if pos.Y+Yvel*delta<raycastresult.Y then
						Yvel=0
						cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)
					end
				end
			else
				Yvel=0
				onground=false
			end
			xzvel=v3_0
			if Wpressed then
				xzvel=xzvel+(camoff.LookVector*v3_101).Unit
			end
			if Spressed then
				xzvel=xzvel-(camoff.LookVector*v3_101).Unit
			end
			if Apressed then
				xzvel=xzvel-(camoff.RightVector*v3_101).Unit
			end
			if Dpressed then
				xzvel=xzvel+(camoff.RightVector*v3_101).Unit
			end
			pos=cfr.Position
			if shiftlock or firstperson then
				if xzvel.Magnitude>0 then
					xzvel=xzvel.Unit*walkSpeed
				end
				cfr=cf(pos,pos+camoff.LookVector*v3_101)
			elseif xzvel.Magnitude>0 then
				xzvel=xzvel.Unit*walkSpeed
				cfr=cfr:Lerp(cf(pos,pos+xzvel),deltaTime)
			end
			cfr=cfr+(xzvel+(v3_010*Yvel))*delta
			pos=cfr.Position

			camcf=cf(pos,pos+camoff.LookVector)+camoff.LookVector*camoff.Z+v3_0150
			if shiftlock and not firstperson then
				camcf=camcf+camcf.RightVector*1.75
			end
			if cam then
				cam.CFrame=camcf
			end
			
			cframes[rootpart]=cfr
			
			if onground then
				if xzvel==v3_0 then
					lerpsIdle()
				else
					lerpsWalk()
				end
			elseif Yvel>0 then
				lerpsJump()
			else
				lerpsFall()
			end

			refreshjointsI(rootpart)
			tclear(refreshedjoints)

			if abs(Yvel)>1 then
				noYvelTime=0
			else
				noYvelTime=clamp(noYvelTime+delta*0.3,0,1)
				xzvel=xzvel*(1-noYvelTime)
			end

			local idlerv=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
			local idleoff=idlerv*0.001

			local claimpos=primarypart.Position
			local claimposY=claimpos.Y
			for i,v in pairs(cframes) do
				local part=i.p
				if part and (not part.Anchored) and part:IsDescendantOf(ws) then
					if part.ReceiveAge==0 then
						local placeholder=i.v
						if placeholder then
							placeholder.Parent=nil
						end
						if novoid and (v.Y<novoid) then
							v=v+v3_010*(novoid-v.Y)
						end
						local lastpos=i.l
						local vel=(v.Position-lastpos)/delta
						if vel.Magnitude>speedlimit then
							vel=vel.Unit*speedlimit
							v=v+(lastpos+vel*delta)-v.Position
						end
						i.l=v.Position
						if vel.Magnitude<0.15 then
							v=v+idleoff
						end
						local claimtime=i.c
						if claimtime then
							if sine-claimtime<retVelTime then
								part.Velocity=(claimpos-v.Position)*v3_101/getFallingTime(v.Y,claimposY,rGravity)+v3_net
							else
								part.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
							end
						else
							i.c=sine
							part.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
						end
						part.CFrame=v
						part.RotVelocity=idlerv
					else
						i.c=nil
						i.l=part.Position
						local placeholder=i.v
						if placeholder then
							placeholder.Parent=ws
							placeholder.CFrame=v
						end
					end
				else
					local placeholder=i.v
					if placeholder then
						placeholder.Parent=ws
						placeholder.CFrame=v
					end
				end
			end
		end

		sine=osclock()
		lastsine=sine
		con=heartbeat:Connect(mainFunction)
		mainFunction()
		
		local function refreshjoints(v) --use this on the main part if u have parts that
			refreshjointsI(v) --are connected with each other but arent connected to rootpart
			tclear(refreshedjoints)
		end
		
		local legcfR=cf(1,-1,0)
		local legcfL=cf(-1,-1,0)
		local raydir=v3_010*-2
		local function raycastlegs() --this returns 2 values: right leg raycast offset, left leg raycast offset
			local rY=ws:Raycast((cfr*legcfR).Position,raydir,raycastparams)
			local lY=ws:Raycast((cfr*legcfL).Position,raydir,raycastparams)
			return rY and (rY.Position.Y-(pos.Y-3)) or 0,lY and (lY.Position.Y-(pos.Y-3)) or 0
		end

		local function velbycfrvec() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
			local fw=cfr.LookVector*xzvel/walkSpeed
			local rt=cfr.RightVector*xzvel/walkSpeed
			return fw.X+fw.Z,rt.X+rt.Z
		end

		local lastvel=v3_0
		local velchg1=v3_0
		local function velchgbycfrvec() --this returns 2 values: forward/backwards velocity change, right/left velocity change
			velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
			lastvel=xzvel
			velchg1=velchg1:Lerp(v3_0,deltaTime/2)
			local fw=cfr.LookVector*velchg1/32
			local rt=cfr.RightVector*velchg1/32
			return fw.X+fw.Z,rt.X+rt.Z
		end

		local lastYvel=0
		local velYchg1=0
		local function velYchg() --this returns Y axis velocity change
			velYchg1=clamp(velYchg1+(lastYvel-Yvel),-50,50) --i recommend setting velYchg1 to 0 when u start using this function or it will look worse
			lastYvel=Yvel
			velYchg1=velYchg1-velYchg1*(deltaTime/2)
			return velYchg1
		end

		local function rotToMouse(alpha) --this rotates ur character towards your mouse hit position
			local mpos=mouse.Hit.Position
			cfr=cfr:Lerp(cf(pos,v3(mpos.X,pos.Y,mpos.Z)),alpha or deltaTime)
		end

		local function setWalkSpeed(n)
			if type(n)~="number" then
				n=16
			end
			walkSpeed=n
		end
		local function setJumpPower(n)
			if type(n)~="number" then
				n=50
			end
			jumpPower=n
		end
		local function setGravity(n)
			if type(n)~="number" then
				n=196.2
			end
			gravity=n
		end

		return {
			cframes=cframes,
			joints=joints,
			fling=predictionfling,
			predictionfling=predictionfling,
			refreshjoints=refreshjoints,
			raycastlegs=raycastlegs,
			velbycfrvec=velbycfrvec,
			velchgbycfrvec=velchgbycfrvec,
			velYchg=velYchg,
			addmode=addmode,
			getPart=getPart,
			getPartFromMesh=getPartFromMesh,
			getAccWeldFromMesh=getAccWeldFromMesh,
			getJoint=getJoint,
			getPartJoint=getPartJoint,
			rotToMouse=rotToMouse,
			setWalkSpeed=setWalkSpeed,
			setJumpPower=setJumpPower,
			setGravity=setGravity
		}
	end

	btn("creepy crawler",function()
		local t=reanimate()
		if type(t)~="table" then return end
		local getJoint=t.getJoint
		local rootJoint=getJoint("RootJoint")
		local rightShoulder=getJoint("Right Shoulder")
		local leftShoulder=getJoint("Left Shoulder")
		local rightHip=getJoint("Right Hip")
		local leftHip=getJoint("Left Hip")
		local neck=getJoint("Neck")

		t.setWalkSpeed(10)

		local euler=angles
		local function jumplerp()
			local sine=sine*60
			neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0,0,3.141592653589793),deltaTime) 
			rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.4,0) * euler(3.141592653589793,0,-3.141592653589793),deltaTime) 
			leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5,0.3) * euler(1.7453292519943295,0,-0.17453292519943295),deltaTime) 
			rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5,0.3) * euler(1.7453292519943295,0,0.17453292519943295),deltaTime) 
			leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5,0.8) * euler(1.3962634015954636,0,-0.17453292519943295),deltaTime) 
			rightHip.C0 = rightHip.C0:Lerp(cf(1,-1.5,0.8) * euler(1.3962634015954636,0,0.17453292519943295),deltaTime)
		end

		t.addmode("default",{
			idle=function()
				local sine=sine*60
				neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0.08726646259971647 * sin((sine + 20) * 0.05),0,3.141592653589793 + 0.3490658503988659 * sin((sine + -30) * 0.025)),deltaTime) 
				rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.5 + 0.1 * sin(sine * 0.05),0) * euler(3.141592653589793,0,-3.1590459461097367 + 0.05235987755982989 * sin(sine * 0.025)),deltaTime) 
				leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5,-0.1 * sin(sine * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
				rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5,-0.1 * sin(sine * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
				leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
				rightHip.C0 = rightHip.C0:Lerp(cf(1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
			end,
			walk=function()
				local sine=sine*60
				neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0.17453292519943295,0.03490658503988659 * sin((sine + 2.5) * 0.2),3.141592653589793 + -0.17453292519943295 * sin((sine + -10) * 0.2)),deltaTime) 
				rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.5,0) * euler(3.0543261909900767,0.08726646259971647 * sin((sine + 7.5) * 0.2),-3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
				leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5 + 0.5 * sin((sine + 10) * 0.2),0.3 + 0.2 * sin((sine + -10) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin((sine + 15) * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
				rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.3 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
				leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.5 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
				rightHip.C0 = rightHip.C0:Lerp(cf(1,-1.5 + 0.5 * sin((sine + 10) * 0.2),0.5 + 0.2 * sin((sine + -7.5) * 0.2)) * euler(1.6580627893946132 + -0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
			end,
			jump=jumplerp,
			fall=jumplerp
		})
	end)
		
	btn("nameless animations V8", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local raycastlegs=t.raycastlegs
		local velbycfrvec=t.velbycfrvec
		local addmode=t.addmode
		local getJoint=t.getJoint
		local velYchg=t.velYchg
		local setWalkSpeed=t.setWalkSpeed
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")
		
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()

				local Ychg=velYchg()/20
							
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.1*sin((sine - 1)*1.3),0.05 * sin((sine-0.3)*1.3))*angles(0.5235987755982988+0.08726646259971647*sin(sine*1),-1.4835298641951802+0.10471975511965978*sin(sine*1.3),0.5235987755982988),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5+0.1*sin((sine - 1)*1.3),0.05 * sin((sine-0.3)*1.3))*angles(0.5235987755982988+0.08726646259971647*sin(sine*1),1.4835298641951802-0.10471975511965978*sin(sine*1.3),-0.5235987755982988),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.09-0.1*sin(sine*1.3)+lY-Ychg,lY*-0.5)*angles(-0.026179938779914945*sin(sine*1.3),-1.3962634015954636,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1.09-0.1*sin(sine*1.3)+rY-Ychg,rY*-0.5)*angles(-0.026179938779914945*sin(sine*1.3),1.3962634015954636,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.09+0.1*sin(sine*1.3) + Ychg,0.025 * sin(sine*1.3))*angles(-1.5707963267948966+0.026179938779914945*sin(sine*1.3),0,3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.53588974175501-0.026179938779914945*sin((sine+1)*1.3),0.05235987755982989*sin((sine-0.6)*0.65),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,1,30,5,0,1,0.5,0.1,-1,1.3,-85,6,0,1.3,0,0.05,-0.3,1.3,30,0,0,1,RightArm,1,0,0,1,30,5,0,1,0.5,0.1,-1,1.3,85,-6,0,1.3,0,0.05,-0.3,1.3,-30,0,0,1,LeftLeg,-1,0,0,1,-0,-1.5,0,1.3,-1.09,-0.1,0,1.3,-80,0,0,1,0,0,0,1,0,0,0,1,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,-0.0002722442150115967,0,0,1,0,0,0,1,RightLeg,1,0,0,1,0,-1.5,0,1.3,-1.09,-0.1,0,1.3,80,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,1.5,0,1.3,0.09,0.1,0,1.3,-0,0,0,1,0,0.025,0,1.3,180,0,0,1,Head,0,0,0,1,-88,-1.5,1,1.3,1,0,0,1,-0,3,-0.6,0.65,0,0,0,1,180,0,0,1
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()

				local rY, lY = raycastlegs()

				local Ychg=velYchg()/20

				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-0.7853981633974483*sin((sine+0.07)*8)*Vfw,-1.5707963267948966+0.5235987755982988*sin((sine+0.15)*8),0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0.7853981633974483*sin((sine+0.07)*8)*Vfw,1.5707963267948966+0.5235987755982988*sin((sine+0.15)*8),0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.3*sin((sine - 0.15)*8)+rY-Ychg,rY*-0.5)*angles(1.5707963267948966-0.9599310885968813*sin(sine*8)*Vfw,1.5707963267948966-0.7853981633974483*sin(sine*8)*Vrt,-1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 0.15)*8)+lY-Ychg,lY*-0.5)*angles(1.5707963267948966+0.9599310885968813*sin(sine*8)*Vfw,-1.5707963267948966+0.7853981633974483*sin(sine*8)*Vrt,1.5707963267948966),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*16),0,3.141592653589793+0.08726646259971647*sin((sine+0.04)*8)-Vrt),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+0.1)*16) + Ychg,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,8,0,0,0,8,-0.25,0,0,8,0,0,0,8,-0.0002722442150115967,0,0,8,0,0,0,8,LeftArm,-1,0,0,8,-0,-45,0.07,8,0.5,0,0,8,-90,30,0.15,8,0,0,0,8,0,0,0,8,RightArm,1,0,0,8,0,45,0.07,8,0.5,0,0,8,90,30,0.15,8,0,0,0,8,0,0,0,8,RightLeg,1,0,0,8,90,-55,0,8,-1,0.3,-0.15,8,90,-45,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,55,0,8,-1,0.3,0.15,8,-90,45,0,8,0,0,0,8,90,0,0,8,Head,0,0,0,8,-90,5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0.04,8,Torso,0,0,0,8,-90,0,0,8,0,0.2,0.1,16,-0,0,0,8,0,0,0,8,180,0,0,8
			end,
			jump = function()
				velYchg()
				local Vfw, Vrt = velbycfrvec()
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end,
			fall = function()
				velYchg()
				local Vfw, Vrt = velbycfrvec()
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end
		})

		addmode("q", {
			idle = function()
				velYchg()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -2.45 - 0.05 * sin(sine * 2), 0) * angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
			end
		})
		addmode("e", {
			idle = function()
				velYchg()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
				--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
			end
		})
		addmode("r", {
			idle = function()
				local Ychg=velYchg()/20
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2)-Ychg, 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2)+Ychg, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2)-Ychg, 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
			end
		})
		addmode("t", {
			idle = function()
				local Ychg=velYchg()/20
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4), Ychg, 0) * angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4)-Ychg, 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4)-Ychg, 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
			end
		})
		addmode("y", {
			idle = function()
				local Ychg=velYchg()/20
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2)-Ychg, 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2)-Ychg, 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2) + Ychg, 0) * angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767), deltaTime) 
				--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
			end
		})
		addmode("u", {
			idle = function()
				velYchg()
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.75 + 0.25 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
			end
		})
		addmode("i", {
			idle = function()
				local Ychg=velYchg()/20
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5)-Ychg, -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9)+Ychg, 0) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5)-Ychg, -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
			end,
		})
		addmode("o", {
			idle = function()
				local Ychg=velYchg()/20
				local rY, lY = raycastlegs()

				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY-Ychg, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, Ychg, 0.09 * sin(sine * 2)) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY-Ychg, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
			end,
			walk = function()
				local Ychg=velYchg()/20
				local Vfw, Vrt = velbycfrvec()

				local rY, lY = raycastlegs()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY-Ychg, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin((sine + 0.1) * 16)+Ychg, 0) * angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY-Ychg, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
			end
		})
		addmode("p", {
			idle = function()
				local Ychg=velYchg()/20
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1-Ychg, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1-Ychg, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, Ychg, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
			end
		})
		addmode("f", {
			modeEntered = function()
				setWalkSpeed(25)
			end,
			idle = function()
				velYchg()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end,
			walk = function()
				velYchg()
				local Vfw, Vrt = velbycfrvec()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - Vrt * 0.2), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end,
			modeLeft = function()
				setWalkSpeed(16)
			end,
		})
		addmode("g", {
			idle = function()
				local Ychg=velYchg()/20
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8), Ychg, 0) * angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8)-Ychg, 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8)-Ychg, 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
				--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
			end
		})
		addmode("h", {
			idle = function()
				local Ychg=velYchg()/20
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8)-Ychg, 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16)+Ychg, 0) * angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8)-Ychg, 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
			end
		})
		addmode("j", {
			idle = function()
				local Ychg=velYchg()/20
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 4)+Ychg, 0.15 * sin(sine * 4)) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
			end
		})
		addmode("k", {
			idle = function()
				local Ychg=velYchg()/20
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12)-Ychg, -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12)-Ychg, -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12)+Ychg, 0) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
			end
		})
		local function idleL()
			local Ychg=velYchg()/20
			RightHip.C0=RightHip.C0:Lerp(cf(1,-0.9+0.2*sin((sine - 0.2)*16)-Ychg,0.25)*angles(0,0.7853981633974483,0.4363323129985824-1.1344640137963142*sin((sine-0.0875)*8)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0.15 * sin((sine-0.1)*8),0.54 * sin(sine*16)+Ychg,0)*angles(-1.5707963267948966,-0.08726646259971647*sin((sine-0.0785)*8),3.141592653589793-0.08726646259971647*sin((sine-0.0785)*8)),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.75+0.07*sin((sine - 0.0785)*8),1.3+0.1*sin((sine - 0.0875)*16),0)*angles(1.3962634015954636,2.356194490192345-0.06981317007977318*sin((sine-0.0785)*8),1.2217304763960306),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine-0.1)*16),0.12217304763960307*sin((sine-0.0785)*8),3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.9+0.2*sin((sine - 0.2)*16)-Ychg,0.25)*angles(0,-0.7853981633974483,-0.4363323129985824-1.1344640137963142*sin((sine-0.0875)*8)),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.45+0.05*sin((sine - 0.0875)*16),-0.2)*angles(2.0943951023931953+0.17453292519943295*sin((sine-0.0875)*16),-0.5235987755982988,1.5707963267948966+0.17453292519943295*sin((sine-0.0875)*16)),deltaTime) 
			--MW_animatorProgressSave: RightLeg,1,0,0,16,0,0,0,8,-0.9,0.2,-0.2,16,45,0,-0.0875,8,0.25,0,0,16,25,-65,-0.0875,8,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Torso,0,0.15,-0.1,8,-90,0,0,16,0,0.54,0,16,-0,-5,-0.0785,8,0,0,0,16,180,-5,-0.0785,8,RightArm,0.75,0.07,-0.0785,8,80,0,0,16,1.3,0.1,-0.0875,16,135,-4,-0.0785,8,0,0,0,16,70,0,0,16,Head,0,0,0,16,-90,5,-0.1,16,1,0,0,16,-0,7,-0.0785,8,0,0,0,16,180,0,0,16,LeftLeg,-1,0,0,16,0,0,0,8,-0.9,0.2,-0.2,16,-45,0,0,8,0.25,0,0,16,-25,-65,-0.0875,8,Bandana_Handle,3.9362930692732334e-09,0,0,2,0,0,0,2,0.3000001907348633,0,0,2,0,0,0,2,-0.6002722978591919,0,0,2,0,0,0,2,LeftArm,-1,0,0,16,120,10,-0.0875,16,0.45,0.05,-0.0875,16,-30,0,0,16,-0.2,0,0,16,90,10,-0.0875,16
		end
		addmode("l", {
			modeEntered = function()
				setWalkSpeed(10)
			end,
			idle = idleL,
			walk = idleL,
			modeLeft = function()
				setWalkSpeed(16)
			end
		})
	end)

	btn("nameless animations V7", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local raycastlegs=t.raycastlegs
		local velbycfrvec=t.velbycfrvec
		local velchgbycfrvec=t.velchgbycfrvec
		local addmode=t.addmode
		local getJoint=t.getJoint
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")

		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()

				local Cfw, Crt = velchgbycfrvec()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
				--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()

				local rY, lY = raycastlegs()

				local Cfw, Crt = velchgbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.2 + 0.2 * sin(sine * 16), Cfw * -3) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - Vfw * 0.15 - Cfw, 0.03490658503988659 * sin(sine * 8) + Vrt * 0.15 + Crt, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - Vrt * 0.1), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * Vfw + 0.4 * sin((sine + 10) * 8) * Vfw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*Vrt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*Vfw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * Vfw - 0.4 * sin((sine + 10) * 8) * Vfw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*Vrt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + Vfw * 0.15, -0.08726646259971647 * sin(sine * 8) + Vrt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - Vrt * 0.5), deltaTime)
				--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
			end,
			jump = function()
				local Vfw, Vrt = velbycfrvec()

				local Cfw, Crt = velchgbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.4835298641951802 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end,
			fall = function()
				local Vfw, Vrt = velbycfrvec()

				local Cfw, Crt = velchgbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.6580627893946132 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end
		})

		addmode("q", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -2.45 - 0.05 * sin(sine * 2), Cfw * -3) * angles(0.03490658503988659 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
			end
		})
		addmode("e", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.85 - 0.1 * sin((sine + 0.2) * 2), Cfw * -3) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
				--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
			end
		})
		addmode("r", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8) + Crt * 3, -0.1 + 0.2 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
			end
		})
		addmode("t", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4) + Crt, -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
			end
		})
		addmode("y", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.6580627893946132 - Cfw, 0.08726646259971647 + Crt, 3.0543261909900767), deltaTime) 
				--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
			end
		})
		addmode("u", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.75 + 0.25 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
			end
		})
		addmode("i", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), Cfw * -3) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9) - Cfw, -0.05235987755982989 * sin(sine * 4.5) + Crt, 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
			end,
		})
		addmode("o", {
			idle = function()
				local rY, lY = raycastlegs()

				local Cfw, Crt = velchgbycfrvec()

				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt, 0, 0.09 * sin(sine * 2) - Cfw * 3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()

				local rY, lY = raycastlegs()

				local Cfw, Crt = velchgbycfrvec()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
			end
		})
		addmode("p", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
				--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
			end
		})
		addmode("f", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()

				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2 - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793 - Vrt * 0.2), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end
		})
		addmode("g", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.3490658503988659 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
				--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
			end
		})
		addmode("h", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8) + Crt * 3, 0.2 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.2617993877991494 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
			end
		})
		addmode("j", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4) - Cfw * 3) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4) - Cfw, Crt, 3.6651914291880923), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
			end
		})
		addmode("k", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), Cfw * -3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12) - Cfw, 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6) + Crt, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
			end
		})
		addmode("l", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.15 + 0.4 * sin((sine - 0.5) * 10), Cfw * -3) * angles(-1.4835298641951802 - Cfw, 0.17453292519943295 * sin(sine * 5) + Crt, -3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
			end
		})

		addmode("x", {
			idle = function()
				local Cfw, Crt = velchgbycfrvec()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
			end,
			walk = function()
				local Cfw, Crt = velchgbycfrvec()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
			end
		})
	end)

	btn("nameless animations V6", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local raycastlegs=t.raycastlegs
		local velbycfrvec=t.velbycfrvec
		local addmode=t.addmode
		local getJoint=t.getJoint
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2), 0, 3.141592653589793), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
				--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
			end,
			walk = function()
				local fw, rt = velbycfrvec()

				local rY, lY = raycastlegs()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin(sine * 16), 0) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - fw * 0.15, 0.03490658503988659 * sin(sine * 8) + rt * 0.15, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - rt * 0.1), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * fw + 0.4 * sin((sine + 10) * 8) * fw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*rt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*fw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*fw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * fw - 0.4 * sin((sine + 10) * 8) * fw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*fw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*rt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + fw * 0.15, -0.08726646259971647 * sin(sine * 8) + rt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - rt * 0.5), deltaTime)
				--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
			end,
			jump = function()
				local fw, rt = velbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end,
			fall = function()
				local fw, rt = velbycfrvec()

				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
				--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
			end
		})

		addmode("q", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -2.45 - 0.05 * sin(sine * 2), 0) * angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
			end
		})
		addmode("e", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
				--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
			end
		})
		addmode("r", {
			idle = function()
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
				--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
			end
		})
		addmode("t", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4), 0, 0) * angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
			end
		})
		addmode("y", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767), deltaTime) 
				--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
			end
		})
		addmode("u", {
			idle = function()
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.75 + 0.25 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
				--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
			end
		})
		addmode("i", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), 0) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
			end,
		})
		addmode("o", {
			idle = function()
				local rY, lY = raycastlegs()

				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0.09 * sin(sine * 2)) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
			end,
			walk = function()
				local fw, rt = velbycfrvec()

				local rY, lY = raycastlegs()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - rt), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, 1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * fw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
			end
		})
		addmode("p", {
			idle = function()
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
				--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
			end
		})
		addmode("f", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end,
			walk = function()
				local fw, rt = velbycfrvec()

				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - fw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + rt * 0.2, -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + fw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - rt * 0.2, -2.9670597283903604), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - fw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - rt * 0.2), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
				--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
			end
		})
		addmode("g", {
			idle = function()
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8), 0, 0) * angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
				--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
			end
		})
		addmode("h", {
			idle = function()
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
				--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
			end
		})
		addmode("j", {
			idle = function()
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4)) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
			end
		})
		addmode("k", {
			idle = function()
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), 0) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
				--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
			end
		})
		addmode("l", {
			idle = function()
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.15 + 0.4 * sin((sine - 0.5) * 10), 0) * angles(-1.4835298641951802, 0.17453292519943295 * sin(sine * 5), -3.141592653589793), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
			end
		})
	end)

	btn("goofy trolus (goofy)", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local velbycfrvec=t.velbycfrvec
		local raycastlegs=t.raycastlegs
		local getJoint=t.getJoint
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")
		t.addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()

				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), 1.5707963267948966 - 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), -1.5707963267948966 + 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + rY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), 1.6580627893946132, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin((sine + 1) * 8), 0) * angles(-1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 0, 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), -1.6580627893946132, 1.5707963267948966), deltaTime) 
				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 - 0.8726646259971648 * sin((sine + 0.25) * 4), 0, 3.141592653589793), deltaTime) 
				--RightArm,1,0,0,4,0,40,0.5,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,-0,40,0.5,4,0.5,0,0,4,-90,20,0,4,0,0,0,4,0,0,0,4,RightLeg,1,0,0,4,90,-60,0,4,-1,0,0,4,95,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,40,0,4,-0.2,0.2,1,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-60,0,4,-1,0,0,4,-95,0,0,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-90,-50,0.25,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4
			end,
			walk = function()
				local fw, rt = velbycfrvec()

				Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.5235987755982988 * sin((sine + 0.45) * 8), 0, 3.141592653589793), deltaTime) 
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.0943951023931953 - 1.7453292519943295 * sin((sine - 0.1) * 4), 1.9198621771937625, -1.5707963267948966), deltaTime) 
				RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.25 + 0.5 * sin((sine - 0.125) * 8), 0) * angles(-1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0, 3.141592653589793), deltaTime) 
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 1 * sin(sine * 4), 0) * angles(1.5707963267948966 - 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, -1.5707963267948966 - 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, 1.5707963267948966), deltaTime) 
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 1 * sin(sine * 4), 0) * angles(1.5707963267948966 + 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, 1.5707963267948966 + 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, -1.5707963267948966), deltaTime) 
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.0943951023931953 + 1.7453292519943295 * sin((sine - 0.1) * 4), -1.7453292519943295, 1.5707963267948966), deltaTime) 
				--Head,0,0,0,4,-90,30,0.45,8,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4,RightArm,1,0,0,4,120,-100,-0.1,4,0.5,0,0,4,110,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,10,0,8,0.25,0.5,-0.125,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-70,-0.15,4,-1,-1,0,4,-90,-35,-0.15,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,70,-0.15,4,-1,1,0,4,90,35,-0.15,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,120,100,-0.1,4,0.5,0,0,4,-100,0,0,4,0,0,0,4,90,0,0,4
			end
		})
	end)

	btn("good cop bad cop animations", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local addmode=t.addmode
		local getJoint=t.getJoint
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")
		t.setWalkSpeed(20)

		local ROOTC0 = angles(rad(-90), 0, rad(180))
		local NECKC0 = cf(0, 1, 0) * angles(rad(-90), 0, rad(180))
		local RIGHTSHOULDERC0 = cf(-0.5, 0, 0) * angles(0, rad(90), 0)
		local LEFTSHOULDERC0 = cf(0.5, 0, 0) * angles(0, rad(-90), 0)

		local Animation_Speed = 0

		--bruh yeah shackluster had a lot of math.rad(0) instead of just 0
		--and a lot of multyplying by angles(0, 0, 0)
		--and he had ArtificialHB
		--and he had a sine value increasing by 2/3 each frame
		--and a lot of variables with names saying other things
		--and he had both C0 and C1 lerps for the same animations
		local function C1lerps(iswalking)
			Animation_Speed = 0.45/deltaTime

			local sine = sine * 40
			if iswalking then
				RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0 * cf(0, 0, 0.05 * cos(sine / (2.4))), 2 * 1.25 / Animation_Speed)
				Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 * 1.25 / Animation_Speed)
				RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 0.875 - 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0) * angles(0, rad(90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
				LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 0.875 + 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
			else
				RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 / Animation_Speed)
				RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 1, 0) * angles(0, rad(90), 0), 0.7 / Animation_Speed)
				LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 1, 0) * angles(0, rad(-90), 0), 0.7 / Animation_Speed)

			end
		end

		local function jumplerps()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-20), 0, 0), 0.2 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(rad(-40), 0, rad(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(rad(-40), 0, rad(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, -0.3) * angles(0, rad(90), 0) * angles(rad(-5), 0, rad(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, -0.3) * angles(0, rad(-90), 0) * angles(rad(-5), 0, rad(20)), 0.2 / Animation_Speed)
		end
		local function falllerps()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(20), 0, 0), 0.2 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(0, 0, rad(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(0, 0, rad(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(90), 0) * angles(0, 0, rad(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(10)), 0.2 / Animation_Speed)
		end

		addmode("default", {
			idle = function()
				local sine = sine * 40
				C1lerps()

				RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0.05 * cos(sine / 12), 0, 0 + 0.05 * sin(sine / 12)), 0.15 / Animation_Speed)
				Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(15 - 2.5 * sin(sine / 12)), 0, rad(-25)), 1 / Animation_Speed)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5, 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5, 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = RightHip.C0:Lerp(cf(1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(-85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
			end,
			walk = function()
				local sine = sine * 40
				C1lerps(true)

				RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
				Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
			end,
			jump = jumplerps,
			fall = falllerps
		})
		addmode("f", {
			idle = function()
				local sine = sine * 40
				C1lerps()

				RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, 0 + 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-5 - 2.5 * cos(sine / 12)), 0, rad(25)), 1 / Animation_Speed)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / 12), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / 12), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(80), 0), 1 / Animation_Speed)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-80), 0), 1 / Animation_Speed)
			end,
			walk = function()
				local sine = sine * 40
				C1lerps(true)

				RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
				Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
				RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / (2.4)), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / (2.4)), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
				LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
			end,
			jump = jumplerps,
			fall = falllerps
		})
	end)
	lbl("original by shackluster")
	lbl("the classics never die")

	btn("metamorphosis vibe", function()
		local t=reanimate()
		if type(t)~="table" then return end
		local addmode=t.addmode
		local getJoint=t.getJoint
		local velbycfrvec=t.velbycfrvec
		local RootJoint=getJoint("RootJoint")
		local RightShoulder=getJoint("Right Shoulder")
		local LeftShoulder=getJoint("Left Shoulder")
		local RightHip=getJoint("Right Hip")
		local LeftHip=getJoint("Left Hip")
		local Neck=getJoint("Neck")
		t.setWalkSpeed(4.5)

		addmode("default",{
			idle=function()
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.7453292519943295-0.08726646259971647*sin(sine*8),-0.12217304763960307*sin((sine+0.2)*4),2.8797932657906435+0.2007128639793479*sin((sine+0.15)*4)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.1*sin(sine*4),0)*angles(1.5707963267948966,1.5707963267948966+0.17453292519943295*sin(sine*4),-1.5707963267948966),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(2.530727415391778+0.20943951023931956*sin((sine+0.4)*8),1.5707963267948966-0.4363323129985824*sin((sine+0.2)*4),-1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.0471975511965976,-1.2217304763960306+0.08726646259971647*sin((sine+0.2)*4),1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.1*sin(sine*4),0)*angles(1.5707963267948966,-1.5707963267948966+0.17453292519943295*sin(sine*4),1.5707963267948966),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(-0.1 * sin(sine*4),0,0)*angles(-1.5707963267948966,0.08726646259971647*sin(sine*4),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-100,-5,0,8,1,0,0,4,-0,-7,0.2,4,0,0,0,4,165,11.5,0.15,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.1,0,4,90,10,0,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,145,12,0.4,8,0.3,0,0,4,90,-25,0.2,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,60,0,0,4,0.5,0,0,4,-70,5,0.2,4,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.1,0,4,-90,10,0,4,0,0,0,4,90,0,0,4,Torso,0,-0.1,0,4,-90,0,0,4,0,0,0,4,-0,5,0,4,0,0,0,4,180,0,0,4
			end,
			walk=function()
				local fw,rt=velbycfrvec()

				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine-0.1)*8),0.3490658503988659*sin((sine-0.07)*4),3.141592653589793-0.4363323129985824*sin((sine-0.4)*4)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.3*sin((sine + 0.3)*4),0)*angles(1.5707963267948966,1.5707963267948966+0.6981317007977318*sin(sine*4)*rt,-1.5707963267948966+0.6981317007977318*sin(sine*4)*fw),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.5235987755982988*sin((sine+0.2)*4),1.5707963267948966-0.3490658503988659*sin(sine*4),0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.5235987755982988*sin((sine+0.2)*4),-1.5707963267948966-0.3490658503988659*sin(sine*4),0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin((sine + 0.3)*4),0)*angles(1.5707963267948966,-1.5707963267948966-0.6981317007977318*sin(sine*4)*rt,1.5707963267948966+0.6981317007977318*sin(sine*4)*fw),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.05+0.2*sin((sine + 0.15)*8),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-90,5,-0.1,8,1,0,0,4,-0,20,-0.07,4,0,0,0,4,180,-25,-0.4,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.3,0.3,4,90,40,0,4,0,0,0,4,-90,40,0,4,RightArm,1,0,0,4,0,-30,0.2,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,0,30,0.2,4,0.5,0,0,4,-90,-20,0,4,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.3,0.3,4,-90,-40,0,4,0,0,0,4,90,40,0,4,Torso,0,0,0,4,-90,0,0,4,0.05,0.2,0.15,8,-0,0,0,4,0,0,0,4,180,0,0,4
			end
		})
	end)

	lbl("INTERWORLD - METAMORPHOSIS")
	lbl("was listening to ^^ and animating")

	btn("empty reanimate (no animations)", reanimate)
	btn("stop current script",stopreanimate).TextColor3=c3(0.75,0,0)

	lbl("SETTINGS (REANIMATE TO APPLY)")

	local function swtc(txt,options,onchanged)
		local current=0
		local swtcbtn=nil
		local function btnpressed()
			current=current+1
			if current>#options then
				current=1
			end
			local option=options[current]
			swtcbtn.Text=txt..": "..option.text
			onchanged(option.value)
		end
		swtcbtn=btn("change",btnpressed)
		btnpressed()
		return swtcbtn
	end

	swtc("client sided placeholders",{
		{value=true,text="yes"},
		{value=false,text="no"}
	},function(v)
		placeholders=v
	end)

	swtc("highlight fling targets",{
		{value=true,text="yes"},
		{value=false,text="no"}
	},function(v)
		highlightflingtargets=v
	end)

	swtc("allow shiftlock",{
		{value=true,text="yes"},
		{value=false,text="no"}
	},function(v)
		allowshiftlock=v
	end)

	swtc("ctrl click tp",{
		{value=true,text="yes"},
		{value=false,text="no"}
	},function(v)
		ctrltp=v
	end)

	swtc("click fling",{
		{value=true,text="yes"},
		{value=false,text="no"}
	},function(v)
		clickfling=v
	end)

	local disguiscripts=nil
	swtc("new gui scripts",{
		{value=true,text="disable"},
		{value=false,text="keep"}
	},function(v)
		disguiscripts=v
	end)
	pg.DescendantAdded:Connect(function(v)
		if c and disguiscripts and v:IsA("Script") then --mind Enum.RunContext.Client
			v.Disabled=true 
		end
	end)

	swtc("new character scripts",{
		{value=function(v)
			if v:IsA("Script") then --mind Enum.RunContext.Client
				v.Disabled=true
			end
		end,text="disable"},
		{value=false,text="keep"}
	},function(v)
		discharscripts=v
	end)

	local iscg,_=pcall(function()
		i9.Parent=game:FindFirstChildOfClass("CoreGui")
	end)
	if not iscg then
		i6.Text="PLAYERGUI MODE"
		i9.Parent=pg
		twait(3)
		i6.Text=guiTheme.guiTitle
	end
end
pcall(setfenv,noglobals,{})
noglobals()