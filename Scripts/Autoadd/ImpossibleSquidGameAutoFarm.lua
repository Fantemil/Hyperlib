while wait() do
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.Humanoid
local root = char.HumanoidRootPart
 
root.CFrame = CFrame.new(game.Workspace.Jackpot.Position)
end