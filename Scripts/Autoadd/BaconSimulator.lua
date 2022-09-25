 _G.farm = true

while wait() do
  if _G.farm == true then
--Variable
local player = game.Players.LocalPlayer

--Globals // basically sets how fast you go.
getgenv().Speed = 200
getgenv().Distance = 0


local Noclipping = nil
Clip = false
wait(0.1)
local function NoclipLoop()
if Clip == false and player.Character ~= nil then
for _, child in pairs(player.Character:GetDescendants()) do
if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
child.CanCollide = false
end
end
end
end


function tp(target)

  Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
  player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
  game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(player:DistanceFromCharacter(target.Position)/getgenv().Speed, Enum.EasingStyle.Linear), {CFrame = target.CFrame + Vector3.new(0, Distance, 0)}):Play()
  wait(player:DistanceFromCharacter(target.Position)/getgenv().Speed)
end


local path = game:GetService("Workspace").GemsHolder.Home.Part1.Gem

tp(path)

player.Character.HumanoidRootPart.Anchored = false
wait(0,1)

tp(path)

player.Character.HumanoidRootPart.Anchored = false
wait(0,1)

tp(path)


player.Character.HumanoidRootPart.Anchored = false
wait(0,1)






wait()

Noclipping:Disconnect()
Clip = true
player.Character.HumanoidRootPart.Anchored = false
  end
end