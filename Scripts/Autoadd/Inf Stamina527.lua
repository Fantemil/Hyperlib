-- By mxkxkks

local RunService = game:GetService("RunService")
local getgenv = getgenv or function() return _G end

while true do
    RunService.Stepped:Wait()
    getgenv().game.Players.LocalPlayer.Character:SetAttribute("Stamina", 300) 
end