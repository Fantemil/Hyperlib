for _,v in pairs(game:GetDescendants()) do
if v.ClassName == "RemoteEvent" then
if v.Parent.Name == "WeaponsRemotes" or v.Parent.Name == "VipRemotes" or v.Parent.Name == "Remotes" then
v:FireServer()
end
end
end