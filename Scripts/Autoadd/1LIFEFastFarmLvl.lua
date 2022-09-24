for a = 1, 100 do
    while task.wait() do
        local b = {[1] = {[1] = "Add_HP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Add_DMG_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Add_MS_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Add_JP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "LevelUp_HP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "LevelUp_DMG_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "LevelUp_MS_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "LevelUp_JP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Eat_HP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Eat_DMG_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Eat_MS_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Eat_JP_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
        task.wait()
        local b = {[1] = {[1] = "Rebirth_Request"}}
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(b))
    end
end