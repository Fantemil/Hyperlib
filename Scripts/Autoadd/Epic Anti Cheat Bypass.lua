for i,v in next, game:GetDescendants() do
if string.match(v.Name,"Illl") and v:IsA("LocalScript") then
v:Destroy()
end
end