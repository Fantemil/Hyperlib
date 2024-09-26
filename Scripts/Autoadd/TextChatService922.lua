local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

local ChatWindowConfiguration = TextChatService.ChatWindowConfiguration
local ChatInputBarConfiguration = TextChatService.ChatInputBarConfiguration
local BubbleChatConfiguration = TextChatService.BubbleChatConfiguration
local font = Font.fromEnum(Enum.Font.FredokaOne)

local function WelcomeMessage(player)
    local displayName = player.DisplayName
    TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("Welcome, " .. displayName .. ".")
end

local function FarewellMessage(player)
    local displayName = player.DisplayName
    TextChatService.TextChannels.RBXSystem:DisplaySystemMessage("Farewell, " .. displayName .. ".")
end

WelcomeMessage(Players.LocalPlayer)
Players.PlayerAdded:Connect(WelcomeMessage)
Players.PlayerRemoving:Connect(FarewellMessage)

ChatWindowConfiguration.HeightScale = 1.2
ChatWindowConfiguration.WidthScale = 1.2
ChatWindowConfiguration.TextStrokeTransparency = 1
ChatWindowConfiguration.TextSize = 14.3
ChatWindowConfiguration.FontFace = font

ChatInputBarConfiguration.FontFace = font
ChatInputBarConfiguration.TextStrokeTransparency = 1

BubbleChatConfiguration.TailVisible = false
BubbleChatConfiguration.BubblesSpacing = 8
BubbleChatConfiguration.FontFace = font
BubbleChatConfiguration.TextSize = 16
BubbleChatConfiguration.TextColor3 = Color3.fromRGB(255, 255, 255) 
BubbleChatConfiguration.BackgroundColor3 = Color3.fromRGB(32, 32, 32)