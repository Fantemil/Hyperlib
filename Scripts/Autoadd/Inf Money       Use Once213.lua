local replicated_storage = game:GetService("ReplicatedStorage")
local add_cash_remote = replicated_storage.Remotes:WaitForChild("AddCash")
add_cash_remote:FireServer(9999999999999)