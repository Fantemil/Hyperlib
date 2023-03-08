local num = 10
_G.Function = nil

local function check(e)
   local script = game:GetService("Players").LocalPlayer.PlayerGui.MainClient.LocalScript
   if getfenv(e) and getfenv(e).script and getfenv(e).script.Name and getfenv(e).script == script then
       return true
   else
       return false
   end
end

for _,v in pairs(getgc()) do
   if type(v) == 'function' and check(v) then
       if(debug.getinfo(v).numparams) == 4 then
           _G.Function = v
       end
   end
end

while wait(0.2) do
   if _G.Function then
       _G.Function(Vector3.new(num,num,num),CFrame.new(0,0,-4),6,nil)
   end
end