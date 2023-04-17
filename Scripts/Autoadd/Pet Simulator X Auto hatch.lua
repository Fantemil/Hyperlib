_G.autohatch = false --true
while _G.autohatch == true do
 local args = {
  [1] = {
   [1] = "Cracked Egg", --An egg that will open
   [2] = false
  }
 }
 

workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(unpack(args))
wait()
end

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
 Title = "Empire Scripts";
 Text = "Load auto-hatch // By ianphil#4488 ";
 Duration = 5;
})