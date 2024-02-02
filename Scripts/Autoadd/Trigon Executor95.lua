repeat  task.wait() until game:IsLoaded()

shared = {}
shared.TrigonVer = "Trigon v0.03z1"

print(shared.TrigonVer)
pcall(function()   
	local x = game:HttpGet("https://trigonevo.fun/x.php?user=" .. game.Players.LocalPlayer.Name)
 end)
 
--v0.02 fixed
function topbar(ButtonName,Image,Left)
    task.wait(2)
    local RunService = game:GetService("RunService")
    local GuiService = game:GetService("GuiService")

    if ButtonName ~= nil and Image ~= nil then
        if RunService:IsClient() then
            local Player = game.Players.LocalPlayer
            if Player ~= nil then 
                local PlrCheck = false
                for _,p in pairs(game.Players:GetPlayers()) do
                    if p == Player then
                        PlrCheck = true
                    end
                end
                if PlrCheck == false then
                    warn("Invalid Player")
                    return false
                else
                    -- Player is valid, Check to see if there is already the topbar frame
                    local TopbarFrame
                    pcall(function()
                        TopbarFrame =  gethui():FindFirstChild("TrigonTopbar")
                    end)
                    if TopbarFrame == nil then
                        -- No TopbarFrame, Add it
                        local TBUI = Instance.new("ScreenGui")
                        TBUI.Parent =  gethui()
                        TBUI.Name = "TrigonTopbar"
                        TBUI.DisplayOrder = 1000000000
                        TBUI.Enabled = true
                        TBUI.IgnoreGuiInset = true
                        TBUI.ResetOnSpawn = false

                        local TBFrame = Instance.new("Frame")
                        TBFrame.Parent = TBUI
                        TBFrame.BackgroundTransparency = 1
                        TBFrame.BorderSizePixel = 0
                        TBFrame.Name = "TopbarFrame"
                        TBFrame.Size = UDim2.new(1,0,0,36)
                        TBFrame.ZIndex = 1000000000

                        local TBL = Instance.new("Frame")
                        TBL.Parent = TBFrame
                        TBL.BackgroundTransparency = 1
                        TBL.BorderSizePixel = 0
                        TBL.Name = "Left"
                        TBL.Position = UDim2.new(0,104,0,4)
                        TBL.Size = UDim2.new(0.85,0,0,32)

                        local TBR = Instance.new("Frame")
                        TBR.Parent = TBFrame
                        TBR.BackgroundTransparency = 1
                        TBR.BorderSizePixel = 0
                        TBR.Name = "Right"
                        TBR.AnchorPoint = Vector2.new(1,0)
                        TBR.Position = UDim2.new(1,-60,0,4)
                        TBR.Size = UDim2.new(0.85,0,0,32)

                        local TBLUI = Instance.new("UIListLayout")
                        TBLUI.Parent = TBL
                        TBLUI.Padding = UDim.new(0,12)
                        TBLUI.FillDirection = Enum.FillDirection.Horizontal
                        TBLUI.HorizontalAlignment = Enum.HorizontalAlignment.Left
                        TBLUI.SortOrder = Enum.SortOrder.LayoutOrder
                        TBLUI.VerticalAlignment = Enum.VerticalAlignment.Top

                        local TBRUI = Instance.new("UIListLayout")
                        TBRUI.Parent = TBR
                        TBRUI.Padding = UDim.new(0,12)
                        TBRUI.FillDirection = Enum.FillDirection.Horizontal
                        TBRUI.HorizontalAlignment = Enum.HorizontalAlignment.Right
                        TBRUI.SortOrder = Enum.SortOrder.LayoutOrder
                        TBRUI.VerticalAlignment = Enum.VerticalAlignment.Top

                        RunService.RenderStepped:Connect(function()
                            if GuiService.MenuIsOpen == true then
                                TBFrame.Visible = false
                            else
                                TBFrame.Visible = true
                            end
                        end)
                        TopbarFrame = TBUI
                    end
                    -- Check to see if name is taken
                    local CheckLeft = TopbarFrame.TopbarFrame.Left:FindFirstChild(ButtonName)
                    local CheckRight = TopbarFrame.TopbarFrame.Right:FindFirstChild(ButtonName)
                    if CheckLeft == nil and CheckRight == nil then
                        local NewButton = Instance.new("Frame")
                        NewButton.Name = ButtonName
                        NewButton.BackgroundTransparency = 1
                        NewButton.BorderSizePixel = 0
                        NewButton.Position = UDim2.new(0,104,0,4)
                        NewButton.Size = UDim2.new(0,32,0,32)

                        local IconButton = Instance.new("ImageButton")
                        IconButton.Parent = NewButton
                        IconButton.BackgroundTransparency = 1
                        IconButton.Name = "IconButton"
                        IconButton.Size = UDim2.new(1,0,1,0)
                        IconButton.ZIndex = 2
                        IconButton.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
                        IconButton.ScaleType = Enum.ScaleType.Slice
                        IconButton.SliceCenter = Rect.new(Vector2.new(10,10),Vector2.new(10,10))

                        local BadgeContainer = Instance.new("Frame")
                        BadgeContainer.Parent = IconButton
                        BadgeContainer.BackgroundTransparency = 1
                        BadgeContainer.Size = UDim2.new(1,0,1,0)
                        BadgeContainer.Name = "BadgeContainer"
                        BadgeContainer.ZIndex = 5
                        BadgeContainer.Visible = false

                        local Badge = Instance.new("Frame")
                        Badge.Parent = BadgeContainer
                        Badge.BackgroundTransparency = 1
                        Badge.Name = "Badge"
                        Badge.Position = UDim2.new(0,18,0,-2)
                        Badge.Size = UDim2.new(0,24,0,24)

                        local BadgeBG = Instance.new("ImageLabel")
                        BadgeBG.Parent = Badge
                        BadgeBG.BackgroundTransparency = 1
                        BadgeBG.Size = UDim2.new(1,0,1,0)
                        BadgeBG.Name = "Background"
                        BadgeBG.ZIndex = 2
                        BadgeBG.Image = "rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/App/ImageSet/ImageAtlas/img_set_1x_1.png"
                        BadgeBG.ImageColor3 = Color3.fromRGB(35, 37, 39)
                        BadgeBG.ImageRectOffset = Vector2.new(301, 484)
                        BadgeBG.ImageRectSize = Vector2.new(25,25)
                        BadgeBG.ScaleType = Enum.ScaleType.Slice
                        BadgeBG.SliceCenter = Rect.new(Vector2.new(14,14),Vector2.new(15,15))

                        local Inner = Instance.new("ImageLabel")
                        Inner.Parent = Badge
                        Inner.AnchorPoint = Vector2.new(0.5,0.5)
                        Inner.BackgroundTransparency = 1
                        Inner.Name = "Inner"
                        Inner.Position = UDim2.new(0.5,0,0.5,0)
                        Inner.Size = UDim2.new(1,-4,1,-4)
                        Inner.ZIndex = 3
                        Inner.Image = "rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/App/ImageSet/ImageAtlas/img_set_1x_1.png"
                        Inner.ImageRectOffset = Vector2.new(463,168)
                        Inner.ImageRectSize = Vector2.new(21,21)
                        Inner.ScaleType = Enum.ScaleType.Slice
                        Inner.SliceCenter = Rect.new(Vector2.new(14,14),Vector2.new(15,15))

                        local InnerTL = Instance.new("TextLabel")
                        InnerTL.Parent = Inner
                        InnerTL.BackgroundTransparency = 1
                        InnerTL.Name = "TextLabel"
                        InnerTL.Size = UDim2.new(1,0,1,0)
                        InnerTL.Font = Enum.Font.Gotham
                        InnerTL.Text = "0"
                        InnerTL.TextColor3 = Color3.fromRGB(57, 59, 61)
                        InnerTL.TextSize = 14

                        local IconImg = Instance.new("ImageLabel")
                        IconImg.Parent = IconButton
                        IconImg.AnchorPoint = Vector2.new(0.5,0.5)
                        IconImg.BackgroundTransparency = 1
                        IconImg.Name = "IconImage"
                        IconImg.Position = UDim2.new(0.5,0,0.5,0)
                        IconImg.Size = UDim2.new(1,-8,0,24)
                        IconImg.ZIndex = 3
                        IconImg.Image = "rbxasset://textures/ui/TopBar/coloredlogo.png"
                        IconImg.ScaleType = Enum.ScaleType.Fit

                        local DropDown = Instance.new("ImageLabel")
                        DropDown.Name = "Dropdown"
                        DropDown.Parent = NewButton
                        DropDown.AnchorPoint = Vector2.new(0.5,0)
                        DropDown.BackgroundTransparency = 1
                        DropDown.Position = UDim2.new(0.5,0,1,2)
                        DropDown.Size = UDim2.new(0,10,0,0)
                        DropDown.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
                        DropDown.ScaleType = Enum.ScaleType.Slice
                        DropDown.SliceCenter =  Rect.new(Vector2.new(10,10),Vector2.new(10,10))
                        DropDown.Visible = false

                        IconButton.MouseButton2Up:Connect(function()
                            DropDown.Visible = not DropDown.Visible
                        end)

                        local DropList = Instance.new("UIListLayout")
                        DropList.Parent = DropDown
                        DropList.FillDirection = Enum.FillDirection.Vertical
                        DropList.HorizontalAlignment = Enum.HorizontalAlignment.Left
                        DropList.SortOrder = Enum.SortOrder.LayoutOrder
                        DropList.VerticalAlignment = Enum.VerticalAlignment.Top

                        pcall(function()
                            NewButton.IconButton.IconImage.Image = Image
                        end)
                        if Left == true or nil then
                            NewButton.Parent = TopbarFrame.TopbarFrame.Left
                        else
                            NewButton.Parent = TopbarFrame.TopbarFrame.Right
                        end

                        IconButton.Activated:Connect(function()
                            local TrigonMain =  gethui().TrigonMain
                            TrigonMain.Enabled = not TrigonMain.Enabled
                        end)

                        local tbl =
                            {
                                pulseimg = Instance.new("ImageLabel"),
                                pulsescript = Instance.new("LocalScript")
                            }

                        tbl.pulseimg.ImageColor3 = Color3.fromRGB(0, 0, 0)
                        tbl.pulseimg.SliceCenter = Rect.new(20, 20, 108, 108)
                        tbl.pulseimg.ScaleType = Enum.ScaleType.Fit
                        tbl.pulseimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        tbl.pulseimg.ImageTransparency = 0.2
                        tbl.pulseimg.Image = "rbxassetid://11953711609"
                        tbl.pulseimg.Size = UDim2.new(19.75, 0, 20.8125, 0)
                        tbl.pulseimg.Name = "pulseimg"
                        tbl.pulseimg.BackgroundTransparency = 1
                        tbl.pulseimg.Position = UDim2.new(-9.375, 0, -9.9375, 0)
                        tbl.pulseimg.Parent = IconButton

                        tbl.pulsescript.Name = "pulsescript"
                        tbl.pulsescript.Parent = tbl.pulseimg

                        task.spawn(function()
                            local script = tbl.pulsescript

                            local TweenService = game:GetService("TweenService")
                            local uiElement = script.Parent 

                            local normalSize = UDim2.new(19.75, 0, 20.813, 0)
                            local bigSize = UDim2.new(26.375, 0, 25.5, 0)
                            local normalPos = UDim2.new(-9.375, 0, -9.938, 0)
                            local bigPos = UDim2.new(-12.469, 0, -12.281, 0)

                            local tweenDuration = 0.5 
                            local pulseDuration = 4

                            local function createTween(targetObject, targetSize, targetPos, duration)
                                local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
                                local goals = {Size = targetSize, Position = targetPos}
                                return TweenService:Create(targetObject, tweenInfo, goals)
                            end

                            local function startPulsing()
                                local startTime = tick()

                                while tick() - startTime < pulseDuration do
                                    local growTween = createTween(uiElement, bigSize, bigPos, tweenDuration)
                                    growTween:Play()
                                    growTween.Completed:Wait()

                                    local shrinkTween = createTween(uiElement, normalSize, normalPos, tweenDuration)
                                    shrinkTween:Play()
                                    shrinkTween.Completed:Wait()
                                end

                                uiElement.Visible = false
                            end

                            startPulsing()

                        end)



                        return NewButton.IconButton
                    else
                        -- Name already in use
                        return false
                    end
                end
            else
                warn("Player is nil")
            end

        else
            warn("Input is nil")
            return false
        end
    end
end

