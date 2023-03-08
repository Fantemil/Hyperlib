-- deobfuscated by sunken

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window  = library:Window("Wacky Wizards RB Battles")

window:Button("Finish Obby", function(x)
    for i,v in pairs(game:GetService("Workspace").ObbyFolder:GetDescendants()) do
        if v.Name == "EndZone" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
        end
    end
end)

window:Button("Remove Laser", function(x)
    for i,v in pairs(game:GetService("Workspace").ObbyFolder.CurrentObby:GetDescendants()) do
        if v.Name == "Kill" then
            v:Destroy()
        end
    end
end)

window:Button("Infinite Jump", function(x)
    game:GetService("UserInputService").JumpRequest:connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end)

window:Slider("WalkSpeed", "WalkSpeed", 16, 100, function(x)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = x
end)

window:Label("YT: Tora IsMe")