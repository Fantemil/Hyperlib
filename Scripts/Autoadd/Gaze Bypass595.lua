local gui = Instance.new("ScreenGui")
local GazerMain = Instance.new("Frame")
local GazerTitle = Instance.new("TextLabel")
local TextBax = Instance.new("TextBox")
local chat = Instance.new("TextButton")


gui.Name = "GazerGui"
gui.Parent = cloneref(game:GetService("CoreGui"))
GazerMain.Size = UDim2.new(0.5, 0, 0.5, 0)
GazerMain.Position = UDim2.new(0.25, 0, 0.25, 0)
GazerMain.BackgroundColor3 = Color3.new(1, 1, 1)
GazerMain.BorderColor3 = Color3.new(0, 0, 0)
GazerMain.BorderSizePixel = 1
GazerMain.Active = true
GazerMain.Draggable = true
GazerMain.Parent = gui
GazerTitle.Size = UDim2.new(1, 0, 0.2, 0)
GazerTitle.Position = UDim2.new(0, 0, 0, 0)
GazerTitle.BackgroundColor3 = Color3.new(0, 0, 0)
GazerTitle.BorderColor3 = Color3.new(0, 0, 0)
GazerTitle.BorderSizePixel = 1
GazerTitle.Text = "Gaze Bypass (Fluxus Recommended)"
GazerTitle.TextSize = 14
GazerTitle.TextColor3 = Color3.new(1, 1, 1)
GazerTitle.Font = Enum.Font.Bodoni
GazerTitle.Parent = GazerMain
TextBax.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBax.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBax.BackgroundColor3 = Color3.new(0, 0, 0)
TextBax.BorderColor3 = Color3.new(0, 0, 0)
TextBax.BorderSizePixel = 1
TextBax.PlaceholderText = "(Chat)"
TextBax.TextColor3 = Color3.new(1, 1, 1)
TextBax.Font = Enum.Font.Code
TextBax.Text = ""
TextBax.TextSize = 15
TextBax.Parent = GazerMain
chat.Size = UDim2.new(0.3, 0, 0.2, 0)
chat.Position = UDim2.new(0.35, 0, 0.7, 0)
chat.BackgroundColor3 = Color3.new(0, 0, 0)
chat.BorderColor3 = Color3.new(0, 0, 0)
chat.BorderSizePixel = 1
chat.Text = "Chat"
chat.TextSize = 14
chat.TextColor3 = Color3.new(1, 1, 1)
chat.Font = Enum.Font.Code
chat.Parent = GazerMain




local function Bypass(input)
    local result = ""
    local firstSpace = input:find(" ")  -- Find the position of the first space
    local firstWord = ""

    -- Extract the first word using basic string manipulation
    if firstSpace then
        firstWord = input:sub(1, firstSpace - 1)
    else
        firstWord = input  -- If no space is found, the entire input is the first word
    end

    -- Check for specific words (case-insensitive)
    if firstWord:lower() == "fuck" or firstWord:lower() == "nigga" or firstWord:lower() == "shit" or firstWord:lower() == "bitch" or firstWord:lower() == "discord" or firstWord:lower() == "youtube" then
        result = "I]"
    end

    for i = 1, #input do
        local char = input:sub(i, i)

        if char == " " then
            char = ""
        end

        result = result .. char

        -- Add "ï¿´" after every odd-indexed character
        if i % 2 ~= 0 then
            result = result .. "ï¿´"
        end
    end
local A_1 = result
    
    local A_2 = "All"
    if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(A_1, A_2)
    end
end
    




chat.MouseButton1Click:Connect(function()
    local inputString = TextBax.Text
    Bypass(inputString)
    
end)