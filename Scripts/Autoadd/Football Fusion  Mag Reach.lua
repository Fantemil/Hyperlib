local rs=game:GetService("RunService")
local plr=game.Players.LocalPlayer
_G.reach=115 -- studs
for _,v in pairs(workspace:GetDescendants()) do if v:IsA("Seat") then v.Disabled=true end end
while true do
   if plr.Character and plr.Character:FindFirstChild("CatchRight") and plr.Character:FindFirstChild("CatchLeft") then
       local cl=plr.Character['CatchLeft']
       local cr=plr.Character['CatchRight']
       for _,v in pairs(workspace:GetChildren()) do
           if v.Name=="Football" then
               firetouchinterest(cl,v,0)
               firetouchinterest(cr,v,0)
               task.wait()
               firetouchinterest(cl,v,1)
               firetouchinterest(cr,v,1)
           end
       end
       if cl.Size~=Vector3.new(_G.reach,_G.reach,_G.reach) then
          cl.Size=Vector3.new(_G.reach,_G.reach,_G.reach)
       end
       if cr.Size~=Vector3.new(_G.reach,_G.reach,_G.reach) then
           cr.Size=Vector3.new(_G.reach,_G.reach,_G.reach)
       end
   end
   rs.Stepped:Wait()
end