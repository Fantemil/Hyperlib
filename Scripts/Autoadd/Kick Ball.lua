local model = workspace.WorkspaceCom["001_SoccerBalls"]
local playerName = game.Players.LocalPlayer.Name
local partName = "Soccer" .. playerName
_G.Active = true

local uis = game:GetService("UserInputService")
_G.Velocity = 10
local debounce = false
local range = 4

function kick(hit)
    if not debounce and _G.Active then
        local players = game:GetService("Players") 
        local playerCharacter = game.Players.LocalPlayer.Character
        local distance = (playerCharacter.HumanoidRootPart.Position - hit.Position).Magnitude
        if distance < range then
            local mass = hit:GetMass()
            if mass then
                local direction = playerCharacter.HumanoidRootPart.CFrame.LookVector
                hit:ApplyImpulse(direction * _G.Velocity * mass)
                debounce = true
                wait(2.5)
                debounce = false
            else
                print("Error: Could not get mass of part")
            end
        end
    end
end

uis.InputBegan:Connect(function(input)
    if (uis:GetFocusedTextBox()) then
        return;
    end
    if input.KeyCode == Enum.KeyCode.E then
        local part = model:FindFirstChild(partName)
        if part then
            kick(part)
        else
            print("Part not found")
        end
    end    
end)