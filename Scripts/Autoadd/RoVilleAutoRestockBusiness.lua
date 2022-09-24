local player = game.Players.LocalPlayer
local shop = game:GetService("Workspace").Properties[player.Name].Builds

while wait(2) do
   pcall(function()
   for i,v in pairs(shop:GetChildren()) do
       if v:FindFirstChild("ActionEvent") and v:FindFirstChild("Products") then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
      local A_1 = v
      local Event = game:GetService("ReplicatedStorage").ActionEvents[v.ActionEvent.ActionName.Value]
      Event:FireServer(A_1)
      wait(1)
     

       end
   end
end)  
end