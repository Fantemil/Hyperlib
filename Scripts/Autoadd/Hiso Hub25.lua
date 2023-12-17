--[[
	I comit oof

    IDs of accessories:
    
	-for arms 11159410305,11263254795 or 14255556501,14255554762
	
	-for legs 14768693948,14768701869 or 11159483910,12652786974
	
	-for torso 14255528083 or 13421786478 or 14768678294
	
	or anything else that covers ur torso. examples:
    13423624885,11502853991,14053485259,13779879140,14443132226
    can be same stuff but different colors
    
    there are 32 ways to make a rig with the ids above
]]

--findfirstchildofclass faster than getservice
local plrs=game:FindFirstChildOfClass("Players")
local rs=game:FindFirstChildOfClass("RunService")
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local gs=game:FindFirstChildOfClass("GuiService")
local cg=game:FindFirstChildOfClass("CoreGui")
local lp=plrs.LocalPlayer
local pg=lp:FindFirstChildOfClass("PlayerGui")
local mouse=lp:GetMouse()
local stepped=rs.Stepped
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped

local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local sbyte=string.byte
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

--the loops dont have to read globals to get the "pairs" or "next" variable every time
local pairs=pairs 
local next=next

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new
local e=Enum 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_net=v3_010*25.01

local function makepcall(f)
	if type(f)=="function" then
		return function(...)
			local a={...}
			local r=nil
			pcall(function()
				r={f(tunpack(a))}
			end)
			return tunpack(r or {})
		end
	end
	return function() end
end
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
local function dfind(t,v)
	for i,v1 in pairs(t) do
		if v1==v then
			return i
		end
	end
	return nil
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
local function loopgp(...)
	while true do
		local r=gp(...)
		if r then
			return r
		end
		stepped:Wait()
	end
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
local sft=1/60
local function getFallingTime(startY,destY,gravity)
	local velY=25.01
	local currY=startY
	local fallingTime=0
	while (currY>destY) or (velY>0) do
		fallingTime=fallingTime+sft
		velY=velY-sft*gravity
		currY=currY+velY*sft
	end
	return fallingTime
end
local isClientInstance=makepcall(function(i)
	return ssub(i:GetDebugId(),1,1)=="0"
end)
local isServerInstance=function(i)
	return not isClientInstance(i)
end
local shp=(((type(getfenv)=="function") and getfenv()) or {}).sethiddenproperty

local guiTheme={
	guiTitle="Hiso hub",
	windowTopColor=c3(0,0,0),
	windowBottomColor=c3(0,0,0),
	windowMinimizedSize=u2(0,290,0,22),
	windowRegularSize=u2(0,290,0,520),
	buttonsTextColor=c3(1,1,1),
	labelsTextColor=c3(0.5,0.5,0.5),
	listTopColor=c3(0,0,0),
	listBottomColor=c3(0.5,0,0)
}

local i1=i("Frame") 
local i2=i("Frame") 
local i3=i("ScrollingFrame") 
local i4=i("UIListLayout") 
local i5=i("UIGradient") 
local i6=i("TextLabel") 
local i7=i("TextButton") 
local i8=i("UIGradient") 
local i9=i("ScreenGui") 
local i10=i("TextButton")

i1.AnchorPoint=v2(0.5,0) 
i1.BackgroundColor3=c3(1,0,0) 
i1.BorderSizePixel=0 
i1.Position=u2(0.5,0,0.5,-150) 
i1.Size=guiTheme.windowRegularSize 
i1.Name=rs() 
i1.Parent=i9 
i2.BackgroundColor3=c3(1,0,0) 
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
i5.Color=cs({[1]=csk(0,guiTheme.listTopColor),[2]=csk(1,guiTheme.listBottomColor)}) 
i5.Rotation=90 
i6.Font=e.Font.SourceSansBold
i6.FontSize=e.FontSize.Size18 
i6.Text=guiTheme.guiTitle 
i6.TextColor3=c3(1,1,1) 
i6.TextSize=16 
i6.BackgroundTransparency=1 
i6.BorderSizePixel=0 
i6.Position=u2(0,1,0,1) 
i6.Size=u2(1,-2,0,20) 
i6.Name=rs() 
i6.Parent=i1 
i7.AnchorPoint=v2(1,0) 
i7.BackgroundTransparency=1 
i7.Position=u2(1,0,0,0) 
i7.Size=u2(0,40,1,0) 
i7.Name=rs() 
i7.Parent=i6 
i7.Font=e.Font.SourceSansBold 
i7.FontSize=e.FontSize.Size18 
i7.Text="=" 
i7.TextColor3=c3(1,1,1) 
i7.TextSize=16 
i8.Name=rs() 
i8.Parent=i1 
i8.Color=cs({[1]=csk(0,guiTheme.windowTopColor),[2]=csk(1,guiTheme.windowBottomColor)}) 
i8.Rotation=90 
i9.ZIndexBehavior=e.ZIndexBehavior.Sibling 
i9.IgnoreGuiInset=true 
i9.ResetOnSpawn=false 
i9.Name=rs() 
i10.AnchorPoint=v2(1,0) 
i10.BackgroundTransparency=1 
i10.Position=u2(0.13,0,0,0) 
i10.Size=u2(0,40,1,0) 
i10.Name=rs() 
i10.Parent=i6 
i10.Font=e.Font.SourceSansBold 
i10.FontSize=e.FontSize.Size18 
i10.RichText = true
i10.Text="<b>X</b>"
i10.TextColor3=c3(1,1,1) 
i10.TextSize=16

local stopreanimate=function() return nil end

local min=false
i7.MouseButton1Click:Connect(function()
	min = not min
	if min then
		i2.Visible=false 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0))}) 
		i1.Size=guiTheme.windowMinimizedSize 
	else
		i1.Size=guiTheme.windowRegularSize 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0))}) 
		i2.Visible=true 
	end
end)

