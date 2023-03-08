getgenv().skill = true
while getgenv().skill == true do
    task.wait()
    local args = {
        [1] = "35400269.9459051", -- // Change ID to your Weapons ID, run RemoteSpy use your Skill and copy paste [1] \\ --
        [2] = "player"
    }
    game:GetService("ReplicatedStorage").Events.SkillEvent:FireServer(unpack(args))
end