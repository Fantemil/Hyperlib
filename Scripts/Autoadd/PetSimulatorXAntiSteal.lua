local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(...)
    local method, Self = getnamecallmethod(), ...
    if method == "InvokeServer" and tostring(Self) == "invite to bank" and checkcaller() then
        return game:GetService"StarterGui":SetCore("SendNotification", { Title = "WARNING!", Text = "Script tried to Invite Someone to your Bank!", Duration = 5 }), warn"Script tried to Invite Someone to your Bank!"
    end
    return OldNamecall(...)
end)