i10.MouseButton1Click:Connect(function()
    i1:Destroy()
    i2:Destroy()
    i3:Destroy()
    i4:Destroy()
    i5:Destroy()
    i6:Destroy()
    i7:Destroy()
    i8:Destroy()
    i9:Destroy()
    stopreanimate()
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
	local i1=i("TextButton") 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Font=e.Font.SourceSans
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=guiTheme.buttonsTextColor 
	if f then 
		i1.MouseButton1Click:Connect(f) 
	end 
	i1.Parent=i3 
	return i1
end
local function lbl(txt)
	local i1=i("TextLabel") 
	i1.Font=e.Font.SourceSansBold
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=guiTheme.labelsTextColor 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Parent=i3 
	return i1
end

Draggable(i1)

lbl("By: hiso")
lbl("powered by patchma")

local allowshiftlock=nil
local ctrltp=nil
local simrad=nil
local placeholders=nil
local clickfling=nil
local highlightflingtargets=nil
local claimwait=nil

local stopreanimate=function() return nil end
local function reanimate()
	--[[
	    FDless reanimate by MyWorld
	    aka no client sided instances
	    "what else do i optimize here"
	]]

	local novoid = true --prevents parts from going under workspace.FallenPartsDestroyHeight if you control them
	local placeholders = placeholders --makes client sided accessories replacing the real ones when unavailable
	local speedlimit = 3000 --makes your parts move slower if the magnitude of their velocity is higher than this
	local retVelTime = 0.51 --time that claimed parts have velocity to reclaim in case u lose them
	local R15toR6 = true --adds fake r6 parts and joints for animations if your character is r15
	local walkSpeed = 16 --your walkspeed (can be changed at runtime)
	local jumpPower = 50 --your jump power (can be changed at runtime)
	local allowshiftlock = allowshiftlock --allows the user to use shiftlock (can be changed at runtime)
	local gravity = 196.2 --how fast the characters velocity decreases while falling (can be changed at runtime)
	local simrad = simrad --sets simulation radius to this with sethiddenproperty if its set to a number
	local ctrlclicktp = ctrltp --makes you teleport where u point ur mouse cursor at when click and hold ctrl down
	local clickfling = clickfling --makes you fling the person you clicked when its available to do so
	local flingvel = v3(15000,16000,15000) --the rotation velocity that ur character will have while flinging
	local highlightflingtargets = highlightflingtargets --highlights characters that are going to get flung

	local c=lp.Character
	if stopreanimate() or not (c and c:IsDescendantOf(ws)) then return end

	local hum=c:FindFirstChildOfClass("Humanoid")
	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or (hum and hum.RootPart) or timegp(c,"HumanoidRootPart","BasePart",0.5) or c:FindFirstChildWhichIsA("BasePart")
	if not rootpart then return end

	R15toR6=R15toR6 and hum and (hum.RigType==e.HumanoidRigType.R15)
	simrad = (type(simrad)=="number") and (type(shp)=="function") and simrad

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
	local function onnewcamera()
		refcam()
		if camcon0 then 
			camcon0:Disconnect()
			camcon0=nil
		end
		if not c then 
			if cam.CameraType==enumCamS then
				cam.CameraType=camt
			end
			return camcon1:Disconnect() 
		end
		camcon0=cam.Changed:Connect(function(p)
			if not c then
				camcon0:Disconnect()
				return camcon1:Disconnect()
			end
			if (p=="CFrame") and (cam.CFrame~=camcf) then
				cam.CFrame=camcf
			elseif (p=="CameraSubject") or (p=="CameraType") then
				local subj=cam.CameraSubject
				if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
					cam.CameraType = enumCamS
				end
			end
		end)
		local subj=cam.CameraSubject
		if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
			cam.CameraType=enumCamS
		end
		cam.CFrame=camcf
	end
	camcon1=ws:GetPropertyChangedSignal("CurrentCamera"):Connect(onnewcamera)
	onnewcamera()

	local rGravity=ws.Gravity
	ws:GetPropertyChangedSignal("Gravity"):Connect(function()
		rGravity=ws.Gravity
	end)

	local fpdh=ws.FallenPartsDestroyHeight
	novoid=novoid and (fpdh+1)

	local function getMeshOfPart(v)
		if typeof(v)=="Instance" then
			if v:IsA("MeshPart") then
				return v.MeshId, v.TextureID
			else
				v=v:FindFirstChildOfClass("SpecialMesh")
				if v then
					return v.MeshId, v.TextureId
				end
			end
		end
		return nil, nil
	end

	local joints={}
	local cframes={}
	local des=c:GetDescendants()
	for i=1,#des do
		local v=des[i]
		if v:IsA("JointInstance") then
			tinsert(joints,{
				Name=v.Name,
				C0=v.C0,
				C1=v.C1,
				Part0=v.Part0,
				Part1=v.Part1
			})
		elseif v:IsA("BasePart") then
			cframes[v]=v.CFrame
		end
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

	local function filterInstance(v)
		local ins=v
		if isClientInstance(v) then
			v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
		else
			local meshid,textureid=getMeshOfPart(v)
			if meshid and (meshid~="") and textureid and (textureid~="") and (v.Parent~=c) then
				if placeholders then
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid,placeholder=makeplaceholder(v)}
				else
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid}
				end
			else
				v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
			end
		end
		for i,v1 in pairs(tclone(cframes)) do
			if i==ins then
				cframes[ins]=nil
				cframes[v]=v1
			end
		end
		for i,v1 in pairs(joints) do
			if v1.Part0==ins then
				v1.Part0=v
			elseif v1.Part1==ins then
				v1.Part1=v
			end
		end
		if rootpart==ins then
			rootpart=v
		end
		return v
	end
	for i,v in pairs(joints) do
		v.Part0=filterInstance(v.Part0)
		v.Part1=filterInstance(v.Part1)
	end

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

	local refreshjointsinternal=nil
	refreshjointsinternal=function(part,refreshed)
		if not part then return end
		tinsert(refreshed,part)
		for i,v in pairs(joints) do
			local part0=v.Part0
			local part1=v.Part1
			if part1 and (part0==part) then
				cframes[part1]=cframes[part]*v.C0*v.C1:Inverse()
				if not tfind(refreshed,part1) then
					refreshjointsinternal(part1,refreshed)
				end
			elseif part0 and (part1==part) then
				cframes[part0]=cframes[part]*v.C1*v.C0:Inverse()
				if not tfind(refreshed,part0) then
					refreshjointsinternal(part0,refreshed)
				end
			end
		end
	end
	local function refreshjoints(v)
		refreshjointsinternal(v,{})
	end

	if R15toR6 then
		local R6parts={ 
			head={Name="Head",Anchored=true},
			torso={Name="Torso",Anchored=true},
			root={Name="HumanoidRootPart",Anchored=true},
			leftArm={Name="Left Arm",Anchored=true},
			rightArm={Name="Right Arm",Anchored=true},
			leftLeg={Name="Left Leg",Anchored=true},
			rightLeg={Name="Right Leg",Anchored=true}
		}
		for i,v in pairs(R6parts) do
			cframes[v]=cfr
		end
		tinsert(joints,{
			Name="Neck",
			Part0=R6parts.torso,Part1=R6parts.head,
			C0=cf(0,1,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,-0.5,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="RootJoint",
			Part0=R6parts.root,Part1=R6parts.torso,
			C0=cf(0,0,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="Right Shoulder",
			Part0=R6parts.torso,Part1=R6parts.rightArm,
			C0=cf(1,0.5,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(-0.5,0.5,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Shoulder",
			Part0=R6parts.torso,Part1=R6parts.leftArm,
			C0=cf(-1,0.5,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Name="Right Hip",
			Part0=R6parts.torso,Part1=R6parts.rightLeg,
			C0=cf(1,-1,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(0.5,1,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Hip" ,
			Part0=R6parts.torso,Part1=R6parts.leftLeg,
			C0=cf(-1,-1,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Part0=R6parts.root,Part1=rootpart,
			C0=cf_0,C1=cf_0
		})
		refreshjoints(rootpart)
		local function getpart(n)
			for i,_ in pairs(cframes) do
				if (i.Name==n) and not dfind(R6parts,i) then
					return i
				end
			end
			return nil
		end
		local function makejoint(p0, p1, p2)
			p1=getpart(p1)
			p2=getpart(p2)
			if not (p1 and p2) then return end
			for i,v in pairs(joints) do
				if (v.Part0==p1) and (v.Part1==p2) then
					joints[i]=nil
				elseif (v.Part0==p2) and (v.Part1==p1) then
					joints[i]=nil
				end
			end
			tinsert(joints,{
				Part0=p0,Part1=p1,
				C0=cf_0,
				C1=cframes[p1]:Inverse()*cframes[p0]
			})
		end
		makejoint(R6parts.head,"Head","UpperTorso")
		makejoint(R6parts.leftArm,"LeftUpperArm","UpperTorso")
		makejoint(R6parts.rightArm,"RightUpperArm","UpperTorso")
		makejoint(R6parts.leftLeg,"LeftUpperLeg","LowerTorso")
		makejoint(R6parts.rightLeg,"RightUpperLeg","LowerTorso")
		makejoint(R6parts.torso,"LowerTorso","HumanoidRootPart")
	end

	local function getPart(name,blacklist)
		for i,v in pairs(cframes) do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local function getPartFromMesh(meshid,textureid,blacklist)
		for v,_ in pairs(cframes) do
			if (type(v)=="table") and not (blacklist and tfind(blacklist,v)) then
				if v.meshid and sfind(v.meshid,meshid) and sfind(v.textureid,textureid) then
					return v
				end
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

	local function getPartJoint(handle)
		for i,v in pairs(joints) do
			if v.Part0==handle then
				return v
			end
		end
		for i,v in pairs(joints) do
			if v.Part1==handle then
				return v
			end
		end
		return nil
	end
	
	local function getAccWeldFromMesh(...)
		return getPartJoint(getPartFromMesh(...) or {}) or {C0=cf_0,C1=cf_0}
	end

	local accessorylimbs={	
		
		{meshid="4819720316",textureid="4819722776",C0=angles(0,0,rad(15)),Name="Torso"},
        {meshid="14768684979",textureid="",C0=angles(rad(0),rad(0),rad(-90)),Name="Left Arm"},
        {meshid="14768684979",textureid="",C0=angles(rad(0),rad(0),rad(90)),Name="Right Arm"},
        {meshid="11263221350",textureid="11263219250",C0=angles(rad(0),rad(0),rad(-90)),Name="Left Leg"},
        {meshid="11159370334",textureid="11159284657",C0=angles(rad(0),rad(0),rad(90)),Name="Right Leg"},
        
        {meshid="14255522247",textureid="14255543546",C0=angles(rad(0),rad(0),rad(-90)),Name="Left Leg"},
        {meshid="14255522247",textureid="14255543546",C0=angles(rad(0),rad(0),rad(90)),Name="Right Leg"},
      
      	{meshid="4819720316",textureid="4819722776",C0=angles(0,0,rad(15)),Name="Torso"},
		{meshid="14768666349",textureid="",C0=cf_0,Name="Torso"},
		{meshid="14241018198",textureid="",C0=cf_0,Name="Torso"},
		{meshid="13421774668",textureid="",C0=cf_0,Name="Torso"}
	}

	local alignblacklist={}
	for i=1,#accessorylimbs do
		local v=accessorylimbs[i]
		local p=getPart(v.Name)
		local h=getPartFromMesh(v.meshid,v.textureid,alignblacklist)
		local w=getPartJoint(h)
		if p and w then
			w.C0=v.C0
			w.Part0=h
			w.C1=cf_0
			w.Part1=p
			tinsert(alignblacklist,h)
		end
	end

	local raycastparams=RaycastParams.new()
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
	local cframes1={}
	local lastpositions={}
	local claimtimes={}
	local rootparts={}
	local ondes=nil
	ondes=function(v)
		local meshid1,textureid1=getMeshOfPart(v)
		if meshid1 then
			for i,v1 in pairs(cframes) do
				if type(i)=="table" and not dfind(cframes1,i) then 
					local meshid=i.meshid
					if meshid and (meshid1==meshid) and (textureid1==i.textureid) then
						cframes1[v]=i
						lastpositions[v]=v.Position
						break
					end
				end
			end
		elseif v:IsA("SpecialMesh") then
			ondes(v.Parent)
		end
	end
	local function onplayer(v)
		local lastc=nil
		local function oncharacter()
			local newc=v.Character
			if newc and (newc ~= lastc) then
				lastc=newc
				characters[v]=newc
				refreshrayfilter()
				local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
				if not (hrp and c and newc:IsDescendantOf(ws)) then return end
				if v==lp then
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
								dir=dir or diff.Unit
								startpos=startpos+dir
							end
						end
						local diff=(startpos-pos)*v3_101
						if diff.Magnitude<10 then
							poscheck=true
							dir=dir or diff.Unit
							startpos=startpos+dir
						end
					end
					startpos=cfr.Rotation+startpos
					primarypart=c.PrimaryPart or hrp
					hrp.CFrame=startpos
					hrp.Velocity=v3_0
					hrp.RotVelocity=v3_0
					if claimwait then
						twait(0.26)
					else
						lp.Character=nil
					end
					newc:BreakJoints()
					tclear(cframes1)
					tclear(claimtimes)
					tclear(lastpositions)
					local cd=newc:GetDescendants()
					for i=1,#cd do
						tspawn(ondes,cd[i])
					end
					newc.DescendantAdded:Connect(ondes)
				else
					rootparts[v]=hrp
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

	local mode="default"
	local defaultmode={}
	local modes={default=defaultmode}
	
	local function emptyfunction() end
	
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
				local p=i.placeholder
				if p then
					p:Destroy()
				end
			end
			for i,v in pairs(flingtable) do
				if v then
					v:Destroy()
				end
			end
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
				uis.MouseBehavior=enumMLC
				local rotation=uis:GetMouseDelta()*mradN05
				local camoffpos=camoff.Position
				camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			else
				shiftlock=false
			end
		elseif firstperson then
			uis.MouseBehavior=enumMLC
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		elseif uis:IsMouseButtonPressed(enumMB2) then
			uis.MouseBehavior=enumMLCP
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		else
			uis.MouseBehavior=enumMD
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

		cframes[rootpart]=cfr
		refreshjoints(rootpart)

		if abs(Yvel)>1 then
			noYvelTime=0
		else
			noYvelTime=clamp(noYvelTime+delta*0.3,0,1)
			xzvel=xzvel*(1-noYvelTime)
		end

		local idlerv=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
		local idleoff=idlerv*0.001

		for i,v in pairs(cframes) do
			local p=i.placeholder
			if p then
				if p.Parent~=ws then
					p.Parent=ws
				end
				p.CFrame=v
			end
		end
		local claimpos=primarypart.Position
		for i,v in pairs(cframes1) do
			if (not i.Anchored) and i:IsDescendantOf(ws) then
				if i.ReceiveAge==0 then
					local p=v.placeholder
					if p and p.Parent then
						p.Parent=nil
					end
					v=cframes[v]
					local lastpos=lastpositions[i]
					local vel=(v.Position-lastpos)/delta
					if vel.Magnitude>speedlimit then
						vel=vel.Unit*speedlimit
						v=v+(lastpos+vel*delta)-v.Position
					end
					lastpositions[i]=v.Position
					if vel.Magnitude<0.15 then
						v=v+idleoff
					end
					if novoid and (v.Y<novoid) then
						v=v+v3_010*(novoid-v.Y)
					end
					local claimtime=claimtimes[i]
					if claimtime then
						if sine-claimtime<retVelTime then
							i.Velocity=(claimpos-v.Position)*v3_101/getFallingTime(v.Y,claimpos.Y,rGravity)+v3_net
						else
							i.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
						end
					else
						claimtimes[i]=sine
						i.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
					end
					i.CFrame=v
					i.RotVelocity=idlerv
				else
					claimtimes[i]=nil
					lastpositions[i]=i.Position
				end
			end
		end

		if simrad then
			shp(lp,"SimulationRadius",simrad)
		end
	end

	sine=osclock()
	lastsine=sine
	con=heartbeat:Connect(mainFunction)
	mainFunction()

	stopreanimate=function()
		if c then
			c=nil
			return true
		else
			return false
		end
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

	local function lerp(number1,number2,alpha)
		return number1 + (number2-number1)*alpha
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
		if type(n) ~= "number" then
			n=16
		end
		walkSpeed=n
	end
	local function setJumpPower(n)
		if type(n) ~= "number" then
			n=50
		end
		jumpPower=n
	end
	local function setGravity(n)
		if type(n) ~= "number" then
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

lbl("Hiso's animations")

lbl("----====Obtainable items====----")

btn("jetpack", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(4481946048,4481947990)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)

	
	t.setWalkSpeed(20)

	addmode("default", {
		idle = function()
			t.setWalkSpeed(20)
			local rY, lY = raycastlegs()
			
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-0.5 * sin(sine*5),0.5)*angles(2.0943951023931953-0.3490658503988659*sin((sine+2)*5),-1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.5*sin(sine*5),-0.5)*angles(-0.3490658503988659*sin((sine+2)*5),1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,-0.5 * sin(sine*5),0.5)*angles(2.0943951023931953-0.3490658503988659*sin((sine+2)*5),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.5*sin(sine*5),-0.5)*angles(-0.3490658503988659*sin((sine+2)*5),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0.0902411937713623,-0.3959517478942871,-0.5338106155395508)*angles(0,0,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*5),0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+2)*5),0,3.141592653589793),deltaTime) 
			
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0.5)*angles(2.0943951023931953-0.2617993877991494*sin(sine*5),-1.5707963267948966,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0.0902411937713623,-0.3959517478942871,-0.5338106155395508)*angles(0,0,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,2+0.5*sin((sine + 1)*5),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0.5)*angles(2.0943951023931953-0.2617993877991494*sin(sine*5),1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 	
			
		end,

		jump = function()
			t.setJumpPower(300)
			local fw, rt = velbycfrvec()

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,1.2,0)*angles(-3.141592653589793,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5,-0.5)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.5)*angles(0,1.5707963267948966,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0.0902411937713623,-0.3959517478942871,-0.5338106155395508)*angles(0,0,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(0,1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5,0)*angles(-1.5707963267948966,0,3.141592653589793+6.283185307179586*sin(sine*2)),deltaTime) 

			
		end,
		fall = function()
			t.setJumpPower(300)
			local fw, rt = velbycfrvec()

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0.5)*angles(2.0943951023931953-0.2617993877991494*sin(sine*5),-1.5707963267948966,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0.0902411937713623,-0.3959517478942871,-0.5338106155395508)*angles(0,0,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,2+0.5*sin((sine + 1)*5),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0.5)*angles(2.0943951023931953-0.2617993877991494*sin(sine*5),1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime)  
			
		end
	})
