_G.autotap = true;
_G.autorebirth =true;
_G.Buyegg = true;
local remotepath = game:GetService("ReplicatedStorage").Remotes;

spawn(function()
while _G.autotap == true do
   local args = {
       [1] = false,
       [2] = "Clicker!"
   }
   remotepath.ClickRemote:FireServer(unpack(args))
       Wait()
end
end)

spawn(function()
   while _G.autorebirth == true do
local args = {
   [1] = 1 ----- "change rebirth here"
}
remotepath.RebirthRemote:FireServer(unpack(args))
  wait()
end
end)

spawn(function()
   while wait() do
       if not _G.Buyegg then
           break
       end;
local args = {
   [1] = "Dragon Star", ---- "you can change egg here"
   [2] = false,
   [3] = false
}
remotepath.OpenEgg:InvokeServer(unpack(args))
end
end)