local plr = game.Players.LocalPlayer.Name

local lol = game:GetService("Workspace").Plots[plr].Blocks:GetChildren()


local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
 if IsTyping then return end
 if Input.KeyCode == Enum.KeyCode.Q then
     local lol = game:GetService("Workspace").Plots[plr].Blocks:GetChildren()
        for i,v in pairs(lol) do
            v.CFrame = CFrame.new(119, 4, -82)
        end
 end
end)