local Player = game:GetService("Players").LocalPlayer

for i,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
   if v.Name == "Username" and v.Text ~= Player.Name.."'s" then
       v.Parent.Parent.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
       wait()
   end
end