_G.autoOpen = false;

while _G.autoOpen == true do
local args = {
   [1] = "CastleCapsule",
   [2] = false
   
}

game:GetService("ReplicatedStorage").Assets.Network.OpenCapsule:InvokeServer(unpack(args))

wait()

end