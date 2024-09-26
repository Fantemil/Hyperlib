local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")

--[[
 GXL || MADE BY BALLSMAN3761!!
 Converted 70 instances in 0.02 seconds
]]

local GXL = {
 ["ExperienceChat"] = Instance.new("ScreenGui"),
 ["CaretPadding"] = Instance.new("UIPadding"),
 ["Layout"] = Instance.new("UIListLayout"),
 ["CaretPadding_2"] = Instance.new("UIPadding"),
 ["Layout_2"] = Instance.new("UIListLayout"),
 ["CaretPadding_3"] = Instance.new("UIPadding"),
 ["Layout_3"] = Instance.new("UIListLayout"),
 ["appLayout"] = Instance.new("Frame"),
 ["chatInputBar"] = Instance.new("Frame"),
 ["Background"] = Instance.new("Frame"),
 ["Corner"] = Instance.new("UICorner"),
 ["Border"] = Instance.new("UIStroke"),
 ["Container"] = Instance.new("Frame"),
 ["TextContainer"] = Instance.new("Frame"),
 ["UIPadding"] = Instance.new("UIPadding"),
 ["TextBoxContainer"] = Instance.new("Frame"),
 ["TextBox"] = Instance.new("TextBox"),
 ["TargetChannelChip"] = Instance.new("TextButton"),
 ["SendButton"] = Instance.new("TextButton"),
 ["SendIcon"] = Instance.new("ImageLabel"),
 ["Layout_4"] = Instance.new("UIListLayout"),
 ["AutocompleteDropdown"] = Instance.new("Frame"),
 ["UISizeConstraint"] = Instance.new("UISizeConstraint"),
 ["ScrollBarFrame"] = Instance.new("Frame"),
 ["Corner_2"] = Instance.new("UICorner"),
 ["Border_2"] = Instance.new("UIStroke"),
 ["ScrollViewFrame"] = Instance.new("Frame"),
 ["ScrollView"] = Instance.new("ScrollingFrame"),
 ["OffsetFrame"] = Instance.new("Frame"),
 ["_layout"] = Instance.new("UIListLayout"),
 ["UISizeConstraint_2"] = Instance.new("UISizeConstraint"),
 ["UIPadding_2"] = Instance.new("UIPadding"),
 ["topBorder"] = Instance.new("ImageLabel"),
 ["uiSizeConstraint"] = Instance.new("UISizeConstraint"),
 ["chatWindow"] = Instance.new("Frame"),
 ["uiSizeConstraint_2"] = Instance.new("UISizeConstraint"),
 ["scrollingView"] = Instance.new("ImageButton"),
 ["bottomLockedScrollView"] = Instance.new("Frame"),
 ["RCTScrollView"] = Instance.new("ScrollingFrame"),
 ["RCTScrollContentView"] = Instance.new("Frame"),
 ["VerticalLayout"] = Instance.new("UIListLayout"),
 ["ContentDisplayLayout"] = Instance.new("UIListLayout"),
 ["TextLabel"] = Instance.new("Frame"),
 ["TextMessage"] = Instance.new("TextLabel"),
 ["_layout_2"] = Instance.new("UIListLayout"),
 ["ContentDisplayer"] = Instance.new("Frame"),
 ["TextLabel_2"] = Instance.new("Frame"),
 ["TextMessage_2"] = Instance.new("TextLabel"),
 ["padding"] = Instance.new("UIPadding"),
 ["bottomBorder"] = Instance.new("ImageLabel"),
 ["uiSizeConstraint_3"] = Instance.new("UISizeConstraint"),
 ["channelBar"] = Instance.new("Frame"),
 ["HorizontalBar"] = Instance.new("Frame"),
 ["Background_2"] = Instance.new("Frame"),
 ["BottomBorder"] = Instance.new("Frame"),
 ["ContentContainer"] = Instance.new("Frame"),
 ["_layout_3"] = Instance.new("UIListLayout"),
 ["TopCorner"] = Instance.new("ImageLabel"),
 ["layout"] = Instance.new("UIListLayout"),
 ["uiSizeConstraint_4"] = Instance.new("UISizeConstraint"),
 ["topPadding"] = Instance.new("Frame")
}
GXL["ExperienceChat"]["Parent"] = game:GetService("CoreGui")
GXL["ExperienceChat"]["Name"] = 'ExperienceChat'
GXL["ExperienceChat"]["DisplayOrder"] = -1

