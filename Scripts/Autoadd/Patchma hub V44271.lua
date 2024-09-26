--[[
	patchma hub made by MyWorld
   	- continued by Emper due to MyWorld quitting
    optimize the optimized

	IDs of paid accessories:

	-for arms 18641142410,18641077392,11159410305,11263254795 or 14255556501,14255554762 or 12344545199,12344591101 or 13839976999,13831200263

	-for legs 18641187217,18641157833,14768693948,14768701869 or 11159483910,12652786974 or 17401151565,17387616772

	-for torso 18641046146, 14255528083 or 13421786478 or 14768678294

	or anything else that covers ur torso. examples:
	14532301415,13423624885,11502853991,14053485259,13779879140,14443132226,17163407577,16297156693,17180496303,17171230401
	can be same stuff but different colors

	there are 156 ways to make a rig with the ids above

	IDs of free accessories:
	3033910400,3409612660,3438342658,3398308134,4324158403,3822880197,4154538250,3443038622,4819740796

	accessories for Immortality Lord:
	head: 17375337078 or 17270164442
	body: 17270178857,17270001635,17269952801,17269983359,17269998373
	wings: 17270231731,17270225913
	sword: 17326812233,17326800544
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
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack

--the script doesnt have to read global varaibles every time to get them
--why not have them saved in local varaibles for faster access times
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
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
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01

--not "local function rs" to not assign debug names
local rs=function(l) 
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

--it runs even faster if u call __index and __newindex of metatables of userdata directly
local getMetamethodFromErrorStack=function(userdata,f,test)
	local ret=nil
	xpcall(f,function()
		ret=debug.info(2,"f")
	end,userdata,nil,0)
	if (type(ret)~="function") or not test(ret) then
		return f
	end
	return ret
end
local insSet=getMetamethodFromErrorStack(game,function(a,b,c) a[b]=c end,function(f) local a=i("Folder") local b=rs() f(a,"Name",b) return a.Name==b end)
local insGet=getMetamethodFromErrorStack(game,function(a,b) return a[b] end,function(f) local a=i("Folder") local b=rs() a.Name=b return f(a,"Name")==b end)
local cfGet=getMetamethodFromErrorStack(cf_0,function(a,b) return a[b] end,function(f) return f(cf(1,2,3),"Position")==v3(1,2,3) end)
local cfMul=getMetamethodFromErrorStack(cf_0,function(a,b) return a*b end,function(f) return angles(1,2,3)*angles(1,2,3)==f(angles(1,2,3),angles(1,2,3)) end)
local cfAdd=getMetamethodFromErrorStack(cf_0,function(a,b) return a+b end,function(f) return cf(1,2,3)+v3(1,2,3)==f(cf(1,2,3),v3(1,2,3)) end)
local v3Get=getMetamethodFromErrorStack(v3_0,function(a,b) return a[b] end,function(f) return v3(1,2,3).Unit==f(v3(1,2,3),"Unit") end)
--multiplying and adding vector3 is faster if you use the * and + operators

--no need to index instances every time to call their functions
local Clone=insGet(game,"Clone")
local ClearAllChildren=insGet(game,"ClearAllChildren")
local Destroy=insGet(game,"Destroy")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local GetChildren=insGet(game,"GetChildren")
local GetDescendants=insGet(game,"GetDescendants")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")

--findfirstchildofclass faster than getservice
local plrs=FindFirstChildOfClass(game,"Players")
local rus=FindFirstChildOfClass(game,"RunService")
local ws=FindFirstChildOfClass(game,"Workspace")
local uis=FindFirstChildOfClass(game,"UserInputService")
local gs=FindFirstChildOfClass(game,"GuiService")
local sg=FindFirstChildOfClass(game,"StarterGui")
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
local stepped=insGet(rus,"Stepped")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")

local GetPlayers=insGet(plrs,"GetPlayers")
local SetCoreGuiEnabled=insGet(sg,"SetCoreGuiEnabled")
local GetCoreGuiEnabled=insGet(sg,"GetCoreGuiEnabled")
local Raycast=insGet(ws,"Raycast")
local Connect=heartbeat.Connect
local Disconnect=Connect(GetPropertyChangedSignal(game,"CreatorId"),type).Disconnect
local Wait=heartbeat.Wait
local GetMouseLocation=insGet(uis,"GetMouseLocation")
local GetFocusedTextBox=insGet(uis,"GetFocusedTextBox")
local GetMouseDelta=insGet(uis,"GetMouseDelta")
local IsMouseButtonPressed=insGet(uis,"IsMouseButtonPressed")
local IsKeyDown=insGet(uis,"IsKeyDown")

local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")

local guiTheme={
	guiTitle="patchma hub (E.U.)",
	windowTitleColor=c3(0,0,1),
	windowTopColor=c3(0,0,0),
	windowBottomColor=c3(0,0,0.584314),
	windowMinimizedSize={X=220,Y=22},
	windowRegularSize={X=220,Y=290},
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

	{meshid="17374767929",textureid="",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
	{meshid="17374767929",textureid="",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},

	{meshid="12344207333",textureid="",C0=angles(2,0,0),Name="Left Arm"},
	{meshid="12344206657",textureid="",C0=angles(2,0,0),Name="Right Arm"},

	{meshid="13831073174",textureid="",C0=cfMul(cf(0.017,0,-0.23),angles(-1.4835298641951802,-0.15707963267948966,2.199114857512855)),Name="Left Arm"},
	{meshid="13839903766",textureid="",C0=cfMul(cf(0,-0.62,-0.01),angles(1.6580627893946132,0.15707963267948966,-2.199114857512855)),Name="Right Arm"},

	{meshid="11159370334",textureid="11159285454",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
	{meshid="12652772399",textureid="12652775021",C0=cf(0,-0.125,0),Name="Right Leg"},

	{meshid="14768684979",textureid="",C0=angles(0,0,1.5707963267948966),Name="Left Leg"},
	{meshid="14768684979",textureid="",C0=angles(0,0,1.5707963267948966),Name="Right Leg"},

	{meshid="17387586286",textureid="",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
	{meshid="17387586286",textureid="",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Leg"},

	{meshid="14768666349",textureid="",C0=cf_0,Name="Torso"},
	{meshid="14241018198",textureid="",C0=cf_0,Name="Torso"},
	{meshid="13421774668",textureid="",C0=cf_0,Name="Torso"},

	{meshid="4324138105",textureid="4324138210",C0=cfMul(angles(-1.6144295580947547,1.5707963267948966,0),cf(-0.125,0.3,0)),Name="Left Arm"},
	{meshid="4154474745",textureid="4154474807",C0=cfMul(angles(1.5271630954950384,-1.5707963267948966,0),cf(-0.125,-0.3,0)),Name="Left Arm"},
	{meshid="3030546036",textureid="3650191503",C0=cfMul(angles(1.5271630954950384,1.5707963267948966,0),cf(0.125,-0.3,0)),Name="Right Arm"},
	{meshid="3030546036",textureid="3443321249",C0=cfMul(angles(-1.6144295580947547,-1.5707963267948966,0),cf(0.125,0.3,0)),Name="Right Arm"},
	{meshid="3030546036",textureid="3360974849",C0=cfMul(angles(1.5271630954950384,1.5707963267948966,0),cf(-0.125,-0.35,0)),Name="Left Leg"},
	{meshid="3030546036",textureid="3360978739",C0=cfMul(angles(-1.6144295580947547,-1.5707963267948966,0),cf(-0.125,0.3,0)),Name="Left Leg"},
	{meshid="3030546036",textureid="3033898741",C0=cfMul(angles(1.5271630954950384,-1.5707963267948966,0),cf(0.125,-0.35,0)),Name="Right Leg"},
	{meshid="3030546036",textureid="3409604993",C0=cfMul(angles(-1.6144295580947547,1.5707963267948966,0),cf(0.125,0.3,0)),Name="Right Leg"},
	{meshid="4819720316",textureid="4819722776",C0=angles(0,0,0.2617993877991494),Name="Torso"},

	-- the noob rig:

	{meshid="18640899369",textureid="18640899481",C0=cf_0,Name="Torso"},
	{meshid="18640914129",textureid="18640914168",C0=cf_0,Name="Left Arm"},
	{meshid="18640901641",textureid="18640901676",C0=cf_0,Name="Right Leg"},
	{meshid="18640914129",textureid="18640914168",C0=cf_0,Name="Right Arm"},
	{meshid="18640901641",textureid="18640901676",C0=cf_0,Name="Left Leg"},
}

local gp=function(p,n,cl)
	for i,v in next,GetChildren(p) do
		if IsA(v,cl) and (insGet(v,"Name")==n) then
			return v
		end
	end
	return nil
end
local timegp=function(p,n,c,t)
	t=osclock()+t
	while t>osclock() do
		for i,v in next,GetChildren(p) do
			if IsA(v,c) and (insGet(v,"Name")==n) then
				return v
			end
		end
		Wait(stepped)
	end
	return nil
end
local makeplaceholder=function(v)
	if typeof(v)~="Instance" then
		return nil
	end
	if not insGet(v,"Archivable") then
		insSet(v,"Archivable",true)
	end
	v=Clone(v)
	for i,v in next,GetChildren(v) do
		if IsA(v,"SpecialMesh") then
			insSet(v,"Name",rs())
			ClearAllChildren(v)
		else
			Destroy(v)
		end
	end
	insSet(v,"Name",rs())
	insSet(v,"Anchored",true)
	insSet(v,"CanCollide",false)
	insSet(v,"Transparency",0.25)
	insSet(v,"Parent",ws)
	return v
end
local emptyfunction=function() end

local i1=i("Frame") 
local i2=i("Frame") 
local i3=i("Frame") 
local i4=i("ScrollingFrame") 
local i5=i("UIListLayout") 
local i6=i("UIGradient") 
local i7=i("TextBox") 
local i8=i("TextButton") 
local i9=i("UIGradient") 
local i10=i("ScreenGui") 
insSet(i1,"AnchorPoint",v2(0.5,0))
insSet(i1,"Active",true)
insSet(i1,"BorderSizePixel",0)
insSet(i1,"ClipsDescendants",true)
insSet(i1,"Position",u2(0.5,0,0.5,guiTheme.windowRegularSize.Y/-2))
insSet(i1,"Size",u2(0,guiTheme.windowRegularSize.X,0,guiTheme.windowRegularSize.Y))
insSet(i1,"Name",rs())
insSet(i1,"Parent",i10)
insSet(i2,"BackgroundColor3",c3(1,1,1))
insSet(i2,"BorderSizePixel",0)
insSet(i2,"Size",u2(0,guiTheme.windowRegularSize.X,0,guiTheme.windowRegularSize.Y))
insSet(i2,"Name",rs())
insSet(i2,"Parent",i1)
insSet(i3,"BackgroundColor3",c3(1,1,1))
insSet(i3,"BorderSizePixel",0)
insSet(i3,"Position",u2(0,5,0,guiTheme.windowMinimizedSize.Y-2))
insSet(i3,"Size",u2(1,-10,0,guiTheme.windowRegularSize.Y-guiTheme.windowMinimizedSize.Y-3))
insSet(i3,"Name",rs())
insSet(i3,"Parent",i2)
insSet(i4,"Active",true)
insSet(i4,"BackgroundTransparency",1)
insSet(i4,"BorderSizePixel",0)
insSet(i4,"Size",u2(1,-3,1,0))
insSet(i4,"AutomaticCanvasSize",e.AutomaticSize.Y)
insSet(i4,"CanvasSize",u2(0,0,0,0))
insSet(i4,"ScrollBarThickness",7)
insSet(i4,"Name",rs())
insSet(i4,"Parent",i3)
insSet(i5,"Name",rs())
insSet(i5,"Parent",i4)
insSet(i5,"SortOrder",e.SortOrder.LayoutOrder)
insSet(i6,"Name",rs())
insSet(i6,"Parent",i3)
insSet(i6,"Color",cs({csk(0,guiTheme.listTopColor),csk(1,guiTheme.listBottomColor)}))
insSet(i6,"Rotation",90)
insSet(i7,"Font",e.Font.SourceSans)
insSet(i7,"FontSize",e.FontSize.Size18)
insSet(i7,"ClearTextOnFocus",false)
insSet(i7,"Text",guiTheme.guiTitle)
insSet(i7,"TextColor3",guiTheme.windowTitleColor)
insSet(i7,"TextSize",16)
insSet(i7,"AnchorPoint",v2(0.5,0))
insSet(i7,"BackgroundTransparency",1)
insSet(i7,"Position",u2(0.5,0,0,guiTheme.windowMinimizedSize.Y/2))
insSet(i7,"Name",rs())
insSet(i7,"Parent",i2)
insSet(i8,"AnchorPoint",v2(1,0))
insSet(i8,"BackgroundTransparency",1)
insSet(i8,"Position",u2(1,0,0,0))
insSet(i8,"Size",u2(0,40,0,guiTheme.windowMinimizedSize.Y))
insSet(i8,"Name",rs())
insSet(i8,"Parent",i2)
insSet(i8,"Font",e.Font.SourceSans)
insSet(i8,"FontSize",e.FontSize.Size18)
insSet(i8,"Text","-")
insSet(i8,"TextColor3",c3(1,1,1))
insSet(i8,"TextSize",16)
insSet(i9,"Name",rs())
insSet(i9,"Parent",i2)
insSet(i9,"Color",cs({csk(0,guiTheme.windowTopColor),csk(1,guiTheme.windowBottomColor)}))
insSet(i9,"Rotation",90)
insSet(i10,"ZIndexBehavior",e.ZIndexBehavior.Sibling)
insSet(i10,"IgnoreGuiInset",true)
insSet(i10,"ResetOnSpawn",false)
insSet(i10,"DisplayOrder",2147483647)
insSet(i10,"Name",rs())
local guimin=false
local minloop=false
local i1X=guiTheme.windowRegularSize.X
local i1Y=guiTheme.windowRegularSize.Y
local i1Xdest=i1X
local i1Ydest=i1Y
Connect(insGet(i8,"MouseButton1Click"),function()
	guimin = not guimin
	if guimin then
		i1Xdest=guiTheme.windowMinimizedSize.X
		i1Ydest=guiTheme.windowMinimizedSize.Y
	else
		i1Xdest=guiTheme.windowRegularSize.X
		i1Ydest=guiTheme.windowRegularSize.Y
	end
	if minloop then
		return
	end
	minloop=true
	insSet(i3,"Visible",true) 
	sine=osclock()
	local lastsine=sine
	while true do
		sine=osclock()
		local deltaTime=(sine-lastsine)*10
		lastsine=sine
		local difX=i1Xdest-i1X
		local difY=i1Ydest-i1Y
		if (abs(difY)<=1) and (abs(difX)<=1) then
			i1X=i1Xdest
			i1Y=i1Ydest
			insSet(i1,"Size",u2(0,i1X,0,i1Y))
			break
		end
		i1X=i1X+difX*deltaTime
		i1Y=i1Y+difY*deltaTime
		insSet(i1,"Size",u2(0,i1X,0,i1Y))
		twait()
	end
	insSet(i3,"Visible",not guimin) 
	minloop=false
end)
local Draggable=function(window,obj)
	local MB1enum = e.UserInputType.MouseButton1
	local TOUCHenum = e.UserInputType.Touch
	obj = obj or window
	local activeEntered = 0
	local mouseStart = nil
	local dragStart = nil
	local inputbegancon = nil
	local rendersteppedcon = nil
	local inputendedcon = nil
	local inputendedf=function(a)
		a=insGet(a,"UserInputType")
		if (a==MB1enum) or (a==TOUCHenum) then
			Disconnect(rendersteppedcon)
			Disconnect(inputendedcon)
		end
	end
	local rendersteppedf=function()
		local off = GetMouseLocation(uis)-mouseStart
		insSet(window,"Position",dragStart+u2(0,off.X,0,off.Y))
	end
	local inputbeganf=function(a)
		a=insGet(a,"UserInputType")
		if ((a==MB1enum) or (a==TOUCHenum)) and (activeEntered==0) and not GetFocusedTextBox(uis) then
			mouseStart=GetMouseLocation(uis)
			dragStart=insGet(window,"Position")
			if rendersteppedcon then Disconnect(rendersteppedcon) end
			rendersteppedcon = Connect(renderstepped,rendersteppedf)
			if inputendedcon then Disconnect(inputendedcon) end
			inputendedcon = Connect(insGet(uis,"InputEnded"),inputendedf)
		end
	end
	Connect(insGet(obj,"MouseEnter"),function()
		if inputbegancon then Disconnect(inputbegancon) end
		inputbegancon = Connect(insGet(uis,"InputBegan"),inputbeganf)
	end)
	Connect(insGet(obj,"MouseLeave"),function()
		Disconnect(inputbegancon)
	end)
	local ondes=function(d)
		if IsA(d,"GuiObject") then
			local thisEntered = false
			local thisAdded = false
			local con0 = Connect(insGet(d,"MouseEnter"),function()
				thisEntered = true
				if (not thisAdded) and insGet(d,"Active") then
					activeEntered = activeEntered + 1
					thisAdded = true
				end
			end)
			local con1 = Connect(insGet(d,"MouseLeave"),function()
				thisEntered = false
				if thisAdded then
					activeEntered = activeEntered - 1
					thisAdded = false
				end
			end)
			local con2 = Connect(GetPropertyChangedSignal(d,"Active"),function()
				if thisEntered then
					if thisAdded and not insGet(d,"Active") then
						activeEntered = activeEntered - 1
						thisAdded = false
					elseif insGet(d,"Active") and not thisAdded then
						activeEntered = activeEntered + 1
						thisAdded = true
					end
				end
			end)
			local con3 = nil
			con3 = Connect(insGet(d,"AncestryChanged"),function()
				if not IsDescendantOf(d,window) then
					if thisEntered then
						activeEntered = activeEntered - 1
					end
					Disconnect(con0)
					Disconnect(con1)
					Disconnect(con2)
					Disconnect(con3)
				end
			end)
		end
	end
	Connect(insGet(window,"DescendantAdded"),ondes)
	for i,v in next,GetDescendants(window) do 
		ondes(v)
	end
end
local btn=function(txt, f)
	local i1=i("TextBox") 
	local i2=i("TextButton")
	insSet(i1,"Font",e.Font.SourceSans)
	insSet(i1,"FontSize",e.FontSize.Size14)
	insSet(i1,"Text",txt)
	insSet(i1,"ClearTextOnFocus",false)
	insSet(i1,"Position",u2(0.5,0,0.5,0))
	insSet(i1,"TextColor3",guiTheme.buttonsTextColor)
	insSet(i1,"Name",rs())
	insSet(i1,"Parent",i2)
	insSet(i2,"BackgroundTransparency",1)
	insSet(i2,"TextTransparency",1)
	insSet(i2,"Size",u2(1,0,0,14))
	insSet(i2,"Name",rs())
	if f then 
		Connect(insGet(i2,"MouseButton1Click"),f) 
	end 
	insSet(i2,"Parent",i4)
	return i1
end
local lbl=function(txt)
	local i1=i("TextBox") 
	local i2=i("Frame") 
	insSet(i1,"Font",e.Font.SourceSans)
	insSet(i1,"FontSize",e.FontSize.Size14)
	insSet(i1,"Text",txt)
	insSet(i1,"ClearTextOnFocus",false)
	insSet(i1,"TextColor3",guiTheme.labelsTextColor)
	insSet(i1,"Position",u2(0.5,0,0.5))
	insSet(i1,"BackgroundTransparency",1)
	insSet(i1,"Name",rs())
	insSet(i1,"Parent",i2)
	insSet(i2,"Size",u2(1,0,0,14))
	insSet(i2,"BackgroundTransparency",1)
	insSet(i2,"Name",rs())
	insSet(i2,"Parent",i4)
	return i1
end

Draggable(i1)

lbl("made by MyWorld")
lbl("continued by Emper")
lbl("discord.gg/QMy5f6DrbH")

local allowshiftlock=nil
local ctrltp=nil
local placeholders=nil
local clickfling=nil
local highlightflingtargets=nil
local discharscripts=nil
local flingchangestate=nil
local respawntp=nil
local breakjointsmethod=nil
local simrad=false
local hidedeatheffect=nil

local c=nil
local stopreanimate=function() 
	if c then
		c=nil
		return true
	end
	return false
end
local reanimate=function()
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

	if stopreanimate() then return end
	c=insGet(lp,"Character")
	if not (c and IsDescendantOf(c,ws)) then return nil, "no character found" end

	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or timegp(c,"HumanoidRootPart","BasePart",0.5) or FindFirstChildWhichIsA(c,"BasePart")
	if not rootpart then return nil, "no basepart found" end

	local cam=nil
	--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
	local refcam=function()
		local newcam=insGet(ws,"CurrentCamera")
		while not newcam do
			Wait(GetPropertyChangedSignal(ws,"CurrentCamera"))
			newcam=insGet(ws,"CurrentCamera")
		end
		cam=newcam
	end
	refcam()
	local camcf=insGet(cam,"CFrame")
	local enumCamS=e.CameraType.Scriptable
	local camt=insGet(cam,"CameraType")
	local camcon0=nil
	local camcon1=nil
	local camcon2=nil
	local onnewcamera=function()
		refcam()
		if camcon0 then 
			Disconnect(camcon0)
			Disconnect(camcon1)
			camcon0=nil
		end
		if not c then 
			if insGet(cam,"CameraType")==enumCamS then
				insSet(cam,"CameraType",camt)
			end
			return Disconnect(camcon2) 
		end
		camcon0=Connect(GetPropertyChangedSignal(cam,"CFrame"),function()
			if insGet(cam,"CFrame")~=camcf then
				insSet(cam,"CFrame",camcf)
			end
		end)
		camcon1=Connect(GetPropertyChangedSignal(cam,"CameraType"),function()
			if insGet(cam,"CameraType")~=enumCamS then
				insSet(cam,"CameraType",enumCamS)
			end
		end)
		if insGet(cam,"CameraType")~=enumCamS then
			insSet(cam,"CameraType",enumCamS)
		end
		if insGet(cam,"CFrame")~=camcf then
			insSet(cam,"CFrame",camcf)
		end
	end
	camcon2=Connect(GetPropertyChangedSignal(ws,"CurrentCamera"),onnewcamera)
	onnewcamera()

	local velYdelta=insGet(ws,"Gravity")*0.025
	Connect(GetPropertyChangedSignal(ws,"Gravity"),function()
		velYdelta=insGet(ws,"Gravity")*0.025
	end)

	local fpdh=insGet(ws,"FallenPartsDestroyHeight")
	novoid=novoid and (fpdh+1)

	local Yvel=0
	local cfr=insGet(rootpart,"CFrame")
	local pos=cfGet(cfr,"Position")
	cfr=cfl(pos,pos+cfGet(cfr,"LookVector")*v3_101)
	local primarypart=nil
	local shiftlock=false
	local firstperson=false
	local xzvel=v3_0
	local v3_0150=v3_010*1.5
	local camcfLV=cfGet(camcf,"LookVector")
	local camrot=cfl(v3_0,camcfLV)
	local camcfRV=cfGet(camrot,"RightVector")
	local cammag=-v3Get((cfGet(camcf,"Position")-(pos+v3_0150)),"Magnitude")

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
	for i,v in next,R6parts do
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
		for i,v in next,joints do
			local part0=v.Part0
			local part1=v.Part1
			if part1 and (part0==part) then
				cframes[part1]=cfMul(cframes[part],cfMul(v.C0,Inverse(v.C1)))
				if not tfind(refreshedjoints,part1) then
					refreshjointsI(part1)
				end
			elseif part0 and (part1==part) then
				cframes[part0]=cfMul(cframes[part],cfMul(v.C1,Inverse(v.C0)))
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

	local getPart=function(name,blacklist)
		for i,v in next,cframes do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local getJoint=function(name)
		for i,v in next,joints do
			if v.Name==name then
				return v
			end
		end
		return {C0=cf_0,C1=cf_0}
	end

	local getPartFromMesh=function(m,t,blacklist)
		if blacklist then
			for v,_ in next,cframes do
				if v.m and (not tfind(blacklist,v)) and sfind(v.m,m) and sfind(v.t,t) then
					return v
				end
			end
		else
			for v,_ in next,cframes do
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

	local getPartJoint=function(p)
		if cframes[p] then
			local j=p.j
			if j then
				return j
			end
			for i,v in next,joints do
				if v.Part0==p then
					return v
				end
			end
			for i,v in next,joints do
				if v.Part1==p then
					return v
				end
			end
		end
		return nil
	end

	local getAccWeldFromMesh=function(m,t)
		return getPartJoint(getPartFromMesh(m,t))
	end

	local raycastparams=rp()
	raycastparams.FilterType=e.RaycastFilterType.Blacklist
	raycastparams.RespectCanCollide=true
	local rayfilter={}
	local characters={}
	local refreshrayfilter=function()
		tclear(rayfilter)
		for i,v in next,characters do
			tinsert(rayfilter,v)
		end
		raycastparams.FilterDescendantsInstances=rayfilter
	end
	local flingtable={}
	local rootparts={}
	for i,v in next,accessorylimbs do
		v.p=getPart(v.Name)
	end
	local makePartCons=function(p,t)
		if (t.p==p) and insGet(p,"Anchored") then
			t.p=nil
		end
		local con0=Connect(GetPropertyChangedSignal(p,"Anchored"),function()
			if insGet(p,"Anchored") then
				if t.p==p then
					t.c=nil
					t.p=nil
				end
			elseif not t.p then
				t.p=p
			end
		end)
		local con1=nil
		con1=Connect(insGet(p,"AncestryChanged"),function()
			if not IsDescendantOf(p,ws) then
				Disconnect(con0)
				Disconnect(con1)
				if t.p==p then
					t.p=nil
				end
			end
		end)
	end
	local ondes=nil
	ondes=function(v)
		if c and IsA(v,"Attachment") and IsDescendantOf(c,ws) then
			local v1=attachments[insGet(v,"Name")]
			if v1 then
				local p=insGet(v,"Parent")
				if insGet(p,"Parent")~=c then
					local meshid=nil
					local textureid=nil
					if IsA(p,"MeshPart") then
						meshid=insGet(p,"MeshId")
						textureid=insGet(p,"TextureID")
					elseif IsA(p,"BasePart") then
						local sm=FindFirstChildOfClass(p,"SpecialMesh")
						if sm then
							meshid=insGet(sm,"MeshId")
							textureid=insGet(sm,"TextureId")
						else
							return
						end
					else
						return
					end
					-- p = handle
					--checkpoint
					local found=false
					for i,_ in next,cframes do
						if (meshid==i.m) and (textureid==i.t) then
							local p1=i.p
							if p1 and IsDescendantOf(p1,c) then
								if p1==p then
									found=true
									break
								end
							else
								found=true
								i.p=p
								makePartCons(p,i)
								break
							end
						else
							local j=i.j
							if j and sfind(meshid,i.m) and sfind(textureid,i.t) then
								i.m=meshid
								i.t=textureid
								i.l=insGet(p,"Position")
								i.p=p
								makePartCons(p,i)
								i.j=nil
								i.Name=insGet(p,"Name")
								j.C0=insGet(v,"CFrame")
								j.C1=v1[2]
								j.Part1=v1[1]
								tinsert(joints,j)
								found=true
								break
							end
						end
					end
					if not found then
						for i,l in next,accessorylimbs do
							if l.p and sfind(meshid,l.meshid) and sfind(textureid,l.textureid) then
								local t={Name=insGet(p,"Name"),l=insGet(p,"Position"),m=meshid,t=textureid,p=p}
								makePartCons(p,t)
								if placeholders then
									t.v=makeplaceholder(p)
								end
								cframes[t]=insGet(p,"CFrame")
								tinsert(joints,{Part0=t,Part1=l.p,C0=l.C0,C1=cf_0})
								l.p=nil
								found=true
								break
							end
						end
						if not found then
							local t={Name=insGet(p,"Name"),l=insGet(p,"Position"),m=meshid,t=textureid,p=p}
							makePartCons(p,t)
							if placeholders then
								t.v=makeplaceholder(p)
							end
							cframes[t]=insGet(p,"CFrame")
							tinsert(joints,{Part0=t,Part1=v1[1],C0=insGet(v,"CFrame"),C1=v1[2]})
						end
					end
				end
			end
		end
	end

	local simradv=0
	local charcons={}
	local enumH=e.CoreGuiType.Health
	local onplayer=function(v)
		simradv=simradv+1000
		local islp=v==lp
		local lastc=nil
		local oncharacter=function()
			local newc=insGet(v,"Character")
			if c and newc and (newc~=lastc) then
				lastc=newc
				characters[v]=newc
				refreshrayfilter()
				if islp then
					if discharscripts then
						Connect(insGet(newc,"DescendantAdded"),discharscripts)
						for i,v in next,GetDescendants(newc) do
							if IsA(v,"Script") then
								insSet(v,"Disabled",true)
							end
						end
					end
					local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
					if not (hrp and c and IsDescendantOf(newc,ws)) then return end
					c=newc
					local fi,fv=next(flingtable)
					if fi then
						if flingchangestate then
							local hum=FindFirstChildOfClass(c,"Humanoid")
							if hum then
								insGet(hum,"ChangeState")(hum,e.HumanoidStateType.Physics)
							end
						end
						for i,v in next,tclone(flingtable) do
							if not c then
								return
							end
							local startpos=insGet(i,"Position")
							local stoptime=sine+3
							while true do
								twait()
								if sine>stoptime then
									break
								end
								if insGet(i,"Anchored") or not IsDescendantOf(i,ws) then
									break
								end
								if v3Get((startpos-insGet(i,"Position")),"Magnitude")>200 then
									break
								end
								local tcf=cfAdd(insGet(i,"CFrame"),insGet(i,"AssemblyLinearVelocity")*(sin(sine*15)+1))
								if novoid and (cfGet(tcf,"Y")<novoid) then
									tcf=cfAdd(tcf,v3_010*(novoid-cfGet(tcf,"Y")))
								end
								insSet(hrp,"CFrame",tcf)
								insSet(hrp,"AssemblyLinearVelocity",insGet(i,"AssemblyLinearVelocity")*v3_101*75)
								insSet(hrp,"AssemblyAngularVelocity",flingvel)
							end
							if v then
								Destroy(v)
							end
							flingtable[i]=nil
						end
						insSet(hrp,"AssemblyLinearVelocity",v3_0)
						insSet(hrp,"AssemblyAngularVelocity",v3_0)
						insSet(hrp,"CFrame",cfr)
						twait(0.16)
					end
					if respawntp==1 then
						local startpos=pos+v3(mrandom(-32,32),0,mrandom(-32,32))
						local dir=nil
						local poscheck=true
						while poscheck do
							poscheck=false
							for i,v in next,rootparts do
								local diff=(startpos-insGet(v,"Position"))*v3_101
								if v3Get(diff,"Magnitude")<10 then
									poscheck=true
									dir=dir or (v3Get(diff,"Unit")*3)
									startpos=startpos+dir
								end
							end
							local diff=(startpos-pos)*v3_101
							if v3Get(diff,"Magnitude")<10 then
								poscheck=true
								dir=dir or (v3Get(diff,"Unit")*3)
								startpos=startpos+dir
							end
						end
						startpos=cfAdd(cfGet(cfr,"Rotation"),startpos)
						insSet(hrp,"CFrame",startpos)
						insSet(hrp,"AssemblyLinearVelocity",v3_0)
						insSet(hrp,"AssemblyAngularVelocity",v3_0)
						twait(0.16)
					elseif respawntp==2 then
						insSet(hrp,"CFrame",cfAdd(cfr,cfGet(cfr,"RightVector")*3.5-cfGet(cfr,"LookVector")*3.5))
						insSet(hrp,"AssemblyLinearVelocity",v3_0)
						insSet(hrp,"AssemblyAngularVelocity",v3_0)
						twait(0.16)
					elseif respawntp==3 then
						local t=osclock()+0.16
						local startcf=cfAdd(cfMul(cfGet(cfr,"Rotation"),angles(1.5707963267948966,0,0)),pos*v3_101+v3_010*min(fpdh+30,v3Get(pos,"Y")-5))
						while twait() do
							insSet(hrp,"CFrame",startcf)
							insSet(hrp,"AssemblyLinearVelocity",v3_0)
							insSet(hrp,"AssemblyAngularVelocity",v3_0)
							if osclock()>t then
								break
							end
						end
					end
					if newc~=c then
						return
					end
					primarypart=insGet(newc,"PrimaryPart") or hrp
					if hidedeatheffect and GetCoreGuiEnabled(sg,enumH) then
						SetCoreGuiEnabled(sg,enumH,false)
					end
					if breakjointsmethod==1 then
						insGet(newc,"BreakJoints")(newc)
						local h=FindFirstChildOfClass(newc,"Humanoid")
						if h then
							insSet(h,"Health",0)
                  insSet(h,"BreakJointsOnDeath",true)
						end
					elseif breakjointsmethod==2 then
						local h=FindFirstChildOfClass(newc,"Humanoid")
						if h then
							insSet(h,"Health",0)
                  insSet(h,"BreakJointsOnDeath",true)
						else
							insGet(newc,"BreakJoints")(newc)
                  insSet(h,"BreakJointsOnDeath",true)
						end
					else
						insGet(newc,"BreakJoints")(newc)
					end
					Connect(insGet(newc,"DescendantAdded"),ondes)
					for i,v in next,GetDescendants(newc) do
						ondes(v)
					end
				else
					local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
					if hrp and c and IsDescendantOf(newc,ws) then
						rootparts[v]=hrp
					end
				end
			end
		end
		charcons[v]=Connect(GetPropertyChangedSignal(v,"Character"),oncharacter)
		oncharacter()
	end
	Connect(insGet(plrs,"PlayerRemoving"),function(v)
		simradv=simradv-1000
		local charcon=charcons[v]
		if charcon then
			Disconnect(charcon)
		end
		characters[v]=nil
		rootparts[v]=nil
	end)
	for i,v in next,GetPlayers(plrs) do simradv=simradv+1000 if v~=lp then tspawn(onplayer,v) end end
	Connect(insGet(plrs,"PlayerAdded"),onplayer)
	onplayer(lp)
	local setsimrad=emptyfunction
	if simrad then
		setsimrad=function()
			local canset,_=pcall(function()
				insSet(lp,"SimulationRadius",simradv)
			end)
			if canset then
				setsimrad=function()
					insSet(lp,"SimulationRadius",simradv)
				end
			else
				setsimrad=emptyfunction
			end
		end
	end

	local mradN05=rad(-0.5)
	local KeyCode=e.KeyCode
	local enumMB2=e.UserInputType.MouseButton2
	local enumMLCP=e.MouseBehavior.LockCurrentPosition
	local enumMLC=(insGet(uis,"TouchEnabled") and enumMLCP) or e.MouseBehavior.LockCenter 
	local enumMD=e.MouseBehavior.Default
	local enumMW=e.UserInputType.MouseWheel
	local enumMM=e.UserInputType.MouseMovement

	local mouseBehavior=nil
	local lastMouseBehavior=insGet(uis,"MouseBehavior")
	Connect(GetPropertyChangedSignal(uis,"MouseBehavior"),function()
		if mouseBehavior and (insGet(uis,"MouseBehavior")~=mouseBehavior) then
			insSet(uis,"MouseBehavior",mouseBehavior)
		end
	end)

	local mode="default"
	local defaultmode={}
	local modes={default=defaultmode}

	local lerpsIdle=emptyfunction
	local lerpsWalk=emptyfunction
	local lerpsJump=emptyfunction
	local lerpsFall=emptyfunction

	local addmode=function(key,mode)
		if (type(key)~="string") or (type(mode)~="table") then
			return
		end
		for i,v in next,mode do
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
	local Wpressed=IsKeyDown(uis,keyW)
	local keyA=KeyCode.A
	local Apressed=IsKeyDown(uis,keyA)
	local keyS=KeyCode.S
	local Spressed=IsKeyDown(uis,keyS)
	local keyD=KeyCode.D
	local Dpressed=IsKeyDown(uis,keyD)
	local keySpace=KeyCode.Space
	local jumpingInput=IsKeyDown(uis,keySpace)

	local FWmovement=0
	local RTmovement=0
	local isWalking=false
	local refreshKeyboardMovement=function()
		if Wpressed then if Spressed then if Dpressed then if Apressed then isWalking=false else FWmovement=0 RTmovement=1 isWalking=true end else if Apressed then FWmovement=0 RTmovement=-1 isWalking=true else isWalking=false end end else FWmovement=1 if Dpressed then if Apressed then RTmovement=0 else RTmovement=1 end else if Apressed then RTmovement=-1 else RTmovement=0 end end isWalking=true end else if Spressed then FWmovement=-1 if Dpressed then if Apressed then RTmovement=0 else RTmovement=1 end else if Apressed then RTmovement=-1 else RTmovement=0 end end isWalking=true else if Dpressed then if Apressed then isWalking=false else FWmovement=0 RTmovement=1 isWalking=true end else if Apressed then FWmovement=0 RTmovement=-1 isWalking=true else isWalking=false end end end end
	end
	refreshKeyboardMovement()

	local keyShift=KeyCode.LeftShift
	Connect(insGet(uis,"InputBegan"),function(a)
		if insGet(gs,"MenuIsOpen") or GetFocusedTextBox(uis) then
			return
		end
		a=insGet(a,"KeyCode")
		if a==keyW then
			Wpressed=true
			refreshKeyboardMovement()
		elseif a==keyA then
			Apressed=true
			refreshKeyboardMovement()
		elseif a==keyS then
			Spressed=true
			refreshKeyboardMovement()
		elseif a==keyD then
			Dpressed=true
			refreshKeyboardMovement()
		elseif a==keySpace then
			jumpingInput=true
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
	Connect(insGet(uis,"InputEnded"),function(a)
		a=insGet(a,"KeyCode")
		if a==keyW then
			Wpressed=false
			refreshKeyboardMovement()
		elseif a==keyA then
			Apressed=false
			refreshKeyboardMovement()
		elseif a==keyS then
			Spressed=false
			refreshKeyboardMovement()
		elseif a==keyD then
			Dpressed=false
			refreshKeyboardMovement()
		elseif a==keySpace then
			jumpingInput=false
		end
	end)

	local thumbstickEndX=0
	local thumbstickStartY=0

	local thumbstickSizeMultiplier=0

	local jumpStartX=0
	local jumpStartY=0
	local jumpEndX=0
	local jumpEndY=0

	local thumbstickInputObject=nil
	local jumpInputObject=nil
	local cameraRotateInputObject=nil
	local cameraZoomInputObject=nil

	local thumbstickTouchStart=v3_0
	local cameraZoomInputMagnitude=0

	Connect(insGet(uis,"TouchStarted"),function(inputObject)
		if insGet(gs,"MenuIsOpen") or GetFocusedTextBox(uis) then
			return
		end

		local touchPos=insGet(inputObject,"Position")
		local touchX=v3Get(touchPos,"X")
		local touchY=v3Get(touchPos,"Y")

		if (not thumbstickInputObject) and touchX<thumbstickEndX and touchY>thumbstickStartY then
			thumbstickInputObject=inputObject
			thumbstickTouchStart=insGet(inputObject,"Position")
			isWalking=false
		elseif (not jumpInputObject) and touchY>jumpStartY and touchX>jumpStartX and touchX<jumpEndX and touchY<jumpEndY then
			jumpInputObject=inputObject
			jumpingInput=true
		elseif not cameraRotateInputObject then
			cameraRotateInputObject=inputObject
		else
			cameraZoomInputObject=inputObject
			cameraZoomInputMagnitude=v3Get(insGet(cameraRotateInputObject,"Position")-insGet(cameraZoomInputObject,"Position"),"Magnitude")
		end
	end)
	Connect(insGet(uis,"TouchMoved"),function(inputObject)
		local touchPos=insGet(inputObject,"Position")
		local touchX=v3Get(touchPos,"X")
		local touchY=v3Get(touchPos,"Y")
		if inputObject==thumbstickInputObject then
			local direction=insGet(inputObject,"Position")-thumbstickTouchStart
			local directionMag=v3Get(direction,"Magnitude")/thumbstickSizeMultiplier
			if directionMag>0.05 then
				isWalking=true
				direction=v3Get(direction,"Unit")*min(1,(directionMag-0.05)/0.95) 
				FWmovement=-v3Get(direction,"Y")
				RTmovement=v3Get(direction,"X")
			else
				isWalking=false
			end
		elseif inputObject==jumpInputObject then
			jumpingInput=touchY>jumpStartY and touchX>jumpStartX and touchX<jumpEndX and touchY<jumpEndY
		else
			if cameraZoomInputObject then
				local newMagnitude=v3Get(insGet(cameraRotateInputObject,"Position")-insGet(cameraZoomInputObject,"Position"),"Magnitude")					
				cammag=cammag+(newMagnitude-cameraZoomInputMagnitude)*0.04*(0.75-cammag/4)
				cameraZoomInputMagnitude=newMagnitude
				if cammag<0 then
					firstperson=false
				else
					cammag=0
					firstperson=true
				end
			elseif inputObject==cameraRotateInputObject then
				local rotation=GetMouseDelta(uis)*mradN05
				camcfLV=cfGet(cfMul(camrot,angles(rotation.Y,rotation.X,0)),"LookVector")
				camrot=cfl(v3_0,camcfLV)
				camcfRV=cfGet(camrot,"RightVector")
			end
		end
	end)
	Connect(insGet(uis,"TouchEnded"),function(inputObject)
		if inputObject==thumbstickInputObject then
			thumbstickInputObject=nil
			isWalking=false
		elseif inputObject==jumpInputObject then
			jumpInputObject=nil
			jumpingInput=false
		elseif inputObject==cameraRotateInputObject then
			cameraRotateInputObject=nil
			cameraZoomInputObject=nil
		elseif inputObject==cameraZoomInputObject then
			cameraZoomInputObject=nil
		end
	end)

	local refreshTouchRegions=function()
		local sX=insGet(mouse,"ViewSizeX")
		local sY=insGet(mouse,"ViewSizeY")
		local isSmallScreen=min(sX,sY)<=500

		sY=sY+insGet(gs,"TopbarInset").Height

		thumbstickEndX=sX*0.4
		thumbstickStartY=(sY+0)*0.333

		if isSmallScreen then
			thumbstickSizeMultiplier=35
			jumpStartX=sX-95
			jumpStartY=sY-90
			jumpEndX=jumpStartX+70
			jumpEndY=jumpStartY+70
		else
			thumbstickSizeMultiplier=60
			jumpStartX=sX-170
			jumpStartY=sY-210
			jumpEndX=jumpStartX+120
			jumpEndY=jumpStartY+120
		end
	end
	Connect(GetPropertyChangedSignal(mouse,"ViewSizeX"),refreshTouchRegions)
	Connect(GetPropertyChangedSignal(mouse,"ViewSizeY"),refreshTouchRegions)
	Connect(GetPropertyChangedSignal(gs,"TopbarInset"),refreshTouchRegions)
	refreshTouchRegions()

	local mouseCameraMove=false
	Connect(insGet(uis,"InputChanged"),function(a,b)
		if b then return end
		local inputType=insGet(a,"UserInputType")
		if mouseCameraMove and inputType==enumMM then
			local rotation=GetMouseDelta(uis)*mradN05
			camcfLV=cfGet(cfMul(camrot,angles(rotation.Y,rotation.X,0)),"LookVector")
			camrot=cfl(v3_0,camcfLV)
			camcfRV=cfGet(camrot,"RightVector")
		elseif inputType==enumMW then
			cammag=cammag+v3Get(insGet(a,"Position"),"Z")*(0.75-cammag/4)
			if cammag<0 then
				firstperson=false
			else
				cammag=0
				firstperson=true
			end
		end
	end)

	local predictionfling=function(target)
		if not c then
			return false
		end
		if typeof(target)~="Instance" then 
			target=insGet(mouse,"Target")
			if not target then
				return false
			end
		end
		if not IsDescendantOf(target,ws) then
			return false
		end
		if IsA(target,"Humanoid") or IsA(target,"BasePart") then 
			target=insGet(target,"Parent") 
			if IsA(target,"Accessory") then
				target=insGet(target,"Parent")
			end
		end
		if (target==c) or (not IsA(target,"Model")) then
			return false
		end
		local targetpart=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart")
		if (not targetpart) or (flingtable[targetpart]~=nil) then
			return false
		end
		if highlightflingtargets then
			local h=i("Highlight")
			insSet(h,"Name",rs())
			insSet(h,"Adornee",target)
			insSet(h,"FillColor",c3(1,0,0))
			insSet(h,"OutlineColor",c3(1,0,0))
			insSet(h,"FillTransparency",0.5)
			insSet(h,"OutlineTransparency",0)
			insSet(h,"Parent",i10)
			flingtable[targetpart]=h
		else
			flingtable[targetpart]=false
		end
		return true
	end

	local clickConnection=nil
	if ctrlclicktp then
		ctrlclicktp=KeyCode.LeftControl
		local tpoff=v3_010*3
		if clickfling then
			clickConnection=Connect(insGet(mouse,"Button1Down"),function()
				if insGet(mouse,"Target") then
					if IsKeyDown(uis,ctrlclicktp) then
						pos=cfGet(insGet(mouse,"Hit"),"Position")+tpoff
						cfr=cfl(pos,pos+camcfLV*v3_101)
						xzvel=v3_0
						Yvel=0
					else
						predictionfling()
					end
				end
			end)
		else
			clickConnection=Connect(insGet(mouse,"Button1Down"),function()
				if insGet(mouse,"Target") and IsKeyDown(uis,ctrlclicktp) then
					pos=cfGet(insGet(mouse,"Hit"),"Position")+tpoff
					cfr=cfl(pos,pos+camcfLV*v3_101)
					xzvel=v3_0
					Yvel=0
				end
			end)
		end
	elseif clickfling then
		clickConnection=Connect(insGet(mouse,"Button1Down"),predictionfling)
	end

	local hhOff=3
	local hhOff1=3.01
	local setHipHeight=function(n)
		hhOff=n+3
		hhOff1=n+3.01
	end

	local noYvelTime=1
	local lastsine=sine
	local con=nil
	local mainFunction=function()
		if not c then 
			for i,v in next,cframes do
				local p=i.v
				if p then
					Destroy(p)
				end
			end
			for i,v in next,flingtable do
				if v then --it could be false
					Destroy(v)
				end
			end
			for i,v in next,charcons do
				Disconnect(v)
			end
			if clickConnection then
				Disconnect(clickConnection)
			end
			mouseBehavior=nil
			insSet(uis,"MouseBehavior",enumMD)
			onnewcamera()
			local c=insGet(lp,"Character")
			if c then
				insSet(cam,"CameraSubject",FindFirstChildOfClass(c,"Humanoid"))
			end
			return con and Disconnect(con) 
		end

		sine=osclock()
		local delta=sine-lastsine
		deltaTime=min(delta*10,1)
		lastsine=sine

		if shiftlock then
			if allowshiftlock then
				mouseBehavior=enumMLC
				mouseCameraMove=true
			else
				shiftlock=false
			end
		elseif firstperson then
			mouseBehavior=enumMLC
			mouseCameraMove=true
		elseif IsMouseButtonPressed(uis,enumMB2) then
			mouseBehavior=enumMLCP
			mouseCameraMove=true
		else
			mouseBehavior=enumMD
			mouseCameraMove=false
		end
		if lastMouseBehavior~=mouseBehavior then
			lastMouseBehavior=mouseBehavior
			insSet(uis,"MouseBehavior",mouseBehavior)
		end

		local raycastresult=Raycast(ws,pos,v3_010*(fpdh-v3Get(pos,"Y")),raycastparams)
		local onground=nil
		if raycastresult then
			raycastresult=v3Get(raycastresult.Position,"Y")
			onground=v3Get(pos,"Y")-raycastresult<hhOff1
			if onground then
				Yvel=0
				pos=pos+v3_010*(raycastresult+hhOff-v3Get(pos,"Y"))*min(delta*20,1)
				if jumpingInput and (jumpPower>0) then
					Yvel=jumpPower
					onground=false
				end
			else
				Yvel=Yvel-gravity*delta
				if v3Get(pos,"Y")+Yvel*delta<raycastresult then
					Yvel=0
					pos=pos+v3_010*(raycastresult+hhOff-v3Get(pos,"Y"))
				end
			end
		else
			Yvel=0
			onground=false
		end

		if firstperson then
			if isWalking then
				if walkSpeed==0 then
					xzvel=v3_0
					if onground then
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsIdle()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+v3_010*Yvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else
						pos=pos+v3_010*Yvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				else
					xzvel=v3Get(v3Get(camcfLV*v3_101,"Unit")*FWmovement+v3Get(camcfRV*v3_101,"Unit")*RTmovement,"Unit")*walkSpeed
					if onground then
						pos=pos+xzvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsWalk()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+(xzvel+v3_010*Yvel)*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else 
						pos=pos+(xzvel+v3_010*Yvel)*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				end
			else
				xzvel=v3_0
				if onground then
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsIdle()
					noYvelTime=min(noYvelTime+delta*0.3,1)
					xzvel=xzvel*(1-noYvelTime)
				elseif Yvel>0 then
					pos=pos+v3_010*Yvel*delta
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsJump()
					noYvelTime=0
				else
					pos=pos+v3_010*Yvel*delta
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsFall()
					noYvelTime=0
				end
			end
		elseif shiftlock then	
			if isWalking then
				if walkSpeed==0 then
					xzvel=v3_0
					if onground then
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsIdle()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+v3_010*Yvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else
						pos=pos+v3_010*Yvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				else
					xzvel=v3Get(v3Get(camcfLV*v3_101,"Unit")*FWmovement+v3Get(camcfRV*v3_101,"Unit")*RTmovement,"Unit")*walkSpeed
					if onground then
						pos=pos+xzvel*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsWalk()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+(xzvel+v3_010*Yvel)*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else
						pos=pos+(xzvel+v3_010*Yvel)*delta
						cfr=cfl(pos,pos+camcfLV*v3_101)
						camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				end
			else
				xzvel=v3_0
				if onground then
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsIdle()
					noYvelTime=min(noYvelTime+delta*0.3,1)
					xzvel=xzvel*(1-noYvelTime)
				elseif Yvel>0 then
					pos=pos+v3_010*Yvel*delta
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsJump()
					noYvelTime=0
				else
					pos=pos+v3_010*Yvel*delta
					cfr=cfl(pos,pos+camcfLV*v3_101)
					camcf=cfAdd(camrot,pos+v3_0150+camcfRV*1.75+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsFall()
					noYvelTime=0
				end
			end
		else
			if isWalking then
				if walkSpeed==0 then
					xzvel=v3_0
					if onground then
						cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsIdle()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+v3_010*Yvel*delta
						cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else
						pos=pos+v3_010*Yvel*delta
						cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				else
					xzvel=v3Get(v3Get(camcfLV*v3_101,"Unit")*FWmovement+v3Get(camcfRV*v3_101,"Unit")*RTmovement,"Unit")*walkSpeed
					if onground then
						pos=pos+xzvel*delta
						cfr=cfAdd(Lerp(cfGet(cfr,"Rotation"),cfl(v3_0,xzvel),deltaTime),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsWalk()
						noYvelTime=min(noYvelTime+delta*0.3,1)
						xzvel=xzvel*(1-noYvelTime)
					elseif Yvel>0 then
						pos=pos+(xzvel+(v3_010*Yvel))*delta
						cfr=cfAdd(Lerp(cfGet(cfr,"Rotation"),cfl(v3_0,xzvel),deltaTime),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsJump()
						noYvelTime=0
					else
						pos=pos+(xzvel+(v3_010*Yvel))*delta
						cfr=cfAdd(Lerp(cfGet(cfr,"Rotation"),cfl(v3_0,xzvel),deltaTime),pos)
						camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
						cframes[rootpart]=cfr
						insSet(cam,"CFrame",camcf)
						lerpsFall()
						noYvelTime=0
					end
				end
			else
				xzvel=v3_0
				if onground then
					cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
					camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsIdle()
					noYvelTime=min(noYvelTime+delta*0.3,1)
					xzvel=xzvel*(1-noYvelTime)
				elseif Yvel>0 then
					pos=pos+v3_010*Yvel*delta
					cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
					camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsJump()
					noYvelTime=0
				else
					pos=pos+v3_010*Yvel*delta
					cfr=cfAdd(cfGet(cfr,"Rotation"),pos)
					camcf=cfAdd(camrot,pos+v3_0150+camcfLV*cammag)
					cframes[rootpart]=cfr
					insSet(cam,"CFrame",camcf)
					lerpsFall()
					noYvelTime=0
				end
			end
		end

		refreshjointsI(rootpart)
		tclear(refreshedjoints)

		local idlerv=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
		local idleoff=idlerv*0.0015

		local claimpos=insGet(primarypart,"Position")
		local claimposY=v3Get(claimpos,"Y")
		for i,v in next,cframes do
			local part=i.p

			if part then
				if insGet(part,"ReceiveAge")==0 then
					local placeholder=i.v
					if novoid and (cfGet(v,"Y")<novoid) then
						v=cfAdd(v,v3_010*(novoid-cfGet(v,"Y")))
					end
					local lastpos=i.l
					local vel=(cfGet(v,"Position")-lastpos)/delta
					local mag=v3Get(vel,"Magnitude")
					if mag<0.15 then
						if placeholder then
							insSet(placeholder,"Parent",nil)
						end
						i.l=cfGet(v,"Position")
						v=cfAdd(v,idleoff)
					elseif mag>speedlimit then
						if placeholder then
							insSet(placeholder,"CFrame",v)
							insSet(placeholder,"Parent",ws)
						end
						vel=v3Get(vel,"Unit")*speedlimit
						local newpos=lastpos+vel*delta
						v=cfAdd(cfGet(v,"Rotation"),newpos)
						i.l=newpos
					elseif placeholder then
						insSet(placeholder,"Parent",nil)
						i.l=cfGet(v,"Position")
					end
					local claimtime=i.c
					if claimtime then
						if sine-claimtime<retVelTime then
							local Ydiff=cfGet(v,"Y")-claimposY
							local velY=25.01
							local fallingTime=0
							while (Ydiff>0) or (velY>0) do
								fallingTime=fallingTime+0.025
								if fallingTime>0.6 then
									break
								end
								velY=velY-velYdelta
								Ydiff=Ydiff+(velY*0.025)
							end
							insSet(part,"AssemblyLinearVelocity",(claimpos-cfGet(v,"Position"))*v3_101/fallingTime+v3_net)
						else
							local vel1=vel*noYvelTime+xzvel
							if v3Get(vel1,"Magnitude")>25.01 then
								insSet(part,"AssemblyLinearVelocity",v3Get(vel1,"Unit")*v3_xzL+v3_net)
							else
								insSet(part,"AssemblyLinearVelocity",vel1*v3_xz+v3_net)
							end
						end
					else
						i.c=sine
						local vel1=vel*noYvelTime+xzvel
						if v3Get(vel1,"Magnitude")>25.01 then
							insSet(part,"AssemblyLinearVelocity",v3Get(vel1,"Unit")*v3_xzL+v3_net)
						else
							insSet(part,"AssemblyLinearVelocity",vel1*v3_xz+v3_net)
						end
					end
					insSet(part,"CFrame",v)
					insSet(part,"AssemblyAngularVelocity",idlerv)
				else
					i.c=nil
					i.l=insGet(part,"Position")
					local placeholder=i.v
					if placeholder then
						insSet(placeholder,"CFrame",v)
						insSet(placeholder,"Parent",ws)
					end
				end
			else
				local placeholder=i.v
				if placeholder then
					insSet(placeholder,"CFrame",v)
					insSet(placeholder,"Parent",ws)
				end
			end
		end
		setsimrad()
	end

	sine=osclock()
	lastsine=sine
	con=Connect(heartbeat,mainFunction)
	mainFunction()

	local refreshjoints=function(v) --use this on the main part if u have parts that
		refreshjointsI(v) --are connected with each other but arent connected to rootpart
		tclear(refreshedjoints)
	end

	local legcfR=cf(1,-1,0)
	local legcfL=cf(-1,-1,0)
	local raydir=v3_010*-2
	local raycastlegs=function() --this returns 2 values: right leg raycast offset, left leg raycast offset
		local rY=Raycast(ws,cfGet(cfMul(cfr,legcfR),"Position"),raydir,raycastparams)
		local lY=Raycast(ws,cfGet(cfMul(cfr,legcfL),"Position"),raydir,raycastparams)
		return rY and (v3Get(rY.Position,"Y")-(v3Get(pos,"Y")-3)) or 0,lY and (v3Get(lY.Position,"Y")-(v3Get(pos,"Y")-3)) or 0
	end

	local velbycfrvec=function() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
		local fw=cfGet(cfr,"LookVector")*xzvel/walkSpeed
		local rt=cfGet(cfr,"RightVector")*xzvel/walkSpeed
		return v3Get(fw,"X")+v3Get(fw,"Z"),v3Get(rt,"X")+v3Get(rt,"Z")
	end

	local lastvel=v3_0
	local velchg1=v3_0
	local velchgbycfrvec=function() --this returns 2 values: forward/backwards velocity change, right/left velocity change
		velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
		lastvel=xzvel
		velchg1=velchg1-velchg1*(deltaTime/2)
		local fw=cfGet(cfr,"LookVector")*velchg1/32
		local rt=cfGet(cfr,"RightVector")*velchg1/32
		return v3Get(fw,"X")+v3Get(fw,"Z"),v3Get(rt,"X")+v3Get(rt,"Z")
	end

	local lastYvel=0
	local velYchg1=0
	local velYchg=function() --this returns Y axis velocity change
		velYchg1=clamp(velYchg1+(lastYvel-Yvel),-50,50) --i recommend setting velYchg1 to 0 when u start using this function or it will look worse
		lastYvel=Yvel
		velYchg1=velYchg1-velYchg1*(deltaTime/2)
		return velYchg1
	end

	local rotToMouse=function(alpha) --this rotates ur character towards your mouse hit position
		local pos1=pos*v3_010+cfGet(insGet(mouse,"Hit"),"Position")*v3_101
		if pos~=pos1 then --could make nan rotation
			cfr=Lerp(cfr,cfl(pos,pos1),alpha or deltaTime)
		end
	end

	local glitchJoint=function(joint,targetGlitchTime,delayFrom,delayTo,radiansFrom,radiansTo) 
		if sine>targetGlitchTime then --local glitchtime=0 addMode("x",{idle=function() glitchtime=glitchJoint(joint,glitchtime,0.2,0.4,-0.1,0.1) end})
			radiansFrom=radiansFrom*100
			radiansTo=radiansTo*100
			joint.C0=cfMul(joint.C0,angles(mrandom(radiansFrom,radiansTo)/100,mrandom(radiansFrom,radiansTo)/100,mrandom(radiansFrom,radiansTo)/100)) 
			return sine+mrandom(delayFrom*100,delayTo*100)/100
		end
		return targetGlitchTime
	end

	local setWalkSpeed=function(n)
		if type(n)~="number" then
			n=16
		end
		walkSpeed=n
	end
	local setJumpPower=function(n)
		if type(n)~="number" then
			n=50
		end
		jumpPower=n
	end
	local setGravity=function(n)
		if type(n)~="number" then
			n=196.2
		end
		gravity=n
	end
	local setCfr=function(v) --sets character cframe
		if typeof(v)=="CFrame" then
			local newpos=cfGet(v,"Position")
			camcf=cfAdd(camcf,newpos-pos)
			insSet(cam,"CFrame",camcf)
			cfr=v
			pos=newpos
		elseif typeof(v)=="Vector3" then
			camcf=cfAdd(camcf,v-pos)
			insSet(cam,"CFrame",camcf)
			cfr=cfAdd(cfGet(cfr,"Rotation"),v)
			pos=v
		end
	end
	local getVel=function() --returns character velocity
		return xzvel+v3_010*Yvel --important: use only in lerps or it might not work
	end
	local getCamCF=function() --returns camera cframe
		return camcf
	end
	local isFirstPerson=function() --returns true if user is in first person camera mode
		return firstperson
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
		glitchJoint=glitchJoint,
		setWalkSpeed=setWalkSpeed,
		setJumpPower=setJumpPower,
		setGravity=setGravity,
		setCfr=setCfr,
		getVel=getVel,
		getCamCF=getCamCF,
		isFirstPerson=isFirstPerson,
		setHipHeight=setHipHeight
	}
end

btn("creepy crawler",(function()
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
	local jumplerp=function()
		local sine=sine*60
		neck.C0 = Lerp(neck.C0,cfMul(cf(0,0,0.5), euler(0,0,3.141592653589793)),deltaTime) 
		rootJoint.C0 = Lerp(rootJoint.C0,cfMul(cf(0,-1.4,0), euler(3.141592653589793,0,-3.141592653589793)),deltaTime) 
		leftShoulder.C0 = Lerp(leftShoulder.C0,cfMul(cf(-1,1.5,0.3), euler(1.7453292519943295,0,-0.17453292519943295)),deltaTime) 
		rightShoulder.C0 = Lerp(rightShoulder.C0,cfMul(cf(1,1.5,0.3), euler(1.7453292519943295,0,0.17453292519943295)),deltaTime) 
		leftHip.C0 = Lerp(leftHip.C0,cfMul(cf(-1,-1.5,0.8), euler(1.3962634015954636,0,-0.17453292519943295)),deltaTime) 
		rightHip.C0 = Lerp(rightHip.C0,cfMul(cf(1,-1.5,0.8), euler(1.3962634015954636,0,0.17453292519943295)),deltaTime)
	end

	t.addmode("default",{
		idle=function()
			local sine=sine*60
			neck.C0 = Lerp(neck.C0,cfMul(cf(0,0,0.5), euler(0.08726646259971647 * sin((sine + 20) * 0.05),0,3.141592653589793 + 0.3490658503988659 * sin((sine + -30) * 0.025))),deltaTime) 
			rootJoint.C0 = Lerp(rootJoint.C0,cfMul(cf(0,-1.5 + 0.1 * sin(sine * 0.05),0), euler(3.141592653589793,0,-3.1590459461097367 + 0.05235987755982989 * sin(sine * 0.025))),deltaTime) 
			leftShoulder.C0 = Lerp(leftShoulder.C0,cfMul(cf(-1,1.5,-0.1 * sin(sine * 0.05)), euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025))),deltaTime) 
			rightShoulder.C0 = Lerp(rightShoulder.C0,cfMul(cf(1,1.5,-0.1 * sin(sine * 0.05)), euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025))),deltaTime) 
			leftHip.C0 = Lerp(leftHip.C0,cfMul(cf(-1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)), euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025))),deltaTime) 
			rightHip.C0 = Lerp(rightHip.C0,cfMul(cf(1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)), euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025))),deltaTime) 
		end,
		walk=function()
			local sine=sine*60
			neck.C0 = Lerp(neck.C0,cfMul(cf(0,0,0.5), euler(0.17453292519943295,0.03490658503988659 * sin((sine + 2.5) * 0.2),3.141592653589793 + -0.17453292519943295 * sin((sine + -10) * 0.2))),deltaTime) 
			rootJoint.C0 = Lerp(rootJoint.C0,cfMul(cf(0,-1.5,0), euler(3.0543261909900767,0.08726646259971647 * sin((sine + 7.5) * 0.2),-3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.2))),deltaTime) 
			leftShoulder.C0 = Lerp(leftShoulder.C0,cfMul(cf(-1,1.5 + 0.5 * sin((sine + 10) * 0.2),0.3 + 0.2 * sin((sine + -10) * 0.2)), euler(1.6580627893946132 + 0.17453292519943295 * sin((sine + 15) * 0.2),0,-0.08726646259971647 * sin(sine * 0.2))),deltaTime) 
			rightShoulder.C0 = Lerp(rightShoulder.C0,cfMul(cf(1,1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.3 + 0.2 * sin((sine + 5) * 0.2)), euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2))),deltaTime) 
			leftHip.C0 = Lerp(leftHip.C0,cfMul(cf(-1,-1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.5 + 0.2 * sin((sine + 5) * 0.2)), euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2))),deltaTime) 
			rightHip.C0 = Lerp(rightHip.C0,cfMul(cf(1,-1.5 + 0.5 * sin((sine + 10) * 0.2),0.5 + 0.2 * sin((sine + -7.5) * 0.2)), euler(1.6580627893946132 + -0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2))),deltaTime) 
		end,
		jump=jumplerp,
		fall=jumplerp
	})
