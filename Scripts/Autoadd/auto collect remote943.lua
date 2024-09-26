getgenv().autofarmnationbyjaz = not getgenv().autofarmnationbyjaz
task.spawn(function()
	while task.wait() do
		if not getgenv().autofarmnationbyjaz then
			break
		end
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").DROPS:GetChildren()) do
				local args = {
					[1] = {
						[1] = v.Name
					}
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.6.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DropService"):WaitForChild("RE"):WaitForChild("PickupDrop"):FireServer(unpack(args))
				task.wait()
			end
		end)
	end
end)