print('start')
while wait(0) do
    for _,plr in pairs(game.Workspace.Plots:GetChildren()) do
        for _,minion in pairs(plr.Minions:GetChildren()) do
            for _, block in pairs(minion:GetChildren()) do
                if block.Name ~= "Body" and block.Name ~= "AnimationController" then
                    local bambam = Instance.new("BodyAngularVelocity")
                    bambam.Name = "bambam"
                    bambam.Parent = block
                    bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
                    bambam.AngularVelocity = Vector3.new(99999,99999,99999)
                    bambam.P = math.huge
                end
            end
        end
        for _,cube in pairs(plr.Blocks:GetChildren()) do
	    local bambam = Instance.new("BodyAngularVelocity")
	    bambam.Name = "bambam"
	    bambam.Parent = cube
        bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	    bambam.AngularVelocity = Vector3.new(99999,99999,99999)
	    bambam.P = math.huge
        wait(0)
        end
    end
    end