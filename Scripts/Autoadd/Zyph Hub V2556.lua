--[[
	patchma hub by MyWorld
	one last unpatch... 

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
	windowRegularSize=u2(0,290,0,700),
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

lbl("---------------------------------------")
lbl("By: hiso")
lbl("powered by patchma")
lbl("---------------------------------------")


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

-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)

-- Instances:

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Main"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_pattern"] = Instance.new("Folder");
	["_ImageLabel"] = Instance.new("ImageLabel");
	["_ImageLabel1"] = Instance.new("ImageLabel");
	["_ImageLabel2"] = Instance.new("ImageLabel");
	["_ImageLabel3"] = Instance.new("ImageLabel");
	["_HHBD"] = Instance.new("TextLabel");
	["_buttons"] = Instance.new("Folder");
	["_b3"] = Instance.new("TextButton");
	["_UICorner1"] = Instance.new("UICorner");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_Anim"] = Instance.new("LocalScript");
	["_b4"] = Instance.new("TextButton");
	["_UICorner2"] = Instance.new("UICorner");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_Anim1"] = Instance.new("LocalScript");
	["_b5"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_Anim2"] = Instance.new("LocalScript");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_b7"] = Instance.new("TextButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIGradient3"] = Instance.new("UIGradient");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_Anim3"] = Instance.new("LocalScript");
	["_b6"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_UIGradient4"] = Instance.new("UIGradient");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_Anim4"] = Instance.new("LocalScript");
	["_b2"] = Instance.new("TextButton");
	["_UICorner6"] = Instance.new("UICorner");
	["_UIGradient5"] = Instance.new("UIGradient");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_Anim5"] = Instance.new("LocalScript");
	["_b8"] = Instance.new("TextButton");
	["_UICorner7"] = Instance.new("UICorner");
	["_UIGradient6"] = Instance.new("UIGradient");
	["_UIStroke7"] = Instance.new("UIStroke");
	["_Anim6"] = Instance.new("LocalScript");
	["_b9"] = Instance.new("TextButton");
	["_UICorner8"] = Instance.new("UICorner");
	["_UIGradient7"] = Instance.new("UIGradient");
	["_UIStroke8"] = Instance.new("UIStroke");
	["_Anim7"] = Instance.new("LocalScript");
	["_b1"] = Instance.new("TextButton");
	["_UICorner9"] = Instance.new("UICorner");
	["_UIGradient8"] = Instance.new("UIGradient");
	["_UIStroke9"] = Instance.new("UIStroke");
	["_Anim8"] = Instance.new("LocalScript");
	["_SA"] = Instance.new("TextButton");
	["_UICorner10"] = Instance.new("UICorner");
	["_UIGradient9"] = Instance.new("UIGradient");
	["_UIStroke10"] = Instance.new("UIStroke");
	["_Anim9"] = Instance.new("LocalScript");
	["_HHF"] = Instance.new("TextLabel");
	["_print"] = Instance.new("LocalScript");
	["_a"] = Instance.new("Folder");
	["_a3"] = Instance.new("TextButton");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIGradient10"] = Instance.new("UIGradient");
	["_UIStroke11"] = Instance.new("UIStroke");
	["_Anim10"] = Instance.new("LocalScript");
	["_previous"] = Instance.new("TextButton");
	["_UICorner12"] = Instance.new("UICorner");
	["_UIGradient11"] = Instance.new("UIGradient");
	["_UIStroke12"] = Instance.new("UIStroke");
	["_LocalScript"] = Instance.new("LocalScript");
	["_next"] = Instance.new("TextButton");
	["_UICorner13"] = Instance.new("UICorner");
	["_UIGradient12"] = Instance.new("UIGradient");
	["_UIStroke13"] = Instance.new("UIStroke");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_Drag"] = Instance.new("LocalScript");
	["_x"] = Instance.new("TextButton");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIGradient13"] = Instance.new("UIGradient");
	["_UIStroke14"] = Instance.new("UIStroke");
	["_Function"] = Instance.new("LocalScript");
	["_m"] = Instance.new("TextButton");
	["_UICorner15"] = Instance.new("UICorner");
	["_UIGradient14"] = Instance.new("UIGradient");
	["_UIStroke15"] = Instance.new("UIStroke");
	["_Function1"] = Instance.new("LocalScript");
	["_UIGradient15"] = Instance.new("UIGradient");
	["_Button1"] = Instance.new("TextButton");
	["_UICorner16"] = Instance.new("UICorner");
	["_UIGradient16"] = Instance.new("UIGradient");
	["_UIStroke16"] = Instance.new("UIStroke");
	["_Function2"] = Instance.new("LocalScript");
	["_UIGradient17"] = Instance.new("UIGradient");
}

-- Properties:

