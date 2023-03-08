local pole1 = "write here a text" --- put here any text.
local pole2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.ChangeColourUsingTokens
Event:FireServer(pole1, pole2)