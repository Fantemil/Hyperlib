_G.Auto = true

while _G.Auto == true do
local args = {[1] = 3}
game:GetService("ReplicatedStorage").Events.OnLandFromJump:FireServer(unpack(args))
wait()
end