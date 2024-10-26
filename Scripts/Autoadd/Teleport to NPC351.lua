
local Instances = {
	TeleportGui = Instance.new("ScreenGui"),
	Element = Instance.new("ImageLabel"),
	Title = Instance.new("TextLabel"),
	ButtonContainer = Instance.new("Frame"),
	Layout = Instance.new("UIListLayout"),
	CancelButton = Instance.new("ImageButton"),
	ButtonContent = Instance.new("Frame"),
	ButtonMiddleContent = Instance.new("Frame"),
	UIListLayout = Instance.new("UIListLayout"),
	Text = Instance.new("TextLabel"),
	ConfirmButton = Instance.new("ImageButton"),
	ButtonContent_2 = Instance.new("Frame"),
	ButtonMiddleContent_2 = Instance.new("Frame"),
	UIListLayout_2 = Instance.new("UIListLayout"),
	Text_2 = Instance.new("TextLabel"),
	BodyTextContainer = Instance.new("Frame"),
	Element_2 = Instance.new("Frame"),
	Corner = Instance.new("UICorner"),
	Container_3 = Instance.new("Frame"),
	TextContainer_2 = Instance.new("Frame"),
	UIPadding = Instance.new("UIPadding"),
	TextBoxContainer = Instance.new("Frame"),
	TextBox_2 = Instance.new("TextBox"),
	Border = Instance.new("UIStroke"),
	Padding_2 = Instance.new("UIPadding"),
	Layout_4 = Instance.new("UIListLayout"),
	UICorner = Instance.new("UICorner"),
	Frame = Instance.new("Frame"),
	UICorner_2 = Instance.new("UICorner"),
	UIStroke = Instance.new("UIStroke"),
};

Instances.TeleportGui.Name = "TeleportGui";
Instances.TeleportGui.Parent = game:GetService("CoreGui");

Instances.Element.Name = "Element";
Instances.Element.AnchorPoint = Vector2.new(0.5, 0.5);
Instances.Element.ZIndex = 900;
Instances.Element.Size = UDim2.new(0, 335, 0, 183);
Instances.Element.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Element.Position = UDim2.new(0.499349505, 0, 0.553721488, 0);
Instances.Element.BackgroundColor3 = Color3.fromRGB(57, 59, 61);
Instances.Element.ImageColor3 = Color3.fromRGB(57, 59, 61);
Instances.Element.ScaleType = Enum.ScaleType.Slice;
Instances.Element.ImageTransparency = 1;
Instances.Element.ImageRectSize = Vector2.new(26, 26);
Instances.Element.ImageRectOffset = Vector2.new(438, 364);
Instances.Element.Image = "rbxassetid://14755017625";
Instances.Element.SliceCenter = Rect.new(Vector2.new(8, 8), Vector2.new(9, 9));
Instances.Element.Parent = Instances.TeleportGui;

Instances.Title.Name = "Title";
Instances.Title.ZIndex = 901;
Instances.Title.Size = UDim2.new(1, 0, 0, 48);
Instances.Title.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Title.LayoutOrder = 1;
Instances.Title.BackgroundTransparency = 1;
Instances.Title.TextColor3 = Color3.fromRGB(255, 255, 255);
Instances.Title.Text = "Npc Teleport Script";
Instances.Title.TextSize = 24;
Instances.Title.FontFace = Font.new("rbxassetid://16658221428", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal);
Instances.Title.Parent = Instances.Element;

Instances.ButtonContainer.Name = "ButtonContainer";
Instances.ButtonContainer.ZIndex = 901;
Instances.ButtonContainer.Size = UDim2.new(1, 0, 0, 36);
Instances.ButtonContainer.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ButtonContainer.LayoutOrder = 5;
Instances.ButtonContainer.BackgroundTransparency = 1;
Instances.ButtonContainer.Parent = Instances.Element;

Instances.Layout.Name = "Layout";
Instances.Layout.Padding = UDim.new(0, 10);
Instances.Layout.Parent = Instances.ButtonContainer;

Instances.CancelButton.Name = "CancelButton";
Instances.CancelButton.ZIndex = 901;
Instances.CancelButton.Size = UDim2.new(0.483050853, 0, 1, 0);
Instances.CancelButton.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.CancelButton.LayoutOrder = 1;
Instances.CancelButton.BackgroundTransparency = 1;
Instances.CancelButton.AutoButtonColor = false;
Instances.CancelButton.ImageTransparency = 0.30000001192092896;
Instances.CancelButton.ImageRectOffset = Vector2.new(466, 364);
Instances.CancelButton.ImageRectSize = Vector2.new(26, 26);
Instances.CancelButton.ScaleType = Enum.ScaleType.Slice;
Instances.CancelButton.Image = "rbxassetid://14755017625";
Instances.CancelButton.SliceCenter = Rect.new(Vector2.new(8, 8), Vector2.new(9, 9));
Instances.CancelButton.Parent = Instances.ButtonContainer;

