local function enviarNotificacao(mensagem)
    game.StarterGui:SetCore("SendNotification", {
        Title = "A U R O R A",
        Text = mensagem,
        Duration = 5
    })
end

local function criarGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0.25, 0, 0.35, 0)
    Frame.Position = UDim2.new(0.375, 0, 0.325, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, 0, 0.15, 0)
    TitleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.Text = "Aurora Exploits"
    TitleLabel.Font = Enum.Font.Arial
    TitleLabel.TextSize = 20
    TitleLabel.Parent = Frame

    local CloudButton = Instance.new("TextButton")
    CloudButton.Size = UDim2.new(0.8, 0, 0.1, 0)
    CloudButton.Position = UDim2.new(0.1, 0, 0.75, 0)
    CloudButton.BackgroundColor3 = Color3.fromRGB(50, 120, 220)
    CloudButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloudButton.Text = "Cloud"
    CloudButton.Font = Enum.Font.Arial
    CloudButton.TextSize = 18
    CloudButton.Parent = Frame

    local ExecuteButton = Instance.new("TextButton")
    ExecuteButton.Size = UDim2.new(0.8, 0, 0.1, 0)
    ExecuteButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    ExecuteButton.BackgroundColor3 = Color3.fromRGB(50, 120, 220)
    ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExecuteButton.Text = "Execute"
    ExecuteButton.Font = Enum.Font.Arial
    ExecuteButton.TextSize = 18
    ExecuteButton.Parent = Frame

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0.9, 0, 0.35, 0)
    TextBox.Position = UDim2.new(0.05, 0, 0.2, 0)
    TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextWrapped = true
    TextBox.Font = Enum.Font.Arial
    TextBox.TextSize = 18
    TextBox.PlaceholderText = "Aurora Loadstrings Lfmao"
    TextBox.Parent = Frame

    local function runCode()
        local code = TextBox.Text
        local success, err = pcall(loadstring(code))
        if not success then
            warn("Error executing code:", err)
        end
    end

    local function executeCloudScript()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
        end)
        if not success then
            warn("Error executing cloud script:", err)
        end
    end

    ExecuteButton.MouseButton1Click:Connect(runCode)
    CloudButton.MouseButton1Click:Connect(executeCloudScript)

    TextBox.Focused:Connect(function()
        TextBox.PlaceholderText = ""
    end)

    TextBox.FocusLost:Connect(function()
        if TextBox.Text == "" then
            TextBox.PlaceholderText = "Aurora Loadstrings Lfmao"
        end
    end)
end

enviarNotificacao("Loading Aurora, Please Wait")

wait(10) 
criarGUI()
