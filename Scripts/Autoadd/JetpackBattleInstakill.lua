while true do
    wait(0.3)

local ohInstance1 = game:GetService("Players").NAMEOFPLAYERHERE
local ohNumber2 = 1
local ohVector33 = Vector3.new(0.5959084630012512, 0.4087373912334442, -0.691250205039978)
local ohNumber4 = 18.27781105041504

game:GetService("ReplicatedStorage").Projectile.Hit:FireServer(ohInstance1, ohNumber2, ohVector33, ohNumber4)
end