Converted["_ScreenGui"].ResetOnSpawn = false
Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Main"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Main"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BorderSizePixel = 0
Converted["_Main"].ClipsDescendants = true
Converted["_Main"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Main"].Size = UDim2.new(0, 620, 0, 415)
Converted["_Main"].Name = "Main"
Converted["_Main"].Parent = Converted["_ScreenGui"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Thickness = 3
Converted["_UIStroke"].Parent = Converted["_Main"]

Converted["_UICorner"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner"].Parent = Converted["_Main"]

Converted["_pattern"].Name = "pattern"
Converted["_pattern"].Parent = Converted["_Main"]

Converted["_ImageLabel"].Image = "rbxassetid://2151741365"
Converted["_ImageLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel"].BackgroundTransparency = 1
Converted["_ImageLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel"].BorderSizePixel = 0
Converted["_ImageLabel"].Size = UDim2.new(0, 368, 0, 370)
Converted["_ImageLabel"].Parent = Converted["_pattern"]

Converted["_ImageLabel1"].Image = "rbxassetid://2151741365"
Converted["_ImageLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel1"].BackgroundTransparency = 1
Converted["_ImageLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel1"].BorderSizePixel = 0
Converted["_ImageLabel1"].Position = UDim2.new(0.593548357, 0, 0, 0)
Converted["_ImageLabel1"].Size = UDim2.new(0, 368, 0, 370)
Converted["_ImageLabel1"].Parent = Converted["_pattern"]

Converted["_ImageLabel2"].Image = "rbxassetid://2151741365"
Converted["_ImageLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel2"].BackgroundTransparency = 1
Converted["_ImageLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel2"].BorderSizePixel = 0
Converted["_ImageLabel2"].Position = UDim2.new(0, 0, 0.891566277, 0)
Converted["_ImageLabel2"].Size = UDim2.new(0, 368, 0, 370)
Converted["_ImageLabel2"].Parent = Converted["_pattern"]

Converted["_ImageLabel3"].Image = "rbxassetid://2151741365"
Converted["_ImageLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel3"].BackgroundTransparency = 1
Converted["_ImageLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel3"].BorderSizePixel = 0
Converted["_ImageLabel3"].Position = UDim2.new(0.593548357, 0, 0.891566277, 0)
Converted["_ImageLabel3"].Size = UDim2.new(0, 368, 0, 370)
Converted["_ImageLabel3"].Parent = Converted["_pattern"]

Converted["_HHBD"].Font = Enum.Font.SourceSansBold
Converted["_HHBD"].RichText = true
Converted["_HHBD"].Text = "Zyph Hub V2"
Converted["_HHBD"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HHBD"].TextScaled = true
Converted["_HHBD"].TextSize = 14
Converted["_HHBD"].TextWrapped = true
Converted["_HHBD"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HHBD"].BackgroundTransparency = 1
Converted["_HHBD"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HHBD"].BorderSizePixel = 0
Converted["_HHBD"].Position = UDim2.new(0.114516132, 0, 0.1061747, 0)
Converted["_HHBD"].Size = UDim2.new(0, 466, 0, 77)
Converted["_HHBD"].Name = "HHBD"
Converted["_HHBD"].Parent = Converted["_Main"]

Converted["_buttons"].Name = "buttons"
Converted["_buttons"].Parent = Converted["_Main"]

Converted["_b3"].Font = Enum.Font.SourceSansBold
Converted["_b3"].Text = "Basico V2"
Converted["_b3"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b3"].TextSize = 14
Converted["_b3"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b3"].BorderSizePixel = 0
Converted["_b3"].Position = UDim2.new(0.0483870953, 0, 0.354216874, 0)
Converted["_b3"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b3"].Name = "b3"
Converted["_b3"].Parent = Converted["_buttons"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner1"].Parent = Converted["_b3"]

Converted["_UIGradient"].Parent = Converted["_b3"]

Converted["_UIStroke1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke1"].Thickness = 3
Converted["_UIStroke1"].Parent = Converted["_b3"]

Converted["_b4"].Font = Enum.Font.SourceSansBold
Converted["_b4"].RichText = true
Converted["_b4"].Text = "Pandora [Unavailable hats]"
Converted["_b4"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b4"].TextSize = 14
Converted["_b4"].BackgroundColor3 = Color3.fromRGB(49.00000087916851, 49.00000087916851, 49.00000087916851)
Converted["_b4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b4"].BorderSizePixel = 0
Converted["_b4"].Position = UDim2.new(0.354786843, 0, 0.354216874, 0)
Converted["_b4"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b4"].Name = "b4"
Converted["_b4"].Parent = Converted["_buttons"]

Converted["_UICorner2"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner2"].Parent = Converted["_b4"]

Converted["_UIGradient1"].Parent = Converted["_b4"]

Converted["_UIStroke2"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke2"].Thickness = 3
Converted["_UIStroke2"].Parent = Converted["_b4"]

Converted["_b5"].Font = Enum.Font.SourceSansBold
Converted["_b5"].Text = "Dodanuki [Unavailable hats]"
Converted["_b5"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b5"].TextSize = 14
Converted["_b5"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b5"].BorderSizePixel = 0
Converted["_b5"].Position = UDim2.new(0.661186576, 0, 0.354216874, 0)
Converted["_b5"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b5"].Name = "b5"
Converted["_b5"].Parent = Converted["_buttons"]

Converted["_UICorner3"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner3"].Parent = Converted["_b5"]

Converted["_UIGradient2"].Parent = Converted["_b5"]

Converted["_UIStroke3"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke3"].Thickness = 3
Converted["_UIStroke3"].Parent = Converted["_b5"]

Converted["_b7"].Font = Enum.Font.SourceSansBold
Converted["_b7"].Text = "Gunner V2"
Converted["_b7"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b7"].TextSize = 14
Converted["_b7"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b7"].BorderSizePixel = 0
Converted["_b7"].Position = UDim2.new(0.675702691, 0, 0.556626499, 0)
Converted["_b7"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b7"].Name = "b7"
Converted["_b7"].Parent = Converted["_buttons"]

Converted["_UICorner4"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner4"].Parent = Converted["_b7"]

Converted["_UIGradient3"].Parent = Converted["_b7"]

Converted["_UIStroke4"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke4"].Thickness = 3
Converted["_UIStroke4"].Parent = Converted["_b7"]

Converted["_b6"].Font = Enum.Font.SourceSansBold
Converted["_b6"].Text = "Headless"
Converted["_b6"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b6"].TextSize = 14
Converted["_b6"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b6"].BorderSizePixel = 0
Converted["_b6"].Position = UDim2.new(0.354786843, 0, 0.556626499, 0)
Converted["_b6"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b6"].Name = "b6"
Converted["_b6"].Parent = Converted["_buttons"]

Converted["_UICorner5"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner5"].Parent = Converted["_b6"]

Converted["_UIGradient4"].Parent = Converted["_b6"]

Converted["_UIStroke5"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke5"].Thickness = 3
Converted["_UIStroke5"].Parent = Converted["_b6"]

Converted["_b2"].Font = Enum.Font.SourceSansBold
Converted["_b2"].Text = "Kirby"
Converted["_b2"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b2"].TextSize = 14
Converted["_b2"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b2"].BorderSizePixel = 0
Converted["_b2"].Position = UDim2.new(0.0483870953, 0, 0.556626499, 0)
Converted["_b2"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b2"].Name = "b2"
Converted["_b2"].Parent = Converted["_buttons"]

Converted["_UICorner6"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner6"].Parent = Converted["_b2"]

Converted["_UIGradient5"].Parent = Converted["_b2"]

Converted["_UIStroke6"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke6"].Thickness = 3
Converted["_UIStroke6"].Parent = Converted["_b2"]

Converted["_b8"].Font = Enum.Font.SourceSansBold
Converted["_b8"].Text = "Drunk Driver"
Converted["_b8"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b8"].TextSize = 14
Converted["_b8"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b8"].BorderSizePixel = 0
Converted["_b8"].Position = UDim2.new(0.661186576, 0, 0.75421685, 0)
Converted["_b8"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b8"].Name = "b8"
Converted["_b8"].Parent = Converted["_buttons"]

Converted["_UICorner7"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner7"].Parent = Converted["_b8"]

Converted["_UIGradient6"].Parent = Converted["_b8"]

Converted["_UIStroke7"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke7"].Thickness = 3
Converted["_UIStroke7"].Parent = Converted["_b8"]

Converted["_b9"].Font = Enum.Font.SourceSansBold
Converted["_b9"].Text = "Mario"
Converted["_b9"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b9"].TextSize = 14
Converted["_b9"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b9"].BorderSizePixel = 0
Converted["_b9"].Position = UDim2.new(0.354786843, 0, 0.75421685, 0)
Converted["_b9"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b9"].Name = "b9"
Converted["_b9"].Parent = Converted["_buttons"]

Converted["_UICorner8"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner8"].Parent = Converted["_b9"]

Converted["_UIGradient7"].Parent = Converted["_b9"]

Converted["_UIStroke8"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke8"].Thickness = 3
Converted["_UIStroke8"].Parent = Converted["_b9"]

Converted["_b1"].Font = Enum.Font.SourceSansBold
Converted["_b1"].Text = "Flappy dude"
Converted["_b1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b1"].TextSize = 14
Converted["_b1"].BackgroundColor3 = Color3.fromRGB(49.000004678964615, 49.000004678964615, 49.000004678964615)
Converted["_b1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_b1"].BorderSizePixel = 0
Converted["_b1"].Position = UDim2.new(0.0483870953, 0, 0.75421685, 0)
Converted["_b1"].Size = UDim2.new(0, 180, 0, 48)
Converted["_b1"].Name = "b1"
Converted["_b1"].Parent = Converted["_buttons"]

Converted["_UICorner9"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner9"].Parent = Converted["_b1"]

Converted["_UIGradient8"].Parent = Converted["_b1"]

Converted["_UIStroke9"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke9"].Thickness = 3
Converted["_UIStroke9"].Parent = Converted["_b1"]

Converted["_SA"].Font = Enum.Font.SourceSansBold
Converted["_SA"].Text = "Stop Animation"
Converted["_SA"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SA"].TextSize = 14
Converted["_SA"].BackgroundColor3 = Color3.fromRGB(49.00000087916851, 49.00000087916851, 49.00000087916851)
Converted["_SA"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SA"].BorderSizePixel = 0
Converted["_SA"].Position = UDim2.new(0.393548399, 0, 0.939759016, 0)
Converted["_SA"].Size = UDim2.new(0, 131, 0, 25)
Converted["_SA"].Name = "SA"
Converted["_SA"].Parent = Converted["_buttons"]

Converted["_UICorner10"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner10"].Parent = Converted["_SA"]

Converted["_UIGradient9"].Parent = Converted["_SA"]

Converted["_UIStroke10"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke10"].Thickness = 3
Converted["_UIStroke10"].Parent = Converted["_SA"]

Converted["_HHF"].Font = Enum.Font.SourceSansBold
Converted["_HHF"].RichText = true
Converted["_HHF"].Text = "Zyph hub V2"
Converted["_HHF"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HHF"].TextScaled = true
Converted["_HHF"].TextSize = 14
Converted["_HHF"].TextWrapped = true
Converted["_HHF"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HHF"].BackgroundTransparency = 1
Converted["_HHF"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HHF"].BorderSizePixel = 0
Converted["_HHF"].Position = UDim2.new(0.123588413, 0, 0.0867469907, 0)
Converted["_HHF"].Size = UDim2.new(0, 466, 0, 77)
Converted["_HHF"].Name = "HHF"
Converted["_HHF"].Parent = Converted["_Main"]

Converted["_a"].Name = "a"
Converted["_a"].Parent = Converted["_Main"]

Converted["_a3"].Font = Enum.Font.SourceSansBold
Converted["_a3"].Text = "Tin Pots 'N Pans"
Converted["_a3"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_a3"].TextSize = 14
Converted["_a3"].BackgroundColor3 = Color3.fromRGB(49.00000087916851, 49.00000087916851, 49.00000087916851)
Converted["_a3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_a3"].BorderSizePixel = 0
Converted["_a3"].Position = UDim2.new(0.0483870953, 0, 0.356626511, 0)
Converted["_a3"].Size = UDim2.new(0, 180, 0, 48)
Converted["_a3"].Visible = false
Converted["_a3"].Name = "a3"
Converted["_a3"].Parent = Converted["_a"]

Converted["_UICorner11"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner11"].Parent = Converted["_a3"]

Converted["_UIGradient10"].Parent = Converted["_a3"]

Converted["_UIStroke11"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke11"].Thickness = 3
Converted["_UIStroke11"].Parent = Converted["_a3"]

Converted["_previous"].Font = Enum.Font.SourceSansBold
Converted["_previous"].Text = "<"
Converted["_previous"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_previous"].TextScaled = true
Converted["_previous"].TextSize = 14
Converted["_previous"].TextWrapped = true
Converted["_previous"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_previous"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_previous"].BorderSizePixel = 0
Converted["_previous"].Position = UDim2.new(-5.18798843e-05, 0, 0.939759016, 0)
Converted["_previous"].Size = UDim2.new(0, 53, 0, 25)
Converted["_previous"].Name = "previous"
Converted["_previous"].Parent = Converted["_Main"]

Converted["_UICorner12"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner12"].Parent = Converted["_previous"]

Converted["_UIGradient11"].Parent = Converted["_previous"]

Converted["_UIStroke12"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke12"].Thickness = 3
Converted["_UIStroke12"].Parent = Converted["_previous"]

Converted["_next"].Font = Enum.Font.SourceSansBold
Converted["_next"].Text = ">"
Converted["_next"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_next"].TextScaled = true
Converted["_next"].TextSize = 14
Converted["_next"].TextWrapped = true
Converted["_next"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_next"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_next"].BorderSizePixel = 0
Converted["_next"].Position = UDim2.new(0.914464235, 0, 0.939759016, 0)
Converted["_next"].Size = UDim2.new(0, 53, 0, 25)
Converted["_next"].Name = "next"
Converted["_next"].Parent = Converted["_Main"]

Converted["_UICorner13"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner13"].Parent = Converted["_next"]

Converted["_UIGradient12"].Parent = Converted["_next"]

Converted["_UIStroke13"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke13"].Thickness = 3
Converted["_UIStroke13"].Parent = Converted["_next"]

Converted["_x"].Font = Enum.Font.SourceSansBold
Converted["_x"].Text = "X"
Converted["_x"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_x"].TextScaled = true
Converted["_x"].TextSize = 14
Converted["_x"].TextWrapped = true
Converted["_x"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_x"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_x"].BorderSizePixel = 0
Converted["_x"].Position = UDim2.new(-5.18798843e-05, 0, 0, 0)
Converted["_x"].Size = UDim2.new(0, 24, 0, 21)
Converted["_x"].Name = "x"
Converted["_x"].Parent = Converted["_Main"]

Converted["_UICorner14"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner14"].Parent = Converted["_x"]

Converted["_UIGradient13"].Parent = Converted["_x"]

Converted["_UIStroke14"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke14"].Thickness = 3
Converted["_UIStroke14"].Parent = Converted["_x"]

Converted["_m"].Font = Enum.Font.SourceSansBold
Converted["_m"].Text = "-"
Converted["_m"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_m"].TextScaled = true
Converted["_m"].TextSize = 14
Converted["_m"].TextWrapped = true
Converted["_m"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_m"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_m"].BorderSizePixel = 0
Converted["_m"].Position = UDim2.new(0.0467223153, 0, 0, 0)
Converted["_m"].Size = UDim2.new(0, 24, 0, 21)
Converted["_m"].Name = "m"
Converted["_m"].Parent = Converted["_Main"]

Converted["_UICorner15"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner15"].Parent = Converted["_m"]

Converted["_UIGradient14"].Parent = Converted["_m"]

Converted["_UIStroke15"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke15"].Thickness = 3
Converted["_UIStroke15"].Parent = Converted["_m"]

Converted["_UIGradient15"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(11.000000294297934, 11.000000294297934, 11.000000294297934)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638))
}
Converted["_UIGradient15"].Parent = Converted["_Main"]

Converted["_Button1"].Font = Enum.Font.SourceSansBold
Converted["_Button1"].Text = "Open"
Converted["_Button1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].TextSize = 14
Converted["_Button1"].TextWrapped = true
Converted["_Button1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Button1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].BorderSizePixel = 0
Converted["_Button1"].Position = UDim2.new(-0.000425502221, 0, 0.972421288, 0)
Converted["_Button1"].Size = UDim2.new(0, 83, 0, 22)
Converted["_Button1"].Visible = false
Converted["_Button1"].Name = "Button1"
Converted["_Button1"].Parent = Converted["_ScreenGui"]

Converted["_UICorner16"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner16"].Parent = Converted["_Button1"]

Converted["_UIGradient16"].Parent = Converted["_Button1"]

Converted["_UIStroke16"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke16"].Thickness = 3
Converted["_UIStroke16"].Parent = Converted["_Button1"]

Converted["_UIGradient17"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(43.00000123679638, 0, 74.0000031888485)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
Converted["_UIGradient17"].Parent = Converted["_ScreenGui"]

-- Fake Module Scripts:

local fake_module_scripts = {}


-- Fake Local Scripts:

local function AAYLK_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b3.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b3"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
	
	
		t.setWalkSpeed(16)
	
		addmode("default", {
			idle = function()
				t.setWalkSpeed(16)
				local rY, lY = raycastlegs()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5-0.2*sin((sine + 10)*4),0)*angles(0,1.5707963267948966,-0.17453292519943295*sin((sine+10)*4)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0.1 * sin(sine*4))*angles(0,1.5707963267948966,-0.08726646259971647*sin(sine*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0.1 * sin(sine*4))*angles(0,-1.5707963267948966,0.08726646259971647*sin(sine*4)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5-0.2*sin((sine + 10)*4),0)*angles(0,-1.5707963267948966,0.17453292519943295*sin((sine+10)*4)),deltaTime) 
				--MW_animatorProgressSave: RightArm,1,0,0,4,0,0,0,4,0.5,-0.2,10,4,90,0,0,4,0,0,0,4,0,-10,10,4,Head,0,0,0,4,-90,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,-0.2,0,4,90,0,0,4,0,0.1,0,4,0,-5,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,0,0.1,0,4,0,5,0,4,Torso,0,0,0,4,-90,5,0,4,0,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,-0.2,10,4,-90,0,0,4,0,0,0,4,0,10,10,4
	
			end,
			walk = function()
				local fw, rt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966+0.08726646259971647*sin(sine*6),0.6981317007977318*sin(sine*6)),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966+0.08726646259971647*sin(sine*6),0.6981317007977318*sin(sine*6)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+10)*6),0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.3*sin(sine*6),0)*angles(0,1.5707963267948966,0.6981317007977318*sin((sine+2.5)*6)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.2*sin(sine*6),0)*angles(0,-1.5707963267948966,0.6981317007977318*sin((sine+2.5)*6)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*6),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,90,5,0,6,0,0,0,4,0,40,0,6,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-90,5,0,6,0,0,0,4,0,40,0,6,Head,0,0,0,4,-90,10,10,6,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,-0.3,0,6,90,0,0,4,0,0,0,4,0,40,2.5,6,LeftLeg,-1,0,0,4,-0,0,0,4,-1,0.2,0,6,-90,0,0,4,0,0,0,4,0,40,2.5,6,Torso,0,0,0,4,-90,0,0,6,0,0.1,0,6,-0,0,0,4,0,0,0,4,180,0,0,4 	
	
			end,
	
			jump = function()
				local fw, rt = velbycfrvec()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(0,0,0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,-0.3490658503988659),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0,0,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.7453292519943295,0,3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.7453292519943295,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5,-0.5)*angles(0,-1.5707963267948966,0.3490658503988659),deltaTime) 
				--MW_animatorProgressSave: RightArm,1.5,0,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1,-0.5,0,0,1,50,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,-20,0,0,1,LeftArm,-1.5,0,0,1,-0,0,0,1,0.5,0,0,1,0,0,0,1,-0.5,0,0,1,-50,0,0,1,Torso,0,0,0,1,-100,,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,Head,0,0,0,1,-100,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-0.5,0,0,1,-90,0,0,1,-0.5,0,0,1,20,0,0,1 
	
	
			end,
			fall = function()
				t.setJumpPower(300)
				local fw, rt = velbycfrvec()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(0,0,0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,-0.3490658503988659),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0,0,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.7453292519943295,0,3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.7453292519943295,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5,-0.5)*angles(0,-1.5707963267948966,0.3490658503988659),deltaTime) 
				--MW_animatorProgressSave: RightArm,1.5,0,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1,-0.5,0,0,1,50,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,-20,0,0,1,LeftArm,-1.5,0,0,1,-0,0,0,1,0.5,0,0,1,0,0,0,1,-0.5,0,0,1,-50,0,0,1,Torso,0,0,0,1,-100,,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,Head,0,0,0,1,-100,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-0.5,0,0,1,-90,0,0,1,-0.5,0,0,1,20,0,0,1  
	
			end
		})
	end)
end
local function MBPYJ_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b4.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b4"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		local AccessoryWeld = getPartFromMesh(13610799467,13610799583)  
		local AccessoryWeld = getPartJoint(AccessoryWeld)
		local ring = getPartFromMesh(4481952601,4481952883)
		local ring = getPartJoint(ring)
	
		t.setWalkSpeed(20)
	
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.05235987755982989*sin(sine*2),3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.5707963267948966-0.03490658503988659*sin(sine*2),0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.48863983154296875,19,0.4705667495727539)*angles(0,0,0),deltaTime) 
				ring.C0=ring.C0:Lerp(cf(0,19-0.5*sin(sine*1),0.5)*angles(0,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,Head,0,0,0,4,-110,0,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,Torso,0,0,0,4,-90,,0,4,0,0.2,0,4,-0,3,0,2,0,0,0,4,180,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,-0.2,0,4,90,-2,0,2,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,0,0,0,4,0,0,0,4,ArmTool_Handle,-0.48863983154296875,0,0,4,0,0,0,4,19,0,0,4,0,0,0,4,0.4705667495727539,0,0,4,0,0,0,4,MeshPartAccessory_Handle,,0,0,1,0,0,0,1,19,-0.5,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1
	
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.05235987755982989*sin(sine*2),3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*4),0)*angles(0,1.5707963267948966-0.03490658503988659*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin(sine*4),0)*angles(0,-1.5707963267948966,-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.48863983154296875,19,0.4705667495727539)*angles(0,0,0),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(0,19-0.5*sin(sine*1),0.5)*angles(0,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,Head,0,0,0,4,-110,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,Torso,0,0,0,4,-90,,0,4,0,0.2,0,4,-0,3,0,2,0,0,0,4,180,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,0.2,0,4,90,-2,0,2,0,0,0,4,0,-40,10,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.3,0,4,-90,0,0,4,0,0,0,4,0,-40,10,4,ArmTool_Handle,-0.48863983154296875,0,0,4,0,0,0,4,19,0,0,4,0,0,0,4,0.4705667495727539,0,0,4,0,0,0,4,MeshPartAccessory_Handle,,0,0,1,0,0,0,1,19,-0.5,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1
	
			end
		})
	
		local attackAnimation=nil
		mouse.Button1Down:Connect(function()
			if attackAnimation then return end
			attackAnimation=function()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-19,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.3161255787892263),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(2.5,0.5396773815155029,0.7)*angles(0,-0.17453292519943295,0),deltaTime) 
				ring.C0=ring.C0:Lerp(cf(1.5,-1.5,1.5)*angles(1.5707963267948966,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,1,-0,0,0,1,-19,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,190,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,20,0,0,1,0,0,0,1,-50,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,ArmTool_Handle,2.5,0,0,1,0,0,0,1,0.5396773815155029,0,0,1,-10,0,0,1,0.7,0,0,1,0,0,0,1,MeshPartAccessory_Handle,1.5,0,0,0.1,90,0,0,1,-1.5,,0,1,,0,0,1,1.5,0,0,0.1,0,0,0,1 
	
	
			end
			task.wait(0.3) 
			attackAnimation=function()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-19,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.3962634015954636,0,3.3161255787892263),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(2.5,0.5396773815155029,0.7)*angles(-0.5235987755982988,-0.17453292519943295,0),deltaTime) 
				ring.C0=ring.C0:Lerp(cf(1.5,-1.5,1)*angles(1.5707963267948966,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,1,-0,0,0,1,-19,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-80,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,190,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,20,0,0,1,0,0,0,1,-50,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,ArmTool_Handle,2.5,0,0,1,-30,0,0,1,0.5396773815155029,0,0,1,-10,0,0,1,0.7,0,0,1,0,0,0,1,MeshPartAccessory_Handle,1.5,0,0,0.1,90,0,0,1,-1.5,,0,1,,0,0,1,1,0,0,0.1,0,0,0,1 
	
			end
	
			task.wait(0.3) 
	
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-19,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.3962634015954636,0,3.3161255787892263),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(2.5,0.5396773815155029,0.7)*angles(-0.5235987755982988,-0.17453292519943295,0),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,-1.5,1)*angles(1.5707963267948966,0,0),deltaTime) 
			--MW_animatorProgressSave: LeftArm,-1,0,0,1,-0,0,0,1,-19,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-80,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,190,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,20,0,0,1,0,0,0,1,-50,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,ArmTool_Handle,2.5,0,0,1,-30,0,0,1,0.5396773815155029,0,0,1,-10,0,0,1,0.7,0,0,1,0,0,0,1,MeshPartAccessory_Handle,1.5,0,0,0.1,90,0,0,1,-1.5,,0,1,,0,0,1,1.,0,0,0.1,0,0,0,1 
	
	
			attackAnimation=nil 
		end)
	
		addmode("default",{
			idle=function()
				if attackAnimation then return attackAnimation() end
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.05235987755982989*sin(sine*2),3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.5707963267948966-0.03490658503988659*sin(sine*2),0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.48863983154296875,19,0.4705667495727539)*angles(0,0,0),deltaTime) 
				ring.C0=ring.C0:Lerp(cf(0,19-0.5*sin(sine*1),0.5)*angles(0,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,Head,0,0,0,4,-110,0,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,Torso,0,0,0,4,-90,,0,4,0,0.2,0,4,-0,3,0,2,0,0,0,4,180,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,-0.2,0,4,90,-2,0,2,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,0,0,0,4,0,0,0,4,ArmTool_Handle,-0.48863983154296875,0,0,4,0,0,0,4,19,0,0,4,0,0,0,4,0.4705667495727539,0,0,4,0,0,0,4,MeshPartAccessory_Handle,,0,0,1,0,0,0,1,19,-0.5,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1
	
	
			end,
	
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.05235987755982989*sin(sine*2),3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*4),0)*angles(0,1.5707963267948966-0.03490658503988659*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin(sine*4),0)*angles(0,-1.5707963267948966,-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.48863983154296875,19,0.4705667495727539)*angles(0,0,0),deltaTime) 
				ring.C0=ring.C0:Lerp(cf(0,19-0.5*sin(sine*1),0.5)*angles(0,0,0),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,Head,0,0,0,4,-110,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,Torso,0,0,0,4,-90,,0,4,0,0.2,0,4,-0,3,0,2,0,0,0,4,180,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,0.2,0,4,90,-2,0,2,0,0,0,4,0,-40,10,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.3,0,4,-90,0,0,4,0,0,0,4,0,-40,10,4,ArmTool_Handle,-0.48863983154296875,0,0,4,0,0,0,4,19,0,0,4,0,0,0,4,0.4705667495727539,0,0,4,0,0,0,4,MeshPartAccessory_Handle,,0,0,1,0,0,0,1,19,-0.5,0,1,0,0,0,1,0.5,0,0,1,0,0,0,1
	
			end
		})
	end)
end
local function ABEFP_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b5.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b5"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		local AccessoryWeld = getPartFromMesh(11379559730,11152519811)  
		local AccessoryWeld = getPartJoint(AccessoryWeld)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://8756658612"
		t.setWalkSpeed(14)
	
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.1+0.1*sin(sine*1.e+25),0.1 * sin(sine*1.e+34),0.1 * sin(sine*9999999999999))*angles(0,0,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.3962634015954636+0.06981317007977318*sin(sine*2),0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.3962634015954636-0.06981317007977318*sin(sine*2),0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.03490658503988659*sin(sine*2),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,4,-90,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,staff_Handle,1.1,0.1,0,9999999999999999999999999,-0,0,0,4,0,0.1,0,9999999999999999999999999999999999,0,0,0,4,0,0.1,0,9999999999999,-0,0,0,4,RightLeg,1,-,0,2,0,0,0,4,-1,-0.2,0,4,80,4,0,2,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-80,-4,0,2,0,0,0,4,0,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,2,0,2,0,0,0,4,180,0,0,4
	
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1+0.1*sin(sine*1.e+32),0.1 * sin(sine*10000000000000000000),0.1 * sin(sine*10000000000000000))*angles(0,0,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*4),0)*angles(0,1.3962634015954636+0.06981317007977318*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin(sine*4),0)*angles(0,-1.3962634015954636-0.06981317007977318*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.03490658503988659*sin(sine*2),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,4,-90,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,staff_Handle,1,0.1,0,99999999999999999999999999999999,-0,0,0,4,0,0.1,0,9999999999999999999,0,0,0,4,0,0.1,0,9999999999999999,-0,0,0,4,RightLeg,1,-,0,2,0,0,0,4,-1,0.2,0,4,80,4,0,2,0,0,0,4,0,-40,10,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.3,0,4,-80,-4,0,2,0,0,0,4,0,-40,10,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,2,0,2,0,0,0,4,180,0,0,4 
	
			end
		})
	
		local attackAnimation=nil
		mouse.Button1Down:Connect(function()
			if attackAnimation then return end
			attackAnimation=function()
	
				-- Assuming 'sound' is a variable that refers to the Sound object
				sound:Play()
	
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.6179938779914944,0.3490658503988659),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1,0,-2.3)*angles(0.8726646259971648,2.0943951023931953,-0.3490658503988659),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,-0.17453292519943295,3.3161255787892263),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				--MW_animatorProgressSave: LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,150,0,0,1,0,0,0,1,20,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,staff_Handle,1.,0,0,1,50,0,0,1,0.,0,0,1,120,0,0,1,-2.3,0,0,1,-20,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-10,0,0,1,0,0,0,1,190,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1 
	
			end
			task.wait(0.2) 
			attackAnimation=function()
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.0471975511965976,0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.5,1,-3.5)*angles(0.8726646259971648,3.6651914291880923,0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.3161255787892263),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				--MW_animatorProgressSave: LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,60,0,0,1,0,0,0,1,50,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,staff_Handle,1.5,0,0,1,50,0,0,1,1,0,0,1,210,0,0,1,-3.5,0,0,1,-0,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,190,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1
	
			end
	
			task.wait(0.3) 
	
	
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.6179938779914944,0.3490658503988659),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1,0,-2.3)*angles(0.8726646259971648,2.0943951023931953,-0.3490658503988659),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,-0.17453292519943295,3.3161255787892263),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			--MW_animatorProgressSave: LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,150,0,0,1,0,0,0,1,20,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1,staff_Handle,1.,0,0,1,50,0,0,1,0.,0,0,1,120,0,0,1,-2.3,0,0,1,-20,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-10,0,0,1,0,0,0,1,190,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1 
	
	
			attackAnimation=nil 
		end)
	
		addmode("default",{
			idle=function()
				if attackAnimation then return attackAnimation() end
				local rY, lY = raycastlegs()
	
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1.1+0.1*sin(sine*1.e+25),0.1 * sin(sine*1.e+34),0.1 * sin(sine*9999999999999))*angles(0,0,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.3962634015954636+0.06981317007977318*sin(sine*2),0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.3962634015954636-0.06981317007977318*sin(sine*2),0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.03490658503988659*sin(sine*2),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,4,-90,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,staff_Handle,1.1,0.1,0,9999999999999999999999999,-0,0,0,4,0,0.1,0,9999999999999999999999999999999999,0,0,0,4,0,0.1,0,9999999999999,-0,0,0,4,RightLeg,1,-,0,2,0,0,0,4,-1,-0.2,0,4,80,4,0,2,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-80,-4,0,2,0,0,0,4,0,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,2,0,2,0,0,0,4,180,0,0,4
	
	
			end,
	
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*4),0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-0.3490658503988659,0.8726646259971648),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(1+0.1*sin(sine*1.e+32),0.1 * sin(sine*10000000000000000000),0.1 * sin(sine*10000000000000000))*angles(0,0,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.2*sin(sine*4),0)*angles(0,1.3962634015954636+0.06981317007977318*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin(sine*4),0)*angles(0,-1.3962634015954636-0.06981317007977318*sin(sine*2),-0.6981317007977318*sin((sine+10)*4)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.3490658503988659,-0.8726646259971648),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0.03490658503988659*sin(sine*2),3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,4,-90,5,0,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0,0,4,-20,0,0,4,0,0,0,4,50,0,0,4,staff_Handle,1,0.1,0,99999999999999999999999999999999,-0,0,0,4,0,0.1,0,9999999999999999999,0,0,0,4,0,0.1,0,9999999999999999,-0,0,0,4,RightLeg,1,-,0,2,0,0,0,4,-1,0.2,0,4,80,4,0,2,0,0,0,4,0,-40,10,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.3,0,4,-80,-4,0,2,0,0,0,4,0,-40,10,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,20,0,0,4,0,0,0,4,-50,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,2,0,2,0,0,0,4,180,0,0,4 
	
			end
		})
	end)
end
local function OQRL_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b7.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b7"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		local AccessoryWeld = getPartFromMesh(11711334005,11711465232)  
		local AccessoryWeld = getPartJoint(AccessoryWeld)
        game.workspace.CurrentCamera.FieldOfView = 150
	
		t.setWalkSpeed(16)
	
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.1*sin(sine*2),0.1 * sin(sine*2))*angles(0,-1.5707963267948966,-0.2792526803190927),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1.3-0.2*sin(sine*2),-0.5)*angles(0,1.3962634015954636,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.0943951023931953,0.8726646259971648+0.08726646259971647*sin(sine*2)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976-0.17453292519943295*sin((sine+10)*2),0,3.141592653589793),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.0999984741210938,0.2,1.5+0.1*sin(sine*2))*angles(-0.7853981633974483-0.08726646259971647*sin(sine*2),-0.5235987755982988,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*2),-0.5+0.1*sin(sine*2))*angles(0,-1.5707963267948966,-0.2617993877991494),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*2),0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,2,-0,0,0,2,0.5,0.1,0,2,-90,0,0,2,0,0.1,0,2,-16,0,0,2,RightLeg,1,0,0,2,0,0,0,2,-1.3,-0.2,0,2,80,0,0,2,-0.5,0,0,2,0,0,0,2,RightArm,1,0,0,2,0,0,0,2,0.5,0,0,2,120,0,0,2,0,0,0,2,50,5,0,2,Head,0,0,0,2,-60,-10,10,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,MeshPartAccessory_Handle,-1.0999984741210938,0,0,2,-45,-5,0,2,0.2,,0,2,-30,0,0,2,1.5,0.1,0,2,0,,0,2,LeftLeg,-1,0,0,2,-0,0,0,2,-1,-0.2,0,2,-90,0,0,2,-0.5,0.1,0,2,-15,,0,2,Torso,0,0,0,2,-120,0,0,2,0,0.2,0,2,-0,0,0,2,0,0,0,2,180,0,0,2
	
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5-0.1*sin((sine + 10)*4),0.1 * sin(sine*4))*angles(0,-1.5707963267948966,-0.2792526803190927),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.4*sin(sine*4),0)*angles(0,1.3962634015954636,-0.8726646259971648*sin((sine+5)*4)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.0943951023931953,0.8726646259971648+0.08726646259971647*sin((sine+10)*4)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976-0.17453292519943295*sin((sine+10)*4),0,3.141592653589793),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.0999984741210938,0.2,1.5+0.1*sin((sine + 10)*4))*angles(-0.7853981633974483-0.08726646259971647*sin((sine+10)*4),-0.5235987755982988,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.4*sin(sine*4),-0.5+0.1*sin(sine*4))*angles(0,-1.5707963267948966,-0.2617993877991494-0.8726646259971648*sin((sine+5)*4)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,-0.1,10,4,-90,0,0,4,0,0.1,0,4,-16,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,0.4,0,4,80,0,0,4,0,0,0,4,0,-50,5,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,120,0,0,4,0,0,0,4,50,5,10,4,Head,0,0,0,4,-60,-10,10,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,MeshPartAccessory_Handle,-1.0999984741210938,0,0,4,-45,-5,10,4,0.2,,0,4,-30,0,0,4,1.5,0.1,10,4,0,,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.4,0,4,-90,0,0,4,-0.5,0.1,0,4,-15,-50,5,4,Torso,0,0,0,4,-120,0,0,4,0,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4
	
			end
		})
	
		local attackAnimation=nil
		mouse.Button1Up:Connect(function()
			if attackAnimation then return end
			attackAnimation=function()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,-0.17453292519943295,3.839724354387525),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,1,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,2,-0,0,0,2,0.5,0,0,2,-90,0,0,2,0,0,0,2,,0,0,2,RightLeg,1,0,0,2,0,0,0,2,-1,0,0,2,90,0,0,2,0,0,0,2,0,0,0,2,RightArm,1,0,0,2,0,0,0,2,0.5,0,0,2,100,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-0,0,0,2,-1,0,0,2,-90,0,0,2,0,0,0,2,0,0,0,2,Head,0,0,0,2,-90,0,0,2,1,0,0,2,-10,0,0,2,0,0,0,2,220,0,0,2,MeshPartAccessory_Handle,-1.3,0,0,2,-80,0,0,2,1,0,0,2,-10,0,0,2,2.3,0,0,2,,0,0,2,Torso,0,0,0,2,-90,0,0,2,0,0,0,2,-0,0,0,2,0,0,0,2,170,0,0,2
	
	
	
			end
			task.wait(0.2) 
			attackAnimation=function()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,-0.5)*angles(0,-2.6179938779914944,-2.443460952792061),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.17453292519943295,2.9670597283903604),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,1,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-0,0,0,2,-0,0,0,2,0.5,0,0,2,-150,0,0,2,-0.5,0,0,2,-140,0,0,2,RightLeg,1,0,0,2,0,0,0,2,-1,0,0,2,90,0,0,2,0,0,0,2,0,0,0,2,RightArm,1,0,0,2,0,0,0,2,0.5,0,0,2,100,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-0,0,0,2,-1,0,0,2,-90,0,0,2,0,0,0,2,0,0,0,2,Head,0,0,0,2,-90,0,0,2,1,0,0,2,10,0,0,2,0,0,0,2,170,0,0,2,MeshPartAccessory_Handle,-1.3,0,0,2,-80,0,0,2,1,0,0,2,-10,0,0,2,2.3,0,0,2,,0,0,2,Torso,0,0,0,2,-90,0,0,2,0,0,0,2,-0,0,0,2,0,0,0,2,170,0,0,2
	
			end
			task.wait(0.2) 
			attackAnimation=function()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,-0.2)*angles(0,-2.6179938779914944,-2.443460952792061),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.17453292519943295,2.9670597283903604),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,1,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-0,0,0,2,-0,0,0,2,0.5,0,0,2,-150,0,0,2,-0.2,0,0,2,-140,0,0,2,RightLeg,1,0,0,2,0,0,0,2,-1,0,0,2,90,0,0,2,0,0,0,2,0,0,0,2,RightArm,1,0,0,2,0,0,0,2,0.5,0,0,2,100,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-0,0,0,2,-1,0,0,2,-90,0,0,2,0,0,0,2,0,0,0,2,Head,0,0,0,2,-90,0,0,2,1,0,0,2,10,0,0,2,0,0,0,2,170,0,0,2,MeshPartAccessory_Handle,-1.3,0,0,2,-80,0,0,2,1,0,0,2,-10,0,0,2,2.3,0,0,2,,0,0,2,Torso,0,0,0,2,-90,0,0,2,0,0,0,2,-0,0,0,2,0,0,0,2,170,0,0,2
	
			end
	
			task.wait(0.3) 
	
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,-0.5)*angles(0,-2.6179938779914944,-2.443460952792061),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.17453292519943295,2.9670597283903604),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,1,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
			--MW_animatorProgressSave: LeftArm,-0,0,0,2,-0,0,0,2,0.5,0,0,2,-150,0,0,2,-0.5,0,0,2,-140,0,0,2,RightLeg,1,0,0,2,0,0,0,2,-1,0,0,2,90,0,0,2,0,0,0,2,0,0,0,2,RightArm,1,0,0,2,0,0,0,2,0.5,0,0,2,100,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-0,0,0,2,-1,0,0,2,-90,0,0,2,0,0,0,2,0,0,0,2,Head,0,0,0,2,-90,0,0,2,1,0,0,2,10,0,0,2,0,0,0,2,170,0,0,2,MeshPartAccessory_Handle,-1.3,0,0,2,-80,0,0,2,1,0,0,2,-10,0,0,2,2.3,0,0,2,,0,0,2,Torso,0,0,0,2,-90,0,0,2,0,0,0,2,-0,0,0,2,0,0,0,2,170,0,0,2
	
			attackAnimation=nil 
		end)
	
		local attackAnimation=nil
		mouse.Button1Down:Connect(function()
			if attackAnimation then return end
			attackAnimation=function()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.3490658503988659,3.3161255787892263),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,1,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				--MW_animatorProgressSave: RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,100,0,0,1,0,0,0,1,90,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,20,0,0,1,0,0,0,1,190,0,0,1,MeshPartAccessory_Handle,-1.3,0,0,1,-80,0,0,1,1,0,0,1,-10,0,0,1,2.3,0,0,1,,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1
	
	
	
			end
			task.wait(0.2) 
			attackAnimation=function()
	
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0.3)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.2617993877991494,3.3161255787892263),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,0.8,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
				--MW_animatorProgressSave: RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,100,0,0,1,0.3,0,0,1,90,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,15,0,0,1,0,0,0,1,190,0,0,1,MeshPartAccessory_Handle,-1.3,0,0,1,-80,0,0,1,0.8,0,0,1,-10,0,0,1,2.3,0,0,1,,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1
	
			end
	
			task.wait(0.3) 
	
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0.3)*angles(0,1.7453292519943295,1.5707963267948966),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.2617993877991494,3.3161255787892263),deltaTime) 
			AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.3,0.8,2.3)*angles(-1.3962634015954636,-0.17453292519943295,0),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,2.9670597283903604),deltaTime) 
			--MW_animatorProgressSave: RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,100,0,0,1,0.3,0,0,1,90,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,15,0,0,1,0,0,0,1,190,0,0,1,MeshPartAccessory_Handle,-1.3,0,0,1,-80,0,0,1,0.8,0,0,1,-10,0,0,1,2.3,0,0,1,,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,170,0,0,1
	
			attackAnimation=nil 
		end)
	
	
	
	
	
		addmode("default",{
			idle=function()
				if attackAnimation then return attackAnimation() end
				t.setWalkSpeed(16)
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.1*sin(sine*4),0.1 * sin(sine*4))*angles(0,-1.5707963267948966,-0.2792526803190927),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1.3-0.2*sin(sine*4),-0.5)*angles(0,1.3962634015954636,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.0943951023931953,0.8726646259971648+0.08726646259971647*sin(sine*4)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),-0.5+0.1*sin(sine*4))*angles(0,-1.5707963267948966,-0.2617993877991494),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976-0.17453292519943295*sin((sine+5)*4),0,3.141592653589793),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.0999984741210938,0.2,1.5+0.1*sin(sine*4))*angles(-0.7853981633974483-0.08726646259971647*sin(sine*4),-0.5235987755982988,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,4,-0,0,0,4,0.5,0.1,0,4,-90,0,0,4,0,0.1,0,4,-16,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1.3,-0.2,0,4,80,0,0,4,-0.5,0,0,4,0,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0,0,4,120,0,0,4,0,0,0,4,50,5,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,-0.5,0.1,0,4,-15,,0,4,Head,0,0,0,4,-60,-10,5,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,MeshPartAccessory_Handle,-1.0999984741210938,0,0,4,-45,-5,0,4,0.2,,0,4,-30,0,0,4,1.5,0.1,0,4,0,,0,4,Torso,0,0,0,4,-120,0,0,4,0,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4
	
	
			end,
	
			walk = function()
				local fw, rt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5-0.1*sin((sine + 5)*8),0.1 * sin(sine*8))*angles(0,-1.5707963267948966,-0.2792526803190927),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.4*sin(sine*8),0)*angles(0,1.3962634015954636,-0.8726646259971648*sin((sine+2.5)*8)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,2.0943951023931953,0.8726646259971648+0.08726646259971647*sin((sine+5)*8)),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.4*sin(sine*8),-0.5+0.1*sin(sine*8))*angles(0,-1.5707963267948966,-0.2617993877991494-0.8726646259971648*sin((sine+2.5)*8)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.0471975511965976-0.17453292519943295*sin((sine+5)*8),0,3.141592653589793),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-1.0999984741210938,0.2,1.5+0.1*sin((sine + 5)*8))*angles(-0.7853981633974483-0.08726646259971647*sin((sine+5)*8),-0.5235987755982988,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*8),0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,8,-0,0,0,8,0.5,-0.1,5,8,-90,0,0,8,0,0.1,0,8,-16,0,0,8,RightLeg,1,0,0,8,0,0,0,8,-1,0.4,0,8,80,0,0,8,0,0,0,8,0,-50,2.5,8,RightArm,1,0,0,8,0,0,0,8,0.5,0,0,8,120,0,0,8,0,0,0,8,50,5,5,8,LeftLeg,-1,0,0,8,-0,0,0,8,-1,-0.4,0,8,-90,0,0,8,-0.5,0.1,0,8,-15,-50,2.5,8,Head,0,0,0,8,-60,-10,5,8,1,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,MeshPartAccessory_Handle,-1.0999984741210938,0,0,8,-45,-5,5,8,0.2,,0,8,-30,0,0,8,1.5,0.1,5,8,0,,0,8,Torso,0,0,0,8,-120,0,0,8,0,0.2,0,8,-0,0,0,8,0,0,0,8,180,0,0,8
	
			end
		})
	end)
end
local function XGMN_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b6.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b6"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
	
				Neck.C0=Neck.C0:Lerp(cf(0,-50000,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,1,-90,0,0,1,-50000,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1 
	
			end,
			walk = function()
				local fw, rt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				Neck.C0=Neck.C0:Lerp(cf(0,-50000,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0.8726646259971648*sin(sine*8)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,-0.8726646259971648*sin(sine*8)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0.8726646259971648*sin(sine*8)),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-0.8726646259971648*sin(sine*8)),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,8,-90,0,0,8,-50000,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,LeftLeg,-1,0,0,8,-0,0,0,8,-1,0,0,8,-90,0,0,8,0,0,0,8,0,50,0,8,Torso,0,0,0,8,-90,0,0,8,0,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,RightArm,1,0,0,8,0,0,0,8,0.5,0,0,8,90,0,0,8,0,0,0,8,0,-50,0,8,RightLeg,1,0,0,8,0,0,0,8,-1,0,0,8,90,0,0,8,0,0,0,8,0,50,0,8,LeftArm,-1,0,0,8,-0,0,0,8,0.5,0,0,8,-90,0,0,8,0,0,0,8,0,-50,0,8 
	
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
end
local function DZXU_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b2.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b2"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		t.setWalkSpeed(20)
	
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,-19+0.2*sin(sine*4),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,18-0.2*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-0.2 * sin(sine*4),-0.5)*angles(0,0,-1.5707963267948966+0.17453292519943295*sin((sine+10)*4)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,18,0)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+10)*4),0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,18-0.2*sin(sine*4),0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,-0.2 * sin(sine*4),-0.5)*angles(0,0,1.5707963267948966-0.17453292519943295*sin((sine+10)*4)),deltaTime) 
				--MW_animatorProgressSave: Torso,0,0,0,4,-90,0,0,4,-19,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,18,-0.2,0,4,-90,0,0,4,0,0,0,4,0,0,0,4,LeftArm,-1.,0,0,4,-0,0,0,4,,-0.2,0,4,0,0,0,4,-0.5,0,0,4,-90,10,10,4,Head,0,0,0,4,-90,-10,10,4,18,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightLeg,1,0,0,4,0,0,0,4,18,-0.2,0,4,90,0,0,4,0,0,0,4,0,0,0,4,RightArm,1,0,0,4,0,0,0,4,,-0.2,0,4,0,0,0,4,-0.5,0,0,4,90,-10,10,4
	
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Ychg=velYchg()/20
	
				Neck.C0=Neck.C0:Lerp(cf(0,18,0)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+5)*8),0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,18+0.2*sin(sine*8),0)*angles(0,-1.5707963267948966,0.6981317007977318*sin((sine+5)*8)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,-19+0.2*sin(sine*8),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,18-0.3*sin(sine*8),0)*angles(0,1.5707963267948966,0.6981317007977318*sin((sine+5)*8)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,-0.2 * sin(sine*8),-0.5)*angles(0,0,1.5707963267948966-0.17453292519943295*sin((sine+5)*8)),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,-0.2 * sin(sine*8),-0.5)*angles(0,0,-1.5707963267948966+0.17453292519943295*sin((sine+5)*8)),deltaTime) 
				--MW_animatorProgressSave: Head,0,0,0,8,-90,-10,5,8,18,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,LeftLeg,-1,0,0,8,-0,0,0,8,18,0.2,0,8,-90,0,0,8,0,0,0,8,0,40,5,8,Torso,0,0,0,8,-90,0,0,8,-19,0.2,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,RightLeg,1,0,0,8,0,0,0,8,18,-0.3,0,8,90,0,0,8,0,0,0,8,0,40,5,8,RightArm,1,0,0,8,0,0,0,8,,-0.2,0,8,0,0,0,8,-0.5,0,0,8,90,-10,5,8,LeftArm,-1.,0,0,8,-0,0,0,8,,-0.2,0,8,0,0,0,8,-0.5,0,0,8,-90,10,5,8
	
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
end
local function JAGTIP_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b8.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b8"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
				t.setWalkSpeed(90)
				local rY, lY = raycastlegs()
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin(sine*128),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				--MW_animatorProgressSave: Torso,0,0,0,128,-90,0,0,128,0,0.3,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,Head,0,0,0,128,-90,0,0,128,1,0,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,RightLeg,1,0,0,128,0,0,0,128,-1,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,RightArm,1,0,0,128,0,0,0,128,0.5,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,LeftArm,-1,0,0,128,-0,0,0,128,0.5,0,0,128,-90,0,0,128,0,0,0,128,-90,0,0,128,LeftLeg,-1,0,0,128,-0,0,0,128,-1,0,0,128,-90,0,0,128,0,0,0,128,-90,0,0,128
	
			end,
			walk = function()
				local fw, rt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin(sine*128),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				--MW_animatorProgressSave: Torso,0,0,0,128,-90,0,0,128,0,0.3,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,Head,0,0,0,128,-90,0,0,128,1,0,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,RightLeg,1,0,0,128,0,0,0,128,-1,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,RightArm,1,0,0,128,0,0,0,128,0.5,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,LeftArm,-1,0,0,128,-0,,0,2,0.5,0,0,128,-90,,0,2,0,0,0,128,-90,,0,2,LeftLeg,-1,0,0,128,-0,0,0,128,-1,0,0,128,-90,0,0,128,0,0,0,128,-90,0,0,128
	
			end,
	
			jump = function()
				local fw, rt = velbycfrvec()
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin(sine*128),50 * sin(sine*128))*angles(-1.5707963267948966+174532925.19943297*sin(sine*128),0,3.141592653589793+174.53292519943295*sin(sine*128)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				--MW_animatorProgressSave: Torso,0,,0,128,-90,10000000000,0,128,0,0.3,0,128,-0,0,0,128,0,50,0,128,180,10000,0,128,Head,0,0,0,128,-90,0,0,128,1,0,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,RightLeg,1,0,0,128,0,0,0,128,-1,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,RightArm,1,0,0,128,0,0,0,128,0.5,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,LeftArm,-1,0,0,128,-0,,0,2,0.5,0,0,128,-90,,0,2,0,0,0,128,-90,,0,2,LeftLeg,-1,0,0,128,-0,0,0,128,-1,0,0,128,-90,0,0,128,0,0,0,128,-90,0,0,128 
	
			end,
			fall = function()
				local fw, rt = velbycfrvec()
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin(sine*128),50 * sin(sine*128))*angles(-1.5707963267948966+174532925.19943297*sin(sine*128),0,3.141592653589793+174.53292519943295*sin(sine*128)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,1.5707963267948966),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,-1.5707963267948966),deltaTime) 
				--MW_animatorProgressSave: Torso,0,,0,128,-90,10000000000,0,128,0,0.3,0,128,-0,0,0,128,0,50,0,128,180,10000,0,128,Head,0,0,0,128,-90,0,0,128,1,0,0,128,-0,0,0,128,0,0,0,128,180,0,0,128,RightLeg,1,0,0,128,0,0,0,128,-1,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,RightArm,1,0,0,128,0,0,0,128,0.5,0,0,128,90,0,0,128,0,0,0,128,90,0,0,128,LeftArm,-1,0,0,128,-0,,0,2,0.5,0,0,128,-90,,0,2,0,0,0,128,-90,,0,2,LeftLeg,-1,0,0,128,-0,0,0,128,-1,0,0,128,-90,0,0,128,0,0,0,128,-90,0,0,128 
	
			end
		})
	end)