end))

btn("nameless animations V8",(function()
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

			LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5+0.1*sin((sine - 1)*1.3),0.05 * sin((sine-0.3)*1.3)),angles(0.5235987755982988+0.08726646259971647*sin(sine*1),-1.4835298641951802+0.10471975511965978*sin(sine*1.3),0.5235987755982988)),deltaTime) 
			RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5+0.1*sin((sine - 1)*1.3),0.05 * sin((sine-0.3)*1.3)),angles(0.5235987755982988+0.08726646259971647*sin(sine*1),1.4835298641951802-0.10471975511965978*sin(sine*1.3),-0.5235987755982988)),deltaTime) 
			LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1.09-0.1*sin(sine*1.3)+lY-Ychg,lY*-0.5),angles(-0.026179938779914945*sin(sine*1.3),-1.3962634015954636,0)),deltaTime) 
			RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1.09-0.1*sin(sine*1.3)+rY-Ychg,rY*-0.5),angles(-0.026179938779914945*sin(sine*1.3),1.3962634015954636,0)),deltaTime) 
			RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.09+0.1*sin(sine*1.3) + Ychg,0.025 * sin(sine*1.3)),angles(-1.5707963267948966+0.026179938779914945*sin(sine*1.3),0,3.141592653589793)),deltaTime) 
			Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.53588974175501-0.026179938779914945*sin((sine+1)*1.3),0.05235987755982989*sin((sine-0.6)*0.65),3.141592653589793)),deltaTime) 
			--MW_animatorProgressSave: LeftArm,-1,0,0,1,30,5,0,1,0.5,0.1,-1,1.3,-85,6,0,1.3,0,0.05,-0.3,1.3,30,0,0,1,RightArm,1,0,0,1,30,5,0,1,0.5,0.1,-1,1.3,85,-6,0,1.3,0,0.05,-0.3,1.3,-30,0,0,1,LeftLeg,-1,0,0,1,-0,-1.5,0,1.3,-1.09,-0.1,0,1.3,-80,0,0,1,0,0,0,1,0,0,0,1,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,-0.0002722442150115967,0,0,1,0,0,0,1,RightLeg,1,0,0,1,0,-1.5,0,1.3,-1.09,-0.1,0,1.3,80,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,1.5,0,1.3,0.09,0.1,0,1.3,-0,0,0,1,0,0.025,0,1.3,180,0,0,1,Head,0,0,0,1,-88,-1.5,1,1.3,1,0,0,1,-0,3,-0.6,0.65,0,0,0,1,180,0,0,1
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

			LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(-0.7853981633974483*sin((sine+0.07)*8)*Vfw,-1.5707963267948966+0.5235987755982988*sin((sine+0.15)*8),0)),deltaTime) 
			RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(0.7853981633974483*sin((sine+0.07)*8)*Vfw,1.5707963267948966+0.5235987755982988*sin((sine+0.15)*8),0)),deltaTime) 
			RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.3*sin((sine - 0.15)*8)+rY-Ychg,rY*-0.5),angles(1.5707963267948966-0.9599310885968813*sin(sine*8)*Vfw,1.5707963267948966-0.7853981633974483*sin(sine*8)*Vrt,-1.5707963267948966)),deltaTime) 
			LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1+0.3*sin((sine + 0.15)*8)+lY-Ychg,lY*-0.5),angles(1.5707963267948966+0.9599310885968813*sin(sine*8)*Vfw,-1.5707963267948966+0.7853981633974483*sin(sine*8)*Vrt,1.5707963267948966)),deltaTime) 
			Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966+0.08726646259971647*sin(sine*16),0,3.141592653589793+0.08726646259971647*sin((sine+0.04)*8)-Vrt)),deltaTime) 
			RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.2 * sin((sine+0.1)*16) + Ychg,0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
			--MW_animatorProgressSave: CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,8,0,0,0,8,-0.25,0,0,8,0,0,0,8,-0.0002722442150115967,0,0,8,0,0,0,8,LeftArm,-1,0,0,8,-0,-45,0.07,8,0.5,0,0,8,-90,30,0.15,8,0,0,0,8,0,0,0,8,RightArm,1,0,0,8,0,45,0.07,8,0.5,0,0,8,90,30,0.15,8,0,0,0,8,0,0,0,8,RightLeg,1,0,0,8,90,-55,0,8,-1,0.3,-0.15,8,90,-45,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,55,0,8,-1,0.3,0.15,8,-90,45,0,8,0,0,0,8,90,0,0,8,Head,0,0,0,8,-90,5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0.04,8,Torso,0,0,0,8,-90,0,0,8,0,0.2,0.1,16,-0,0,0,8,0,0,0,8,180,0,0,8
		end,
		jump = function()
			velYchg()
			local Vfw, Vrt = velbycfrvec()
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.4835298641951802 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			velYchg()
			local Vfw, Vrt = velbycfrvec()
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.6580627893946132 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			velYchg()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -2.45 - 0.05 * sin(sine * 2), 0),angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			velYchg()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)),angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0),angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)),angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)),angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0)),deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			local Ychg=velYchg()/20
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9 - 0.2 * sin(sine * 2)-Ychg, 0),angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2)+Ychg, 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5))),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.9 - 0.2 * sin(sine * 2)-Ychg, 0),angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})
	addmode("t", {
		idle = function()
			local Ychg=velYchg()/20
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0),angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.1 * sin(sine * 4), Ychg, 0),angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + 0.1 * sin(sine * 4)-Ychg, 0),angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4)-Ychg, 0),angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			local Ychg=velYchg()/20
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2)-Ychg, 0),angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2)-Ychg, 0),angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 1.2000000476837158, 0),angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.1 * sin(sine * 2) + Ychg, 0),angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767)),deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})
	addmode("u", {
		idle = function()
			velYchg()
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.75 + 0.25 * sin(sine * 2), 0),angles(-1.5707963267948966, 0, 3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0),angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			local Ychg=velYchg()/20
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5)-Ychg, -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9)+Ychg, 0),angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1 + 0.2 * sin(sine * 9), 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5))),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5)-Ychg, -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local Ychg=velYchg()/20
			local rY, lY = raycastlegs()

			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + lY-Ychg, lY * -0.5),angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, Ychg, 0.09 * sin(sine * 2)),angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + rY-Ychg, rY * -0.5),angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local Ychg=velYchg()/20
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY-Ychg, rY * -0.5),angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.1 * sin((sine + 0.1) * 16)+Ychg, 0),angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY-Ychg, lY * -0.5),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			local Ychg=velYchg()/20
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1-Ychg, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1-Ychg, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, Ychg, 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		modeEntered = function()
			setWalkSpeed(25)
		end,
		idle = function()
			velYchg()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			velYchg()
			local Vfw, Vrt = velbycfrvec()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - Vrt * 0.2)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		modeLeft = function()
			setWalkSpeed(16)
		end,
	})
	addmode("g", {
		idle = function()
			local Ychg=velYchg()/20
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)),angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin((sine + 0.4) * 8), Ychg, 0),angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8)-Ychg, 0),angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8)-Ychg, 0),angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4))),deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			local Ychg=velYchg()/20
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.3 * sin(sine * 8)-Ychg, 0),angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 1, 0),angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 1, 0),angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16)+Ychg, 0),angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.3 * sin(sine * 8)-Ychg, 0),angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			local Ychg=velYchg()/20
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.8, -1, -0.1),angles(0.17453292519943295, -0.6981317007977318, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.2, 0.5, 0),angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1.1, -1, 0),angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -1.7 + 0.5 * sin(sine * 4)+Ychg, 0.15 * sin(sine * 4)),angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)),angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4))),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			local Ychg=velYchg()/20
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12)-Ychg, -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12)-Ychg, -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12)+Ychg, 0),angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966)),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	local idleL=function()
		local Ychg=velYchg()/20
		RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.9+0.2*sin((sine - 0.2)*16)-Ychg,0.25),angles(0,0.7853981633974483,0.4363323129985824-1.1344640137963142*sin((sine-0.0875)*8))),deltaTime) 
		RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0.15 * sin((sine-0.1)*8),0.54 * sin(sine*16)+Ychg,0),angles(-1.5707963267948966,-0.08726646259971647*sin((sine-0.0785)*8),3.141592653589793-0.08726646259971647*sin((sine-0.0785)*8))),deltaTime) 
		RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.75+0.07*sin((sine - 0.0785)*8),1.3+0.1*sin((sine - 0.0875)*16),0),angles(1.3962634015954636,2.356194490192345-0.06981317007977318*sin((sine-0.0785)*8),1.2217304763960306)),deltaTime) 
		Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966+0.08726646259971647*sin((sine-0.1)*16),0.12217304763960307*sin((sine-0.0785)*8),3.141592653589793)),deltaTime) 
		LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.9+0.2*sin((sine - 0.2)*16)-Ychg,0.25),angles(0,-0.7853981633974483,-0.4363323129985824-1.1344640137963142*sin((sine-0.0875)*8))),deltaTime) 
		LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.45+0.05*sin((sine - 0.0875)*16),-0.2),angles(2.0943951023931953+0.17453292519943295*sin((sine-0.0875)*16),-0.5235987755982988,1.5707963267948966+0.17453292519943295*sin((sine-0.0875)*16))),deltaTime) 
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
end))

