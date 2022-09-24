--MUST HAVE PISTOL IN INVENTORY
local keybind = Enum.KeyCode.T --Keybind here
local plr = game.Players.LocalPlayer
local target = game.Players.LocalPlayer -- who u want to be godmode
--Press the keybind to godmode, press everytime u die

function godmode()
    local weapon

    if tostring(plr.Team) == "CRIMINAL" then
        weapon = "Pistolcrim"
    elseif tostring(plr.Team) == "S.W.A.T." then
        weapon = "Pistolswat"
    end
    
    local remote
    if plr.Backpack:FindFirstChild(weapon) then
        remote = plr.Backpack[weapon]["GunScript_Server"].InflictTarget
    elseif plr.Character:FindFirstChild(weapon) then
        remote = plr.Character[weapon]["GunScript_Server"].InflictTarget
    end
    
    remote:FireServer(
        game:GetService("Workspace")[tostring(target)].Humanoid,
        game:GetService("Workspace")[tostring(target)].UpperTorso,
        -math.huge, --Health here that makes it inf
        Vector3.new(0, 0, 0), 
        0, 
        false
    )
end

--gig
game:GetService("UserInputService").InputBegan:Connect(function(InputObject, GameProcessedEvent)
    if GameProcessedEvent then return end
    if InputObject.KeyCode == keybind then
        godmode()
        --auto godmode if u take damage
        plr.Character.Humanoid.HealthChanged:Connect(function(health)
            if health <= 100 then
                godmode()
            end
        end)
    end
end)