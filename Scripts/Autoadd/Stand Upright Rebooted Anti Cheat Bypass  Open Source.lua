local send_remote = game.ReplicatedStorage.Events.SpeedJump;
local player = game.Players.LocalPlayer;

--Bypass
do
    local old;
    old = hookmetamethod(game, '__namecall', function(...)
        local self = ...
        if not checkcaller() then
            if self == send_remote and getnamecallmethod() == 'FireServer' then
                return old(self, 16, 7.199999809265137, 50);
            elseif getnamecallmethod() == 'Destroy' and self.Name == 'Fortnite' then
                return;
            end;
        end;
        return old(...);
    end);
  
    if not player.Character or (player.Character and not player.Character:FindFirstChild('Fornite')) then
        repeat wait() until plr.Character and plr.Character:FindFirstChild('Fortnite');
    end;
  
    player.Character.Fortnite.Disabled = true;
    
    player.CharacterAdded:Connect(function(c)
        c.ChildAdded:Connect(function(v)
            if v.Name == 'Fortnite' then
                v.Disabled = true;
            end;
        end);
    end);
end;