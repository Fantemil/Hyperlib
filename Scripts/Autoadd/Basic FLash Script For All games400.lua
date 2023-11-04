--[[
lol
--]]
 
wait()
Player = game.Players.LocalPlayer
Object = Player.Character.HumanoidRootPart
Arm1 = Player.Character["Right Arm"]
PreviousA1 = Arm1.CFrame.p
Arm2 = Player.Character["Left Arm"]
PreviousA2 = Arm2.CFrame.p
 
Leg1 = Player.Character["Right Leg"]
PreviousL1 = Leg1.CFrame.p
Leg2 = Player.Character["Left Leg"]
PreviousL2 = Leg2.CFrame.p
 
Run = game["Run Service"]
 
PreviousP = Object.CFrame.p
Running = false
Phase = false
PhaseActive = false
Morph = false
MorphActive = false
Tornado = false
TornadoRadius = 50
TornadoActive = false
Portal = false
PortalEnd = false
MaxZ = 15
MinZ = -15
LightMaxX = 3
LightMinX = 1
LightMaxX2 = -1
LightMinX2 = -3
LightMaxY = 3
LightMinY = -1
Rotation = 0
Length = 10
Color = BrickColor.Yellow()
PColor = Color3.new(255,255,0)
PrevPoint1 = nil
PrevPoint2 = nil
PrevPoint3 = nil
PrevPoint4 = nil
PrevPoint5 = nil
PrevPoint6 = nil
PrevPoint7 = nil
PrevPoint8 = nil
PrevPoint9 = nil
PrevPoint10 = nil
PrevPoint11 = nil
PrevPoint12 = nil
angle = 0
Mouse = Player:GetMouse()
Player.Character.Humanoid.WalkSpeed = 16
 
Nil = function()
    PrevPoint1 = "Empty"
    PrevPoint2 = "Empty"
    PrevPoint3 = "Empty"
    PrevPoint4 = "Empty"
    PrevPoint5 = "Empty"
    PrevPoint6 = "Empty"
    PrevPoint7 = "Empty"
    PrevPoint8 = "Empty"
    PrevPoint9 = "Empty"
    PrevPoint10 = "Empty"
    PrevPoint11 = "Empty"
    PrevPoint12 = "Empty"
