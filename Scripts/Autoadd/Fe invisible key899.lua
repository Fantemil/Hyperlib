local key = Enum.KeyCode.X -- key to toggle invisibility

--// dont edit script below
local invis_on = false
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
                Title = "Invis On";
                Duration = 1;
                Text = "";
            })
        else
            workspace:FindFirstChild('invischair'):Remove()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Invis Off";
                Duration = 1;
                Text = "";
            })
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)