end)

btn("Kenetic Staff", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(5548423017,5548423938)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
	t.setWalkSpeed(20)

	addmode("default", {
		idle = function()
			t.setWalkSpeed(20)
			local rY, lY = raycastlegs()

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*3),-0.2)*angles(-0.08726646259971647*sin((sine+4)*3),1.2217304763960306,0.17453292519943295),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*3),0)*angles(-1.7453292519943295+0.08726646259971647*sin((sine+4)*3),0,3.141592653589793),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.8726646259971648*sin(sine*100),0.8726646259971648*sin(sine*100),3.141592653589793+0.8726646259971648*sin(sine*100)),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.5,-5-0.5*sin(sine*1),-2)*angles(0.2617993877991494*sin(sine*1),0.2617993877991494*sin((sine+2)*1),0.5235987755982988*sin(sine*1)),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(-0.3490658503988659+0.3490658503988659*sin((sine+2)*3),1.5707963267948966+0.3490658503988659*sin(sine*3),0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*3),-0.2)*angles(-0.08726646259971647*sin((sine+4)*3),-1.3962634015954636,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(1.5707963267948966,-1.3962634015954636+0.17453292519943295*sin(sine*100),0),deltaTime) 

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 6)*-10),-0.5+0.5*sin((sine + 3)*-10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*100),0.3490658503988659*sin(sine*100),3.141592653589793+0.3490658503988659*sin(sine*100)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+2)*10),0.08726646259971647*sin((sine+1)*10),3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,0,-1.5)*angles(1.5707963267948966,-0.5235987755982988,1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 6)*10),-0.5+0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2,0.5 * sin((sine+2)*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2,0)*angles(0,1.5707963267948966,0),deltaTime)

		end
	})
end)

btn("Solar Eclipse", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local ring = getPartFromMesh(4481952601,4481952883)  
	local ring = getPartJoint(ring)
	t.setWalkSpeed(20)

	addmode("default", {
		idle = function()
			t.setWalkSpeed(20)
			local rY, lY = raycastlegs()

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1-0.1*sin(sine*1),-0.5)*angles(-0.08726646259971647*sin((sine+1)*2),0.8726646259971648,0.5235987755982988+0.08726646259971647*sin((sine+1)*2)),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(0,4,0)*angles(1.5707963267948966,0,62.83185307179586+12.566370614359172*sin(sine*1)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*2),0)*angles(-2.0943951023931953+0.08726646259971647*sin((sine+1)*2),0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5-0.1*sin(sine*1),0)*angles(-1.0471975511965976-0.08726646259971647*sin((sine+1)*2),-1.2217304763960306,-0.6981317007977318),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.8726646259971648,-0.6981317007977318),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1.5,-0.5)*angles(2.6179938779914944,0,-0.6981317007977318),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(0,4,0)*angles(1.5707963267948966,0,62.83185307179586+12.566370614359172*sin(sine*1)),deltaTime) 

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3,0)*angles(0.8726646259971648*sin(sine*10),-1.2217304763960306+0.17453292519943295*sin((sine+3)*10),0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*10),0)*angles(-2.0943951023931953+0.08726646259971647*sin((sine+1)*10),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,-0.5)*angles(3.141592653589793,0.3490658503988659,-0.6981317007977318),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 2)*10),-0.25+0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 2)*-10),-0.25+0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(0.027605533599853516+0.5*sin(sine*100),-3+0.5*sin(sine*100),-0.010878562927246094+0.5*sin(sine*100))*angles(-1.5707963267948966,0,12.566370614359172*sin(sine*1)),deltaTime) 

		end
	})

	addmode("q", {
		idle = function()
			t.setWalkSpeed(25)

			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.1 * sin(sine*2),0)*angles(0.08726646259971647*sin((sine+1)*2),0.5235987755982988,0.3490658503988659),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.2617993877991494*sin((sine+3)*100),0.2617993877991494*sin(sine*100),3.141592653589793+0.2617993877991494*sin(sine*100)),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1,-0.5)*angles(0,1.2217304763960306,0.5235987755982988+0.5235987755982988*sin((sine+1)*2)),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.1 * sin(sine*2),0)*angles(0.3490658503988659*sin((sine+1)*2),-0.8726646259971648,-1.2217304763960306),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(0,-0.6981317007977318,-0.17453292519943295*sin(sine*2)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin(sine*2),0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+1)*2),0.17453292519943295*sin((sine+1)*2),3.141592653589793),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(4 * sin(sine*1),-2,-0.010878562927246094)*angles(-1.5707963267948966,0,-12.566370614359172*sin(sine*-2)),deltaTime) 

		end,
        walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.2+0.1*sin(sine*2))*angles(0.5235987755982988*sin((sine+4)*2),-1.2217304763960306,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.6981317007977318,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.2,0)*angles(0.5235987755982988+0.17453292519943295*sin((sine+3)*-2),1.5707963267948966,-1.0471975511965976),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.5707963267948966,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,5+0.5*sin(sine*2),0)*angles(-2.792526803190927+0.17453292519943295*sin((sine+1)*2),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,0)*angles(0.6981317007977318,2.6179938779914944,2.2689280275926285),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(-3.5,1.2,1.5)*angles(0,0,1.5707963267948966),deltaTime) 

		end
	})
	
		addmode("e", {
		walk = function()
			t.setWalkSpeed(30)

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 1)*10),-0.2+0.5*sin((sine + 3)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 1)*10),0.5 * sin((sine+3)*10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin((sine+2)*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			ring.C0=ring.C0:Lerp(cf(0.027605533599853516+2*sin(sine*1),-2,-0.010878562927246094+2*sin(sine*1))*angles(-1.5707963267948966,0,12.566370614359172*sin(sine*1)),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966+0.08726646259971647*sin(sine*10),0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1.5,0)*angles(2.6179938779914944,0.5235987755982988,-0.6981317007977318),deltaTime) 

		end
	})
end)

lbl("----====Unobtainable hats====----")

btn("Wacky money man", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local gun = getPartFromMesh(1334562883,13345634296)
	local gun = getPartJoint(gun)  
	local circle = getPartFromMesh(11479499882,11490151548)
	local circle = getPartJoint(circle) 
	t.setWalkSpeed(25)
 
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.5*sin(sine*5),0)*angles(-0.3490658503988659*sin(sine*5),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,-6.283185307179586*sin(sine*1)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*5),0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*5),0,3.141592653589793-6.283185307179586*sin(sine*1)),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.5*sin(sine*5),0)*angles(-0.3490658503988659*sin(sine*5),1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.5707963267948966,-1.5707963267948966,0),deltaTime) 
			gun.C0=gun.C0:Lerp(cf(-1,-2,1.5)*angles(-1.5707963267948966,-2.0943951023931953,-1.5707963267948966),deltaTime)

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,-0.5)*angles(0.8726646259971648*sin(sine*8),1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5 * sin(sine*10),0)*angles(1.5707963267948966+0.3490658503988659*sin((sine+3)*10),1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,-0.5)*angles(0.8726646259971648*sin(sine*-8),-1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5 * sin(sine*10),0)*angles(1.5707963267948966+0.3490658503988659*sin((sine+3)*10),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+3)*8),0,3.141592653589793),deltaTime) 

		end
	})
end)

btn("Milk man dan", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local milk = getPartFromMesh(11600404564,11600404465)
	local milk = getPartJoint(milk)  
	t.setWalkSpeed(10)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5 * sin(sine*5),0)*angles(0.8726646259971648*sin((sine+3)*5),1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1-0.5*sin(sine*5),0)*angles(-0.2617993877991494-0.3490658503988659*sin((sine+2)*5),1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5 * sin(sine*5),0)*angles(0.8726646259971648*sin((sine+3)*5),-1.5707963267948966,0),deltaTime)  
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*5),0)*angles(-1.3089969389957472+0.3490658503988659*sin((sine+2)*5),0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.1-0.5*sin(sine*5),0)*angles(-0.2617993877991494-0.3490658503988659*sin((sine+2)*5),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793+0.3490658503988659*sin(sine*5)),deltaTime) 
			milk.C0=milk.C0:Lerp(cf(0.05059051513671875,0.13383102416992188,-0.22777938842773438)*angles(0,0,0),deltaTime)

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1-0.5*sin(sine*5),0)*angles(-0.3490658503988659-0.8726646259971648*sin((sine+2)*10),1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*5),0)*angles(-1.2217304763960306+0.17453292519943295*sin((sine+2)*5),0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5 * sin(sine*5),0)*angles(1.2217304763960306*sin((sine+3)*5),-1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.1-0.5*sin(sine*5),0)*angles(-0.3490658503988659-0.8726646259971648*sin((sine+2)*-10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(1.5707963267948966,1.5707963267948966,0),deltaTime) 
			milk.C0=milk.C0:Lerp(cf(-2,-1.5,0.5)*angles(0,0,0),deltaTime) 
			
		end,
	})
		
	addmode("q", {
		idle = function()
			velYchg()

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1-0.5*sin(sine*5),0)*angles(-0.3490658503988659-0.3490658503988659*sin((sine+2)*5),1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*5),0)*angles(-1.2217304763960306+0.3490658503988659*sin((sine+2)*5),0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5 * sin(sine*5),0)*angles(1.2217304763960306*sin((sine+3)*5),-1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.1-0.5*sin(sine*5),0)*angles(-0.3490658503988659-0.3490658503988659*sin((sine+2)*5),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(1.5707963267948966,1.5707963267948966,0),deltaTime) 
			milk.C0=milk.C0:Lerp(cf(-2,-1.5,0.5)*angles(0,0,0),deltaTime) 

            
		end
	})
