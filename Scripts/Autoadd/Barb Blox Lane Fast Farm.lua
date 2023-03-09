while true do wait(1)
local function click(part)
   fireproximityprompt(part)
end

local s,e = pcall(function()
   for i,v in pairs(game.Workspace:GetDescendants()) do
       if v.Parent.Parent.Name == "Terminalsberbankstation" and v.Name == "ProximityPrompt" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
           wait(.2)
           click(v)
           print('clicked')
       end
   end
end)
end