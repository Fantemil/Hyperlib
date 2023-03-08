while wait() do
local str1 = "Black" --- Black = +50 | White = -30
local str2 = 999999999999999999999
local Event = game:GetService("ReplicatedStorage").Remotes.ChangeColourUsingTokens
Event:FireServer(str1, str2)
end