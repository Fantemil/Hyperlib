local ScreenGui = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local Menu = Instance.new("Frame")
local X = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local HitBox = Instance.new("TextButton")
local Aim = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Madeby = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Open.Position = UDim2.new(0, 0, 0.809421837, 0)
Open.Size = UDim2.new(0, 120, 0, 55)
Open.Font = Enum.Font.SourceSans
Open.Text = "OPEN"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
 Open.Visible = false
 Menu.Visible = true
end)

Menu.Name = "Menu"
Menu.Parent = ScreenGui
Menu.BackgroundColor3 = Color3.fromRGB(245, 128, 255)
Menu.BorderColor3 = Color3.fromRGB(245, 128, 255)
Menu.Position = UDim2.new(0.230656937, 0, 0.146680951, 0)
Menu.Size = UDim2.new(0, 789, 0, 619)
Menu.Visible = false

X.Name = "X"
X.Parent = Menu
X.BackgroundColor3 = Color3.fromRGB(245, 128, 255)
X.BorderColor3 = Color3.fromRGB(245, 128, 255)
X.Position = UDim2.new(0.93662864, 0, 0, 0)
X.Size = UDim2.new(0, 50, 0, 45)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true
X.MouseButton1Down:connect(function()
 Menu.Visible = false
end)

TextButton.Name = "-"
TextButton.Parent = Menu
TextButton.BackgroundColor3 = Color3.fromRGB(245, 128, 255)
TextButton.BorderColor3 = Color3.fromRGB(245, 128, 255)
TextButton.Position = UDim2.new(0.868187606, 0, 0, 0)
TextButton.Size = UDim2.new(0, 54, 0, 45)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "-"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
 Menu.Visible = false
 Open.Visible = true
end)

HitBox.Name = "HitBox"
HitBox.Parent = Menu
HitBox.BackgroundColor3 = Color3.fromRGB(172, 60, 170)
HitBox.BorderColor3 = Color3.fromRGB(172, 60, 170)
HitBox.Position = UDim2.new(-3.7252903e-09, 0, 0.284329563, 0)
HitBox.Size = UDim2.new(0, 230, 0, 266)
HitBox.Font = Enum.Font.SourceSans
HitBox.Text = "HitBox"
HitBox.TextColor3 = Color3.fromRGB(0, 0, 0)
HitBox.TextScaled = true
HitBox.TextSize = 14.000
HitBox.TextWrapped = true
HitBox.MouseButton1Down:connect(function()
     _G.HeadSize = 50 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.HumanoidRootPart.Transparency = 0.7 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue") v.Character.HumanoidRootPart.Material = "Neon" v.Character.HumanoidRootPart.CanCollide = false end) end end end end)
end)

