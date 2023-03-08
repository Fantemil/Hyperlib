local function getRoleColor(plr)
   if (plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife")) then
       return Color3.new(255, 0, 0)
   elseif (plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun")) then
       return Color3.new(0, 0, 255)
   else
       return Color3.new(0, 255, 0)
   end
end
while true do
   for _, v in pairs(game.Players:GetChildren()) do
       if v ~= game.Players.LocalPlayer and v.Character and not v.Character:FindFirstChild("Highlight") then
           Instance.new("Highlight", v.Character)
           v.Character.Highlight.FillTransparency = 0.5
           v.Character.Highlight.OutlineTransparency = 0.5
           v.Character.Highlight.FillColor = getRoleColor(v)
       elseif (v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Highlight")) then
           v.Character.Highlight.FillColor = getRoleColor(v)
       end
   end
   wait(0.1)
end