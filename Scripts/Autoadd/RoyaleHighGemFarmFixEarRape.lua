--[[
   Royale High Gem farm *UwU* made by Kaid#0001!!! Look below for settings!
]]--

--Seeding random
math.randomseed(tick())

--Settings
local collectDelay = .05 --Delay for each gem tp (There's also a randomization on top of this delay of about .1-.2 seconds)
local bypassCaptcha = true --Click the bubble captcha solver
local unsafe = false --Uses possibly unsafe collection method (Lets you still play the game while farming!) (Other note, if you use unsafe other users wont know who's stealing all the diamonds)
local limit = 400000 --Kicks you from the game at X gems (Idk what a good limit is, I don't play this game, it may be way higher / lower than the one provided, no fucking idea)

--Script
if _G.farm == nil then
    _G.farm = false
    local specials = {}
    local normals = {}
    
    local plr = game:GetService("Players").LocalPlayer
    local UI = game:GetObjects("rbxassetid://8887653583")[1]
    local tws = game:GetService("TweenService");
    
    if syn and syn.protect_gui then
       syn.protect_gui(UI)
       for i,v in pairs(UI:GetDescendants()) do
           syn.protect_gui(v)
       end
    end
    
    UI.Main.FarmLimit.Text = limit
    game:GetService("ReplicatedStorage").ErrorLogNetworkFolder.ReportError:Destroy()
    UI.Main.TotalCash.Text = string.gsub(plr.PlayerGui.HUD.Center.DiamondAmount.Text, ",", "")
    
    for i,v in pairs(UI:GetDescendants()) do
       if v:IsA("UIGradient") then
           v.Offset = Vector2.new(-.5,-.5)
           local twig = TweenInfo.new(4,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,-1,true,.2)
           local tweeng = tws:Create(v,twig,{["Offset"]=Vector2.new(.5,.5)})
           tweeng:Play()
       end
    end
    
    UI.Main.Toggle.MouseButton1Down:Connect(function(v)
       if _G.farm then
           _G.farm = false
           UI.Main.Toggle.Toggle_Roundify_30px.ImageColor3 = Color3.fromRGB(63, 39, 39)
       else
           _G.farm = true
           UI.Main.Toggle.Toggle_Roundify_30px.ImageColor3 = Color3.fromRGB(43, 63, 39)
       end
    end)
    
    --Drag script by Tiffblox
    local a=game:GetService("UserInputService")local b=UI.Main;local c;local d;local e;local f;local function g(h)local i=h.Position-e;b.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end;b.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then c=true;e=h.Position;f=b.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)b.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then d=h end end)a.InputChanged:Connect(function(h)if h==d and c then g(h)end end)
    
    UI.Name = math.random(10000000,99999999)
    UI.Parent = game:GetService("CoreGui")
    
    local startingCash = UI.Main.TotalCash.Text
    local firstMinCash = tonumber(UI.Main.TotalCash.Text)
    
    local function a()
       while wait(60) do
           UI.Main.HourlyCash.Text = tostring((tonumber(UI.Main.TotalCash.Text) - firstMinCash)*60)
           firstMinCash = tonumber(UI.Main.TotalCash.Text)
       end
    end
    
    coroutine.wrap(a)()
    
    game:GetService("ReplicatedStorage").Network.Events.Gui.Currency.Update.OnClientEvent:Connect(function(value)
    UI.Main.TotalCash.Text = value
    UI.Main.FarmedCash.Text = tonumber(value) - tonumber(startingCash)
    
    if tonumber(value) > limit then
        plr:Kick("\n[Kaid's Autofarm]\nYou hit/exceeded the limit specified in your limit variable\nEither spend your gems now or increase your limit variable!\n(This is to prevent supposed trade-bans)")
       end
    end)
    
    --Antiafk https://v3rmillion.net/showthread.php?tid=772135
    local vu = game:GetService("VirtualUser")
    plr.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    
    if bypassCaptcha then
       plr.PlayerGui.CaptchaGui:GetPropertyChangedSignal("Enabled"):Connect(function()
           wait(1)
           if plr.PlayerGui.CaptchaGui.Enabled then
               for i,v in pairs(plr.PlayerGui.CaptchaGui.Captcha.FloatArea:GetChildren()) do
                   local absolute = v.AbsoluteSize.X
                   wait(.1)
                   if absolute ~= v.AbsoluteSize.X then
                       for i,v in pairs(getconnections(v.MouseButton1Click)) do
                           v:Fire()
                       end
                       wait(.01)
                       v:Destroy()
                   end
               end
               plr.PlayerGui.CaptchaGui.PopupMessage.Visible = false
               plr.PlayerGui.CaptchaGui.Enabled = false
           end
       end)
    end
    
    for i,v in pairs(game:GetService("Workspace").CollectibleDiamonds:GetChildren()) do
       if v.Name ~= "specialdiamond" then table.insert(specials,v) else table.insert(normals,v) end
    end
    
    while wait(1) do
       while _G.farm and wait() do
           if not unsafe then
               for i,v in pairs(normals) do
                   if not _G.farm then break end
                   for i,v in pairs(specials) do
                       if v.Transparency == 0 then
                           if plr.Character.Humanoid.Sit == true then wait(1);plr.Character.Humanoid.Sit = false end
                           wait(collectDelay + (math.random(1,2)*.1))
                           plr.Character.Humanoid.RootPart.CFrame = CFrame.new(v.CFrame.X,v.CFrame.Y + 2,v.CFrame.Z)
                           for i,v in pairs(v:GetChildren()) do
                               if v:IsA("TouchTransmitter") then
                                   firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,0)
                                   firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,1)
                               end
                           end
                       end
                   end
                   if v.Transparency == 0 then
                       if plr.Character.Humanoid.Sit == true then plr.Character.Humanoid.Sit = false end
                       wait(collectDelay + (math.random(1,2)*.1))
                       plr.Character.Humanoid.RootPart.CFrame = CFrame.new(v.CFrame.X,v.CFrame.Y + 2,v.CFrame.Z)
                       for i,v in pairs(v:GetChildren()) do
                           if v:IsA("TouchTransmitter") then
                               firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,0)
                               firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,1)
                           end
                       end
                   end
               end
           else
               for i,v in pairs(specials) do
                   if not _G.farm then break end
                   if v.Transparency == 1 then continue end
                   wait(collectDelay + (math.random(1,2)*.1))
                   local old = v.CFrame
                   v.CFrame = plr.Character.Humanoid.RootPart.CFrame
                   for i,v in pairs(v:GetChildren()) do
                       if v:IsA("TouchTransmitter") then
                           firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,0)
                           firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,1)
                       end
                   end
                   wait()
                   v.CFrame = old
               end
               for i,v in pairs(normals) do
                   if not _G.farm then break end
                   if v.Transparency == 1 then continue end
                   wait(collectDelay + (math.random(1,2)*.1))
                   local old = v.CFrame
                   v.CFrame = plr.Character.Humanoid.RootPart.CFrame
                   for i,v in pairs(v:GetChildren()) do
                       if v:IsA("TouchTransmitter") then
                           firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,0)
                           firetouchinterest(plr.Character.Humanoid.RootPart,v.Parent,1)
                       end
                   end
                   wait()
                   v.CFrame = old
               end
           end
       end
    end
end