GXL["appLayout"]["Parent"] = GXL["ExperienceChat"]
GXL["appLayout"]["Name"] = 'appLayout'
GXL["appLayout"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
GXL["appLayout"]["BackgroundTransparency"] = 1
GXL["appLayout"]["Position"] = UDim2.new(0.000000, 8.000000, 0.000000, 4.000000)
GXL["appLayout"]["Size"] = UDim2.new(0.400000, 0.000000, 0.168750, 0.000000)

GXL["chatInputBar"]["Parent"] = GXL["appLayout"]
GXL["chatInputBar"]["Name"] = 'chatInputBar'
GXL["chatInputBar"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["chatInputBar"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["chatInputBar"]["BackgroundTransparency"] = 0.30000001192092896
GXL["chatInputBar"]["BorderSizePixel"] = 0
GXL["chatInputBar"]["LayoutOrder"] = 3
GXL["chatInputBar"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

GXL["Background"]["Parent"] = GXL["chatInputBar"]
GXL["Background"]["Name"] = 'Background'
GXL["Background"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["Background"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["Background"]["BackgroundTransparency"] = 1
GXL["Background"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

GXL["Corner"]["Parent"] = GXL["Background"]
GXL["Corner"]["Name"] = 'Corner'
GXL["Corner"]["CornerRadius"] = UDim.new(0.000000, 3.000000)

GXL["Border"]["Parent"] = GXL["Background"]
GXL["Border"]["Name"] = 'Border'
GXL["Border"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
GXL["Border"]["Color"] = Color3.fromRGB(255, 255, 255)

GXL["Container"]["Parent"] = GXL["Background"]
GXL["Container"]["Name"] = 'Container'
GXL["Container"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["Container"]["BackgroundTransparency"] = 1
GXL["Container"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

GXL["TextContainer"]["Parent"] = GXL["Container"]
GXL["TextContainer"]["Name"] = 'TextContainer'
GXL["TextContainer"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["TextContainer"]["BackgroundTransparency"] = 1
GXL["TextContainer"]["Size"] = UDim2.new(1.000000, -30.000000, 0.000000, 0.000000)

GXL["UIPadding"]["Parent"] = GXL["TextContainer"]
GXL["UIPadding"]["Name"] = 'UIPadding'
GXL["UIPadding"]["PaddingBottom"] = UDim.new(0.000000, 10.000000)
GXL["UIPadding"]["PaddingLeft"] = UDim.new(0.000000, 10.000000)
GXL["UIPadding"]["PaddingRight"] = UDim.new(0.000000, 10.000000)
GXL["UIPadding"]["PaddingTop"] = UDim.new(0.000000, 10.000000)

GXL["TextBoxContainer"]["Parent"] = GXL["TextContainer"]
GXL["TextBoxContainer"]["Name"] = 'TextBoxContainer'
GXL["TextBoxContainer"]["AnchorPoint"] = Vector2.new(1.000000, 0.000000)
GXL["TextBoxContainer"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["TextBoxContainer"]["BackgroundTransparency"] = 1
GXL["TextBoxContainer"]["Position"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)
GXL["TextBoxContainer"]["Size"] = UDim2.new(1.000000, -8.000000, 0.000000, 0.000000)

GXL["TextBox"]["Parent"] = GXL["TextBoxContainer"]
GXL["TextBox"]["Name"] = 'TextBox'
GXL["TextBox"]["ClearTextOnFocus"] = false
GXL["TextBox"]["FontFace"] = Font.new("rbxassetid://16658221428", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
GXL["TextBox"]["FontSize"] = Enum.FontSize.Size18
GXL["TextBox"]["OverlayNativeInput"] = true
GXL["TextBox"]["PlaceholderColor3"] = Color3.fromRGB(204, 204, 204)
GXL["TextBox"]["PlaceholderText"] = 'To chat click here or press / key'
GXL["TextBox"]["Text"] = ''
GXL["TextBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
GXL["TextBox"]["TextSize"] = 16
GXL["TextBox"]["TextStrokeTransparency"] = 0.5
GXL["TextBox"]["TextTransparency"] = 0.5
GXL["TextBox"]["TextWrap"] = true
GXL["TextBox"]["TextWrapped"] = true
GXL["TextBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
GXL["TextBox"]["TextYAlignment"] = Enum.TextYAlignment.Top
GXL["TextBox"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["TextBox"]["BackgroundTransparency"] = 1
GXL["TextBox"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

function focuslost(e)
        if e == false then
            return
        end
        local function dance()
            if GXL["TextBox"].Text:sub(1, 8) == "/e dance" then
                local dance = {
                    [""] = "http://www.roblox.com/asset/?id=507772104",
                    ["1"] = "http://www.roblox.com/asset/?id=507772104",
                    ["2"] = "http://www.roblox.com/asset/?id=507776879",
                    ["3"] = "http://www.roblox.com/asset/?id=507777623"
                }
                if dance[GXL["TextBox"].Text:sub(9, 9)] then
                    local char = game:GetService("Players").LocalPlayer.Character
                    if char and char:FindFirstChildOfClass("Humanoid") then
                        local anim = Instance.new("Animation")
                        anim.AnimationId = dance[GXL["TextBox"].Text:sub(9, 9)]
                        local loaded = char:FindFirstChildOfClass("Humanoid"):LoadAnimation(anim)
                        loaded:Play()
                        char:FindFirstChild("Humanoid").Changed:Connect(function(a) if a == 'MoveDirection' or a == 'Sit' or a == 'Jump' then loaded:Stop() end end)
                        GXL["TextBox"].Text = ''
                    end
                end
            end
        end
        dance()
        if GXL["TextBox"].Text == '' then return end
        if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
            local Stuff = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
            if not Stuff then
                error("Failed to obtain the DefaultChatSystemChatEvents folder.", 1)
            end
            local Stuff2 = Stuff:FindFirstChild("SayMessageRequest")
            if not Stuff2 then
                error("Failed to obtain the SayMessageRequest event.", 1)
            end
            Stuff2:FireServer(GXL["TextBox"].Text, "All")
        else
            for _, v in next, TextChatService.TextChannels:GetChildren() do
             if v:FindFirstChild(game:GetService("Players").LocalPlayer.Name) and v.Name ~= 'RBXSystem' then
              v:SendAsync(GXL["TextBox"].Text)
              break
             end
            end
        end
        GXL["TextBox"].Text = ''
end

GXL["TextBox"].FocusLost:Connect(focuslost)

GXL["TargetChannelChip"]["Parent"] = GXL["TextContainer"]
GXL["TargetChannelChip"]["Name"] = 'TargetChannelChip'
GXL["TargetChannelChip"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
GXL["TargetChannelChip"]["FontSize"] = Enum.FontSize.Size14
GXL["TargetChannelChip"]["Text"] = ''
GXL["TargetChannelChip"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
GXL["TargetChannelChip"]["TextSize"] = 14
GXL["TargetChannelChip"]["TextWrap"] = true
GXL["TargetChannelChip"]["TextWrapped"] = true
GXL["TargetChannelChip"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["TargetChannelChip"]["BackgroundTransparency"] = 1
GXL["TargetChannelChip"]["Size"] = UDim2.new(0.000000, 0.000000, 1.000000, 0.000000)
GXL["TargetChannelChip"]["Visible"] = false

GXL["SendButton"]["Parent"] = GXL["Container"]
GXL["SendButton"]["Name"] = 'SendButton'
GXL["SendButton"]["FontFace"] = Font.new("rbxasset://fonts/families/LegacyArial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
GXL["SendButton"]["Text"] = ''
GXL["SendButton"]["AnchorPoint"] = Vector2.new(1.000000, 0.000000)
GXL["SendButton"]["BackgroundTransparency"] = 1
GXL["SendButton"]["LayoutOrder"] = 2
GXL["SendButton"]["Position"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)
GXL["SendButton"]["Size"] = UDim2.new(0.000000, 30.000000, 1.000000, 0.000000)

GXL["SendButton"].MouseButton1Click:Connect(focuslost)

GXL["SendIcon"]["Parent"] = GXL["SendButton"]
GXL["SendIcon"]["Name"] = 'SendIcon'
GXL["SendIcon"]["Image"] = 'rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/AppImageAtlas/img_set_1x_5.png'
GXL["SendIcon"]["ImageColor3"] = Color3.fromRGB(204, 204, 204)
GXL["SendIcon"]["ImageRectOffset"] = Vector2.new(378.000000, 426.000000)
GXL["SendIcon"]["ImageRectSize"] = Vector2.new(36.000000, 36.000000)
GXL["SendIcon"]["ImageTransparency"] = 0.5
GXL["SendIcon"]["BackgroundTransparency"] = 1
GXL["SendIcon"]["Size"] = UDim2.new(0.000000, 30.000000, 0.000000, 30.000000)

GXL["Layout_4"]["Parent"] = GXL["SendButton"]
GXL["Layout_4"]["Name"] = 'Layout'
GXL["Layout_4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
GXL["Layout_4"]["VerticalAlignment"] = Enum.VerticalAlignment.Center

GXL["AutocompleteDropdown"]["Parent"] = GXL["chatInputBar"]
GXL["AutocompleteDropdown"]["Name"] = 'AutocompleteDropdown'
GXL["AutocompleteDropdown"]["AnchorPoint"] = Vector2.new(0.000000, 1.000000)
GXL["AutocompleteDropdown"]["BackgroundTransparency"] = 1
GXL["AutocompleteDropdown"]["Size"] = UDim2.new(0.950000, 0.000000, 0.000000, 0.000000)
GXL["AutocompleteDropdown"]["Visible"] = false
GXL["AutocompleteDropdown"]["ZIndex"] = 2

GXL["UISizeConstraint"]["Parent"] = GXL["AutocompleteDropdown"]
GXL["UISizeConstraint"]["Name"] = 'UISizeConstraint'
GXL["UISizeConstraint"]["MaxSize"] = Vector2.new(475.000000, 164.193756)

GXL["ScrollBarFrame"]["Parent"] = GXL["AutocompleteDropdown"]
GXL["ScrollBarFrame"]["Name"] = 'ScrollBarFrame'
GXL["ScrollBarFrame"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["ScrollBarFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)
GXL["ScrollBarFrame"]["ZIndex"] = 2

GXL["Corner_2"]["Parent"] = GXL["ScrollBarFrame"]
GXL["Corner_2"]["Name"] = 'Corner'
GXL["Corner_2"]["CornerRadius"] = UDim.new(0.000000, 3.000000)

GXL["Border_2"]["Parent"] = GXL["ScrollBarFrame"]
GXL["Border_2"]["Name"] = 'Border'
GXL["Border_2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
GXL["Border_2"]["Color"] = Color3.fromRGB(255, 255, 255)

GXL["ScrollViewFrame"]["Parent"] = GXL["ScrollBarFrame"]
GXL["ScrollViewFrame"]["Name"] = 'ScrollViewFrame'
GXL["ScrollViewFrame"]["BackgroundTransparency"] = 1
GXL["ScrollViewFrame"]["ClipsDescendants"] = true
GXL["ScrollViewFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)
GXL["ScrollViewFrame"]["ZIndex"] = 2

GXL["ScrollView"]["Parent"] = GXL["ScrollViewFrame"]
GXL["ScrollView"]["Name"] = 'ScrollView'
GXL["ScrollView"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
GXL["ScrollView"]["CanvasSize"] = UDim2.new(0.000000, 0.000000, 0.000000, 0.000000)
GXL["ScrollView"]["ScrollBarThickness"] = 4
GXL["ScrollView"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always
GXL["ScrollView"]["BackgroundTransparency"] = 1
GXL["ScrollView"]["BorderSizePixel"] = 0
GXL["ScrollView"]["ClipsDescendants"] = false
GXL["ScrollView"]["Size"] = UDim2.new(1.000000, -4.000000, 1.000000, 0.000000)
GXL["ScrollView"]["ZIndex"] = 2

GXL["OffsetFrame"]["Parent"] = GXL["ScrollView"]
GXL["OffsetFrame"]["Name"] = 'OffsetFrame'
GXL["OffsetFrame"]["BackgroundTransparency"] = 1
GXL["OffsetFrame"]["Size"] = UDim2.new(1.000000, 8.000000, 1.000000, 0.000000)

GXL["_layout"]["Parent"] = GXL["OffsetFrame"]
GXL["_layout"]["Name"] = 'layout'
GXL["_layout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

GXL["UISizeConstraint_2"]["Parent"] = GXL["chatInputBar"]
GXL["UISizeConstraint_2"]["Name"] = 'UISizeConstraint'
GXL["UISizeConstraint_2"]["MaxSize"] = Vector2.new(475.000000, math.huge)

GXL["UIPadding_2"]["Parent"] = GXL["chatInputBar"]
GXL["UIPadding_2"]["Name"] = 'UIPadding'
GXL["UIPadding_2"]["PaddingBottom"] = UDim.new(0.000000, 1.000000)
GXL["UIPadding_2"]["PaddingLeft"] = UDim.new(0.000000, 8.000000)
GXL["UIPadding_2"]["PaddingRight"] = UDim.new(0.000000, 8.000000)
GXL["UIPadding_2"]["PaddingTop"] = UDim.new(0.000000, 8.000000)

GXL["topBorder"]["Parent"] = GXL["appLayout"]
GXL["topBorder"]["Name"] = 'topBorder'
GXL["topBorder"]["Image"] = 'rbxasset://textures/ui/TopRoundedRect8px.png'
GXL["topBorder"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
GXL["topBorder"]["ImageTransparency"] = 0.30000001192092896
GXL["topBorder"]["ScaleType"] = Enum.ScaleType.Slice
GXL["topBorder"]["SliceCenter"] = Rect.new(8, 8, 24, 32)
GXL["topBorder"]["BackgroundTransparency"] = 1
GXL["topBorder"]["LayoutOrder"] = 1
GXL["topBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

GXL["uiSizeConstraint"]["Parent"] = GXL["topBorder"]
GXL["uiSizeConstraint"]["Name"] = 'uiSizeConstraint'
GXL["uiSizeConstraint"]["MaxSize"] = Vector2.new(475.000000, math.huge)

GXL["chatWindow"]["Parent"] = GXL["appLayout"]
GXL["chatWindow"]["Name"] = 'chatWindow'
GXL["chatWindow"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["chatWindow"]["BackgroundTransparency"] = 0.30000001192092896
GXL["chatWindow"]["BorderSizePixel"] = 0
GXL["chatWindow"]["LayoutOrder"] = 2
GXL["chatWindow"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["uiSizeConstraint_2"]["Parent"] = GXL["chatWindow"]
GXL["uiSizeConstraint_2"]["Name"] = 'uiSizeConstraint'
GXL["uiSizeConstraint_2"]["MaxSize"] = Vector2.new(475.000000, 275.000000)

GXL["scrollingView"]["Parent"] = GXL["chatWindow"]
GXL["scrollingView"]["Name"] = 'scrollingView'
GXL["scrollingView"]["BackgroundTransparency"] = 1
GXL["scrollingView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["bottomLockedScrollView"]["Parent"] = GXL["scrollingView"]
GXL["bottomLockedScrollView"]["Name"] = 'bottomLockedScrollView'
GXL["bottomLockedScrollView"]["BackgroundTransparency"] = 1
GXL["bottomLockedScrollView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["RCTScrollView"]["Parent"] = GXL["bottomLockedScrollView"]
GXL["RCTScrollView"]["Name"] = 'RCTScrollView'
GXL["RCTScrollView"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY
GXL["RCTScrollView"]["CanvasSize"] = UDim2.new(0.000000, 0.000000, 0.000000, 0.000000)
GXL["RCTScrollView"]["ScrollBarThickness"] = 8
GXL["RCTScrollView"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
GXL["RCTScrollView"]["BackgroundTransparency"] = 1
GXL["RCTScrollView"]["BorderSizePixel"] = 0
GXL["RCTScrollView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["RCTScrollContentView"]["Parent"] = GXL["RCTScrollView"]
GXL["RCTScrollContentView"]["Name"] = 'RCTScrollContentView'
GXL["RCTScrollContentView"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["RCTScrollContentView"]["BackgroundTransparency"] = 1
GXL["RCTScrollContentView"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["VerticalLayout"]["Parent"] = GXL["RCTScrollContentView"]
GXL["VerticalLayout"]["Name"] = 'VerticalLayout'
GXL["VerticalLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
GXL["VerticalLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

GXL["_layout_2"]["Parent"] = GXL["RCTScrollContentView"]
GXL["_layout_2"]["Name"] = 'layout'
GXL["_layout_2"]["SortOrder"] = Enum.SortOrder.LayoutOrder
GXL["_layout_2"]["Padding"] = UDim.new(0.000000, 4.000000)

GXL["ContentDisplayer"]["Parent"] = GXL["RCTScrollContentView"]
GXL["ContentDisplayer"]["Name"] = 'ContentDisplayer'
GXL["ContentDisplayer"]["AutomaticSize"] = Enum.AutomaticSize.Y
GXL["ContentDisplayer"]["BackgroundTransparency"] = 1
GXL["ContentDisplayer"]["LayoutOrder"] = 2
GXL["ContentDisplayer"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

GXL["ContentDisplayLayout"]['Parent'] = GXL["ContentDisplayer"]
--GXL["ContentDisplayLayout"][''] = GXL["ContentDisplayer"]

GXL["padding"]["Parent"] = GXL["bottomLockedScrollView"]
GXL["padding"]["Name"] = 'padding'
GXL["padding"]["PaddingLeft"] = UDim.new(0.000000, 8.000000)
GXL["padding"]["PaddingRight"] = UDim.new(0.000000, 8.000000)

GXL["bottomBorder"]["Parent"] = GXL["appLayout"]
GXL["bottomBorder"]["Name"] = 'bottomBorder'
GXL["bottomBorder"]["Image"] = 'rbxasset://textures/ui/BottomRoundedRect8px.png'
GXL["bottomBorder"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
GXL["bottomBorder"]["ImageTransparency"] = 0.30000001192092896
GXL["bottomBorder"]["ScaleType"] = Enum.ScaleType.Slice
GXL["bottomBorder"]["SliceCenter"] = Rect.new(8, 0, 24, 16)
GXL["bottomBorder"]["BackgroundTransparency"] = 1
GXL["bottomBorder"]["LayoutOrder"] = 5
GXL["bottomBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

GXL["uiSizeConstraint_3"]["Parent"] = GXL["bottomBorder"]
GXL["uiSizeConstraint_3"]["Name"] = 'uiSizeConstraint'
GXL["uiSizeConstraint_3"]["MaxSize"] = Vector2.new(475.000000, math.huge)

GXL["channelBar"]["Parent"] = GXL["appLayout"]
GXL["channelBar"]["Name"] = 'channelBar'
GXL["channelBar"]["BackgroundTransparency"] = 1
GXL["channelBar"]["BorderSizePixel"] = 0
GXL["channelBar"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 40.000000)
GXL["channelBar"]["Visible"] = false

GXL["HorizontalBar"]["Parent"] = GXL["channelBar"]
GXL["HorizontalBar"]["Name"] = 'HorizontalBar'
GXL["HorizontalBar"]["BackgroundTransparency"] = 1
GXL["HorizontalBar"]["BorderSizePixel"] = 0
GXL["HorizontalBar"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["Background_2"]["Parent"] = GXL["HorizontalBar"]
GXL["Background_2"]["Name"] = 'Background'
GXL["Background_2"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["Background_2"]["BorderSizePixel"] = 0
GXL["Background_2"]["Position"] = UDim2.new(0.000000, 0.000000, 0.000000, 8.000000)
GXL["Background_2"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 31.000000)

GXL["BottomBorder"]["Parent"] = GXL["HorizontalBar"]
GXL["BottomBorder"]["Name"] = 'BottomBorder'
GXL["BottomBorder"]["BackgroundColor3"] = Color3.fromRGB(100, 100, 100)
GXL["BottomBorder"]["BorderSizePixel"] = 0
GXL["BottomBorder"]["Position"] = UDim2.new(0.000000, 0.000000, 1.000000, -1.000000)
GXL["BottomBorder"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 1.000000)

GXL["ContentContainer"]["Parent"] = GXL["HorizontalBar"]
GXL["ContentContainer"]["Name"] = 'ContentContainer'
GXL["ContentContainer"]["BackgroundTransparency"] = 1
GXL["ContentContainer"]["BorderSizePixel"] = 0
GXL["ContentContainer"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)

GXL["_layout_3"]["Parent"] = GXL["ContentContainer"]
GXL["_layout_3"]["Name"] = 'layout'
GXL["_layout_3"]["FillDirection"] = Enum.FillDirection.Horizontal
GXL["_layout_3"]["SortOrder"] = Enum.SortOrder.LayoutOrder

GXL["TopCorner"]["Parent"] = GXL["HorizontalBar"]
GXL["TopCorner"]["Name"] = 'TopCorner'
GXL["TopCorner"]["Image"] = 'rbxasset://textures/ui/TopRoundedRect8px.png'
GXL["TopCorner"]["ImageColor3"] = Color3.fromRGB(25, 27, 29)
GXL["TopCorner"]["ScaleType"] = Enum.ScaleType.Slice
GXL["TopCorner"]["SliceCenter"] = Rect.new(8, 8, 24, 32)
GXL["TopCorner"]["BackgroundTransparency"] = 1
GXL["TopCorner"]["BorderSizePixel"] = 0
GXL["TopCorner"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)

GXL["layout"]["Parent"] = GXL["appLayout"]
GXL["layout"]["Name"] = 'layout'
GXL["layout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

GXL["uiSizeConstraint_4"]["Parent"] = GXL["appLayout"]
GXL["uiSizeConstraint_4"]["Name"] = 'uiSizeConstraint'
GXL["uiSizeConstraint_4"]["MaxSize"] = Vector2.new(475.000000, math.huge)

GXL["topPadding"]["Parent"] = GXL["appLayout"]
GXL["topPadding"]["Name"] = 'topPadding'
GXL["topPadding"]["BackgroundColor3"] = Color3.fromRGB(25, 27, 29)
GXL["topPadding"]["BackgroundTransparency"] = 0.30000001192092896
GXL["topPadding"]["BorderSizePixel"] = 0
GXL["topPadding"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 8.000000)
GXL["topPadding"]["Visible"] = false
GXL["topPadding"]["ZIndex"] = 0

GXL["TextLabel_2"]["Name"] = 'TextLabel'
GXL["TextLabel_2"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["TextLabel_2"]["BackgroundTransparency"] = 1

GXL["TextMessage_2"]["Parent"] = GXL["TextLabel_2"]
GXL["TextMessage_2"]["Name"] = 'TextMessage'
GXL["TextMessage_2"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
GXL["TextMessage_2"]["FontSize"] = Enum.FontSize.Size18
GXL["TextMessage_2"]["RichText"] = true
GXL["TextMessage_2"]["Text"] = ''
GXL["TextMessage_2"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
GXL["TextMessage_2"]["TextSize"] = 18
GXL["TextMessage_2"]["TextStrokeTransparency"] = 0.5
GXL["TextMessage_2"]["TextWrap"] = true
GXL["TextMessage_2"]["TextWrapped"] = true
GXL["TextMessage_2"]["TextXAlignment"] = Enum.TextXAlignment.Left
GXL["TextMessage_2"]["TextYAlignment"] = Enum.TextYAlignment.Top
GXL["TextMessage_2"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["TextMessage_2"]["BackgroundTransparency"] = 1
GXL["TextMessage_2"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 0.000000)

function CreateMessage(Message: TextChatMessage | table)
 local Color = "#d4d4d4"
 local MessageTime = Message.Timestamp:ToLocalTime()
 local Clone = GXL["TextLabel_2"]:Clone()
 Clone.Parent = GXL["ContentDisplayer"]

 local function GetFormattedTime()
    local NewTime = DateTime.now():ToLocalTime()
    local FixedS, FixedM, FixedH = NewTime.Second - MessageTime.Second, NewTime.Minute - MessageTime.Minute, NewTime.Hour - MessageTime.Hour
    
    if FixedS < 0 then
        FixedS = FixedS + 60
        FixedM = FixedM - 1
    end
    if FixedM < 0 then
        FixedM = FixedM + 60
        FixedH = FixedH - 1
    end
    if FixedH < 0 then
        FixedH = FixedH + 24
    end

    local timeString = ""
    if FixedH > 0 then
        timeString = timeString .. FixedH .. (FixedH == 1 and " hour" or " hours")
        if FixedM > 0 or FixedS > 0 then
            timeString = timeString .. " and "
        end
    end
    if FixedM > 0 then
        timeString = timeString .. FixedM .. (FixedM == 1 and " minute" or " minutes")
        if FixedS > 0 then
            timeString = timeString .. ", "
        end
    end
    if FixedS > 0 then
        timeString = timeString .. FixedS .. (FixedS == 1 and " second" or " seconds")
    elseif FixedS == 0 and FixedM == 0 and FixedH == 0 then
        timeString = 'now'
    end

    return (timeString == 'now' and timeString or timeString .. ' ago')
 end

 Clone.TextMessage["Text"] = string.format('%s <font color="%s">%s\nnow</font>', Message.PrefixText, Color, Message.Text)

 local function Update()
  Clone.TextMessage["Text"] = string.format('%s <font color="%s">%s\n%s</font>', Message.PrefixText, Color, Message.Text, GetFormattedTime())
 end

 task.wait(1)

 RunService.Heartbeat:Connect(Update)
end

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
 TextChatService.MessageReceived:Connect(function(m)
  task.spawn(CreateMessage, m)
 end)
else
 local Stuff = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
 if not Stuff then error('Failed to obtain the DefaultChatSystemChatEvents folder.', 1) end
 local Stuff2 = Stuff:FindFirstChild("OnMessageDoneFiltering")
 if not Stuff2 then error('Failed to obtain the OnMessageDoneFiltering event.', 1) end
 Stuff2.OnClientEvent:Connect(function(msg)
  local n = msg.ExtraData.NameColor
  task.spawn(CreateMessage, {
   Timestamp = DateTime.now(),
   Text = msg.Message,
   PrefixText = string.format('<font color="rgb(%d, %d, %d)">%s:</font>', n.R*255,n.G*255,n.B*255,msg.FromSpeaker)
  })
 end)
end