end)

lbl("----====Paid items====----")

btn("Pistol", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
    local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(11694171309,11694499896)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
 
	t.setWalkSpeed(30)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.8726646259971648,-0.8726646259971648,-0.4363323129985824),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5+0.3*sin(sine*2),0)*angles(-2.443460952792061+0.17453292519943295*sin((sine+2)*2),0.17453292519943295*sin(sine*2),3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.4-0.3*sin(sine*2),0)*angles(-0.3490658503988659*sin((sine+2)*2),1.2217304763960306-0.17453292519943295*sin(sine*2),0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5-0.3*sin(sine*2),-0.5)*angles(0.8726646259971648-0.2617993877991494*sin((sine+2)*2),-0.8726646259971648-0.17453292519943295*sin(sine*2),0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.5,1,-1.5)*angles(-1.5707963267948966,0.7853981633974483,-1.5707963267948966),deltaTime)  

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.3*sin((sine + 1)*10),-0.5 * sin(sine*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.4,-1.3)*angles(-1.0471975511965976,0,-3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+2)*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
        
		end
	})
	
	local attackAnimation=nil
mouse.Button1Down:Connect(function()
if attackAnimation then return end
attackAnimation=function()

RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.1 * sin((sine+2)*30),0)*angles(2.0943951023931953+0.17453292519943295*sin(sine*30),1.5707963267948966,0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.3+0.1*sin(sine*30),-1.5)*angles(-1.2217304763960306+0.17453292519943295*sin(sine*30),0,-3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.6,0)*angles(-0.8726646259971648,0.6981317007977318,0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.35,-1-0.1*sin(sine*16))*angles(0.5235987755982988,-1.0471975511965976,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.2,0.1 * sin(sine*16))*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 

end
task.wait(1) 
attackAnimation=function()
			
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.3,-1.5)*angles(-1.2217304763960306,0,-3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5+0.4*sin(sine*16),-0.5)*angles(2.443460952792061,0,0.8726646259971648),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.6,0)*angles(-0.8726646259971648,0.6981317007977318,0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.35,-1)*angles(0.5235987755982988,-1.0471975511965976,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.2,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 

end

task.wait(1) 

RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.3,-1.5)*angles(-1.2217304763960306,0,-3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5+0.4*sin(sine*16),-0.5)*angles(2.443460952792061,0,0.8726646259971648),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.6,0)*angles(-0.8726646259971648,0.6981317007977318,0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.35,-1)*angles(0.5235987755982988,-1.0471975511965976,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.2,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 


attackAnimation=nil 
end)

addmode("default",{
    idle=function()
    if attackAnimation then return attackAnimation() end
    
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*2),0.17453292519943295*sin(sine*2),3.141592653589793+0.17453292519943295*sin(sine*2)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin((sine + 1)*2),0.1 * sin(sine*2))*angles(-0.3490658503988659-0.17453292519943295*sin(sine*2),-0.7853981633974483-0.03490658503988659*sin(sine*2),0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.2 * sin((sine+1)*2),0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*2),0.03490658503988659*sin(sine*2),3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(-0.3490658503988659,1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin((sine + 1)*2),0.1 * sin(sine*2))*angles(-0.17453292519943295*sin(sine*2),1.4835298641951802-0.03490658503988659*sin(sine*2),0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,1,0)*angles(2.9670597283903604,0,-3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(1.0471975511965976,-0.8726646259971648,0.5235987755982988),deltaTime) 

end,

		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			t.setWalkSpeed(30)
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin((sine + 6)*10),-0.2-0.2*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+2)*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*10),0.17453292519943295*sin((sine+1)*10),3.141592653589793+0.17453292519943295*sin(sine*10)),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.2,-1.5)*angles(-1.2217304763960306,0,-3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.2*sin((sine + 6)*10),0.1 * sin((sine+2)*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin((sine + 6)*10),-0.2-0.2*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 

		end
    })
end)


btn("Raygun", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
    local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(12307619542,12317304776)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
 
	t.setWalkSpeed(30)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.8726646259971648,-0.8726646259971648,-0.4363323129985824),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5+0.3*sin(sine*2),0)*angles(-2.443460952792061+0.17453292519943295*sin((sine+2)*2),0.17453292519943295*sin(sine*2),3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.4-0.3*sin(sine*2),0)*angles(-0.3490658503988659*sin((sine+2)*2),1.2217304763960306-0.17453292519943295*sin(sine*2),0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5-0.3*sin(sine*2),-0.5)*angles(0.8726646259971648-0.2617993877991494*sin((sine+2)*2),-0.8726646259971648-0.17453292519943295*sin(sine*2),0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.5,1,-1.5)*angles(-1.5707963267948966,0.7853981633974483,-1.5707963267948966),deltaTime)  

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.3*sin((sine + 1)*10),-0.5 * sin(sine*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.4,-1.3)*angles(-1.0471975511965976,0,-3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+2)*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
        
		end
	})
	
	local attackAnimation=nil
mouse.Button1Down:Connect(function()
if attackAnimation then return end
attackAnimation=function()

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5 * sin(sine*5),-1)*angles(2.0943951023931953,0,-0.3490658503988659),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-1)*angles(2.0943951023931953,-0.6981317007977318,0.8726646259971648),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.5,2.5,-1)*angles(-1.5707963267948966,0,3.490658503988659),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 


end
task.wait(0.2) 
attackAnimation=function()
			
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,0,-0.3490658503988659),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-1+0.5*sin(sine*10))*angles(2.0943951023931953,-0.6981317007977318,0.8726646259971648),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0.5)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.5,2.5+0.5*sin(sine*-10),-1)*angles(-1.5707963267948966,0,3.490658503988659),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 

end

task.wait(0.3) 

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,0,-0.3490658503988659),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-1+0.5*sin(sine*10))*angles(2.0943951023931953,-0.6981317007977318,0.8726646259971648),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0.5)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.5,2.5+0.5*sin(sine*-10),-1)*angles(-1.5707963267948966,0,3.490658503988659),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 

attackAnimation=nil 
end)

addmode("default",{
    idle=function()
    if attackAnimation then return attackAnimation() end
    
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*2),0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+1)*2),0.08726646259971647*sin(sine*2),3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5-0.2*sin(sine*2),0)*angles(-0.6981317007977318-0.2617993877991494*sin((sine+1)*2),0.8726646259971648+0.08726646259971647*sin(sine*-2),0.5235987755982988),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*2),-0.5)*angles(0.7853981633974483-0.2617993877991494*sin((sine+1)*2),-0.8726646259971648-0.08726646259971647*sin(sine*2),0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(-0.5235987755982988,-0.8726646259971648,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.3,-1.2)*angles(-1.0471975511965976,0,-3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(0,1.5707963267948966,2.0943951023931953),deltaTime) 

end,

		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			t.setWalkSpeed(30)

            t.setWalkSpeed(16)
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.3*sin((sine + 1)*10),-0.5 * sin(sine*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.0943951023931953,1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,2.4,-1.3)*angles(-1.0471975511965976,0,-3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin(sine*10),-0.5+0.5*sin((sine + 2)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+2)*10),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 


		end
    })
end)

btn("Fallen angel", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
    local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(5507042353,5507001793)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
 
	t.setWalkSpeed(20)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.8726646259971648,-0.8726646259971648,-0.4363323129985824),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5+0.3*sin(sine*2),0)*angles(-2.443460952792061+0.17453292519943295*sin((sine+2)*2),0.17453292519943295*sin(sine*2),3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.4-0.3*sin(sine*2),0)*angles(-0.3490658503988659*sin((sine+2)*2),1.2217304763960306-0.17453292519943295*sin(sine*2),0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5-0.3*sin(sine*2),-0.5)*angles(0.8726646259971648-0.2617993877991494*sin((sine+2)*2),-0.8726646259971648-0.17453292519943295*sin(sine*2),0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.5,1,-1.5)*angles(-1.5707963267948966,0.7853981633974483,-1.5707963267948966),deltaTime)  

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

	AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,0,-2)*angles(0.17453292519943295*sin(sine*5),1.0471975511965976*sin(sine*5),0.17453292519943295*sin((sine+1)*5)),deltaTime) 
	RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(-0.6981317007977318,0.6981317007977318,-0.6981317007977318),deltaTime) 
	RootJoint.C0=RootJoint.C0:Lerp(cf(0,5+1*sin(sine*5),0)*angles(-2.443460952792061+0.3490658503988659*sin((sine+1)*5),0.17453292519943295*sin((sine+1)*5),3.141592653589793),deltaTime) 
	LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(-0.6981317007977318,-0.6981317007977318,-0.8726646259971648),deltaTime) 
	Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
	RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin(sine*-5),1.5707963267948966,0),deltaTime) 
	LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin(sine*5),-1.5707963267948966,0),deltaTime) 

		end
	})
	
	local attackAnimation=nil
mouse.Button1Down:Connect(function()
if attackAnimation then return end
attackAnimation=function()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,1)*angles(1.5707963267948966,0,-0.5235987755982988),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5,-0.5)*angles(-0.5235987755982988,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(0.5235987755982988,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,-3)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.7598786354064941,0.21443712711334229,-0.7138900756835938)*angles(0,0,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,-0.5,0)*angles(2.0943951023931953,0.8726646259971648,0),deltaTime) 


end
task.wait(0.2) 
attackAnimation=function()
			
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-1)*angles(1.5707963267948966,0.3490658503988659,0.5235987755982988),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5,-0.5)*angles(-0.5235987755982988,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(0.5235987755982988,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,-3)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.7598786354064941,0.21443712711334229,-0.7138900756835938)*angles(0.17453292519943295*sin(sine*100),0.17453292519943295*sin(sine*100),0.17453292519943295*sin(sine*100)),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,-0.5,0)*angles(2.0943951023931953,0.8726646259971648,0),deltaTime) 

end

task.wait(0.1) 

	Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*100),-0.5235987755982988+0.3490658503988659*sin(sine*100),3.141592653589793+0.3490658503988659*sin(sine*100)),deltaTime) 
	AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,0.2,-2)*angles(0.17453292519943295*sin(sine*1),1.0471975511965976*sin(sine*1),0.5235987755982988*sin((sine+1)*1)),deltaTime) 
	RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*1),0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+1)*1),0,3.141592653589793),deltaTime) 
	LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(2.0943951023931953,-1.2217304763960306,0),deltaTime) 
	RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.5*sin(sine*1),-0.5)*angles(0.5235987755982988-0.17453292519943295*sin((sine+1)*1),1.5707963267948966,0),deltaTime) 
	LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5-0.5*sin(sine*1),0)*angles(-0.17453292519943295*sin((sine+1)*1),-1.5707963267948966,0),deltaTime) 
	RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(0,0.6981317007977318,0.8726646259971648),deltaTime) 


attackAnimation=nil 
end)

