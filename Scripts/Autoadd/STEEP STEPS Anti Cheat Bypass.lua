local remote = game:GetService("ReplicatedStorage").Remotes.AC
local old

old = hookmetamethod(game,"__namecall",function(self,...)
local method = getnamecallmethod()
    if self == remote and method == "FireServer" then
        return nil
    end
    return old(self,...)
end)