end
local function APWQM_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b9.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b9"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		t.setWalkSpeed(30)
	
		addmode("default",{
			idle=function()
	
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5+0.1*sin(sine*4),0)*angles(0,1.5707963267948966,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+10)*4),0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.1*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				--MW_animatorProgressSave: RightLeg,1,0,0,4,0,0,0,4,-1,-0.2,0,4,90,0,0,4,0,0,0,4,0,0,0,4,RightArm,1,0,0,4,0,0,0,4,0.5,0.1,0,4,90,0,0,4,0,0,0,4,0,0,0,4,Head,0,0,0,4,-90,-10,10,4,1,,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,0,0,0,4,0,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,LeftArm,-1,0,0,4,-0,0,0,4,0.5,0.1,0,4,-90,0,0,4,0,0,0,4,0,0,0,4 
	
			end,
			walk=function()
				local fw,rt=velbycfrvec()
	
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*8),0)*angles(0,1.5707963267948966,1.0471975511965976*sin(sine*8)),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5+0.2*sin(sine*8),-0.2 * sin(sine*8))*angles(0,1.5707963267948966,1.0471975511965976*sin(sine*8)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*8),0)*angles(0,-1.5707963267948966,1.0471975511965976*sin(sine*8)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*16),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.2*sin(sine*8),0.2 * sin(sine*8))*angles(0,-1.5707963267948966,0.8726646259971648*sin(sine*8)),deltaTime) 
				--MW_animatorProgressSave: RightLeg,1,0,0,8,0,0,0,8,-1,-0.2,0,8,90,0,0,8,0,0,0,8,0,60,0,8,RightArm,1,0,0,8,0,0,0,8,0.5,0.2,0,8,90,0,0,8,0,-0.2,0,8,0,60,0,8,Head,0,0,0,8,-90,0,10,16,1,,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,LeftLeg,-1,0,0,8,-0,0,0,8,-1,-0.2,0,8,-90,0,0,8,0,0,0,8,0,60,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.2,0,16,-0,0,0,8,0,0,0,8,180,0,0,8,LeftArm,-1,0,0,8,-0,0,0,8,0.5,0.2,0,8,-90,0,0,8,,0.2,0,8,0,50,0,8
	
			end,
	
			jump = function()
				local fw, rt = velbycfrvec()
	
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1
	
			end,
			fall = function()
				local fw, rt = velbycfrvec()
	
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-3.141592653589793),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				--MW_animatorProgressSave: RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1
	
			end
		})
	end)
