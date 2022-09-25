function Tween(time,pos)
    pcall(function()
        workspace.Gravity = 0
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
        workspace.Gravity = 196.19999694824
    end)
end
function Repeat()
    Tween(1,game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame)
    Tween(18,game:GetService("Workspace").BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame)
    Tween(2,game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.TreasureChest.Top.Union.CFrame + Vector3.new(0,10,0)) pcall(function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").GoldenChest.Collider,0) end) wait(8)
    Repeat()
end
Repeat()