btn("nameless animations V7",(function()
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

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1),angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3),angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2) - Cfw, Crt, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5),angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0),angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5),angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988)),deltaTime) 
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -0.2 + 0.2 * sin(sine * 16), Cfw * -3),angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - Vfw * 0.15 - Cfw, 0.03490658503988659 * sin(sine * 8) + Vrt * 0.15 + Crt, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - Vrt * 0.1)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * Vfw + 0.4 * sin((sine + 10) * 8) * Vfw + rY * -0.5),angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*Vrt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8))),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0),angles(0.5235987755982988 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.35 + 0.1 * sin(sine * 8), 0),angles(-0.5235987755982988 * sin(sine * 8)*Vfw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * Vfw - 0.4 * sin((sine + 10) * 8) * Vfw + lY * -0.5),angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*Vrt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + Vfw * 0.15, -0.08726646259971647 * sin(sine * 8) + Vrt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - Vrt * 0.5)),deltaTime) 
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0, Cfw * -3),angles(-1.4835298641951802 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0, Cfw * -3),angles(-1.6580627893946132 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -2.45 - 0.05 * sin(sine * 2), Cfw * -3),angles(0.03490658503988659 * sin(sine * 2) - Cfw, Crt, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)),angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -1.85 - 0.1 * sin((sine + 0.2) * 2), Cfw * -3),angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)),angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)),angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0)),deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9 - 0.2 * sin(sine * 2), 0),angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin(sine + 0.8) + Crt * 3, -0.1 + 0.2 * sin(sine * 2), Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5))),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0),angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})
	addmode("t", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0),angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.1 * sin(sine * 4) + Crt * 3, 0, Cfw * -3),angles(-1.5707963267948966 - Cfw, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4) + Crt, -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + 0.1 * sin(sine * 4), 0),angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0),angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0),angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0),angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 1.2000000476837158, 0),angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3),angles(-1.6580627893946132 - Cfw, 0.08726646259971647 + Crt, 3.0543261909900767)),deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})
	addmode("u", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0.75 + 0.25 * sin(sine * 2), Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0),angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), Cfw * -3),angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9) - Cfw, -0.05235987755982989 * sin(sine * 4.5) + Crt, 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1 + 0.2 * sin(sine * 9), 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5))),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + lY, lY * -0.5),angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt, 0, 0.09 * sin(sine * 2) - Cfw * 3),angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + rY, rY * -0.5),angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5),angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0.1 * sin((sine + 0.1) * 16), Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0, Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793)),deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2 - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793 - Vrt * 0.2)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)),angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin((sine + 0.4) * 8) + Crt * 3, 0, Cfw * -3),angles(-1.5707963267948966 - Cfw, 0.3490658503988659 * sin(sine * 8) + Crt, -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0),angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0),angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4))),deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.3 * sin(sine * 8), 0),angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 1, 0),angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 1, 0),angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(-0.1 * sin(sine * 8) + Crt * 3, 0.2 * sin((sine + 0.1) * 16), Cfw * -3),angles(-1.5707963267948966 - Cfw, 0.2617993877991494 * sin(sine * 8) + Crt, -3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.3 * sin(sine * 8), 0),angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.8, -1, -0.1),angles(0.17453292519943295, -0.6981317007977318, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.2, 0.5, 0),angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1.1, -1, 0),angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4) - Cfw * 3),angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4) - Cfw, Crt, 3.6651914291880923)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)),angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4))),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), Cfw * -3),angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12) - Cfw, 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6) + Crt, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966)),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)),angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.7, 0.8, 0),angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)),angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0.15 + 0.4 * sin((sine - 0.5) * 10), Cfw * -3),angles(-1.4835298641951802 - Cfw, 0.17453292519943295 * sin(sine * 5) + Crt, -3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.7, 0.5, -0.3),angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})

	addmode("x", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, 0, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0, Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end,
		walk = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, 0, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(Crt * 3, 0, Cfw * -3),angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end
	})
