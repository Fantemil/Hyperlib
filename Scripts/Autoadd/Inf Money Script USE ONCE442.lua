local replicated_storage = game:GetService("ReplicatedStorage") local add_cash_remote = replicated_storage.Remotes:WaitForChild("AddCash") local function addCash(value) add_cash_remote:FireServer(value) end addCash(99999999999)

--ONLY USE ONCE