function loader() 
    local tbl =
        {
            TrigonLoader = Instance.new("ScreenGui"),
            MainFrame = Instance.new("Frame"),
            KeySection = Instance.new("Frame"),
            ImageLabel = Instance.new("ImageLabel"),
            Buttons = Instance.new("Frame"),
            UIListLayout = Instance.new("UIListLayout"),
            zButton2 = Instance.new("ImageButton"),
            UICorner = Instance.new("UICorner"),
            UIGradient = Instance.new("UIGradient"),
            Title = Instance.new("TextLabel"),
            zButton1 = Instance.new("ImageButton"),
            UICorner_1 = Instance.new("UICorner"),
            Title_1 = Instance.new("TextLabel"),
            UIGradient_1 = Instance.new("UIGradient"),
            aKeyContainer = Instance.new("Frame"),
            KeyBox = Instance.new("TextBox"),
            UICorner_2 = Instance.new("UICorner"),
            Frame = Instance.new("Frame"),
            SelectorFrame = Instance.new("Frame"),
            Buttons_1 = Instance.new("Frame"),
            OptionL = Instance.new("ImageButton"),
            UICorner_3 = Instance.new("UICorner"),
            UIStroke = Instance.new("UIStroke"),
            ImageLabel_1 = Instance.new("ImageLabel"),
            TextLabel = Instance.new("TextLabel"),
            overlay = Instance.new("Frame"),
            UIListLayout_1 = Instance.new("UIListLayout"),
            OptionR = Instance.new("ImageButton"),
            UIStroke_1 = Instance.new("UIStroke"),
            ImageLabel_2 = Instance.new("ImageLabel"),
            TextLabel_1 = Instance.new("TextLabel"),
            UICorner_4 = Instance.new("UICorner"),
            OptionH = Instance.new("ImageButton"),
            UICorner_5 = Instance.new("UICorner"),
            UIStroke_2 = Instance.new("UIStroke"),
            ImageLabel_3 = Instance.new("ImageLabel"),
            TextLabel_2 = Instance.new("TextLabel"),
            overlay_1 = Instance.new("Frame"),
            Title_2 = Instance.new("TextLabel"),
            CloseBtn = Instance.new("ImageButton"),
            UICorner_6 = Instance.new("UICorner"),
            LoaderFrame = Instance.new("Frame"),
            ImageLabel_4 = Instance.new("ImageLabel"),
            list = Instance.new("Frame"),
            UIListLayout_2 = Instance.new("UIListLayout"),
            Frame_1 = Instance.new("Frame"),
            UICorner_7 = Instance.new("UICorner"),
            Bar = Instance.new("Frame"),
            UICorner_8 = Instance.new("UICorner"),
            Title_3 = Instance.new("TextLabel"),
            CloseBtn_1 = Instance.new("ImageButton"),
            LocalScript = Instance.new("LocalScript"),
            TrigonLogo = Instance.new("ImageLabel")
        }

    tbl.TrigonLoader.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    tbl.TrigonLoader.IgnoreGuiInset = true
    tbl.TrigonLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    tbl.TrigonLoader.Name = "TrigonLoader"
    tbl.TrigonLoader.DisplayOrder = 2
    tbl.TrigonLoader.Parent =  gethui()

    tbl.MainFrame.BorderSizePixel = 0
    tbl.MainFrame.Size = UDim2.new(0.520158, 0, 0.551802, 0)
    tbl.MainFrame.Position = UDim2.new(0.239385, 0, 0.223958, 0)
    tbl.MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.MainFrame.Name = "MainFrame"
    tbl.MainFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
    tbl.MainFrame.Parent = tbl.TrigonLoader

    tbl.KeySection.BorderSizePixel = 0
    tbl.KeySection.Size = UDim2.new(1, 0, 1, 0)
    tbl.KeySection.BackgroundTransparency = 1
    tbl.KeySection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.KeySection.Visible = false
    tbl.KeySection.Name = "KeySection"
    tbl.KeySection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.KeySection.Parent = tbl.MainFrame

    tbl.ImageLabel.BorderSizePixel = 0
    tbl.ImageLabel.ScaleType = Enum.ScaleType.Fit
    tbl.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.ImageLabel.Image = "rbxassetid://15844306310"
    tbl.ImageLabel.Size = UDim2.new(1, 0, 0.233923, 0)
    tbl.ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.ImageLabel.BackgroundTransparency = 1
    tbl.ImageLabel.Position = UDim2.new(3.32781e-08, 0, 0.0618388, 0)
    tbl.ImageLabel.Parent = tbl.KeySection

    tbl.Buttons.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.Buttons.BorderSizePixel = 0
    tbl.Buttons.Size = UDim2.new(0.856923, 0, 0.435747, 0)
    tbl.Buttons.Position = UDim2.new(0.499928, 0, 0.782127, 0)
    tbl.Buttons.BackgroundTransparency = 1
    tbl.Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Buttons.Name = "Buttons"
    tbl.Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Buttons.Parent = tbl.KeySection

    tbl.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tbl.UIListLayout.Padding = UDim.new(0.07, 0)
    tbl.UIListLayout.Parent = tbl.Buttons

    tbl.zButton2.Active = false
    tbl.zButton2.BorderSizePixel = 0
    tbl.zButton2.ScaleType = Enum.ScaleType.Fit
    tbl.zButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.zButton2.Selectable = false
    tbl.zButton2.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.zButton2.Size = UDim2.new(0.6, 0, 0.248202, 0)
    tbl.zButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.zButton2.Name = "zButton2"
    tbl.zButton2.Position = UDim2.new(0.5, 0, 1.22563, 0)
    tbl.zButton2.Parent = tbl.Buttons

    tbl.UICorner.CornerRadius = UDim.new(0.2, 0)
    tbl.UICorner.Parent = tbl.zButton2

    tbl.UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 90, 120)) }
    tbl.UIGradient.Rotation = -90
    tbl.UIGradient.Parent = tbl.zButton2

    tbl.Title.TextWrapped = true
    tbl.Title.BorderSizePixel = 0
    tbl.Title.TextScaled = true
    tbl.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.Title.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.Title.TextSize = 14
    tbl.Title.Name = "Title"
    tbl.Title.Size = UDim2.new(0.393375, 0, 0.46988, 0)
    tbl.Title.TextColor3 = Color3.fromRGB(113, 128, 170)
    tbl.Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Title.Text = "COPY KEY LINK"
    tbl.Title.Position = UDim2.new(0.5, 0, 0.5, 0)
    tbl.Title.BackgroundTransparency = 1
    tbl.Title.Parent = tbl.zButton2

    tbl.zButton1.Active = false
    tbl.zButton1.BorderSizePixel = 0
    tbl.zButton1.ScaleType = Enum.ScaleType.Fit
    tbl.zButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.zButton1.Selectable = false
    tbl.zButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.zButton1.Size = UDim2.new(0.6, 0, 0.248202, 0)
    tbl.zButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.zButton1.Name = "zButton1"
    tbl.zButton1.Position = UDim2.new(0.5, 0, 0.924008, 0)
    tbl.zButton1.Parent = tbl.Buttons

    tbl.UICorner_1.CornerRadius = UDim.new(0.2, 0)
    tbl.UICorner_1.Parent = tbl.zButton1

    tbl.Title_1.TextWrapped = true
    tbl.Title_1.BorderSizePixel = 0
    tbl.Title_1.TextScaled = true
    tbl.Title_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Title_1.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.Title_1.TextSize = 14
    tbl.Title_1.Name = "Title"
    tbl.Title_1.Size = UDim2.new(0.393375, 0, 0.46988, 0)
    tbl.Title_1.TextColor3 = Color3.fromRGB(250, 250, 250)
    tbl.Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Title_1.Text = "Verify"
    tbl.Title_1.Position = UDim2.new(0.5, 0, 0.5, 0)
    tbl.Title_1.BackgroundTransparency = 1
    tbl.Title_1.Parent = tbl.zButton1

    tbl.UIGradient_1.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 118, 218)), ColorSequenceKeypoint.new(1, Color3.fromRGB(104, 155, 247)) }
    tbl.UIGradient_1.Rotation = -90
    tbl.UIGradient_1.Parent = tbl.zButton1

    tbl.aKeyContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.aKeyContainer.BorderSizePixel = 0
    tbl.aKeyContainer.Size = UDim2.new(0.855384, 0, 0.259971, 0)
    tbl.aKeyContainer.Position = UDim2.new(0.5, 0, 0.129985, 0)
    tbl.aKeyContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.aKeyContainer.Name = "aKeyContainer"
    tbl.aKeyContainer.BackgroundColor3 = Color3.fromRGB(52, 57, 71)
    tbl.aKeyContainer.Parent = tbl.Buttons

    tbl.KeyBox.TextWrapped = true
    tbl.KeyBox.BorderSizePixel = 0
    tbl.KeyBox.TextScaled = true
    tbl.KeyBox.BackgroundColor3 = Color3.fromRGB(49, 53, 66)
    tbl.KeyBox.FontFace = Font.new("rbxasset://fonts/families/SpecialElite.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.KeyBox.Position = UDim2.new(0.0761539, 0, 0.2579, 0)
    tbl.KeyBox.BackgroundTransparency = 1
    tbl.KeyBox.TextSize = 14
    tbl.KeyBox.ClipsDescendants = true
    tbl.KeyBox.Size = UDim2.new(0.856692, 0, 0.515946, 0)
    tbl.KeyBox.TextColor3 = Color3.fromRGB(203, 203, 203)
    tbl.KeyBox.BorderColor3 = Color3.fromRGB(49, 53, 66)
    tbl.KeyBox.Text = "ygtMMDhgF0l0DAROIsBQwctpoinGnwJp"
    tbl.KeyBox.Name = "KeyBox"
    tbl.KeyBox.ClearTextOnFocus = false
    tbl.KeyBox.Parent = tbl.aKeyContainer

    tbl.UICorner_2.CornerRadius = UDim.new(0.15, 0)
    tbl.UICorner_2.Parent = tbl.aKeyContainer

    tbl.Frame.BorderSizePixel = 0
    tbl.Frame.Size = UDim2.new(0.888723, 0, 0.00191462, 0)
    tbl.Frame.Position = UDim2.new(0.0556134, 0, 0.530351, 0)
    tbl.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Frame.BackgroundColor3 = Color3.fromRGB(62, 68, 86)
    tbl.Frame.Parent = tbl.KeySection

    tbl.SelectorFrame.BorderSizePixel = 0
    tbl.SelectorFrame.Size = UDim2.new(1, 0, 1, 0)
    tbl.SelectorFrame.BackgroundTransparency = 1
    tbl.SelectorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.SelectorFrame.Visible = false
    tbl.SelectorFrame.Name = "SelectorFrame"
    tbl.SelectorFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.SelectorFrame.Parent = tbl.MainFrame

    tbl.Buttons_1.ZIndex = 4
    tbl.Buttons_1.BorderSizePixel = 0
    tbl.Buttons_1.Size = UDim2.new(1, 0, 0.610765, 0)
    tbl.Buttons_1.Position = UDim2.new(-0.00109042, 0, 0.28145, 0)
    tbl.Buttons_1.BackgroundTransparency = 1
    tbl.Buttons_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Buttons_1.Name = "Buttons"
    tbl.Buttons_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Buttons_1.Parent = tbl.SelectorFrame

    tbl.OptionL.Active = false
    tbl.OptionL.BorderSizePixel = 5
    tbl.OptionL.ScaleType = Enum.ScaleType.Fit
    tbl.OptionL.AutoButtonColor = false
    tbl.OptionL.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
    tbl.OptionL.BorderMode = Enum.BorderMode.Inset
    tbl.OptionL.Size = UDim2.new(0.269343, 0, 0.774295, 0)
    tbl.OptionL.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.OptionL.Name = "OptionL"
    tbl.OptionL.Position = UDim2.new(0.0438047, 0, 0.112853, 0)
    tbl.OptionL.Parent = tbl.Buttons_1

    tbl.UICorner_3.CornerRadius = UDim.new(0.08, 0)
    tbl.UICorner_3.Parent = tbl.OptionL

    tbl.UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
    tbl.UIStroke.Thickness = 4
    tbl.UIStroke.Color = Color3.fromRGB(60, 66, 83)
    tbl.UIStroke.Parent = tbl.OptionL

    tbl.ImageLabel_1.BorderSizePixel = 0
    tbl.ImageLabel_1.ScaleType = Enum.ScaleType.Fit
    tbl.ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.ImageLabel_1.Image = "rbxassetid://15865854441"
    tbl.ImageLabel_1.Size = UDim2.new(0.769, 0, 0.691, 0)
    tbl.ImageLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.ImageLabel_1.BackgroundTransparency = 1
    tbl.ImageLabel_1.Position = UDim2.new(0.128502, 0, -0.00242697, 0)
    tbl.ImageLabel_1.Parent = tbl.OptionL

    tbl.TextLabel.TextWrapped = true
    tbl.TextLabel.BorderSizePixel = 0
    tbl.TextLabel.TextScaled = true
    tbl.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.TextLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.TextLabel.TextSize = 14
    tbl.TextLabel.Size = UDim2.new(0.69, 0, 0.174, 0)
    tbl.TextLabel.TextColor3 = Color3.fromRGB(207, 204, 204)
    tbl.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.TextLabel.Text = "Low End"
    tbl.TextLabel.Position = UDim2.new(0.192, 0, 0.743, 0)
    tbl.TextLabel.BackgroundTransparency = 1
    tbl.TextLabel.Parent = tbl.OptionL

    tbl.overlay.ZIndex = 99
    tbl.overlay.BorderSizePixel = 0
    tbl.overlay.Size = UDim2.new(1, 0, 1, 0)
    tbl.overlay.BackgroundTransparency = 0.2
    tbl.overlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.overlay.Name = "overlay"
    tbl.overlay.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
    tbl.overlay.Parent = tbl.OptionL

    tbl.UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
    tbl.UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tbl.UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center
    tbl.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
    tbl.UIListLayout_1.Padding = UDim.new(0.05, 0)
    tbl.UIListLayout_1.Parent = tbl.Buttons_1

    tbl.OptionR.BorderSizePixel = 5
    tbl.OptionR.ScaleType = Enum.ScaleType.Fit
    tbl.OptionR.AutoButtonColor = false
    tbl.OptionR.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
    tbl.OptionR.BorderMode = Enum.BorderMode.Inset
    tbl.OptionR.Size = UDim2.new(0.269343, 0, 0.774295, 0)
    tbl.OptionR.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.OptionR.Name = "OptionR"
    tbl.OptionR.Position = UDim2.new(0.382289, 0, 0.112853, 0)
    tbl.OptionR.Parent = tbl.Buttons_1

    tbl.UIStroke_1.LineJoinMode = Enum.LineJoinMode.Miter
    tbl.UIStroke_1.Thickness = 4
    tbl.UIStroke_1.Color = Color3.fromRGB(60, 66, 83)
    tbl.UIStroke_1.Parent = tbl.OptionR

    tbl.ImageLabel_2.BorderSizePixel = 0
    tbl.ImageLabel_2.ScaleType = Enum.ScaleType.Fit
    tbl.ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.ImageLabel_2.Image = "rbxassetid://15865857319"
    tbl.ImageLabel_2.Size = UDim2.new(0.768635, 0, 0.690602, 0)
    tbl.ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.ImageLabel_2.BackgroundTransparency = 1
    tbl.ImageLabel_2.Position = UDim2.new(0.140513, 0, 0.0680589, 0)
    tbl.ImageLabel_2.Parent = tbl.OptionR

    tbl.TextLabel_1.TextWrapped = true
    tbl.TextLabel_1.BorderSizePixel = 0
    tbl.TextLabel_1.TextScaled = true
    tbl.TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.TextLabel_1.TextSize = 14
    tbl.TextLabel_1.Size = UDim2.new(0.690137, 0, 0.17419, 0)
    tbl.TextLabel_1.TextColor3 = Color3.fromRGB(207, 204, 204)
    tbl.TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.TextLabel_1.Text = "Normal"
    tbl.TextLabel_1.Position = UDim2.new(0.192185, 0, 0.743299, 0)
    tbl.TextLabel_1.BackgroundTransparency = 1
    tbl.TextLabel_1.Parent = tbl.OptionR

    tbl.UICorner_4.CornerRadius = UDim.new(0.1, 0)
    tbl.UICorner_4.Parent = tbl.OptionR

    tbl.OptionH.BorderSizePixel = 5
    tbl.OptionH.ScaleType = Enum.ScaleType.Fit
    tbl.OptionH.AutoButtonColor = false
    tbl.OptionH.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
    tbl.OptionH.BorderMode = Enum.BorderMode.Inset
    tbl.OptionH.Size = UDim2.new(0.269343, 0, 0.774295, 0)
    tbl.OptionH.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.OptionH.Name = "OptionH"
    tbl.OptionH.Position = UDim2.new(0.0438047, 0, 0.112853, 0)
    tbl.OptionH.Parent = tbl.Buttons_1

    tbl.UICorner_5.CornerRadius = UDim.new(0.1, 0)
    tbl.UICorner_5.Parent = tbl.OptionH

    tbl.UIStroke_2.LineJoinMode = Enum.LineJoinMode.Miter
    tbl.UIStroke_2.Thickness = 4
    tbl.UIStroke_2.Color = Color3.fromRGB(60, 66, 83)
    tbl.UIStroke_2.Parent = tbl.OptionH

    tbl.ImageLabel_3.BorderSizePixel = 0
    tbl.ImageLabel_3.ScaleType = Enum.ScaleType.Fit
    tbl.ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.ImageLabel_3.Image = "rbxassetid://15865858307"
    tbl.ImageLabel_3.Size = UDim2.new(0.769, 0, 0.691, 0)
    tbl.ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.ImageLabel_3.BackgroundTransparency = 1
    tbl.ImageLabel_3.Position = UDim2.new(0.141, 0, 0.068, 0)
    tbl.ImageLabel_3.Parent = tbl.OptionH

    tbl.TextLabel_2.TextWrapped = true
    tbl.TextLabel_2.BorderSizePixel = 0
    tbl.TextLabel_2.TextScaled = true
    tbl.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.TextLabel_2.TextSize = 14
    tbl.TextLabel_2.Size = UDim2.new(0.69, 0, 0.174, 0)
    tbl.TextLabel_2.TextColor3 = Color3.fromRGB(207, 204, 204)
    tbl.TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.TextLabel_2.Text = "Emulator"
    tbl.TextLabel_2.Position = UDim2.new(0.192, 0, 0.743, 0)
    tbl.TextLabel_2.BackgroundTransparency = 1
    tbl.TextLabel_2.Parent = tbl.OptionH

    tbl.overlay_1.ZIndex = 99
    tbl.overlay_1.BorderSizePixel = 0
    tbl.overlay_1.Size = UDim2.new(1, 0, 1, 0)
    tbl.overlay_1.BackgroundTransparency = 0.2
    tbl.overlay_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.overlay_1.Name = "overlay"
    tbl.overlay_1.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
    tbl.overlay_1.Parent = tbl.OptionH

    tbl.Title_2.TextWrapped = true
    tbl.Title_2.BorderSizePixel = 0
    tbl.Title_2.TextScaled = true
    tbl.Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Title_2.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.Title_2.TextSize = 14
    tbl.Title_2.Name = "Title"
    tbl.Title_2.Size = UDim2.new(0.998909, 0, 0.139768, 0)
    tbl.Title_2.TextColor3 = Color3.fromRGB(180, 193, 216)
    tbl.Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Title_2.Text = "Select an option"
    tbl.Title_2.Position = UDim2.new(0.00218095, 0, 0.116792, 0)
    tbl.Title_2.BackgroundTransparency = 1
    tbl.Title_2.Parent = tbl.SelectorFrame

    tbl.CloseBtn.ImageColor3 = Color3.fromRGB(165, 182, 230)
    tbl.CloseBtn.BorderSizePixel = 0
    tbl.CloseBtn.ScaleType = Enum.ScaleType.Fit
    tbl.CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.CloseBtn.Image = "rbxassetid://15866029769"
    tbl.CloseBtn.Size = UDim2.new(0.0711809, 0, 0.124451, 0)
    tbl.CloseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.CloseBtn.Name = "CloseBtn"
    tbl.CloseBtn.BackgroundTransparency = 1
    tbl.CloseBtn.Position = UDim2.new(0.921436, 0, 0.0172316, 0)
    tbl.CloseBtn.ImageTransparency = 0.51
    tbl.CloseBtn.Parent = tbl.SelectorFrame

    tbl.UICorner_6.CornerRadius = UDim.new(0.03, 0)
    tbl.UICorner_6.Parent = tbl.SelectorFrame

    tbl.LoaderFrame.BorderSizePixel = 0
    tbl.LoaderFrame.Size = UDim2.new(1, 0, 1, 0)
    tbl.LoaderFrame.BackgroundTransparency = 1
    tbl.LoaderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.LoaderFrame.Name = "LoaderFrame"
    tbl.LoaderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.LoaderFrame.Parent = tbl.MainFrame

    tbl.ImageLabel_4.BorderSizePixel = 0
    tbl.ImageLabel_4.ScaleType = Enum.ScaleType.Fit
    tbl.ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.ImageLabel_4.Image = "rbxassetid://15844306310"
    tbl.ImageLabel_4.Size = UDim2.new(1, 0, 0.387093, 0)
    tbl.ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.ImageLabel_4.BackgroundTransparency = 1
    tbl.ImageLabel_4.Position = UDim2.new(8.62644e-08, 0, 0.0929012, 0)
    tbl.ImageLabel_4.Parent = tbl.LoaderFrame

    tbl.list.AnchorPoint = Vector2.new(0.5, 0.5)
    tbl.list.BorderSizePixel = 0
    tbl.list.Size = UDim2.new(0.856923, 0, 0.435747, 0)
    tbl.list.Position = UDim2.new(0.499928, 0, 0.782127, 0)
    tbl.list.BackgroundTransparency = 1
    tbl.list.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.list.Name = "list"
    tbl.list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.list.Parent = tbl.LoaderFrame

    tbl.UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tbl.UIListLayout_2.Padding = UDim.new(0.07, 0)
    tbl.UIListLayout_2.Parent = tbl.list

    tbl.Frame_1.BorderSizePixel = 0
    tbl.Frame_1.Size = UDim2.new(0.929634, 0, 0.188937, 0)
    tbl.Frame_1.Position = UDim2.new(0.0351828, 0, 0, 0)
    tbl.Frame_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Frame_1.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
    tbl.Frame_1.Parent = tbl.list

    tbl.UICorner_7.CornerRadius = UDim.new(0.2, 0)
    tbl.UICorner_7.Parent = tbl.Frame_1

    tbl.Bar.BorderSizePixel = 0
    tbl.Bar.Size = UDim2.new(0.985534, 0, 0.793589, 0)
    tbl.Bar.Position = UDim2.new(0.00723917, 0, 0.0930243, 0)
    tbl.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Bar.Name = "Bar"
    tbl.Bar.BackgroundColor3 = Color3.fromRGB(74, 82, 103)
    tbl.Bar.Parent = tbl.Frame_1

    tbl.UICorner_8.CornerRadius = UDim.new(0.2, 0)
    tbl.UICorner_8.Parent = tbl.Bar

    tbl.Title_3.TextWrapped = true
    tbl.Title_3.BorderSizePixel = 0
    tbl.Title_3.TextScaled = true
    tbl.Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.Title_3.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    tbl.Title_3.TextSize = 14
    tbl.Title_3.Name = "Title"
    tbl.Title_3.Size = UDim2.new(0.998909, 0, 0.149594, 0)
    tbl.Title_3.TextColor3 = Color3.fromRGB(180, 193, 216)
    tbl.Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.Title_3.Text = "Status: "
    tbl.Title_3.Position = UDim2.new(0.000545285, 0, 0.258937, 0)
    tbl.Title_3.BackgroundTransparency = 1
    tbl.Title_3.Parent = tbl.list

    tbl.CloseBtn_1.ImageColor3 = Color3.fromRGB(165, 182, 230)
    tbl.CloseBtn_1.BorderSizePixel = 0
    tbl.CloseBtn_1.ScaleType = Enum.ScaleType.Fit
    tbl.CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.CloseBtn_1.Image = "rbxassetid://15866029769"
    tbl.CloseBtn_1.Size = UDim2.new(0.0711809, 0, 0.124451, 0)
    tbl.CloseBtn_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.CloseBtn_1.Name = "CloseBtn"
    tbl.CloseBtn_1.BackgroundTransparency = 1
    tbl.CloseBtn_1.Position = UDim2.new(0.921436, 0, 0.0172316, 0)
    tbl.CloseBtn_1.ImageTransparency = 0.51
    tbl.CloseBtn_1.Parent = tbl.LoaderFrame

    tbl.LocalScript.Parent = tbl.MainFrame

    tbl.TrigonLogo.BorderSizePixel = 0
    tbl.TrigonLogo.ScaleType = Enum.ScaleType.Fit
    tbl.TrigonLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tbl.TrigonLogo.Image = "rbxassetid://15844306310"
    tbl.TrigonLogo.Size = UDim2.new(0.5, 0, 0.747768, 0)
    tbl.TrigonLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tbl.TrigonLogo.Name = "TrigonLogo"
    tbl.TrigonLogo.BackgroundTransparency = 1
    tbl.TrigonLogo.Position = UDim2.new(0.249108, 0, 0.125064, 0)
    tbl.TrigonLogo.Visible = false
    tbl.TrigonLogo.Parent = tbl.MainFrame

    task.spawn(function()
        local script = tbl.LocalScript

        local TweenService = game:GetService("TweenService")
        local CurrentValue = 1
        local MainFrame = script.Parent
        local Bar = MainFrame.LoaderFrame.list.Frame.Bar
        local MaxValue = 100
        local Status = MainFrame.LoaderFrame.list.Title
        local TweenService = game:GetService("TweenService")


        local OptionR = MainFrame.SelectorFrame.Buttons.OptionR
        local Loader =  gethui():WaitForChild("TrigonLoader")
        local MainUI =  gethui():WaitForChild("TrigonMain")


        wait(1)


        local function ProgressBar(value, statusText, duration)
            CurrentValue = CurrentValue + value
            if CurrentValue > MaxValue then
                CurrentValue = MaxValue
            elseif CurrentValue < 0 then
                CurrentValue = 0
            end

            local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(Bar, tweenInfo, {Size = UDim2.new(CurrentValue / MaxValue, 0, 0.8, 0)})
            tween:Play()

            Status.Text = "Status: " .. (statusText or "")
        end

        Bar.Size = UDim2.new(0, 0, 0.8, 0)

        ProgressBar(50, "Checking for game scripts...", 1)
        wait(1)
        ProgressBar(20, "Finalizing everything...", 1)
        local buttonx23 = topbar("Trigon", "rbxassetid://15844306310", true)
        wait(1)
        ProgressBar(30, "Setup Complete!", 1)
        wait(0.5)
        MainFrame.LoaderFrame.Visible = false
        --MainFrame.SelectorFrame.Visible = true

        local function  loadtrigon()
            Loader.Enabled = false
            MainUI.Enabled = true
            print(MainUI.Enabled)
        end

        repeat
            task.wait() 
        until Loader and MainUI

        OptionR.Activated:Connect(function()

        end)

        loadtrigon()
    end)    
end

function main()
    local trii =
{
	TrigonMain = Instance.new("ScreenGui"),
	MainFrame = Instance.new("Frame"),
	BottomMenuFrame = Instance.new("Frame"),
	LeftFrame = Instance.new("Frame"),
	ExitBtn = Instance.new("ImageButton"),
	Icon = Instance.new("ImageLabel"),
	UICorner = Instance.new("UICorner"),
	RightFrame = Instance.new("Frame"),
	Button = Instance.new("ImageButton"),
	UIGradient = Instance.new("UIGradient"),
	Icon_1 = Instance.new("ImageLabel"),
	MenuList = Instance.new("Frame"),
	UICorner_1 = Instance.new("UICorner"),
	UIGridLayout = Instance.new("UIGridLayout"),
	HBtn = Instance.new("ImageButton"),
	UIGradient_1 = Instance.new("UIGradient"),
	Icon_2 = Instance.new("ImageLabel"),
	UIStroke = Instance.new("UIStroke"),
	UICorner_2 = Instance.new("UICorner"),
	ExecBtn = Instance.new("ImageButton"),
	Icon_3 = Instance.new("ImageLabel"),
	UIStroke_1 = Instance.new("UIStroke"),
	UICorner_3 = Instance.new("UICorner"),
	UIGradient_2 = Instance.new("UIGradient"),
	CloudBtn = Instance.new("ImageButton"),
	UIGradient_3 = Instance.new("UIGradient"),
	Icon_4 = Instance.new("ImageLabel"),
	UIStroke_2 = Instance.new("UIStroke"),
	UICorner_4 = Instance.new("UICorner"),
	SettingsBtn = Instance.new("ImageButton"),
	UIGradient_4 = Instance.new("UIGradient"),
	Icon_5 = Instance.new("ImageLabel"),
	UIStroke_3 = Instance.new("UIStroke"),
	UICorner_5 = Instance.new("UICorner"),
	UICorner_6 = Instance.new("UICorner"),
	logFrame = Instance.new("Frame"),
	UICorner_7 = Instance.new("UICorner"),
	logButtons = Instance.new("Frame"),
	logOutput = Instance.new("Frame"),
	Button_1 = Instance.new("ImageButton"),
	TextLabel = Instance.new("TextLabel"),
	UIListLayout = Instance.new("UIListLayout"),
	UIListLayout_1 = Instance.new("UIListLayout"),
	logWarning = Instance.new("Frame"),
	Button_2 = Instance.new("ImageButton"),
	TextLabel_1 = Instance.new("TextLabel"),
	UIListLayout_2 = Instance.new("UIListLayout"),
	logError = Instance.new("Frame"),
	Button_3 = Instance.new("ImageButton"),
	TextLabel_2 = Instance.new("TextLabel"),
	UIListLayout_3 = Instance.new("UIListLayout"),
	logInfo = Instance.new("Frame"),
	Button_4 = Instance.new("ImageButton"),
	TextLabel_3 = Instance.new("TextLabel"),
	UIListLayout_4 = Instance.new("UIListLayout"),
	cclrbtn = Instance.new("ImageButton"),
	Title = Instance.new("TextLabel"),
	UICorner_8 = Instance.new("UICorner"),
	UIStroke_4 = Instance.new("UIStroke"),
	excp = Instance.new("ImageButton"),
	Title_1 = Instance.new("TextLabel"),
	UICorner_9 = Instance.new("UICorner"),
	UIStroke_5 = Instance.new("UIStroke"),
	TextLabel_4 = Instance.new("TextLabel"),
	consoleFrame = Instance.new("ScrollingFrame"),
	GlobalLog = Instance.new("LocalScript"),
	TextBox = Instance.new("TextLabel"),
	SettingsFrame = Instance.new("Frame"),
	UICorner_10 = Instance.new("UICorner"),
	sample = Instance.new("Frame"),
	UIListLayout_5 = Instance.new("UIListLayout"),
	UICorner_11 = Instance.new("UICorner"),
	Title_2 = Instance.new("TextLabel"),
	Title_3 = Instance.new("TextLabel"),
	Title_4 = Instance.new("TextLabel"),
	ImageLabel = Instance.new("ImageLabel"),
	homeFrame = Instance.new("Frame"),
	UICorner_12 = Instance.new("UICorner"),
	changelogFrame = Instance.new("ScrollingFrame"),
	ScriptBox = Instance.new("TextBox"),
	UICorner_13 = Instance.new("UICorner"),
	UIListLayout_6 = Instance.new("UIListLayout"),
	scriptsFrame = Instance.new("ScrollingFrame"),
	UICorner_14 = Instance.new("UICorner"),
	UIListLayout_7 = Instance.new("UIListLayout"),
	_GameHeader = Instance.new("Frame"),
	Title_5 = Instance.new("TextLabel"),
	UICorner_15 = Instance.new("UICorner"),
	TextButton = Instance.new("TextButton"),
	UICorner_16 = Instance.new("UICorner"),
	localplrFrame = Instance.new("Frame"),
	UIListLayout_8 = Instance.new("UIListLayout"),
	Header = Instance.new("Frame"),
	Title_6 = Instance.new("TextLabel"),
	UICorner_17 = Instance.new("UICorner"),
	walkspeed = Instance.new("Frame"),
	Slider = Instance.new("Frame"),
	Image = Instance.new("Frame"),
	Bar_Background = Instance.new("Frame"),
	UICorner_18 = Instance.new("UICorner"),
	Bar_Foreground = Instance.new("Frame"),
	UICorner_19 = Instance.new("UICorner"),
	Thumb = Instance.new("ImageLabel"),
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
	Thumb_Pressed = Instance.new("ImageLabel"),
	Configuration = Instance.new("Configuration"),
	ObjectBarBackground = Instance.new("ObjectValue"),
	ObjectBarForeground = Instance.new("ObjectValue"),
	ObjectThumbNormal = Instance.new("ObjectValue"),
	ObjectThumbPressed = Instance.new("ObjectValue"),
	Title_7 = Instance.new("TextLabel"),
	jumspeed = Instance.new("Frame"),
	Slider_1 = Instance.new("Frame"),
	Image_1 = Instance.new("Frame"),
	Bar_Background_1 = Instance.new("Frame"),
	UICorner_20 = Instance.new("UICorner"),
	Bar_Foreground_1 = Instance.new("Frame"),
	UICorner_21 = Instance.new("UICorner"),
	Thumb_1 = Instance.new("ImageLabel"),
	UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint"),
	Thumb_Pressed_1 = Instance.new("ImageLabel"),
	Configuration_1 = Instance.new("Configuration"),
	ObjectBarBackground_1 = Instance.new("ObjectValue"),
	ObjectBarForeground_1 = Instance.new("ObjectValue"),
	ObjectThumbNormal_1 = Instance.new("ObjectValue"),
	ObjectThumbPressed_1 = Instance.new("ObjectValue"),
	Scripts = Instance.new("Folder"),
	FormSliderHorizontalLocalScript = Instance.new("LocalScript"),
	Title_8 = Instance.new("TextLabel"),
	LocalPlayerHandle = Instance.new("LocalScript"),
	FormSliderClass = Instance.new("ModuleScript"),
	ExtendDraggableClass = Instance.new("ModuleScript"),
	CurPos = Instance.new("TextLabel"),
	localscriptsFrame = Instance.new("ScrollingFrame"),
	UICorner_22 = Instance.new("UICorner"),
	UIListLayout_9 = Instance.new("UIListLayout"),
	_GameHeader_1 = Instance.new("Frame"),
	Title_9 = Instance.new("TextLabel"),
	UICorner_23 = Instance.new("UICorner"),
	Add_btn = Instance.new("Frame"),
	TextButton_1 = Instance.new("TextButton"),
	UICorner_24 = Instance.new("UICorner"),
	script_placeholder = Instance.new("Frame"),
	scriptTitle = Instance.new("TextLabel"),
	Buttons = Instance.new("Frame"),
	UIListLayout_10 = Instance.new("UIListLayout"),
	run = Instance.new("Frame"),
	UIListLayout_11 = Instance.new("UIListLayout"),
	UICorner_25 = Instance.new("UICorner"),
	button = Instance.new("ImageButton"),
	autoload = Instance.new("Frame"),
	UIListLayout_12 = Instance.new("UIListLayout"),
	button_1 = Instance.new("ImageButton"),
	zz = Instance.new("TextLabel"),
	UICorner_26 = Instance.new("UICorner"),
	delete = Instance.new("Frame"),
	UIListLayout_13 = Instance.new("UIListLayout"),
	UICorner_27 = Instance.new("UICorner"),
	button_2 = Instance.new("ImageButton"),
	UICorner_28 = Instance.new("UICorner"),
	addlocalscriptsFrame = Instance.new("ScrollingFrame"),
	UICorner_29 = Instance.new("UICorner"),
	UIListLayout_14 = Instance.new("UIListLayout"),
	_GameHeader_2 = Instance.new("Frame"),
	Title_10 = Instance.new("TextLabel"),
	UICorner_30 = Instance.new("UICorner"),
	Frame = Instance.new("Frame"),
	TextButton_2 = Instance.new("TextButton"),
	UICorner_31 = Instance.new("UICorner"),
	addFrame = Instance.new("Frame"),
	input = Instance.new("Frame"),
	TextBox_1 = Instance.new("TextBox"),
	Title_11 = Instance.new("TextLabel"),
	TextLabel_5 = Instance.new("TextLabel"),
	confrim_btn = Instance.new("Frame"),
	TextButton_3 = Instance.new("TextButton"),
	UICorner_32 = Instance.new("UICorner"),
	cancel_btn = Instance.new("Frame"),
	TextButton_4 = Instance.new("TextButton"),
	UICorner_33 = Instance.new("UICorner"),
	ExecFrame = Instance.new("Frame"),
	Buttons_1 = Instance.new("Frame"),
	UIListLayout_15 = Instance.new("UIListLayout"),
	Button1 = Instance.new("ImageButton"),
	UIStroke_6 = Instance.new("UIStroke"),
	UICorner_34 = Instance.new("UICorner"),
	Title_12 = Instance.new("TextLabel"),
	Button4 = Instance.new("ImageButton"),
	Title_13 = Instance.new("TextLabel"),
	UICorner_35 = Instance.new("UICorner"),
	UIStroke_7 = Instance.new("UIStroke"),
	Button3 = Instance.new("ImageButton"),
	Title_14 = Instance.new("TextLabel"),
	UICorner_36 = Instance.new("UICorner"),
	UIStroke_8 = Instance.new("UIStroke"),
	Button2 = Instance.new("ImageButton"),
	Title_15 = Instance.new("TextLabel"),
	UICorner_37 = Instance.new("UICorner"),
	UIStroke_9 = Instance.new("UIStroke"),
	UICorner_38 = Instance.new("UICorner"),
	ScrollingFrame = Instance.new("ScrollingFrame"),
	LocalScript = Instance.new("LocalScript"),
	ScriptBox_1 = Instance.new("TextBox"),
	Highlighter = Instance.new("ModuleScript"),
	lexer = Instance.new("ModuleScript"),
	language = Instance.new("ModuleScript"),
	theme = Instance.new("ModuleScript"),
	types = Instance.new("ModuleScript"),
	utility = Instance.new("ModuleScript"),
	UICorner_39 = Instance.new("UICorner"),
	LocalScript_1 = Instance.new("LocalScript"),
	savescripts = Instance.new("LocalScript")
}

trii.TrigonMain.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
trii.TrigonMain.IgnoreGuiInset = true
trii.TrigonMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
trii.TrigonMain.Name = "TrigonMain"
trii.TrigonMain.Parent = gethui()
trii.TrigonMain.Enabled = false

trii.MainFrame.BorderSizePixel = 0
trii.MainFrame.Size = UDim2.new(1.0005, 0, 1, 0)
trii.MainFrame.BackgroundTransparency = 0.35
trii.MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.MainFrame.Name = "MainFrame"
trii.MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
trii.MainFrame.Parent = trii.TrigonMain

trii.BottomMenuFrame.BorderSizePixel = 0
trii.BottomMenuFrame.Size = UDim2.new(0.950071, 0, 0.195095, 0)
trii.BottomMenuFrame.Position = UDim2.new(0.0244645, 0, 0.755853, 0)
trii.BottomMenuFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.BottomMenuFrame.ClipsDescendants = true
trii.BottomMenuFrame.Name = "BottomMenuFrame"
trii.BottomMenuFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.BottomMenuFrame.Parent = trii.MainFrame

trii.LeftFrame.BorderSizePixel = 0
trii.LeftFrame.Size = UDim2.new(0.162271, 0, 1, 0)
trii.LeftFrame.Position = UDim2.new(-0.00054132, 0, 0, 0)
trii.LeftFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.LeftFrame.Name = "LeftFrame"
trii.LeftFrame.BackgroundColor3 = Color3.fromRGB(47, 52, 66)
trii.LeftFrame.Parent = trii.BottomMenuFrame

trii.ExitBtn.ZIndex = 2
trii.ExitBtn.BorderSizePixel = 0
trii.ExitBtn.ScaleType = Enum.ScaleType.Fit
trii.ExitBtn.AutoButtonColor = false
trii.ExitBtn.BackgroundColor3 = Color3.fromRGB(47, 52, 66)
trii.ExitBtn.Selectable = false
trii.ExitBtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.ExitBtn.Size = UDim2.new(0.891645, 0, 0.893438, 0)
trii.ExitBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ExitBtn.Name = "ExitBtn"
trii.ExitBtn.Position = UDim2.new(0.508863, 0, 0.5, 0)
trii.ExitBtn.Parent = trii.LeftFrame

trii.Icon.ImageColor3 = Color3.fromRGB(201, 205, 210)
trii.Icon.SizeConstraint = Enum.SizeConstraint.RelativeXX
trii.Icon.BorderSizePixel = 0
trii.Icon.ScaleType = Enum.ScaleType.Fit
trii.Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon.Image = "rbxassetid://15879382339"
trii.Icon.Size = UDim2.new(0.834218, 0, 12.9208, 0)
trii.Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon.Name = "Icon"
trii.Icon.BackgroundTransparency = 1
trii.Icon.Position = UDim2.new(0.494743, 0, 0.490654, 0)
trii.Icon.Parent = trii.ExitBtn

trii.UICorner.CornerRadius = UDim.new(0.08, 0)
trii.UICorner.Parent = trii.LeftFrame

trii.RightFrame.BorderSizePixel = 0
trii.RightFrame.Size = UDim2.new(0.111862, 0, 1, 0)
trii.RightFrame.Position = UDim2.new(0.887643, 0, 0, 0)
trii.RightFrame.BackgroundTransparency = 1
trii.RightFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.RightFrame.Name = "RightFrame"
trii.RightFrame.BackgroundColor3 = Color3.fromRGB(47, 52, 65)
trii.RightFrame.Parent = trii.BottomMenuFrame

trii.Button.Active = false
trii.Button.BorderSizePixel = 0
trii.Button.ScaleType = Enum.ScaleType.Fit
trii.Button.AutoButtonColor = false
trii.Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Button.Selectable = false
trii.Button.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Button.Size = UDim2.new(0.834246, 0, 0.8, 0)
trii.Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Button.Name = "Button"
trii.Button.BackgroundTransparency = 1
trii.Button.Position = UDim2.new(0.490288, 0, 0.5, 0)
trii.Button.Parent = trii.RightFrame

trii.UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 84)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 82, 107)) }
trii.UIGradient.Rotation = -90
trii.UIGradient.Parent = trii.Button

