--[[ for exploits missing hookmetamethod:
local sword_name = ""
game.Workspace.SwordStands:FindFirstChild(sword_name).Approve:FireServer()
]]


local bhook;bhook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if not checkcaller() and method == "FireServer" and tostring(self) == "Deny" then
       self.Parent.Approve:FireServer()
       return
    end
    return bhook(self, ...)
end))