end
local function XBNBR_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.b1.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_b1"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,3+0.2*sin(sine*8),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5+0.2*sin(sine*8),-0.5)*angles(0,0,0.8726646259971648+0.6981317007977318*sin((sine-2.5)*8)),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5+0.2*sin(sine*8),-0.5)*angles(0,0,-0.8726646259971648-0.6981317007977318*sin((sine-2.5)*8)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+1.25)*8),0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,-0.17453292519943295-0.17453292519943295*sin((sine+10)*8)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0.17453292519943295+0.17453292519943295*sin((sine+10)*8)),deltaTime) 
				--MW_animatorProgressSave: Torso,0,0,0,8,-90,0,0,8,3,0.2,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,RightArm,1.5,0,0,8,0,0,0,8,0.5,0.2,0,8,,0,0,8,-0.5,0,0,8,50,40,-2.5,8,LeftArm,-1.5,0,0,8,-0,0,0,8,0.5,0.2,0,8,,0,0,8,-0.5,0,0,8,-50,-40,-2.5,8,Head,0,0,0,8,-120,10,1.25,8,1,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,LeftLeg,-1,0,0,8,-0,0,0,8,-1,,0,8,-90,0,0,8,0,0,0,8,-10,-10,10,8,RightLeg,1,0,0,8,0,0,0,8,-1,,0,8,90,0,0,8,0,0,0,8,10,10,10,8
	
			end,
			walk = function()
				local fw, rt = velbycfrvec()
	
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,3+0.2*sin(sine*8),0)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5+0.2*sin(sine*8),-0.5)*angles(0,0,0.8726646259971648+0.6981317007977318*sin((sine-2.5)*8)),deltaTime) 
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5+0.2*sin(sine*8),-0.5)*angles(0,0,-0.8726646259971648-0.6981317007977318*sin((sine-2.5)*8)),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953+0.17453292519943295*sin((sine+1.25)*8),0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0.17453292519943295+0.17453292519943295*sin((sine+10)*8)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,-0.17453292519943295-0.17453292519943295*sin((sine+10)*8)),deltaTime) 
				--MW_animatorProgressSave: Torso,0,0,0,8,-110,0,0,8,3,0.2,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,RightArm,1.5,0,0,8,0,0,0,8,0.5,0.2,0,8,,0,0,8,-0.5,0,0,8,50,40,-2.5,8,LeftArm,-1.5,0,0,8,-0,0,0,8,0.5,0.2,0,8,,0,0,8,-0.5,0,0,8,-50,-40,-2.5,8,Head,0,0,0,8,-120,10,1.25,8,1,0,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,LeftLeg,-1,0,0,8,-0,0,0,8,-1,,0,8,-90,0,0,8,0,0,0,8,10,10,10,8,RightLeg,1,0,0,8,0,0,0,8,-1,,0,8,90,0,0,8,0,0,0,8,-10,-10,10,8
	
			end
		})
	end)
