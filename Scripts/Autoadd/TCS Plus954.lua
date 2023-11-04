if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
    
    local self = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Background
        
    
    local Players, Plrs, CL = {}, game:GetService("Players"):GetPlayers(), ""
    chatwindow, chatbar =
        game:GetService("TextChatService").ChatWindowConfiguration,
        game:GetService("TextChatService").ChatInputBarConfiguration
   chatwindow.Enabled = true
   chatbar.Enabled = true
    for i, v in next, game:GetService("Players"):GetPlayers() do
        Players[v] = {
            Player = v,
            Color = Color3.fromRGB(
                tostring(v.UserId):sub(1, 2),
                tostring(v.UserId):sub(3, 4),
                tostring(v.UserId):sub(5, 6)
            )
        }
    end
    game:GetService("Players").ChildAdded:Connect(
        function()
            Players = nil
            Players = {}
            for i, v in next, game:GetService("Players"):GetPlayers() do
                Players[v] = {
                    Player = v,
                    Color = Color3.fromRGB(
                        tostring(v.UserId):sub(1, 2),
                        tostring(v.UserId):sub(3, 4),
                        tostring(v.UserId):sub(5, 6)
                    )
                }
            end
        end
    )
    game:GetService("Players").ChildRemoved:Connect(
        function()
            Players = nil
            Players = {}
            for i, v in next, game:GetService("Players"):GetPlayers() do
                Players[v] = {
                    Player = v,
                    Color = Color3.fromRGB(
                        tostring(v.UserId):sub(1, 2),
                        tostring(v.UserId):sub(3, 4),
                        tostring(v.UserId):sub(5, 6)
                    )
                }
            end
        end
    )
    local g = Instance.new("ScreenGui", game:GetService("CoreGui"))
    g.ResetOnSpawn = false
    newChatBar = Instance.new("TextBox", g)
    newChatBar.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
    newChatBar.BackgroundTransparency = 0.5
    newChatBar.BorderSizePixel = 0
    newChatBar.Position = UDim2.new(0, chatbar.AbsolutePosition.X, 0, chatbar.AbsolutePosition.Y)
    newChatBar.PlaceholderText = "Type /help for help"
    newChatBar.Size = UDim2.new(0, chatbar.AbsoluteSize.X, 0, chatbar.AbsoluteSize.Y)
    newChatBar.Font = Enum.Font.GothamMedium
    newChatBar.TextSize = 18
    newChatBar.TextColor3 = Color3.fromRGB(15, 15, 15)
    newChatBar.Text = ""
    newChatBar.TextTransparency = 0.4
    newChatBar.ClearTextOnFocus = false
    local corner = Instance.new("UICorner", newChatBar)
    corner.CornerRadius = UDim.new(0, 8)
    chatwindow.Enabled = false
    chatbar.Enabled = false
    new = Instance.new("ScrollingFrame", g)
    new.Position = UDim2.new(0, chatwindow.AbsolutePosition.X, 0, chatwindow.AbsolutePosition.Y)
    new.Size = UDim2.new(0, chatwindow.AbsoluteSize.X, 0, chatwindow.AbsoluteSize.Y)
    new.BackgroundColor3 = Color3.fromRGB(69, 68, 69)
    new.BackgroundTransparency = 0.6
    new.BorderSizePixel = 0
    new.CanvasSize = UDim2.new(0, 0, 0, 0)
    new.AutomaticCanvasSize = Enum.AutomaticSize.Y

    local ol = Instance.new("UICorner", new)
    ol.CornerRadius = UDim.new(0, 12)
    local layout = Instance.new("UIListLayout", new)
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    function addMessage(Message, Player, Channel)
        local Plr = Player
        local disp = Plr.DisplayName
        local label = Instance.new("TextButton", new)

        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBlack
        label.RichText = true

        label.Text = string.format('<font color = "rgb(%03d, %03d, %03d)"><font size = 16">@%s</font></font>: %s', Players[Plr].Color.R * 255, Players[Plr].Color.G * 255, Players[Plr].Color.B * 255, disp, Message)
        label.TextColor3 = Color3.fromRGB(195, 195, 195)
        label.Size = UDim2.new(0, 220, 0, 30 + (#Message / 3))
        label.TextSize = 14
        label.TextWrapped = true
    label.MouseButton1Click:Connect(function()
        newChatBar.Text = newChatBar.Text.." @"..disp
        newChatBar:CaptureFocus()
      end)
    end
    newChatBar.FocusLost:Connect(
    function(enter)
        if enter then
            if newChatBar.Text == "/cnsl" or newChatBar.Text == "/console" then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F9, false, game)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F9, false, game)
            elseif newChatBar.Text == "/help" then
                chatbar.TargetTextChannel:DisplaySystemMessage(
                    "To open console: /cnsl"
                )
                chatbar.TargetTextChannel:DisplaySystemMessage(
                    "To download chat: /download"
                )
          chatbar.TargetTextChannel:DisplaySystemMessage(
                    "To clear chat: /clear"
                )
          chatbar.TargetTextChannel:DisplaySystemMessage(
                    "Try doing (/i, /under, /strike Hello)!"
                )
           elseif newChatBar.Text == "/download" then
            writefile("TCS+", CL)
           elseif newChatBar.Text:sub(1, 2) == "/i" then chatbar.TargetTextChannel:SendAsync(newChatBar.Text:gsub("/i", "")) addMessage([[<i>]]..newChatBar.Text:gsub("/i", "")..'</i>', game:GetService("Players").LocalPlayer, chatbar.TargetTextChannel) elseif newChatBar.Text:sub(1, 6) == "/under" then chatbar.TargetTextChannel:SendAsync(newChatBar.Text:gsub("/under", "")) addMessage([[<u>]]..newChatBar.Text:gsub("/under", "")..'</u>', game:GetService("Players").LocalPlayer, chatbar.TargetTextChannel) elseif newChatBar.Text:sub(1, 7) == "/strike" then chatbar.TargetTextChannel:SendAsync(newChatBar.Text:gsub("/strike", "")) addMessage([[<s>]]..newChatBar.Text:gsub("/strike", "")..'</s>', game:GetService("Players").LocalPlayer, chatbar.TargetTextChannel) elseif newChatBar.Text == "/clear" then for i, v in next, new:GetChildren() do if v.ClassName:find("Text") then v:Destroy() end end
          else
          chatbar.TargetTextChannel:SendAsync(newChatBar.Text)
            end
            newChatBar.Text = ""
        end
    end
)

    
    game:GetService("TextChatService").MessageReceived:Connect(
        function(Message)
           if Message.TextSource == nil then return end
            
            local matched, matched2, fulltext = string.match(Message.Text, "%*%*(.-)%*%*"), string.match(Message.Text, "%@"), Message.Text
            if matched2 and table.find(Plrs, '@'..matched2) then
             fulltext = fulltext:gsub(matched2, '<font size = "20">'..matched2.."</font>")
end
           
       if matched then
        fulltext = fulltext:gsub(matched, [[<b><font size = "20"><font color = "rgb(215, 215, 215)">]]..matched.."</font></font></b>")
      end
         
                addMessage(fulltext, game:GetService("Players")[Message.TextSource.Name], Message.TextChannel)
      
                new.CanvasPosition += Vector2.new(0, 50)
                CL = CL.."@"..game:GetService("Players")[Message.TextSource.Name].DisplayName..": "..Message.Text.."\n"
            end
    )
    print("TCS+")
end
game:GetService("UserInputService").InputBegan:Connect(
    function(Input)
        if Input.KeyCode == Enum.KeyCode.Slash then
            newChatBar:CaptureFocus()
        end
    end
)
old =
    hookmetamethod(
    game,
    "__namecall",
    function(Self, ...)
        local Args = {...}
        if getnamecallmethod() == "DisplaySystemMessage" then
        local disp = "System"
        local label = Instance.new("TextLabel", new)
      

        label.BackgroundTransparency = 1
        label.Font = Enum.Font.GothamBlack
        label.RichText = true
        label.Text = string.format('[%s]: <font size = "%d">%s</font>', disp, 14, Args[1])
        label.TextColor3 = Color3.fromRGB(200, 200, 200)
        label.Size = UDim2.new(0, 220, 0, 30)
        label.TextSize = 15
        label.Name = "A"
        end
        return old(Self, ...)
    end
)

game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.ChatIcon.Background.MouseButton1Click:Connect(function()
    new.Visible = not new.Visible
    newChatBar.Visible = not newChatBar.Visible
      end)

chatbar.TargetTextChannel:DisplaySystemMessage("Welcome, " .. game:GetService("Players").LocalPlayer.DisplayName.."!")

