local anims = {idhere,idhere,idhere}

for i,v in ipairs(anims) do
local a = game:GetObjects("rbxassetid://"..v)[1]
a.Name = i
a.Parent = workspace
end