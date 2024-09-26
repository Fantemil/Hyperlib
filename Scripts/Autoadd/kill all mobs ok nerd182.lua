
local mobsFolder = workspace:WaitForChild("Mobs")


local damageEvent = game:GetService("ReplicatedStorage"):WaitForChild("GameRemotes"):WaitForChild("DamageEvent")

while true do

    local mobs = mobsFolder:GetChildren()

    for i = 1, #mobs, 2 do
        local mob = mobs[i]

        if mob:FindFirstChild("Torso") and mob:FindFirstChild("Enemy") then

            local args = {
                [1] = mob:WaitForChild("Torso"),
                [2] = mob:WaitForChild("Enemy")
            }
            

            damageEvent:FireServer(unpack(args))
        end
    end


    wait(0.1) 
end
