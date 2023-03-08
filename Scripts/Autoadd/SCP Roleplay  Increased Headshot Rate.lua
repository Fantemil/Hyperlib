local nchook 
nchook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...} 
    if (not checkcaller()) and tostring(self.Name) == "ShotRemote" and args[2] then 
        local x = args[2].Parent:FindFirstChild("Head") 
        local z = args[2].Parent.Parent:FindFirstChild("Head") 
        local y = args[2].Parent.Parent.Parent:FindFirstChild("Head") 
        local q = {x, y, z} 
        for i,v in pairs(q) do 
            if v == nil then 
                table.remove(q, i)
            end 
        end 
        args[1] = {
            q[1].Position.X, 
            q[1].Position.Y,
            q[1].Position.Z,
        }
        args[2] = q[1] 
        return self.FireServer(self, unpack(args))
    end 
    return nchook(self, ...)
end))