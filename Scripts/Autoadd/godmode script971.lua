
local a=game.Players.LocalPlayer local b=a.Character or a.CharacterAdded:Wait() local c=b:WaitForChild("Humanoid") local d=b:WaitForChild("Torso") local e=nil local f=nil local g=function() local h=game:GetService("StarterGui") h:SetCore("SendNotification",{Title="Godmode",Text="Godmode enabled, Reset = Stop godmode, Get damage = Back to Full health (godmode) ",Duration=5}) end local i=function() if f then e=f.CFrame local j=tick() while tick()-j<1 do f.CFrame=d.CFrame wait(0.1) end f.CFrame=e end end local k=function() for l,m in pairs(workspace:GetDescendants()) do if m:IsA("Part") and m.Name=="Head" and m.Parent and m.Parent.Name=="Blizzard Armor" then m.CanCollide=false m.Transparency=1 f=m g() end end end local n=function() local o=c.Health while true do wait(0.1) if c.Health<o then i() end o=c.Health end end k() n()