end
local function DHTJ_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.buttons.SA.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_SA"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		stopreanimate()
	end)
end
local function AKXDKGM_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.print
    local script = Instance.new("LocalScript")
    script.Name = "print"
    script.Parent = Converted["_Main"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	print("Enjoy Zyph Hub V2!")
	print(" ")
	print(" ")
	print("--CREDITS--")
	print(" ")
	print("Animations and UI by Zyphon")
	print(" ")
	print("Powered by patchma")
	print(" ")
	print(" ")
	print("---Enjoy the UI!---")
end
local function IJCBYUD_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.a.a3.Anim
    local script = Instance.new("LocalScript")
    script.Name = "Anim"
    script.Parent = Converted["_a3"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
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
		local AccessoryWeld = getPartFromMesh(6837450,6837452)
		local AccessoryWeld = getPartJoint(AccessoryWeld)
		local Mask = getPartFromMesh(4903997807,5281754475)
		local Mask = getPartJoint(Mask)
		t.setWalkSpeed(16)
	
		addmode("default", {
			idle = function()
				local rY, lY = raycastlegs()
	
				local Cfw, Crt = velchgbycfrvec()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0,0.17453292519943295,-0.3490658503988659+0.3490658503988659*sin((sine+10)*4)),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.04999999329447746,0.09999990463256836,-0.10027224570512772)*angles(0,0,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966-0.08726646259971647*sin((sine+10)*4),0,3.141592653589793),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*4),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*4),0)*angles(0,1.5707963267948966,0),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*4),0)*angles(0,-1.5707963267948966,0),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(0,0,0.3490658503988659-0.3490658503988659*sin((sine+10)*4)),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1.5,0,0,4,-0,0,0,4,0.5,0,0,4,10,,0,4,-0.5,0,0,4,-20,20,10,4,Pot_Handle,-0.04999999329447746,0,0,4,0,0,0,4,0.09999990463256836,0,0,4,0,0,0,4,-0.10027224570512772,0,0,4,0,0,0,4,Head,0,0,0,4,-90,-5,10,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,,0,4,Torso,0,0,0,4,-90,0,0,4,0,0.2,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightLeg,1,0,0,4,0,0,0,4,-1,-0.2,0,4,90,,0,4,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,-0.2,0,4,-90,0,0,4,0,0,0,4,0,0,0,4,RightArm,1.5,0,0,4,0,0,0,4,0.5,0,0,4,,0,0,4,-0.5,0,0,4,20,-20,10,4
			end,
			walk = function()
				local Vfw, Vrt = velbycfrvec()
	
				local rY, lY = raycastlegs()
	
				local Cfw, Crt = velchgbycfrvec()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0,-1.5707963267948966,-0.6981317007977318*sin((sine+2.5)*8)),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.3*sin(sine*8),0)*angles(0,1.5707963267948966,-0.6981317007977318*sin((sine+10)*8)),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.04999999329447746,0.09999990463256836,-0.10027224570512772)*angles(0,0,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966-0.13962634015954636*sin((sine+5)*8),0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.1*sin(sine*8),0)*angles(0,-1.5707963267948966,-0.6981317007977318*sin((sine+10)*8)),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*8),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,-0.6981317007977318*sin((sine+2.5)*8)),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1,0,0,8,-0,0,0,8,0.5,,0,8,-90,0,0,8,0,0,0,8,0,-40,2.5,8,RightLeg,1,0,0,8,0,0,0,8,-1,-0.3,0,8,90,0,0,8,0,0,0,8,0,-40,10,8,Pot_Handle,-0.04999999329447746,0,0,8,0,0,0,8,0.09999990463256836,0,0,8,0,0,0,8,-0.10027224570512772,0,0,8,0,0,0,8,Head,0,0,0,8,-90,-8,5,8,1,0,0,8,-0,0,0,4,0,0,0,8,180,,0,4,LeftLeg,-1,0,0,8,-0,0,0,8,-1,0.1,0,8,-90,0,0,8,0,0,0,8,0,-40,10,8,Torso,0,0,0,8,-90,0,0,8,0,0.2,0,8,-0,0,0,8,0,0,0,8,180,0,0,8,RightArm,1,0,0,8,0,0,0,8,0.5,0,0,8,90,0,0,8,0,0,0,8,0,-40,2.5,8
			end,
			jump = function()
				local Vfw, Vrt = velbycfrvec()
	
				local Cfw, Crt = velchgbycfrvec()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-2,0.5,0)*angles(0,1.3962634015954636,-0.3490658503988659),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.4835298641951802,-0.3490658503988659),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.04999999329447746,0.09999990463256836,-0.10027224570512772)*angles(0,0,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.2217304763960306,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.4835298641951802,0.3490658503988659),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(2,0.5,0)*angles(0,-1.3962634015954636,0.3490658503988659),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-2,0,0,4,-0,0,0,4,0.5,0,0,4,80,,0,4,,0,0,4,-20,,10,4,RightLeg,1,0,0,4,0,0,0,4,-1,,0,4,85,,0,4,0,0,0,4,-20,0,0,4,Pot_Handle,-0.04999999329447746,0,0,4,0,0,0,4,0.09999990463256836,0,0,4,0,0,0,4,-0.10027224570512772,0,0,4,0,0,0,4,Head,0,0,0,4,-70,,10,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,,0,4,-85,0,0,4,0,0,0,4,20,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightArm,2,0,0,4,0,0,0,4,0.5,0,0,4,-80,0,0,4,-0.,0,0,4,20,,10,4
			end,
			fall = function()
				local Vfw, Vrt = velbycfrvec()
	
				local Cfw, Crt = velchgbycfrvec()
	
				LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0,0,-0.8726646259971648),deltaTime) 
				RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.4835298641951802,0.3490658503988659),deltaTime) 
				AccessoryWeld.C0=AccessoryWeld.C0:Lerp(cf(-0.04999999329447746,0.09999990463256836,-0.10027224570512772)*angles(0,0,0),deltaTime) 
				Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 
				LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.4835298641951802,-0.3490658503988659),deltaTime) 
				RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
				RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(0,0,0.8726646259971648),deltaTime) 
				--MW_animatorProgressSave: LeftArm,-1.5,0,0,4,-0,0,0,4,0.5,0,0,4,,,0,4,-0.5,0,0,4,-50,,10,4,RightLeg,1,0,0,4,0,0,0,4,-1,,0,4,85,,0,4,0,0,0,4,20,0,0,4,Pot_Handle,-0.04999999329447746,0,0,4,0,0,0,4,0.09999990463256836,0,0,4,0,0,0,4,-0.10027224570512772,0,0,4,0,0,0,4,Head,0,0,0,4,-110,,10,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,,0,4,LeftLeg,-1,0,0,4,-0,0,0,4,-1,,0,4,-85,0,0,4,0,0,0,4,-20,0,0,4,Torso,0,0,0,4,-90,0,0,4,0,,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,RightArm,1.5,0,0,4,0,0,0,4,0.5,0,0,4,0,0,0,4,-0.5,0,0,4,50,,10,4
			end
		})
	
	end)
