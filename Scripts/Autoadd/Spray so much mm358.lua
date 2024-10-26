game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
			local args = {
				[1] = 80373024,
				[2] = Enum.NormalId.Front,
				[3] = 99999999,
				[4] = v,
				[5] = CFrame.new(v.Position)
			}
			
			game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
		end
	end
	game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
	task.spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
					local args = {
						[1] = 80373024,
						[2] = Enum.NormalId.Front,
						[3] = 99999999,
						[4] = v,
						[5] = CFrame.new(v.Position)
					}
					
					game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
				end
			end
			game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
			task.spawn(function()
				game:GetService("RunService").RenderStepped:Connect(function()
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
							local args = {
								[1] = 80373024,
								[2] = Enum.NormalId.Front,
								[3] = 99999999,
								[4] = v,
								[5] = CFrame.new(v.Position)
							}
							
							game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
						end
					end
					game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
					task.spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
								if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
									local args = {
										[1] = 80373024,
										[2] = Enum.NormalId.Front,
										[3] = 99999999,
										[4] = v,
										[5] = CFrame.new(v.Position)
									}
									
									game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
								end
							end
							game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
							task.spawn(function()
								game:GetService("RunService").RenderStepped:Connect(function()
									for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
										if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
											local args = {
												[1] = 80373024,
												[2] = Enum.NormalId.Front,
												[3] = 99999999,
												[4] = v,
												[5] = CFrame.new(v.Position)
											}
											
											game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
										end
									end
									game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
									task.spawn(function()
										game:GetService("RunService").RenderStepped:Connect(function()
											for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
												if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
													local args = {
														[1] = 80373024,
														[2] = Enum.NormalId.Front,
														[3] = 99999999,
														[4] = v,
														[5] = CFrame.new(v.Position)
													}
													
													game:GetService("Players").LocalPlayer.Character.SprayPaint.Remote:FireServer(unpack(args))
												end
											end
											game:GetService("Workspace"):FindFirstChild("Spray"):Destroy()
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