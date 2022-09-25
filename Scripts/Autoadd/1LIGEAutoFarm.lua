game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui["Shop_Frame"]:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.60556, 10.1042509, -35.823616, 0.649463534, 3.54983172e-08, 0.760392725, -3.47828326e-08, 1, -1.69756156e-08, -0.760392725, -1.542357e-08, 0.649463534)
while true do
    
local args = {
    [1] = {
        [1] = "Add_HP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "LevelUp_HP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "Eat_HP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))



local args = {
    [1] = {
        [1] = "Add_DMG_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "LevelUp_DMG_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "Eat_DMG_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))



local args = {
    [1] = {
        [1] = "Add_MS_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "LevelUp_MS_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "Eat_MS_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))



local args = {
    [1] = {
        [1] = "Add_JP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "LevelUp_JP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "Eat_JP_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = {
        [1] = "Rebirth_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))


local args = {
    [1] = {
        [1] = "SuperMultiUpgrade_Request",
        [2] = "HP"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

wait(0.1)

end