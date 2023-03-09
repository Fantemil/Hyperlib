local z2 = -50000
local z = nil
-- this part not made by me --------------------------------------------------------
local lp = game:GetService('Players').LocalPlayer
local __namecall
__namecall = hookmetamethod(game,'__namecall', function(Self,...)
  if not checkcaller() and Self == lp and getnamecallmethod() == 'Kick' then
      return;
  end
  return __namecall(Self,...)
end)

lp.Character.Humanoid.WalkSpeed = 10000 -- change walkspeed to whatever you want, just know that the game is gonna have a hard time counting studs above this
--------------------------------------------------------------------------
while true and task.wait() do
   z = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
   
   if (z > z2) then
       keypress(0x57)
   else
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.8279, 4.06363, 30.7026)
   end
end