end
 
    local Lightning = coroutine.wrap(function()
while wait() do
        if Portal == false then
        angle = angle + 0.6
        local Model = Instance.new("Model",workspace)
        Model.Name = "Lightning"
        local Point1 = Instance.new("Part",Model)
        Point1.Transparency = 1
        Point1.Size = Vector3.new(0.2,0.2,0.2)
        Point1.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point1.Size.Z/2))
        Point1.Anchored = true
        Point1.CanCollide = false
        Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))
 
        local Point2 = Instance.new("Part",Model)
        Point2.Transparency = 1
        Point2.Size = Vector3.new(0.2,0.2,0.2)
        Point2.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point2.Size.Z/2))
        Point2.Anchored = true
        Point2.CanCollide = false
        Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))
 
        local Point3 = Instance.new("Part",Model)
        Point3.Transparency = 1
        Point3.Size = Vector3.new(0.2,0.2,0.2)
        Point3.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point3.Size.Z/2))
        Point3.Anchored = true
        Point3.CanCollide = false
        Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))
 
        local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
 
        local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance2)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2)
 
        local Point1 = Instance.new("Part",Model)
        Point1.Transparency = 1
        Point1.Size = Vector3.new(0.2,0.2,0.2)
        Point1.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point1.Size.Z/2))
        Point1.Anchored = true
        Point1.CanCollide = false
        Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))
 
        local Point2 = Instance.new("Part",Model)
        Point2.Transparency = 1
        Point2.Size = Vector3.new(0.2,0.2,0.2)
        Point2.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point2.Size.Z/2))
        Point2.Anchored = true
        Point2.CanCollide = false
        Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))
 
        local Point3 = Instance.new("Part",Model)
        Point3.Transparency = 1
        Point3.Size = Vector3.new(0.2,0.2,0.2)
        Point3.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point3.Size.Z/2))
        Point3.Anchored = true
        Point3.CanCollide = false
        Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))
 
        local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
 
        local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.3,0.3,distance2)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2)
       
        local Point1 = Instance.new("Part",Model)
        Point1.Transparency = 1
        Point1.Size = Vector3.new(0.2,0.2,0.2)
        Point1.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
        Point1.Anchored = true
        Point1.CanCollide = false
        Point1.CFrame = Point1.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local Point2 = Instance.new("Part",Model)
        Point2.Transparency = 1
        Point2.Size = Vector3.new(0.2,0.2,0.2)
        Point2.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
        Point2.Anchored = true
        Point2.CanCollide = false
        Point2.CFrame = Point2.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local Point3 = Instance.new("Part",Model)
        Point3.Transparency = 1
        Point3.Size = Vector3.new(0.2,0.2,0.2)
        Point3.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
        Point3.Anchored = true
        Point3.CanCollide = false
        Point3.CFrame = Point3.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
 
        local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance2)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2)
 
        local Point1 = Instance.new("Part",Model)
        Point1.Transparency = 1
        Point1.Size = Vector3.new(0.2,0.2,0.2)
        Point1.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
        Point1.Anchored = true
        Point1.CanCollide = false
        Point1.CFrame = Point1.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local Point2 = Instance.new("Part",Model)
        Point2.Transparency = 1
        Point2.Size = Vector3.new(0.2,0.2,0.2)
        Point2.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
        Point2.Anchored = true
        Point2.CanCollide = false
        Point2.CFrame = Point2.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local Point3 = Instance.new("Part",Model)
        Point3.Transparency = 1
        Point3.Size = Vector3.new(0.2,0.2,0.2)
        Point3.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
        Point3.Anchored = true
        Point3.CanCollide = false
        Point3.CFrame = Point3.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))
 
        local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
 
        local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        local PointLight = Instance.new("PointLight",Light)
        PointLight.Range = 5
        PointLight.Color = PColor
        Light.Transparency = 0.5
        Light.BrickColor = Color
        Light.Material = "Neon"
        Light.Size = Vector3.new(0.25,0.25,distance2)
        Light.Anchored = true
        Light.CanCollide = false
        Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2)
       
    local Children = Model:GetChildren()
    wait(0.1)
    for i = 1,#Children do
        if Children[i]:IsA("Part") then
        Children[i].Transparency = 1
        end
        game.Debris:AddItem(Children[i],0)
    end
 
        end
        end
    end)
Lightning()
 
TornadoFunction = function()
    local TornadoModel = Instance.new("Model",workspace)
    local Center = Instance.new("Part",TornadoModel)
    Center.Anchored = true
    Center.CanCollide = false
    Center.Transparency = 1
    Center.Size = Vector3.new(2,2,2)
    Center.CFrame = Object.CFrame * CFrame.new(0,0,-20)
    local Death = Instance.new("Part",TornadoModel)
    Death.Anchored = true
    Death.CanCollide = false
    Death.Transparency = 1
    Death.Size = Vector3.new(TornadoRadius+10,TornadoRadius+10,TornadoRadius+10)
    Death.CFrame = Center.CFrame
    Death.Touched:connect(function(Touch)
        if Touch.Parent:FindFirstChild("Humanoid") ~= nil and Touch.Parent.Name ~= Player.Name then
            Touch.Parent.Humanoid.Health = 0
        end
    end)
    local TornadoFunc = function()
        local Tornanimation = coroutine.wrap(function()
            while Run.Stepped:wait() do
                if Tornado == false then Death:Destroy() break end
                angle = angle + 0.1
                Object.Anchored = false
                Object.CFrame = Center.CFrame * CFrame.Angles(0,angle,0) * CFrame.new(0,0,TornadoRadius)
                Object.CFrame = Object.CFrame * CFrame.Angles(0,-math.rad(90),0)
            end
        end)
        Tornanimation()
    end
    TornadoFunc()
end
 
PhaseFunction = function()
    local Phase = coroutine.wrap(function()
    while wait() do
    if Phase == false then break end
    if Player.Character.Humanoid.WalkSpeed > 16 and Phase == true then
        Object.CFrame = Object.CFrame * CFrame.new(0,0,-Player.Character.Humanoid.WalkSpeed/20)
    end
    end
    end)
    Phase()
