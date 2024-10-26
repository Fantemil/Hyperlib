
-- MADE BY HELLOHELLOHELL012321
-- WITH HELP FROM N0RAXD
loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/discordpopup/main/discord-popup"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua"))()
local G2L = {}
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(253, 198, 255)
G2L["2"]["Size"] = UDim2.new(0, 316, 0, 128)
G2L["2"]["Position"] = UDim2.new(0.5, -150, 0.5, -50)
G2L["2"]["BorderColor3"] = Color3.fromRGB(253, 254, 255)
G2L["3"] = Instance.new("LocalScript", G2L["2"])
G2L["3"]["Name"] = [[Drag]]
G2L["4"] = Instance.new("UICorner", G2L["2"])
G2L["4"]["CornerRadius"] = UDim.new(0, 4)
G2L["5"] = Instance.new("ImageLabel", G2L["2"])
G2L["5"]["BorderSizePixel"] = 0
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["5"]["Image"] = [[rbxassetid://18787314969]]
G2L["5"]["Size"] = UDim2.new(0, 316, 0, 128)
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["5"]["LayoutOrder"] = -6
G2L["6"] = Instance.new("UICorner", G2L["5"])
G2L["6"]["CornerRadius"] = UDim.new(0, 4)
G2L["7"] = Instance.new("TextBox", G2L["5"])
G2L["7"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255)
G2L["7"]["BorderSizePixel"] = 0
G2L["7"]["TextWrapped"] = true
G2L["7"]["TextTransparency"] = 0.41
G2L["7"]["TextScaled"] = true
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 177, 146)
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["7"]["PlaceholderText"] = [[hate speech here]]
G2L["7"]["Size"] = UDim2.new(0.84333, -20, 0.33938, -10)
G2L["7"]["Position"] = UDim2.new(0, 34, 0, 47)
G2L["7"]["Text"] = [[]]
G2L["7"]["LayoutOrder"] = 8
G2L["7"]["BackgroundTransparency"] = 0.2
G2L["8"] = Instance.new("UICorner", G2L["7"])
G2L["8"]["CornerRadius"] = UDim.new(0, 2)
G2L["9"] = Instance.new("TextButton", G2L["5"])
G2L["9"]["TextWrapped"] = true
G2L["9"]["BorderSizePixel"] = 0
G2L["9"]["TextSize"] = 28
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 231, 203)
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["9"]["Size"] = UDim2.new(0.37709, -20, 0.27187, -10)
G2L["9"]["BackgroundTransparency"] = 0.2
G2L["9"]["LayoutOrder"] = 5
G2L["9"]["Text"] = [[send !! :3]]
G2L["9"]["Position"] = UDim2.new(0.28447, 10, 0.71938, 0)
G2L["a"] = Instance.new("LocalScript", G2L["9"])
G2L["b"] = Instance.new("UICorner", G2L["9"])
G2L["b"]["CornerRadius"] = UDim.new(0, 2)
G2L["c"] = Instance.new("LocalScript", G2L["9"])
G2L["c"]["Enabled"] = false
G2L["c"]["Disabled"] = true
G2L["d"] = Instance.new("TextLabel", G2L["5"])
G2L["d"]["TextWrapped"] = true
G2L["d"]["TextStrokeTransparency"] = 0.73
G2L["d"]["BorderSizePixel"] = 0
G2L["d"]["TextScaled"] = true
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(173, 255, 255)
G2L["d"]["TextSize"] = 14
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["d"]["BackgroundTransparency"] = 0.45
G2L["d"]["Size"] = UDim2.new(0, 316, 0, 34)
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["d"]["Text"] = [[kawaii bypass !!1]]
G2L["e"] = Instance.new("UICorner", G2L["d"])
G2L["e"]["CornerRadius"] = UDim.new(0, 4)
G2L["f"] = Instance.new("TextButton", G2L["2"])
G2L["f"]["TextWrapped"] = true
G2L["f"]["BorderSizePixel"] = 0
G2L["f"]["TextSize"] = 12
G2L["f"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
G2L["f"]["TextScaled"] = true
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 139, 149)
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["f"]["Size"] = UDim2.new(0, 83, 0, 19)
G2L["f"]["BackgroundTransparency"] = 0.3
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["f"]["Text"] = [[look at cute bg !]]
G2L["f"]["Position"] = UDim2.new(0, 0, 0.85156, 0)
G2L["10"] = Instance.new("UICorner", G2L["f"])
G2L["10"]["CornerRadius"] = UDim.new(0, 2)
G2L["11"] = Instance.new("LocalScript", G2L["f"])
 
