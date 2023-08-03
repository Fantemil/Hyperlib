local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local TextButton_7 = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.0788844526, 0, 0.54004848, 0)
Frame.Size = UDim2.new(0, 297, 0, 274)
Frame.Visible = false
Frame.Active = true
Frame.Draggable = true
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.Size = UDim2.new(0, 297, 0, 23)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Army Tycoon GUI"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 20
 
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0.0370370448, 0, 0.145985395, 0)
TextButton.Size = UDim2.new(0, 124, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Kill All Units"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
TextButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace.Game.Units:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
else
for i,v2 in pairs(v:GetChildren()) do
local Missile = "Cruise Missile"
local Position = v2.Torso.Position
game:GetService("ReplicatedStorage").RE.FireMissile:FireServer(Missile, Position)
end
end
end
end)
 
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.Position = UDim2.new(0.508417487, 0, 0.145985395, 0)
TextButton_2.Size = UDim2.new(0, 124, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Get All Buildings"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14
TextButton_2.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			game:GetService("ReplicatedStorage").RE.relinquish:FireServer(v2, true)
		end
	end
end
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					v3.Name = v3.Value.Name
				end
			end
		end
	end
end
 
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					if v3.Name == "Barracks" then
						local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
						local Button = v2;
						local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
						Target:FireServer(Class, Button);
					else
						if v3.Name == "Greenhouse" then
							local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
							local Button = v2;
							local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
							Target:FireServer(Class, Button);
						else
							if v3.Name == "Factory" then
									local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
									local Button = v2;
									local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
									Target:FireServer(Class, Button);
							else
								if v3.Name == "Oil Field" then
										local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
								else
									if v3.Name == "Guard Tower" then
										local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
									else
										if v3.Name == "Wall" then
											local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
											local Button = v2;
											local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
											Target:FireServer(Class, Button);
										else
											if v3.Name == "Generator Powerplant" then
												local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
												local Button = v2;
												local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
												Target:FireServer(Class, Button);
											else
												if v3.Name == "Missile Factory" then
													local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
													local Button = v2;
													local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
													Target:FireServer(Class, Button);
												else
													if v3.Name == "Command Center" then
														local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
														local Button = v2;
														local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
														Target:FireServer(Class, Button);
													else
														if v3.Name == "Drone Factory" then
															local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
															local Button = v2;
															local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
															Target:FireServer(Class, Button);
														else
															if v3.Name == "Military" then
																local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
																local Button = v2;
																local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																Target:FireServer(Class, Button);
															else
																if v3.Name == "Nuclear Powerplant" then
																	local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
																	local Button = v2;
																	local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																	Target:FireServer(Class, Button);
																else
																	if v3.Name == "Airport" then
																		local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
																		local Button = v2;
																		local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																		Target:FireServer(Class, Button);
																	else
																		if v3.Name == "Helicopter Bay" then
																			local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
																			local Button = v2;
																			local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																			Target:FireServer(Class, Button);
																		else
																			if v3.Name == "Main Base" then
																				local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
																				local Button = v2;
																				local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																				Target:FireServer(Class, Button);
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
end)
 
TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.Position = UDim2.new(0.0370370448, 0, 0.434306532, 0)
TextButton_3.Size = UDim2.new(0, 124, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Give All Players All Buildings"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14
TextButton_3.TextScaled = true
TextButton_3.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			game:GetService("ReplicatedStorage").RE.relinquish:FireServer(v2, true)
		end
	end
end
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					v3.Name = v3.Value.Name
				end
			end
		end
	end
end
 
 
for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == game.Players.LocalPlayer.Name then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					if v3.Name == "Barracks" then
						local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
						local Button = v2;
						local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
						Target:FireServer(Class, Button);
					else
						if v3.Name == "Greenhouse" then
							local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
							local Button = v2;
							local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
							Target:FireServer(Class, Button);
						else
							if v3.Name == "Factory" then
									local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
									local Button = v2;
									local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
									Target:FireServer(Class, Button);
							else
								if v3.Name == "Oil Field" then
										local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
								else
									if v3.Name == "Guard Tower" then
										local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
									else
										if v3.Name == "Wall" then
											local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
											local Button = v2;
											local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
											Target:FireServer(Class, Button);
										else
											if v3.Name == "Generator Powerplant" then
												local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
												local Button = v2;
												local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
												Target:FireServer(Class, Button);
											else
												if v3.Name == "Missile Factory" then
													local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
													local Button = v2;
													local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
													Target:FireServer(Class, Button);
												else
													if v3.Name == "Command Center" then
														local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
														local Button = v2;
														local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
														Target:FireServer(Class, Button);
													else
														if v3.Name == "Drone Factory" then
															local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
															local Button = v2;
															local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
															Target:FireServer(Class, Button);
														else
															if v3.Name == "Military" then
																local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
																local Button = v2;
																local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																Target:FireServer(Class, Button);
															else
																if v3.Name == "Nuclear Powerplant" then
																	local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
																	local Button = v2;
																	local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																	Target:FireServer(Class, Button);
																else
																	if v3.Name == "Airport" then
																		local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
																		local Button = v2;
																		local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																		Target:FireServer(Class, Button);
																	else
																		if v3.Name == "Helicopter Bay" then
																			local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
																			local Button = v2;
																			local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																			Target:FireServer(Class, Button);
																		else
																			if v3.Name == "Main Base" then
																				local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
																				local Button = v2;
																				local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																				Target:FireServer(Class, Button);
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
end)
 
TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_4.Position = UDim2.new(0.0370370448, 0, 0.708029211, 0)
TextButton_4.Size = UDim2.new(0, 124, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Lag Players"
TextButton_4.TextColor3 = Color3.new(0, 0, 0)
TextButton_4.TextSize = 14
TextButton_4.MouseButton1Down:connect(function()
while wait() do
for i,v in pairs(game.Players:GetChildren()) do
 targetPos = v.Character.HumanoidRootPart.Position
 game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
end
end
end)
 
TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_5.Position = UDim2.new(0.508417487, 0, 0.434306532, 0)
TextButton_5.Size = UDim2.new(0, 124, 0, 50)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Send Nuke To Mouse (Q)"
TextButton_5.TextColor3 = Color3.new(0, 0, 0)
TextButton_5.TextSize = 14
TextButton_5.TextScaled = true
TextButton_5.MouseButton1Down:connect(function()
local mouse = game:service'Players'.LocalPlayer:GetMouse()
 
mouse.KeyDown:Connect(function(k)
if k == "q" then
game:GetService("ReplicatedStorage").RE.FireMissile:FireServer("Nuke",Vector3.new(mouse.Hit.p.X,48.6649132,mouse.Hit.p.Z))
end
end)
end)
 
TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.new(1, 0, 0)
TextButton_6.Position = UDim2.new(0.92592591, 0, 0, 0)
TextButton_6.Size = UDim2.new(0, 22, 0, 23)
TextButton_6.Font = Enum.Font.GothamBold
TextButton_6.Text = "X"
TextButton_6.TextColor3 = Color3.new(0, 0, 0)
TextButton_6.TextSize = 28
TextButton_6.MouseButton1Down:connect(function()
Frame.Visible = false
Frame_2.Visible = true	
end)
 
Frame_2.Parent = ScreenGui
Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_2.Position = UDim2.new(0.00717131514, 0, 0.444174707, 0)
Frame_2.Size = UDim2.new(0, 91, 0, 28)
Frame.Active = true
Frame.Draggable = true
 
 
TextButton_7.Parent = Frame_2
TextButton_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_7.Position = UDim2.new(0, 0, 0.0357142873, 0)
TextButton_7.Size = UDim2.new(0, 190, 0, 260)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Open"
TextButton_7.TextColor3 = Color3.new(0, 0, 0)
TextButton_7.TextSize = 14
TextButton_7.MouseButton1Down:connect(function()
Frame_2.Visible = false
Frame.Visible = true		
end)