end
local function VBYJWA_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.previous.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_previous"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	local stuff = script.Parent.Parent.a
	local stuffagain2 = stuff.a3
	local stuffagainagain = script.Parent.Parent.buttons
	local stuff1 = stuffagainagain.b1
	local stuff2 = stuffagainagain.b2
	local stuff3 = stuffagainagain.b3
	local stuff4 = stuffagainagain.b4
	local stuff5 = stuffagainagain.b5
	local stuff6 = stuffagainagain.b6
	local stuff7 = stuffagainagain.b7
	local stuff8 = stuffagainagain.b8
	local stuff9 = stuffagainagain.b9
	
	button.MouseButton1Click:Connect(function()
		stuffagain2.Visible = false
		stuff1.Visible = true
		stuff2.Visible = true
		stuff3.Visible = true
		stuff4.Visible = true
		stuff5.Visible = true
		stuff6.Visible = true
		stuff7.Visible = true
		stuff8.Visible = true
		stuff9.Visible = true
		print("previous")
	end)
end
local function VSBD_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.next.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_next"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	local stuff = script.Parent.Parent.a
	local stuffagain2 = stuff.a3
	local stuffagainagain = script.Parent.Parent.buttons
	local stuff1 = stuffagainagain.b1
	local stuff2 = stuffagainagain.b2
	local stuff3 = stuffagainagain.b3
	local stuff4 = stuffagainagain.b4
	local stuff5 = stuffagainagain.b5
	local stuff6 = stuffagainagain.b6
	local stuff7 = stuffagainagain.b7
	local stuff8 = stuffagainagain.b8
	local stuff9 = stuffagainagain.b9
	
	button.MouseButton1Click:Connect(function()
		stuffagain2.Visible = true
		stuff1.Visible = false
		stuff2.Visible = false
		stuff3.Visible = false
		stuff4.Visible = false
		stuff5.Visible = false
		stuff6.Visible = false
		stuff7.Visible = false
		stuff8.Visible = false
		stuff9.Visible = false
		print("next")
	end)
