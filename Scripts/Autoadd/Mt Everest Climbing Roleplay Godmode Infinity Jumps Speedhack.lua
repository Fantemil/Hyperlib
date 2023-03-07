local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window = library:Window("Everest Climbing RBB")
window:Button("Godmode", function()
    for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Name == "VitalityBridge" then
            v:Destroy()
        end
    end
end)

window:Button("Speed & Jump", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 30
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 48
end)

window:Button("Infinite Jump", function()
    game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end)
window:Label("YT: ToraIsMe")