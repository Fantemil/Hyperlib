game:GetService("Workspace").ChildAdded:Connect(function()
   for i,v in pairs(game:GetService("Workspace").Ignore.Items:GetDescendants()) do
       if v:FindFirstChildOfClass("MeshPart") then
           local h = Instance.new("Highlight", v)
       end
   end
end)