trii.Icon_1.SizeConstraint = Enum.SizeConstraint.RelativeYY
trii.Icon_1.BorderSizePixel = 0
trii.Icon_1.ScaleType = Enum.ScaleType.Fit
trii.Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon_1.Image = "rbxassetid://15844306310"
trii.Icon_1.Size = UDim2.new(0.83136, 0, 0.783259, 0)
trii.Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon_1.Name = "Icon"
trii.Icon_1.BackgroundTransparency = 1
trii.Icon_1.Position = UDim2.new(0.370799, 0, 0.475195, 0)
trii.Icon_1.Parent = trii.Button

trii.MenuList.BorderSizePixel = 0
trii.MenuList.Size = UDim2.new(0.777778, 0, 1, 0)
trii.MenuList.Position = UDim2.new(0.116366, 0, 0, 0)
trii.MenuList.BackgroundTransparency = 1
trii.MenuList.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.MenuList.Name = "MenuList"
trii.MenuList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.MenuList.Parent = trii.BottomMenuFrame

trii.UICorner_1.CornerRadius = UDim.new(0.15, 0)
trii.UICorner_1.Parent = trii.MenuList

trii.UIGridLayout.CellPadding = UDim2.new(0.02, 0, 1, 0)
trii.UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIGridLayout.CellSize = UDim2.new(0.12, 0, 0.8, 0)
trii.UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIGridLayout.Parent = trii.MenuList

trii.HBtn.BorderSizePixel = 3
trii.HBtn.ScaleType = Enum.ScaleType.Fit
trii.HBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.HBtn.BorderMode = Enum.BorderMode.Inset
trii.HBtn.Selectable = false
trii.HBtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.HBtn.Size = UDim2.new(0.12, 0, 0.8, 0)
trii.HBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.HBtn.Name = "HBtn"
trii.HBtn.Position = UDim2.new(0.406853, 0, 0.5, 0)
trii.HBtn.Parent = trii.MenuList

trii.UIGradient_1.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 84)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 82, 107)) }
trii.UIGradient_1.Rotation = -90
trii.UIGradient_1.Parent = trii.HBtn

trii.Icon_2.ImageColor3 = Color3.fromRGB(201, 205, 210)
trii.Icon_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
trii.Icon_2.BorderSizePixel = 0
trii.Icon_2.ScaleType = Enum.ScaleType.Fit
trii.Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon_2.Image = "rbxassetid://15982534656"
trii.Icon_2.Size = UDim2.new(0.858703, 0, 0.887424, 0)
trii.Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon_2.Name = "Icon"
trii.Icon_2.BackgroundTransparency = 1
trii.Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Icon_2.Parent = trii.HBtn

trii.UIStroke.Thickness = 2
trii.UIStroke.Color = Color3.fromRGB(121, 133, 167)
trii.UIStroke.Parent = trii.HBtn

trii.UICorner_2.CornerRadius = UDim.new(0.14, 0)
trii.UICorner_2.Parent = trii.HBtn

trii.ExecBtn.BorderSizePixel = 3
trii.ExecBtn.ScaleType = Enum.ScaleType.Fit
trii.ExecBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.ExecBtn.BorderMode = Enum.BorderMode.Inset
trii.ExecBtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.ExecBtn.Size = UDim2.new(0.12, 0, 0.8, 0)
trii.ExecBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ExecBtn.Name = "ExecBtn"
trii.ExecBtn.Position = UDim2.new(0.406853, 0, 0.5, 0)
trii.ExecBtn.Parent = trii.MenuList

trii.Icon_3.ImageColor3 = Color3.fromRGB(201, 205, 210)
trii.Icon_3.SizeConstraint = Enum.SizeConstraint.RelativeXX
trii.Icon_3.BorderSizePixel = 0
trii.Icon_3.ScaleType = Enum.ScaleType.Fit
trii.Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon_3.Image = "rbxassetid://15845222401"
trii.Icon_3.Size = UDim2.new(0.858703, 0, 0.887424, 0)
trii.Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon_3.Name = "Icon"
trii.Icon_3.BackgroundTransparency = 1
trii.Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Icon_3.Parent = trii.ExecBtn

trii.UIStroke_1.Thickness = 2
trii.UIStroke_1.Color = Color3.fromRGB(121, 133, 167)
trii.UIStroke_1.Parent = trii.ExecBtn

trii.UICorner_3.CornerRadius = UDim.new(0.14, 0)
trii.UICorner_3.Parent = trii.ExecBtn

trii.UIGradient_2.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 84)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 82, 107)) }
trii.UIGradient_2.Rotation = -90
trii.UIGradient_2.Parent = trii.ExecBtn

trii.CloudBtn.BorderSizePixel = 3
trii.CloudBtn.ScaleType = Enum.ScaleType.Fit
trii.CloudBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.CloudBtn.BorderMode = Enum.BorderMode.Inset
trii.CloudBtn.Selectable = false
trii.CloudBtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.CloudBtn.Size = UDim2.new(0.12, 0, 0.8, 0)
trii.CloudBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.CloudBtn.Name = "CloudBtn"
trii.CloudBtn.Position = UDim2.new(0.406853, 0, 0.5, 0)
trii.CloudBtn.Parent = trii.MenuList

trii.UIGradient_3.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 84)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 82, 107)) }
trii.UIGradient_3.Rotation = -90
trii.UIGradient_3.Parent = trii.CloudBtn

trii.Icon_4.ImageColor3 = Color3.fromRGB(201, 205, 210)
trii.Icon_4.SizeConstraint = Enum.SizeConstraint.RelativeXX
trii.Icon_4.BorderSizePixel = 0
trii.Icon_4.ScaleType = Enum.ScaleType.Fit
trii.Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon_4.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon_4.Image = "rbxassetid://15982538173"
trii.Icon_4.Size = UDim2.new(0.858703, 0, 0.887424, 0)
trii.Icon_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon_4.Name = "Icon"
trii.Icon_4.BackgroundTransparency = 1
trii.Icon_4.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Icon_4.Parent = trii.CloudBtn

trii.UIStroke_2.Thickness = 2
trii.UIStroke_2.Color = Color3.fromRGB(121, 133, 167)
trii.UIStroke_2.Parent = trii.CloudBtn

trii.UICorner_4.CornerRadius = UDim.new(0.14, 0)
trii.UICorner_4.Parent = trii.CloudBtn

trii.SettingsBtn.BorderSizePixel = 3
trii.SettingsBtn.ScaleType = Enum.ScaleType.Fit
trii.SettingsBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.SettingsBtn.BorderMode = Enum.BorderMode.Inset
trii.SettingsBtn.Selectable = false
trii.SettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.SettingsBtn.Size = UDim2.new(0.12, 0, 0.8, 0)
trii.SettingsBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.SettingsBtn.Name = "SettingsBtn"
trii.SettingsBtn.Position = UDim2.new(0.406853, 0, 0.5, 0)
trii.SettingsBtn.Parent = trii.MenuList

trii.UIGradient_4.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 64, 84)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 82, 107)) }
trii.UIGradient_4.Rotation = -90
trii.UIGradient_4.Parent = trii.SettingsBtn

trii.Icon_5.ImageColor3 = Color3.fromRGB(201, 205, 210)
trii.Icon_5.SizeConstraint = Enum.SizeConstraint.RelativeXX
trii.Icon_5.BorderSizePixel = 0
trii.Icon_5.ScaleType = Enum.ScaleType.Fit
trii.Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Icon_5.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Icon_5.Image = "rbxassetid://15845262087"
trii.Icon_5.Size = UDim2.new(0.858703, 0, 0.887424, 0)
trii.Icon_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Icon_5.Name = "Icon"
trii.Icon_5.BackgroundTransparency = 1
trii.Icon_5.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Icon_5.Parent = trii.SettingsBtn

trii.UIStroke_3.Thickness = 2
trii.UIStroke_3.Color = Color3.fromRGB(121, 133, 167)
trii.UIStroke_3.Parent = trii.SettingsBtn

trii.UICorner_5.CornerRadius = UDim.new(0.14, 0)
trii.UICorner_5.Parent = trii.SettingsBtn

trii.UICorner_6.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_6.Parent = trii.BottomMenuFrame

trii.logFrame.Active = true
trii.logFrame.BorderSizePixel = 0
trii.logFrame.Size = UDim2.new(0.95, 0, 0.649, 0)
trii.logFrame.Position = UDim2.new(0.024, 0, 0.09, 0)
trii.logFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logFrame.Visible = false
trii.logFrame.Name = "logFrame"
trii.logFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.logFrame.Parent = trii.MainFrame

trii.UICorner_7.CornerRadius = UDim.new(0.02, 0)
trii.UICorner_7.Parent = trii.logFrame

trii.logButtons.BorderSizePixel = 0
trii.logButtons.Size = UDim2.new(0.964723, 0, 0.120071, 0)
trii.logButtons.Position = UDim2.new(0.0291137, 0, 0.878761, 0)
trii.logButtons.BackgroundTransparency = 1
trii.logButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logButtons.Name = "logButtons"
trii.logButtons.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
trii.logButtons.Parent = trii.logFrame

trii.logOutput.BorderSizePixel = 0
trii.logOutput.Size = UDim2.new(0.110762, 0, 1, 0)
trii.logOutput.BackgroundTransparency = 1
trii.logOutput.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logOutput.ClipsDescendants = true
trii.logOutput.Name = "logOutput"
trii.logOutput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.logOutput.Parent = trii.logButtons

trii.Button_1.ZIndex = 2
trii.Button_1.ScaleType = Enum.ScaleType.Fit
trii.Button_1.Image = "rbxassetid://3926311105"
trii.Button_1.ImageRectSize = Vector2.new(48, 48)
trii.Button_1.Size = UDim2.new(0.23, 0, 1, 0)
trii.Button_1.Name = "Button"
trii.Button_1.LayoutOrder = 7
trii.Button_1.BackgroundTransparency = 1
trii.Button_1.Position = UDim2.new(0, 0, 5.09924e-07, 0)
trii.Button_1.ImageRectOffset = Vector2.new(4, 836)
trii.Button_1.Parent = trii.logOutput

trii.TextLabel.TextWrapped = true
trii.TextLabel.BorderSizePixel = 0
trii.TextLabel.TextScaled = true
trii.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel.TextSize = 14
trii.TextLabel.Size = UDim2.new(0.728848, 0, 0.568112, 0)
trii.TextLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel.Text = "Log Output"
trii.TextLabel.Position = UDim2.new(0.26, 0, 0.215944, 0)
trii.TextLabel.BackgroundTransparency = 1
trii.TextLabel.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel.Parent = trii.logOutput

trii.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout.Padding = UDim.new(0.03, 0)
trii.UIListLayout.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout.Parent = trii.logOutput

trii.UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Right
trii.UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_1.Padding = UDim.new(0.005, 0)
trii.UIListLayout_1.Parent = trii.logButtons

trii.logWarning.BorderSizePixel = 0
trii.logWarning.Size = UDim2.new(0.133679, 0, 1, 0)
trii.logWarning.Position = UDim2.new(0.125762, 0, 0, 0)
trii.logWarning.BackgroundTransparency = 1
trii.logWarning.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logWarning.ClipsDescendants = true
trii.logWarning.Name = "logWarning"
trii.logWarning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.logWarning.Parent = trii.logButtons

trii.Button_2.ZIndex = 2
trii.Button_2.ScaleType = Enum.ScaleType.Fit
trii.Button_2.Image = "rbxassetid://3926311105"
trii.Button_2.ImageRectSize = Vector2.new(48, 48)
trii.Button_2.Size = UDim2.new(0.206312, 0, 1, 0)
trii.Button_2.Name = "Button"
trii.Button_2.LayoutOrder = 7
trii.Button_2.BackgroundTransparency = 1
trii.Button_2.Position = UDim2.new(0, 0, 5.09924e-07, 0)
trii.Button_2.ImageRectOffset = Vector2.new(4, 836)
trii.Button_2.Parent = trii.logWarning

trii.TextLabel_1.TextWrapped = true
trii.TextLabel_1.BorderSizePixel = 0
trii.TextLabel_1.TextScaled = true
trii.TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel_1.TextSize = 14
trii.TextLabel_1.Size = UDim2.new(0.74, 0, 0.568112, 0)
trii.TextLabel_1.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel_1.Text = "Log Warning	"
trii.TextLabel_1.Position = UDim2.new(0.26, 0, 0.215944, 0)
trii.TextLabel_1.BackgroundTransparency = 1
trii.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel_1.Parent = trii.logWarning

trii.UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_2.Padding = UDim.new(0.03, 0)
trii.UIListLayout_2.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_2.Parent = trii.logWarning

trii.logError.BorderSizePixel = 0
trii.logError.Size = UDim2.new(0.110762, 0, 1, 0)
trii.logError.BackgroundTransparency = 1
trii.logError.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logError.ClipsDescendants = true
trii.logError.Name = "logError"
trii.logError.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.logError.Parent = trii.logButtons

trii.Button_3.ZIndex = 2
trii.Button_3.ScaleType = Enum.ScaleType.Fit
trii.Button_3.Image = "rbxassetid://3926311105"
trii.Button_3.ImageRectSize = Vector2.new(48, 48)
trii.Button_3.Size = UDim2.new(0.23, 0, 1, 0)
trii.Button_3.Name = "Button"
trii.Button_3.LayoutOrder = 7
trii.Button_3.BackgroundTransparency = 1
trii.Button_3.Position = UDim2.new(0, 0, 5.09924e-07, 0)
trii.Button_3.ImageRectOffset = Vector2.new(4, 836)
trii.Button_3.Parent = trii.logError

trii.TextLabel_2.TextWrapped = true
trii.TextLabel_2.BorderSizePixel = 0
trii.TextLabel_2.TextScaled = true
trii.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel_2.TextSize = 14
trii.TextLabel_2.Size = UDim2.new(0.728848, 0, 0.41773, 0)
trii.TextLabel_2.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel_2.Text = "Log Error"
trii.TextLabel_2.Position = UDim2.new(0.26, 0, 0.366327, 0)
trii.TextLabel_2.BackgroundTransparency = 1
trii.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel_2.Parent = trii.logError

trii.UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_3.Padding = UDim.new(0.03, 0)
trii.UIListLayout_3.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_3.Parent = trii.logError

trii.logInfo.BorderSizePixel = 0
trii.logInfo.Size = UDim2.new(0.139335, 0, 1, 0)
trii.logInfo.Position = UDim2.new(0.414065, 0, 0, 0)
trii.logInfo.BackgroundTransparency = 1
trii.logInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.logInfo.ClipsDescendants = true
trii.logInfo.Name = "logInfo"
trii.logInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.logInfo.Parent = trii.logButtons

trii.Button_4.ZIndex = 2
trii.Button_4.ScaleType = Enum.ScaleType.Fit
trii.Button_4.Image = "rbxassetid://3926305904"
trii.Button_4.ImageRectSize = Vector2.new(36, 36)
trii.Button_4.Size = UDim2.new(0.184161, 0, 1, 0)
trii.Button_4.Name = "Button"
trii.Button_4.LayoutOrder = 7
trii.Button_4.BackgroundTransparency = 1
trii.Button_4.Position = UDim2.new(0, 0, 5.09924e-07, 0)
trii.Button_4.ImageRectOffset = Vector2.new(724, 724)
trii.Button_4.Parent = trii.logInfo

trii.TextLabel_3.TextWrapped = true
trii.TextLabel_3.BorderSizePixel = 0
trii.TextLabel_3.TextScaled = true
trii.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel_3.TextSize = 14
trii.TextLabel_3.Size = UDim2.new(0.728848, 0, 0.384311, 0)
trii.TextLabel_3.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel_3.Text = "Enable Logging"
trii.TextLabel_3.Position = UDim2.new(0.26, 0, 0.399745, 0)
trii.TextLabel_3.BackgroundTransparency = 1
trii.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel_3.Parent = trii.logInfo

trii.UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_4.Padding = UDim.new(0.03, 0)
trii.UIListLayout_4.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_4.Parent = trii.logInfo

trii.cclrbtn.BorderSizePixel = 3
trii.cclrbtn.ScaleType = Enum.ScaleType.Fit
trii.cclrbtn.AutoButtonColor = false
trii.cclrbtn.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.cclrbtn.BorderMode = Enum.BorderMode.Inset
trii.cclrbtn.Selectable = false
trii.cclrbtn.AnchorPoint = Vector2.new(0.5, 0.5)
trii.cclrbtn.Size = UDim2.new(0.108402, 0, 0.784056, 0)
trii.cclrbtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.cclrbtn.Name = "cclrbtn"
trii.cclrbtn.Position = UDim2.new(0.580167, 0, 0.5, 0)
trii.cclrbtn.Parent = trii.logButtons

trii.Title.TextWrapped = true
trii.Title.BorderSizePixel = 0
trii.Title.TextScaled = true
trii.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title.TextSize = 14
trii.Title.Name = "Title"
trii.Title.Size = UDim2.new(0.582424, 0, 0.612447, 0)
trii.Title.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title.Text = "Clear Logs"
trii.Title.Position = UDim2.new(0.494866, 0, 0.493859, 0)
trii.Title.BackgroundTransparency = 1
trii.Title.Parent = trii.cclrbtn

trii.UICorner_8.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_8.Parent = trii.cclrbtn

trii.UIStroke_4.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_4.Thickness = 3
trii.UIStroke_4.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_4.Enabled = false
trii.UIStroke_4.Parent = trii.cclrbtn

trii.excp.BorderSizePixel = 3
trii.excp.ScaleType = Enum.ScaleType.Fit
trii.excp.AutoButtonColor = false
trii.excp.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.excp.BorderMode = Enum.BorderMode.Inset
trii.excp.Selectable = false
trii.excp.AnchorPoint = Vector2.new(0.5, 0.5)
trii.excp.Size = UDim2.new(0.0945025, 0, 0.784056, 0)
trii.excp.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.excp.Name = "excp"
trii.excp.Position = UDim2.new(0.711627, 0, 0.616964, 0)
trii.excp.Parent = trii.logButtons

trii.Title_1.TextWrapped = true
trii.Title_1.BorderSizePixel = 0
trii.Title_1.TextScaled = true
trii.Title_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_1.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_1.TextSize = 14
trii.Title_1.Name = "Title"
trii.Title_1.Size = UDim2.new(0.712748, 0, 0.866139, 0)
trii.Title_1.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_1.Text = "Execute from Clipboard"
trii.Title_1.Position = UDim2.new(0.495013, 0, 0.497096, 0)
trii.Title_1.BackgroundTransparency = 1
trii.Title_1.Parent = trii.excp

trii.UICorner_9.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_9.Parent = trii.excp

trii.UIStroke_5.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_5.Thickness = 3
trii.UIStroke_5.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_5.Enabled = false
trii.UIStroke_5.Parent = trii.excp

trii.TextLabel_4.TextWrapped = true
trii.TextLabel_4.BorderSizePixel = 0
trii.TextLabel_4.TextScaled = true
trii.TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel_4.TextSize = 14
trii.TextLabel_4.Size = UDim2.new(0.242269, 0, 0.492921, 0)
trii.TextLabel_4.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel_4.Text = "Note: There is like 280 line limit on roblox :/"
trii.TextLabel_4.Position = UDim2.new(0.81694, 0, 0.253539, 0)
trii.TextLabel_4.BackgroundTransparency = 1
trii.TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel_4.Parent = trii.logButtons