addmode("default",{
    idle=function()
    if attackAnimation then return attackAnimation() end
    
	Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*100),-0.5235987755982988+0.3490658503988659*sin(sine*100),3.141592653589793+0.3490658503988659*sin(sine*100)),deltaTime) 
	AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,0.2,-2)*angles(0.17453292519943295*sin(sine*1),1.0471975511965976*sin(sine*1),0.5235987755982988*sin((sine+1)*1)),deltaTime) 
	RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.5 * sin(sine*1),0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+1)*1),0,3.141592653589793),deltaTime) 
	LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(2.0943951023931953,-1.2217304763960306,0),deltaTime) 
	RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.5*sin(sine*1),-0.5)*angles(0.5235987755982988-0.17453292519943295*sin((sine+1)*1),1.5707963267948966,0),deltaTime) 
	LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5-0.5*sin(sine*1),0)*angles(-0.17453292519943295*sin((sine+1)*1),-1.5707963267948966,0),deltaTime) 
	RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(0,0.6981317007977318,0.8726646259971648),deltaTime) 


end,

		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

		AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,0,-2)*angles(0.17453292519943295*sin(sine*5),1.0471975511965976*sin(sine*5),0.17453292519943295*sin((sine+1)*5)),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(-0.6981317007977318,0.6981317007977318,-0.6981317007977318),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,5+1*sin(sine*5),0)*angles(-2.443460952792061+0.3490658503988659*sin((sine+1)*5),0.17453292519943295*sin((sine+1)*5),3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(-0.6981317007977318,-0.6981317007977318,-0.8726646259971648),deltaTime) 
		Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin(sine*-5),1.5707963267948966,0),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin(sine*5),-1.5707963267948966,0),deltaTime) 
            
		end
    })
end)


btn("nameless balls v2", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local right = getPartFromMesh(123442066,12344206675)  
	local right = getPartJoint(right)
	local left = getPartFromMesh(12344207333,12344207341)  
	local left = getPartJoint(left)

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0,0)*angles(-0.6981317007977318,0,0.8726646259971648),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*2),0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+3)*2),0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*2),0)*angles(-0.3490658503988659-0.17453292519943295*sin((sine+3)*2),1.2217304763960306+0.17453292519943295*sin(sine*2),0.5235987755982988),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*2),0)*angles(-0.17453292519943295*sin((sine+3)*2),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(0.3490658503988659+0.17453292519943295*sin(sine*2),1.5707963267948966,0),deltaTime) 
			left.C0=left.C0:Lerp(cf(100,100,100)*angles(3.141592653589793,3.141592653589793,3.141592653589793),deltaTime) 
			right.C0=right.C0:Lerp(cf(100,100,100)*angles(0,3.141592653589793,3.141592653589793),deltaTime) 

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin(sine*10),0.2 * sin(sine*-10))*angles(0.8726646259971648*sin((sine+3)*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*10),0.2 * sin(sine*-10))*angles(0.8726646259971648*sin((sine+3)*-10),1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.075 * sin(sine*10),0)*angles(-1.7453292519943295+0.17453292519943295*sin((sine+2)*10),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2+0.2*sin(sine*10),0)*angles(0.8726646259971648*sin((sine+3)*-10),1.5707963267948966,0),deltaTime)  
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.2*sin(sine*10),0)*angles(0.8726646259971648*sin((sine+3)*10),-1.5707963267948966,0),deltaTime) 
			left.C0=left.C0:Lerp(cf(100,100,100)*angles(3.141592653589793,3.141592653589793,3.141592653589793),deltaTime) 
			right.C0=right.C0:Lerp(cf(100,100,100)*angles(0,3.141592653589793,3.141592653589793),deltaTime) 

		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			left.C0=left.C0:Lerp(cf(100,100,100)*angles(3.141592653589793,3.141592653589793,3.141592653589793),deltaTime) 
			right.C0=right.C0:Lerp(cf(100,100,100)*angles(0,3.141592653589793,3.141592653589793),deltaTime)
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
			left.C0=left.C0:Lerp(cf(100,100,100)*angles(3.141592653589793,3.141592653589793,3.141592653589793),deltaTime) 
			right.C0=right.C0:Lerp(cf(100,100,100)*angles(0,3.141592653589793,3.141592653589793),deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*2),0)*angles(-0.17453292519943295*sin((sine+3)*2),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*2),0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+3)*2),0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,-2,-1.5)*angles(-1.5707963267948966,0,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*2),0)*angles(-0.3490658503988659-0.17453292519943295*sin((sine+3)*2),1.2217304763960306+0.17453292519943295*sin(sine*2),0.5235987755982988),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(-0.5,-1.5,-2.5)*angles(1.5707963267948966,1.5707963267948966,0),deltaTime) 
			right.C0=right.C0:Lerp(cf(-1.5,2,-1.5)*angles(0,3.141592653589793,3.141592653589793),deltaTime) 
			left.C0=left.C0:Lerp(cf(1.5,2,-1.5)*angles(1.5707963267948966,1.5707963267948966,-1.5707963267948966),deltaTime) 

		end,
        walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin(sine*10),0.2 * sin(sine*-10))*angles(0.8726646259971648*sin((sine+3)*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(-0.5,-1+0.2*sin(sine*10),-2.5)*angles(1.5707963267948966,1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*10),0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+2)*10),0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.8726646259971648*sin((sine+3)*-10),1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0.5,-1+0.2*sin(sine*10),-1.5)*angles(-1.5707963267948966,-1.5707963267948966,0),deltaTime) 
			left.C0=left.C0:Lerp(cf(-1.5,2,-1)*angles(3.141592653589793,3.141592653589793,3.141592653589793),deltaTime) 
			right.C0=right.C0:Lerp(cf(1.5,2,-1)*angles(0,3.141592653589793,3.141592653589793),deltaTime) 


		end
	})
end)

btn("Mini tonk", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
    local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
    local tank = getPartFromMesh(12459488661,12459536185)
	local tank = getPartJoint(tank) 
	t.setWalkSpeed(40)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,-1.5+0.2*sin(sine*160),0)*angles(-3.141592653589793+0.08726646259971647*sin(sine*160),0,3.141592653589793),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,1,0)*angles(0,1.5707963267948966,0),deltaTime)
            tank.C0=tank.C0:Lerp(cf(-0.03246307373046875,-0.2,1.2)*angles(-1.5707963267948966,0,0),deltaTime)

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,-1.5+0.2*sin(sine*160),0)*angles(-3.141592653589793+0.08726646259971647*sin(sine*160),0,3.141592653589793),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,1,0)*angles(0,1.5707963267948966,0),deltaTime)
            tank.C0=tank.C0:Lerp(cf(-0.03246307373046875,-0.2,1.2)*angles(-1.5707963267948966,0,0),deltaTime)
            
		end
	})

	addmode("q", {
		idle = function()
			velYchg()
			tank.C0=tank.C0:Lerp(cf(-0.03246307373046875,-0.2,1.2)*angles(-1.5707963267948966,0,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-1.5+0.2*sin(sine*160),0)*angles(-3.141592653589793+0.08726646259971647*sin(sine*160),0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(0,1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(0,1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
		end
	})
end)

lbl("----====No items====----")

btn("Slick Spy", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(5548423017,5548423938)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
	
	t.setWalkSpeed(20)

	addmode("default", {
		idle = function()
			t.setWalkSpeed(20)
			local rY, lY = raycastlegs()

			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*-2),0)*angles(-1.9198621771937625+0.17453292519943295*sin((sine+2)*2),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.1 * sin(sine*2),0)*angles(-3.839724354387525+0.3490658503988659*sin((sine+1)*2),1.2217304763960306,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.1 * sin(sine*2),0)*angles(0.17453292519943295*sin((sine+1)*2),-0.8726646259971648,-1.0471975511965976),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2+0.2*sin(sine*2),0)*angles(-0.3490658503988659-0.2617993877991494*sin((sine+2)*2),-0.8726646259971648-0.08726646259971647*sin((sine+1)*2),0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*2),-0.5)*angles(0.3490658503988659-0.2617993877991494*sin((sine+2)*2),1.2217304763960306-0.08726646259971647*sin((sine+1)*2),0),deltaTime) 

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.2*sin((sine + 1)*-10),-0.2 * sin((sine+3)*-10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 1)*10),-0.2-0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 3)*-10),-0.2-0.5*sin((sine + 1)*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2+0.2*sin((sine + 1)*-10),0.2 * sin((sine+3)*-10))*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*10),0)*angles(-1.9198621771937625+0.17453292519943295*sin((sine+2)*10),0.08726646259971647*sin(sine*10),3.141592653589793),deltaTime) 
			
					end
	})

	addmode("q", {
		idle = function()
			t.setWalkSpeed(35)
			
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.7-0.2*sin(sine*2),0.2-0.2*sin(sine*2))*angles(-0.17453292519943295*sin((sine+2)*2),0.8726646259971648-0.08726646259971647*sin(sine*1),0.5235987755982988),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,-0.5)*angles(0.3490658503988659+0.17453292519943295*sin(sine*2),0.8726646259971648,0.8726646259971648),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.6981317007977318+0.17453292519943295*sin(sine*1),0.17453292519943295*sin(sine*1),3.141592653589793+0.17453292519943295*sin(sine*1)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-1.2+0.2*sin(sine*2),0.2 * sin((sine+1)*2))*angles(-2.792526803190927+0.08726646259971647*sin((sine+2)*2),-0.3490658503988659+0.08726646259971647*sin(sine*1),3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5-0.2*sin(sine*2),0.2-0.2*sin(sine*2))*angles(0.5235987755982988-0.17453292519943295*sin((sine+2)*2),-1.0471975511965976-0.08726646259971647*sin(sine*1),0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-0.2 * sin(sine*2),-1-0.2*sin(sine*2))*angles(1.5707963267948966,-1.2217304763960306-0.08726646259971647*sin(sine*1),-0.5235987755982988),deltaTime) 
			
		end,	
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5+0.2*sin((sine + 2)*10),0)*angles(-2.443460952792061+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5 * sin(sine*10),0)*angles(-1.5707963267948966,-0.8726646259971648,-0.8726646259971648),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5 * sin(sine*10),0)*angles(-1.5707963267948966,0.8726646259971648,0.8726646259971648),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 6)*-10),-0.2-0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 6)*-10),-0.2-0.5*sin((sine + 3)*10))*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime)  
			
		end
	})
end)

btn("Flying man Dan", function()
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
	t.setWalkSpeed(35)

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

            RootJoint.C0=RootJoint.C0:Lerp(cf(0,3+0.5*sin(sine*2),0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+2.5)*-2),0,3.141592653589793),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0.6981317007977318+0.3490658503988659*sin((sine+2)*2),1.2217304763960306-0.17453292519943295*sin(sine*2),1.2217304763960306),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.6981317007977318+0.3490658503988659*sin((sine+2)*2),-1.2217304763960306+0.17453292519943295*sin(sine*2),-1.2217304763960306),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.5235987755982988+0.3490658503988659*sin((sine+2)*2),1.2217304763960306,0.5235987755982988),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.2-0.2*sin(sine*2),-1)*angles(-0.5235987755982988+0.17453292519943295*sin(sine*2),-1.2217304763960306,-0.5235987755982988),deltaTime) 

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

            RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2 * sin(sine*4),0)*angles(0.6981317007977318*sin((sine+2)*4),0.8726646259971648,0.5235987755982988),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648+0.3490658503988659*sin(sine*1),0.12217304763960307*sin(sine*1),3.141592653589793+0.12217304763960307*sin(sine*1)),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.5235987755982988+0.6981317007977318*sin((sine+2)*4),-1.5707963267948966,0),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,3+0.5*sin((sine + 3)*4),0.2 * sin(sine*4))*angles(-2.792526803190927+0.3490658503988659*sin(sine*4),0.3490658503988659*sin((sine+2)*4),3.141592653589793),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2 * sin(sine*3),0)*angles(0.6981317007977318*sin((sine+2.5)*4),-0.8726646259971648,-0.6981317007977318),deltaTime) 
           
	    end
	})