end))

btn("nameless animations V6",(function()
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

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1),angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.1 * sin(sine * 2), 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2), 0, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5),angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0),angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5),angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988)),deltaTime) 
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.2 + 0.2 * sin(sine * 16), 0),angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - fw * 0.15, 0.03490658503988659 * sin(sine * 8) + rt * 0.15, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - rt * 0.1)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * fw + 0.4 * sin((sine + 10) * 8) * fw + rY * -0.5),angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*rt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8))),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0),angles(0.5235987755982988 * sin(sine * 8)*fw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.35 + 0.1 * sin(sine * 8), 0),angles(-0.5235987755982988 * sin(sine * 8)*fw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * fw - 0.4 * sin((sine + 10) * 8) * fw + lY * -0.5),angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*fw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*rt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + fw * 0.15, -0.08726646259971647 * sin(sine * 8) + rt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - rt * 0.5)),deltaTime) 
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3962634015954636, 0, -3.141592653589793 - rt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.7453292519943295, 0, -3.141592653589793 - rt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.75, -0.2),angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -2.45 - 0.05 * sin(sine * 2), 0),angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)),angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0),angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)),angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)),angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5),angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0)),deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9 - 0.2 * sin(sine * 2), 0),angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2), 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5))),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0),angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25),angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7))),deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})
	addmode("t", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0),angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.1 * sin(sine * 4), 0, 0),angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + 0.1 * sin(sine * 4), 0),angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0),angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0),angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0),angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 1.2000000476837158, 0),angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.1 * sin(sine * 2), 0),angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767)),deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})
	addmode("u", {
		idle = function()
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.75 + 0.25 * sin(sine * 2), 0),angles(-1.5707963267948966, 0, 3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0),angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)),angles(0, -1.5707963267948966, 0)),deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), 0),angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1 + 0.2 * sin(sine * 9), 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5))),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0),angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + lY, lY * -0.5),angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0, 0.09 * sin(sine * 2)),angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1.1 + rY, rY * -0.5),angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - rt)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5),angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, 1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.1 * sin((sine + 0.1) * 16), 0),angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8))),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * fw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(0, 1.5707963267948966, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.5, 0.5, 0),angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(0, -1.5707963267948966, 0)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.5707963267948966, 0, -3.141592653589793)),deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - fw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + rt * 0.2, -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1))),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + fw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - rt * 0.2, -2.9670597283903604)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)),angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - fw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - rt * 0.2)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966)),deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)),angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4))),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0.3 * sin((sine + 0.4) * 8), 0, 0),angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0),angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0),angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)),angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4))),deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.3 * sin(sine * 8), 0),angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.5, 1, 0),angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.5, 1, 0),angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0),angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.3 * sin(sine * 8), 0),angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-0.8, -1, -0.1),angles(0.17453292519943295, -0.6981317007977318, 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1.2, 0.5, 0),angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4))),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1.1, -1, 0),angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4)),angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)),angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4))),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5),angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5),angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), 0),angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2),angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966)),deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)),angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(0.7, 0.8, 0),angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)),angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.15 + 0.4 * sin((sine - 0.5) * 10), 0),angles(-1.4835298641951802, 0.17453292519943295 * sin(sine * 5), -3.141592653589793)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-0.7, 0.5, -0.3),angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})
end))

