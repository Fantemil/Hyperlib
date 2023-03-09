for i,v in pairs(game:GetService("ReplicatedStorage").Equipment:GetChildren()) do
local name = v.Name
local args = {
   [1] = name
}

game:GetService("ReplicatedStorage").Events.GrantItem:FireServer(unpack(args))
end