end
 
 
PortalFunction = function()
    local PortalBlock = Instance.new("Part",workspace)
    PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,-100)
    PortalBlock.Transparency = 1
    PortalBlock.Anchored = true
    PortalBlock.CanCollide = false
    PortalBlock.Size = Vector3.new(20,20,0.2)
    PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
    local Gui = Instance.new("SurfaceGui",PortalBlock)
    local Img = Instance.new("ImageLabel",Gui)
    Img.Size = UDim2.new(2,0,2,0)
    Img.Position = UDim2.new(-0.5,0,-0.5,0)
    Img.Transparency = 1
    Img.Image = "http://www.roblox.com/asset/?id=21315275"
    local Gui = Instance.new("SurfaceGui",PortalBlock)                          
    Gui.Face = "Back"
    local Img = Instance.new("ImageLabel",Gui)
    Img.Size = UDim2.new(2,0,2,0)
    Img.Position = UDim2.new(-0.5,0,-0.5,0)
    Img.Transparency = 1
    Img.Image = "http://www.roblox.com/asset/?id=21315275"
    Object.CFrame = PortalBlock.CFrame
    local Face = Object.Parent.Head.face.Texture
    local ObjectC = Object.Parent:GetChildren()
    for i = 1,#ObjectC do
        if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
            ObjectC[i].Transparency = 1
        elseif ObjectC[i]:IsA("Hat") then
            ObjectC[i].Handle.Transparency = 1
        end
        if ObjectC[i].Name == "Head" then
            ObjectC[i].face.Texture = ""
        end
    end
 
    local PortalR = coroutine.wrap(function()
    wait(0.1)
    Portal = true
    PortalEnd = true
    while wait(0.001) do
    if Portal == false then
        break
    end
        Nil()
        PortalBlock.CFrame = PortalBlock.CFrame * CFrame.Angles(0,0,-0.1)
    wait(0.01)
    end
        PortalBlock:Destroy()
    for i = 1,#ObjectC do
        if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
            ObjectC[i].Transparency = 0
        elseif ObjectC[i]:IsA("Hat") then
            ObjectC[i].Handle.Transparency = 0
        end
        if ObjectC[i].Name == "Head" then
            ObjectC[i].face.Texture = Face
        end
    end
    game.Players.LocalPlayer.Character.Part.Transparency = 1
    local PortalBlock = Instance.new("Part",workspace)
    PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,0)
    PortalBlock.Transparency = 1
    PortalBlock.Anchored = true
    PortalBlock.CanCollide = false
    PortalBlock.Size = Vector3.new(20,20,0.2)
    PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
    local Gui = Instance.new("SurfaceGui",PortalBlock)
    local Img = Instance.new("ImageLabel",Gui)
    Img.Size = UDim2.new(2,0,2,0)
    Img.Position = UDim2.new(-0.5,0,-0.5,0)
    Img.Transparency = 1
    Img.Image = "http://www.roblox.com/asset/?id=21315275"
    local Gui = Instance.new("SurfaceGui",PortalBlock)
    Gui.Face = "Back"
    local Img = Instance.new("ImageLabel",Gui)
    Img.Size = UDim2.new(2,0,2,0)
    Img.Position = UDim2.new(-0.5,0,-0.5,0)
    Img.Transparency = 1
    Img.Image = "http://www.roblox.com/asset/?id=21315275"
    Object.CFrame = PortalBlock.CFrame
    PreviousA1 = Arm1.CFrame.p
    PreviousA2 = Arm2.CFrame.p
    PreviousL1 = Leg1.CFrame.p
    PreviousL2 = Leg2.CFrame.p
    PreviousP = Object.CFrame.p
    PortalEnd = false
    wait(2)
    PortalBlock:Destroy()
    end)
    PortalR()
end
 
