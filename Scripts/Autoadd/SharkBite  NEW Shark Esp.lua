for _,v in pairs(game.workspace.Sharks:GetChildren()) do
   local Highlight = Instance.new("Highlight")
   Highlight.FillColor = Color3.fromRGB(134, 242, 0)
   Highlight.Parent = v
   Highlight.OutlineTransparency = 0.3
   Highlight.FillTransparency = 0.2
end

local function OnAdded(Shark)
    repeat task.wait() until Shark:IsA("Model")
   local Highlight = Instance.new("Highlight")
   Highlight.FillColor = Color3.fromRGB(134, 242, 0)
   Highlight.Parent = Shark
   Highlight.OutlineTransparency = 0.3
   Highlight.FillTransparency = 0.2
  
end

game:GetService("Workspace").Sharks.ChildAdded:Connect(function(Shark)
   OnAdded(Shark)
end)