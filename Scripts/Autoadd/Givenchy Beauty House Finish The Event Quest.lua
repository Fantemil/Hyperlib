local Root = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("BasePart")

--This function was stolen from IY :)
local function Touch(x)
    x = x.FindFirstAncestorWhichIsA(x, "Part")
    if x then
        if firetouchinterest then
            return task.spawn(function()
                firetouchinterest(x, Root, 1, wait() and firetouchinterest(x, Root, 0))
            end)
        end
    end
end

-- Maze UGC
mazeUGC = game:GetService("Workspace").World.Buildings.Subway.SecretRoom.UGC
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mazeUGC.CFrame
wait(1)
fireproximityprompt(mazeUGC.ProximityPrompt)

--finish Scavenger Hunt
for _, v in ipairs(game:GetService("Workspace").ScavengerHunt.Day1:GetDescendants()) do
    if v.IsA(v, "TouchTransmitter") then
        Touch(v)
    end
end


-- Vending Machine UGC
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197.50, -82.50, -544.73)
wait(1)
for i,v in pairs(game:GetService("Workspace").World.Buildings.Subway.VendingMachines:GetDescendants()) do
    if v:IsA("ProximityPrompt") then
        v.MaxActivationDistance = math.huge
        fireproximityprompt(v)
    end
end

UGCItemReward = game:GetService("Players").LocalPlayer.PlayerGui.UGCItemReward
UGCItemReward.Enabled = true
UGCItemReward.ModalWindow.TopBar.ModalHeading.Text = "Items Claimed!"
UGCItemReward.ModalWindow.Content.BodyLabel.Text = "Thanks for using my script\nHave a nice rest of your day <3"
UGCItemReward.ModalWindow.Content.BadgeIcon.Image = "rbxassetid://2691749281"