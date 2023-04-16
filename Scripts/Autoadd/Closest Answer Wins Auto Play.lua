local function yes()
local args = {
    [1] = game:GetService("ReplicatedStorage").HintAnswer.Value,
    [2] = game.Players.LocalPlayer.plrnum.Value
}

game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
end

yes()

game:GetService("ReplicatedStorage").HintAnswer:GetPropertyChangedSignal("Value"):Connect(function()
if game:GetService("ReplicatedStorage").HintAnswer.Value ~= "" then
task.wait(9)
yes()
end
end)