btn("Immortality Lord",(function()
	local backup=accessorylimbs
	accessorylimbs={
		{meshid="17269636541",textureid="",C0=cf_0,Name="Torso"},
		{meshid="17269753087",textureid="",C0=angles(0,3.14,0),Name="Head"},
		{meshid="17375312569",textureid="",C0=cf(1.50995803e-08,-1.07200003,-0.100000001,-1,0,1.50995803e-07,0,1,0,-1.50995803e-07,0,-1),Name="Head"},
		{meshid="17269487439",textureid="",C0=angles(0,0,1.5707963267948966),Name="Left Arm"},
		{meshid="17269487439",textureid="",C0=angles(0,0,1.5707963267948966),Name="Right Arm"},
		{meshid="17269487439",textureid="",C0=angles(0,0,1.5707963267948966),Name="Left Leg"},
		{meshid="17269487439",textureid="",C0=angles(0,0,1.5707963267948966),Name="Right Leg"}
	}
	local t=reanimate()
	accessorylimbs=backup
	if type(t)~="table" then return end
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local getVel=t.getVel
	local setCfr=t.setCfr
	local getCamCF=t.getCamCF
	local cframes=t.cframes
	local joints=t.joints
	local getAccWeldFromMesh=t.getAccWeldFromMesh
	local setWalkSpeed=t.setWalkSpeed
	local fling=t.fling

	Neck.C1=cf(0,-1,0,-1,0,0,0,0,1,0,1,-0)
	RootJoint.C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
	RightShoulder.C1=cf(-1,1,0,0,0,1,0,1,-0,-1,0,0)
	LeftShoulder.C1=cf(1,1,0,0,0,-1,0,1,0,1,0,0)
	RightHip.C1=cf(1,2,0,0,0,1,0,1,-0,-1,0,0)
	LeftHip.C1=cf(-1,2,0,0,0,-1,0,1,0,1,0,0)

	setWalkSpeed(32)
	t.setJumpPower(0)
	t.setHipHeight(7)
	t.setGravity(math.huge)

	local Gun={C0=cf_0}
	local Sword={C0=cf_0}

	local torso=t.getPart("Torso")
	local rootpart=t.getPart("HumanoidRootPart")

	local leftWingPart={}
	cframes[leftWingPart]=cf_0

	local leftWingAccWeld=getAccWeldFromMesh("17269814619","")
	leftWingAccWeld.C0=angles(0,3.14,0)
	leftWingAccWeld.C1=cf_0
	leftWingAccWeld.Part1=leftWingPart

	local LeftWing={
		C0=cf(-.3,1,1)*angles(0,rad(90),0),
		C1=cf(2.2,2,1.5),
		Part0=torso,
		Part1=leftWingPart
	}
	tinsert(joints,LeftWing)

	local rightWingPart={}
	cframes[rightWingPart]=cf_0

	local rightWingAccWeld=getAccWeldFromMesh("17269824947","")
	rightWingAccWeld.C0=angles(0,3.14,0)
	rightWingAccWeld.C1=cf_0
	rightWingAccWeld.Part1=rightWingPart

	local RightWing={
		C0=cf(.3,1,1)*angles(0,rad(90),0),
		C1=cf(2.2,2,-1.5),
		Part0=torso,
		Part1=rightWingPart
	}
	tinsert(joints,RightWing)

	local swordpart={}
	cframes[swordpart]=cf_0

	local swordAccWeld0=getAccWeldFromMesh("17326555172","")
	swordAccWeld0.C0=cf(-0.0023765564,2.14191723,3.825109,-1,0,0,0,-0.519688249,-0.85435611,0,-0.854355931,0.519688308)
	swordAccWeld0.C1=cf_0
	swordAccWeld0.Part1=swordpart
	local swordAccWeld1=getAccWeldFromMesh("17326476901","")
	swordAccWeld1.C0=cf(-0.00237464905,-1.31204176,-3.18902349,-1,0,0,0,-0.519688249,-0.85435611,0,-0.854355931,0.519688308)
	swordAccWeld1.C1=cf_0
	swordAccWeld1.Part1=swordpart

	local Sword={
		C0=cf(0,-2,0)*angles(1.57,0,0),
		C1=cf(0,-6.3,0),
		Part0=t.getPart("Right Arm"),
		Part1=swordpart
	}
	tinsert(joints,Sword)

	local DefaultsNeckC0 = cf(0,2,0)*angles(rad(-90),0,rad(180))
	local DefaultsRootJointC0 = angles(rad(-90),0,rad(180))
	local DefaultsRightShoulderC0 = cf(-1,0,0)*angles(0,rad(90),0)
	local DefaultsLeftShoulderC0 = cf(1,0,0)*angles(0,rad(-90),0)

	local TimingSine=sine*60
	local attacking=false
	local animOverwrite=nil
	local neckSnap=false

	local Lerp1=function(a,b,c)
		return Lerp(a,b,min(c*6*deltaTime,1))
	end

	local v3_030=v3_010*3
	local flycf=nil
	local flypos=nil
	local charcf=cf_0
	local animations=function(onground)		
		TimingSine=sine*60
		local vel=getVel()
		local xzvel=vel*v3_101
		if flycf then
			if xzvel~=v3_0 then
				local camrot=cfGet(getCamCF(),"Rotation")
				local clv=cfGet(camrot,"LookVector")
				local crv=cfGet(camrot,"RightVector")
				local fw=v3Get(clv*v3_101,"Unit")*xzvel
				fw=clv*(v3Get(fw,"X")+v3Get(fw,"Z"))
				local rt=v3Get(crv*v3_101,"Unit")*xzvel
				rt=crv*(v3Get(rt,"X")+v3Get(rt,"Z"))
				flypos=flypos+v3Get(fw+rt,"Unit")*deltaTime*3.2
				flycf=cfAdd(camrot,flypos)
				charcf=cfAdd(flycf,cfGet(flycf,"UpVector")*3-v3_030)
			end
			cframes[rootpart]=flycf
			setCfr(charcf)
		elseif onground then
			charcf=cframes[rootpart]
		elseif cframes[rootpart].Y<charcf.Y then
			local newcf=cframes[rootpart]
			local lastY=cfGet(charcf,"Y")
			charcf=cfAdd(cfGet(newcf,"Rotation"),v3(cfGet(newcf,"X"),lastY+(cfGet(newcf,"Y")-lastY)*deltaTime*0.6,cfGet(newcf,"Z")))
			cframes[rootpart]=charcf
			setCfr(charcf)
		else
			charcf=cframes[rootpart]
		end
		if attacking then
			animOverwrite()
		elseif xzvel~=v3_0 then
			if neckSnap then
				Neck.C0 = DefaultsNeckC0
				neckSnap = false
			else
				Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
			end
			if mrandom(15) == 1 then
				Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
				neckSnap = true
			end
			if onground and not flycf then
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(-10),0,0)*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-2,0)*angles(rad(154.35-5.65*sin(TimingSine/25)),0,0),.25)
			else
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80+5*cos(TimingSine/25)),0,rad(45))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-0,-1)*angles(0,rad(170),rad(-10)),.25)
			end
			RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-sin(TimingSine/25))*angles(rad(20),0,0),.25)
			LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(20),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
			RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
			LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
		else
			RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-sin(TimingSine/25))*angles(rad(20),0,0),.25)
			if neckSnap then
				Neck.C0 = DefaultsNeckC0*angles(rad(20),rad(10*sin(TimingSine/50)),0)
				neckSnap = false
			else
				Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0*angles(rad(20),rad(10*sin(TimingSine/50)),0),.25)
			end
			if mrandom(15) == 1 then
				Neck.C0 = DefaultsNeckC0*angles(rad(20+mrandom(-20,20)),rad((10*sin(TimingSine/50))+mrandom(-20,20)),rad(mrandom(-20,20)))
				neckSnap = true
			end
			if onground and not flycf then
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(-10),0,0)*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-2,0)*angles(rad(154.35-5.65*sin(TimingSine/25)),0,0),.25)
			else
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80+5*cos(TimingSine/25)),0,rad(45))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,0,-1)*angles(0,rad(170),rad(-10)),.25)
			end
			LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(20),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
			RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(10),rad(80),rad(10+10*cos(TimingSine/25))),.25)
			LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(20),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
		end
		RightWing.C0 = Lerp1(RightWing.C0,cf(0.3,1,1)*angles(0,rad(105-25*cos(TimingSine/25)),0),.25)
		LeftWing.C0 = Lerp1(LeftWing.C0,cf(-0.3,1,1)*angles(0,rad(75+25*cos(TimingSine/25)),0),.25)
	end

	local onKeyPressed=function(key)
		if key=="f" then
			if flycf then
				flycf=nil
				charcf=cf(flypos)
				setCfr(charcf)
			else
				flypos=cfGet(cframes[rootpart],"Position")
				flycf=cf(flypos)
				charcf=flycf
			end
		elseif key=="z" then
			if attacking then return end
			attacking=true
			setWalkSpeed(0)
			animOverwrite=function()
				RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-sin(TimingSine/25))*angles(rad(5),0,rad(-20)),.25)
				if neckSnap then
					Neck.C0 = DefaultsNeckC0
					neckSnap = false
				else
					Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
				end
				if mrandom(15) == 1 then
					Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
					neckSnap = true
				end
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80),0,rad(50))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(-1,-1,0)*angles(rad(180),rad(-90),0),.25)
				LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(5),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
				RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
				LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
			end
			twait(0.25)
			local flingpos=cfGet(cfMul(cframes[rootpart],cf(0,0,-9)),"Position")
			for i,v in next,GetDescendants(ws) do
				if IsA(v,"Humanoid") then
					local p=v.Parent
					p=gp(p,"HumanoidRootPart","BasePart") or FindFirstChildWhichIsA(p,"BasePart")
					if p and (v3Get(insGet(p,"Position")-flingpos,"Magnitude")<9) then
						fling(v)
					end
				end
			end
			animOverwrite=function()
				RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-sin(TimingSine/25))*angles(rad(5),0,rad(20)),.25)
				if neckSnap then
					Neck.C0 = DefaultsNeckC0
					neckSnap = false
				else
					Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
				end
				if mrandom(15) == 1 then
					Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
					neckSnap = true
				end
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(2,1,-1)*angles(rad(80),0,rad(-50))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(-1,-1,0)*angles(rad(180),rad(-90),0),.25)
				LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(5),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
				RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
				LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
			end
			twait(0.25)
			setWalkSpeed(32)
			attacking=false
		elseif key=="x" then
			attacking=true
			setWalkSpeed(0)
			local newpos=cfGet(insGet(mouse,"Hit"),"Position")+v3_010*10
			local newcf=cfl(newpos,newpos+cfGet(getCamCF(),"LookVector")*v3_101)
			animOverwrite=function()
				RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-sin(TimingSine/25))*angles(rad(20),0,0),.25)
				if neckSnap then
					Neck.C0 = DefaultsNeckC0
					neckSnap = false
				else
					Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
				end
				if mrandom(15) == 1 then
					Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
					neckSnap = true
				end
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80+5*cos(TimingSine/25)),0,rad(45))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-0,-1)*angles(0,rad(170),rad(-10)),.25)
				LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(20),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
				RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
				LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
			end
			twait(0.5)
			local animStart=sine
			animOverwrite=function()
				RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,-20*(.5+sine-animStart))*angles(rad(20),0,0),.25)
				if neckSnap then
					Neck.C0 = DefaultsNeckC0
					neckSnap = false
				else
					Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
				end
				if mrandom(15) == 1 then
					Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
					neckSnap = true
				end
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80+5*cos(TimingSine/25)),0,rad(45))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-0,-1)*angles(0,rad(170),rad(-10)),.25)
				LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(20),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
				RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
				LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
			end
			twait(0.5)
			if flycf then
				flycf=newcf
				flypos=newpos
			end
			charcf=newcf
			setCfr(newcf)

			twait(0.5)
			animStart=sine

			animOverwrite=function()
				RootJoint.C0 = Lerp1(RootJoint.C0,DefaultsRootJointC0*cf(0,0,(-sin(TimingSine/25))-(10-(sine-animStart)*20))*angles(rad(20),0,0),.25)
				if neckSnap then
					Neck.C0 = DefaultsNeckC0
					neckSnap = false
				else
					Neck.C0 = Lerp1(Neck.C0,DefaultsNeckC0,.25)
				end
				if mrandom(15) == 1 then
					Neck.C0 = DefaultsNeckC0*angles(rad(mrandom(-20,20)),rad(mrandom(-20,20)),rad(mrandom(-20,20)))
					neckSnap = true
				end
				RightShoulder.C0 = Lerp1(RightShoulder.C0,cf(3,1,0)*angles(rad(80+5*cos(TimingSine/25)),0,rad(45))*DefaultsRightShoulderC0,.25)
				Sword.C0 = Lerp1(Sword.C0,cf(0,-0,-1)*angles(0,rad(170),rad(-10)),.25)
				LeftShoulder.C0 = Lerp1(LeftShoulder.C0,cf(-3,1,0)*angles(rad(20),0,rad(-10-10*cos(TimingSine/25)))*DefaultsLeftShoulderC0,.25)
				RightHip.C0 = Lerp1(RightHip.C0,cf(2,-2,0)*angles(rad(-20),rad(80),rad(10+10*cos(TimingSine/25))),.25)
				LeftHip.C0 = Lerp1(LeftHip.C0,cf(-2,-2,0)*angles(rad(-10),rad(-80),rad(-10-10*cos(TimingSine/25))),.25)
			end
			twait(0.5)
			setWalkSpeed(32)
			attacking=false
		end
	end

	local animations1=function()
		animations(true)
	end
	local animations0=function()
		animations(false)
	end
	local lastmode="default"
	t.addmode("default",{
		modeEntered=function()
			onKeyPressed(lastmode)
			lastmode="default"
		end,
		idle=animations1,walk=animations1,jump=animations0,fall=animations0
	})
	t.addmode("z",{
		modeEntered=function()
			onKeyPressed("z")
			lastmode="z"
		end,
		idle=animations1,walk=animations1,jump=animations0,fall=animations0
	})
	t.addmode("x",{
		modeEntered=function()
			onKeyPressed("x")
			lastmode="x"
		end,
		idle=animations1,walk=animations1,jump=animations0,fall=animations0
	})
	t.addmode("f",{
		modeEntered=function()
			onKeyPressed("f")
			lastmode="f"
		end,
		idle=animations1,walk=animations1,jump=animations0,fall=animations0
	})
