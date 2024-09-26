--[[
    Made By D8rk 
]]

local camera = workspace.CurrentCamera
local lplr = game:GetService("Players").LocalPlayer
_G.autofarm = true

while wait() do 
    if _G.autofarm then 
        for i,v in pairs(game:GetService("Players"):GetChildren()) do -- gather the players
                if
                    v.Character ~= nil and
                    v.Character:FindFirstChild("Humanoid") ~= nil and
                    v ~= lplr and 
                    v.NRPBS.Health.Value > 0 
                    and v.TeamColor ~= lplr.TeamColor 
                 then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    camera.CFrame = CFrame.new(camera.CFrame.Position, v.Character["Head"].Position) 
            end
        end
    end
end