Instances.ButtonContent.Name = "ButtonContent";
Instances.ButtonContent.ZIndex = 901;
Instances.ButtonContent.Size = UDim2.new(1, 0, 1, 0);
Instances.ButtonContent.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ButtonContent.BackgroundTransparency = 1;
Instances.ButtonContent.Parent = Instances.CancelButton;

Instances.ButtonMiddleContent.Name = "ButtonMiddleContent";
Instances.ButtonMiddleContent.ZIndex = 901;
Instances.ButtonMiddleContent.Size = UDim2.new(1, 0, 1, 0);
Instances.ButtonMiddleContent.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ButtonMiddleContent.BackgroundTransparency = 1;
Instances.ButtonMiddleContent.Parent = Instances.ButtonContent;

Instances.UIListLayout.Name = "UIListLayout";
Instances.UIListLayout.Padding = UDim.new(0, 5);
Instances.UIListLayout.Parent = Instances.ButtonMiddleContent;

Instances.Text.Name = "Text";
Instances.Text.ZIndex = 901;
Instances.Text.Size = UDim2.new(0.414035082, 0, 0.555555582, 0);
Instances.Text.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Text.LayoutOrder = 2;
Instances.Text.BackgroundTransparency = 1;
Instances.Text.TextColor3 = Color3.fromRGB(255, 255, 255);
Instances.Text.Text = "Teleport";
Instances.Text.TextWrapped = true;
Instances.Text.TextSize = 19;
Instances.Text.TextTransparency = 0.30000001192092896;
Instances.Text.FontFace = Font.new("rbxassetid://16658221428", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Instances.Text.TextScaled = true;
Instances.Text.Parent = Instances.ButtonMiddleContent;

Instances.ConfirmButton.Name = "ConfirmButton";
Instances.ConfirmButton.ZIndex = 901;
Instances.ConfirmButton.Size = UDim2.new(0.5, -5, 1, 0);
Instances.ConfirmButton.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ConfirmButton.LayoutOrder = 2;
Instances.ConfirmButton.BackgroundTransparency = 1;
Instances.ConfirmButton.AutoButtonColor = false;
Instances.ConfirmButton.ImageRectOffset = Vector2.new(438, 364);
Instances.ConfirmButton.ImageRectSize = Vector2.new(26, 26);
Instances.ConfirmButton.ScaleType = Enum.ScaleType.Slice;
Instances.ConfirmButton.Image = "rbxassetid://14755017625";
Instances.ConfirmButton.SliceCenter = Rect.new(Vector2.new(8, 8), Vector2.new(9, 9));
Instances.ConfirmButton.Parent = Instances.ButtonContainer;

Instances.ButtonContent_2.Name = "ButtonContent";
Instances.ButtonContent_2.ZIndex = 901;
Instances.ButtonContent_2.Size = UDim2.new(1, 0, 1, 0);
Instances.ButtonContent_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ButtonContent_2.BackgroundTransparency = 1;
Instances.ButtonContent_2.Parent = Instances.ConfirmButton;

Instances.ButtonMiddleContent_2.Name = "ButtonMiddleContent";
Instances.ButtonMiddleContent_2.ZIndex = 901;
Instances.ButtonMiddleContent_2.Size = UDim2.new(1, 0, 1, 0);
Instances.ButtonMiddleContent_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.ButtonMiddleContent_2.BackgroundTransparency = 1;
Instances.ButtonMiddleContent_2.Parent = Instances.ButtonContent_2;

Instances.UIListLayout_2.Name = "UIListLayout";
Instances.UIListLayout_2.Padding = UDim.new(0, 5);
Instances.UIListLayout_2.Parent = Instances.ButtonMiddleContent_2;

Instances.Text_2.Name = "Text";
Instances.Text_2.ZIndex = 901;
Instances.Text_2.Size = UDim2.new(0.547368407, 0, 0.555555582, 0);
Instances.Text_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Text_2.LayoutOrder = 2;
Instances.Text_2.BackgroundTransparency = 1;
Instances.Text_2.TextColor3 = Color3.fromRGB(57, 59, 61);
Instances.Text_2.Text = "Close";
Instances.Text_2.TextWrapped = true;
Instances.Text_2.TextSize = 19;
Instances.Text_2.FontFace = Font.new("rbxassetid://16658221428", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Instances.Text_2.Parent = Instances.ButtonMiddleContent_2;

Instances.BodyTextContainer.Name = "BodyTextContainer";
Instances.BodyTextContainer.ZIndex = 901;
Instances.BodyTextContainer.Size = UDim2.new(1, 0, 0, 78);
Instances.BodyTextContainer.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.BodyTextContainer.LayoutOrder = 4;
Instances.BodyTextContainer.BackgroundTransparency = 1;
Instances.BodyTextContainer.Parent = Instances.Element;

Instances.Element_2.Name = "Element";
Instances.Element_2.AnchorPoint = Vector2.new(0.5, 0.5);
Instances.Element_2.AutomaticSize = Enum.AutomaticSize.Y;
Instances.Element_2.Size = UDim2.new(1, 0, 1, 0);
Instances.Element_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Element_2.BackgroundTransparency = 0.20000000298023224;
Instances.Element_2.Position = UDim2.new(0.5, 0, 0.410256416, 0);
Instances.Element_2.BackgroundColor3 = Color3.fromRGB(25, 27, 29);
Instances.Element_2.Parent = Instances.BodyTextContainer;

Instances.Corner.Name = "Corner";
Instances.Corner.CornerRadius = UDim.new(0, 3);
Instances.Corner.Parent = Instances.Element_2;

Instances.Container_3.Name = "Container";
Instances.Container_3.AutomaticSize = Enum.AutomaticSize.Y;
Instances.Container_3.Size = UDim2.new(1, 0, 0.832823813, 0);
Instances.Container_3.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.Container_3.BackgroundTransparency = 1;
Instances.Container_3.Parent = Instances.Element_2;

Instances.TextContainer_2.Name = "TextContainer";
Instances.TextContainer_2.AutomaticSize = Enum.AutomaticSize.Y;
Instances.TextContainer_2.Size = UDim2.new(1, 0, 1, 0);
Instances.TextContainer_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.TextContainer_2.BackgroundTransparency = 1;
Instances.TextContainer_2.Parent = Instances.Container_3;

Instances.UIPadding.Name = "UIPadding";
Instances.UIPadding.PaddingBottom = UDim.new(0, 10);
Instances.UIPadding.PaddingTop = UDim.new(0, 10);
Instances.UIPadding.PaddingLeft = UDim.new(0, 10);
Instances.UIPadding.PaddingRight = UDim.new(0, 10);
Instances.UIPadding.Parent = Instances.TextContainer_2;

Instances.TextBoxContainer.Name = "TextBoxContainer";
Instances.TextBoxContainer.AnchorPoint = Vector2.new(1, 0);
Instances.TextBoxContainer.AutomaticSize = Enum.AutomaticSize.Y;
Instances.TextBoxContainer.Size = UDim2.new(1, 0, 0, 0);
Instances.TextBoxContainer.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.TextBoxContainer.ClipsDescendants = true;
Instances.TextBoxContainer.BackgroundTransparency = 1;
Instances.TextBoxContainer.Position = UDim2.new(1, 0, 0, 0);
Instances.TextBoxContainer.Parent = Instances.TextContainer_2;

Instances.TextBox_2.Name = "TextBox";
Instances.TextBox_2.AutomaticSize = Enum.AutomaticSize.XY;
Instances.TextBox_2.Size = UDim2.new(1, 0, 4.64001846, 0);
Instances.TextBox_2.BorderColor3 = Color3.fromRGB(27, 42, 53);
Instances.TextBox_2.BackgroundTransparency = 1;
Instances.TextBox_2.CursorPosition = -1;
Instances.TextBox_2.TextStrokeTransparency = 0.5;
Instances.TextBox_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178);
Instances.TextBox_2.PlaceholderText = "Npc name here";
Instances.TextBox_2.TextSize = 14;
Instances.TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255);
Instances.TextBox_2.TextYAlignment = Enum.TextYAlignment.Top;
Instances.TextBox_2.Text = "";
Instances.TextBox_2.TextWrapped = true;
Instances.TextBox_2.TextTransparency = 0.5;
Instances.TextBox_2.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
Instances.TextBox_2.TextXAlignment = Enum.TextXAlignment.Left;
Instances.TextBox_2.ClearTextOnFocus = false;
Instances.TextBox_2.Parent = Instances.TextBoxContainer;