trii.consoleFrame.BorderSizePixel = 0
trii.consoleFrame.CanvasSize = UDim2.new(0, 0, 0.87, 0)
trii.consoleFrame.CanvasPosition = Vector2.new(0, 7.944)
trii.consoleFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
trii.consoleFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.consoleFrame.Size = UDim2.new(0.975214, 0, 0.853, 0)
trii.consoleFrame.BackgroundTransparency = 1
trii.consoleFrame.Active = true
trii.consoleFrame.ScrollBarImageTransparency = 0.8
trii.consoleFrame.ScrollBarThickness = 10
trii.consoleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.consoleFrame.Name = "consoleFrame"
trii.consoleFrame.Position = UDim2.new(0.0167858, 0, 0.0257617, 0)
trii.consoleFrame.Parent = trii.logFrame

trii.GlobalLog.Name = "GlobalLog"
trii.GlobalLog.Parent = trii.consoleFrame

trii.TextBox.BorderSizePixel = 0
trii.TextBox.RichText = true
trii.TextBox.TextYAlignment = Enum.TextYAlignment.Top
trii.TextBox.BackgroundColor3 = Color3.fromRGB(39, 53, 255)
trii.TextBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextBox.TextStrokeColor3 = Color3.fromRGB(211, 211, 211)
trii.TextBox.TextSize = 26
trii.TextBox.Name = "TextBox"
trii.TextBox.AutomaticSize = Enum.AutomaticSize.Y
trii.TextBox.Size = UDim2.new(1, 0, 1, 0)
trii.TextBox.TextColor3 = Color3.fromRGB(211, 211, 211)
trii.TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextBox.Text = ""
trii.TextBox.LineHeight = 1.3
trii.TextBox.BackgroundTransparency = 1
trii.TextBox.TextXAlignment = Enum.TextXAlignment.Left
trii.TextBox.Parent = trii.consoleFrame

trii.SettingsFrame.Active = true
trii.SettingsFrame.BorderSizePixel = 0
trii.SettingsFrame.Size = UDim2.new(0.95, 0, 0.649, 0)
trii.SettingsFrame.Position = UDim2.new(0.024, 0, 0.09, 0)
trii.SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.SettingsFrame.Visible = false
trii.SettingsFrame.Name = "SettingsFrame"
trii.SettingsFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.SettingsFrame.Parent = trii.MainFrame

trii.UICorner_10.CornerRadius = UDim.new(0.02, 0)
trii.UICorner_10.Parent = trii.SettingsFrame

trii.sample.BorderSizePixel = 0
trii.sample.Size = UDim2.new(0.939366, 0, 0.171716, 0)
trii.sample.Position = UDim2.new(0.0299999, 0, 0.0520692, 0)
trii.sample.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.sample.Name = "sample"
trii.sample.BackgroundColor3 = Color3.fromRGB(30, 34, 42)
trii.sample.Parent = trii.SettingsFrame

trii.UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Right
trii.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_5.Padding = UDim.new(0.1, 0)
trii.UIListLayout_5.Parent = trii.sample

trii.UICorner_11.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_11.Parent = trii.sample

trii.Title_2.TextWrapped = true
trii.Title_2.BorderSizePixel = 0
trii.Title_2.TextScaled = true
trii.Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_2.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_2.TextSize = 100
trii.Title_2.Name = "Title"
trii.Title_2.Size = UDim2.new(0.895877, 0, 0, 0)
trii.Title_2.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_2.Text = ""
trii.Title_2.Position = UDim2.new(0.552062, 0, 0, 0)
trii.Title_2.BackgroundTransparency = 1
trii.Title_2.TextXAlignment = Enum.TextXAlignment.Left
trii.Title_2.Parent = trii.sample

trii.Title_3.TextWrapped = true
trii.Title_3.BorderSizePixel = 0
trii.Title_3.TextScaled = true
trii.Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_3.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_3.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_3.TextSize = 100
trii.Title_3.Name = "Title"
trii.Title_3.Size = UDim2.new(0.909815, 0, 0.349235, 0)
trii.Title_3.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_3.Text = "Enable Trigon Desktop Connection"
trii.Title_3.Position = UDim2.new(0.545092, 0, 0.274617, 0)
trii.Title_3.BackgroundTransparency = 1
trii.Title_3.TextXAlignment = Enum.TextXAlignment.Left
trii.Title_3.Parent = trii.sample

trii.Title_4.TextWrapped = true
trii.Title_4.BorderSizePixel = 0
trii.Title_4.TextScaled = true
trii.Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_4.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_4.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_4.TextSize = 100
trii.Title_4.Name = "Title"
trii.Title_4.Size = UDim2.new(0.909815, 0, 0.273333, 0)
trii.Title_4.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_4.Text = "{comming soon}"
trii.Title_4.Position = UDim2.new(0.545092, 0, 0.685901, 0)
trii.Title_4.BackgroundTransparency = 1
trii.Title_4.TextXAlignment = Enum.TextXAlignment.Left
trii.Title_4.Parent = trii.sample

trii.ImageLabel.BorderSizePixel = 0
trii.ImageLabel.ScaleType = Enum.ScaleType.Fit
trii.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.ImageLabel.Image = "rbxassetid://15865858307"
trii.ImageLabel.Size = UDim2.new(0.0631573, 0, 0.173628, 0)
trii.ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ImageLabel.BackgroundTransparency = 1
trii.ImageLabel.Position = UDim2.new(0.0408212, 0, 0.0501573, 0)
trii.ImageLabel.Parent = trii.SettingsFrame

trii.homeFrame.Active = true
trii.homeFrame.BorderSizePixel = 0
trii.homeFrame.Size = UDim2.new(0.949745, 0, 0.646527, 0)
trii.homeFrame.Position = UDim2.new(0.0244645, 0, 0.0897571, 0)
trii.homeFrame.BackgroundTransparency = 0.45
trii.homeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.homeFrame.ClipsDescendants = true
trii.homeFrame.Name = "homeFrame"
trii.homeFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.homeFrame.Parent = trii.MainFrame

trii.UICorner_12.CornerRadius = UDim.new(0.02, 0)
trii.UICorner_12.Parent = trii.homeFrame

trii.changelogFrame.BorderSizePixel = 0
trii.changelogFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
trii.changelogFrame.Selectable = false
trii.changelogFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.changelogFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.changelogFrame.Size = UDim2.new(0.16949, 0, 1.00031, 0)
trii.changelogFrame.BackgroundTransparency = 0.35
trii.changelogFrame.ScrollBarImageTransparency = 0.64
trii.changelogFrame.ScrollBarThickness = 5
trii.changelogFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.changelogFrame.Name = "changelogFrame"
trii.changelogFrame.Position = UDim2.new(-5.87782e-09, 0, 0, 0)
trii.changelogFrame.Parent = trii.homeFrame

trii.ScriptBox.TextWrapped = true
trii.ScriptBox.LineHeight = 1.41
trii.ScriptBox.BorderSizePixel = 0
trii.ScriptBox.RichText = true
trii.ScriptBox.TextYAlignment = Enum.TextYAlignment.Top
trii.ScriptBox.BackgroundColor3 = Color3.fromRGB(75, 0, 0)
trii.ScriptBox.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.ScriptBox.Position = UDim2.new(0.0470594, 0, 0.0200526, 0)
trii.ScriptBox.BackgroundTransparency = 1
trii.ScriptBox.AutomaticSize = Enum.AutomaticSize.Y
trii.ScriptBox.TextSize = 22
trii.ScriptBox.ClipsDescendants = true
trii.ScriptBox.Size = UDim2.new(0.952941, 0, 0.982121, 0)
trii.ScriptBox.TextColor3 = Color3.fromRGB(150, 150, 150)
trii.ScriptBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ScriptBox.Text = "~~ Changelog v0.03 ~~\n+ Added auto execute\n+ Added option to save scripts\n+ Changed some stuff on console log\n\n~~ Changelog v0.02 ~~\n+ Added changelog\n+ Added game script section (will be adding different game scripts soon)\n+ Added Console Logging\n\n~~ Changelog v0.01 ~~\n- Tridog release :o"

trii.ScriptBox.MultiLine = true
trii.ScriptBox.CursorPosition = -1
trii.ScriptBox.Name = "ScriptBox"
trii.ScriptBox.TextXAlignment = Enum.TextXAlignment.Left
trii.ScriptBox.ClearTextOnFocus = false
trii.ScriptBox.Parent = trii.changelogFrame

trii.UICorner_13.CornerRadius = UDim.new(1, 0)
trii.UICorner_13.Parent = trii.changelogFrame

trii.UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_6.Padding = UDim.new(0.018, 0)
trii.UIListLayout_6.Parent = trii.homeFrame

trii.scriptsFrame.BorderSizePixel = 0
trii.scriptsFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
trii.scriptsFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.scriptsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.scriptsFrame.Size = UDim2.new(0.357601, 0, 1, 0)
trii.scriptsFrame.BackgroundTransparency = 0.35
trii.scriptsFrame.Active = true
trii.scriptsFrame.ScrollBarImageTransparency = 0.64
trii.scriptsFrame.ScrollBarThickness = 5
trii.scriptsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.scriptsFrame.Name = "scriptsFrame"
trii.scriptsFrame.Position = UDim2.new(0.186719, 0, 0, 0)
trii.scriptsFrame.Parent = trii.homeFrame

trii.UICorner_14.CornerRadius = UDim.new(1, 0)
trii.UICorner_14.Parent = trii.scriptsFrame

trii.UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_7.Padding = UDim.new(0.01, 0)
trii.UIListLayout_7.Parent = trii.scriptsFrame

trii._GameHeader.BorderSizePixel = 0
trii._GameHeader.Size = UDim2.new(1, 0, 0.157089, 0)
trii._GameHeader.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii._GameHeader.Name = "#GameHeader"
trii._GameHeader.BackgroundColor3 = Color3.fromRGB(35, 39, 49)
trii._GameHeader.Parent = trii.scriptsFrame

trii.Title_5.TextWrapped = true
trii.Title_5.BorderSizePixel = 0
trii.Title_5.TextScaled = true
trii.Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_5.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_5.TextSize = 14
trii.Title_5.Name = "Title"
trii.Title_5.Size = UDim2.new(0.998909, 0, 0.572671, 0)
trii.Title_5.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_5.Text = "{game_name}"
trii.Title_5.Position = UDim2.new(0, 0, 0.2, 0)
trii.Title_5.BackgroundTransparency = 1
trii.Title_5.Parent = trii._GameHeader

trii.UICorner_15.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_15.Parent = trii._GameHeader

trii.TextButton.TextWrapped = true
trii.TextButton.Active = false
trii.TextButton.BorderSizePixel = 0
trii.TextButton.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextButton.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextButton.Position = UDim2.new(0.0264026, 0, 0.157089, 0)
trii.TextButton.TextSize = 16
trii.TextButton.Size = UDim2.new(0.950495, 0, 0.1, 0)
trii.TextButton.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextButton.Text = "No scripts found for this game..."
trii.TextButton.Parent = trii.scriptsFrame

trii.UICorner_16.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_16.Parent = trii.TextButton

trii.localplrFrame.BorderSizePixel = 0
trii.localplrFrame.Size = UDim2.new(0.287, 0, 1, 0)
trii.localplrFrame.Position = UDim2.new(0.209419, 0, 3.06074e-08, 0)
trii.localplrFrame.BackgroundTransparency = 0.4
trii.localplrFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.localplrFrame.Visible = false
trii.localplrFrame.Name = "localplrFrame"
trii.localplrFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.localplrFrame.Parent = trii.homeFrame

trii.UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_8.Padding = UDim.new(0.01, 0)
trii.UIListLayout_8.Parent = trii.localplrFrame

trii.Header.BorderSizePixel = 0
trii.Header.Size = UDim2.new(1, 0, 0.157089, 0)
trii.Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Header.Name = "Header"
trii.Header.BackgroundColor3 = Color3.fromRGB(35, 39, 49)
trii.Header.Parent = trii.localplrFrame

trii.Title_6.TextWrapped = true
trii.Title_6.BorderSizePixel = 0
trii.Title_6.TextScaled = true
trii.Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_6.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_6.TextSize = 14
trii.Title_6.Name = "Title"
trii.Title_6.Size = UDim2.new(0.998909, 0, 0.572671, 0)
trii.Title_6.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_6.Text = "Local Player"
trii.Title_6.Position = UDim2.new(0, 0, 0.2, 0)
trii.Title_6.BackgroundTransparency = 1
trii.Title_6.Parent = trii.Header

trii.UICorner_17.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_17.Parent = trii.Header

trii.walkspeed.BorderSizePixel = 0
trii.walkspeed.Size = UDim2.new(0.912001, 0, 0.127863, 0)
trii.walkspeed.Position = UDim2.new(0.00907725, 0, 0.167089, 0)
trii.walkspeed.BackgroundTransparency = 1
trii.walkspeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.walkspeed.Name = "walkspeed"
trii.walkspeed.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
trii.walkspeed.Parent = trii.localplrFrame

trii.Slider.BorderSizePixel = 0
trii.Slider.Size = UDim2.new(0.944831, 0, 0.393775, 0)
trii.Slider.Position = UDim2.new(0.0289786, 0, 0.594506, 0)
trii.Slider.BackgroundTransparency = 1
trii.Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Slider.Name = "Slider"
trii.Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Slider:SetAttribute("ColorEnabled1", Color3.fromRGB(231, 174, 174))
trii.Slider:SetAttribute("ColorEnabled2", Color3.fromRGB(156, 19, 19))
trii.Slider:SetAttribute("IsEnabled", true)
trii.Slider:SetAttribute("ColorDisabled1", Color3.fromRGB(202, 202, 202))
trii.Slider:SetAttribute("ColorDisabled2", Color3.fromRGB(158, 158, 158))
trii.Slider:SetAttribute("ValuePercent", 50)
trii.Slider:SetAttribute("ValueIncrement", 1)
trii.Slider.Parent = trii.walkspeed

trii.Image.BorderSizePixel = 0
trii.Image.Size = UDim2.new(1, 0, 1, 0)
trii.Image.BackgroundTransparency = 1
trii.Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Image.Name = "Image"
trii.Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Image.Parent = trii.Slider

trii.Bar_Background.AnchorPoint = Vector2.new(0, 0.5)
trii.Bar_Background.BorderSizePixel = 0
trii.Bar_Background.Size = UDim2.new(1, 0, 0.15, 0)
trii.Bar_Background.Position = UDim2.new(0, 0, 0.5, 0)
trii.Bar_Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Bar_Background.Name = "Bar-Background"
trii.Bar_Background.BackgroundColor3 = Color3.fromRGB(101, 112, 141)
trii.Bar_Background.Parent = trii.Image

trii.UICorner_18.CornerRadius = UDim.new(0.5, 0)
trii.UICorner_18.Parent = trii.Bar_Background

trii.Bar_Foreground.AnchorPoint = Vector2.new(0, 0.5)
trii.Bar_Foreground.ZIndex = 2
trii.Bar_Foreground.BorderSizePixel = 0
trii.Bar_Foreground.Size = UDim2.new(0.5, 0, 0.3, 0)
trii.Bar_Foreground.Position = UDim2.new(0, 0, 0.5, 0)
trii.Bar_Foreground.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Bar_Foreground.Name = "Bar-Foreground"
trii.Bar_Foreground.BackgroundColor3 = Color3.fromRGB(65, 68, 91)
trii.Bar_Foreground.Parent = trii.Image

trii.UICorner_19.CornerRadius = UDim.new(0.5, 0)
trii.UICorner_19.Parent = trii.Bar_Foreground

trii.Thumb.ImageColor3 = Color3.fromRGB(65, 68, 91)
trii.Thumb.ZIndex = 3
trii.Thumb.BorderSizePixel = 0
trii.Thumb.ScaleType = Enum.ScaleType.Fit
trii.Thumb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Thumb.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Thumb.Image = "rbxassetid://11953889677"
trii.Thumb.Size = UDim2.new(0.0778816, 0, 1, 0)
trii.Thumb.Name = "Thumb"
trii.Thumb.BackgroundTransparency = 1
trii.Thumb.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Thumb:SetAttribute("IsDragging", false)
trii.Thumb.Parent = trii.Image

trii.UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
trii.UIAspectRatioConstraint.Parent = trii.Thumb

trii.Thumb_Pressed.ImageColor3 = Color3.fromRGB(65, 68, 91)
trii.Thumb_Pressed.BorderSizePixel = 0
trii.Thumb_Pressed.ScaleType = Enum.ScaleType.Fit
trii.Thumb_Pressed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Thumb_Pressed.ImageTransparency = 0.8
trii.Thumb_Pressed.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Thumb_Pressed.Image = "rbxassetid://11953889677"
trii.Thumb_Pressed.Size = UDim2.new(2, 0, 2, 0)
trii.Thumb_Pressed.Name = "Thumb-Pressed"
trii.Thumb_Pressed.BackgroundTransparency = 1
trii.Thumb_Pressed.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Thumb_Pressed.Visible = false
trii.Thumb_Pressed.Parent = trii.Thumb

trii.Configuration.Parent = trii.Slider

trii.ObjectBarBackground.Name = "ObjectBarBackground"
trii.ObjectBarBackground.Parent = trii.Configuration

trii.ObjectBarForeground.Name = "ObjectBarForeground"
trii.ObjectBarForeground.Parent = trii.Configuration

trii.ObjectThumbNormal.Name = "ObjectThumbNormal"
trii.ObjectThumbNormal.Parent = trii.Configuration

trii.ObjectThumbPressed.Name = "ObjectThumbPressed"
trii.ObjectThumbPressed.Parent = trii.Configuration

trii.Title_7.TextWrapped = true
trii.Title_7.BorderSizePixel = 0
trii.Title_7.TextScaled = true
trii.Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_7.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_7.TextSize = 14
trii.Title_7.Name = "Title"
trii.Title_7.Size = UDim2.new(0.998909, 0, 0.527078, 0)
trii.Title_7.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_7.Text = "Walk Speed Modified: 0"
trii.Title_7.Position = UDim2.new(0.00612932, 0, -0.013275, 0)
trii.Title_7.BackgroundTransparency = 1
trii.Title_7.Parent = trii.walkspeed

trii.jumspeed.BorderSizePixel = 0
trii.jumspeed.Size = UDim2.new(0.912001, 0, 0.127863, 0)
trii.jumspeed.Position = UDim2.new(0.00907725, 0, 0.167089, 0)
trii.jumspeed.BackgroundTransparency = 1
trii.jumspeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.jumspeed.Name = "jumspeed"
trii.jumspeed.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
trii.jumspeed.Parent = trii.localplrFrame

trii.Slider_1.BorderSizePixel = 0
trii.Slider_1.Size = UDim2.new(0.944831, 0, 0.393775, 0)
trii.Slider_1.Position = UDim2.new(0.0289786, 0, 0.594506, 0)
trii.Slider_1.BackgroundTransparency = 1
trii.Slider_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Slider_1.Name = "Slider"
trii.Slider_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Slider_1:SetAttribute("ColorEnabled1", Color3.fromRGB(231, 174, 174))
trii.Slider_1:SetAttribute("ColorEnabled2", Color3.fromRGB(156, 19, 19))
trii.Slider_1:SetAttribute("IsEnabled", true)
trii.Slider_1:SetAttribute("ColorDisabled1", Color3.fromRGB(202, 202, 202))
trii.Slider_1:SetAttribute("ColorDisabled2", Color3.fromRGB(158, 158, 158))
trii.Slider_1:SetAttribute("ValuePercent", 50)
trii.Slider_1:SetAttribute("ValueIncrement", 1)
trii.Slider_1.Parent = trii.jumspeed

trii.Image_1.BorderSizePixel = 0
trii.Image_1.Size = UDim2.new(1, 0, 1, 0)
trii.Image_1.BackgroundTransparency = 1
trii.Image_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Image_1.Name = "Image"
trii.Image_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Image_1.Parent = trii.Slider_1

trii.Bar_Background_1.AnchorPoint = Vector2.new(0, 0.5)
trii.Bar_Background_1.BorderSizePixel = 0
trii.Bar_Background_1.Size = UDim2.new(1, 0, 0.15, 0)
trii.Bar_Background_1.Position = UDim2.new(0, 0, 0.5, 0)
trii.Bar_Background_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Bar_Background_1.Name = "Bar-Background"
trii.Bar_Background_1.BackgroundColor3 = Color3.fromRGB(231, 174, 174)
trii.Bar_Background_1.Parent = trii.Image_1

trii.UICorner_20.CornerRadius = UDim.new(0.5, 0)
trii.UICorner_20.Parent = trii.Bar_Background_1

trii.Bar_Foreground_1.AnchorPoint = Vector2.new(0, 0.5)
trii.Bar_Foreground_1.ZIndex = 2
trii.Bar_Foreground_1.BorderSizePixel = 0
trii.Bar_Foreground_1.Size = UDim2.new(0.5, 0, 0.3, 0)
trii.Bar_Foreground_1.Position = UDim2.new(0, 0, 0.5, 0)
trii.Bar_Foreground_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Bar_Foreground_1.Name = "Bar-Foreground"
trii.Bar_Foreground_1.BackgroundColor3 = Color3.fromRGB(156, 19, 19)
trii.Bar_Foreground_1.Parent = trii.Image_1

trii.UICorner_21.CornerRadius = UDim.new(0.5, 0)
trii.UICorner_21.Parent = trii.Bar_Foreground_1

trii.Thumb_1.ImageColor3 = Color3.fromRGB(156, 19, 19)
trii.Thumb_1.ZIndex = 3
trii.Thumb_1.BorderSizePixel = 0
trii.Thumb_1.ScaleType = Enum.ScaleType.Fit
trii.Thumb_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Thumb_1.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Thumb_1.Image = "rbxassetid://11953889677"
trii.Thumb_1.Size = UDim2.new(0.0778816, 0, 1, 0)
trii.Thumb_1.Name = "Thumb"
trii.Thumb_1.BackgroundTransparency = 1
trii.Thumb_1.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Thumb_1:SetAttribute("IsDragging", false)
trii.Thumb_1.Parent = trii.Image_1

trii.UIAspectRatioConstraint_1.DominantAxis = Enum.DominantAxis.Height
trii.UIAspectRatioConstraint_1.Parent = trii.Thumb_1

trii.Thumb_Pressed_1.ImageColor3 = Color3.fromRGB(156, 19, 19)
trii.Thumb_Pressed_1.BorderSizePixel = 0
trii.Thumb_Pressed_1.ScaleType = Enum.ScaleType.Fit
trii.Thumb_Pressed_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Thumb_Pressed_1.ImageTransparency = 0.8
trii.Thumb_Pressed_1.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Thumb_Pressed_1.Image = "rbxassetid://11953889677"
trii.Thumb_Pressed_1.Size = UDim2.new(2, 0, 2, 0)
trii.Thumb_Pressed_1.Name = "Thumb-Pressed"
trii.Thumb_Pressed_1.BackgroundTransparency = 1
trii.Thumb_Pressed_1.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Thumb_Pressed_1.Visible = false
trii.Thumb_Pressed_1.Parent = trii.Thumb_1

trii.Configuration_1.Parent = trii.Slider_1

trii.ObjectBarBackground_1.Name = "ObjectBarBackground"
trii.ObjectBarBackground_1.Parent = trii.Configuration_1

trii.ObjectBarForeground_1.Name = "ObjectBarForeground"
trii.ObjectBarForeground_1.Parent = trii.Configuration_1

trii.ObjectThumbNormal_1.Name = "ObjectThumbNormal"
trii.ObjectThumbNormal_1.Parent = trii.Configuration_1

trii.ObjectThumbPressed_1.Name = "ObjectThumbPressed"
trii.ObjectThumbPressed_1.Parent = trii.Configuration_1

trii.Scripts.Name = "Scripts"
trii.Scripts.Parent = trii.Slider_1

trii.FormSliderHorizontalLocalScript.Enabled = false
trii.FormSliderHorizontalLocalScript.Name = "FormSliderHorizontalLocalScript"
trii.FormSliderHorizontalLocalScript.Disabled = true
trii.FormSliderHorizontalLocalScript.Parent = trii.Scripts

trii.Title_8.TextWrapped = true
trii.Title_8.BorderSizePixel = 0
trii.Title_8.TextScaled = true
trii.Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_8.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_8.TextSize = 14
trii.Title_8.Name = "Title"
trii.Title_8.Size = UDim2.new(0.998909, 0, 0.527078, 0)
trii.Title_8.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_8.Text = "Jump Speed Modified: 0"
trii.Title_8.Position = UDim2.new(0.00612932, 0, -0.013275, 0)
trii.Title_8.BackgroundTransparency = 1
trii.Title_8.Parent = trii.jumspeed

trii.LocalPlayerHandle.Name = "LocalPlayerHandle"
trii.LocalPlayerHandle.Parent = trii.localplrFrame

trii.FormSliderClass.Name = "FormSliderClass"
trii.FormSliderClass.Parent = trii.localplrFrame

trii.ExtendDraggableClass.Name = "ExtendDraggableClass"
trii.ExtendDraggableClass.Parent = trii.localplrFrame

