local plr = game.Players.LocalPlayer
local chr = plr.Character
local hrp = chr.HumanoidRootPart

local cloves = workspace.Clovers

_G.A = true

while task.wait(.1) and _G.A == true do
   for i,v in pairs(cloves:GetChildren()) do
       if v:IsA("MeshPart") and v.Name == "Diamond" or v.Name == "Rainbow" or v.Name == "Gold" then
           hrp.CFrame = v.CFrame
           fireproximityprompt(v.ProximityPrompt, 1)
       end
   end
end