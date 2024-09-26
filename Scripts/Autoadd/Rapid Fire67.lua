_G.rapidfire = true

local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local mouse = plr:GetMouse()

while _G.rapidfire do
    local Wand = plr.Character:FindFirstChild("Wand")
    if Wand then
        local mousePos = mouse.Hit.Position
        local aim = CFrame.new(plr.Character.HumanoidRootPart.Position, mousePos)

        local args = {
            [1] = aim,
            [2] = 800,
            [3] = 999,
            [4] = Wand,
            [5] = 15,
            [6] = plr.Character
        }

        Wand.Fire:FireServer(unpack(args))
    end
    wait()
end