trii.CurPos.TextWrapped = true
trii.CurPos.BorderSizePixel = 0
trii.CurPos.TextScaled = true
trii.CurPos.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.CurPos.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.CurPos.TextSize = 14
trii.CurPos.Name = "CurPos"
trii.CurPos.Size = UDim2.new(0.898733, 0, 0.085544, 0)
trii.CurPos.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.CurPos.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.CurPos.Text = "Current location: "
trii.CurPos.Position = UDim2.new(0.000272832, 0, 0.442814, 0)
trii.CurPos.BackgroundTransparency = 1
trii.CurPos.Parent = trii.localplrFrame

trii.localscriptsFrame.BorderSizePixel = 0
trii.localscriptsFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
trii.localscriptsFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.localscriptsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.localscriptsFrame.Size = UDim2.new(0.43768, 0, 1, 0)
trii.localscriptsFrame.BackgroundTransparency = 0.35
trii.localscriptsFrame.Active = true
trii.localscriptsFrame.ScrollBarImageTransparency = 0.64
trii.localscriptsFrame.ScrollBarThickness = 5
trii.localscriptsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.localscriptsFrame.Name = "localscriptsFrame"
trii.localscriptsFrame.Position = UDim2.new(0.56232, 0, 0, 0)
trii.localscriptsFrame.Parent = trii.homeFrame

trii.UICorner_22.CornerRadius = UDim.new(1, 0)
trii.UICorner_22.Parent = trii.localscriptsFrame

trii.UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_9.Padding = UDim.new(0.01, 0)
trii.UIListLayout_9.Parent = trii.localscriptsFrame

trii._GameHeader_1.BorderSizePixel = 0
trii._GameHeader_1.Size = UDim2.new(1, 0, 0.157089, 0)
trii._GameHeader_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii._GameHeader_1.Name = "#GameHeader"
trii._GameHeader_1.BackgroundColor3 = Color3.fromRGB(35, 39, 49)
trii._GameHeader_1.Parent = trii.localscriptsFrame

trii.Title_9.TextWrapped = true
trii.Title_9.BorderSizePixel = 0
trii.Title_9.TextScaled = true
trii.Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_9.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_9.TextSize = 14
trii.Title_9.Name = "Title"
trii.Title_9.Size = UDim2.new(0.631911, 0, 0.572671, 0)
trii.Title_9.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_9.Text = "Local Scripts"
trii.Title_9.Position = UDim2.new(0, 0, 0.2, 0)
trii.Title_9.BackgroundTransparency = 1
trii.Title_9.Parent = trii._GameHeader_1

trii.UICorner_23.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_23.Parent = trii._GameHeader_1

trii.Add_btn.BorderSizePixel = 0
trii.Add_btn.Size = UDim2.new(0.345421, 0, 0.482072, 0)
trii.Add_btn.Position = UDim2.new(0.63191, 0, 0.290598, 0)
trii.Add_btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Add_btn.Name = "Add_btn"
trii.Add_btn.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.Add_btn.Parent = trii._GameHeader_1

trii.TextButton_1.TextWrapped = true
trii.TextButton_1.BorderSizePixel = 0
trii.TextButton_1.RichText = true
trii.TextButton_1.TextScaled = true
trii.TextButton_1.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextButton_1.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextButton_1.Position = UDim2.new(0.0427491, 0, 0.159589, 0)
trii.TextButton_1.TextSize = 14
trii.TextButton_1.Size = UDim2.new(0.909327, 0, 0.659937, 0)
trii.TextButton_1.TextColor3 = Color3.fromRGB(255, 255, 255)
trii.TextButton_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextButton_1.Text = "+ Add Script"
trii.TextButton_1.BackgroundTransparency = 1
trii.TextButton_1.Parent = trii.Add_btn

trii.UICorner_24.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_24.Parent = trii.Add_btn

trii.script_placeholder.BorderSizePixel = 0
trii.script_placeholder.Size = UDim2.new(0.967878, 0, 0.1, 0)
trii.script_placeholder.Position = UDim2.new(0.0204618, 0, 0.167089, 0)
trii.script_placeholder.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.script_placeholder.ClipsDescendants = true
trii.script_placeholder.Name = "script_placeholder"
trii.script_placeholder.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.script_placeholder.Parent = trii.localscriptsFrame

trii.scriptTitle.TextWrapped = true
trii.scriptTitle.BorderSizePixel = 0
trii.scriptTitle.TextScaled = true
trii.scriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.scriptTitle.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.scriptTitle.ClipsDescendants = true
trii.scriptTitle.TextSize = 14
trii.scriptTitle.Name = "scriptTitle"
trii.scriptTitle.Size = UDim2.new(0.598337, 0, 0.484707, 0)
trii.scriptTitle.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.scriptTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.scriptTitle.Text = "Local Scripts"
trii.scriptTitle.Position = UDim2.new(0.0255949, 0, 0.247684, 0)
trii.scriptTitle.BackgroundTransparency = 1
trii.scriptTitle.TextXAlignment = Enum.TextXAlignment.Left
trii.scriptTitle.Parent = trii.script_placeholder

trii.Buttons.BorderSizePixel = 0
trii.Buttons.Size = UDim2.new(0.32274, 0, 0.81382, 0)
trii.Buttons.Position = UDim2.new(0.665989, 0, 0.0859291, 0)
trii.Buttons.BackgroundTransparency = 1
trii.Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Buttons.Name = "Buttons"
trii.Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Buttons.Parent = trii.script_placeholder

trii.UIListLayout_10.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_10.HorizontalAlignment = Enum.HorizontalAlignment.Right
trii.UIListLayout_10.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_10.Padding = UDim.new(0.015, 0)
trii.UIListLayout_10.Parent = trii.Buttons

trii.run.BorderSizePixel = 0
trii.run.Size = UDim2.new(0.219148, 0, 1, 0)
trii.run.Position = UDim2.new(0.780852, 0, 0, 0)
trii.run.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.run.Name = "run"
trii.run.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.run.Parent = trii.Buttons

trii.UIListLayout_11.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_11.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_11.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_11.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_11.Parent = trii.run

trii.UICorner_25.CornerRadius = UDim.new(0.06, 0)
trii.UICorner_25.Parent = trii.run

trii.button.ZIndex = 2
trii.button.BorderSizePixel = 0
trii.button.ScaleType = Enum.ScaleType.Fit
trii.button.Image = "rbxassetid://3926305904"
trii.button.ImageRectSize = Vector2.new(36, 36)
trii.button.Size = UDim2.new(0.5, 0, 0.5, 0)
trii.button.Name = "button"
trii.button.BackgroundTransparency = 1
trii.button.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.button.ImageRectOffset = Vector2.new(404, 844)
trii.button.Parent = trii.run

trii.autoload.BorderSizePixel = 0
trii.autoload.Size = UDim2.new(0.627535, 0, 1, 0)
trii.autoload.Position = UDim2.new(0.0928736, 0, 0, 0)
trii.autoload.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.autoload.Name = "autoload"
trii.autoload.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.autoload.Parent = trii.Buttons

trii.UIListLayout_12.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_12.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_12.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_12.Parent = trii.autoload

trii.button_1.ZIndex = 2
trii.button_1.BorderSizePixel = 0
trii.button_1.ScaleType = Enum.ScaleType.Fit
trii.button_1.Image = "rbxassetid://3926305904"
trii.button_1.ImageRectSize = Vector2.new(36, 36)
trii.button_1.Size = UDim2.new(0.31389, 0, 0.496509, 0)
trii.button_1.Name = "button"
trii.button_1.LayoutOrder = 1
trii.button_1.BackgroundTransparency = 1
trii.button_1.Position = UDim2.new(0, 0, 0.251746, 0)
trii.button_1.ImageRectOffset = Vector2.new(724, 724)
trii.button_1.Parent = trii.autoload

trii.zz.TextWrapped = true
trii.zz.BorderSizePixel = 0
trii.zz.RichText = true
trii.zz.TextScaled = true
trii.zz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.zz.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.zz.TextSize = 14
trii.zz.Name = "zz"
trii.zz.Size = UDim2.new(0.592892, 0, 0.503491, 0)
trii.zz.TextColor3 = Color3.fromRGB(240, 240, 240)
trii.zz.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.zz.Text = "AutoExecute"
trii.zz.Position = UDim2.new(0.355672, 0, 0.248254, 0)
trii.zz.BackgroundTransparency = 1
trii.zz.Parent = trii.autoload

trii.UICorner_26.CornerRadius = UDim.new(0.06, 0)
trii.UICorner_26.Parent = trii.autoload

trii.delete.BorderSizePixel = 0
trii.delete.Size = UDim2.new(0.219148, 0, 1, 0)
trii.delete.Position = UDim2.new(0.780852, 0, 0, 0)
trii.delete.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.delete.Name = "delete"
trii.delete.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.delete.Parent = trii.Buttons

trii.UIListLayout_13.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_13.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_13.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_13.ItemLineAlignment = Enum.ItemLineAlignment.Center
trii.UIListLayout_13.Parent = trii.delete

trii.UICorner_27.CornerRadius = UDim.new(0.06, 0)
trii.UICorner_27.Parent = trii.delete

trii.button_2.ZIndex = 2
trii.button_2.BorderSizePixel = 0
trii.button_2.ScaleType = Enum.ScaleType.Fit
trii.button_2.Image = "rbxassetid://3926305904"
trii.button_2.ImageRectSize = Vector2.new(36, 36)
trii.button_2.Size = UDim2.new(0.5, 0, 0.5, 0)
trii.button_2.Name = "button"
trii.button_2.BackgroundTransparency = 1
trii.button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.button_2.ImageRectOffset = Vector2.new(644, 724)
trii.button_2.Parent = trii.delete

trii.UICorner_28.CornerRadius = UDim.new(0.06, 0)
trii.UICorner_28.Parent = trii.script_placeholder

trii.addlocalscriptsFrame.BorderSizePixel = 0
trii.addlocalscriptsFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
trii.addlocalscriptsFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.addlocalscriptsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.addlocalscriptsFrame.Size = UDim2.new(0.43768, 0, 1, 0)
trii.addlocalscriptsFrame.BackgroundTransparency = 0.35
trii.addlocalscriptsFrame.Active = true
trii.addlocalscriptsFrame.ScrollBarImageTransparency = 0.64
trii.addlocalscriptsFrame.ScrollBarThickness = 5
trii.addlocalscriptsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.addlocalscriptsFrame.Name = "addlocalscriptsFrame"
trii.addlocalscriptsFrame.Position = UDim2.new(0.56232, 0, 0, 0)
trii.addlocalscriptsFrame.Parent = trii.homeFrame

trii.UICorner_29.CornerRadius = UDim.new(1, 0)
trii.UICorner_29.Parent = trii.addlocalscriptsFrame

trii.UIListLayout_14.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_14.SortOrder = Enum.SortOrder.LayoutOrder
trii.UIListLayout_14.Padding = UDim.new(0.01, 0)
trii.UIListLayout_14.Parent = trii.addlocalscriptsFrame

trii._GameHeader_2.BorderSizePixel = 0
trii._GameHeader_2.Size = UDim2.new(1, 0, 0.157089, 0)
trii._GameHeader_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii._GameHeader_2.Name = "#GameHeader"
trii._GameHeader_2.BackgroundColor3 = Color3.fromRGB(35, 39, 49)
trii._GameHeader_2.Parent = trii.addlocalscriptsFrame

trii.Title_10.TextWrapped = true
trii.Title_10.BorderSizePixel = 0
trii.Title_10.TextScaled = true
trii.Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_10.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_10.TextSize = 14
trii.Title_10.Name = "Title"
trii.Title_10.Size = UDim2.new(0.631911, 0, 0.572671, 0)
trii.Title_10.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_10.Text = "Local Scripts"
trii.Title_10.Position = UDim2.new(0, 0, 0.2, 0)
trii.Title_10.BackgroundTransparency = 1
trii.Title_10.Parent = trii._GameHeader_2

trii.UICorner_30.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_30.Parent = trii._GameHeader_2

trii.Frame.BorderSizePixel = 0
trii.Frame.Size = UDim2.new(0.345421, 0, 0.482072, 0)
trii.Frame.Position = UDim2.new(0.63191, 0, 0.290598, 0)
trii.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Frame.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.Frame.Parent = trii._GameHeader_2

trii.TextButton_2.TextWrapped = true
trii.TextButton_2.BorderSizePixel = 0
trii.TextButton_2.RichText = true
trii.TextButton_2.TextScaled = true
trii.TextButton_2.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextButton_2.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextButton_2.Position = UDim2.new(0.0427491, 0, 0.159589, 0)
trii.TextButton_2.TextSize = 14
trii.TextButton_2.Size = UDim2.new(0.909327, 0, 0.659937, 0)
trii.TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
trii.TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextButton_2.Text = "+ Add Script"
trii.TextButton_2.BackgroundTransparency = 1
trii.TextButton_2.Parent = trii.Frame

trii.UICorner_31.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_31.Parent = trii.Frame

trii.addFrame.BorderSizePixel = 0
trii.addFrame.Size = UDim2.new(1, 0, 0.529673, 0)
trii.addFrame.Position = UDim2.new(0, 0, 0.178546, 0)
trii.addFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.addFrame.Name = "addFrame"
trii.addFrame.BackgroundColor3 = Color3.fromRGB(35, 39, 49)
trii.addFrame.Parent = trii.addlocalscriptsFrame

trii.input.BorderSizePixel = 0
trii.input.Size = UDim2.new(1, 0, 0.178707, 0)
trii.input.Position = UDim2.new(0, 0, 0.491846, 0)
trii.input.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.input.Name = "input"
trii.input.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.input.Parent = trii.addFrame

trii.TextBox_1.TextWrapped = true
trii.TextBox_1.BorderSizePixel = 0
trii.TextBox_1.RichText = true
trii.TextBox_1.TextScaled = true
trii.TextBox_1.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextBox_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextBox_1.Position = UDim2.new(0.0158423, 0, 0.172555, 0)
trii.TextBox_1.PlaceholderText = "{Text and Numbers Only}"
trii.TextBox_1.TextSize = 14
trii.TextBox_1.Size = UDim2.new(0.961489, 0, 0.645422, 0)
trii.TextBox_1.TextColor3 = Color3.fromRGB(0, 0, 0)
trii.TextBox_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextBox_1.Text = ""
trii.TextBox_1.CursorPosition = -1
trii.TextBox_1.ClearTextOnFocus = false
trii.TextBox_1.Parent = trii.input

trii.Title_11.TextWrapped = true
trii.Title_11.BorderSizePixel = 0
trii.Title_11.TextScaled = true
trii.Title_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_11.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_11.TextSize = 14
trii.Title_11.Name = "Title"
trii.Title_11.Size = UDim2.new(0.261373, 0, 0.111787, 0)
trii.Title_11.TextColor3 = Color3.fromRGB(180, 193, 216)
trii.Title_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_11.Text = "Script Name:"
trii.Title_11.Position = UDim2.new(0.00832818, 0, 0.361132, 0)
trii.Title_11.BackgroundTransparency = 1
trii.Title_11.Parent = trii.addFrame

trii.TextLabel_5.TextWrapped = true
trii.TextLabel_5.BorderSizePixel = 0
trii.TextLabel_5.TextScaled = true
trii.TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.TextLabel_5.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextLabel_5.TextSize = 14
trii.TextLabel_5.Size = UDim2.new(0.961488, 0, 0.222536, 0)
trii.TextLabel_5.TextColor3 = Color3.fromRGB(225, 225, 225)
trii.TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextLabel_5.Text = "Note: You just need to set the script name. The script will be added from your clipboard, so make sure to copy it before adding it."
trii.TextLabel_5.Position = UDim2.new(0.0158422, 0, 0.0507511, 0)
trii.TextLabel_5.BackgroundTransparency = 1
trii.TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
trii.TextLabel_5.Parent = trii.addFrame

trii.confrim_btn.BorderSizePixel = 0
trii.confrim_btn.Size = UDim2.new(0.345421, 0, 0.157611, 0)
trii.confrim_btn.Position = UDim2.new(0.542995, 0, 0.709694, 0)
trii.confrim_btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.confrim_btn.Name = "confrim_btn"
trii.confrim_btn.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.confrim_btn.Parent = trii.addFrame

trii.TextButton_3.TextWrapped = true
trii.TextButton_3.BorderSizePixel = 0
trii.TextButton_3.RichText = true
trii.TextButton_3.TextScaled = true
trii.TextButton_3.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextButton_3.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextButton_3.Position = UDim2.new(0.0427491, 0, 0.159589, 0)
trii.TextButton_3.TextSize = 14
trii.TextButton_3.Size = UDim2.new(0.909327, 0, 0.659937, 0)
trii.TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
trii.TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextButton_3.Text = "Confrim"
trii.TextButton_3.BackgroundTransparency = 1
trii.TextButton_3.Parent = trii.confrim_btn

trii.UICorner_32.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_32.Parent = trii.confrim_btn

trii.cancel_btn.BorderSizePixel = 0
trii.cancel_btn.Size = UDim2.new(0.345421, 0, 0.157611, 0)
trii.cancel_btn.Position = UDim2.new(0.179819, 0, 0.709694, 0)
trii.cancel_btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.cancel_btn.Name = "cancel_btn"
trii.cancel_btn.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.cancel_btn.Parent = trii.addFrame

trii.TextButton_4.TextWrapped = true
trii.TextButton_4.BorderSizePixel = 0
trii.TextButton_4.RichText = true
trii.TextButton_4.TextScaled = true
trii.TextButton_4.BackgroundColor3 = Color3.fromRGB(55, 60, 76)
trii.TextButton_4.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.TextButton_4.Position = UDim2.new(0.0427491, 0, 0.159589, 0)
trii.TextButton_4.TextSize = 14
trii.TextButton_4.Size = UDim2.new(0.909327, 0, 0.659937, 0)
trii.TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
trii.TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.TextButton_4.Text = "Cancel"
trii.TextButton_4.BackgroundTransparency = 1
trii.TextButton_4.Parent = trii.cancel_btn

trii.UICorner_33.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_33.Parent = trii.cancel_btn

trii.ExecFrame.Active = true
trii.ExecFrame.BorderSizePixel = 0
trii.ExecFrame.Size = UDim2.new(0.949745, 0, 0.649132, 0)
trii.ExecFrame.Position = UDim2.new(0.0244645, 0, 0.0897571, 0)
trii.ExecFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ExecFrame.Visible = false
trii.ExecFrame.Name = "ExecFrame"
trii.ExecFrame.BackgroundColor3 = Color3.fromRGB(38, 42, 53)
trii.ExecFrame.Parent = trii.MainFrame

trii.Buttons_1.Active = true
trii.Buttons_1.BorderSizePixel = 0
trii.Buttons_1.Size = UDim2.new(1, 0, 0.246428, 0)
trii.Buttons_1.Position = UDim2.new(0, 0, 0.752548, 0)
trii.Buttons_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Buttons_1.Name = "Buttons"
trii.Buttons_1.BackgroundColor3 = Color3.fromRGB(31, 34, 43)
trii.Buttons_1.Parent = trii.ExecFrame

trii.UIListLayout_15.FillDirection = Enum.FillDirection.Horizontal
trii.UIListLayout_15.HorizontalAlignment = Enum.HorizontalAlignment.Center
trii.UIListLayout_15.VerticalAlignment = Enum.VerticalAlignment.Center
trii.UIListLayout_15.Padding = UDim.new(0.01, 0)
trii.UIListLayout_15.Parent = trii.Buttons_1

trii.Button1.BorderSizePixel = 3
trii.Button1.ScaleType = Enum.ScaleType.Fit
trii.Button1.AutoButtonColor = false
trii.Button1.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.Button1.BorderMode = Enum.BorderMode.Inset
trii.Button1.Selectable = false
trii.Button1.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Button1.Size = UDim2.new(0.226347, 0, 0.721644, 0)
trii.Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Button1.Name = "Button1"
trii.Button1.Position = UDim2.new(0.145479, 0, 0.454178, 0)
trii.Button1.Parent = trii.Buttons_1

trii.UIStroke_6.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_6.Thickness = 3
trii.UIStroke_6.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_6.Enabled = false
trii.UIStroke_6.Parent = trii.Button1

trii.UICorner_34.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_34.Parent = trii.Button1

trii.Title_12.TextWrapped = true
trii.Title_12.BorderSizePixel = 0
trii.Title_12.TextScaled = true
trii.Title_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_12.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_12.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_12.TextSize = 100
trii.Title_12.Name = "Title"
trii.Title_12.Size = UDim2.new(0.340682, 0, 0.729158, 0)
trii.Title_12.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_12.Text = "Execute"
trii.Title_12.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Title_12.BackgroundTransparency = 1
trii.Title_12.Parent = trii.Button1

trii.Button4.BorderSizePixel = 3
trii.Button4.ScaleType = Enum.ScaleType.Fit
trii.Button4.AutoButtonColor = false
trii.Button4.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.Button4.BorderMode = Enum.BorderMode.Inset
trii.Button4.Selectable = false
trii.Button4.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Button4.Size = UDim2.new(0.226347, 0, 0.721644, 0)
trii.Button4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Button4.Name = "Button4"
trii.Button4.Position = UDim2.new(0.854521, 0, 0.454178, 0)
trii.Button4.Parent = trii.Buttons_1

trii.Title_13.TextWrapped = true
trii.Title_13.BorderSizePixel = 0
trii.Title_13.TextScaled = true
trii.Title_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_13.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_13.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_13.TextSize = 14
trii.Title_13.Name = "Title"
trii.Title_13.Size = UDim2.new(0.313498, 0, 0.782088, 0)
trii.Title_13.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_13.Text = "Clear"
trii.Title_13.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Title_13.BackgroundTransparency = 1
trii.Title_13.Parent = trii.Button4

trii.UICorner_35.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_35.Parent = trii.Button4

trii.UIStroke_7.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_7.Thickness = 3
trii.UIStroke_7.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_7.Enabled = false
trii.UIStroke_7.Parent = trii.Button4

trii.Button3.BorderSizePixel = 3
trii.Button3.ScaleType = Enum.ScaleType.Fit
trii.Button3.AutoButtonColor = false
trii.Button3.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.Button3.BorderMode = Enum.BorderMode.Inset
trii.Button3.Selectable = false
trii.Button3.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Button3.Size = UDim2.new(0.226347, 0, 0.721644, 0)
trii.Button3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Button3.Name = "Button3"
trii.Button3.Position = UDim2.new(0.618174, 0, 0.454178, 0)
trii.Button3.Parent = trii.Buttons_1

trii.Title_14.TextWrapped = true
trii.Title_14.BorderSizePixel = 0
trii.Title_14.TextScaled = true
trii.Title_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_14.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_14.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_14.TextSize = 14
trii.Title_14.Name = "Title"
trii.Title_14.Size = UDim2.new(0.347791, 0, 0.782034, 0)
trii.Title_14.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_14.Text = "Paste"
trii.Title_14.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Title_14.BackgroundTransparency = 1
trii.Title_14.Parent = trii.Button3

trii.UICorner_36.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_36.Parent = trii.Button3

trii.UIStroke_8.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_8.Thickness = 3
trii.UIStroke_8.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_8.Enabled = false
trii.UIStroke_8.Parent = trii.Button3

trii.Button2.BorderSizePixel = 3
trii.Button2.ScaleType = Enum.ScaleType.Fit
trii.Button2.AutoButtonColor = false
trii.Button2.BackgroundColor3 = Color3.fromRGB(44, 48, 61)
trii.Button2.BorderMode = Enum.BorderMode.Inset
trii.Button2.Selectable = false
trii.Button2.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Button2.Size = UDim2.new(0.226347, 0, 0.721644, 0)
trii.Button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Button2.Name = "Button2"
trii.Button2.Position = UDim2.new(0.381826, 0, 0.454178, 0)
trii.Button2.Parent = trii.Buttons_1

trii.Title_15.TextWrapped = true
trii.Title_15.BorderSizePixel = 0
trii.Title_15.TextScaled = true
trii.Title_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.Title_15.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.Title_15.AnchorPoint = Vector2.new(0.5, 0.5)
trii.Title_15.TextSize = 14
trii.Title_15.Name = "Title"
trii.Title_15.Size = UDim2.new(0.730181, 0, 0.653414, 0)
trii.Title_15.TextColor3 = Color3.fromRGB(250, 250, 250)
trii.Title_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.Title_15.Text = "Execute from Clipboard"
trii.Title_15.Position = UDim2.new(0.5, 0, 0.5, 0)
trii.Title_15.BackgroundTransparency = 1
trii.Title_15.Parent = trii.Button2

trii.UICorner_37.CornerRadius = UDim.new(0.08, 0)
trii.UICorner_37.Parent = trii.Button2

trii.UIStroke_9.LineJoinMode = Enum.LineJoinMode.Miter
trii.UIStroke_9.Thickness = 3
trii.UIStroke_9.Color = Color3.fromRGB(60, 66, 83)
trii.UIStroke_9.Enabled = false
trii.UIStroke_9.Parent = trii.Button2

