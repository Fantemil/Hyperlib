--verified by stopthe_stupidbansððð
if not getgenv().MoreUNC then
	oldprint = print
	oldwarn = warn
	olderror = error
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-MoreUNC-13110"))()
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "MoreUNC Injected.",
		Text = "creds to vxsty", 
		Button1 = "ok",
		Duration = 9999999999999
	})
end
local Instances = {
	Executor = Instance.new("ScreenGui"),
	Frame1 = Instance.new("Frame"),
	Frame2 = Instance.new("Frame"),
	TextBox = Instance.new("TextBox"),
	TextButton = Instance.new("TextButton"),
}

Instances.Executor.Name = "Executor"
Instances.Executor.Parent = game:GetService("CoreGui")
Instances.Executor.IgnoreGuiInset = true
Instances.Executor.DisplayOrder = 1999999999

Instances.Frame1.Name = "Frame1"
Instances.Frame1.Parent = Instances.Executor
Instances.Frame1.Size = UDim2.new(0, 310, 0, 249)
Instances.Frame1.Position = UDim2.new(0.154684097, 0, 0.111764707, 0)
Instances.Frame1.BackgroundColor3 = Color3.fromRGB(96, 178, 255)
Instances.Frame1.Active = true
Instances.Frame1.Draggable = true

Instances.Frame2.Name = "Frame2"
Instances.Frame2.Parent = Instances.Frame1
Instances.Frame2.Size = UDim2.new(0, 310, 0, 180)
Instances.Frame2.Position = UDim2.new(0, 0, 0.0910642669, 0)
Instances.Frame2.BackgroundColor3 = Color3.fromRGB(143, 203, 255)

Instances.TextBox.Name = "TextBox"
Instances.TextBox.Parent = Instances.Frame2
Instances.TextBox.Size = UDim2.new(0, 303, 0, 179)
Instances.TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextBox.BackgroundTransparency = 1
Instances.TextBox.Position = UDim2.new(0.0217092205, 0, 0, 0)
Instances.TextBox.BorderSizePixel = 0
Instances.TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.TextBox.MultiLine = true
Instances.TextBox.CursorPosition = -1
Instances.TextBox.TextSize = 15
Instances.TextBox.RichText = true
Instances.TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextBox.TextYAlignment = Enum.TextYAlignment.Top
Instances.TextBox.Text = "loadstring(httpget(\"https://raw.githubusercontent.com/sauga77kjk/RobloxExploitRepository/main/CooliesYield\"))() --executes coolies yield"
Instances.TextBox.TextWrapped = true
Instances.TextBox.TextTruncate = Enum.TextTruncate.AtEnd
Instances.TextBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextBox.TextXAlignment = Enum.TextXAlignment.Left
Instances.TextBox.ClearTextOnFocus = false

Instances.TextButton.Name = "TextButton"
Instances.TextButton.Parent = Instances.Frame1
Instances.TextButton.Size = UDim2.new(0, 145, 0, 32)
Instances.TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextButton.Position = UDim2.new(0.254838705, 0, 0.843373477, 0)
Instances.TextButton.BorderSizePixel = 0
Instances.TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.TextButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Instances.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.TextButton.Text = "execute"
Instances.TextButton.TextSize = 20
Instances.TextButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.TextButton.MouseButton1Click:Connect(function()
	assert(loadstring(Instances.TextBox.Text))()
end)