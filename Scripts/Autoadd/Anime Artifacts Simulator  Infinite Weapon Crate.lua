for i = 1,100 do
local args = {
   [1] = "draw001", ---draw002, draw003 etc---
   [2] = "E",
}

game:GetService("ReplicatedStorage").Events.UIEvents.DrawWeapon:FireServer(unpack(args))
end