-- PLAYER INFO GRABBER
-- IF IT SAYS IN CONSOLE HUMANOIDROOTPART DOENST EXIST THEN ITS BECAUSE THE USER IS USING AN ANIMATION SCRIPT

local mode = "dev" -- basic, advanced, dev

-- DO NOT EDIT ANYTHING BELOW
print("Player info") -- funni text
print("") -- white space
wait(1)
print("Please wait...")
wait(1)
print("----------------------------------------")

if mode == "basic" then    
    for i,v in pairs(game.Players:GetChildren()) do -- getting children inside the Players folder
        print("DisplayName: ", v.DisplayName) -- Grabbing DisplayName
        print("Username: ", v.Name) -- Grabbing Username
        print("User ID: ", v.UserId)
        print("----------------------------------------")
        wait(1)
    end
elseif mode == "advanced" then
    for i,v in pairs(game.Players:GetChildren()) do -- getting children inside the Players folder
        print("DisplayName: ", v.DisplayName) -- Grabbing DisplayName
        print("Username: ", v.Name) -- Grabbing Username
                print("Health: ", v.Character.Humanoid.Health) -- Grabbing Health
                print("UserID: ", v.UserId)
                print("Account Age: ", v.AccountAge)
                print("----------------------------------------")
                wait(1)
    end
elseif mode == "dev" then
    for i,v in pairs(game.Players:GetChildren()) do -- getting children inside the Players folder
        print("DisplayName: ", v.DisplayName) -- Grabbing DisplayName
        print("Username: ", v.Name) -- Grabbing Username
                print("Health: ", v.Character.Humanoid.Health) -- Grabbing Health
                print("JumpPower: ", v.Character.Humanoid.JumpPower) -- Grabbing JumpPower
                print("WalkSpeed: ", v.Character.Humanoid.WalkSpeed) -- Grabbing WalkSpeed
                print("HipHeight: ", v.Character.Humanoid.HipHeight) -- Grabbing HipHeight
                print("MaxHealth: ", v.Character.Humanoid.MaxHealth) -- Grabbing MaxHealth
                print("CFrame: ", v.Character.HumanoidRootPart.CFrame) -- Grabbing CFrame
                print("Sitted: ", v.Character.Humanoid.Sit) -- Checking if humanoid sit value is true
                print("User ID: ", v.UserId)
                print("Account Age: ", v.AccountAge)
                print("----------------------------------------")
                wait(1)
    end
end