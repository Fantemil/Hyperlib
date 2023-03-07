local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character ~= nil
local char = plr.Character
local hum = char:WaitForChild("Humanoid")
local humRoot = char:WaitForChild("HumanoidRootPart")
local config = {["ignore"] = false, ["autoHatch"] = false, ["autoHatchEgg"] = nil, ["infJump"] = false}
local eggs = {}
for _, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do table.insert(eggs, v.Name) end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

local Window = Library:Window({
    Text = "Main"
})

Window:Button({
    Text = "Auto Win",
    Callback = function()
        if game:GetService("Workspace").CurrentMap:FindFirstChild("Finish") and game:GetService("Workspace").CurrentMap.Finish:FindFirstChild("WinPart") then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").CurrentMap.Finish.WinPart, 0)
            Library:Notification({
                Text = "Won ( swag )",
                Duration = 10
            })
        else
            Library:Notification({
                Text = "Wait for map to load!",
                Duration = 5
            })
        end
    end
})


Window:Dropdown({
    Text = "Egg",
    List = eggs,
    Callback = function(value)
        config.autoHatchEgg = value;
    end
})

Window:Toggle({
    Text = "Auto Hatch",
    Callback = function(bool)
        config.autoHatch = bool;
        if config.autoHatch and config.autoHatchEgg ~= nil then
            fireproximityprompt(game:GetService("Workspace").Eggs[config.autoHatchEgg].Currency.ProximityPrompt)
        end
        plr.leaderstats.Wins.Changed:Connect(function()
            if config.autoHatch and config.autoHatchEgg ~= nil then
                fireproximityprompt(game:GetService("Workspace").Eggs[config.autoHatchEgg].Currency.ProximityPrompt)
            end
        end)
    end
})

local Window2 = Library:Window({
    Text = "Player"
})

Window2:Toggle({
    Text = "Walk Speed",
    Callback = function(bool)
        if bool then hum.WalkSpeed = 150 else hum.WalkSpeed = 30 end
    end
})

Window2:Toggle({
    Text = "Inf Jump",
    Callback = function(bool)
        config.infJump = bool;
    end
})

game:GetService("UserInputService").JumpRequest:Connect(function()
    if config.infJump and hum.FloorMaterial == Enum.Material.Air then
        hum:ChangeState(3)
    end
end)