Aim.Name = "Aim"
Aim.Parent = Menu
Aim.BackgroundColor3 = Color3.fromRGB(172, 60, 170)
Aim.BorderColor3 = Color3.fromRGB(172, 60, 170)
Aim.Position = UDim2.new(0.353612185, 0, 0.284329563, 0)
Aim.Size = UDim2.new(0, 230, 0, 266)
Aim.Font = Enum.Font.SourceSans
Aim.Text = "AIMBOT"
Aim.TextColor3 = Color3.fromRGB(0, 0, 0)
Aim.TextScaled = true
Aim.TextSize = 14.000
Aim.TextWrapped = true
Aim.MouseButton1Down:connect(function()
 -- Hold E when you shoot to automatically aimbot and the ESP is still a work in progress --
local Headshot_Key = Enum.KeyCode.E
local Torsoshot_Key = Enum.KeyCode.K
 
local plr = game.Players.LocalPlayer
local Gui = Instance.new("ScreenGui",game.CoreGui)
Gui.Name = "AimbotGui"
local version = "1.0.1"
 
HDown = false
TDown = false
mouse = game.Players.LocalPlayer:GetMouse()
cam = game.Workspace.CurrentCamera
Players = game:service("Players")
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Headshot_Key then
        if HDown == false and TDown == false then
            HDown = true
            print("[AIMBOT] Calculating closest player")
            local targetpoint = mouse.Hit
            local p = game.Players:GetChildren()
            local lowestdist = 99999999999
            local lowestplayer = nil
            for i=1,#p do
                if p[i]~=game.Players.LocalPlayer and p[i].Character~=nil and p[i].Character~=nil and p[i].TeamColor~=game.Players.LocalPlayer.TeamColor and p[i].Character.Humanoid.Health >0 and p[i].TeamColor~=BrickColor.new("White") then
                    local dist = p[i]:DistanceFromCharacter(Vector3.new(targetpoint.X,targetpoint.Y,targetpoint.Z))
                    if dist < lowestdist then
                        lowestdist = dist
                        lowestplayer = p[i]
                    end
                end
            end
            if lowestplayer~=nil then
                print("[AIMBOT] Targeting "..lowestplayer.Name)
                while HDown do
                    wait()
                    local TPos = lowestplayer.Character.Head.Position
                    cam.CFrame = CFrame.new(Vector3.new(cam.CFrame.X,cam.CFrame.Y,cam.CFrame.Z),Vector3.new(TPos.X,TPos.Y,TPos.Z))
                end
            end
        end
    elseif inputObject.KeyCode == Torsoshot_Key then
        if TDown == false and HDown == false then
            TDown = true
            print("[AIMBOT] Calculating closest player")
            local targetpoint = mouse.Hit
            local p = game.Players:GetChildren()
            local lowestdist = 99999999999
            local lowestplayer = nil
            for i=1,#p do
                if p[i]~=game.Players.LocalPlayer and p[i].Character~=nil and p[i].Character~=nil and p[i].TeamColor~=game.Players.LocalPlayer.TeamColor and p[i].Character.Humanoid.Health >0 and p[i].TeamColor~=BrickColor.new("White") then
                    local dist = p[i]:DistanceFromCharacter(Vector3.new(targetpoint.X,targetpoint.Y,targetpoint.Z))
                    if dist < lowestdist then
                        lowestdist = dist
                        lowestplayer = p[i]
                    end
                end
            end
            if lowestplayer~=nil then
                print("[AIMBOT] Targeting "..lowestplayer.Name)
                while TDown do
                    wait()
                    local TPos = lowestplayer.Character.Torso.Position
                    cam.CFrame = CFrame.new(Vector3.new(cam.CFrame.X,cam.CFrame.Y,cam.CFrame.Z),Vector3.new(TPos.X,TPos.Y,TPos.Z))
                end
            end
        end
    end
end
 
function onKeyRelease(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Headshot_Key then
        HDown = false
    elseif inputObject.KeyCode == Torsoshot_Key then
        TDown = false
    end
end
 
function Esp(player, username)
    if player ~= Players.LocalPlayer and player.Character then
    local torso = player.Character:FindFirstChild("Torso")
    if torso then
    local base = Instance.new("BillboardGui", workspace.CurrentCamera)
    local esP = Instance.new("Frame", base)
    base.AlwaysOnTop = true
    base.Enabled = true
    base.Size = UDim2.new(3.5,0,4.7,0)
    base.Name = username
    base.Adornee = torso
    base.StudsOffset = Vector3.new(0, -0.6, 0)
    esP.BackgroundColor3 = Color3.new(1,0,0)
    esP.BackgroundTransparency = 0.8
    esP.BorderColor3 = Color3.new(0,0,0)
    esP.BorderSizePixel = 1
    esP.Size = UDim2.new(1,0,1,0)
    end
    end
end
 
function CheckEsp()
    for x,player in pairs(Players:GetChildren()) do
        if player then
            if player.TeamColor ~= plr.TeamColor then
                local char = player.Character
                if char then
                    local torso = char:FindFirstChild("Torso")
                    if torso then
                        local currentcam = workspace.CurrentCamera
                        local playerName = player.Name
                        if currentcam:FindFirstChild(playerName) == nil then
                            Esp(player, playerName)
                        end
                    end
                end
            end
        end
    end
end
 
local function createframe(bkgc3,bkgtrans,borderc3, bordersize, name, parent, pos, rot, size, visible, zindex)
    local newframe = Instance.new("Frame")
    newframe.BackgroundColor3 = bkgc3
    newframe.BackgroundTransparency = bkgtrans
    newframe.BorderColor3 = borderc3
    newframe.BorderSizePixel = bordersize
    newframe.Name = name
    newframe.Parent = parent
    newframe.Position = pos
    newframe.Rotation = rot
    newframe.Size = size
    newframe.Visible = visible
    newframe.ZIndex = zindex
    return newframe
end
 
local function createlabel(bkgc3,bkgtrans,borderc3, bordersize, name, parent, pos, rot, size, visible, zindex, font, fontsize, text, textc3, textscaled, textstrokec3, textstroketrans, texttrans, textwrapped, xalign, yalign)
    local newlabel = Instance.new("TextLabel")
    newlabel.BackgroundColor3 = bkgc3
    newlabel.BackgroundTransparency = bkgtrans
    newlabel.BorderColor3 = borderc3
    newlabel.BorderSizePixel = bordersize
    newlabel.Name = name
    newlabel.Parent = parent
    newlabel.Position = pos
    newlabel.Rotation = rot
    newlabel.Size = size
    newlabel.Visible = visible
    newlabel.ZIndex = zindex
    newlabel.Font = font
    newlabel.FontSize = fontsize
    newlabel.Text = text
    newlabel.TextColor3 = textc3
    newlabel.TextScaled = textscaled
    newlabel.TextStrokeColor3 = textstrokec3
    newlabel.TextStrokeTransparency = textstroketrans
    newlabel.TextTransparency = texttrans
    newlabel.TextWrapped = textwrapped
    newlabel.TextXAlignment = xalign
    newlabel.TextYAlignment = yalign
    return newlabel
end
 
local function createbutton(autocolor, bkgc3,bkgtrans,borderc3, bordersize, name, parent, pos, rot, size, visible, zindex, font, fontsize, text, textc3, textscaled, textstrokec3, textstroketrans, texttrans, textwrapped, xalign, yalign)
    local newbutton = Instance.new("TextButton")
    newbutton.AutoButtonColor = autocolor
    newbutton.BackgroundColor3 = bkgc3
    newbutton.BackgroundTransparency = bkgtrans
    newbutton.BorderColor3 = borderc3
    newbutton.BorderSizePixel = bordersize
    newbutton.Name = name
    newbutton.Parent = parent
    newbutton.Position = pos
    newbutton.Rotation = rot
    newbutton.Size = size
    newbutton.Visible = visible
    newbutton.ZIndex = zindex
    newbutton.Font = font
    newbutton.FontSize = fontsize
    newbutton.Text = text
    newbutton.TextColor3 = textc3
    newbutton.TextScaled = textscaled
    newbutton.TextStrokeColor3 = textstrokec3
    newbutton.TextStrokeTransparency = textstroketrans
    newbutton.TextTransparency = texttrans
    newbutton.TextWrapped = textwrapped
    newbutton.TextXAlignment = xalign
    newbutton.TextYAlignment = yalign
    return newbutton
end
 
local function createtextbox(bkgc3,bkgtrans,borderc3, bordersize, clrtext, multiline, name, parent, pos, rot, size, visible, zindex, font, fontsize, text, textc3, textscaled, textstrokec3, textstroketrans, texttrans, textwrapped, xalign, yalign)
    local newbox = Instance.new("TextBox")
    newbox.BackgroundColor3 = bkgc3
    newbox.BackgroundTransparency = bkgtrans
    newbox.BorderColor3 = borderc3
    newbox.BorderSizePixel = bordersize
    newbox.ClearTextOnFocus = clrtext
    newbox.MultiLine = multiline
    newbox.Name = name
    newbox.Parent = parent
    newbox.Position = pos
    newbox.Rotation = rot
    newbox.Size = size
    newbox.Visible = visible
    newbox.ZIndex = zindex
    newbox.Font = font
    newbox.FontSize = fontsize
    newbox.Text = text
    newbox.TextColor3 = textc3
    newbox.TextScaled = textscaled
    newbox.TextStrokeColor3 = textstrokec3
    newbox.TextStrokeTransparency = textstroketrans
    newbox.TextTransparency = texttrans
    newbox.TextWrapped = textwrapped
    newbox.TextXAlignment = xalign
    newbox.TextYAlignment = yalign
    return newbox
end
 
local function createimagelabel(bkgc3,bkgtrans,borderc3, bordersize, name, parent, pos, rot, size, visible, zindex, image, imagetrans)
    local newimage = Instance.new("ImageLabel")
    newimage.BackgroundColor3 = bkgc3
    newimage.BackgroundTransparency = bkgtrans
    newimage.BorderColor3 = borderc3
    newimage.BorderSizePixel = bordersize
    newimage.Name = name
    newimage.Parent = parent
    newimage.Position = pos
    newimage.Rotation = rot
    newimage.Size = size
    newimage.Visible = visible
    newimage.ZIndex = zindex
    newimage.Image = "rbxassetid://"..image
    newimage.ImageTransparency = imagetrans
    return newimage
end
 
-------------------------------INITIALIZE INTRO GUI-------------------------------------
local IntroFrame = createframe(Color3.new(245/255,245/255,245/255),0,Color3.new(27/255,42/255,53/255),0,"IntroFrame",Gui,UDim2.new(0,-330,0,0),0,UDim2.new(0,300,1,0),true,1)
--[[bar]] createframe(Color3.new(245/255,245/255,245/255),0,Color3.new(0,0,0),0,"bar",IntroFrame,UDim2.new(1,0,0,0),0,UDim2.new(0,30,0,90),true,1)
--[[slant]] createimagelabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"Slant",IntroFrame,UDim2.new(1,0,0,90),90,UDim2.new(0,30,0,30),true,1,474172996,0)
--[[creator]] createlabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"Creator",IntroFrame,UDim2.new(0,80,1,-40),0,UDim2.new(0,140,0,30),true,1,Enum.Font.Code,Enum.FontSize.Size28,"Symplicity",Color3.new(27/255,42/255,53/255), false,Color3.new(0,0,0),1,0,true,Enum.TextXAlignment.Center,Enum.TextYAlignment.Center)
--[[creatorlabel]] createlabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"CreatorLabel",IntroFrame,UDim2.new(0,80,1,-70),0,UDim2.new(0,140,0,30),true,1,Enum.Font.Code,Enum.FontSize.Size18,"Made by:",Color3.new(27/255,42/255,53/255), false,Color3.new(0,0,0),1,0,true,Enum.TextXAlignment.Center,Enum.TextYAlignment.Center)
--[[desc]] createlabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"Desc",IntroFrame,UDim2.new(0,0,0,120),0,UDim2.new(1,0,0,90),true,1,Enum.Font.SourceSansLight,Enum.FontSize.Size14,"Feel free to share, just give me creds :) The ESP was not originally created by me, I don't know who created it",Color3.new(0,0,0), true,Color3.new(0,0,0),1,0,true,Enum.TextXAlignment.Center,Enum.TextYAlignment.Center)
--[[subtitle]] createlabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"SubTitle",IntroFrame,UDim2.new(0.5,-150,0,70),0,UDim2.new(0,300,0,40),true,1,Enum.Font.SourceSansBold,Enum.FontSize.Size32,"Aimbot/ESP",Color3.new(27/255,42/255,53/255), false,Color3.new(0,0,0),1,0,true,Enum.TextXAlignment.Center,Enum.TextYAlignment.Center)
--[[title]] createlabel(Color3.new(1,1,1),1,Color3.new(0,0,0),0,"Title",IntroFrame,UDim2.new(0.5,-105,0,20),0,UDim2.new(0,210,0,60),true,1,Enum.Font.SourceSansBold,Enum.FontSize.Size60,"FPS",Color3.new(27/255,42/255,53/255), false,Color3.new(0,0,0),1,0,true,Enum.TextXAlignment.Center,Enum.TextYAlignment.Center)
 
