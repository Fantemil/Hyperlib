local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

local quest = function()
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer( "Dialogue", "GiveMission", workspace["Pizza Chef"])
end

while true do
    quest()
    wait(1)
    for _,v in pairs(workspace.PizzaParts:GetDescendants()) do
        if v.Name == "Head" then
            for i = 1,4 do
                plr.CFrame = v.CFrame + Vector3.new(0, 5, 0)
                wait(.1)
            end
        end
    end
end
