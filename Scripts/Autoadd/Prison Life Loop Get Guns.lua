getgenv().Getguns = true -- set the true to false to stop getting guns


while Getguns do
    wait(0.5)
local args = {[1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP}workspace.Remote.ItemHandler:InvokeServer(unpack(args))
    wait(0.5)
local args = {[1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP}workspace.Remote.ItemHandler:InvokeServer(unpack(args))
    wait(0.5)
local args = {[1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP}workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end