local blacklistedNames = {"Sniper"}

function onKeyPress(input, gameProcessed)
  -- If the "F" key is pressed and the input was not processed by the game...
  if input.KeyCode == Enum.KeyCode.H and not gameProcessed then
        local args = {
            [1] = "SellTower",
        }

        for _, v in pairs(workspace.Units:GetChildren()) do
            -- Check if the object's name is in the list of blacklisted names
            if not table.find(blacklistedNames, v.Name) then
                args[2] = v
                game:GetService("ReplicatedStorage").Others.Placement:FireServer(unpack(args))
            end
        end
    end
  end

-- Connect the function to the InputBegan event on the UserInputService
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)