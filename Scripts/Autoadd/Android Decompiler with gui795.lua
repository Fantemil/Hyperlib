local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Draggable = true
Frame.Parent = ScreenGui


local UiCorner = Instance.new("UICorner")
UiCorner.CornerRadius = UDim.new(0, 5)
UiCorner.Parent = Frame

local ModuleTextBox = Instance.new("TextBox")
ModuleTextBox.Size = UDim2.new(0.9, 0, 0, 30)
ModuleTextBox.Position = UDim2.new(0.05, 0, 0.05, 0)
ModuleTextBox.PlaceholderText = "Module Name Here..."
ModuleTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ModuleTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ModuleTextBox.Parent = Frame

local DecompileButton = Instance.new("TextButton")
DecompileButton.Size = UDim2.new(0.4, 0, 0, 30)
DecompileButton.Position = UDim2.new(0.3, 0, 0.15, 0)
DecompileButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DecompileButton.BorderSizePixel = 0
DecompileButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DecompileButton.Text = "Decompile"
DecompileButton.Parent = Frame

local ResultTextBox = Instance.new("TextBox")
ResultTextBox.Size = UDim2.new(0.9, 0, 0.7, 0)
ResultTextBox.Position = UDim2.new(0.05, 0, 0.3, 0)
ResultTextBox.BackgroundTransparency = 0.5
ResultTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ResultTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ResultTextBox.TextWrapped = true
ResultTextBox.TextXAlignment = Enum.TextXAlignment.Left
ResultTextBox.TextYAlignment = Enum.TextYAlignment.Top
ResultTextBox.Text = ""
ResultTextBox.Parent = Frame

local function SimpleDecompile(moduleName)
    local success, Module = pcall(require, moduleName)
    if not success then
        return "Module not found or error occurred."
    end
    
    local DecompiledModule = ""
    for i, v in pairs(Module) do
        if typeof(v) == "table" then
            for j, z in pairs(v) do
                if typeof(z) == "table" then
                    for c, b in pairs(z) do
                        DecompiledModule = DecompiledModule .. "\n" .. tostring(c) .. " " .. tostring(b)
                    end
                else
                    DecompiledModule = DecompiledModule .. "\n" .. tostring(j) .. " " .. tostring(z)
                end
            end
        else
            DecompiledModule = DecompiledModule .. "\n" .. tostring(i) .. tostring(v)
        end
    end

    return DecompiledModule
end

DecompileButton.MouseButton1Click:Connect(function()
    local moduleName = ModuleTextBox.Text
    local decompiledText = SimpleDecompile(moduleName)
    ResultTextBox.Text = decompiledText
end)