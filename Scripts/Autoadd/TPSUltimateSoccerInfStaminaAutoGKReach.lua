local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local pslegit = Instance.new("TextButton")
local psfast = Instance.new("TextButton")
local autogk = Instance.new("TextButton")
local infstam = Instance.new("TextButton")
local reach = Instance.new("TextButton")
local guitext = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(102, 111, 110)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 5
Main.Position = UDim2.new(0.269545823, 0, 0.452760726, 0)
Main.Size = UDim2.new(0, 483, 0, 243)
Main.Active = true
Main.Draggable = true

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0, 0, -0.00402945047, 0)
Frame.Size = UDim2.new(0, 482, 0, 61)

pslegit.Name = "pslegit"
pslegit.Parent = Main
pslegit.BackgroundColor3 = Color3.fromRGB(129, 125, 255)
pslegit.Position = UDim2.new(-0.000604285975, 0, 0.243581012, 0)
pslegit.Size = UDim2.new(0, 228, 0, 45)
pslegit.Font = Enum.Font.SciFi
pslegit.Text = "Power Shot legit"
pslegit.TextColor3 = Color3.fromRGB(0, 0, 0)
pslegit.TextSize = 14.000
pslegit.MouseButton1Down:connect(function()
_G.Curve = "100" -- If you want one of the values to be nothing then do 00 instead of just 0
_G.Power = "100" -- Max is 1000 before the game resets your character

local mt = getrawmetatable(game);
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
args = {...}
method = tostring(getnamecallmethod())
if method == "FireServer" and tostring(remote) == "Shoot" and tonumber(args[4]) then
args[4] = _G.Curve
args[5] = _G.Power
return old(remote,unpack(args))
end
return old(remote,...)
end)
setreadonly(mt,true)
end)

psfast.Name = "psfast"
psfast.Parent = Main
psfast.BackgroundColor3 = Color3.fromRGB(129, 125, 255)
psfast.Position = UDim2.new(0.54570359, 0, 0.243581012, 0)
psfast.Size = UDim2.new(0, 219, 0, 46)
psfast.Font = Enum.Font.SciFi
psfast.Text = "Power Shot Fast"
psfast.TextColor3 = Color3.fromRGB(0, 0, 0)
psfast.TextSize = 14.000
psfast.MouseButton1Down:connect(function()
_G.Curve = "200" -- If you want one of the values to be nothing then do 00 instead of just 0
_G.Power = "200" -- Max is 1000 before the game resets your character

local mt = getrawmetatable(game);
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
args = {...}
method = tostring(getnamecallmethod())
if method == "FireServer" and tostring(remote) == "Shoot" and tonumber(args[4]) then
args[4] = _G.Curve
args[5] = _G.Power
return old(remote,unpack(args))
end
return old(remote,...)
end)
setreadonly(mt,true)
end)

autogk.Name = "autogk"
autogk.Parent = Main
autogk.BackgroundColor3 = Color3.fromRGB(129, 125, 255)
autogk.Position = UDim2.new(-0.00709145097, 0, 0.537403226, 0)
autogk.Size = UDim2.new(0, 229, 0, 46)
autogk.Font = Enum.Font.SciFi
autogk.Text = "AutoGK"
autogk.TextColor3 = Color3.fromRGB(0, 0, 0)
autogk.TextSize = 14.000
autogk.MouseButton1Down:connect(function()
local distance = 20 -- The higher it is, the more distance it covers.
local tool = game.Players.LocalPlayer.Backpack.GK
local equipped = false
local enabled = false


local StarterGui = game:GetService("StarterGui")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "l" then 
if enabled == false then
enabled = true
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The AC has been activated!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
else
enabled = false
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The AC has been unactivated!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )

end
end
end)





tool.Equipped:Connect(function()
if enabled == true then
equipped = true
else
equipped = false
end
end)

tool.Unequipped:Connect(function()

equipped = false

end)


local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "c" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then
local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}
workspace.FE.GK.LowDiveLeft1:FireServer(unpack(args))

math.random(1,2)
if 1 then
workspace.FE.Sound.Miss:FireServer()
else
wait(2)
workspace.FE.Sound.Applause:FireServer()
end
end
end
end
end
end
end)




local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "z" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.LowDiveLeft1:FireServer(unpack(args))

math.random(1,2)
if 1 then
workspace.FE.Sound.Miss:FireServer()
else
wait(2)
workspace.FE.Sound.Applause:FireServer()
end
end
end
end
end
end
end)



local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "e" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.DiveLeft1:FireServer(unpack(args))
math.random(1,2)
if 1 then
workspace.FE.Sound.Miss:FireServer()
else
wait(2)
workspace.FE.Sound.Applause:FireServer()
end
end
end
end
end
end
end)




