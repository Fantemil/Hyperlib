local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client

Client:WaitFor("EntityDamageEvent"):andThen(function(p1)
	p1:Connect(function(p2)
	    for i, v in pairs(p2.extra) do
	       if tostring(i) == "chargeRatio" and v == 1 then
	            warn(p2.fromEntity.Name .. "is using vape kill aura")
	       end
	       if tostring(i) == "paintBlast" and v == true then
	           warn(p2.fromEntity.Name .. "is using vape multi aura")
	       end
	    end
	end)
end)
	 