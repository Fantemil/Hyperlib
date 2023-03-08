for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if v:FindFirstChild("GiveTool") then
       local hi = Instance.new("Highlight", v)
       hi.OutlineTransparency = 1
       hi.FillColor = Color3.new(1,150,1)
       hi.FillTransparency = 0.3
       else
           if v.Name == "BasementTrigger" or v.Name == "BasementDoor" or v.Name == "SafeDoor" then
               v:Destroy()
   end
end
end