Instances.Border.Name = "Border";
Instances.Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
Instances.Border.Color = Color3.fromRGB(255, 255, 255);
Instances.Border.Transparency = 0.800000011920929;
Instances.Border.Parent = Instances.Element_2;

Instances.Padding_2.Name = "Padding";
Instances.Padding_2.PaddingBottom = UDim.new(0, 20);
Instances.Padding_2.PaddingLeft = UDim.new(0, 20);
Instances.Padding_2.PaddingRight = UDim.new(0, 20);
Instances.Padding_2.Parent = Instances.Element;

Instances.Layout_4.Name = "Layout";
Instances.Layout_4.Parent = Instances.Element;

Instances.UICorner.Name = "UICorner";
Instances.UICorner.CornerRadius = UDim.new(0, 12);
Instances.UICorner.Parent = Instances.Element;

Instances.Frame.Name = "Frame";
Instances.Frame.Size = UDim2.new(0.0170587339, 0, 0.0335570462, 0);
Instances.Frame.Visible = false;
Instances.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
Instances.Frame.Position = UDim2.new(0.373109639, 0, 0.324832201, 0);
Instances.Frame.BorderSizePixel = 0;
Instances.Frame.BackgroundColor3 = Color3.fromRGB(255, 64, 67);
Instances.Frame.Parent = Instances.TeleportGui;

