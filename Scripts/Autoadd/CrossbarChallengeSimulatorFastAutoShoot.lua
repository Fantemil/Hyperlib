_G.autoshoot = true -- Set this either to "true" or "false"

while _G.autoshoot == true do
local args = {
   [1] = "yeet",
   [2] = 1,
   [3] = "GetALifeKid"}

game:GetService("Players").LocalPlayer.Character.Act:FireServer(unpack(args))
wait(0.1)
end