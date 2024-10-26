game:GetService("RunService").RenderStepped:Connect(function()
	local args = {
		[1] = "LayeredClothing",
		[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
	}
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
	task.spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			local args = {
				[1] = "LayeredClothing",
				[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
			}
			game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
			task.spawn(function()
				game:GetService("RunService").RenderStepped:Connect(function()
					local args = {
						[1] = "LayeredClothing",
						[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
					task.spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							local args = {
								[1] = "LayeredClothing",
								[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
							}
							game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
							game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
							task.spawn(function()
								game:GetService("RunService").RenderStepped:Connect(function()
									local args = {
										[1] = "LayeredClothing",
										[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
									}
									game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
									game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
									task.spawn(function()
										game:GetService("RunService").RenderStepped:Connect(function()
											local args = {
												[1] = "LayeredClothing",
												[2] = workspace:WaitForChild("DressingRoom"):WaitForChild("UGCBoyLayeredClothing"):WaitForChild("Dummy"):WaitForChild("LayeredClothing")
											}
											game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
											game:GetService("Players").LocalPlayer.Character:FindFirstChild("LayeredClothing"):Destroy()
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
	end)
end)