shared.Enabled = true

local plr = game.Players.LocalPlayer
local char = plr.Character
local hatchet = plr.Backpack.Hatchet or char.Hatchet


for i,v in pairs(workspace.Map:GetChildren())do
   if v:FindFirstChild("WoodHitPart") and v.Leaves.Transparency == 0 and shared.Enabled then
       repeat wait()
           char.Humanoid:EquipTool(hatchet)
           wait()
           hatchet:Activate()
           char:SetPrimaryPartCFrame(v.WoodHitPart.CFrame)
       until v.Leaves.Transparency == 1
   end
end