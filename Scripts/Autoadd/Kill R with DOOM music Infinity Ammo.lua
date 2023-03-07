local Remote = game:GetService("ReplicatedStorage").ACS_Engine.Events.ServerBullet
local OldNameCall;

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local NamecallMethod = getnamecallmethod()

    if not checkcaller() and Self == Remote and NamecallMethod == "FireServer" then
  Args[3].Ammo = math.huge
  Args[3].AmmoInGun = math.huge
  Remote:FireServer(Args)
    end

    return OldNameCall(Self, ...)
end)