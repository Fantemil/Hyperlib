local model = game:GetObjects("rbxassetid://11947954739")[1]
model.Parent = workspace
model.Anchored = true
model.CFrame = workspace.CurrentRooms[0].Parts.FrontDesk.Paper.CFrame * CFrame.new(0, .9, 0)
model.Prompt.Triggered:Connect(function()
      firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "you have been SUSED by the AMONGUS")
      model["STOP POSTING ABOUT AMONG US (FULL, CLEAN)"]:Play()
end)