IntroFrame:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
wait(3.5)
IntroFrame:TweenPosition(UDim2.new(0,-330,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Quart,0.5,true)
wait(0.5)
Gui:Destroy()
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
game:GetService("UserInputService").InputEnded:connect(onKeyRelease)
 
while wait(1) do
    CheckEsp()
end
end)

ESP.Name = "ESP"
ESP.Parent = Menu
ESP.BackgroundColor3 = Color3.fromRGB(172, 60, 170)
ESP.BorderColor3 = Color3.fromRGB(172, 60, 170)
ESP.Position = UDim2.new(0.708491802, 0, 0.284329563, 0)
ESP.Size = UDim2.new(0, 230, 0, 266)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP.TextScaled = true
ESP.TextSize = 14.000
ESP.TextWrapped = true
ESP.MouseButton1Down:connect(function()
 crashy = false -- CHANGE THIS TO TRUE IF IT CRASHES THIS GAME
on = false
if game.CoreGui:FindFirstChild('ESP') then
    game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('ESP') then
    game.Players.LocalPlayer.PlayerGui.ESP:Destroy()
end
 
function doit(hey)
    local t1 = Instance.new('SurfaceGui',hey)
    t1.AlwaysOnTop = true
    local t1g = Instance.new('Frame',t1)
    t1g.Size = UDim2.new(1,0,1,0)
    t1g.BackgroundColor3 = t1.Parent.BrickColor.Color
    local t2 = Instance.new('SurfaceGui',hey)      
    t2.AlwaysOnTop = true
    t2.Face = Enum.NormalId.Right
    local t2g = Instance.new('Frame',t2)
    t2g.Size = UDim2.new(1,0,1,0)
    t2g.BackgroundColor3 = t2.Parent.BrickColor.Color
    local t3 = Instance.new('SurfaceGui',hey)
    t3.AlwaysOnTop = true
    t3.Face = Enum.NormalId.Left
    local t3g = Instance.new('Frame',t3)
    t3g.Size = UDim2.new(1,0,1,0)
    t3g.BackgroundColor3 = t3.Parent.BrickColor.Color
    local t4 = Instance.new('SurfaceGui',hey)
    t4.AlwaysOnTop = true
    t4.Face = Enum.NormalId.Back
    local t4g = Instance.new('Frame',t4)
    t4g.Size = UDim2.new(1,0,1,0)
    t4g.BackgroundColor3 = t4.Parent.BrickColor.Color
    local t5 = Instance.new('SurfaceGui',hey)
    t5.AlwaysOnTop = true
    t5.Face = Enum.NormalId.Top
    local t5g = Instance.new('Frame',t5)
    t5g.Size = UDim2.new(1,0,1,0)
    t5g.BackgroundColor3 = t5.Parent.BrickColor.Color
    local t6 = Instance.new('SurfaceGui',hey)
    t6.AlwaysOnTop = true
    t6.Face = Enum.NormalId.Bottom
    local t6g = Instance.new('Frame',t6)
    t6g.Size = UDim2.new(1,0,1,0)
    t6g.BackgroundColor3 = t6.Parent.BrickColor.Color
end
function undo(chr)
    for i,v in pairs(chr:GetChildren()) do
        if v.ClassName == "Part" or v.ClassName == "MeshPart" then
            for a,c in pairs(v:GetChildren()) do
                if c.ClassName == "SurfaceGui" then
                    c:Destroy()
                end
                if c.ClassName == "BillboardGui" and c.Name == "thingyye" then
                    c:Destroy()
                end
            end
        end
    end
end
 
local gui = Instance.new('ScreenGui')
if crashy == false then
    gui.Parent = game.CoreGui
else
    gui.Parent = game.Players.LocalPlayer.PlayerGui
end
gui.Name = "ESP"
gui.ResetOnSpawn = false
local frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.3,0)
frame.Position = UDim2.new(0,0,0.9,0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(131,182,239)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(66,134,244)
frame.Active = true
frame.Draggable = true
local but = Instance.new('TextButton',frame)
but.Text = "ESP On"
but.TextColor3 = Color3.fromRGB(255,255,255)
but.Size = UDim2.new(0.7,0,0.3,0)
but.Position = UDim2.new(0.15,0,0.5,0)
but.BorderSizePixel = 0
but.TextScaled = true
but.BackgroundColor3 = Color3.fromRGB(66,134,244)
but.BackgroundTransparency = 0.4
for i,v in pairs(game.Players:GetChildren()) do
    if v.Character ~= nil then
        undo(v.Character)
    end
end
 
but.MouseButton1Down:connect(function()
if but.Text == "ESP On" then
but.Text = "ESP Off"
on = true
for i,v in pairs(game.Players:GetChildren()) do
    local cour = coroutine.wrap(function()
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(2,1,2)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
        end
    end
    end)
    cour()
end
else
    but.Text = "ESP On"
    on = false
    for i,v in pairs(game.Players:GetChildren()) do
        undo(v.Character)
    end
end
end)
 
for i,v in pairs(game.Players:GetChildren()) do
    v.CharacterAdded:connect(function()
    v.Character:WaitForChild('Head')
    wait(1)
    if on == true then
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
    local cour = coroutine.wrap(function()
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(2,1,2)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
        end
    end)
    cour()
    end
    end
    end)
end  
 
game.Players.PlayerAdded:connect(function(v)
v.CharacterAdded:connect(function()
    v.Character:WaitForChild('Head')
    wait(1)
    if on == true then
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
    local cour = coroutine.wrap(function()
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(2,1,2)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
                doit(c)
            end
        end
    end)
    cour()
    end
    end
    end)
end)
end)

Madeby.Name = "Made by"
Madeby.Parent = Menu
Madeby.BackgroundColor3 = Color3.fromRGB(245, 128, 255)
Madeby.BorderColor3 = Color3.fromRGB(245, 128, 255)
Madeby.Position = UDim2.new(0, 0, 0.91922456, 0)
Madeby.Size = UDim2.new(0, 789, 0, 50)
Madeby.Font = Enum.Font.SourceSans
Madeby.Text = "Discord: discord.gg/6kR7TAD - Made by OliHello#8986"
Madeby.TextColor3 = Color3.fromRGB(0, 0, 0)
Madeby.TextScaled = true
Madeby.TextSize = 14.000
Madeby.TextWrapped = true