getgenv().autoFarm = false;

local library = loadstring(game:HttpGet(('https://amongware.net/p/raw/ð¸/jidfwt17w4')))() --paste hosted by e-z.host

local w = library:CreateWindow("+1 Jump Every Second") -- Creates the window

local a = w:CreateFolder("AutoFarm")

a:Label("Made by AlperSocial",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
}) 

a:Toggle("Toggle",function(bool)
    getgenv().autoFarm = bool
    if bool then
        doFarm();
    end
end)



function doFarm()
    spawn(function()
        while autoFarm == true do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31492, 66143, 8193)
            wait()
            tp(31493, 66133, 8182)
            wait(1)
        end
    end)
end


function tp(x,y,z)
-- SETTINGS START
local valtomove = 10
local noclip = true
local anchored = true
-- SETTINGS END


moving = true
if x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
while x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
while z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z-valtomove))
end
end
if x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
while x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
while z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+valtomove))
end
end
if y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
while y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
if y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
while y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
end
end
moving = false
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,y,z))
if anchored == true then
game.Players.LocalPlayer.Character.Head.Anchored = false
end
end

spawn (function()
game:getService("RunService"):BindToRenderStep("",0,function()
if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
if moving == true then
if noclip == true then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
if anchored == true then
game.Players.LocalPlayer.Character.Head.Anchored = true
end
end
end)
end)