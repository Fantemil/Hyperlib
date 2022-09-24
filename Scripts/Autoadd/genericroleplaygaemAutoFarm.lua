local ts = game:GetService("TweenService")
local part = game.Workspace.Karts[game.Players.LocalPlayer.Name].VehicleSeat
local tp = {CFrame = New_CFrame}

function tp(CFrametp)
   ts:Create(part, TweenInfo.new((CFrametp.Position - part.Position).magnitude/32, Enum.EasingStyle.Quad), {CFrame = CFrametp.CFrame + Vector3.new(4.20,0,-1)}):Play()
end

_G.test = true
while _G.test do
   wait()
   local closer = 99999
   for i,v in pairs(game.Workspace.Rice:GetChildren()) do
       if v and v:FindFirstChild("PhysicalRice") and v:FindFirstChild("Health") and v.PhysicalRice:FindFirstChild("Middle") then
           local range = (v.PhysicalRice.Middle.Position - game.Workspace.Karts[game.Players.LocalPlayer.Name].VehicleSeat.Position).magnitude
           if v.Health.Value > 0 then
               if range < closer then
               closer = range
               tp(v.PhysicalRice.Middle)
               end
           end
       end
   end
end