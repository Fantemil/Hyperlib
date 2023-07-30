if not game:IsLoaded() then
    game.Loaded:wait()
end

local LocalPlayer = game.Players.LocalPlayer
local function ClearConnections(exception)
    for i,v in pairs(getconnections(LP.Idled)) do
       return  (v ~= exception and v:Disable())
    end
end
ClearConnections()
local Connect
Connect = LP.Idled:Connect(function()
    ClearConnections(Connect)
end)