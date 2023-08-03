while wait(1) do
for i,v in pairs(game:GetDescendants()) do
if v.Name == "BoomBox" then v:Destroy() end
end
end