end)

btn("nameless balls v1", function()
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

			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*3),0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*3),0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.3490658503988659*sin((sine+2)*1),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*3),0)*angles(-0.17453292519943295*sin(sine*3),-1.2217304763960306,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0.3490658503988659*sin((sine+2)*1),1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*3),0)*angles(-0.6981317007977318-1.5707963267948966*sin(sine*3),1.5707963267948966,0),deltaTime) 

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
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*1),0)*angles(1.5707963267948966*sin(sine*3),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*3),0)*angles(-0.17453292519943295*sin((sine+2)*3),-1.2217304763960306,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0.5,-0.5,-1.5)*angles(0.17453292519943295*sin((sine+2.5)*3),-1.5707963267948966,1.5707963267948966),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*3),0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*3),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,-0.5,-3.5)*angles(-0.08726646259971647*sin((sine+2.5)*3),-1.5707963267948966,1.5707963267948966),deltaTime) 

		end,
        walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

            RightShoulder.C0=RightShoulder.C0:Lerp(cf(-0.5,-1,-3.5)*angles(-0.17453292519943295*sin(sine*16),1.5707963267948966,-1.5707963267948966),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0.5,-1,-1.5)*angles(0.17453292519943295*sin(sine*16),-1.5707963267948966,1.5707963267948966),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 0.15)*8),0)*angles(1.5707963267948966+0.6981317007977318*sin(sine*8),-1.5707963267948966,1.5707963267948966),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.3*sin((sine + 0.15)*8),0)*angles(-1.5707963267948966-0.6981317007977318*sin(sine*8),1.5707963267948966,1.5707963267948966),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin((sine+0.1)*16),0)*angles(-1.5707963267948966,0,3.141592653589793-0.08726646259971647*sin(sine*8)),deltaTime) 

		end
	})
	addmode("e", {
		idle = function()
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*3),0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+2.5)*3),0,3.141592653589793),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.4,-1)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+3)*3),-1.5707963267948966,0),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*3),0)*angles(-0.003490658503988659*sin(sine*3),-1.5707963267948966,0),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.4,-1)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+3)*3),1.5707963267948966,0),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*1),0)*angles(1.5707963267948966*sin(sine*3),1.5707963267948966,0),deltaTime) 

	
		end,
        walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

            RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin((sine+0.1)*16),0)*angles(-1.5707963267948966,0,3.141592653589793-0.08726646259971647*sin(sine*8)),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 0.15)*8),0)*angles(1.5707963267948966+0.6981317007977318*sin(sine*8),-1.5707963267948966,1.5707963267948966),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.4,-1)*angles(0.17453292519943295*sin((sine-0.05)*16),1.5707963267948966,-1.5707963267948966),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.4,-1)*angles(0.08726646259971647*sin((sine-0.05)*16),-1.5707963267948966,1.5707963267948966),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.3*sin((sine + 0.15)*8),0)*angles(-1.5707963267948966-0.6981317007977318*sin(sine*8),1.5707963267948966,1.5707963267948966),deltaTime) 


		end
	})
end)

btn("Floatation", function()
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
	t.setWalkSpeed(40)

	t.addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			RootJoint.C0=RootJoint.C0:Lerp(cf(0.5 * sin(sine*2),4+0.5*sin(sine*2),0.5 * sin(sine*2))*angles(-1.5707963267948966+0.17453292519943295*sin((sine+2.5)*2),0.17453292519943295*sin(sine*2),3.141592653589793+0.17453292519943295*sin(sine*2)),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2 * sin(sine*2),0)*angles(-0.5235987755982988,0.5235987755982988,0.8726646259971648-0.3490658503988659*sin((sine+3)*2)),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin(sine*4),0)*angles(-0.6981317007977318+0.3490658503988659*sin(sine*2),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2 * sin(sine*2),0)*angles(-0.5235987755982988,-0.5235987755982988,-0.8726646259971648+0.3490658503988659*sin(sine*2)),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin((sine + 4)*4),0)*angles(0.3490658503988659-0.3490658503988659*sin((sine+2)*-2),1.5707963267948966,0),deltaTime) 

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2 * sin(sine*2),0)*angles(-0.5235987755982988,0.5235987755982988,0.8726646259971648-0.3490658503988659*sin((sine+3)*2)),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin(sine*4),0)*angles(-0.6981317007977318+0.3490658503988659*sin(sine*2),-1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin((sine + 4)*4),0)*angles(-0.6981317007977318+0.3490658503988659*sin((sine+2)*-2),1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2 * sin(sine*2),0)*angles(-0.5235987755982988,-0.5235987755982988,-0.8726646259971648+0.3490658503988659*sin(sine*2)),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,2.5+0.5*sin(sine*2),0.5 * sin(sine*2))*angles(-2.443460952792061+0.3490658503988659*sin((sine+2)*2),0,3.141592653589793),deltaTime) 

		end
	})
end)

btn("Amongus V2", function()
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
	t.setWalkSpeed(10)

	addmode("default",{
		idle=function()

			Neck.C0=Neck.C0:Lerp(cf(0,-0.5,-0.5)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.2+0.2*sin((sine + 3)*5),0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,1)*angles(0,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*5),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,1)*angles(0,-1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2+0.2*sin((sine + 3)*5),0)*angles(0,-1.5707963267948966,0),deltaTime) 

		end,
		walk=function()
			local fw,rt=velbycfrvec()

			RightShoulder.C0=RightShoulder.C0:Lerp(cf(-0.5,-1,-1)*angles(1.5707963267948966,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2+0.2*sin((sine + 3)*5),0)*angles(0.5235987755982988*sin(sine*5),-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,-0.3,-0.5)*angles(-1.5707963267948966,0,-3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*5),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0.5,-0.7,-3)*angles(2.0943951023931953,-1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1.2+0.2*sin((sine + 3)*5),0)*angles(0.5235987755982988*sin(sine*-5),1.5707963267948966,0),deltaTime) 

		end
	})
end)

btn("retro roblox", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	
	t.setWalkSpeed(10)

	addmode("default", {
		idle = function()
			t.setWalkSpeed(10)
			local rY, lY = raycastlegs()
			

		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.8726646259971648*sin(sine*-10),1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.8726646259971648*sin(sine*10),-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime)  
			
		end,

		jump = function()
			local fw, rt = velbycfrvec()

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-3.141592653589793,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-3.141592653589793,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			
		end
	})
end)

lbl("----====Remakes====----")

btn("Banisher remake", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velYchg=t.velYchg
	local setWalkSpeed=t.setWalkSpeed
    local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local AccessoryWeld = getPartFromMesh(4615369575,4615393635)  
	local AccessoryWeld = getPartJoint(AccessoryWeld)
 
	t.setWalkSpeed(25)
	
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.6179938779914944,1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+2)*2),0.17453292519943295*sin(sine*1),3.141592653589793+0.17453292519943295*sin(sine*1)),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,1.2,-1.5)*angles(-1.5707963267948966,0.17453292519943295,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin((sine+1)*-2),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*2),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 1)*2),-0.4+0.2*sin((sine + 1)*2))*angles(0.5235987755982988-0.2617993877991494*sin(sine*2),-1.2217304763960306,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.1 * sin((sine+2)*2),0)*angles(0.3490658503988659*sin(sine*2),-0.8726646259971648,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5+0.3*sin((sine + 1)*2),0.2 * sin(sine*2))*angles(-0.3490658503988659-0.2617993877991494*sin(sine*2),0.8726646259971648,0),deltaTime) 

		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20
			
			t.setWalkSpeed(25)

			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 1)*-10),-0.5+0.5*sin((sine + 3)*-10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.2*sin((sine + 6)*10),-0.2-0.2*sin((sine + 3)*10))*angles(1.5707963267948966*sin(sine*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.5,1,-1.5)*angles(-1.5707963267948966,0.5235987755982988,-1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 1)*10),-0.5+0.5*sin((sine + 3)*-10))*angles(1.5707963267948966*sin(sine*-10),1.5707963267948966-0.17453292519943295*sin(sine*10),0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*10),0)*angles(-2.443460952792061+0.17453292519943295*sin((sine+1)*10),0,3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(2.792526803190927,1.5707963267948966,0),deltaTime) 
            
		end
	})
	
	addmode("q", {
		idle = function()
		
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0.17453292519943295*sin(sine*3),3.141592653589793+0.17453292519943295*sin((sine+1)*3)),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.5235987755982988*sin((sine+2)*3),-0.6981317007977318,-0.8726646259971648),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,2,-1.5)*angles(-1.5707963267948966,0,-1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.5)*angles(0.6806784082777885*sin((sine+5)*3),0.8726646259971648,0.5235987755982988),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(-0.6981317007977318+0.5235987755982988*sin((sine+5)*3),-1.2217304763960306,-0.5235987755982988),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin((sine + 4)*3),0)*angles(-1.5707963267948966-0.5235987755982988*sin(sine*3),0.3490658503988659*sin((sine+2)*3),3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(2.443460952792061,1.5707963267948966,0),deltaTime) 
	
		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(50)

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0,-1.2217304763960306,0.3490658503988659),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(2.443460952792061,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(-1.0471975511965976+0.3490658503988659*sin((sine+5)*3),-1.2217304763960306,-0.5235987755982988),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,2,-1.5)*angles(-1.5707963267948966,0,-1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.3490658503988659*sin((sine+5)*3),1.5707963267948966,-0.8726646259971648),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin((sine + 4)*3),0)*angles(-2.792526803190927-0.17453292519943295*sin(sine*3),0,3.141592653589793),deltaTime) 


		end
	})
	
	addmode("t", {
		idle = function()
		
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.2689280275926285,-0.2617993877991494,3.490658503988659),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2.25,2,-1.25)*angles(-2.0943951023931953,-1.8325957145940461,-2.705260340591211),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,0,-1)*angles(2.443460952792061+0.17453292519943295*sin((sine+0.5)*3),-2.0943951023931953+0.17453292519943295*sin((sine+0.25)*3),2.792526803190927),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-0.5)*angles(-1.5707963267948966,-0.6981317007977318,2.2689280275926285),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0.1)*angles(-1.2217304763960306+0.08726646259971647*sin((sine+0.5)*3),0.6981317007977318,0.6981317007977318),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,-0.25,0.5)*angles(-1.5707963267948966,0.8726646259971648,2.0943951023931953),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0.5 * sin((sine+0.5)*3),4+1*sin(sine*3),0.5 * sin((sine-0.5)*-3))*angles(-1.2217304763960306+0.08726646259971647*sin((sine+0.5)*3),-0.08726646259971647+0.2617993877991494*sin((sine+0.5)*3),2.0943951023931953),deltaTime) 

		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(50)

