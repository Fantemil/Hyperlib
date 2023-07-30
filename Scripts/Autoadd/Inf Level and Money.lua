getgenv().farm = true

while farm do task.wait()
game:GetService("ReplicatedStorage").Events.Dialogue:FireServer({
        ["Type"] = "End",
        ["Npc"] = workspace.Npcs.Mita,
        ["Path"] = "Accept"
    })
game:GetService("ReplicatedStorage").Events.Dialogue:FireServer({
        ["Type"] = "End",
        ["Npc"] = workspace.Npcs:FindFirstChild("Saru Kenshi"),
        ["Path"] = "SetSpawn"
    })
end