trii.UICorner_38.CornerRadius = UDim.new(0.1, 0)
trii.UICorner_38.Parent = trii.Buttons_1

trii.ScrollingFrame.BorderSizePixel = 0
trii.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
trii.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trii.ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
trii.ScrollingFrame.Size = UDim2.new(0.975214, 0, 0.675238, 0)
trii.ScrollingFrame.BackgroundTransparency = 1
trii.ScrollingFrame.Active = true
trii.ScrollingFrame.ScrollBarImageTransparency = 0.64
trii.ScrollingFrame.ScrollBarThickness = 18
trii.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ScrollingFrame.Position = UDim2.new(0.0167858, 0, 0.0257617, 0)
trii.ScrollingFrame.Parent = trii.ExecFrame

trii.LocalScript.Parent = trii.ScrollingFrame

trii.ScriptBox_1.BorderSizePixel = 0
trii.ScriptBox_1.RichText = true
trii.ScriptBox_1.TextYAlignment = Enum.TextYAlignment.Top
trii.ScriptBox_1.BackgroundColor3 = Color3.fromRGB(75, 0, 0)
trii.ScriptBox_1.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
trii.ScriptBox_1.BackgroundTransparency = 1
trii.ScriptBox_1.AutomaticSize = Enum.AutomaticSize.Y
trii.ScriptBox_1.TextSize = 30
trii.ScriptBox_1.ClipsDescendants = true
trii.ScriptBox_1.Size = UDim2.new(1, 0, 1, 0)
trii.ScriptBox_1.TextColor3 = Color3.fromRGB(255, 255, 255)
trii.ScriptBox_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trii.ScriptBox_1.Text = "-- We recommend only uisng loadstrings | Trigon Mobile v0.03 {Beta}"
trii.ScriptBox_1.MultiLine = true
trii.ScriptBox_1.Name = "ScriptBox"
trii.ScriptBox_1.TextXAlignment = Enum.TextXAlignment.Left
trii.ScriptBox_1.ClearTextOnFocus = false
trii.ScriptBox_1.Parent = trii.ScrollingFrame

trii.Highlighter.Name = "Highlighter"
trii.Highlighter.Parent = trii.ScriptBox_1

trii.lexer.Name = "lexer"
trii.lexer.Parent = trii.Highlighter

trii.language.Name = "language"
trii.language.Parent = trii.lexer

trii.theme.Name = "theme"
trii.theme.Parent = trii.Highlighter

trii.types.Name = "types"
trii.types.Parent = trii.Highlighter

trii.utility.Name = "utility"
trii.utility.Parent = trii.Highlighter

trii.UICorner_39.CornerRadius = UDim.new(0.02, 0)
trii.UICorner_39.Parent = trii.ExecFrame

trii.LocalScript_1.Parent = trii.TrigonMain

trii.savescripts.Name = "savescripts"
trii.savescripts.Parent = trii.TrigonMain
 
local modules, cache = {}, {}
		
local o_require = require;
local function require(module)
	local real, cached = modules[module], cache[module]
	
	if cached then return cached end
	
	if not real then return o_require(module) end
	
	cache[module] = real()
	
	return cache[module]
end

modules[trii.FormSliderClass] = function()
	local script = trii.FormSliderClass

	--[[
	
		Copyright © 2023, MapleMarvel (https://www.roblox.com/users/263710410/profile). All Rights Reserved.
		
		
		FormSliderClass:
		Class that sets slider functionality.
			
	--]]
	
	
	-- Class
	local FormSliderClass = {}
	FormSliderClass.__index = FormSliderClass
	
	
	-- Constructor
	function FormSliderClass.new(paramGuiObject, paramDirection, minvalue, maxvalue)
		local self = setmetatable({}, FormSliderClass)
		
		
		-- Validate
		if paramGuiObject == nil then
			error("Required parameters missing for constructor FormSliderClass.new.")
		end
		
		-- Instance Properties
		self.GuiObject = paramGuiObject  -- The GuiObject extended by this class
		self.Direction = paramDirection or Enum.Axis.X  -- Slider direction
		self.Connections = {}  -- Event connections
		
		
		-- Initialize
		
		-- Configuration Variables
		local configuration = self.GuiObject:WaitForChild("Configuration")
		local guiObjectBarBackgroundVar = configuration:WaitForChild("ObjectBarBackground")
		local guiObjectBarForegroundVar = configuration:WaitForChild("ObjectBarForeground")
		local guiObjectThumbNormalVar = configuration:WaitForChild(("ObjectThumbNormal"))
		local guiObjectThumbPressedVar = configuration:WaitForChild(("ObjectThumbPressed"))
		local guiObjectBarBackground
		local guiObjectBarForeground
		local guiObjectThumbNormal
		local guiObjectThumbPressed
		
		-- Validate
		if guiObjectBarBackgroundVar and guiObjectBarForegroundVar and guiObjectThumbNormalVar and guiObjectThumbPressedVar then
	
			-- Wait for the objects to load
			while not guiObjectBarBackgroundVar.Value do task.wait() end
			while not guiObjectBarForegroundVar.Value do task.wait() end
			while not guiObjectThumbNormalVar.Value do task.wait() end
			while not guiObjectThumbPressedVar.Value do task.wait() end
			
			-- Get values
			guiObjectBarBackground = guiObjectBarBackgroundVar.Value
			guiObjectBarForeground = guiObjectBarForegroundVar.Value
			guiObjectThumbNormal = guiObjectThumbNormalVar.Value
			guiObjectThumbPressed = guiObjectThumbPressedVar.Value
			
		end
		
		-- Make thumb draggable
		local ExtendDraggableClass = require(script.Parent:WaitForChild("ExtendDraggableClass"))
		local draggableThumbNormal = ExtendDraggableClass.new(guiObjectThumbNormal, false, self.Direction)
		
		
		-- Local function
		local function RefreshGui()
	
			-- Get current attribute values
			local attributesParent = self.GuiObject
			
			local attributeIsEnabled = attributesParent:GetAttribute("IsEnabled")
			local attributeColorDisabled1 = attributesParent:GetAttribute("ColorDisabled1")
			local attributeColorDisabled2 = attributesParent:GetAttribute("ColorDisabled2")
			local attributeColorEnabled1 = attributesParent:GetAttribute("ColorEnabled1")
			local attributeColorEnabled2 = attributesParent:GetAttribute("ColorEnabled2")
			local attributeValueIncrement = attributesParent:GetAttribute(("ValueIncrement"))
			local attributeValuePercent = attributesParent:GetAttribute(("ValuePercent"))
			
			warn(minvalue, maxvalue)
			-- Validate
			local newValuePercent = math.clamp(attributeValuePercent, minvalue, maxvalue)
			if newValuePercent ~= attributeValuePercent then
				attributesParent:SetAttribute("ValuePercent", newValuePercent)
			end
			
			-- Update slider elements
			if self.Direction == Enum.Axis.X then
				-- Horizontal
				
				-- Thumb position
				guiObjectThumbNormal.Position = UDim2.new(newValuePercent / maxvalue, guiObjectThumbNormal.Position.X.Offset, guiObjectThumbNormal.Position.Y.Scale, guiObjectThumbNormal.Position.Y.Offset)
	
				-- Foreground bar length
				guiObjectBarForeground.Size = UDim2.new(newValuePercent / maxvalue, guiObjectBarForeground.Size.X.Offset, guiObjectBarForeground.Size.Y.Scale, guiObjectBarForeground.Size.Y.Offset)
				
			else
				-- Vertical
				
				-- Thumb position
				guiObjectThumbNormal.Position = UDim2.new(guiObjectThumbNormal.Position.X.Scale, guiObjectThumbNormal.Position.X.Offset, 1 - (newValuePercent / maxvalue), guiObjectThumbNormal.Position.Y.Offset)
	
				-- Foreground bar length
				guiObjectBarForeground.Size = UDim2.new(guiObjectBarForeground.Size.X.Scale, guiObjectBarForeground.Size.X.Offset, newValuePercent / maxvalue, guiObjectBarForeground.Size.Y.Offset)
				
			end
			
			-- Dragging settings
			draggableThumbNormal:SetDraggingEnabled(attributeIsEnabled)
			draggableThumbNormal:SetDraggingIncrement(attributeValueIncrement)
			
			-- If enabled
			if attributeIsEnabled == true then
				
				-- Enabled colors
				guiObjectBarBackground.BackgroundColor3 = attributeColorEnabled1
				guiObjectBarForeground.BackgroundColor3 = attributeColorEnabled2
				guiObjectThumbNormal.ImageColor3 = attributeColorEnabled2
				guiObjectThumbPressed.ImageColor3 = attributeColorEnabled2
							
			else
				
				-- Disabled colors
				guiObjectBarBackground.BackgroundColor3 = attributeColorDisabled1
				guiObjectBarForeground.BackgroundColor3 = attributeColorDisabled2
				guiObjectThumbNormal.ImageColor3 = attributeColorDisabled2
				guiObjectThumbPressed.ImageColor3 = attributeColorDisabled2
				
			end
	
		end
	
		-- Refresh Gui
		RefreshGui()
	
	
		-- Disconnect existing connections
		local keyConnection1 = "AttributeChanged"
		local keyConnection2 = "ThumbPosition"
		local keyConnection3 = "AttributeChangedSignal" .. "IsDragging"
		if self.Connections[keyConnection1] then self.Connections[keyConnection1]:Disconnect() end
		if self.Connections[keyConnection2] then self.Connections[keyConnection2]:Disconnect() end
		if self.Connections[keyConnection3] then self.Connections[keyConnection3]:Disconnect() end
		
		-- Events
	
		-- Attribute Event - AttributeChanged
		-- Triggered when any attribute changes
		self.Connections[keyConnection1] = self.GuiObject.AttributeChanged:Connect(function(attributeName)
	
			RefreshGui()
	
		end)
	
		
		-- Instance Event - GetPropertyChangedSignal
		-- Triggered when thumb is dragged
		self.Connections[keyConnection2] = guiObjectThumbNormal:GetPropertyChangedSignal("Position"):Connect(function()
			
			-- Get current attribute values
			local attributesParent = self.GuiObject
			local attributeValuePercent = attributesParent:GetAttribute(("ValuePercent"))
			
			-- Get new thumb position
			local thumbPositionPercent = 0
			if self.Direction == Enum.Axis.X then
				thumbPositionPercent = guiObjectThumbNormal.Position.X.Scale * maxvalue
			else
				thumbPositionPercent = (1 - guiObjectThumbNormal.Position.Y.Scale) * maxvalue  -- Zero is at the bottom
			end
			
			-- Update slider value based on thumb position
			local newValuePercent = math.clamp(thumbPositionPercent, minvalue, maxvalue)
			if newValuePercent ~= attributeValuePercent then
				attributesParent:SetAttribute("ValuePercent", newValuePercent)
			end
			
		end)
		
	
		-- Attribute Event - GetAttributeChangedSignal
		-- Triggered when specific attribute changes
		self.Connections[keyConnection3] = guiObjectThumbNormal:GetAttributeChangedSignal("IsDragging"):Connect(function()
			
			-- Show pressed thumb when dragging
			local attributeIsDragging = guiObjectThumbNormal:GetAttribute("IsDragging") or false
			guiObjectThumbPressed.Visible = attributeIsDragging
	
		end)
		
		
		return self
		
	end
	
	
	
	return FormSliderClass
	
end

modules[trii.ExtendDraggableClass] = function()
	local script = trii.ExtendDraggableClass

	--[[
	
		Copyright © 2023, MapleMarvel (https://www.roblox.com/users/263710410/profile). All Rights Reserved.
		
		
		ExtendDraggableClass:
		Class that extends the object so that it can be dragged.
			
	--]]
	
	
	-- Class
	local ExtendDraggableClass = {}
	ExtendDraggableClass.__index = ExtendDraggableClass
	
	
	-- Constructor
	function ExtendDraggableClass.new(paramGuiObject, paramDraggingEnabled, paramDraggingDirection)
		local self = setmetatable({}, ExtendDraggableClass)
		
		
		-- Validate
		if paramGuiObject == nil then
			error("Required parameters missing for constructor ExtendDraggableClass.new.")
		end
		
		-- Instance Properties
		self.GuiObject = paramGuiObject  -- The GuiObject extended by this class
		self.IsDragging = false  -- True when the user is dragging
		self.DraggingEnabled = paramDraggingEnabled or true  -- Enable or disable dragging
		self.DraggingDirection = paramDraggingDirection or Enum.Axis.X  -- Direction of dragging
		self.DraggingIncrement = 1  -- Dragging increment for descrete intervals
		self.Connections = {}  -- Event connections
	
		
		-- Initialize
		
		-- Local variables
		local dragInput
		local dragStartScreenPosition
		local startGuiObjectPosition
		local parentAbsoluteSize
		local cameraType
		
		-- Set attribute
		self.GuiObject:SetAttribute("IsDragging", self.IsDragging)
		
		-- Local function
		local function RoundToIncrement(paramNumber, paramMultiple)
			
			local roundedNumber = paramNumber
			
			-- Validate
			if paramMultiple ~= 0 then
				
				-- Rounds to nearest multiple
				if paramNumber > 0 then
					roundedNumber = math.ceil(paramNumber / paramMultiple) * paramMultiple
				elseif paramNumber < 0 then
					roundedNumber = math.floor(paramNumber / paramMultiple) * paramMultiple
				else
					roundedNumber = paramMultiple
				end
				
			end
			
			return roundedNumber
		end
		
		-- Local function
		local function RefreshGui(paramInput)
			
			-- Get the new position
			local deltaScreenPosition = paramInput.Position - dragStartScreenPosition
			local deltaXScale = deltaScreenPosition.X / parentAbsoluteSize.X
			local deltaYScale = deltaScreenPosition.Y / parentAbsoluteSize.Y
			local newXScale = startGuiObjectPosition.X.Scale + deltaXScale
			local newYScale = startGuiObjectPosition.Y.Scale + deltaYScale
			
			newXScale = RoundToIncrement(newXScale, self.DraggingIncrement / 100)
			newYScale = RoundToIncrement(newYScale, self.DraggingIncrement / 100)
			
			newXScale = math.round(newXScale * 10000) / 10000  -- Round to avoid roundoff errors
			newYScale = math.round(newYScale * 10000) / 10000
			
			newXScale = math.clamp(newXScale, 0, 1)
			newYScale = math.clamp(newYScale, 0, 1)
							
			-- Horizontal or vertical direction
			if self.DraggingDirection == Enum.Axis.X then
				newYScale = startGuiObjectPosition.Y.Scale  -- Ignore vertical movement
			else
				newXScale = startGuiObjectPosition.X.Scale  -- Ignore horizontal movement
			end
	
			-- Prevent camera moving on mobile during drag
			if paramInput.UserInputType == Enum.UserInputType.Touch then
				workspace.Camera.CameraType = Enum.CameraType.Scriptable
			end
	
			-- Move the gui object
			self.GuiObject.Position = UDim2.new(newXScale, startGuiObjectPosition.X.Offset, newYScale, startGuiObjectPosition.Y.Offset)
	
			-- Reset camera on mobile
			if paramInput.UserInputType == Enum.UserInputType.Touch then
				workspace.Camera.CameraType = cameraType
			end
			
		end
		
		
		-- Disconnect existing connections
		local keyConnection1 = "GuiObjectInputBegan"
		local keyConnection2 = "GuiObjectInputChanged"
		local keyConnection3 = "UserInputServiceInputChanged"
		if self.Connections[keyConnection1] then self.Connections[keyConnection1]:Disconnect() end
		if self.Connections[keyConnection2] then self.Connections[keyConnection2]:Disconnect() end
		if self.Connections[keyConnection3] then self.Connections[keyConnection3]:Disconnect() end
		
		
		-- Events
		
		-- GuiObject Event - InputBegan
		-- Triggered when input begins on the GuiObject
		self.Connections[keyConnection1] = self.GuiObject.InputBegan:Connect(function(input)
			
			-- If dragging enabled
			if self.DraggingEnabled == true then
				
				-- Initialize dragging variables
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					
					self.IsDragging  = true
					self.GuiObject:SetAttribute("IsDragging", self.IsDragging)
					
					dragStartScreenPosition = input.Position
					startGuiObjectPosition = self.GuiObject.Position
					parentAbsoluteSize = self.GuiObject.Parent.AbsoluteSize
					cameraType = workspace.Camera.CameraType
					
					-- Handle when dragging ends
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							self.IsDragging  = false
							self.GuiObject:SetAttribute("IsDragging", self.IsDragging)
						end
					end)
					
				end
				
			end
			
		end)
		
		-- GuiObject Event - InputChanged
		-- Triggered when input changes on the GuiObject
		self.Connections[keyConnection2] = self.GuiObject.InputChanged:Connect(function(paramInput)
			
			-- If dragging enabled
			if self.DraggingEnabled == true then
				
				-- Update drag position
				if paramInput.UserInputType == Enum.UserInputType.MouseMovement or paramInput.UserInputType == Enum.UserInputType.Touch then
					dragInput = paramInput
				end
				
			end
			
		end)
		
		-- UserInputService Event - InputChanged
		-- Triggered when input changes by the user
		self.Connections[keyConnection3] = game:GetService("UserInputService").InputChanged:Connect(function(paramInput)
			
			-- If the user is dragging the GuiObject
			if paramInput == dragInput and self.IsDragging then
				RefreshGui(paramInput)
			end
			
		end)
		
		
		return self
		
	end
	
	
	-- Instance Methods
	
	-- SetDraggingEnabled
	function ExtendDraggableClass:SetDraggingEnabled(paramIsEnabled)
		
		-- Validate
		if paramIsEnabled ~= nil then
			
			-- Update property
			self.DraggingEnabled = paramIsEnabled
			
			-- Update property
			if not paramIsEnabled then
				self.IsDragging = false
				self.GuiObject:SetAttribute("IsDragging", self.IsDragging)
			end
			
		end
		
	end
	
	
	-- SetDraggingIncrement
	function ExtendDraggableClass:SetDraggingIncrement(paramIncrement)
		
		-- Validate
		if paramIncrement ~= nil then
			
			-- Update property
			self.DraggingIncrement = paramIncrement
			
		end
		
	end
	
	
	return ExtendDraggableClass
	
end

modules[trii.Highlighter] = function()
	local script = trii.Highlighter

	local types = require(script.types)
	local utility = require(script.utility)
	local theme = require(script.theme)
	
	local Highlighter = {
		defaultLexer = require(script.lexer) :: types.Lexer,
	
		_textObjectData = {} :: { [types.TextObject]: types.ObjectData },
		_cleanups = {} :: { [types.TextObject]: () -> () },
	}
	
	--[[
		Gathers the info that is needed in order to set up a line label.
	]]
	function Highlighter._getLabelingInfo(textObject: types.TextObject)
		local data = Highlighter._textObjectData[textObject]
		if not data then
			return
		end
	
		local src = utility.convertTabsToSpaces(utility.removeControlChars(textObject.Text))
		local numLines = #string.split(src, "\n")
		if numLines == 0 then
			return
		end
	
		local textBounds = utility.getTextBounds(textObject)
		local textHeight = textBounds.Y / numLines
	
		return {
			data = data,
			numLines = numLines,
			textBounds = textBounds,
			textHeight = textHeight,
			innerAbsoluteSize = utility.getInnerAbsoluteSize(textObject),
			textColor = theme.getColor("iden"),
			textFont = textObject.FontFace,
			textSize = textObject.TextSize,
			labelSize = UDim2.new(1, 0, 0, math.ceil(textHeight)),
		}
	end
	
	--[[
		Aligns and matches the line labels to the textObject.
	]]
	function Highlighter._alignLabels(textObject: types.TextObject)
		local labelingInfo = Highlighter._getLabelingInfo(textObject)
		if not labelingInfo then
			return
		end
	
		for lineNumber, lineLabel in labelingInfo.data.Labels do
			-- Align line label
			lineLabel.TextColor3 = labelingInfo.textColor
			lineLabel.FontFace = labelingInfo.textFont
			lineLabel.TextSize = labelingInfo.textSize
			lineLabel.Size = labelingInfo.labelSize
			lineLabel.Position =
				UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)
		end
	end
	
	--[[
		Creates and populates the line labels with the appropriate rich text.
	]]
	function Highlighter._populateLabels(props: types.HighlightProps)
		-- Gather props
		local textObject = props.textObject
		local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))
		local lexer = props.lexer or Highlighter.defaultLexer
		local customLang = props.customLang
		local forceUpdate = props.forceUpdate
	
		-- Avoid updating when unnecessary
		local data = Highlighter._textObjectData[textObject]
		if (data == nil) or (data.Text == src) then
			if forceUpdate ~= true then
				return
			end
		end
	
		-- Ensure textObject matches sanitized src
		textObject.Text = src
	
		local lineLabels = data.Labels
		local previousLines = data.Lines
	
		local lines = string.split(src, "\n")
	
		data.Lines = lines
		data.Text = src
		data.Lexer = lexer
		data.CustomLang = customLang
	
		-- Shortcut empty textObjects
		if src == "" then
			for l = 1, #lineLabels do
				if lineLabels[l].Text == "" then
					continue
				end
				lineLabels[l].Text = ""
			end
			return
		end
	
		local idenColor = theme.getColor("iden")
		local labelingInfo = Highlighter._getLabelingInfo(textObject)
	
		local richTextBuffer, bufferIndex, lineNumber = table.create(5), 0, 1
		for token: types.TokenName, content: string in lexer.scan(src) do
			local Color = if customLang and customLang[content]
				then theme.getColor("custom")
				else theme.getColor(token) or idenColor
	
			local tokenLines = string.split(utility.sanitizeRichText(content), "\n")
	
			for l, tokenLine in tokenLines do
				-- Find line label
				local lineLabel = lineLabels[lineNumber]
				if not lineLabel then
					local newLabel = Instance.new("TextLabel")
					newLabel.Name = "Line_" .. lineNumber
					newLabel.AutoLocalize = false
					newLabel.RichText = true
					newLabel.BackgroundTransparency = 1
					newLabel.Text = ""
					newLabel.TextXAlignment = Enum.TextXAlignment.Left
					newLabel.TextYAlignment = Enum.TextYAlignment.Top
					newLabel.TextColor3 = labelingInfo.textColor
					newLabel.FontFace = labelingInfo.textFont
					newLabel.TextSize = labelingInfo.textSize
					newLabel.Size = labelingInfo.labelSize
					newLabel.Position =
						UDim2.fromScale(0, labelingInfo.textHeight * (lineNumber - 1) / labelingInfo.innerAbsoluteSize.Y)
	
					newLabel.Parent = textObject.SyntaxHighlights
					lineLabels[lineNumber] = newLabel
					lineLabel = newLabel
				end
	
				-- If multiline token, then set line & move to next
				if l > 1 then
					if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
						-- Set line
						lineLabels[lineNumber].Text = table.concat(richTextBuffer)
					end
					-- Move to next line
					lineNumber += 1
					bufferIndex = 0
					table.clear(richTextBuffer)
				end
	
				-- If changed, add token to line
				if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
					bufferIndex += 1
					-- Only add RichText tags when the color is non-default and the characters are non-whitespace
					if Color ~= idenColor and string.find(tokenLine, "[%S%C]") then
						richTextBuffer[bufferIndex] = theme.getColoredRichText(Color, tokenLine)
					else
						richTextBuffer[bufferIndex] = tokenLine
					end
				end
			end
		end
	
		-- Set final line
		if richTextBuffer[1] and lineLabels[lineNumber] then
			lineLabels[lineNumber].Text = table.concat(richTextBuffer)
		end
	
		-- Clear unused line labels
		for l = lineNumber + 1, #lineLabels do
			if lineLabels[l].Text == "" then
				continue
			end
			lineLabels[l].Text = ""
		end
	end
	
	--[[
		Highlights the given textObject with the given props and returns a cleanup function.
		Highlighting will automatically update when needed, so the cleanup function will disconnect
		those connections and remove all labels.
	]]
	function Highlighter.highlight(props: types.HighlightProps): () -> ()
		-- Gather props
		local textObject = props.textObject
		local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))
		local lexer = props.lexer or Highlighter.defaultLexer
		local customLang = props.customLang
	
		-- Avoid updating when unnecessary
		if Highlighter._cleanups[textObject] then
			-- Already been initialized, so just update
			Highlighter._populateLabels(props)
			Highlighter._alignLabels(textObject)
			return Highlighter._cleanups[textObject]
		end
	
		-- Ensure valid object properties
		textObject.RichText = false
		textObject.Text = src
		textObject.TextXAlignment = Enum.TextXAlignment.Left
		textObject.TextYAlignment = Enum.TextYAlignment.Top
		textObject.BackgroundColor3 = theme.getColor("background")
		textObject.TextColor3 = theme.getColor("iden")
		textObject.TextTransparency = 0.5
	
		-- Build the highlight labels
		local lineFolder = textObject:FindFirstChild("SyntaxHighlights")
		if lineFolder == nil then
			local newLineFolder = Instance.new("Folder")
			newLineFolder.Name = "SyntaxHighlights"
			newLineFolder.Parent = textObject
	
			lineFolder = newLineFolder
		end
	
		local data = {
			Text = "",
			Labels = {},
			Lines = {},
			Lexer = lexer,
			CustomLang = customLang,
		}
		Highlighter._textObjectData[textObject] = data
	
		-- Add a cleanup handler for this textObject
		local connections: { [string]: RBXScriptConnection } = {}
		local function cleanup()
			lineFolder:Destroy()
	
			Highlighter._textObjectData[textObject] = nil
			Highlighter._cleanups[textObject] = nil
	
			for _key, connection in connections do
				connection:Disconnect()
			end
			table.clear(connections)
		end
		Highlighter._cleanups[textObject] = cleanup
	
		connections["AncestryChanged"] = textObject.AncestryChanged:Connect(function()
			if textObject.Parent then
				return
			end
	
			cleanup()
		end)
		connections["TextChanged"] = textObject:GetPropertyChangedSignal("Text"):Connect(function()
			Highlighter._populateLabels(props)
		end)
		connections["TextBoundsChanged"] = textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
			Highlighter._alignLabels(textObject)
		end)
		connections["AbsoluteSizeChanged"] = textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			Highlighter._alignLabels(textObject)
		end)
		connections["FontFaceChanged"] = textObject:GetPropertyChangedSignal("FontFace"):Connect(function()
			Highlighter._alignLabels(textObject)
		end)
	
		-- Populate the labels
		Highlighter._populateLabels(props)
		Highlighter._alignLabels(textObject)
	
		return cleanup
	end
	
	--[[
		Refreshes all highlighted textObjects. Used when the theme changes.
	]]
	function Highlighter.refresh(): ()
		-- Rehighlight existing labels using latest colors
		for textObject, data in Highlighter._textObjectData do
			for _, lineLabel in data.Labels do
				lineLabel.TextColor3 = theme.getColor("iden")
			end
	
			Highlighter.highlight({
				textObject = textObject,
				forceUpdate = true,
				src = data.Text,
				lexer = data.Lexer,
				customLang = data.CustomLang,
			})
		end
	end
	
	--[[
		Sets the token colors to the given colors and refreshes all highlighted textObjects.
	]]
	function Highlighter.setTokenColors(colors: types.TokenColors): ()
		theme.setColors(colors)
	
		Highlighter.refresh()
	end
	
	--[[
		Gets a token color by name.
		Mainly useful for setting "background" token color on other UI objects behind your text.
	]]
	function Highlighter.getTokenColor(tokenName: types.TokenName): Color3
		return theme.getColor(tokenName)
	end
	
	--[[
		Matches the token colors to the Studio theme settings and refreshes all highlighted textObjects.
		Does nothing when not run in a Studio plugin.
	]]
	function Highlighter.matchStudioSettings(): ()
		local applied = theme.matchStudioSettings(Highlighter.refresh)
		if applied then
			Highlighter.refresh()
		end
	end
	
	return Highlighter
	
