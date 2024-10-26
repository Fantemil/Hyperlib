for i = 1,8 do
			local args = {
				[1] = 999999999999999999
			}
		
			game:GetService("ReplicatedStorage"):WaitForChild("money"):FireServer(unpack(args))
		
		end