local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "q" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.DiveLeft1:FireServer(unpack(args))
math.random(1,2)
if 1 then
workspace.FE.Sound.Miss:FireServer()
else
wait(2)
workspace.FE.Sound.Applause:FireServer()
end
end
end
end
end
end
end)



local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "t" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.Punch:FireServer(unpack(args))
workspace.FE.Sound.Miss:FireServer()
end
end
end
end
end
end)

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "g" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.Punch:FireServer(unpack(args))
workspace.FE.Sound.Miss:FireServer()
end
end
end
end
end
end)



local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "x" then 
if equipped == true then
for i,balls in pairs(game.Workspace:GetDescendants()) do
if balls.Name == "PSoccerBall" or balls.Name == "TPS" then
if (balls.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= distance then

local args = {
[1] = balls,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.GK.Save3:FireServer(unpack(args))
workspace.FE.Sound.Miss:FireServer()
end
end
end
end
end
end)



local StarterGui = game:GetService("StarterGui")


StarterGui:SetCore("SendNotification", {
Title = "Successfully loaded!";
Text = "The AC has been loaded successfully!"
})
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The AC has been loaded in!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )


local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "p" then 
if enabled == true then
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The AC is activated!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
else
if enabled == false then
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The AC isn't activated!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
end
end
end
end)

end)

infstam.Name = "infstam"
infstam.Parent = Main
infstam.BackgroundColor3 = Color3.fromRGB(129, 125, 255)
infstam.Position = UDim2.new(0.539492428, 0, 0.537403226, 0)
infstam.Size = UDim2.new(0, 219, 0, 46)
infstam.Font = Enum.Font.SciFi
infstam.Text = "Infinite Stamina"
infstam.TextColor3 = Color3.fromRGB(0, 0, 0)
infstam.TextSize = 14.000
infstam.MouseButton1Down:connect(function()
if(DisableNebulaRemoteAbuseAPI)then DisableNebulaRemoteAbuseAPI() end
local mt = getrawmetatable(game)
setreadonly(mt, false)
local nc = mt.__namecall
local intercepted={}
local disabled = {}
local returns={}

local namecallMethod = getnamecallmethod or get_namecall_method

local methods={
RemoteEvent='FireServer';
RemoteFunction='InvokeServer';
BindableEvent='Fire';
BindableFunction='Invoke';
}

getgenv().InterceptRemoteArgs=function(eventorfunc,args)
intercepted[eventorfunc]=args
end

getgenv().SpoofReturn=function(func,newReturn)
returns[func]=newReturn
end

getgenv().DisableRemote=function(eventorfunc)
disabled[eventorfunc]=true;
end

getgenv().EnableRemote=function(eventorfunc)
disabled[eventorfunc]=false
end

getgenv().DisableNebulaRemoteAbuseAPI=function()
disabled={}
returns={}
intercepted={}
setreadonly(mt,false)
mt.__namecall=nc
setreadonly(mt,true)
end

mt.__namecall=newcclosure(function(self,...)
local Args = {...}
local event = namecallMethod()
if(methods[self.ClassName]==event)then
if(disabled[self])then
return;
elseif(intercepted[self])then
local intercept = intercepted[self]
if(typeof(intercept)=='function')then
Args={intercept(unpack(Args))}
elseif(typeof(intercept)=='table')then
Args=intercept
end
end
end
local returned={nc(self,unpack(Args))}
if(returns[self] and returned)then
returned={returns[self](unpack(returned))}
end
return unpack(returned)
end)


local mt = getrawmetatable(game)

setreadonly(mt, false)
local old = mt.__index

mt.__index = function(o, k)
if tostring(o) == "Humanoid" and tostring(k) == "WalkSpeed" then
return 16
end
return old(o, k)
end

InterceptRemoteArgs(game:GetService("ReplicatedStorage").FE.Sprint,function()
return "Ended"
end)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "r" then 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.Button1Down:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
end)



game:GetService("Players").LocalPlayer.PlayerGui.Start.Points.InstantStamina.Text.Text = "discord.gg/QwyacVeq3N"
end)

