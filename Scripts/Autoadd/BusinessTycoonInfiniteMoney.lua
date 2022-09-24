local Amount = 52000000
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
local arrow = game:GetService("Workspace").ArrowGuide

game:GetService("ReplicatedStorage").GlobalFunctions.ChangePlayerMoney:FireServer(Amount)

while true do
    wait(.1)
    plr.CFrame = arrow.CFrame
end

task.spawn(
    function()
        wait(30)
        game.Players.LocalPlayer:Kick("Rejoin.")
    end
)