local function C_3()
    local script = G2L["3"]
    local UserInputService = game:GetService("UserInputService")
    local gui = script.Parent
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end
                )
            end
        end
    )
    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end
    )
    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end
    )
end
task.spawn(C_3)
local function C_a()
    local script = G2L["a"]
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local TextChatService = game:GetService("TextChatService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local StarterGui = game:GetService("StarterGui")
    local textButton = script.Parent
    local textBox = script.Parent.Parent.TextBox
    local chat = TextChatService.ChatInputBarConfiguration.TargetTextChannel
    local function replace(str, find_str, replace_str)
        local escaped_find_str = find_str:gsub("[%-%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0")
        return str:gsub(escaped_find_str, replace_str)
    end
    local letters = {
        ["A"] = "Î±",
        ["a"] = "Î±",
        ["B"] = "b",
        ["b"] = "b",
        ["C"] = "Ñ",
        ["c"] = "Ñ",
        ["D"] = "Ô",
        ["d"] = "Ô",
        ["E"] = "È©",
        ["e"] = "È©",
        ["F"] = "Ò",
        ["f"] = "Ò",
        ["G"] = "Ô",
        ["g"] = "Ô",
        ["H"] = "Ò»",
        ["h"] = "Ò»",
        ["I"] = "i",
        ["i"] = "i",
        ["J"] = "Ñ",
        ["j"] = "Ñ",
        ["K"] = "Îº",
        ["k"] = "Îº",
        ["L"] = "L",
        ["l"] = "L",
        ["M"] = "Ð¼",
        ["m"] = "Ð¼",
        ["N"] = "n",
        ["n"] = "n",
        ["O"] = "ð¾",
        ["o"] = "ð¾",
        ["P"] = "Ñ",
        ["p"] = "Ñ",
        ["Q"] = "Ô",
        ["q"] = "Ô",
        ["R"] = "r",
        ["r"] = "r",
        ["S"] = "Å",
        ["s"] = "Å",
        ["T"] = "t",
        ["t"] = "t",
        ["U"] = "u",
        ["u"] = "u",
        ["V"] = "Ñµ",
        ["v"] = "Ñµ",
        ["W"] = "Ô",
        ["w"] = "Ô",
        ["X"] = "ð",
        ["x"] = "ð",
        ["Y"] = "y",
        ["y"] = "y",
        ["Z"] = "á´¢",
        ["z"] = "á´¢",
        [" "] = " "
    }
    local function filter(message)
        for search, replacement in pairs(letters) do
            message = replace(message, search, replacement)
        end
        return message
    end
    local function showNotification(title, text)
        StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = 5})
    end
    local function sendChat(msg)
        local filteredMessage = game:GetService("Chat"):FilterStringForBroadcast(msg, LocalPlayer)
        local tagged = filteredMessage ~= msg
        if tagged then
            showNotification("chat tagged", "it got tagged man i hate to say it")
            textBox.Text = ""
        else
            if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
                ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg, "All")
            else
                chat:SendAsync(msg)
            end
            textBox.Text = ""
        end
    end
    local function processText()
        local inputText = textBox.Text
        local convertedText = filter(inputText)
        sendChat(convertedText)
    end
    textButton.MouseButton1Click:Connect(processText)
    textBox.FocusLost:Connect(
        function(enterPressed)
            if enterPressed then
                processText()
            end
        end
    )
end
task.spawn(C_a)
local function C_11()
    local script = G2L["11"]
    local main = script.Parent.Parent.ImageLabel
    local button = script.Parent
    local function toggleVisibility()
        for _, child in ipairs(main:GetChildren()) do
            if child:IsA("TextBox") or child:IsA("TextButton") or child:IsA("TextLabel") then
                child.Visible = not child.Visible
            end
        end
    end
    button.MouseButton1Click:Connect(toggleVisibility)
end
task.spawn(C_11)
return G2L["1"], require