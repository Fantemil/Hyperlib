local Run = game:GetService("RunService")
local Players = game:GetService("Players")

local LPlr = Players.LocalPlayer
local Mouse,Cam = LPlr:GetMouse(),workspace.CurrentCamera

local CPlr = function()
   local Plr;
   local Shearch = math.huge

   for I,V in pairs(Players:GetChildren()) do
       if V ~= LPlr and V.Character and V.Character:FindFirstChild("HumanoidRootPart") then
           local Vec,On = Cam:WorldToViewportPoint(V.Character.HumanoidRootPart.Position)
           local Difference = (Vector2.new(Mouse.X,Mouse.Y) - Vector2.new(Vec.X,Vec.Y)).Magnitude

           if On and Difference < Shearch then
               Shearch = Difference
               Plr = V
           end
       end
   end
   return Plr
end

local Update = function()
local GunEnv = getsenv(LPlr.PlayerGui.gunls)
repeat wait() until GunEnv.randomunitvector
local RandVec = GunEnv.randomunitvector

GunEnv.randomunitvector = function(...)
local Args = {...}
local Plr = CPlr()

if Plr then
return (Plr.Character.Head.Position - Cam.CFrame.Position).Unit
end

return RandVec(unpack(Args))
end
end



if LPlr.PlayerGui:FindFirstChild("gunls") then
Update()
end

LPlr.PlayerGui.ChildAdded:Connect(function(Ins)
if Ins.Name == "gunls" then
wait(2)
Update()
end
end)