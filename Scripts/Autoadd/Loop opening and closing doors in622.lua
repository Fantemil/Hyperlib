getgenv().openclose = true --change to false to stop the script

local player = game:GetService("Players").LocalPlayer
local doors = game:GetService("Workspace").Doors

function open(door)

    --find the cards that player has equiped
    local part
    if player.Character:FindFirstChild("Cracked Keycard") then part = player.Character:FindFirstChild("Cracked Keycard")
    elseif player.Character:FindFirstChild("Academy Level 1 Clearance") then part = player.Character:FindFirstChild("Academy Level 1 Clearance")
    elseif player.Character:FindFirstChild("Level 1 Clearance") then part = player.Character:FindFirstChild("Level 1 Clearance")
    elseif player.Character:FindFirstChild("Level 2 Clearance") then part = player.Character:FindFirstChild("Level 2 Clearance")
    --add more cards here if you find any
    else return --no cards found
    end
    firetouchinterest(part.ID, door.Hitbox, 0)
    wait()
    firetouchinterest(part.ID, door.Hitbox, 1)
        
end

function close(door)
    fireclickdetector(door.Hitbox.ClickDetector)
    wait()
end

while getgenv().openclose do
    for _, folder in pairs(doors:GetChildren()) do
        for i, v in pairs(folder:GetChildren()) do
            if v.Name == "DoorTall" or v.Name == "DoorWide" then
                if v:FindFirstChild("Hitbox") then
                    open(v)
                    wait()
                    close(v)
                end
            end
        end
    end
end