end))
lbl("(needs specific accessories)")

btn("goofy trolus (goofy)",(function()
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

			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(0.6981317007977318 * sin((sine + 0.5) * 4), 1.5707963267948966 - 0.3490658503988659 * sin(sine * 4), 0)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(0.6981317007977318 * sin((sine + 0.5) * 4), -1.5707963267948966 + 0.3490658503988659 * sin(sine * 4), 0)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + rY, 0),angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), 1.6580627893946132, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, -0.2 + 0.2 * sin((sine + 1) * 8), 0),angles(-1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 0, 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 + lY, 0),angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), -1.6580627893946132, 1.5707963267948966)),deltaTime) 
			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 - 0.8726646259971648 * sin((sine + 0.25) * 4), 0, 3.141592653589793)),deltaTime) 
			--RightArm,1,0,0,4,0,40,0.5,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,-0,40,0.5,4,0.5,0,0,4,-90,20,0,4,0,0,0,4,0,0,0,4,RightLeg,1,0,0,4,90,-60,0,4,-1,0,0,4,95,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,40,0,4,-0.2,0.2,1,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-60,0,4,-1,0,0,4,-95,0,0,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-90,-50,0.25,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.5707963267948966 + 0.5235987755982988 * sin((sine + 0.45) * 8), 0, 3.141592653589793)),deltaTime) 
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(2.0943951023931953 - 1.7453292519943295 * sin((sine - 0.1) * 4), 1.9198621771937625, -1.5707963267948966)),deltaTime) 
			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf(0, 0.25 + 0.5 * sin((sine - 0.125) * 8), 0),angles(-1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0, 3.141592653589793)),deltaTime) 
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 1 * sin(sine * 4), 0),angles(1.5707963267948966 - 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, -1.5707963267948966 - 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, 1.5707963267948966)),deltaTime) 
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 + 1 * sin(sine * 4), 0),angles(1.5707963267948966 + 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, 1.5707963267948966 + 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, -1.5707963267948966)),deltaTime) 
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(2.0943951023931953 + 1.7453292519943295 * sin((sine - 0.1) * 4), -1.7453292519943295, 1.5707963267948966)),deltaTime) 
			--Head,0,0,0,4,-90,30,0.45,8,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4,RightArm,1,0,0,4,120,-100,-0.1,4,0.5,0,0,4,110,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,10,0,8,0.25,0.5,-0.125,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-70,-0.15,4,-1,-1,0,4,-90,-35,-0.15,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,70,-0.15,4,-1,1,0,4,90,35,-0.15,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,120,100,-0.1,4,0.5,0,0,4,-100,0,0,4,0,0,0,4,90,0,0,4
		end
	})
