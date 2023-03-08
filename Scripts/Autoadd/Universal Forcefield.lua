--[[ The ForceField will not show in lots of games
or will sometimes disappear or reappear
but will show in quite a few games as well.
You will still not be able to die if there is
no ForceField on your character.
If it stops working, execute the script again.
Note: Some tools will be buggy in certain
games when the ForceField is running
]]--

if Enum.KeyCode.X do
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == " " then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyUp:connect(function(key)
if key == " " then
jumping = false
end
end)

FF = true

while wait() do
if FF then
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait(4.85)
workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
workspace.CurrentCamera.CameraType = Enum.CameraType.Track
end
end
if Enum.KeyCode.Z do
 FF = false
wait()
xos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(4.85)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
workspace.CurrentCamera.CameraType = Enum.CameraType.Track
wait(.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = xos
end