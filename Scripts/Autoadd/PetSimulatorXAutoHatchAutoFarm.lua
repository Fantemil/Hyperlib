-- KEY IS RSHUB217A25432A462D5A



--// Decompiled Code. 
--SCRIPT
if not game:IsLoaded() then
    repeat wait() until game:IsLoaded()
end
wait()

-- Instances:

local ___SG = Instance.new("ScreenGui")
local ___Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Discord = Instance.new("TextButton")
local ___Button = Instance.new("TextButton")
local ___Input = Instance.new("TextBox")

--Properties:

___SG.Name = "___SG"
___SG.Parent = game.CoreGui
___SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

___Frame.Name = "___Frame"
___Frame.Parent = ___SG
___Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
___Frame.BorderColor3 = Color3.fromRGB(29, 29, 29)
___Frame.BorderSizePixel = 3
___Frame.Position = UDim2.new(0.304147512, 0, 0.274814129, 0)
___Frame.Size = UDim2.new(0, 618, 0, 358)

TextLabel.Parent = ___Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
TextLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
TextLabel.Position = UDim2.new(0.370797396, 0, 0.0237214081, 0)
TextLabel.Size = UDim2.new(0, 161, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Welcome To"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(47, 47, 47)
TextLabel.TextWrapped = true

TextLabel_2.Parent = ___Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
TextLabel_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
TextLabel_2.Position = UDim2.new(0.338043571, 0, 0.185014784, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "RS HUB - Cracked, !! JUST PRESS SUBMIT"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = ___Frame
Discord.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Discord.BorderColor3 = Color3.fromRGB(43, 43, 43)
Discord.Position = UDim2.new(0.539579988, 0, 0.698324025, 0)
Discord.Size = UDim2.new(0, 200, 0, 50)
Discord.Font = Enum.Font.SourceSans
Discord.Text = "Get Key"
Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord.TextSize = 23.000

___Button.Name = "___Button"
___Button.Parent = ___Frame
___Button.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
___Button.BorderColor3 = Color3.fromRGB(43, 43, 43)
___Button.Position = UDim2.new(0.138933763, 0, 0.698324025, 0)
___Button.Size = UDim2.new(0, 200, 0, 50)
___Button.Font = Enum.Font.SourceSans
___Button.Text = "Submit"
___Button.TextColor3 = Color3.fromRGB(255, 255, 255)
___Button.TextSize = 23.000
___Button.TextWrapped = true

___Input.Name = "___Input"
___Input.Parent = ___Frame
___Input.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
___Input.BorderColor3 = Color3.fromRGB(43, 43, 43)
___Input.Position = UDim2.new(0.138933763, 0, 0.469273746, 0)
___Input.Size = UDim2.new(0, 448, 0, 47)
___Input.Font = Enum.Font.SourceSans
___Input.PlaceholderText = "Put Key"
___Input.Text = ""
___Input.TextColor3 = Color3.fromRGB(255, 255, 255)
___Input.TextSize = 38.000

----------------------------------------------------------------------

local Key = "RSHUB217A25432A462D5A" --Here The Key

local function YourCode() --Here loadstring

    loadstring(game:HttpGet("https://raw.githubusercontent.com/MHD-444/RS-HUB/main/HUB"))()
    
end

___Button.MouseButton1Click:Connect(function()
       YourCode()
end)

Discord.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/YpbdRjaJGt")
        game.StarterGui:SetCore("SendNotification", {
            Title = "Discord Link";
            Text = "Copied to ClipBoard";})
        Duration = 5;
        end)