MorphFunction = function()
    local MaxX = 100
    local MinX = -100
    local MaxY = 100
    local MinY = -100
    local MaxZ = 100
    local MinZ = -100
    local Morph = coroutine.wrap(function()
    while Run.Stepped:wait(0.1) do
    if Morph == false then break end
    local Model = Instance.new("Model",workspace)
    if Player.Character:FindFirstChild("Shirt") then
    local Shirt = Player.Character.Shirt:Clone()
    Shirt.Parent = Model
    end
    if Player.Character:FindFirstChild("Pants") then
    local Pants = Player.Character.Pants:Clone()
    Pants.Parent = Model
    end
    local Humanoid = Instance.new("Humanoid",Model)
    local LeftArm = Player.Character["Left Arm"]:Clone()
    LeftArm.Parent = Model
    LeftArm.Transparency = 0.4
    LeftArm.Anchored = true
    LeftArm.CFrame = Player.Character["Left Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
    local RightArm = Player.Character["Right Arm"]:Clone()
    RightArm.Parent = Model
    RightArm.Transparency = 0.4
    RightArm.Anchored = true
    RightArm.CFrame = Player.Character["Right Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
    local LeftLeg = Player.Character["Left Leg"]:Clone()
    LeftLeg.Parent = Model
    LeftLeg.Transparency = 0.4
    LeftLeg.Anchored = true
    LeftLeg.CFrame = Player.Character["Left Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
    local RightLeg = Player.Character["Right Leg"]:Clone()
    RightLeg.Parent = Model
    RightLeg.Transparency = 0.4
    RightLeg.Anchored = true   
    RightLeg.CFrame = Player.Character["Right Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
    local Children = Model:GetChildren()
    wait(0.01)
    for i = 1,#Children do
        if Children[i]:IsA("Part") then
        Children[i].Transparency = 1
        end
        game.Debris:AddItem(Children[i],0)
    end
    end
    end)
    Morph()
end
 
local Guis = coroutine.wrap(function()
    local Gui = Instance.new("ScreenGui",Player.PlayerGui)
    local TextBox = Instance.new("TextBox",Gui)
    TextBox.Text = "Speed"
    TextBox.BackgroundColor3 = Color3.new(255,255,255)
    TextBox.BorderColor3 = Color3.new(0,0,0)
    TextBox.Size = UDim2.new(0,200,0,25)
    TextBox.Position = UDim2.new(0,10,0.5,-12.5)
    TextBox.FocusLost:connect(function(EnterPressed)
        if EnterPressed then
            Player.Character.Humanoid.WalkSpeed = TextBox.Text
        end
    end)
    local Flash = Instance.new("TextButton",Gui)
    Flash.BackgroundColor3 = Color3.new(255,255,255)
    Flash.BorderColor3 = Color3.new(0,0,0)
    Flash.Size = UDim2.new(0,200,0,25)
    Flash.Position = UDim2.new(0,10,0.5,22.5)
    Flash.Text = "The Flash"
    Flash.MouseButton1Click:connect(function()
        Color = BrickColor.Yellow()
        PColor = Color3.new(255,255,0)
    end)
    local RFlash = Instance.new("TextButton",Gui)
    RFlash.BackgroundColor3 = Color3.new(255,255,255)
    RFlash.BorderColor3 = Color3.new(0,0,0)
    RFlash.Size = UDim2.new(0,200,0,25)
    RFlash.Position = UDim2.new(0,10,0.5,57.5)
    RFlash.Text = "The Reverse Flash"
    RFlash.MouseButton1Click:connect(function()
        Color = BrickColor.new("Really red")
        PColor = Color3.new(255,0,0)
    end)
    local Zoom = Instance.new("TextButton",Gui)
    Zoom.BackgroundColor3 = Color3.new(255,255,255)
    Zoom.BorderColor3 = Color3.new(0,0,0)
    Zoom.Size = UDim2.new(0,200,0,25)
    Zoom.Position = UDim2.new(0,10,0.5,92.5)
    Zoom.Text = "Zoom"
    Zoom.MouseButton1Click:connect(function()
        Color = BrickColor.new("Cyan")
        PColor = Color3.new(0,170,255)
    end)
    local Radius = Instance.new("TextBox",Gui)
    Radius.Text = "Tornado Radius"
    Radius.BackgroundColor3 = Color3.new(255,255,255)
    Radius.BorderColor3 = Color3.new(0,0,0)
    Radius.Size = UDim2.new(0,200,0,25)
    Radius.Position = UDim2.new(0,10,0.5,127.5)
    Radius.FocusLost:connect(function(EnterPressed)
        if EnterPressed then
            TornadoRadius = Radius.Text
        end
    end)
    Mouse.KeyDown:connect(function(Key)
        if Key == "f" then
            if Portal == false then
                PortalFunction()
                Nil()
            else
                Portal = false
            end
        end
        if Key == "r" then
            if Phase == false then
                Phase = true
                PhaseFunction()
                print "PhaseFunction"
            else
                Phase = false
            end
        end
        if Key == "e" then
            if Tornado == false then
                Tornado = true
                TornadoFunction()
            else
                Tornado = false
            end
        end
        if Key == "t" then
            if Morph == false then
                Morph = true
                MorphFunction()
            else
                Morph = false
            end
        end
    end)
end)
Guis()
 
Run.RenderStepped:connect(function()
    if (Object.CFrame.p - PreviousP).magnitude > 7 and Player.Character.Humanoid.WalkSpeed > 25 and Portal == false and PortalEnd == false then
    local Model = Instance.new("Model",workspace)
    Model.Name = "Ray"
    local Humanoid = Instance.new("Humanoid",Model)
    if Player.Character:FindFirstChild("Shirt") ~= nil then
        Player.Character.Shirt:Clone().Parent = Model
    end
    if Player.Character:FindFirstChild("Pants") ~= nil then
        Player.Character.Pants:Clone().Parent = Model
    end
    local distance = (Object.CFrame.p - PreviousP).magnitude
    local Light = Instance.new("Part",Model)
    Light.Anchored = true
    Light.CanCollide = false
    Light.TopSurface = "SmoothNoOutlines"
    Light.BottomSurface = "SmoothNoOutlines"
    Light.BackSurface = "SmoothNoOutlines"
    Light.FrontSurface = "SmoothNoOutlines"
    Light.LeftSurface = "SmoothNoOutlines"
    Light.RightSurface = "SmoothNoOutlines"
    Light.Transparency = 1
    Light.BrickColor = BrickColor.Black()
    Light.Size = Vector3.new(2,2,distance)
    Light.CFrame = CFrame.new(Object.CFrame.p , PreviousP) * CFrame.new(0,0,-distance/2)
   
    local PointLight = Instance.new("PointLight",Light)
    PointLight.Range = 15
    PointLight.Brightness = 100
    PointLight.Color = PColor
 
    local distance = (Arm1.CFrame.p - PreviousA1).magnitude
 
    local Arm1Light = Instance.new("Part",Model)
    Arm1Light.Name = "Right Arm"
    Arm1Light.Anchored = true
    Arm1Light.CanCollide = false
    Arm1Light.TopSurface = "SmoothNoOutlines"
    Arm1Light.BottomSurface = "SmoothNoOutlines"
    Arm1Light.BackSurface = "SmoothNoOutlines"
    Arm1Light.FrontSurface = "SmoothNoOutlines"
    Arm1Light.LeftSurface = "SmoothNoOutlines"
    Arm1Light.RightSurface = "SmoothNoOutlines"
    Arm1Light.Transparency = 0.5
    Arm1Light.BrickColor = BrickColor.Black()
    Arm1Light.Size = Vector3.new(1,2,distance)
    Arm1Light.CFrame = CFrame.new(Arm1.CFrame.p , PreviousA1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)
 
    local distance = (Arm2.CFrame.p - PreviousA2).magnitude
 
    local Arm2Light = Instance.new("Part",Model)
    Arm2Light.Name = "Left Arm"
    Arm2Light.Anchored = true
    Arm2Light.CanCollide = false
    Arm2Light.TopSurface = "SmoothNoOutlines"
    Arm2Light.BottomSurface = "SmoothNoOutlines"
    Arm2Light.BackSurface = "SmoothNoOutlines"
    Arm2Light.FrontSurface = "SmoothNoOutlines"
    Arm2Light.LeftSurface = "SmoothNoOutlines"
    Arm2Light.RightSurface = "SmoothNoOutlines"
    Arm2Light.Transparency = 0.5
    Arm2Light.BrickColor = BrickColor.Black()
    Arm2Light.Size = Vector3.new(1,2,distance)
    Arm2Light.CFrame = CFrame.new(Arm2.CFrame.p , PreviousA2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)
 
    local distance = (Leg1.CFrame.p - PreviousL1).magnitude
 
    local Leg1Light = Instance.new("Part",Model)
    Leg1Light.Name = "Right Leg"
    Leg1Light.Anchored = true
    Leg1Light.CanCollide = false
    Leg1Light.TopSurface = "SmoothNoOutlines"
    Leg1Light.BottomSurface = "SmoothNoOutlines"
    Leg1Light.BackSurface = "SmoothNoOutlines"
    Leg1Light.FrontSurface = "SmoothNoOutlines"
    Leg1Light.LeftSurface = "SmoothNoOutlines"
    Leg1Light.RightSurface = "SmoothNoOutlines"
    Leg1Light.Transparency = 0.5
    Leg1Light.BrickColor = BrickColor.Black()
    Leg1Light.Size = Vector3.new(1,2,distance)
    Leg1Light.CFrame = CFrame.new(Leg1.CFrame.p , PreviousL1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)
 
    local distance = (Leg2.CFrame.p - PreviousL2).magnitude
 
    local Leg1Light = Instance.new("Part",Model)
    Leg1Light.Name = "Left Leg"
    Leg1Light.Anchored = true
    Leg1Light.CanCollide = false
    Leg1Light.TopSurface = "SmoothNoOutlines"
    Leg1Light.BottomSurface = "SmoothNoOutlines"
    Leg1Light.BackSurface = "SmoothNoOutlines"
    Leg1Light.FrontSurface = "SmoothNoOutlines"
    Leg1Light.LeftSurface = "SmoothNoOutlines"
    Leg1Light.RightSurface = "SmoothNoOutlines"
    Leg1Light.Transparency = 0.5
    Leg1Light.BrickColor = BrickColor.Black()
    Leg1Light.Size = Vector3.new(1,2,distance)
    Leg1Light.CFrame = CFrame.new(Leg2.CFrame.p , PreviousL2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)
 
    local Point1 = Instance.new("Part",Model)
    Point1.Transparency = 1
    Point1.Anchored = true
    Point1.CanCollide = false
    Point1.Size = Vector3.new(0.2,0.2,0.2)
    Point1.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point2 = Instance.new("Part",Model)
    Point2.Transparency = 1
    Point2.Anchored = true
    Point2.CanCollide = false
    Point2.Size = Vector3.new(0.2,0.2,0.2)
    Point2.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point5 = Instance.new("Part",Model)
    Point5.Transparency = 1
    Point5.Anchored = true
    Point5.CanCollide = false
    Point5.Size = Vector3.new(0.2,0.2,0.2)
    Point5.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point6 = Instance.new("Part",Model)
    Point6.Transparency = 1
    Point6.Anchored = true
    Point6.CanCollide = false
    Point6.Size = Vector3.new(0.2,0.2,0.2)
    Point6.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point3 = Instance.new("Part",Model)
    Point3.Transparency = 1
    Point3.Anchored = true
    Point3.CanCollide = false
    Point3.Size = Vector3.new(0.2,0.2,0.2)
    Point3.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
     * CFrame.new(-Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point4 = Instance.new("Part",Model)
    Point4.Transparency = 1
    Point4.Anchored = true
    Point4.CanCollide = false
    Point4.Size = Vector3.new(0.2,0.2,0.2)
    Point4.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
     * CFrame.new(-Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
 
    local Point7 = Instance.new("Part",Model)
    Point7.Transparency = 1
    Point7.Anchored = true
    Point7.CanCollide = false
    Point7.Size = Vector3.new(0.2,0.2,0.2)
    Point7.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
     * CFrame.new(-Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point8 = Instance.new("Part",Model)
    Point8.Transparency = 1
    Point8.Anchored = true
    Point8.CanCollide = false
    Point8.Size = Vector3.new(0.2,0.2,0.2)
    Point8.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
     * CFrame.new(-Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
 
    local Point9 = Instance.new("Part",Model)
    Point9.Transparency = 1
    Point9.Anchored = true
    Point9.CanCollide = false
    Point9.Size = Vector3.new(0.2,0.2,0.2)
    Point9.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,-2 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point10 = Instance.new("Part",Model)
    Point10.Transparency = 1
    Point10.Anchored = true
    Point10.CanCollide = false
    Point10.Size = Vector3.new(0.2,0.2,0.2)
    Point10.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,0 ,0)
     * CFrame.new(math.random(LightMinX,LightMaxX),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point11 = Instance.new("Part",Model)
    Point11.Transparency = 1
    Point11.Anchored = true
    Point11.CanCollide = false
    Point11.Size = Vector3.new(0.2,0.2,0.2)
    Point11.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,-2 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
   
    local Point12 = Instance.new("Part",Model)
    Point12.Transparency = 1
    Point12.Anchored = true
    Point12.CanCollide = false
    Point12.Size = Vector3.new(0.2,0.2,0.2)
    Point12.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
     * CFrame.new(Light.Size.X/2 ,-2 ,0)
     * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0)
     * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
 
if PrevPoint2 == nil or PrevPoint2 == "Empty" then
        local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
    elseif PrevPoint2 ~= nil then
        local distance = (Point2.CFrame.p - PrevPoint2).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point2.CFrame.p , PrevPoint2) * CFrame.new(0,0,-distance/2)      
    end
 
if PrevPoint4 == nil or PrevPoint4 == "Empty" then
        local distance = (Point4.CFrame.p - Point3.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point4.CFrame.p , Point3.CFrame.p) * CFrame.new(0,0,-distance/2) 
    elseif PrevPoint4 ~= nil then
        local distance = (Point4.CFrame.p - PrevPoint4).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point4.CFrame.p , PrevPoint4) * CFrame.new(0,0,-distance/2)  
    end
 
 
if PrevPoint6 == nil or PrevPoint6 == "Empty" then
        local distance = (Point6.CFrame.p - Point5.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point6.CFrame.p , Point5.CFrame.p) * CFrame.new(0,0,-distance/2) 
    elseif PrevPoint6 ~= nil then
        local distance = (Point6.CFrame.p - PrevPoint6).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point6.CFrame.p , PrevPoint6) * CFrame.new(0,0,-distance/2)  
    end
   
if PrevPoint8 == nil or PrevPoint8 == "Empty" then
        local distance = (Point8.CFrame.p - Point7.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point8.CFrame.p , Point7.CFrame.p) * CFrame.new(0,0,-distance/2) 
    elseif PrevPoint8 ~= nil then
        local distance = (Point8.CFrame.p - PrevPoint8).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point8.CFrame.p , PrevPoint8) * CFrame.new(0,0,-distance/2)
    end
   
if PrevPoint10 == nil or PrevPoint10 == "Empty" then
        local distance = (Point10.CFrame.p - Point9.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point10.CFrame.p , Point9.CFrame.p) * CFrame.new(0,0,-distance/2)
elseif PrevPoint10 ~= nil then
        local distance = (Point10.CFrame.p - PrevPoint10).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point10.CFrame.p , PrevPoint10) * CFrame.new(0,0,-distance/2)
    end
 
   
if PrevPoint12 == nil or PrevPoint12 == "Empty" then
        local distance = (Point12.CFrame.p - Point11.CFrame.p).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point12.CFrame.p , Point11.CFrame.p) * CFrame.new(0,0,-distance/2)   
    elseif PrevPoint12 ~= nil then
        local distance = (Point12.CFrame.p - PrevPoint12).magnitude
        local Light = Instance.new("Part",Model)
        Light.Anchored = true
        Light.CanCollide = false
        Light.TopSurface = "SmoothNoOutlines"
        Light.BottomSurface = "SmoothNoOutlines"
        Light.BackSurface = "SmoothNoOutlines"
        Light.FrontSurface = "SmoothNoOutlines"
        Light.LeftSurface = "SmoothNoOutlines"
        Light.RightSurface = "SmoothNoOutlines"
        Light.Transparency = 0
        Light.Size = Vector3.new(0.4,0.4,distance)
        Light.Material = "Neon"
        Light.BrickColor = Color
        Light.CFrame = CFrame.new(Point12.CFrame.p , PrevPoint12) * CFrame.new(0,0,-distance/2)
    end
    PreviousP = Object.CFrame.p
    PreviousA1 = Arm1.CFrame.p
    PreviousA2 = Arm2.CFrame.p
    PreviousL1 = Leg1.CFrame.p
    PreviousL2 = Leg2.CFrame.p
    PrevPoint1 = Point1.CFrame.p
    PrevPoint2 = Point2.CFrame.p
    PrevPoint3 = Point3.CFrame.p
    PrevPoint4 = Point4.CFrame.p
    PrevPoint5 = Point5.CFrame.p
    PrevPoint6 = Point6.CFrame.p
    PrevPoint7 = Point7.CFrame.p
    PrevPoint8 = Point8.CFrame.p
    PrevPoint9 = Point9.CFrame.p
    PrevPoint10 = Point10.CFrame.p
    PrevPoint11 = Point11.CFrame.p
    PrevPoint12 = Point12.CFrame.p
    local Children = Model:GetChildren()
    wait(1)
    for i = 1,10 do
    local Remove = coroutine.wrap(function()
    for i = 1,#Children do
        if Children[i]:IsA("Part") then
        Children[i].Transparency = Children[i].Transparency + 0.1
            if Children[i].Transparency >= 1 and Children[i] ~= Light and Children[i] ~= Point1 and Children[i] ~= Point2 and Children[i] ~= Point3
                 and Children[i] ~= Point4 and Children[i] ~= Point5 and Children[i] ~= Point6 and Children[i] ~= Point7 and Children[i] ~= Point8
                 and Children[i] ~= Point9 and Children[i] ~= Point10 and Children[i] ~= Point11 and Children[i] ~= Point12 then
                game.Debris:AddItem(Children[i],0)
            end
        end
        if Children[i].ClassName ~= "Part" then
            game.Debris:AddItem(Children[i],0)
        end
    end        
    end)
        Remove()
        wait(0.05)
    end
    game.Debris:AddItem(Light,0)
    game.Debris:AddItem(Point1,0)
    game.Debris:AddItem(Point2,0)
    game.Debris:AddItem(Point3,0)
    game.Debris:AddItem(Point4,0)
    game.Debris:AddItem(Point5,0)
    game.Debris:AddItem(Point6,0)
    game.Debris:AddItem(Point7,0)
    game.Debris:AddItem(Point8,0)
    game.Debris:AddItem(Point9,0)
    game.Debris:AddItem(Point10,0)
    game.Debris:AddItem(Point11,0)
    game.Debris:AddItem(Point12,0)
end
end)

wait(0)

local UIS = game:GetService('UserInputService')
local Player = game.Players.LocalPlayer
local Character = Player.Character

UIS.InputBegan:connect(function(input)--When a player has pressed LeftShift it will play the animation and it will set the normal walking speed (16) to 35.
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://1295446488"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
	end
end)

UIS.InputEnded:connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		Sound.Volume = 0
	end
end)
wait(0)
-- source
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)

