local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args={...}
    local Self = Args[1]
 if not checkcaller() and getnamecallmethod()=="FireServer" and typeof(Self)=="Instance" and Self.IsA(Self,"RemoteEvent") and Self.Name=="DamagePart" then
  for i = 1,15 do
      OldNameCall(...)
  end
 end
    return OldNameCall(...)
end)