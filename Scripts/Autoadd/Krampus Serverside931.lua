local Instances = {
	Krampus_SS = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	TextBox = Instance.new("TextBox"),
	Editor = Instance.new("TextButton"),
	TextLabel = Instance.new("TextLabel"),
	Console = Instance.new("TextButton"),
	Run = Instance.new("TextButton"),
	Clear = Instance.new("TextButton"),
	Open = Instance.new("TextButton"),
	Remotes = Instance.new("Folder"),
	Close = Instance.new("TextButton"),
	Settings = Instance.new("TextButton"),
	Themes = Instance.new("TextButton"),
	TextButton = Instance.new("TextButton"),
}

Instances.Krampus_SS.Name = "Krampus SS"
Instances.Krampus_SS.Parent = game.StarterGui

Instances.Frame.Name = "Frame"
Instances.Frame.Parent = Instances.Krampus_SS
Instances.Frame.Size = UDim2.new(0, 578, 0, 383)
Instances.Frame.Visible = false
Instances.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Frame.Position = UDim2.new(0.329216421, 0, 0.233082712, 0)
Instances.Frame.BorderSizePixel = 0
Instances.Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)

Instances.TextBox.Name = "TextBox"
Instances.TextBox.Parent = Instances.Frame
Instances.TextBox.Size = UDim2.new(0, 545, 0, 280)
Instances.TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextBox.Position = UDim2.new(0.0276816618, 0, 0.16358839, 0)
Instances.TextBox.BorderSizePixel = 0
Instances.TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instances.TextBox.TextSize = 14
Instances.TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.TextBox.TextYAlignment = Enum.TextYAlignment.Top
Instances.TextBox.Text = "Welcome To Krampus SS "
Instances.TextBox.TextWrapped = true
Instances.TextBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextBox.TextXAlignment = Enum.TextXAlignment.Left
Instances.TextBox.ClearTextOnFocus = false

Instances.Editor.Name = "Editor"
Instances.Editor.Parent = Instances.Frame
Instances.Editor.Size = UDim2.new(0, 93, 0, 26)
Instances.Editor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Editor.Position = UDim2.new(0.0276816618, 0, 0.0798721537, 0)
Instances.Editor.BorderSizePixel = 0
Instances.Editor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Instances.Editor.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Editor.Text = "Editor"
Instances.Editor.TextSize = 14
Instances.Editor.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.TextLabel.Name = "TextLabel"
Instances.TextLabel.Parent = Instances.Frame
Instances.TextLabel.Size = UDim2.new(0, 578, 0, 22)
Instances.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextLabel.BorderSizePixel = 0
Instances.TextLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instances.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.TextLabel.Text = "Krampus SS"
Instances.TextLabel.TextSize = 14
Instances.TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Console.Name = "Console"
Instances.Console.Parent = Instances.Frame
Instances.Console.Size = UDim2.new(0, 93, 0, 26)
Instances.Console.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Console.Position = UDim2.new(0.202422142, 0, 0.0798721537, 0)
Instances.Console.BorderSizePixel = 0
Instances.Console.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Instances.Console.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Console.Text = "Console"
Instances.Console.TextSize = 14
Instances.Console.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Run.Name = "Run"
Instances.Run.Parent = Instances.Frame
Instances.Run.Size = UDim2.new(0, 93, 0, 26)
Instances.Run.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Run.Position = UDim2.new(0.0276816618, 0, 0.912770391, 0)
Instances.Run.BorderSizePixel = 0
Instances.Run.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Instances.Run.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Run.Text = "Run Script"
Instances.Run.TextSize = 14
Instances.Run.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Clear.Name = "Clear"
Instances.Clear.Parent = Instances.Frame
Instances.Clear.Size = UDim2.new(0, 93, 0, 26)
Instances.Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Clear.Position = UDim2.new(0.202422142, 0, 0.912770391, 0)
Instances.Clear.BorderSizePixel = 0
Instances.Clear.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Instances.Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Clear.Text = "Clear"
Instances.Clear.TextSize = 14
Instances.Clear.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Open.Name = "Open"
Instances.Open.Parent = Instances.Frame
Instances.Open.Size = UDim2.new(0, 93, 0, 26)
Instances.Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Open.Position = UDim2.new(0.385813147, 0, 0.912770391, 0)
Instances.Open.BorderSizePixel = 0
Instances.Open.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Instances.Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Open.Text = "Open"
Instances.Open.TextSize = 14
Instances.Open.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Remotes.Name = "Remotes"
Instances.Remotes.Parent = Instances.Frame

Instances.Close.Name = "Close"
Instances.Close.Parent = Instances.Frame
Instances.Close.Size = UDim2.new(0, 17, 0, 14)
Instances.Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Close.BackgroundTransparency = 1
Instances.Close.Position = UDim2.new(0.970588207, 0, 0, 0)
Instances.Close.BorderSizePixel = 0
Instances.Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Close.Text = "X"
Instances.Close.TextSize = 14
Instances.Close.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Settings.Name = "Settings"
Instances.Settings.Parent = Instances.Frame
Instances.Settings.Size = UDim2.new(0, 93, 0, 26)
Instances.Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Settings.Position = UDim2.new(0.385813147, 0, 0.0798721537, 0)
Instances.Settings.BorderSizePixel = 0
Instances.Settings.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Instances.Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Settings.Text = "Settings"
Instances.Settings.TextSize = 14
Instances.Settings.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.Themes.Name = "Themes"
Instances.Themes.Parent = Instances.Frame
Instances.Themes.Size = UDim2.new(0, 93, 0, 26)
Instances.Themes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Themes.Position = UDim2.new(0.581314862, 0, 0.0798721537, 0)
Instances.Themes.BorderSizePixel = 0
Instances.Themes.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Instances.Themes.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Themes.Text = "Themes"
Instances.Themes.TextSize = 14
Instances.Themes.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

Instances.TextButton.Name = "TextButton"
Instances.TextButton.Parent = Instances.Krampus_SS
Instances.TextButton.Size = UDim2.new(0, 133, 0, 31)
Instances.TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextButton.Position = UDim2.new(0.00640113885, 0, 0.522556305, 0)
Instances.TextButton.BorderSizePixel = 0
Instances.TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instances.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.TextButton.Text = "Open Krampus SS"
Instances.TextButton.TextSize = 14
Instances.TextButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

-- Function "Client"
(function()
	local script = Instance.new("LocalScript", Instances.Run)
	local remotes = script.Parent.Parent.Remotes
	
	script.Parent.MouseButton1Click:Connect(function()
		local textbox = script.Parent.Parent.TextBox
		remotes.EXecuteServer:FireServer(textbox.Text)
	end)
end)()

-- Function "Client"
(function()
	local script = Instance.new("LocalScript", Instances.Clear)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextBox.Text = ""
	end)
end)()

-- Function "Script"
(function()
	local script = Instance.new("Script", Instances.Frame)
	script.Parent.Active = true
	script.Parent.Draggable = true
end)()

-- Function "LocalScript"
(function()
	local script = Instance.new("LocalScript", Instances.Close)
	local frame = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)
	
end)()

-- Function "LocalScript"
(function()
	local script = Instance.new("LocalScript", Instances.TextButton)
	local frame = script.Parent.Parent.Frame
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = true
	end)
	
end)()