end
local function NVFOA_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.Drag
    local script = Instance.new("LocalScript")
    script.Name = "Drag"
    script.Parent = Converted["_Main"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
local function GRHNIT_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.x.Function
    local script = Instance.new("LocalScript")
    script.Name = "Function"
    script.Parent = Converted["_x"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	local gui = script.Parent.Parent.Parent
	
	button.MouseButton1Click:Connect(function()
		gui:Destroy()
	end)
end
local function WGCIK_fake_script() -- Fake Script: StarterGui.ScreenGui.Main.m.Function
    local script = Instance.new("LocalScript")
    script.Name = "Function"
    script.Parent = Converted["_m"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	local frame = script.Parent.Parent
	local otherbutton = script.Parent.Parent.Parent.Button1
	
	button.MouseButton1Click:Connect(function()
		otherbutton.Visible = true
		frame.Visible = false
	end)
end
local function NDKZB_fake_script() -- Fake Script: StarterGui.ScreenGui.Button1.Function
    local script = Instance.new("LocalScript")
    script.Name = "Function"
    script.Parent = Converted["_Button1"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local button = script.Parent
	local frame = script.Parent.Parent.Main
	
	button.MouseButton1Click:Connect(function()
		frame.Visible = true
		button.Visible = false
	end)

placeholders=true
highlightflingtargets=true
allowshiftlock=true
ctrltp=true
clickfling=true
claimwait=true

end

coroutine.wrap(AAYLK_fake_script)()
coroutine.wrap(MBPYJ_fake_script)()
coroutine.wrap(ABEFP_fake_script)()
coroutine.wrap(OQRL_fake_script)()
coroutine.wrap(XGMN_fake_script)()
coroutine.wrap(DZXU_fake_script)()
coroutine.wrap(JAGTIP_fake_script)()
coroutine.wrap(APWQM_fake_script)()
coroutine.wrap(XBNBR_fake_script)()
coroutine.wrap(DHTJ_fake_script)()
coroutine.wrap(AKXDKGM_fake_script)()
coroutine.wrap(IJCBYUD_fake_script)()
coroutine.wrap(VBYJWA_fake_script)()
coroutine.wrap(VSBD_fake_script)()
coroutine.wrap(NVFOA_fake_script)()
coroutine.wrap(GRHNIT_fake_script)()
coroutine.wrap(WGCIK_fake_script)()
coroutine.wrap(NDKZB_fake_script)()