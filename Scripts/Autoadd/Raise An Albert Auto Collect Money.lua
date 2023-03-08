while task.wait() do
  game:GetService("ReplicatedStorage").CashBags.TipCashBag:FireServer()
end