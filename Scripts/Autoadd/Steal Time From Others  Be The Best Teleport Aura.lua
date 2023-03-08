--//Lazy code and messy
local run = function(a,Called)
 local Error,Value = pcall(function()
  coroutine.wrap(a)(Called)
 end)
 coroutine.wrap(function()
  if Value and Error == false then
   warn("Error at: "..tostring(Value))
  end
 end)()
end
local Menus = {}
local UserInputService = game:GetService("UserInputService")


local States = {
 AutoAim = false,
}

--//https://create.roblox.com/docs/reference/engine/classes/UserInputServiceð
local UserInputService = game:GetService("UserInputService")

local function onInputBegan(input, _gameProcessed)
 if input.KeyCode == Enum.KeyCode.RightShift then
  States.AutoAim = not States.AutoAim
 end
end

UserInputService.InputBegan:Connect(onInputBegan)


function GetChars()
 local chars = {}
 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
  if v and v ~= game.Players.LocalPlayer then
   chars[#chars+1] = v.Character
  end
 end
 return chars
end
function findNearestPlayer(Position)
 local List = GetChars()
 local Torso = nil
 local Distance = 15
 local Temp = nil
 local Human = nil
 local Temp2 = nil
 for x = 1, #List do
  Temp2 = List[x]
  if (Temp2.className == "Model") and (Temp2 ~= script.Parent) then
   Temp = Temp2:findFirstChild("HumanoidRootPart")
   Human = Temp2:findFirstChild("Humanoid")
   if (Temp ~= nil) and (Human ~= nil) and (Human.Health > 0) then
    if (Temp.Position - Position).magnitude < Distance then
     Torso = Temp
     Distance = (Temp.Position - Position).magnitude
    end
   end
  end
 end
 return Torso
end



local Player = game.Players.LocalPlayer
local Character = Player.Character


local Mouse = Player:GetMouse()
local RunService = game:GetService("RunService")
local ta = {0,0}
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local RootPos, MousePos = Root.Position, findNearestPlayer(Root.Position)
RunService.RenderStepped:Connect(function()
 if States.AutoAim then
  RootPos, MousePos = Root.Position, findNearestPlayer(Root.Position)
  if MousePos then
   Root.CFrame = CFrame.new(RootPos, Vector3.new(MousePos.Position.X, RootPos.Y, MousePos.Position.Z))
  end
 end
end)
local stop = false
local cd1 = false
local startbypass = false
local changecd = false
task.spawn(function()
 while true do
  task.wait()
  if States.AutoAim then
   if MousePos and RootPos then
    task.spawn(function()
     if not changecd then
      changecd = true
      if ta[1] == -3 then
       ta[1] = 3
      else
       ta[1] = -3
      end
      if ta[2] == -1.7 then
       ta[2] = 1.7
      else
       ta[2] = -1.7
      end
      wait()
      changecd = false
     end
    end)
    if MousePos and States.AutoAim then
     Root.CFrame = MousePos.CFrame+Vector3.new(ta[1],0,ta[2])
    else
     ta[1]=0
     ta[2]=0
    end
   end
  end
 end
end)