end))

btn("good cop bad cop animations",(function()
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
	local setWalkSpeed=t.setWalkSpeed
	local setJumpPower=t.setJumpPower
	setWalkSpeed(20)
	setJumpPower(50)

	local ROOTC0=angles(rad(-90),0,rad(180))
	local NECKC0=cfMul(cf(0,1,0),angles(rad(-90),0,rad(180)))
	local RIGHTSHOULDERC0=cfMul(cf(-0.5,0,0),angles(0,rad(90),0))
	local LEFTSHOULDERC0=cfMul(cf(0.5,0,0),angles(0,rad(-90),0))

	--bruh yeah shackluster had a lot of math.rad(0) instead of just 0
	--and a lot of multyplying by angles(0, 0, 0)
	--and he had ArtificialHB
	--and he had a sine value increasing by 2/3 each frame
	--and a lot of variables with names saying other things
	--and he had both C0 and C1 lerps for the same animations

	local jumplerps=function()
		local Animation_Speed = 0.45 / deltaTime
		RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
		Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
		RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

		RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0,angles(rad(-20), 0, 0)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.5, 0.5, 0),angles(rad(-40), 0, rad(20))), RIGHTSHOULDERC0), 0.2 / Animation_Speed)
		LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1.5, 0.5, 0),angles(rad(-40), 0, rad(-20))), LEFTSHOULDERC0), 0.2 / Animation_Speed)
		RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, -0.3),angles(0, rad(90), 0),angles(rad(-5), 0, rad(-20))), 0.2 / Animation_Speed)
		LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, -0.3),angles(0, rad(-90), 0),angles(rad(-5), 0, rad(20))), 0.2 / Animation_Speed)	
	end
	local falllerps=function()
		local Animation_Speed = 0.45 / deltaTime
		RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
		Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
		RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

		RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0,angles(rad(20), 0, 0)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.5, 0.5, 0),angles(0, 0, rad(60))), RIGHTSHOULDERC0), 0.2 / Animation_Speed)
		LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1.5, 0.5, 0),angles(0, 0, rad(-60))), LEFTSHOULDERC0), 0.2 / Animation_Speed)
		RightHip.C0 = Lerp(RightHip.C0,cfMul(cfMul(cf(1, -1, 0),angles(0, rad(90), 0)),angles(0, 0, rad(20))), 0.2 / Animation_Speed)
		LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cfMul(cf(-1, -1, 0),angles(0, rad(-90), 0)),angles(0, 0, rad(10))), 0.2 / Animation_Speed)
	end

	local idleOverwrite=nil

	addmode("default",{ --mode 1
		modeLeft=function() --enter mode 0
			setWalkSpeed(0)
			setJumpPower(0)
			idleOverwrite=function()
				local sine = sine * 40
				local Animation_Speed = 0.45 / deltaTime
				RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
				RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
				LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

				RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0 * cf(0, 0, 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Lerp(Neck.C0, NECKC0, 1 / Animation_Speed)
				RightShoulder.C0 = Lerp(RightShoulder.C0, cf(1.5, 0.5, 0) * angles(0, 0, rad(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Lerp(LeftShoulder.C0, cf(-1.5, 0.5, 0) * angles(0, 0, rad(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Lerp(RightHip.C0, cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(83), 0), 1 / Animation_Speed)
				LeftHip.C0 = Lerp(LeftHip.C0, cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-83), 0), 1 / Animation_Speed)
			end
			twait(0.15)
			idleOverwrite=function()
				local sine = sine * 40
				local Animation_Speed = 0.45 / deltaTime
				RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
				RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
				LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

				RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0 * cf(0, 0, 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Lerp(Neck.C0, NECKC0 * angles(rad(5), 0, 0), 1 / Animation_Speed)
				RightShoulder.C0 = Lerp(RightShoulder.C0, cf(1.25, 0.5, -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Lerp(LeftShoulder.C0, cf(-1.25, 0.35, -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Lerp(RightHip.C0, cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(83), 0), 1 / Animation_Speed)
				LeftHip.C0 = Lerp(LeftHip.C0, cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-83), 0), 1 / Animation_Speed)
			end
			twait(0.5)
			--CreateSound(363808674, Torso, 6, 1, false)
			idleOverwrite=function()
				local sine = sine * 40
				local Animation_Speed = 0.45 / deltaTime
				RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
				RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
				LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

				RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0 * cf(0, 0, 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Lerp(Neck.C0, NECKC0 * angles(rad(5), rad(25), 0), 1 / Animation_Speed)
				RightShoulder.C0 = Lerp(RightShoulder.C0, cf(1.25, 0.5, -0.5) * angles(rad(100), 0, rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Lerp(LeftShoulder.C0, cf(-1.25, 0.35, -0.35) * angles(rad(70), 0, rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Lerp(RightHip.C0, cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(83), 0), 1 / Animation_Speed)
				LeftHip.C0 = Lerp(LeftHip.C0, cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-83), 0), 1 / Animation_Speed)
			end
			twait(0.3)
			--CreateSound(363808674, Torso, 6, 1, false)
			idleOverwrite=function()
				local sine = sine * 40
				local Animation_Speed = 0.45 / deltaTime
				RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
				RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
				LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

				RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0 * cf(0, 0, 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Lerp(Neck.C0, NECKC0 * angles(rad(5), rad(-25), 0), 1 / Animation_Speed)
				RightShoulder.C0 = Lerp(RightShoulder.C0, cf(1.25, 0.5, -0.5) * angles(rad(100), 0, rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Lerp(LeftShoulder.C0, cf(-1.25, 0.35, -0.35) * angles(rad(70), 0, rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Lerp(RightHip.C0, cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(83), 0), 1 / Animation_Speed)
				LeftHip.C0 = Lerp(LeftHip.C0, cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-83), 0), 1 / Animation_Speed)
			end
			twait(0.3)
			idleOverwrite=nil
			setWalkSpeed(20)
			setJumpPower(50)
		end,
		idle = function()
			if idleOverwrite then 
				return idleOverwrite()
			end

			local Animation_Speed = 0.45 / deltaTime
			local sine = sine * 40

			RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
			Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
			RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
			LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(ROOTC0, cf(0.05 * cos(sine / 12), 0, 0.05 * sin(sine / 12))), 0.15 / Animation_Speed)
			Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0, angles(rad(15 - 2.5 * sin(sine / 12)), 0, rad(-25))), 1 / Animation_Speed)
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.25, 0.5, 0.3),angles(rad(-45), 0, rad(-45))), RIGHTSHOULDERC0), 1 / Animation_Speed)
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1.25, 0.5, 0.3),angles(rad(-40), 0, rad(45))), LEFTSHOULDERC0), 1 / Animation_Speed)
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cfMul(cf(1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01),angles(0, rad(85), 0)),angles(rad(-1), 0, 0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cfMul(cf(-1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01),angles(0, rad(-85), 0)),angles(rad(-1), 0, 0)), 0.15 / Animation_Speed)
		end,
		walk = function()
			local Animation_Speed = 0.45 / deltaTime
			local sine = sine * 40
			RootJoint.C1 = Lerp(RootJoint.C1,cfMul(ROOTC0, cf(0, 0, 0.05 * cos(sine / (2.4)))), 2 * 1.25 / Animation_Speed)
			Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 * 1.25 / Animation_Speed)
			RightHip.C1 = Lerp(RightHip.C1,cfMul(cfMul(cf(0.5, 0.875 - 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0),angles(0, rad(90), 0)),angles(0, 0, rad(35 * cos(sine / 4.8)))), 0.6 / Animation_Speed)
			LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cfMul(cf(-0.5, 0.875 + 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0),angles(0, rad(-90), 0)),angles(0, 0, rad(35 * cos(sine / 4.8)))), 0.6 / Animation_Speed)

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(ROOTC0, cf(0, 0, -0.05)), 0.15 / Animation_Speed)
			Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0,angles(rad(5), 0, 0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3),angles(rad(-45), 0, rad(-45))), RIGHTSHOULDERC0), 1 / Animation_Speed)
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3),angles(rad(-40), 0, rad(45))), LEFTSHOULDERC0), 1 / Animation_Speed)
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cfMul(cf(1, -1, 0),angles(0, rad(80), 0)),angles(0, 0, rad(-5))), 2 / Animation_Speed)
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cfMul(cf(-1, -1, 0),angles(0, rad(-80), 0)),angles(0, 0, rad(5))), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})

	addmode("f",{ --mode 0
		modeLeft=function() --enter mode 1
			setWalkSpeed(0)
			setJumpPower(0)
			--CreateSound(147722227, Torso, 4, 1.3, false)
			idleOverwrite=function()
				local sine = sine * 40
				local Animation_Speed = 0.45 / deltaTime
				RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
				Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
				RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
				LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

				RootJoint.C0 = Lerp(RootJoint.C0,ROOTC0 * cf(0, 0, 0.05 * cos(sine / 12)), 1 / Animation_Speed)
				Neck.C0 = Lerp(Neck.C0, NECKC0 * angles(rad(35), 0, 0), 1 / Animation_Speed)
				RightShoulder.C0 = Lerp(RightShoulder.C0, cf(1.5, 0.5, 0) * angles(0, 0, rad(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Lerp(LeftShoulder.C0, cf(-1.5, 0.5, 0) * angles(0, 0, rad(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Lerp(RightHip.C0, cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(83), 0), 1 / Animation_Speed)
				LeftHip.C0 = Lerp(LeftHip.C0, cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-83), 0), 1 / Animation_Speed)
			end
			twait(0.15)
			idleOverwrite=nil
			setWalkSpeed(20)
			setJumpPower(50)
		end,
		idle = function()
			if idleOverwrite then 
				return idleOverwrite()
			end

			local Animation_Speed = 0.45 / deltaTime
			local sine = sine * 40

			RootJoint.C1 = Lerp(RootJoint.C1,ROOTC0, 0.2 / Animation_Speed)
			Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 / Animation_Speed)
			RightHip.C1 = Lerp(RightHip.C1,cfMul(cf(0.5, 1, 0),angles(0, rad(90), 0)), 0.7 / Animation_Speed)
			LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cf(-0.5, 1, 0),angles(0, rad(-90), 0)), 0.7 / Animation_Speed)

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(ROOTC0, cf(0, 0, 0.05 * cos(sine / 12))), 1 / Animation_Speed)
			Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0,angles(rad(-5 - 2.5 * cos(sine / 12)), 0, rad(25))), 1 / Animation_Speed)
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.9, 0.5 + 0.05 * sin(sine / 12), -0.5),angles(rad(100), 0, rad(-70))), RIGHTSHOULDERC0), 1 / Animation_Speed)
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.9, 0.25 + 0.05 * sin(sine / 12), -0.35),angles(rad(70), 0, rad(80))), LEFTSHOULDERC0), 1 / Animation_Speed)
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1 - 0.05 * cos(sine / 12), -0.01),angles(0, rad(80), 0)), 1 / Animation_Speed)
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1 - 0.05 * cos(sine / 12), -0.01),angles(0, rad(-80), 0)), 1 / Animation_Speed)
		end,
		walk = function()
			local Animation_Speed = 0.45 / deltaTime
			local sine = sine * 40
			RootJoint.C1 = Lerp(RootJoint.C1,cfMul(ROOTC0, cf(0, 0, 0.05 * cos(sine / (2.4)))), 2 * 1.25 / Animation_Speed)
			Neck.C1 = Lerp(Neck.C1,cfMul(cf(0, -0.5, 0),angles(rad(-90), 0, rad(180))), 0.2 * 1.25 / Animation_Speed)
			RightHip.C1 = Lerp(RightHip.C1,cfMul(cfMul(cf(0.5, 0.875 - 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0),angles(0, rad(90), 0)),angles(0, 0, rad(35 * cos(sine / 4.8)))), 0.6 / Animation_Speed)
			LeftHip.C1 = Lerp(LeftHip.C1,cfMul(cfMul(cf(-0.5, 0.875 + 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0),angles(0, rad(-90), 0)),angles(0, 0, rad(35 * cos(sine / 4.8)))), 0.6 / Animation_Speed)

			RootJoint.C0 = Lerp(RootJoint.C0,cfMul(ROOTC0, cf(0, 0, -0.05)), 0.15 / Animation_Speed)
			Neck.C0 = Lerp(Neck.C0,cfMul(NECKC0,angles(rad(5), 0, 0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.9, 0.5 + 0.05 * sin(sine / (2.4)), -0.5),angles(rad(100), 0, rad(-70))), RIGHTSHOULDERC0), 1 / Animation_Speed)
			LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.9, 0.25 + 0.05 * sin(sine / (2.4)), -0.35),angles(rad(70), 0, rad(80))), LEFTSHOULDERC0), 1 / Animation_Speed)
			RightHip.C0 = Lerp(RightHip.C0,cfMul(cfMul(cf(1, -1, 0),angles(0, rad(80), 0)),angles(0, 0, rad(-5))), 2 / Animation_Speed)
			LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cfMul(cf(-1, -1, 0),angles(0, rad(-80), 0)),angles(0, 0, rad(5))), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})
