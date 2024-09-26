this is to start the roll back:

local ohString1 = "Character"
local ohString2 = "Customization"
local ohString3 = "Eyes"
local ohColor34 = workspace

game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer(ohString1, ohString2, ohString3, ohColor34)
end


this is to stop it:

local args = {
[1] = "Character",
[2] = "Customization",
[3] = "Eyes",
[4] = nil --[[Color3]]
}

game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer(unpack(args))
end

