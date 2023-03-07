-- swat gamepass required for this to work
-- take like 30 seconds for the lag to start

getgenv().lag = true -- set to false to stop 


while lag do
local args = {[1] = workspace.Prison_ITEMS.clothes:FindFirstChild("Riot Police").ITEMPICKUP}workspace.Remote.ItemHandler:InvokeServer(unpack(args))
local args = {[1] = workspace.Prison_ITEMS.clothes:FindFirstChild("Riot Police").ITEMPICKUP}workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end