RootJoint.C0=RootJoint.C0:Lerp(cf(0.2 * sin((sine+0.5)*3),4+0.5*sin(sine*3),0.6 * sin((sine-0.5)*-3))*angles(-2.0943951023931953+0.08726646259971647*sin((sine+0.5)*3),-0.08726646259971647+0.08726646259971647*sin((sine+0.5)*3),2.0943951023931953),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0.1)*angles(-1.2217304763960306+0.08726646259971647*sin((sine+0.5)*3),0.6981317007977318,0.6981317007977318),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.2617993877991494*sin(sine*1),0.2617993877991494*sin(sine*1),4.363323129985824),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.4,0,-0.5)*angles(-0.5235987755982988,-0.5235987755982988,-0.8726646259971648),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2.25,2,-1.25)*angles(-2.0943951023931953,-1.8325957145940461,-2.705260340591211),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,0,-1)*angles(2.443460952792061+0.17453292519943295*sin((sine+0.5)*3),-2.0943951023931953+0.17453292519943295*sin((sine+0.25)*3),2.792526803190927),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,-0.25,0.5)*angles(-1.5707963267948966,0.8726646259971648,2.0943951023931953),deltaTime) 

		end
	})
	
		addmode("y", {
		idle = function()
		
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,-0.05)*angles(1.4835298641951802,1.5707963267948966,1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1+0.1*sin(sine*3.5),0.1 * sin((sine+0.25)*3.5))*angles(-1.5707963267948966+0.08726646259971647*sin((sine+0.5)*3.5),0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.15+0.0975*sin((sine + 0.025)*-3.5),-0.1+0.0825*sin((sine - 0.975)*3.5))*angles(-0.8726646259971648+0.08726646259971647*sin((sine+0.5)*-3.5),1.3962634015954636,0.8290313946973066),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.35+0.2*sin((sine - 0.5)*3.5),0)*angles(1.5707963267948966+0.2617993877991494*sin((sine+0.725)*3.5),-1.8325957145940461+0.2617993877991494*sin(sine*3.5),1.5707963267948966),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.15+0.0975*sin((sine + 0.025)*-3.5),-0.1+0.0825*sin((sine - 0.975)*3.5))*angles(-0.8726646259971648+0.08726646259971647*sin((sine+0.5)*-3.5),-1.3526301702956054,-0.8290313946973066),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2.5,2,-1.5)*angles(-1.5707963267948966,0.6981317007977318,-1.5707963267948966),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625,0,3.141592653589793+0.3490658503988659*sin(sine*1.75)),deltaTime) 

		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(16)

RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.35*sin((sine + 0.775)*-8.5),-0.1+0.25*sin((sine + 1)*-8.5))*angles(-0.08726646259971647+1.0471975511965976*sin((sine+0.575)*-8.5),1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,0)*angles(1.5707963267948966,1.5707963267948966,1.5707963267948966),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2.5,2,-1.5)*angles(-1.5707963267948966,0.7853981633974483,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin((sine-0.0825)*8.5),0.025 * sin((sine+0.25)*8.5))*angles(-1.5882496193148399+0.017453292519943295*sin((sine+0.5)*8.5),0,3.141592653589793+0.08726646259971647*sin((sine+0.575)*-8.5)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1+0.035*sin((sine - 0.05)*8.5),0)*angles(-1.6231562043547265+0.06981317007977318*sin((sine-0.275)*8.5),0,3.141592653589793+0.08726646259971647*sin((sine+0.55)*8.5)),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.4,0.5 * sin((sine-0.115)*8.5))*angles(1.0471975511965976*sin((sine+0.575)*-8.5),-1.5707963267948966+0.17453292519943295*sin(sine*8.5),0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.35*sin((sine + 0.8)*8.5),-0.1+0.25*sin((sine + 1.05)*8.5))*angles(-0.08726646259971647+1.0471975511965976*sin((sine+0.575)*8.5),-1.5707963267948966,0),deltaTime) 

		end
	})
	
		addmode("e", {
		idle = function()
		
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0.17453292519943295*sin(sine*3),3.141592653589793+0.17453292519943295*sin((sine+1)*3)),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.5235987755982988*sin((sine+2)*3),-0.6981317007977318,-0.8726646259971648),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,2,-1.5)*angles(-1.5707963267948966,0,-1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.5)*angles(0.6806784082777885*sin((sine+5)*3),0.8726646259971648,0.5235987755982988),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(-0.6981317007977318+0.5235987755982988*sin((sine+5)*3),-1.2217304763960306,-0.5235987755982988),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin((sine + 4)*3),0)*angles(-1.5707963267948966-0.5235987755982988*sin(sine*3),0.3490658503988659*sin((sine+2)*3),3.141592653589793),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(2.443460952792061,1.5707963267948966,0),deltaTime) 
	
		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(50)

			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0,-1.2217304763960306,0.3490658503988659),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(2.443460952792061,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,-0.5)*angles(-1.0471975511965976+0.3490658503988659*sin((sine+5)*3),-1.2217304763960306,-0.5235987755982988),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,2,-1.5)*angles(-1.5707963267948966,0,-1.5707963267948966),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.3490658503988659*sin((sine+5)*3),1.5707963267948966,-0.8726646259971648),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin((sine + 4)*3),0)*angles(-2.792526803190927-0.17453292519943295*sin(sine*3),0,3.141592653589793),deltaTime) 


		end
	})
	
		addmode("r", {
		idle = function()
		
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0.17453292519943295*sin(sine*5),-0.8726646259971648+0.17453292519943295*sin((sine+0.5)*5),-2.0943951023931953),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0,-3,-2)*angles(0,0.5235987755982988*sin(sine*5),-0.7853981633974483+0.5235987755982988*sin((sine+1)*5)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*5),0.08726646259971647*sin((sine+1)*5),3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0.5)*angles(1.5707963267948966,0.8726646259971648,-2.0943951023931953),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.1*sin(sine*5),0.09 * sin((sine+1)*5))*angles(-0.08726646259971647*sin((sine+1)*5),1.2217304763960306,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*5),0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine+1)*5),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.1*sin(sine*5),0.09 * sin((sine+1)*5))*angles(-0.08726646259971647*sin((sine+1)*5),-1.2217304763960306,0),deltaTime) 	
		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(30)

LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0,0)*angles(0,-0.6981317007977318,0.5235987755982988+0.03490658503988659*sin(sine*5)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.1 * sin((sine+1)*5),0)*angles(0,0.8726646259971648,0.8726646259971648+0.03490658503988659*sin(sine*5)),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0.2 * sin(sine*5),1+0.1*sin(sine*5),0)*angles(-2.0943951023931953+0.08726646259971647*sin((sine+1)*5),-0.3490658503988659+0.08726646259971647*sin((sine+2)*5),-10.471975511965978),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-0.8726646259971648,0.8726646259971648),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(0,-1,0)*angles(0.5235987755982988+0.03490658503988659*sin(sine*5),-0.5235987755982988,0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine+1)*5),0.08726646259971647*sin(sine*5),4.1887902047863905+0.08726646259971647*sin(sine*5)),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,-2,-0.23260498046875)*angles(0,0.3490658503988659*sin(sine*2),-0.7853981633974483+0.7853981633974483*sin((sine+1)*2)),deltaTime) 


		end
	})
	
	addmode("u", {
		idle = function()
		
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.6179938779914944,1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+2)*2),0.17453292519943295*sin(sine*1),3.141592653589793+0.17453292519943295*sin(sine*1)),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,1.2,-1.5)*angles(-1.5707963267948966,0.17453292519943295,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin((sine+1)*-2),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*2),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 1)*2),-0.4+0.2*sin((sine + 1)*2))*angles(0.5235987755982988-0.2617993877991494*sin(sine*2),-1.2217304763960306,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.1 * sin((sine+2)*2),0)*angles(0.3490658503988659*sin(sine*2),-0.8726646259971648,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5+0.3*sin((sine + 1)*2),0.2 * sin(sine*2))*angles(-0.3490658503988659-0.2617993877991494*sin(sine*2),0.8726646259971648,0),deltaTime) 
		end,
		    walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()
			
			t.setWalkSpeed(50)

RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.75,0.07 * sin((sine+0.4)*-15))*angles(2.530727415391778+0.12217304763960307*sin((sine+0.3)*15),1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.04363323129985824*sin((sine+0.6)*15),0.03490658503988659*sin((sine+0.2)*15),3.141592653589793+0.1308996938995747*sin(sine*15)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+1.1*sin((sine + 0.575)*15),-0.25+1*sin((sine + 0.74)*15))*angles(0.17453292519943295+1.9198621771937625*sin((sine+0.7)*-15),-1.5707963267948966+0.17453292519943295*sin((sine-0.23)*-15),0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.4+0.2*sin((sine - 0.1)*15),0.75 * sin((sine-0.55)*-15))*angles(0.17453292519943295+2.2689280275926285*sin((sine+0.51)*-15),-1.5707963267948966+0.6981317007977318*sin((sine-0.215)*15),0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2.5,1.5,-1.5)*angles(-1.5707963267948966,0.17453292519943295+0.04363323129985824*sin((sine+0.3)*15),-1.5707963267948966),deltaTime)  
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+1.1*sin((sine + 0.575)*-15),-0.25+1*sin((sine + 0.75)*-15))*angles(0.17453292519943295+1.9198621771937625*sin((sine+0.7)*15),1.5707963267948966+0.17453292519943295*sin((sine-0.23)*-15),0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin((sine+0.75)*15),0.1 * sin((sine-0.2)*15))*angles(-2.2689280275926285,0,3.141592653589793+0.1308996938995747*sin((sine+0.225)*15)),deltaTime) 


		end
	})
	
	local attackAnimation=nil
mouse.Button1Down:Connect(function()
if attackAnimation then return end
attackAnimation=function()

LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,1,-1.2)*angles(2.443460952792061,-0.3490658503988659,0.6981317007977318),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,3.5,0)*angles(-1.5707963267948966,-0.17453292519943295,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,-1.5)*angles(2.443460952792061,0.17453292519943295,-0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.2217304763960306,-0.5235987755982988,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,-0.5)*angles(0.5235987755982988,-0.8726646259971648,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.9,0)*angles(-0.5235987755982988,0.8726646259971648,0),deltaTime) 


end
task.wait(0.2) 
attackAnimation=function()
			
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3,3,0)*angles(-1.5707963267948966,-0.17453292519943295,-1.5707963267948966),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,-0.5)*angles(0.5235987755982988,-0.8726646259971648,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.9,0)*angles(-0.5235987755982988,0.8726646259971648,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,1,-1)*angles(2.443460952792061,0.17453292519943295,-0.5235987755982988),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-1)*angles(2.6179938779914944,-0.17453292519943295,0.5235987755982988),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,2)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 

end

task.wait(0.3) 

			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-3.5,2.5,0)*angles(-1.5707963267948966,-0.6108652381980153,-1.5707963267948966),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.5235987755982988,3.141592653589793),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5,3)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5,-1)*angles(0.17453292519943295,-1.5707963267948966,0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-1.5)*angles(2.0943951023931953,0,0.7853981633974483),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0.5)*angles(-0.6981317007977318,0.8726646259971648,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.7,1,-1)*angles(2.0943951023931953,0.6981317007977318,-0.6981317007977318),deltaTime) 

attackAnimation=nil 
end)

