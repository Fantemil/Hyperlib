for i,v in pairs(workspace.PantheressText:GetDescendants()) do
if v:IsA("RemoteEvent") and v.Name == "LetterCollected" then
v:FireServer()
end
end