end

modules[trii.lexer] = function()
	local script = trii.lexer

	--[=[
		Lexical scanner for creating a sequence of tokens from Lua source code.
		This is a heavily modified and Roblox-optimized version of
		the original Penlight Lexer module:
			https://github.com/stevedonovan/Penlight
		Authors:
			stevedonovan <https://github.com/stevedonovan> ----------- Original Penlight lexer author
			ryanjmulder <https://github.com/ryanjmulder> ------------- Penlight lexer contributer
			mpeterv <https://github.com/mpeterv> --------------------- Penlight lexer contributer
			Tieske <https://github.com/Tieske> ----------------------- Penlight lexer contributer
			boatbomber <https://github.com/boatbomber> --------------- Roblox port, added builtin token,
			                                                           added patterns for incomplete syntax, bug fixes,
			                                                           behavior changes, token optimization, thread optimization
			                                                           Added lexer.navigator() for non-sequential reads
			Sleitnick <https://github.com/Sleitnick> ----------------- Roblox optimizations
			howmanysmall <https://github.com/howmanysmall> ----------- Lua + Roblox optimizations
	
		List of possible tokens:
			- iden
			- keyword
			- builtin
			- string
			- number
			- comment
			- operator
	--]=]
	
	local lexer = {}
	
	local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
	local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
	local NUMBER_A = "0[xX][%da-fA-F_]+"
	local NUMBER_B = "0[bB][01_]+"
	local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+"
	local NUMBER_D = "%d+[%._]?[%d_eE]*"
	local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
	local BRACKETS = "[%[%]]+" -- needs to be separate pattern from other operators or it'll mess up multiline strings
	local IDEN = "[%a_][%w_]*"
	local STRING_EMPTY = "(['\"])%1" --Empty String
	local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)" --TODO: Handle escaping escapes
	local STRING_INTER = "`[^\n]-`"
	local STRING_INCOMP_A = "(['\"]).-\n" --Incompleted String with next line
	local STRING_INCOMP_B = "(['\"])[^\n]*" --Incompleted String without next line
	local STRING_MULTI = "%[(=*)%[.-%]%1%]" --Multiline-String
	local STRING_MULTI_INCOMP = "%[=*%[.-.*" --Incompleted Multiline-String
	local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]" --Completed Multiline-Comment
	local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*" --Incompleted Multiline-Comment
	local COMMENT_PLAIN = "%-%-.-\n" --Completed Singleline-Comment
	local COMMENT_INCOMP = "%-%-.*" --Incompleted Singleline-Comment
	-- local TYPED_VAR = ":%s*([%w%?%| \t]+%s*)" --Typed variable, parameter, function
	
	local lang = require(script.language)
	local lua_keyword = lang.keyword
	local lua_builtin = lang.builtin
	local lua_libraries = lang.libraries
	
	lexer.language = lang
	
	local lua_matches = {
		-- Indentifiers
		{ Prefix .. IDEN .. Suffix, "var" },
	
		-- Numbers
		{ Prefix .. NUMBER_A .. Suffix, "number" },
		{ Prefix .. NUMBER_B .. Suffix, "number" },
		{ Prefix .. NUMBER_C .. Suffix, "number" },
		{ Prefix .. NUMBER_D .. Suffix, "number" },
	
		-- Strings
		{ Prefix .. STRING_EMPTY .. Suffix, "string" },
		{ Prefix .. STRING_PLAIN .. Suffix, "string" },
		{ Prefix .. STRING_INCOMP_A .. Suffix, "string" },
		{ Prefix .. STRING_INCOMP_B .. Suffix, "string" },
		{ Prefix .. STRING_MULTI .. Suffix, "string" },
		{ Prefix .. STRING_MULTI_INCOMP .. Suffix, "string" },
		{ Prefix .. STRING_INTER .. Suffix, "string_inter" },
	
		-- Comments
		{ Prefix .. COMMENT_MULTI .. Suffix, "comment" },
		{ Prefix .. COMMENT_MULTI_INCOMP .. Suffix, "comment" },
		{ Prefix .. COMMENT_PLAIN .. Suffix, "comment" },
		{ Prefix .. COMMENT_INCOMP .. Suffix, "comment" },
	
		-- Operators
		{ Prefix .. OPERATORS .. Suffix, "operator" },
		{ Prefix .. BRACKETS .. Suffix, "operator" },
	
		-- Unicode
		{ Prefix .. UNICODE .. Suffix, "iden" },
	
		-- Unknown
		{ "^.", "iden" },
	}
	
	-- To reduce the amount of table indexing during lexing, we separate the matches now
	local PATTERNS, TOKENS = {}, {}
	for i, m in lua_matches do
		PATTERNS[i] = m[1]
		TOKENS[i] = m[2]
	end
	
	--- Create a plain token iterator from a string.
	-- @tparam string s a string.
	
	function lexer.scan(s: string)
		local index = 1
		local size = #s
		local previousContent1, previousContent2, previousContent3, previousToken = "", "", "", ""
	
		local thread = coroutine.create(function()
			while index <= size do
				local matched = false
				for tokenType, pattern in ipairs(PATTERNS) do
					-- Find match
					local start, finish = string.find(s, pattern, index)
					if start == nil then
						continue
					end
	
					-- Move head
					index = finish + 1
					matched = true
	
					-- Gather results
					local content = string.sub(s, start, finish)
					local rawToken = TOKENS[tokenType]
					local processedToken = rawToken
	
					-- Process token
					if rawToken == "var" then
						-- Since we merge spaces into the tok, we need to remove them
						-- in order to check the actual word it contains
						local cleanContent = string.gsub(content, Cleaner, "")
	
						if lua_keyword[cleanContent] then
							processedToken = "keyword"
						elseif lua_builtin[cleanContent] then
							processedToken = "builtin"
						elseif string.find(previousContent1, "%.[%s%c]*$") and previousToken ~= "comment" then
							-- The previous was a . so we need to special case indexing things
							local parent = string.gsub(previousContent2, Cleaner, "")
							local lib = lua_libraries[parent]
							if lib and lib[cleanContent] and not string.find(previousContent3, "%.[%s%c]*$") then
								-- Indexing a builtin lib with existing item, treat as a builtin
								processedToken = "builtin"
							else
								-- Indexing a non builtin, can't be treated as a keyword/builtin
								processedToken = "iden"
							end
							-- print("indexing",parent,"with",cleanTok,"as",t2)
						else
							processedToken = "iden"
						end
					elseif rawToken == "string_inter" then
						if not string.find(content, "[^\\]{") then
							-- This inter string doesnt actually have any inters
							processedToken = "string"
						else
							-- We're gonna do our own yields, so the main loop won't need to
							-- Our yields will be a mix of string and whatever is inside the inters
							processedToken = nil
	
							local isString = true
							local subIndex = 1
							local subSize = #content
							while subIndex <= subSize do
								-- Find next brace
								local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex)
								if subStart == nil then
									-- No more braces, all string
									coroutine.yield("string", string.sub(content, subIndex))
									break
								end
	
								if isString then
									-- We are currently a string
									subIndex = subFinish + 1
									coroutine.yield("string", string.sub(content, subStart, subFinish))
	
									-- This brace opens code
									isString = false
								else
									-- We are currently in code
									subIndex = subFinish
									local subContent = string.sub(content, subStart, subFinish - 1)
									for innerToken, innerContent in lexer.scan(subContent) do
										coroutine.yield(innerToken, innerContent)
									end
	
									-- This brace opens string/closes code
									isString = true
								end
							end
						end
					end
	
					-- Record last 3 tokens for the indexing context check
					previousContent3 = previousContent2
					previousContent2 = previousContent1
					previousContent1 = content
					previousToken = processedToken or rawToken
					if processedToken then
						coroutine.yield(processedToken, content)
					end
					break
				end
	
				-- No matches found
				if not matched then
					return
				end
			end
	
			-- Completed the scan
			return
		end)
	
		return function()
			if coroutine.status(thread) == "dead" then
				return
			end
	
			local success, token, content = coroutine.resume(thread)
			if success and token then
				return token, content
			end
	
			return
		end
	end
	
	function lexer.navigator()
		local nav = {
			Source = "",
			TokenCache = table.create(50),
	
			_RealIndex = 0,
			_UserIndex = 0,
			_ScanThread = nil,
		}
	
		function nav:Destroy()
			self.Source = nil
			self._RealIndex = nil
			self._UserIndex = nil
			self.TokenCache = nil
			self._ScanThread = nil
		end
	
		function nav:SetSource(SourceString)
			self.Source = SourceString
	
			self._RealIndex = 0
			self._UserIndex = 0
			table.clear(self.TokenCache)
	
			self._ScanThread = coroutine.create(function()
				for Token, Src in lexer.scan(self.Source) do
					self._RealIndex += 1
					self.TokenCache[self._RealIndex] = { Token, Src }
					coroutine.yield(Token, Src)
				end
			end)
		end
	
		function nav.Next()
			nav._UserIndex += 1
	
			if nav._RealIndex >= nav._UserIndex then
				-- Already scanned, return cached
				return table.unpack(nav.TokenCache[nav._UserIndex])
			else
				if coroutine.status(nav._ScanThread) == "dead" then
					-- Scan thread dead
					return
				else
					local success, token, src = coroutine.resume(nav._ScanThread)
					if success and token then
						-- Scanned new data
						return token, src
					else
						-- Lex completed
						return
					end
				end
			end
		end
	
		function nav.Peek(PeekAmount)
			local GoalIndex = nav._UserIndex + PeekAmount
	
			if nav._RealIndex >= GoalIndex then
				-- Already scanned, return cached
				if GoalIndex > 0 then
					return table.unpack(nav.TokenCache[GoalIndex])
				else
					-- Invalid peek
					return
				end
			else
				if coroutine.status(nav._ScanThread) == "dead" then
					-- Scan thread dead
					return
				else
					local IterationsAway = GoalIndex - nav._RealIndex
	
					local success, token, src = nil, nil, nil
	
					for _ = 1, IterationsAway do
						success, token, src = coroutine.resume(nav._ScanThread)
						if not (success or token) then
							-- Lex completed
							break
						end
					end
	
					return token, src
				end
			end
		end
	
		return nav
	end
	
	return lexer
	
end

modules[trii.language] = function()
	local script = trii.language

	local language = {
		keyword = {
			["and"] = "keyword",
			["break"] = "keyword",
			["continue"] = "keyword",
			["do"] = "keyword",
			["else"] = "keyword",
			["elseif"] = "keyword",
			["end"] = "keyword",
			["export"] = "keyword",
			["false"] = "keyword",
			["for"] = "keyword",
			["function"] = "keyword",
			["if"] = "keyword",
			["in"] = "keyword",
			["local"] = "keyword",
			["nil"] = "keyword",
			["not"] = "keyword",
			["or"] = "keyword",
			["repeat"] = "keyword",
			["return"] = "keyword",
			["self"] = "keyword",
			["then"] = "keyword",
			["true"] = "keyword",
			["type"] = "keyword",
			["typeof"] = "keyword",
			["until"] = "keyword",
			["while"] = "keyword",
		},
	
		builtin = {
			-- Luau Functions
			["assert"] = "function",
			["error"] = "function",
			["getfenv"] = "function",
			["getmetatable"] = "function",
			["ipairs"] = "function",
			["loadstring"] = "function",
			["newproxy"] = "function",
			["next"] = "function",
			["pairs"] = "function",
			["pcall"] = "function",
			["print"] = "function",
			["rawequal"] = "function",
			["rawget"] = "function",
			["rawlen"] = "function",
			["rawset"] = "function",
			["select"] = "function",
			["setfenv"] = "function",
			["setmetatable"] = "function",
			["tonumber"] = "function",
			["tostring"] = "function",
			["unpack"] = "function",
			["xpcall"] = "function",
	
			-- Luau Functions (Deprecated)
			["collectgarbage"] = "function",
	
			-- Luau Variables
			["_G"] = "table",
			["_VERSION"] = "string",
	
			-- Luau Tables
			["bit32"] = "table",
			["coroutine"] = "table",
			["debug"] = "table",
			["math"] = "table",
			["os"] = "table",
			["string"] = "table",
			["table"] = "table",
			["utf8"] = "table",
	
			-- Roblox Functions
			["DebuggerManager"] = "function",
			["delay"] = "function",
			["gcinfo"] = "function",
			["PluginManager"] = "function",
			["require"] = "function",
			["settings"] = "function",
			["spawn"] = "function",
			["tick"] = "function",
			["time"] = "function",
			["UserSettings"] = "function",
			["wait"] = "function",
			["warn"] = "function",
	
			-- Roblox Functions (Deprecated)
			["Delay"] = "function",
			["ElapsedTime"] = "function",
			["elapsedTime"] = "function",
			["printidentity"] = "function",
			["Spawn"] = "function",
			["Stats"] = "function",
			["stats"] = "function",
			["Version"] = "function",
			["version"] = "function",
			["Wait"] = "function",
			["ypcall"] = "function",
	
			-- Roblox Variables
			["game"] = "Instance",
			["plugin"] = "Instance",
			["script"] = "Instance",
			["shared"] = "Instance",
			["workspace"] = "Instance",
	
			-- Roblox Variables (Deprecated)
			["Game"] = "Instance",
			["Workspace"] = "Instance",
	
			-- Roblox Tables
			["Axes"] = "table",
			["BrickColor"] = "table",
			["CatalogSearchParams"] = "table",
			["CFrame"] = "table",
			["Color3"] = "table",
			["ColorSequence"] = "table",
			["ColorSequenceKeypoint"] = "table",
			["DateTime"] = "table",
			["DockWidgetPluginGuiInfo"] = "table",
			["Enum"] = "table",
			["Faces"] = "table",
			["FloatCurveKey"] = "table",
			["Font"] = "table",
			["Instance"] = "table",
			["NumberRange"] = "table",
			["NumberSequence"] = "table",
			["NumberSequenceKeypoint"] = "table",
			["OverlapParams"] = "table",
			["PathWaypoint"] = "table",
			["PhysicalProperties"] = "table",
			["Random"] = "table",
			["Ray"] = "table",
			["RaycastParams"] = "table",
			["Rect"] = "table",
			["Region3"] = "table",
			["Region3int16"] = "table",
			["RotationCurveKey"] = "table",
			["SharedTable"] = "table",
			["task"] = "table",
			["TweenInfo"] = "table",
			["UDim"] = "table",
			["UDim2"] = "table",
			["Vector2"] = "table",
			["Vector2int16"] = "table",
			["Vector3"] = "table",
			["Vector3int16"] = "table",
		},
	
		libraries = {
	
			-- Luau Libraries
			bit32 = {
				arshift = "function",
				band = "function",
				bnot = "function",
				bor = "function",
				btest = "function",
				bxor = "function",
				countlz = "function",
				countrz = "function",
				extract = "function",
				lrotate = "function",
				lshift = "function",
				replace = "function",
				rrotate = "function",
				rshift = "function",
			},
	
			coroutine = {
				close = "function",
				create = "function",
				isyieldable = "function",
				resume = "function",
				running = "function",
				status = "function",
				wrap = "function",
				yield = "function",
			},
	
			debug = {
				dumpheap = "function",
				getmemorycategory = "function",
				info = "function",
				loadmodule = "function",
				profilebegin = "function",
				profileend = "function",
				resetmemorycategory = "function",
				setmemorycategory = "function",
				traceback = "function",
			},
	
			math = {
				abs = "function",
				acos = "function",
				asin = "function",
				atan2 = "function",
				atan = "function",
				ceil = "function",
				clamp = "function",
				cos = "function",
				cosh = "function",
				deg = "function",
				exp = "function",
				floor = "function",
				fmod = "function",
				frexp = "function",
				ldexp = "function",
				log10 = "function",
				log = "function",
				max = "function",
				min = "function",
				modf = "function",
				noise = "function",
				pow = "function",
				rad = "function",
				random = "function",
				randomseed = "function",
				round = "function",
				sign = "function",
				sin = "function",
				sinh = "function",
				sqrt = "function",
				tan = "function",
				tanh = "function",
	
				huge = "number",
				pi = "number",
			},
	
			os = {
				clock = "function",
				date = "function",
				difftime = "function",
				time = "function",
			},
	
			string = {
				byte = "function",
				char = "function",
				find = "function",
				format = "function",
				gmatch = "function",
				gsub = "function",
				len = "function",
				lower = "function",
				match = "function",
				pack = "function",
				packsize = "function",
				rep = "function",
				reverse = "function",
				split = "function",
				sub = "function",
				unpack = "function",
				upper = "function",
			},
	
			table = {
				clear = "function",
				clone = "function",
				concat = "function",
				create = "function",
				find = "function",
				foreach = "function",
				foreachi = "function",
				freeze = "function",
				getn = "function",
				insert = "function",
				isfrozen = "function",
				maxn = "function",
				move = "function",
				pack = "function",
				remove = "function",
				sort = "function",
				unpack = "function",
			},
	
			utf8 = {
				char = "function",
				codepoint = "function",
				codes = "function",
				graphemes = "function",
				len = "function",
				nfcnormalize = "function",
				nfdnormalize = "function",
				offset = "function",
	
				charpattern = "string",
			},
	
			-- Roblox Libraries
			Axes = {
				new = "function",
			},
	
			BrickColor = {
				Black = "function",
				Blue = "function",
				DarkGray = "function",
				Gray = "function",
				Green = "function",
				new = "function",
				New = "function",
				palette = "function",
				Random = "function",
				random = "function",
				Red = "function",
				White = "function",
				Yellow = "function",
			},
	
			CatalogSearchParams = {
				new = "function",
			},
	
			CFrame = {
				Angles = "function",
				fromAxisAngle = "function",
				fromEulerAngles = "function",
				fromEulerAnglesXYZ = "function",
				fromEulerAnglesYXZ = "function",
				fromMatrix = "function",
				fromOrientation = "function",
				lookAt = "function",
				new = "function",
	
				identity = "CFrame",
			},
	
			Color3 = {
				fromHex = "function",
				fromHSV = "function",
				fromRGB = "function",
				new = "function",
				toHSV = "function",
			},
	
			ColorSequence = {
				new = "function",
			},
	
			ColorSequenceKeypoint = {
				new = "function",
			},
	
			DateTime = {
				fromIsoDate = "function",
				fromLocalTime = "function",
				fromUniversalTime = "function",
				fromUnixTimestamp = "function",
				fromUnixTimestampMillis = "function",
				now = "function",
			},
	
			DockWidgetPluginGuiInfo = {
				new = "function",
			},
	
			Enum = {},
	
			Faces = {
				new = "function",
			},
	
			FloatCurveKey = {
				new = "function",
			},
	
			Font = {
				fromEnum = "function",
				fromId = "function",
				fromName = "function",
				new = "function",
			},
	
			Instance = {
				new = "function",
			},
	
			NumberRange = {
				new = "function",
			},
	
			NumberSequence = {
				new = "function",
			},
	
			NumberSequenceKeypoint = {
				new = "function",
			},
	
			OverlapParams = {
				new = "function",
			},
	
			PathWaypoint = {
				new = "function",
			},
	
			PhysicalProperties = {
				new = "function",
			},
	
			Random = {
				new = "function",
			},
	
			Ray = {
				new = "function",
			},
	
			RaycastParams = {
				new = "function",
			},
	
			Rect = {
				new = "function",
			},
	
			Region3 = {
				new = "function",
			},
	
			Region3int16 = {
				new = "function",
			},
	
			RotationCurveKey = {
				new = "function",
			},
	
			SharedTable = {
				clear = "function",
				clone = "function",
				cloneAndFreeze = "function",
				increment = "function",
				isFrozen = "function",
				new = "function",
				size = "function",
				update = "function",
			},
	
			task = {
				cancel = "function",
				defer = "function",
				delay = "function",
				desynchronize = "function",
				spawn = "function",
				synchronize = "function",
				wait = "function",
			},
	
			TweenInfo = {
				new = "function",
			},
	
			UDim = {
				new = "function",
			},
	
			UDim2 = {
				fromOffset = "function",
				fromScale = "function",
				new = "function",
			},
	
			Vector2 = {
				new = "function",
	
				one = "Vector2",
				xAxis = "Vector2",
				yAxis = "Vector2",
				zero = "Vector2",
			},
	
			Vector2int16 = {
				new = "function",
			},
	
			Vector3 = {
				fromAxis = "function",
				FromAxis = "function",
				fromNormalId = "function",
				FromNormalId = "function",
				new = "function",
	
				one = "Vector3",
				xAxis = "Vector3",
				yAxis = "Vector3",
				zAxis = "Vector3",
				zero = "Vector3",
			},
	
			Vector3int16 = {
				new = "function",
			},
		},
	}
	
	-- Filling up language.libraries.Enum table
	local enumLibraryTable = language.libraries.Enum
	
	for _, enum in ipairs(Enum:GetEnums()) do
		--TODO: Remove tostring from here once there is a better way to get the name of an Enum
		enumLibraryTable[tostring(enum)] = "Enum"
	end
	
	return language
	
end