addmode("default",{
    idle=function()
    if attackAnimation then return attackAnimation() end
    
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0,0)*angles(2.6179938779914944,1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin((sine+2)*2),0.17453292519943295*sin(sine*1),3.141592653589793+0.17453292519943295*sin(sine*1)),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2,1.2,-1.5)*angles(-1.5707963267948966,0.17453292519943295,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin((sine+1)*-2),0)*angles(-2.0943951023931953+0.17453292519943295*sin(sine*2),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.3*sin((sine + 1)*2),-0.4+0.2*sin((sine + 1)*2))*angles(0.5235987755982988-0.2617993877991494*sin(sine*2),-1.2217304763960306,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.1 * sin((sine+2)*2),0)*angles(0.3490658503988659*sin(sine*2),-0.8726646259971648,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.5+0.3*sin((sine + 1)*2),0.2 * sin(sine*2))*angles(-0.3490658503988659-0.2617993877991494*sin(sine*2),0.8726646259971648,0),deltaTime) 

end,

		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

            t.setWalkSpeed(30)
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,-0.2 * sin((sine+1)*9))*angles(2.9670597283903604,1.4835298641951802,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.2-0.5*sin((sine + 5)*9),0.5 * sin(sine*9))*angles(-1.2217304763960306*sin(sine*9),1.5707963267948966-0.17453292519943295*sin((sine+10)*9),0),deltaTime) 
AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-2+0.2*sin((sine + 1)*9),1.5,-1.5)*angles(-1.5707963267948966,0.6108652381980153,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+5)*9),0)*angles(-2.0943951023931953+0.05235987755982989*sin(sine*9),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.3962634015954636+0.08726646259971647*sin((sine+3)*9),0.08726646259971647*sin(sine*9),3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.2*sin(sine*9),-0.4 * sin(sine*9))*angles(-1.3089969389957472*sin((sine+10)*-9),-1.4835298641951802+0.17453292519943295*sin(sine*9),0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2+0.5*sin((sine + 5)*9),-0.5 * sin(sine*9))*angles(1.2217304763960306*sin(sine*9),-1.5707963267948966-0.17453292519943295*sin((sine+10)*9),0),deltaTime) 

		end
    })
end)

lbl("----====Exotics stuff====----")

btn("winged killer", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local swordhandle = getPartFromMesh(4315410540,4315250791)
	local swordweld = getPartJoint(swordhandle)
	local wing1handle = getPartFromMesh(5486588848,13332369316)
	local wing1weld = getPartJoint(wing1handle)
	local gniwhandle = getPartFromMesh(5593756557,13332369316)
	local gniwweld = getPartJoint(gniwhandle)
	t.setWalkSpeed(90)

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(3.3161255787892263+0.2617993877991494*sin(sine*5),-0.5235987755982988,0.8726646259971648),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin(sine*-5),0)*angles(-1.9198621771937625+0.3490658503988659*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.2217304763960306,1.0471975511965976+0.17453292519943295*sin(sine*5),1.0471975511965976),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988+0.5235987755982988*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.6981317007977318*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3,0)*angles(1.7453292519943295-0.2617993877991494*sin((sine+0.3)*5),-2.0943951023931953,2.0943951023931953),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin(sine*-5),0)*angles(-2.443460952792061+0.08726646259971647*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.3962634015954636-0.2617993877991494*sin((sine+0.3)*5),1.0471975511965976,1.0471975511965976),deltaTime)  
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.3490658503988659*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(3.3161255787892263+0.2617993877991494*sin(sine*5),-0.5235987755982988,0.8726646259971648),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin(sine*-5),0)*angles(-1.9198621771937625+0.3490658503988659*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.2217304763960306,1.0471975511965976+0.17453292519943295*sin(sine*5),1.0471975511965976),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988+0.5235987755982988*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.6981317007977318*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3,0)*angles(1.7453292519943295-0.2617993877991494*sin((sine+0.3)*5),-2.0943951023931953,2.0943951023931953),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin(sine*-5),0)*angles(-2.443460952792061+0.08726646259971647*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.3962634015954636-0.2617993877991494*sin((sine+0.3)*5),1.0471975511965976,1.0471975511965976),deltaTime)  
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.3490658503988659*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end
	})
end)

btn("winged killer(paid)", function()
	local args = {
    [1] = "[[ winged killer fe >>> wings or not you are doomed ]]",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))

	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local getPartFromMesh=t.getPartFromMesh
	local getPartJoint=t.getPartJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local swordhandle = getPartFromMesh(4315410540,4315250791)
	local swordweld = getPartJoint(swordhandle)
	local wing1handle = getPartFromMesh(5486588848,13332369316)
	local wing1weld = getPartJoint(wing1handle)
	local gniwhandle = getPartFromMesh(5593756557,13332369316)
	local gniwweld = getPartJoint(gniwhandle)
	t.setWalkSpeed(90)
	local attackAnimation=nil
	mouse.Button1Down:Connect(function()  --not sure about the event name tho
	if attackAnimation then return end
	attackAnimation=function()
	
	    RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.8,0.9,0)*angles(1.3962634015954636,2.443460952792061,1.0471975511965976),deltaTime) 
	wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
	RootJoint.C0=RootJoint.C0:Lerp(cf(0,6,0)*angles(-1.3962634015954636,0,3.141592653589793),deltaTime) 
	LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.8,0.9,0)*angles(-1.5707963267948966,-0.6981317007977318,20.943951023931955),deltaTime) 
	RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0,1.2217304763960306,0),deltaTime) 
	gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
	Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
	LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988,-1.3962634015954636,0),deltaTime) 
	swordweld.C0=swordweld.C0:Lerp(cf(0.4,3.7,0)*angles(3.141592653589793,-1.5707963267948966,0),deltaTime) 
	-- add your attack animation here
	
	
	end
	task.wait(0.29)  --u choose how long the first keyframe plays for
	attackAnimation=function()
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.8,0.9,0)*angles(1.3962634015954636,2.443460952792061,1.0471975511965976),deltaTime) 
wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,1,0)*angles(-2.2689280275926285,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.8,0.9,0)*angles(-1.5707963267948966,-0.6981317007977318,20.943951023931955),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0,1.2217304763960306,0),deltaTime) 
gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988,-1.3962634015954636,0),deltaTime) 
swordweld.C0=swordweld.C0:Lerp(cf(3.2,-0.2,0)*angles(0,1.5707963267948966,0),deltaTime) 
	

	    --add your attack animation here
	
	end
	
	task.wait(0.49)  --u choose how long the second keyframe plays for
	
	--u can add more attack anims here
	
	
	
	
	attackAnimation=nil --this ends the attack anim
	end)

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()
			 if attackAnimation then return attackAnimation() end 

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(3.3161255787892263+0.2617993877991494*sin(sine*5),-0.5235987755982988,0.8726646259971648),deltaTime) 
		wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin(sine*-5),0)*angles(-1.9198621771937625+0.3490658503988659*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.2217304763960306,1.0471975511965976+0.17453292519943295*sin(sine*5),1.0471975511965976),deltaTime) 
		gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
		swordweld.C0=swordweld.C0:Lerp(cf(2,3.7,1)*angles(-0.6981317007977318+0.17453292519943295*sin(sine*5),1.5707963267948966,0),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988+0.5235987755982988*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.6981317007977318*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3,0)*angles(1.7453292519943295-0.2617993877991494*sin((sine+0.3)*5),-2.0943951023931953,2.0943951023931953),deltaTime) 
		wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin(sine*-5),0)*angles(-2.443460952792061+0.08726646259971647*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.3962634015954636-0.2617993877991494*sin((sine+0.3)*5),1.0471975511965976,1.0471975511965976),deltaTime) 
		gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
		swordweld.C0=swordweld.C0:Lerp(cf(2,3.7,1.2)*angles(-0.6981317007977318,1.5707963267948966+0.17453292519943295*sin((sine+0.3)*5),0),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.3490658503988659*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(3.3161255787892263+0.2617993877991494*sin(sine*5),-0.5235987755982988,0.8726646259971648),deltaTime) 
		wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+2*sin(sine*-5),0)*angles(-1.9198621771937625+0.3490658503988659*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.2217304763960306,1.0471975511965976+0.17453292519943295*sin(sine*5),1.0471975511965976),deltaTime) 
		gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
		swordweld.C0=swordweld.C0:Lerp(cf(2,3.7,1)*angles(-0.6981317007977318+0.17453292519943295*sin(sine*5),1.5707963267948966,0),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.2,0)*angles(-0.5235987755982988+0.5235987755982988*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.6981317007977318*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-0.8726646259971648+0.17453292519943295*sin(sine*5),0,3.141592653589793),deltaTime) 
		LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3,0)*angles(1.7453292519943295-0.2617993877991494*sin((sine+0.3)*5),-2.0943951023931953,2.0943951023931953),deltaTime) 
		wing1weld.C0=wing1weld.C0:Lerp(cf(-2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),0.3490658503988659+0.4363323129985824*sin(sine*5),-3.141592653589793+0.17453292519943295*sin(sine*5)),deltaTime) 
		RootJoint.C0=RootJoint.C0:Lerp(cf(0,6+1*sin(sine*-5),0)*angles(-2.443460952792061+0.08726646259971647*sin((sine+0.3)*5),0,3.141592653589793),deltaTime) 
		RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(-1.3962634015954636-0.2617993877991494*sin((sine+0.3)*5),1.0471975511965976,1.0471975511965976),deltaTime) 
		gniwweld.C0=gniwweld.C0:Lerp(cf(2,-1.3,0)*angles(-3.141592653589793+0.4363323129985824*sin(sine*5),-0.3490658503988659-0.4363323129985824*sin(sine*5),-3.141592653589793-0.17453292519943295*sin(sine*5)),deltaTime) 
		swordweld.C0=swordweld.C0:Lerp(cf(2,3.7,1.2)*angles(-0.6981317007977318,1.5707963267948966+0.17453292519943295*sin((sine+0.3)*5),0),deltaTime) 
		LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.2)*5),-1.3962634015954636,0),deltaTime) 
		RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-0.4)*angles(0.3490658503988659*sin((sine+0.3)*5),1.2217304763960306,0),deltaTime) 
		end
	})
end)

lbl("----========================----")

btn("Destroy UI",function()
	i1:Destroy()
    i2:Destroy()
    i3:Destroy()
    i4:Destroy()
    i5:Destroy()
    i6:Destroy()
    i7:Destroy()
    i8:Destroy()
    i9:Destroy()
    stopreanimate()
end).TextColor3=c3(1,0,0)

btn("Stop reanimate",function()
	stopreanimate()
end).TextColor3=c3(1,0,0)

btn("Rejoin",function()
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
end).TextColor3=c3(1,0,0)

btn("Reset",function()
	stopreanimate()
end).TextColor3=c3(1,0,0)

lbl("----========================----")

lbl("SETTINGS")

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

swtc("claim mode",{
	{value=false,text="nowait"},
	{value=true,text="safer"}
},function(v)
	claimwait=v
end)

if type(shp)=="function" then
	swtc("simulation radius",{
		{value=1000,text="on"},
		{value=false,text="off"}
	},function(v)
		simrad=v
	end)
else
	lbl("simulation radius: unavailable")
end

local iscg,_=pcall(function()
	i9.Parent=cg
end)
if not iscg then
	i6.Text="PLAYERGUI MODE"
	i9.Parent=pg
	twait(3)
	i6.Text=guiTheme.guiTitle
end