wait(0)
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera

local function IsOnScreen(part)
    local screenPoint, onScreen = Camera:WorldToViewportPoint(part.Position)
    return onScreen
end

local Drawings = {}

local function UpdateDrawings()
    -- Clear previous drawings
    for _, drawing in pairs(Drawings) do
        drawing:Remove()
    end
    Drawings = {}
    
    for _, player in pairs(Players:GetPlayers()) do
        local character = player.Character
        local humanoid = character and character:FindFirstChild("Humanoid")
        local head = character and character:FindFirstChild("Head")
        
        if humanoid and head and IsOnScreen(head) then
            local topLeft = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * -0.5)
            local bottomRight = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * 0.5)

            local topLeftScreen, _ = Camera:WorldToViewportPoint(topLeft)
            local bottomRightScreen, _ = Camera:WorldToViewportPoint(bottomRight)
            
            local width = bottomRightScreen.X - topLeftScreen.X
            local height = bottomRightScreen.Y - topLeftScreen.Y

            -- Draw box
            local box = Drawing.new("Square")
            box.Position = Vector2.new(topLeftScreen.X, topLeftScreen.Y)
            box.Size = Vector2.new(width, height)
            box.Color = Color3.new(1, 1, 1)
            box.Thickness = 2
            box.Filled = false
            table.insert(Drawings, box)
            
            -- Draw health bar
            local healthPercentage = humanoid.Health / humanoid.MaxHealth
            local healthBarHeight = height * healthPercentage
            local healthBar = Drawing.new("Square")
            healthBar.Position = Vector2.new(bottomRightScreen.X, topLeftScreen.Y)
            healthBar.Size = Vector2.new(10, healthBarHeight)
            healthBar.Color = Color3.new(1 - healthPercentage, healthPercentage, 0)
            healthBar.Thickness = 1
            healthBar.Filled = true
            table.insert(Drawings, healthBar)
            
            -- Draw player name
            local playerName = Drawing.new("Text")
            playerName.Text = player.Name
            playerName.Position = Vector2.new(topLeftScreen.X + (width/2), topLeftScreen.Y - 14)
            playerName.Size = 14
            playerName.Color = Color3.new(1, 1, 1)
            playerName.Center = true
            table.insert(Drawings, playerName)
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    UpdateDrawings()
end)

wait(0)
game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
wait(0)
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.LeftShift then
            _G.Running = true
                while wait(0.005) and _G.Running == true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
end
        end
end)
UIS.InputEnded:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.LeftShift then
                _G.Running = false
        end
end)
