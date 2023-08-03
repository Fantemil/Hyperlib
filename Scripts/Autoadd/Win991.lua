--wins by getting 100% of map
local winkey = "r";

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key)
    if key == winkey then
        for i,v in pairs(game:GetService("Workspace").Map:GetChildren()) do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart.BlockTouchPart,v,1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart.BlockTouchPart,v,0)
        end 
    end
end)