modules[trii.theme] = function()
	local script = trii.theme

	local DEFAULT_TOKEN_COLORS = {
		["background"] = Color3.fromRGB(47, 47, 47),
		["iden"] = Color3.fromRGB(234, 234, 234),
		["keyword"] = Color3.fromRGB(215, 174, 255),
		["builtin"] = Color3.fromRGB(131, 206, 255),
		["string"] = Color3.fromRGB(196, 255, 193),
		["number"] = Color3.fromRGB(255, 125, 125),
		["comment"] = Color3.fromRGB(140, 140, 155),
		["operator"] = Color3.fromRGB(255, 239, 148),
		["custom"] = Color3.fromRGB(119, 122, 255),
	}
	
	local types = require(script.Parent.types)
	
	local Theme = {
		tokenColors = {},
		tokenRichTextFormatter = {},
	}
	
	function Theme.setColors(tokenColors: types.TokenColors)
		assert(type(tokenColors) == "table", "Theme.updateColors expects a table")
	
		for tokenName, color in tokenColors do
			Theme.tokenColors[tokenName] = color
		end
	end
	
	function Theme.getColoredRichText(color: Color3, text: string): string
		return '<font color="#' .. color:ToHex() .. '">' .. text .. "</font>"
	end
	
	function Theme.getColor(tokenName: types.TokenName): Color3
		return Theme.tokenColors[tokenName]
	end
	
	function Theme.matchStudioSettings(refreshCallback: () -> ()): boolean
		local success = pcall(function()
			-- When not used in a Studio plugin, this will error
			-- and the pcall will just silently return
			local studio = settings().Studio
			local studioTheme = studio.Theme
	
			local function getTokens()
				return {
					["background"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBackground),
					["iden"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptText),
					["keyword"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptKeyword),
					["builtin"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
					["string"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptString),
					["number"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptNumber),
					["comment"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptComment),
					["operator"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptOperator),
					["custom"] = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBool),
				}
			end
	
			Theme.setColors(getTokens())
			studio.ThemeChanged:Connect(function()
				studioTheme = studio.Theme
				Theme.setColors(getTokens())
	            refreshCallback()
			end)
		end)
		return success
	end
	
	-- Initialize
	Theme.setColors(DEFAULT_TOKEN_COLORS)
	
	return Theme
	
end

modules[trii.types] = function()
	local script = trii.types

	export type TextObject = TextLabel | TextBox
	
	export type TokenName =
		"background"
		| "iden"
		| "keyword"
		| "builtin"
		| "string"
		| "number"
		| "comment"
		| "operator"
		| "custom"
	
	export type TokenColors = {
		["background"]: Color3?,
		["iden"]: Color3?,
		["keyword"]: Color3?,
		["builtin"]: Color3?,
		["string"]: Color3?,
		["number"]: Color3?,
		["comment"]: Color3?,
		["operator"]: Color3?,
		["custom"]: Color3?,
	}
	
	export type HighlightProps = {
		textObject: TextObject,
		src: string?,
		forceUpdate: boolean?,
		lexer: Lexer?,
		customLang: { [string]: string }?,
	}
	
	export type Lexer = {
		scan: (src: string) -> () -> (string, string),
		navigator: () -> any,
		finished: boolean?,
	}
	
	export type ObjectData = {
		Text: string,
		Labels: { TextLabel },
		Lines: { string },
		Lexer: Lexer?,
		CustomLang: { [string]: string }?,
	}
	
	return nil
	
end

modules[trii.utility] = function()
	local script = trii.utility

	local types = require(script.Parent.types)
	
	local Utility = {}
	
	function Utility.sanitizeRichText(s: string): string
		return string.gsub(
			string.gsub(string.gsub(string.gsub(string.gsub(s, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), '"', "&quot;"),
			"'",
			"&apos;"
		)
	end
	
	function Utility.convertTabsToSpaces(s: string): string
		return string.gsub(s, "\t", "    ")
	end
	
	function Utility.removeControlChars(s: string): string
		return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "")
	end
	
	function Utility.getInnerAbsoluteSize(textObject: types.TextObject): Vector2
		local fullSize = textObject.AbsoluteSize
	
		local padding: UIPadding? = textObject:FindFirstChildWhichIsA("UIPadding")
		if padding then
			local offsetX = padding.PaddingLeft.Offset + padding.PaddingRight.Offset
			local scaleX = (fullSize.X * padding.PaddingLeft.Scale) + (fullSize.X * padding.PaddingRight.Scale)
			local offsetY = padding.PaddingTop.Offset + padding.PaddingBottom.Offset
			local scaleY = (fullSize.Y * padding.PaddingTop.Scale) + (fullSize.Y * padding.PaddingBottom.Scale)
			return Vector2.new(fullSize.X - (scaleX + offsetX), fullSize.Y - (scaleY + offsetY))
		else
			return fullSize
		end
	end
	
	function Utility.getTextBounds(textObject: types.TextObject): Vector2
		if textObject.ContentText == "" then
			return Vector2.zero
		end
	
		local textBounds = textObject.TextBounds
	
		-- Wait for TextBounds to be non-NaN and non-zero because Roblox
		while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
			task.wait()
			textBounds = textObject.TextBounds
		end
		return textBounds
	end
	
	return Utility
	
end

task.spawn(function()
	local script = trii.GlobalLog

	_G.logPrint = true  
	_G.logWarn = true  
	_G.logError = true  
	_G.logInfo = false  
	
	local TextService = game:GetService("TextService")
	local LogService = game:GetService("LogService")
	local frame = script.Parent
	local messageBox = frame:WaitForChild("TextBox")
	
	messageBox.RichText = true
	messageBox.Selectable = false
	messageBox.Active = false
	
	local function formatMessage(message, messageType)
	    local color = ""
	    local formattedType = ""
	
	    if messageType == Enum.MessageType.MessageOutput then
	        color = "#cffeff" 
	        formattedType = "Print"
	    elseif messageType == Enum.MessageType.MessageWarning then
	        color = "#ffa73b" 
	        formattedType = "Warn"
	    elseif messageType == Enum.MessageType.MessageError then
	        color = "#FF005D" 
	        formattedType = "Error"
	    elseif messageType == Enum.MessageType.MessageInfo then
	        color = "#5cb0ff" 
	        formattedType = "Info"
	    else
	        color = "#FFFFFF" 
	        formattedType = "Other"
	    end
	
	    return string.format('<font color="%s"><b>[%s]</b></font> %s', color, formattedType, message)
	end
	
	local function formatMessage2(message, messageType)
		local formattedType = ""
	
		if messageType == Enum.MessageType.MessageOutput then
			formattedType = "Print"
		elseif messageType == Enum.MessageType.MessageWarning then
			formattedType = "Warn"
		elseif messageType == Enum.MessageType.MessageError then
			formattedType = "Error"
		elseif messageType == Enum.MessageType.MessageInfo then
			formattedType = "Info"
		else
			formattedType = "Other"
		end
	
		return string.format('[%s] %s', formattedType, message)
	end
	

	local function updateMessageBoxSize()
	    local textSize = TextService:GetTextSize(
	        messageBox.Text, 
	        messageBox.TextSize, 
	        messageBox.Font, 
	        Vector2.new(messageBox.AbsoluteSize.X, 20000)
	    )
	
	    messageBox.Size = UDim2.new(messageBox.Size.X.Scale, messageBox.Size.X.Offset, 0, textSize.Y)
	end
	
	
	local function onMessageOut(message, messageType)
	    if not _G.logInfo then return end
	    if (messageType == Enum.MessageType.MessageOutput and not _G.logPrint) or
	        (messageType == Enum.MessageType.MessageWarning and not _G.logWarn) or
	        (messageType == Enum.MessageType.MessageError and not _G.logError)then
	        return 
	    end
	
	    local timeStamp = os.date("%X")
	    local formattedMessage = formatMessage(message, messageType)
	    local formattedMessage2 = formatMessage2(message, messageType)
		
		local logmsg =  messageBox.Text .. timeStamp .. " - " .. formattedMessage .. "\n"
		local logmsg2 = formattedMessage2
	    messageBox.Text = logmsg
		if _G.wsConnection then
			task.wait()
			local success, err = pcall(function()
				_G.ws:Send(tostring(logmsg2))
			end)
			if not success then
				print("Error sending message, ws:Send")
			end
		end
	    updateMessageBoxSize()
	
	    frame.CanvasPosition = Vector2.new(0, messageBox.TextBounds.Y)
	end
	
	LogService.MessageOut:Connect(onMessageOut)
	
end)

task.spawn(function()
	local script = trii.LocalPlayerHandle

	-- Services
	local Players = game:GetService("Players")
	
	--local plr property
	local lplayer = Players.LocalPlayer
	local character = lplayer.Character or lplayer.CharacterAdded:Wait()
	
	-- Modules
	local FormSliderClass = require(script.Parent:WaitForChild("FormSliderClass"))
	
	-- GUI Variables
	local WalKSpeedSlider = script.Parent:WaitForChild("walkspeed"):WaitForChild("Slider")
	local JumpSpeedSlider = script.Parent:WaitForChild("jumspeed"):WaitForChild("Slider")
	local curpos = script.Parent:WaitForChild("CurPos")
	-- Add slider functionality
	local WalKSpeedSliderSet = FormSliderClass.new(WalKSpeedSlider, Enum.Axis.X, 0, 50)  -- Horizontal, -> paramGuiObject, paramDirection, minvalue, maxvalue slider
	
	-- Meow
	WalKSpeedSlider:GetAttributeChangedSignal("ValuePercent"):Connect(function()
		--print(WalKSpeedSlider:GetAttribute("ValuePercent"), WalKSpeedSlider:GetAttribute("ValueIncrement"))
		WalKSpeedSlider.Parent.Title.Text = "Player Walk Speed: "..math.floor(WalKSpeedSlider:GetAttribute("ValuePercent"))
		character.Humanoid.WalkSpeed = math.floor(WalKSpeedSlider:GetAttribute("ValuePercent"))
	end)
	
	
	
	coroutine.resume(coroutine.create(function()
		while wait() do
			if character then
				local vector = character.HumanoidRootPart.Position
				local pos = Vector3.new(math.floor(vector.X), math.floor(vector.Y), math.floor(vector.Z))
				curpos.Text = "Current Position: "..tostring(pos)
			end
		end
	end))
	
	
	
end)

task.spawn(function()
	local script = trii.LocalScript

	local Highlighter = require(script.Parent.ScriptBox.Highlighter)
	local myTextLabel = script.Parent.ScriptBox
	
	Highlighter.highlight({
	    textObject = myTextLabel,
	})
	
end)

task.spawn(function()
	local script = trii.LocalScript_1

	
	local plr = game.Players.LocalPlayer
	local MainFrame = script.Parent.MainFrame
	local buttons = MainFrame.BottomMenuFrame.MenuList
	
	local execBtn = buttons:WaitForChild("ExecBtn")
	local cloudBtn = buttons:WaitForChild("CloudBtn")
	local HBtn = buttons:WaitForChild("HBtn")
	local settingsBtn = buttons:WaitForChild("SettingsBtn")
	
	local execFrame = MainFrame:WaitForChild("ExecFrame")
	local logFrame = MainFrame:WaitForChild("logFrame")
	local homeFrame = MainFrame:WaitForChild("homeFrame")
	local settingsFrame = MainFrame:WaitForChild("SettingsFrame")
	
	local excbtn = execFrame.Buttons.Button1
	local execlipbtn = execFrame.Buttons.Button2
	local pastebtn = execFrame.Buttons.Button3
	local clearbtn = execFrame.Buttons.Button4
	
	local ScriptBox = execFrame.ScrollingFrame.ScriptBox
	
	local ExitBtn = MainFrame.BottomMenuFrame.LeftFrame.ExitBtn
	
	----//////////////////----
	----/// Menu Buttons
	----//////////////////----
	
	local function hideAllFrames()
	    execFrame.Visible = false
	    logFrame.Visible = false
	    homeFrame.Visible = false
	    settingsFrame.Visible = false
	    execBtn.UIStroke.Enabled = false    
	    HBtn.UIStroke.Enabled = false    
	    cloudBtn.UIStroke.Enabled = false    
	    settingsBtn.UIStroke.Enabled = false    
	end
	
	local function showFrame(frame, btn)
	    hideAllFrames()
	    task.wait()
	    frame.Visible = true
	    btn.UIStroke.Enabled = true
	end
	
	execBtn.Activated:Connect(function()
	    showFrame(execFrame, execBtn)
	end)
	
	cloudBtn.Activated:Connect(function()
	    showFrame(logFrame, cloudBtn)
	end)
	
	HBtn.Activated:Connect(function()
	    showFrame(homeFrame, HBtn)
	end)
	
	settingsBtn.Activated:Connect(function()
	    showFrame(settingsFrame, settingsBtn)
	end)
	
	hideAllFrames()
	
	homeFrame.Visible = true
	
	----//////////////////----
	----/// Exec Buttons
	----//////////////////----
	
	excbtn.Activated:Connect(function()
	    excbtn.UIStroke.Enabled = true
	    executecode(ScriptBox.Text)
	    wait(0.1)
	    excbtn.UIStroke.Enabled = false
	end) 
	
	execlipbtn.Activated:Connect(function()
	    execlipbtn.UIStroke.Enabled = true
	    executecode(getclipboard())
	    wait(0.1)
	    execlipbtn.UIStroke.Enabled = false
	end)  
	
	pastebtn.Activated:Connect(function()
	    pastebtn.UIStroke.Enabled = true
	    ScriptBox.Text = getclipboard()
	    wait(0.1)
	    pastebtn.UIStroke.Enabled = false
	end) 
	
	clearbtn.Activated:Connect(function()
	    clearbtn.UIStroke.Enabled = true
	    ScriptBox.Text = ""
	    wait(0.1)
	    clearbtn.UIStroke.Enabled = false
	end)  
	
	
	----//////////////////----
	----/// Other
	----//////////////////----
	
	ExitBtn.Activated:Connect(function()
	    script.Parent.Enabled = not script.Parent.Enabled
	end)
	
	ScriptBox.Focused:Connect(function()
	    for _, item in pairs(ScriptBox.SyntaxHighlights:GetChildren()) do
	       item.Visible = false
	    end
	end)
	
	ScriptBox.FocusLost:Connect(function()
	    for _, item in pairs(ScriptBox.SyntaxHighlights:GetChildren()) do
	        item.Visible = true
	    end
	end)
	
	
	
	
	----//////////////////----
	----/// Default Page
	----//////////////////----
	
	local HttpService = game:GetService("HttpService")
	
	local jsonString = [[
	{
	  "15842384180x": {
	    "_scripts": [
	      {"scriptName": "Script 1", "text": "script executed"},
	      {"scriptName": "script 2", "text": "script executed"}
	    ]
	  },
	  "987654321": {
	    "_scripts": [
	      {"scriptName": "scriptName 3", "text": "Quote 1 from scriptName 3 in Game 987654321"}
	    ]
	  },
	  "global": {
	    "_scripts": [
	      {"scriptName": "Infinite Yield", "text": "loadstring(game:HttpGet(\"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source\",true))()"},
	      {"scriptName": "Dark Dex v4", "text": "getgenv().Key = \"Bash\" loadstring(game:HttpGet(\"https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AIY%20Dex\",true))()"},
	      {"scriptName": "Bypassed Dark Dex v3", "text": "loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua', true))()"}
	    ]
	  }
	}
	]]
	
	
	
	local scriptList = HttpService:JSONDecode(jsonString)
	local scriptsFrame = MainFrame.homeFrame.scriptsFrame
	local scriptButton = scriptsFrame.TextButton
	local currentPlaceId = tostring(game.PlaceId) 
	
	
	scriptsFrame["#GameHeader"].Title.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	
	local function createscriptButtons(_scripts)
	    local yPos = 0
	    for i, scriptData in ipairs(_scripts) do
	        local newButton = scriptButton:Clone()
	        newButton.Parent = scriptsFrame
	        newButton.Text = scriptData.scriptName
	        newButton.Position = UDim2.new(newButton.Position.X.Scale, newButton.Position.X.Offset, newButton.Position.Y.Scale, yPos)
	        yPos = yPos + newButton.Size.Y.Offset + 5
	        newButton.Visible = true
	
	        newButton.MouseButton1Click:Connect(function()
	            --print(scriptData.text)
	            executecode(scriptData.text)
	        end)
	    end
	end
	
	local scriptToUse
	if scriptList[currentPlaceId] and scriptList[currentPlaceId]._scripts then
	    scriptToUse = scriptList[currentPlaceId]._scripts
	elseif scriptList["global"] and scriptList["global"]._scripts then
	    scriptToUse = scriptList["global"]._scripts
	end
	
	if scriptToUse then
	    createscriptButtons(scriptToUse)
	else
	    print("No _scripts available.")
	end
	
	scriptButton.Visible = false
	
	
	----//////////////////----
	----/// Console Log Page
	----//////////////////----
	
	logButtons = logFrame.logButtons
	consoleFrame = logFrame.consoleFrame
	
	outputCBX = logButtons.logOutput.Button
	warningCBX = logButtons.logWarning.Button
	errorCBX = logButtons.logError.Button
	infoCBX = logButtons.logInfo.Button
	consoleclrbtn = logButtons.cclrbtn
	consoleexebtn = logButtons.excp 
	
	local function ccupdt(value, button)
	    if _G[value] then
	        button.Image = "rbxassetid://3926305904"
	        button.ImageRectSize = Vector2.new(36, 36) 
	        button.ImageRectOffset = Vector2.new(724, 724) 
	    else
	        button.Image = "rbxassetid://3926311105"        
	        button.ImageRectSize = Vector2.new(48, 48) 
	        button.ImageRectOffset = Vector2.new(4, 836) 
	    end
	end
	
	consoleexebtn.Activated:Connect(function()
	    executecode(getclipboard())
	end)
	
	outputCBX.Activated:Connect(function()
	    ccupdt("logPrint",outputCBX)
	    _G.logPrint = not _G.logPrint
	    print(_G.logPrint)
	end)
	
	warningCBX.Activated:Connect(function()
	    ccupdt("logWarn",warningCBX)
	    _G.logWarn = not _G.logWarn
	end)
	
	errorCBX.Activated:Connect(function()
	    ccupdt("logError",errorCBX)
	    _G.logError = not _G.logError
	end)
	
	infoCBX.Activated:Connect(function()
	    ccupdt("logInfo",infoCBX)
	    _G.logInfo = not _G.logInfo
	end)
	
	consoleclrbtn.Activated:Connect(function()
	    consoleFrame.TextBox.Text = ""
	end)
end)

task.spawn(function()
	local script = trii.savescripts

	HttpService = game:GetService("HttpService")
	folderName = 'Local_Scripts'
	fileName = 'list.json'
	filePath = folderName .. '/' .. fileName
	
	lsf = script.Parent.MainFrame.homeFrame.localscriptsFrame
	alsf = script.Parent.MainFrame.homeFrame.addlocalscriptsFrame
	
	add_btn = lsf["#GameHeader"].Add_btn.TextButton
	script_placeholder = lsf.script_placeholder
	script_placeholder.Visible = false
	title = script_placeholder.scriptTitle
	buttons = script_placeholder.Buttons
	run = buttons.run.button
	autoload = buttons.autoload.button
	delete = buttons.delete.button
	
	scriptNameinput = alsf.addFrame.input.TextBox
	confirm_btn = alsf.addFrame.confrim_btn.TextButton
	cancel_btn = alsf.addFrame.cancel_btn.TextButton
	
	
	local default_scripts = {
	    localscripts = {
	        script_name = {
	            name = "print epic!",
	            script = "print(\"epic\")",
	            auto_load = false
	        }
	    }
	}
	
	local _scripts = {}
	
	local function merge_scripts(defaults, loaded_scripts)
	    for key, value in pairs(defaults) do
	        if type(value) == "table" then
	            loaded_scripts[key] = loaded_scripts[key] or {}
	            merge_scripts(value, loaded_scripts[key])
	        else
	            loaded_scripts[key] = loaded_scripts[key] or value
	        end
	    end
	end
	
	local function read_scripts()
	    if not isfolder(folderName) then
	        makefolder(folderName)
	    end
	
	    if isfile(filePath) then
	        local fileContents = readfile(filePath)
	        local success, decoded = pcall(function()
	            return HttpService:JSONDecode(fileContents)
	        end)
	        if success then
	            merge_scripts(default_scripts, decoded)
	            return decoded
	        end
	    end
	
	    return default_scripts
	end
	
	
	local function save_scripts()
	    local encoded = HttpService:JSONEncode(_scripts)
	    writefile(filePath, encoded)
	    print("_scripts saved.")
	end
	
	
	
	
	local function deleteScript(scriptName)
	    if _scripts.localscripts[scriptName] then
	        _scripts.localscripts[scriptName] = nil
	        warn("Deleted: " .. scriptName)
	        save_scripts()
	    else
	        warn("Script not found: " .. scriptName)
	    end
	end
	
	_scripts = read_scripts()
	
	
	local function execute_(scriptName)
	    if isfile(filePath) then
	        local fileContents = readfile(filePath)
	        local success, decoded = pcall(function()
	            return HttpService:JSONDecode(fileContents)
	        end)
	
	        if success and decoded.localscripts then
	            local scriptData = decoded.localscripts[scriptName]
	            if scriptData then
	                executecode(scriptData.script)
	            else
	                warn("Script not found:", scriptName)
	            end
	        else
	            warn("Failed to decode _scripts or 'localscripts' not found.")
	        end
	    else
	        print(filePath)
	        warn("_scripts file does not exist.")
	    end
	end
	
	
	local function updateAutoLoad(scriptName, autoLoadValue, btn)
	    if _scripts.localscripts and _scripts.localscripts[scriptName] then
	        _scripts.localscripts[scriptName].auto_load = autoLoadValue
	        save_scripts()
	        print("Updated auto_load for", _scripts.localscripts[scriptName].name, "to", autoLoadValue)
	        
	        if not autoLoadValue then
	            btn.Image = "rbxassetid://3926305904"
	            btn.ImageRectSize = Vector2.new(36, 36) 
	            btn.ImageRectOffset = Vector2.new(724, 724) 
	        else
	            btn.Image = "rbxassetid://3926311105"        
	            btn.ImageRectSize = Vector2.new(48, 48) 
	            btn.ImageRectOffset = Vector2.new(4, 836) 
	        end
	    else
	        warn("Failed to update auto_load. Script not found or error in _scripts.")
	    end
	end
	
	
	
	local function convertScriptName(name)
	    local convertedName = name:gsub("%s+", "_") 
	    convertedName = convertedName:gsub("%W", "") 
	    return convertedName
	end
	
    local function setupScriptUI(scriptName, scriptData)
        local scriptUI = script_placeholder:Clone()
        scriptUI.Visible = true
        scriptUI.scriptTitle.Text = scriptData.name
    
        scriptUI.Buttons.run.button.Activated:Connect(function()
            execute_(scriptName)
        end)
    
        scriptUI.Buttons.autoload.button.Activated:Connect(function()
            local newAutoLoadValue = not scriptData.auto_load
            updateAutoLoad(scriptName, newAutoLoadValue, scriptUI.Buttons.autoload.button)
            scriptData.auto_load = newAutoLoadValue
        end)
    
        scriptUI.Buttons.delete.button.Activated:Connect(function()
            deleteScript(scriptName)
            scriptUI:Destroy()
        end)
    
        scriptUI.Parent = lsf
    
        if scriptData.auto_load then
            scriptUI.Buttons.autoload.button.Image = "rbxassetid://3926311105"        
            scriptUI.Buttons.autoload.button.ImageRectSize = Vector2.new(48, 48) 
            scriptUI.Buttons.autoload.button.ImageRectOffset = Vector2.new(4, 836) 
            execute_(scriptName)        
        end 
    end
    

	local function setupAllScriptsUI()
	    for scriptName, scriptData in pairs(_scripts.localscripts) do
	        setupScriptUI(scriptName, scriptData)
	    end
	end
	
	local function add_update(scriptName, name, scriptContent, autoLoad)
	    print("adding")
	    local isNewScript = not _scripts.localscripts[tostring(scriptName)]
	    _scripts.localscripts[tostring(scriptName)] = {
	        name = tostring(name),
	        script = tostring(scriptContent),
	        auto_load = autoLoad
	    }
	    save_scripts()
	
	    if isNewScript then
	        setupScriptUI(tostring(scriptName), _scripts.localscripts[tostring(scriptName)])
	    end
	end
	
	confirm_btn.Activated:Connect(function()
	
	    local scriptName = scriptNameinput.Text
	    local convertedName = convertScriptName(scriptName)
        local xscript = getclipboard()
	    
	    warn(scriptName, convertedName, xscript)
	    task.wait()
	    if convertedName ~= "" then
	        print("correct")        
	        lsf.Visible = true
	        add_update(convertedName, scriptName, xscript, false)
	        scriptNameinput.Text = ""
	    else
	        scriptNameinput.Parent.Parent.Title.Text =  "Script Name: Invalid script name"
	        wait(2)
	        scriptNameinput.Parent.Parent.Title.Text =  "Script Name:"
	        warn("Invalid script name")
	    end
	
	
	end)
	
	add_btn.Activated:Connect(function()
	    lsf.Visible = false
	end)
	cancel_btn.Activated:Connect(function()
	    lsf.Visible = true
	end)
	
	setupAllScriptsUI()
	
end)

end
wait(2)
main()

loader()

print("---><---")

pcall(function()
	for i,v in pairs(arceus.listarceusfiles("Autoexec")) do
		executecode(arceus.readarceusfile(v))
	end	
end)
