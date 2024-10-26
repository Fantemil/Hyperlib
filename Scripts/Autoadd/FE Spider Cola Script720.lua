--[[
   _____       _     _               _____      _             ______ ______ 
  / ____|     (_)   | |             / ____|    | |           |  ____|  ____|
 | (___  _ __  _  __| | ___ _ __   | |     ___ | | __ _      | |__  | |__   
  \___ \| '_ \| |/ _` |/ _ \ '__|  | |    / _ \| |/ _` |     |  __| |  __|  
  ____) | |_) | | (_| |  __/ |     | |___| (_) | | (_| |     | |    | |____ 
 |_____/| .__/|_|\__,_|\___|_|      \_____\___/|_|\__,_|     |_|    |______|
        | |                                                                 
        |_|                                                                 
        
just whip out the bloxy cola spider, trust me

TESTED ON SOLARA UNSURE IF WORKS ON OTHERS

IF PROBLEMS PLEASE CONTACT da_goofy_goover OR Skibidi Sigma
	
]]

--no need to get and index the library tables with function names every time the script uses them
game=workspace.Parent
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

--it runs even faster if u call __index and __newindex of metatables of userdata directly
local function getMetamethodFromErrorStack(userdata,f,test)
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
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
local stepped=insGet(rus,"Stepped")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")

local GetPlayers=insGet(plrs,"GetPlayers")
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
	guiTitle="Spider Cola Script",
	windowTitleColor=c3(0,0,0),
	windowTopColor=c3(0.9019607843,0.4549019608,0.1333333333),
	windowBottomColor=c3(0,0,0),
	windowMinimizedSize={X=220,Y=22},
	windowRegularSize={X=220,Y=290},
	buttonsTextColor=c3(0.9294117647,0.63137254902,0.4078431373),
	labelsTextColor=c3(0.560784,0.560784,0.560784),
	listTopColor=c3(0,0,0),
	listBottomColor=c3(0.2039215686,0,0)
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
	{meshid="4819720316",textureid="4819722776",C0=angles(0,0,0.2617993877991494),Name="Torso"}
}

local function gp(p,n,cl)
	for i,v in next,GetChildren(p) do
		if IsA(v,cl) and (insGet(v,"Name")==n) then
			return v
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
		Wait(stepped)
	end
	return nil
end
local function getNetlessVelocity(realVel)
	--if true then return v3_0 end
	--if true then return realVel end
	--if true then return v3_net end
	if v3Get(realVel,"Magnitude")>25.01 then
		return v3Get(realVel,"Unit")*v3_xzL+v3_net
	end
	return realVel*v3_xz+v3_net
end
local function getMeshOfPart(v)
	if IsA(v,"MeshPart") then
		return insGet(v,"MeshId"), insGet(v,"TextureID")
	elseif IsA(v,"BasePart") then
		v=FindFirstChildOfClass(v,"SpecialMesh")
		if v then
			return insGet(v,"MeshId"), insGet(v,"TextureId")
		end
	end
	return nil, nil
end
local function makeplaceholder(v)
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
local function emptyfunction() end

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
		a=insGet(a,"UserInputType")
		if (a==MB1enum) or (a==TOUCHenum) then
			Disconnect(rendersteppedcon)
			Disconnect(inputendedcon)
		end
	end
	local function rendersteppedf()
		local off = GetMouseLocation(uis)-mouseStart
		insSet(window,"Position",dragStart+u2(0,off.X,0,off.Y))
	end
	local function inputbeganf(a)
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
	local function ondes(d)
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
local function btn(txt, f)
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
local function lbl(txt)
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

lbl("by da_goofy_groover")
lbl("NOTE: Click script again to stopâ ï¸")

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

	if stopreanimate() then return end
	c=insGet(lp,"Character")
	if not (c and IsDescendantOf(c,ws)) then return end

	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or timegp(c,"HumanoidRootPart","BasePart",0.5) or FindFirstChildWhichIsA(c,"BasePart")
	if not rootpart then return end

	local cam=nil
	--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
	local function refcam()
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
	local function onnewcamera()
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

	local function getPart(name,blacklist)
		for i,v in next,cframes do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local function getJoint(name)
		for i,v in next,joints do
			if v.Name==name then
				return v
			end
		end
		return {C0=cf_0,C1=cf_0}
	end

	local function getPartFromMesh(m,t,blacklist)
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

	local function getPartJoint(p)
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
	local function makePartCons(p,t)
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
					local meshid,textureid=getMeshOfPart(p)
					if meshid then
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
	end

	local simradv=0
	local charcons={}
	local function onplayer(v)
		simradv=simradv+1000
		local lastc=nil
		local function oncharacter()
			local newc=insGet(v,"Character")
			if c and newc and (newc~=lastc) then
				lastc=newc
				characters[v]=newc
				refreshrayfilter()
				if v==lp then
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
						twait(0.2501)
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
						twait(0.2501)
					elseif respawntp==2 then
						insSet(hrp,"CFrame",cfAdd(cfr,cfGet(cfr,"RightVector")*3.5-cfGet(cfr,"LookVector")*3.5))
						insSet(hrp,"AssemblyLinearVelocity",v3_0)
						insSet(hrp,"AssemblyAngularVelocity",v3_0)
						twait(0.2501)
					elseif respawntp==3 then
						local t=osclock()+0.2501
						local startcf=cfAdd(cfMul(cfGet(cfr,"Rotation"),angles(1.5707963267948966,0,0)),pos*v3_101+v3_010*(fpdh+30))
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
					if breakjointsmethod==1 then
						insGet(newc,"BreakJoints")(newc)
						local h=FindFirstChildOfClass(newc,"Humanoid")
						if h then
							insSet(h,"Health",0)
						end
					elseif breakjointsmethod==2 then
						local h=FindFirstChildOfClass(newc,"Humanoid")
						if h then
							insSet(h,"Health",0)
						else
							insGet(newc,"BreakJoints")(newc)
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
	for i,v in next,GetPlayers(plrs) do simradv=simradv+1000 if v~=lp then tspawn(onplayer,v) end end
	Connect(insGet(plrs,"PlayerAdded"),onplayer)
	onplayer(lp)
	Connect(insGet(plrs,"PlayerRemoving"),function(v)
		simradv=simradv-1000
		local charcon=charcons[v]
		if charcon then
			Disconnect(charcon)
		end
		characters[v]=nil
		rootparts[v]=nil
	end)
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

	local function addmode(key,mode)
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
	local function refreshKeyboardMovement()
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

	local function refreshTouchRegions()
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

	local function predictionfling(target)
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

	local noYvelTime=1
	local lastsine=sine
	local con=nil
	local function mainFunction()
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
			onground=v3Get(pos,"Y")-raycastresult<3.01
			if onground then
				Yvel=0
				pos=pos+v3_010*(raycastresult+3-v3Get(pos,"Y"))*min(delta*20,1)
				if jumpingInput and (jumpPower>0) then
					Yvel=jumpPower
					onground=false
				end
			else
				Yvel=Yvel-gravity*delta
				if v3Get(pos,"Y")+Yvel*delta<raycastresult then
					Yvel=0
					pos=pos+v3_010*(raycastresult+3-v3Get(pos,"Y"))
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
							insSet(part,"AssemblyLinearVelocity",getNetlessVelocity(vel*noYvelTime+xzvel))
						end
					else
						i.c=sine
						insSet(part,"AssemblyLinearVelocity",getNetlessVelocity(vel*noYvelTime+xzvel))
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

	local function refreshjoints(v) --use this on the main part if u have parts that
		refreshjointsI(v) --are connected with each other but arent connected to rootpart
		tclear(refreshedjoints)
	end

	local legcfR=cf(1,-1,0)
	local legcfL=cf(-1,-1,0)
	local raydir=v3_010*-2
	local function raycastlegs() --this returns 2 values: right leg raycast offset, left leg raycast offset
		local rY=Raycast(ws,cfGet(cfMul(cfr,legcfR),"Position"),raydir,raycastparams)
		local lY=Raycast(ws,cfGet(cfMul(cfr,legcfL),"Position"),raydir,raycastparams)
		return rY and (v3Get(rY.Position,"Y")-(v3Get(pos,"Y")-3)) or 0,lY and (v3Get(lY.Position,"Y")-(v3Get(pos,"Y")-3)) or 0
	end

	local function velbycfrvec() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
		local fw=cfGet(cfr,"LookVector")*xzvel/walkSpeed
		local rt=cfGet(cfr,"RightVector")*xzvel/walkSpeed
		return v3Get(fw,"X")+v3Get(fw,"Z"),v3Get(rt,"X")+v3Get(rt,"Z")
	end

	local lastvel=v3_0
	local velchg1=v3_0
	local function velchgbycfrvec() --this returns 2 values: forward/backwards velocity change, right/left velocity change
		velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
		lastvel=xzvel
		velchg1=velchg1-velchg1*(deltaTime/2)
		local fw=cfGet(cfr,"LookVector")*velchg1/32
		local rt=cfGet(cfr,"RightVector")*velchg1/32
		return v3Get(fw,"X")+v3Get(fw,"Z"),v3Get(rt,"X")+v3Get(rt,"Z")
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
		cfr=Lerp(cfr,cfl(pos,pos*v3_010+cfGet(insGet(mouse,"Hit"),"Position")*v3_101),alpha or deltaTime)
	end

	local function glitchJoint(joint,targetGlitchTime,delayFrom,delayTo,radiansFrom,radiansTo) 
		if sine>targetGlitchTime then --local glitchtime=0 addMode("x",{idle=function() glitchtime=glitchJoint(joint,glitchtime,0.2,0.4,-0.1,0.1) end})
			radiansFrom=radiansFrom*100
			radiansTo=radiansTo*100
			joint.C0=cfMul(joint.C0,angles(mrandom(radiansFrom,radiansTo)/100,mrandom(radiansFrom,radiansTo)/100,mrandom(radiansFrom,radiansTo)/100)) 
			return sine+mrandom(delayFrom*100,delayTo*100)/100
		end
		return targetGlitchTime
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
	local function setCfr(v) --sets character cframe
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
	local function getVel() --returns character velocity
		return xzvel+v3_010*Yvel --important: use only in lerps or it might not work
	end
	local function getCamCF() --returns camera cframe
		return camcf
	end
	local function isFirstPerson() --returns true if user is in first person camera mode
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
		isFirstPerson=isFirstPerson
	}
end

btn("spida cola", function()
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
	local getPartFromMesh = t.getPartFromMesh
	local getPartJoint = t.getPartJoint
	
    local AccessoryWeld = getPartFromMesh(3164803967,3164818029)
    local AccessoryWeld = getPartJoint(AccessoryWeld)
	
	addmode("default", {
		    idle = function()
			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

            RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(0,1.5707963267948966,0)),deltaTime) 
            LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
            RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0)),deltaTime) 
            RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            AccessoryWeld.C0=Lerp(AccessoryWeld.C0,cf(-1,3.6,0),deltaTime) 

		end,
		    walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Ychg=velYchg()/20

            RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(0,1.5707963267948966,0)),deltaTime) 
            LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
            RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0)),deltaTime) 
            RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            AccessoryWeld.C0=Lerp(AccessoryWeld.C0,cfMul(cf(-1,3.6,0),angles(0.17453292519943295*sin(sine*70),0.17453292519943295*sin(sine*50),0.17453292519943295*sin(sine*60))),deltaTime) 
		end,
		    jump = function()
			velYchg()
            RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(0,1.5707963267948966,0)),deltaTime) 
            LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
            RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0)),deltaTime) 
            RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            AccessoryWeld.C0=Lerp(AccessoryWeld.C0,cfMul(cf(-1,3,-2),angles(-0.5235987755982988,0,0)),deltaTime) 
		end,
		    fall = function()
			velYchg()
            RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(0,1.5707963267948966,0)),deltaTime) 
            LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
            RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0)),deltaTime) 
            RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,0)),deltaTime) 
            AccessoryWeld.C0=Lerp(AccessoryWeld.C0,cfMul(cf(-1,3,2),angles(0.5235987755982988,0,0)),deltaTime) 
		end
	})
end)
lbl("---Settings---")

local function swtc(txt,options,onchanged)
	local current=0
	local swtcbtn=nil
	local function btnpressed()
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
	{value=true,text="T"},
	{value=false,text="F"}
},function(v)
	placeholders=false
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
lbl("ï¸ï¸â¬=Limb Collision")

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