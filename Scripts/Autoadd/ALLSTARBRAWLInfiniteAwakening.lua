local LP = game:GetService("Players").LocalPlayer;
local Root = LP.Character.HumanoidRootPart

_G.Yes = true

while LP.Stats.Mode.Value <= 300 and _G.Yes == true do
    for _,v in pairs(workspace.Mape:GetChildren()) do
      if v:FindFirstChild("TouchInterest") then
         v.CanCollide = false
         v.Transparency = 1
         v.CFrame = Root.CFrame
         v.Anchored = true
     end
end
wait(1)
end