reach.Name = "reach"
reach.Parent = Main
reach.BackgroundColor3 = Color3.fromRGB(129, 125, 255)
reach.Position = UDim2.new(-0.000604285975, 0, 0.818445265, 0)
reach.Size = UDim2.new(0, 228, 0, 44)
reach.Font = Enum.Font.SciFi
reach.Text = "Reach"
reach.TextColor3 = Color3.fromRGB(0, 0, 0)
reach.TextSize = 14.000
reach.MouseButton1Down:connect(function()
local distance = 10 -- The higher it is, the more distance it covers.



local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dribble")
local toolP = game.Players.LocalPlayer.Backpack:FindFirstChild("Pass")
local toolL = game.Players.LocalPlayer.Backpack:FindFirstChild("Long")
local toolT = game.Players.LocalPlayer.Backpack:FindFirstChild("Tackle")

local equipped = false
local equippedP = false
local equippedL = false
local equippedT = false


local arguments = {
[1] = workspace.TPSSystem.TPS
}


tool.Equipped:Connect(function()
equipped = true
end)

tool.Unequipped:Connect(function()
equipped = false
end)


toolP.Equipped:Connect(function()
equippedP = true
end)

toolP.Unequipped:Connect(function()
equippedP = false
end)

toolL.Equipped:Connect(function()
equippedL = true
end)

toolL.Unequipped:Connect(function()
equippedL = false
end)

toolT.Equipped:Connect(function()
equippedT = true
end)

toolT.Unequipped:Connect(function()
equippedT = false
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.Button1Down:Connect(function()
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}
workspace.FE.Dribble.Dribble:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}
workspace.FE.Dribble.Dribble:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "e" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FastDribble:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Dribble.FastDribble:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "f" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS
}
workspace.FE.Dribble.Stop:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS
}

workspace.FE.Dribble.Stop:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "q" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.Precision:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Dribble.Precision:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "x" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character.Head
}

workspace.FE.Dribble.ChestControl:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character.Head
}

workspace.FE.Dribble.ChestControl:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)





local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "y" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.TrickUp:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Dribble.TrickUp:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "c" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FakeTouch:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Dribble.FakeTouch:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "g" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FakeLR:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FakeLR:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "h" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FakeLR:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.FakeLR:FireServer(unpack(args))

workspace.FE.Dribble.FakeLR:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "n" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.Rainbow:FireServer(unpack(args))


workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.Rainbow:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "b" then 
if equipped == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then

local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.LRFake:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Dribble.LRFake:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "c" then 
if equippedL == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Long.LongLR:FireServer(unpack(args))




workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Long.LongLR:FireServer(unpack(args))


workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "z" then 
if equippedL == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Long.LongLR:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Long.LongLR:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)




local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.Button1Down:Connect(function()
if equippedT == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.Tackle:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.Tackle:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "c" then 
if equippedT == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.Side:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.Side:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "z" then 
if equippedT == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left eg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Tackle.Side:FireServer(unpack(args))


workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Tackle.Side:FireServer(unpack(args))
workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "e" then 
if equippedT == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.StandingTackle:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Tackle.StandingTackle:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "e" then 
if equippedT == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Tackle.StandingTackle:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Left Leg"]
}

workspace.FE.Tackle.StandingTackle:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "e" then 
if equippedP == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.PassBack:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.PassBack:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "x" then 
if equippedP == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.DragBack:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.DragBack:FireServer(unpack(args))

workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:connect(function(activate)
activate:lower()
if activate == "z" then 
if equippedP == true then
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.PassLR:FireServer(unpack(args))



workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
else
if (game.Workspace.TPSSystem.TPS.Position - game.Players.LocalPlayer.Character["Left Leg"].Position).magnitude <= distance then
local args = {
[1] = workspace.TPSSystem.TPS,
[2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
}

workspace.FE.Pass.PassLR:FireServer(unpack(args))


workspace.FE.Scorer.RemoteEvent:FireServer(unpack(arguments))
end
end
end
end
end)







local StarterGui = game:GetService("StarterGui")


StarterGui:SetCore("SendNotification", {
Title = "Successfully loaded!";
Text = "The react script has been loaded successfully!"
})
StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "The react script has successfully been loaded in!", Color = Color3.fromRGB(11, 9, 36), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )



end)

guitext.Name = "guitext"
guitext.Parent = Main
guitext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
guitext.BackgroundTransparency = 1.000
guitext.Position = UDim2.new(-0.00581651926, 0, -0.0040293932, 0)
guitext.Size = UDim2.new(0, 483, 0, 54)
guitext.Font = Enum.Font.Kalam
guitext.Text = "TPS Ultimate Soccer GUI"
guitext.TextColor3 = Color3.fromRGB(255, 255, 255)
guitext.TextScaled = true
guitext.TextSize = 52.000
guitext.TextStrokeTransparency = 0.310
guitext.TextWrapped = true

credit.Name = "credit"
credit.Parent = Main
credit.Active = true
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BackgroundTransparency = 1.000
credit.Position = UDim2.new(0.470625252, 0, 0.756716847, 0)
credit.Size = UDim2.new(0, 263, 0, 59)
credit.Font = Enum.Font.SourceSans
credit.Text = "GUI: Abel and Megariz"
credit.TextColor3 = Color3.fromRGB(0, 0, 0)
credit.TextSize = 27.000
credit.TextStrokeTransparency = 0.790
credit.TextWrapped = true