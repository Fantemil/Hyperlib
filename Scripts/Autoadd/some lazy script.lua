-- Instances: 8 | Scripts: 3 | Modules: 0
local G2L = {};

-- StarterGui.ambatufackingnut
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[ambatufackingnut]];
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.ambatufackingnut.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 999999999;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 544, 0, 233);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.06776557117700577, 0, 0.5522152185440063, 0);

-- StarterGui.ambatufackingnut.Frame.TextBox
G2L["3"] = Instance.new("TextBox", G2L["2"]);
G2L["3"]["CursorPosition"] = -1;
G2L["3"]["ZIndex"] = 999999999;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["RichText"] = true;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextWrapped"] = true;
G2L["3"]["TextScaled"] = true;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[]];
G2L["3"]["Position"] = UDim2.new(0.3154257833957672, 0, 0.22746780514717102, 0);
G2L["3"]["ClearTextOnFocus"] = false;

-- StarterGui.ambatufackingnut.Frame.qa
G2L["4"] = Instance.new("TextButton", G2L["2"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["ZIndex"] = 999999999;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextScaled"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(52, 0, 255);
G2L["4"]["TextSize"] = 14;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4"]["Name"] = [[qa]];
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[kill]];
G2L["4"]["Position"] = UDim2.new(0.13479751348495483, 0, 0.6480686068534851, 0);

-- StarterGui.ambatufackingnut.Frame.qa.LocalScript
G2L["5"] = Instance.new("LocalScript", G2L["4"]);


-- StarterGui.ambatufackingnut.Frame.TextButton
G2L["6"] = Instance.new("TextButton", G2L["2"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["ZIndex"] = 999999999;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(140, 255, 7);
G2L["6"]["TextSize"] = 14;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Size"] = UDim2.new(0, 209, 0, 50);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[find]];
G2L["6"]["Position"] = UDim2.new(0.50204998254776, 0, 0.6480685472488403, 0);

-- StarterGui.ambatufackingnut.Frame.TextButton.LocalScript
G2L["7"] = Instance.new("LocalScript", G2L["6"]);


-- StarterGui.ambatufackingnut.Frame.Dragify
G2L["8"] = Instance.new("LocalScript", G2L["2"]);
G2L["8"]["Name"] = [[Dragify]];

-- StarterGui.ambatufackingnut.Frame.qa.LocalScript
local function C_5()
local script = G2L["5"];
	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipBow"):FireServer()
		wait(0.5)
		for i=1,10 do
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Normal Bow").Events.KnockArrowEvent:FireServer()
			local args = {
				[1] = 0,
				[2] = CFrame.new(getRoot(workspace:FindFirstChild(script.Parent.Parent.TextBox.Text)).Position.X, getRoot(workspace:FindFirstChild(script.Parent.Parent.TextBox.Text)).Position.Y, getRoot(workspace:FindFirstChild(script.Parent.Parent.TextBox.Text)).Position.Z, 0, 0, 0, 0, 0, 0, 0, 0, 0),
				[3] = CFrame.new(0, 0,0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				[4] = 0,
				[5] = workspace:WaitForChild("ArcheryArena"):WaitForChild("Texture Part"),
				[6] = 0
			}
	
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Normal Bow").Events.ReleaseArrowEvent:FireServer(unpack(args))
		end
		wait(0.5)
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EquipBow"):FireServer()
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EnterSafetyRemote"):FireServer()
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Retreat"):WaitForChild("RetreatSuccessful"):FireServer()
	end)
end;
task.spawn(C_5);
-- StarterGui.ambatufackingnut.Frame.TextButton.LocalScript
local function C_7()
local script = G2L["7"];
	script.Parent.MouseButton1Click:Connect(function()
		local searchQuery = script.Parent.Parent.TextBox.Text:lower()
	
		for _, player in ipairs(game.Players:GetPlayers()) do
			if player.Name:lower():match(searchQuery) or player.DisplayName:lower():match(searchQuery) then
				script.Parent.Parent.TextBox.Text = player.Name
				break
			end
		end
	end)
end;
task.spawn(C_7);
-- StarterGui.ambatufackingnut.Frame.Dragify
local function C_8()
local script = G2L["8"];
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end;
task.spawn(C_8);

return G2L["1"], require;