Instances.UICorner_2.Name = "UICorner";
Instances.UICorner_2.CornerRadius = UDim.new(50, 0);
Instances.UICorner_2.Parent = Instances.Frame;

Instances.UIStroke.Name = "UIStroke";
Instances.UIStroke.Transparency = 0.5;
Instances.UIStroke.Parent = Instances.Frame;

-- Function "Drag"
task.spawn(function()
	local script = Instance.new("LocalScript", Instances.Element);
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end);

-- Function "LocalScript"
task.spawn(function()
	local script = Instance.new("LocalScript", Instances.TeleportGui);
	local Gui = script.Parent
	local UIS = game:GetService("UserInputService")
	local guiMode = true
	local fastTpMode = false
	local fastWhileMode = false
	local PlayerTextBox = script.Parent.Element.BodyTextContainer.Element.Container.TextContainer.TextBoxContainer.TextBox
	local ExitGuiButton = script.Parent.Element.ButtonContainer.ConfirmButton
	local FastTeleportButton = script.Parent.Element.ButtonContainer.CancelButton
	local circle = script.Parent.Frame
	UIS.InputBegan:Connect(function(UserInput)
		if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Insert then
			guiMode = not guiMode
			Gui.Enabled = guiMode
		end
	end)
	ExitGuiButton.MouseButton1Click:Connect(function()
		Gui:Destroy()
	end)
	FastTeleportButton.MouseButton1Click:Connect(function()
		if fastTpMode then
			circle.BackgroundColor3 = Color3.fromRGB(255, 64, 67)
			fastTpMode = false
			fastWhileMode = false
		else
			circle.BackgroundColor3 = Color3.fromRGB(67, 255, 67)
			fastTpMode = true
			fastWhileMode = true
			while fastWhileMode do
				wait()
				local plText = PlayerTextBox.Text
				local pl1 = game.Players.LocalPlayer.Character
				local pl2
				local FF = false
				local FN -- fuck nigga
				for _, v in ipairs(game.Workspace:GetChildren()) do
					if v:IsA("Folder") then
						pl2 = v:FindFirstChild(plText)
						if pl2 then
							FN = v.Name
							FF = true
							break
						end
					end
				end
				if not FF then
					pl2 = game.Workspace:FindFirstChild(plText)
					pl1.HumanoidRootPart.CFrame = pl2.HumanoidRootPart.CFrame
					pl2.HumanoidRootPart.CanCollide = false
					pl2.HumanoidRootPart.Size = Vector3.new(9, 9, 9)
					pl2.HumanoidRootPart.Transparency = 0.7
				end
	
				if FF then
					pl2 = game.Workspace[FN]:FindFirstChild(plText)
					pl1.HumanoidRootPart.CFrame = pl2.HumanoidRootPart.CFrame
					pl2.HumanoidRootPart.CanCollide = false
					pl2.HumanoidRootPart.Size = Vector3.new(9, 9, 9)
					pl2.HumanoidRootPart.Transparency = 0.7
				end
			end
		end
	end)
	
end);