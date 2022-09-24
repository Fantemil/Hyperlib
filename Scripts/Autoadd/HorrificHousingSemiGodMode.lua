_G.GM = true -- Change true to false to disable, made by shitass / peke#7374
while _G.GM do task.wait()
local retardargs = {
["dir"] = Vector3.new(0,0,0), -- The pos doesnt matter
["origin"] = Vector3.new(0,0,0), -- The pos doesnt matter
["shooter"] = game:GetService("Players").LocalPlayer -- Change to any player if LP doesnt work
}
game:GetService'ReplicatedStorage'["damageMe"]:FireServer(-math.huge, retardargs)
end