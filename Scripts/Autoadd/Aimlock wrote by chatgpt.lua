local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/OctoHub/main/OctoUI.lua')))()

local w = library:CreateWindow("Aimlock")
w:Section("Script by ChatGPT")

local b = w:Toggle("Aimlock", {flag = "aimlock"})
local s = w:Slider("FOV", {min = 5, max = 1000, flag = "fov"})

game:GetService("RunService").RenderStepped:Connect(function()
    if w.flags.aimlock then
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                local pos = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(game:GetService("UserInputService"):GetMouseLocation().X, game:GetService("UserInputService"):GetMouseLocation().Y)).magnitude
                if dist <= w.flags.fov then
                    local velocity = (v.Character.HumanoidRootPart.Velocity / 50)
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position + Vector3.new(velocity.X, 0, velocity.Z))
                end
            end
        end
    end
end)
