local ohTable1 = {
["Amount"] = 0, -- the amount of money you have
["Mode"] = "D"  -- D = Deposit and W = Withdrawal
}

game:GetService("ReplicatedStorage").RemoteEvent.ATM:FireServer(ohTable1)