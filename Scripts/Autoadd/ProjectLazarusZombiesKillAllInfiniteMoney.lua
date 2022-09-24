while task.wait() do
   game.ReplicatedStorage.UpdateDamageKey:InvokeServer(1);
   for i,v in pairs(workspace.Baddies:GetChildren()) do
       pcall(function()
           v.Humanoid.Damage:FireServer({["Knifed"] = true, ["BodyPart"] = v.HumanoidRootPart, ["Damage"] = 150}, 1)
       end)
   end
end