end))
lbl("original by shackluster")
lbl("the classics never die")

btn("metamorphosis vibe",(function()
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
			Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295-0.08726646259971647*sin(sine*8),-0.12217304763960307*sin((sine+0.2)*4),2.8797932657906435+0.2007128639793479*sin((sine+0.15)*4))),deltaTime) 
			RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.1*sin(sine*4),0),angles(1.5707963267948966,1.5707963267948966+0.17453292519943295*sin(sine*4),-1.5707963267948966)),deltaTime) 
			RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.3,0),angles(2.530727415391778+0.20943951023931956*sin((sine+0.4)*8),1.5707963267948966-0.4363323129985824*sin((sine+0.2)*4),-1.5707963267948966)),deltaTime) 
			LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(1.0471975511965976,-1.2217304763960306+0.08726646259971647*sin((sine+0.2)*4),1.5707963267948966)),deltaTime) 
			LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.1*sin(sine*4),0),angles(1.5707963267948966,-1.5707963267948966+0.17453292519943295*sin(sine*4),1.5707963267948966)),deltaTime) 
			RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(-0.1 * sin(sine*4),0,0),angles(-1.5707963267948966,0.08726646259971647*sin(sine*4),3.141592653589793)),deltaTime) 
			--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-100,-5,0,8,1,0,0,4,-0,-7,0.2,4,0,0,0,4,165,11.5,0.15,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.1,0,4,90,10,0,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,145,12,0.4,8,0.3,0,0,4,90,-25,0.2,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,60,0,0,4,0.5,0,0,4,-70,5,0.2,4,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.1,0,4,-90,10,0,4,0,0,0,4,90,0,0,4,Torso,0,-0.1,0,4,-90,0,0,4,0,0,0,4,-0,5,0,4,0,0,0,4,180,0,0,4
		end,
		walk=function()
			local fw,rt=velbycfrvec()

			Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966+0.08726646259971647*sin((sine-0.1)*8),0.3490658503988659*sin((sine-0.07)*4),3.141592653589793-0.4363323129985824*sin((sine-0.4)*4))),deltaTime) 
			RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.3*sin((sine + 0.3)*4),0),angles(1.5707963267948966,1.5707963267948966+0.6981317007977318*sin(sine*4)*rt,-1.5707963267948966+0.6981317007977318*sin(sine*4)*fw)),deltaTime) 
			RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(-0.5235987755982988*sin((sine+0.2)*4),1.5707963267948966-0.3490658503988659*sin(sine*4),0)),deltaTime) 
			LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0.5235987755982988*sin((sine+0.2)*4),-1.5707963267948966-0.3490658503988659*sin(sine*4),0)),deltaTime) 
			LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.3*sin((sine + 0.3)*4),0),angles(1.5707963267948966,-1.5707963267948966-0.6981317007977318*sin(sine*4)*rt,1.5707963267948966+0.6981317007977318*sin(sine*4)*fw)),deltaTime) 
			RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.05+0.2*sin((sine + 0.15)*8),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
			--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-90,5,-0.1,8,1,0,0,4,-0,20,-0.07,4,0,0,0,4,180,-25,-0.4,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.3,0.3,4,90,40,0,4,0,0,0,4,-90,40,0,4,RightArm,1,0,0,4,0,-30,0.2,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,0,30,0.2,4,0.5,0,0,4,-90,-20,0,4,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.3,0.3,4,-90,-40,0,4,0,0,0,4,90,40,0,4,Torso,0,0,0,4,-90,0,0,4,0.05,0.2,0.15,8,-0,0,0,4,0,0,0,4,180,0,0,4
		end
	})
end))

lbl("INTERWORLD - METAMORPHOSIS")
lbl("was listening to ^^ and animating")

btn("empty reanimate (no animations)", reanimate)
insSet(btn("stop current script",stopreanimate),"TextColor3",c3(0.75,0,0))

lbl("SETTINGS (REANIMATE TO APPLY)")

local swtc=function(txt,options,onchanged)
	local current=0
	local swtcbtn=nil
	local btnpressed=function()
		current=current+1
		if current>#options then
			current=1
		end
		local option=options[current]
		insSet(swtcbtn,"Text",txt..": "..option.text)
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

swtc("changestate when fling",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	flingchangestate=v
end)
lbl("(limb collision)")

swtc("respawn tp",{
	{value=3,text="hide body"},
	{value=0,text="stay at spawn"},
	{value=1,text="random tp close"},
	{value=2,text="behind char"}
},function(v)
	respawntp=v
end)

local disguiscripts=nil
swtc("new gui scripts",{
	{value=true,text="disable"},
	{value=false,text="keep"}
},function(v)
	disguiscripts=v
end)
Connect(insGet(pg,"DescendantAdded"),function(v)
	if c and disguiscripts and IsA(v,"Script") then --mind Enum.RunContext.Client
		insSet(v,"Disabled",true) 
	end
end)

swtc("new character scripts",{
	{value=function(v)
		if IsA(v,"Script") then --mind Enum.RunContext.Client
			insSet(v,"Disabled",true)
		end
	end,text="disable"},
	{value=false,text="keep"}
},function(v)
	discharscripts=v
end)

swtc("breakjoints",{
	{value=1,text="breakjoints+health"},
	{value=2,text="health or breakjoints"},
	{value=3,text="breakjoints"}
},function(v)
	breakjointsmethod=v
end)

swtc("coregui death effect",{
	{value=true,text="disable"},
	{value=false,text="dont modify"},
},function(v)
	hidedeatheffect=v
end)

swtc("set simulation radius",{
	{value=true,text="yes"},
	{value=false,text="no"},
},function(v)
	simrad=v
end)

local iscg,_=pcall(insSet,i10,"Parent",FindFirstChildOfClass(game,"CoreGui"))
if not iscg then
	insSet(i7,"Text","PLAYERGUI MODE")
	insSet(i10,"Parent",pg)
	twait(3)
	insSet(i7,"Text",guiTheme.guiTitle)
end

lbl("print('i chatted')") 