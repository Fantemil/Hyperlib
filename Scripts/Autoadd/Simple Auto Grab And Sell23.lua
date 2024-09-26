print("Made by thanhtam8765")
getgenv().AutoGrab = true
getgenv().AutoSell = true


while task.wait() do
    local character = game.Players.LocalPlayer.Character
    if character then 
        local root = character:FindFirstChild("HumanoidRootPart")
        if root then
            if AutoGrab then
                for i,part in next, Workspace.Scripted.Regions.Beginner.Fruits:GetDescendants() do
                    if part.ClassName == "TouchTransmitter" then 
                        firetouchinterest(root, part.Parent, 1)
                        firetouchinterest(root, part.Parent, 0)
                    end
                end
            end
            if not AutoSell then
                game.Workspace.Scripted.SellStuff.Buttons.Regular.All.Hitbox.CFrame = CFrame.new(18.4713287, 4.70433521, -4.2326231, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627)
            else 
                game.Workspace.Scripted.SellStuff.Buttons.Regular.All.Hitbox.CFrame = root.CFrame
                task.wait(.1)
                game.Workspace.Scripted.SellStuff.Buttons.Regular.All.Hitbox.CFrame = CFrame.new(root.CFrame.X, root.CFrame.Y + 5, root.CFrame.Z)
            end
        end
    end
end
