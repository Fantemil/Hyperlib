local key = Enum.KeyCode.X -- key to toggle invisibility

--// don't edit script below
local invis_on = false

local function makeTransparent(character)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.LocalTransparencyModifier = invis_on and 0.5 or 0
        end
    end
end

function onKeyPress(inputObject, chat)
    if chat then return end
    if inputObject.KeyCode == key then
        invis_on = not invis_on
        if invis_on then
            local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.95, 84, 3537.55))
            wait(.15)
            local Seat = Instance.new('Seat', game.Workspace)
            Seat.Anchored = false
            Seat.CanCollide = false
            Seat.Name = 'invischair'
            Seat.Transparency = 1
            Seat.Position = Vector3.new(-25.95, 84, 3537.55)
            local Weld = Instance.new("Weld", Seat)
            Weld.Part0 = Seat
            Weld.Part1 = game.Players.LocalPlayer.Character:FindFirstChild("Torso") or game.Players.LocalPlayer.Character.UpperTorso
            wait()
            Seat.CFrame = savedpos
            game.StarterGui:SetCore("SendNotification", {
                Title = "Invis On",
                Duration = 1,
                Text = ""
            })
        else
            workspace:FindFirstChild('invischair'):Remove()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Invis Off",
                Duration = 1,
                Text = ""
            })
        end
    end
    makeTransparent(game.Players.LocalPlayer.Character)
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    makeTransparent(character)
end)