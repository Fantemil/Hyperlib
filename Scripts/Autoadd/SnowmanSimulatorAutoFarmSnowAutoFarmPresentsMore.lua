if not getgenv().MTAPIMutex then
    loadstring(
        game:HttpGet("https://raw.githubusercontent.com/KikoTheDon/MT-Api-v2/main/__source/mt-api%20v2.lua", true)
    )()
end

local playerSleds = game:GetService("Workspace").sleighHolder
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayer = game:GetService("Players")

local remote = game:GetService("ReplicatedStorage").Signals.snowballProjectile
local randomVector = Vector3.new(math.random(5000), y, math.random(5000))

local bossList = game:GetService("ReplicatedStorage").Assets.bosses
local bossPlatform = game:GetService("Workspace").steps

local giftLocations = game:GetService("Workspace").giftSpawns

local selectedBoss

thisPlayer.Character.Humanoid:AddPropertyEmulator("WalkSpeed")



local Phonix = {
    Phonix = Instance.new("ScreenGui"),
    PhonixMain = Instance.new("Frame"),
    UICorner = Instance.new("UICorner"),
    UIStroke = Instance.new("UIStroke"),
    PhonixMainScroll = Instance.new("ScrollingFrame"),
    Tab = Instance.new("TextButton"),
    UICorner_2 = Instance.new("UICorner"),
    PhonixHomeImage = Instance.new("ImageLabel"),
    PhonixLine = Instance.new("Frame"),
    UICorner_3 = Instance.new("UICorner"),
    ButtonTag = Instance.new("StringValue"),
    Tab_2 = Instance.new("TextButton"),
    UICorner_4 = Instance.new("UICorner"),
    PhonixHomeImage_2 = Instance.new("ImageLabel"),
    PhonixLine_2 = Instance.new("Frame"),
    UICorner_5 = Instance.new("UICorner"),
    ButtonTag_2 = Instance.new("StringValue"),
    UIListLayout = Instance.new("UIListLayout"),
    Tab_3 = Instance.new("TextButton"),
    UICorner_6 = Instance.new("UICorner"),
    PhonixHomeImage_3 = Instance.new("ImageLabel"),
    PhonixLine_3 = Instance.new("Frame"),
    UICorner_7 = Instance.new("UICorner"),
    ButtonTag_3 = Instance.new("StringValue"),
    Tab_4 = Instance.new("TextButton"),
    UICorner_8 = Instance.new("UICorner"),
    PhonixHomeImage_4 = Instance.new("ImageLabel"),
    PhonixLine_4 = Instance.new("Frame"),
    UICorner_9 = Instance.new("UICorner"),
    ButtonTag_4 = Instance.new("StringValue"),
    PhonixTop = Instance.new("Folder"),
    PhonixSectionTitle = Instance.new("TextLabel"),
    PhonixTitle = Instance.new("TextLabel"),
    PhonixUserEmail = Instance.new("TextLabel"),
    PhonixUserName = Instance.new("TextLabel"),
    PhonixUserImage = Instance.new("ImageLabel"),
    UICorner_10 = Instance.new("UICorner"),
    PhonixExitImage = Instance.new("ImageLabel"),
    Exit = Instance.new("TextButton"),
    UICorner_11 = Instance.new("UICorner"),
    Expand = Instance.new("TextButton"),
    UICorner_12 = Instance.new("UICorner"),
    Min = Instance.new("TextButton"),
    UICorner_13 = Instance.new("UICorner"),
    PhonixTitleImage = Instance.new("ImageLabel"),
    PhonixPages = Instance.new("Frame"),
    PhonixPage = Instance.new("ScrollingFrame"),
    PhonixPageSection = Instance.new("Frame"),
    UICorner_14 = Instance.new("UICorner"),
    PhonixOptionTitle = Instance.new("TextLabel"),
    PhonixOptionDescription = Instance.new("TextLabel"),
    PhonixOptionImage = Instance.new("ImageLabel"),
    PhonixDrop = Instance.new("Frame"),
    PhonixDropButton = Instance.new("TextButton"),
    UICorner_15 = Instance.new("UICorner"),
    PhonixDropOptions = Instance.new("Frame"),
    UICorner_16 = Instance.new("UICorner"),
    UIStroke_2 = Instance.new("UIStroke"),
    UIListLayout_2 = Instance.new("UIListLayout"),
    PhonixOption = Instance.new("TextButton"),
    UICorner_17 = Instance.new("UICorner"),
    UICorner_18 = Instance.new("UICorner"),
    UIStroke_3 = Instance.new("UIStroke"),
    UIListLayout_3 = Instance.new("UIListLayout"),
    PhonixPageSection_2 = Instance.new("Frame"),
    UICorner_19 = Instance.new("UICorner"),
    PhonixOptionTitle_2 = Instance.new("TextLabel"),
    PhonixOptionDescription_2 = Instance.new("TextLabel"),
    PhonixOptionImage_2 = Instance.new("ImageLabel"),
    PhonixToggleAutoReward = Instance.new("Frame"),
    UICorner_20 = Instance.new("UICorner"),
    UIStroke_4 = Instance.new("UIStroke"),
    PhonixToggleButtonAutoReward = Instance.new("TextButton"),
    UICorner_21 = Instance.new("UICorner"),
    UIStroke_5 = Instance.new("UIStroke"),
    Circle = Instance.new("Frame"),
    UICorner_22 = Instance.new("UICorner"),
    PhonixPageSection_3 = Instance.new("Frame"),
    UICorner_23 = Instance.new("UICorner"),
    PhonixOptionTitle_3 = Instance.new("TextLabel"),
    PhonixOptionDescription_3 = Instance.new("TextLabel"),
    PhonixOptionImage_3 = Instance.new("ImageLabel"),
    PhonixToggleKillBoss = Instance.new("Frame"),
    UICorner_24 = Instance.new("UICorner"),
    UIStroke_6 = Instance.new("UIStroke"),
    PhonixToggleButtonKillBoss = Instance.new("TextButton"),
    UICorner_25 = Instance.new("UICorner"),
    UIStroke_7 = Instance.new("UIStroke"),
    Circle_2 = Instance.new("Frame"),
    UICorner_26 = Instance.new("UICorner"),
    SideTag = Instance.new("StringValue"),
    PhonixPage_2 = Instance.new("ScrollingFrame"),
    PhonixPageSection_4 = Instance.new("Frame"),
    UICorner_27 = Instance.new("UICorner"),
    PhonixOptionTitle_4 = Instance.new("TextLabel"),
    PhonixOptionDescription_4 = Instance.new("TextLabel"),
    PhonixOptionImage_4 = Instance.new("ImageLabel"),
    PhonixArrow = Instance.new("TextLabel"),
    pvpmenubutton = Instance.new("TextButton"),
    UIListLayout_4 = Instance.new("UIListLayout"),
    PhonixPageSection_5 = Instance.new("Frame"),
    UICorner_28 = Instance.new("UICorner"),
    PhonixOptionTitle_5 = Instance.new("TextLabel"),
    PhonixOptionDescription_5 = Instance.new("TextLabel"),
    PhonixOptionImage_5 = Instance.new("ImageLabel"),
    changelog = Instance.new("Frame"),
    change = Instance.new("TextButton"),
    UICorner_29 = Instance.new("UICorner"),
    UICorner_30 = Instance.new("UICorner"),
    UIStroke_8 = Instance.new("UIStroke"),
    PhonixPageSection_6 = Instance.new("Frame"),
    UICorner_31 = Instance.new("UICorner"),
    PhonixOptionTitle_6 = Instance.new("TextLabel"),
    PhonixOptionDescription_6 = Instance.new("TextLabel"),
    PhonixOptionImage_6 = Instance.new("ImageLabel"),
    changelog_2 = Instance.new("Frame"),
    change_2 = Instance.new("TextButton"),
    UICorner_32 = Instance.new("UICorner"),
    UICorner_33 = Instance.new("UICorner"),
    UIStroke_9 = Instance.new("UIStroke"),
    PhonixPageSection_7 = Instance.new("Frame"),
    UICorner_34 = Instance.new("UICorner"),
    PhonixOptionTitle_7 = Instance.new("TextLabel"),
    PhonixOptionDescription_7 = Instance.new("TextLabel"),
    PhonixOptionImage_7 = Instance.new("ImageLabel"),
    PhonixSlider = Instance.new("Frame"),
    Slider = Instance.new("TextButton"),
    UICorner_35 = Instance.new("UICorner"),
    UIStroke_10 = Instance.new("UIStroke"),
    PhonixSliderFill = Instance.new("Frame"),
    UICorner_36 = Instance.new("UICorner"),
    SliderCount = Instance.new("StringValue"),
    PageTag = Instance.new("StringValue"),
    PhonixPage_3 = Instance.new("ScrollingFrame"),
    PhonixPageSection_8 = Instance.new("Frame"),
    UICorner_37 = Instance.new("UICorner"),
    PhonixOptionTitle_8 = Instance.new("TextLabel"),
    PhonixOptionDescription_8 = Instance.new("TextLabel"),
    PhonixOptionImage_8 = Instance.new("ImageLabel"),
    PhonixArrow_2 = Instance.new("TextLabel"),
    pvpmenubutton_2 = Instance.new("TextButton"),
    UIListLayout_5 = Instance.new("UIListLayout"),
    PhonixPageSection_9 = Instance.new("Frame"),
    UICorner_38 = Instance.new("UICorner"),
    PhonixOptionTitle_9 = Instance.new("TextLabel"),
    PhonixOptionDescription_9 = Instance.new("TextLabel"),
    PhonixOptionImage_9 = Instance.new("ImageLabel"),
    PhonixTogglePresents = Instance.new("Frame"),
    UICorner_39 = Instance.new("UICorner"),
    UIStroke_11 = Instance.new("UIStroke"),
    PhonixToggleButtonPresents = Instance.new("TextButton"),
    UICorner_40 = Instance.new("UICorner"),
    UIStroke_12 = Instance.new("UIStroke"),
    Circle_3 = Instance.new("Frame"),
    UICorner_41 = Instance.new("UICorner"),
    PhonixPageSection_10 = Instance.new("Frame"),
    UICorner_42 = Instance.new("UICorner"),
    PhonixOptionTitle_10 = Instance.new("TextLabel"),
    PhonixOptionDescription_10 = Instance.new("TextLabel"),
    PhonixOptionImage_10 = Instance.new("ImageLabel"),
    PhonixToggleCandy = Instance.new("Frame"),
    UICorner_43 = Instance.new("UICorner"),
    UIStroke_13 = Instance.new("UIStroke"),
    PhonixToggleButtonCandy = Instance.new("TextButton"),
    UICorner_44 = Instance.new("UICorner"),
    UIStroke_14 = Instance.new("UIStroke"),
    Circle_4 = Instance.new("Frame"),
    UICorner_45 = Instance.new("UICorner"),
    PageTag_2 = Instance.new("StringValue"),
    PhonixPageSection_11 = Instance.new("Frame"),
    UICorner_46 = Instance.new("UICorner"),
    PhonixOptionTitle_11 = Instance.new("TextLabel"),
    PhonixOptionDescription_11 = Instance.new("TextLabel"),
    PhonixOptionImage_11 = Instance.new("ImageLabel"),
    PhonixToggleCandy_2 = Instance.new("Frame"),
    UICorner_47 = Instance.new("UICorner"),
    UIStroke_15 = Instance.new("UIStroke"),
    PhonixToggleButtonCandy_2 = Instance.new("TextButton"),
    UICorner_48 = Instance.new("UICorner"),
    UIStroke_16 = Instance.new("UIStroke"),
    Circle_5 = Instance.new("Frame"),
    UICorner_49 = Instance.new("UICorner"),
    PhonixPage_4 = Instance.new("ScrollingFrame"),
    UIListLayout_6 = Instance.new("UIListLayout"),
    PhonixPageSection_12 = Instance.new("Frame"),
    UICorner_50 = Instance.new("UICorner"),
    PhonixOptionTitle_12 = Instance.new("TextLabel"),
    PhonixOptionDescription_12 = Instance.new("TextLabel"),
    PhonixOptionImage_12 = Instance.new("ImageLabel"),
    PhonixDrop_2 = Instance.new("Frame"),
    PhonixDropButton_2 = Instance.new("TextButton"),
    UICorner_51 = Instance.new("UICorner"),
    PhonixDropOptions_2 = Instance.new("Frame"),
    UICorner_52 = Instance.new("UICorner"),
    UIStroke_17 = Instance.new("UIStroke"),
    UIListLayout_7 = Instance.new("UIListLayout"),
    PhonixOption_2 = Instance.new("TextButton"),
    UICorner_53 = Instance.new("UICorner"),
    PhonixOption_3 = Instance.new("TextButton"),
    UICorner_54 = Instance.new("UICorner"),
    UICorner_55 = Instance.new("UICorner"),
    UIStroke_18 = Instance.new("UIStroke"),
    PhonixPageSection_13 = Instance.new("Frame"),
    UICorner_56 = Instance.new("UICorner"),
    PhonixOptionTitle_13 = Instance.new("TextLabel"),
    PhonixOptionDescription_13 = Instance.new("TextLabel"),
    PhonixOptionImage_13 = Instance.new("ImageLabel"),
    PhonixDrop_3 = Instance.new("Frame"),
    PhonixDropButton_3 = Instance.new("TextButton"),
    UICorner_57 = Instance.new("UICorner"),
    PhonixDropOptions_3 = Instance.new("Frame"),
    UICorner_58 = Instance.new("UICorner"),
    UIStroke_19 = Instance.new("UIStroke"),
    UIListLayout_8 = Instance.new("UIListLayout"),
    PhonixOption_4 = Instance.new("TextButton"),
    UICorner_59 = Instance.new("UICorner"),
    PhonixOption_5 = Instance.new("TextButton"),
    UICorner_60 = Instance.new("UICorner"),
    UICorner_61 = Instance.new("UICorner"),
    UIStroke_20 = Instance.new("UIStroke"),
    PageTag_3 = Instance.new("StringValue"),
    PhonixPage_5 = Instance.new("ScrollingFrame"),
    UIListLayout_9 = Instance.new("UIListLayout"),
    PhonixPageSection_14 = Instance.new("Frame"),
    UICorner_62 = Instance.new("UICorner"),
    PhonixOptionTitle_14 = Instance.new("TextLabel"),
    PhonixOptionDescription_14 = Instance.new("TextLabel"),
    PhonixPageSection_15 = Instance.new("Frame"),
    UICorner_63 = Instance.new("UICorner"),
    PhonixOptionTitle_15 = Instance.new("TextLabel"),
    PhonixOptionDescription_15 = Instance.new("TextLabel"),
    Discord = Instance.new("Frame"),
    Discord_2 = Instance.new("TextButton"),
    UICorner_64 = Instance.new("UICorner"),
    UICorner_65 = Instance.new("UICorner"),
    UIStroke_21 = Instance.new("UIStroke"),
    PhonixPageSection_16 = Instance.new("Frame"),
    UICorner_66 = Instance.new("UICorner"),
    PhonixOptionTitle_16 = Instance.new("TextLabel"),
    PhonixOptionDescription_16 = Instance.new("TextLabel"),
    changelog_3 = Instance.new("Frame"),
    change_3 = Instance.new("TextButton"),
    UICorner_67 = Instance.new("UICorner"),
    UICorner_68 = Instance.new("UICorner"),
    UIStroke_22 = Instance.new("UIStroke"),
    PhonixPageSection_17 = Instance.new("Frame"),
    UICorner_69 = Instance.new("UICorner"),
    PhonixOptionTitle_17 = Instance.new("TextLabel"),
    PhonixOptionDescription_17 = Instance.new("TextLabel"),
    github = Instance.new("Frame"),
    github_2 = Instance.new("TextButton"),
    UICorner_70 = Instance.new("UICorner"),
    UICorner_71 = Instance.new("UICorner"),
    UIStroke_23 = Instance.new("UIStroke"),
    PageTag_4 = Instance.new("StringValue"),
    PhonixPage_6 = Instance.new("ScrollingFrame"),
    PhonixPageSection_18 = Instance.new("Frame"),
    UICorner_72 = Instance.new("UICorner"),
    PhonixOptionTitle_18 = Instance.new("TextLabel"),
    PhonixOptionDescription_18 = Instance.new("TextLabel"),
    PhonixOptionImage_14 = Instance.new("ImageLabel"),
    PhonixDrop_4 = Instance.new("Frame"),
    PhonixDropButton_4 = Instance.new("TextButton"),
    UICorner_73 = Instance.new("UICorner"),
    PhonixDropOptions_4 = Instance.new("Frame"),
    UICorner_74 = Instance.new("UICorner"),
    UIStroke_24 = Instance.new("UIStroke"),
    UIListLayout_10 = Instance.new("UIListLayout"),
    PhonixOption_6 = Instance.new("TextButton"),
    UICorner_75 = Instance.new("UICorner"),
    UICorner_76 = Instance.new("UICorner"),
    UIStroke_25 = Instance.new("UIStroke"),
    UIListLayout_11 = Instance.new("UIListLayout"),
    PhonixPageSection_19 = Instance.new("Frame"),
    UICorner_77 = Instance.new("UICorner"),
    PhonixOptionTitle_19 = Instance.new("TextLabel"),
    PhonixOptionDescription_19 = Instance.new("TextLabel"),
    PhonixOptionImage_15 = Instance.new("ImageLabel"),
    killplayer = Instance.new("Frame"),
    Kill = Instance.new("TextButton"),
    UICorner_78 = Instance.new("UICorner"),
    UICorner_79 = Instance.new("UICorner"),
    UIStroke_26 = Instance.new("UIStroke"),
    PhonixPageSection_20 = Instance.new("Frame"),
    UICorner_80 = Instance.new("UICorner"),
    PhonixOptionTitle_20 = Instance.new("TextLabel"),
    PhonixOptionDescription_20 = Instance.new("TextLabel"),
    PhonixOptionImage_16 = Instance.new("ImageLabel"),
    PhonixToggleCandy_3 = Instance.new("Frame"),
    UICorner_81 = Instance.new("UICorner"),
    UIStroke_27 = Instance.new("UIStroke"),
    PhonixToggleButtonCandy_3 = Instance.new("TextButton"),
    UICorner_82 = Instance.new("UICorner"),
    UIStroke_28 = Instance.new("UIStroke"),
    Circle_6 = Instance.new("Frame"),
    UICorner_83 = Instance.new("UICorner"),
    SideTag_2 = Instance.new("StringValue"),
    PhonixScripts = Instance.new("Folder")
}

--Properties:

Phonix.Phonix.Name = "Phonix"
Phonix.Phonix.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Phonix.PhonixMain.Name = "PhonixMain"
Phonix.PhonixMain.Parent = Phonix.Phonix
Phonix.PhonixMain.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.PhonixMain.Position = UDim2.new(0.15625, 0, 0.0777777806, 0)
Phonix.PhonixMain.Size = UDim2.new(0, 487, 0, 307)

Phonix.UICorner.Parent = Phonix.PhonixMain

Phonix.UIStroke.Parent = Phonix.PhonixMain
Phonix.UIStroke.Color = Color3.fromRGB(138, 138, 138)
Phonix.UIStroke.Thickness = 1.500

Phonix.PhonixMainScroll.Name = "PhonixMainScroll"
Phonix.PhonixMainScroll.Parent = Phonix.PhonixMain
Phonix.PhonixMainScroll.Active = true
Phonix.PhonixMainScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixMainScroll.BackgroundTransparency = 1.000
Phonix.PhonixMainScroll.BorderSizePixel = 0
Phonix.PhonixMainScroll.Position = UDim2.new(0.0142566189, 0, 0.307692289, -5)
Phonix.PhonixMainScroll.Size = UDim2.new(0, 191, 0, 210)
Phonix.PhonixMainScroll.CanvasSize = UDim2.new(0, 0, 1, 0)
Phonix.PhonixMainScroll.ScrollBarThickness = 2

Phonix.Tab.Name = "Tab"
Phonix.Tab.Parent = Phonix.PhonixMainScroll
Phonix.Tab.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.Tab.Size = UDim2.new(0, 187, 0, 26)
Phonix.Tab.AutoButtonColor = false
Phonix.Tab.Font = Enum.Font.RobotoMono
Phonix.Tab.Text = "       <b>Home</b>"
Phonix.Tab.RichText = true
Phonix.Tab.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Tab.TextSize = 14.000
Phonix.Tab.TextXAlignment = Enum.TextXAlignment.Left

Phonix.UICorner_2.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_2.Parent = Phonix.Tab

Phonix.PhonixHomeImage.Name = "PhonixHomeImage"
Phonix.PhonixHomeImage.Parent = Phonix.Tab
Phonix.PhonixHomeImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixHomeImage.BackgroundTransparency = 1.000
Phonix.PhonixHomeImage.Position = UDim2.new(0.0427807495, 0, 0.15384616, 0)
Phonix.PhonixHomeImage.Size = UDim2.new(0, 16, 0, 18)
Phonix.PhonixHomeImage.Image = "rbxassetid://8992562921"
Phonix.PhonixHomeImage.ScaleType = Enum.ScaleType.Crop

Phonix.PhonixLine.Name = "PhonixLine"
Phonix.PhonixLine.Parent = Phonix.Tab
Phonix.PhonixLine.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
Phonix.PhonixLine.Position = UDim2.new(0, 0, 0, 6)
Phonix.PhonixLine.Size = UDim2.new(0, 3, 0, 13)
Phonix.PhonixLine.Visible = false

Phonix.UICorner_3.CornerRadius = UDim.new(0, 10)
Phonix.UICorner_3.Parent = Phonix.PhonixLine

Phonix.ButtonTag.Name = "ButtonTag"
Phonix.ButtonTag.Parent = Phonix.Tab
Phonix.ButtonTag.Value = "Home"

Phonix.Tab_2.Name = "Tab"
Phonix.Tab_2.Parent = Phonix.PhonixMainScroll
Phonix.Tab_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.Tab_2.Size = UDim2.new(0, 187, 0, 26)
Phonix.Tab_2.AutoButtonColor = false
Phonix.Tab_2.Font = Enum.Font.RobotoMono
Phonix.Tab_2.Text = "       <b>Player</b>"
Phonix.Tab_2.RichText = true
Phonix.Tab_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Tab_2.TextSize = 14.000
Phonix.Tab_2.TextXAlignment = Enum.TextXAlignment.Left

Phonix.UICorner_4.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_4.Parent = Phonix.Tab_2

Phonix.PhonixHomeImage_2.Name = "PhonixHomeImage"
Phonix.PhonixHomeImage_2.Parent = Phonix.Tab_2
Phonix.PhonixHomeImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixHomeImage_2.BackgroundTransparency = 1.000
Phonix.PhonixHomeImage_2.Position = UDim2.new(0.0427807495, 0, 0.15384616, 0)
Phonix.PhonixHomeImage_2.Size = UDim2.new(0, 16, 0, 18)
Phonix.PhonixHomeImage_2.Image = "rbxassetid://8976689894"
Phonix.PhonixHomeImage_2.ScaleType = Enum.ScaleType.Crop

Phonix.PhonixLine_2.Name = "PhonixLine"
Phonix.PhonixLine_2.Parent = Phonix.Tab_2
Phonix.PhonixLine_2.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
Phonix.PhonixLine_2.Position = UDim2.new(0, 0, 0, 6)
Phonix.PhonixLine_2.Size = UDim2.new(0, 3, 0, 13)
Phonix.PhonixLine_2.Visible = false

Phonix.UICorner_5.CornerRadius = UDim.new(0, 10)
Phonix.UICorner_5.Parent = Phonix.PhonixLine_2

Phonix.ButtonTag_2.Name = "ButtonTag"
Phonix.ButtonTag_2.Parent = Phonix.Tab_2
Phonix.ButtonTag_2.Value = "Player"

Phonix.UIListLayout.Parent = Phonix.PhonixMainScroll
Phonix.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout.Padding = UDim.new(0, 2)

Phonix.Tab_3.Name = "Tab"
Phonix.Tab_3.Parent = Phonix.PhonixMainScroll
Phonix.Tab_3.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.Tab_3.Size = UDim2.new(0, 187, 0, 26)
Phonix.Tab_3.AutoButtonColor = false
Phonix.Tab_3.Font = Enum.Font.RobotoMono
Phonix.Tab_3.Text = "       <b>Farm</b>"
Phonix.Tab_3.RichText = true
Phonix.Tab_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Tab_3.TextSize = 14.000
Phonix.Tab_3.TextXAlignment = Enum.TextXAlignment.Left

Phonix.UICorner_6.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_6.Parent = Phonix.Tab_3

Phonix.PhonixHomeImage_3.Name = "PhonixHomeImage"
Phonix.PhonixHomeImage_3.Parent = Phonix.Tab_3
Phonix.PhonixHomeImage_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixHomeImage_3.BackgroundTransparency = 1.000
Phonix.PhonixHomeImage_3.Position = UDim2.new(0.0427807495, 0, 0.15384616, 0)
Phonix.PhonixHomeImage_3.Size = UDim2.new(0, 16, 0, 18)
Phonix.PhonixHomeImage_3.Image = "rbxassetid://8983580434"
Phonix.PhonixHomeImage_3.ScaleType = Enum.ScaleType.Crop

Phonix.PhonixLine_3.Name = "PhonixLine"
Phonix.PhonixLine_3.Parent = Phonix.Tab_3
Phonix.PhonixLine_3.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
Phonix.PhonixLine_3.Position = UDim2.new(0, 0, 0, 6)
Phonix.PhonixLine_3.Size = UDim2.new(0, 3, 0, 13)
Phonix.PhonixLine_3.Visible = false

Phonix.UICorner_7.CornerRadius = UDim.new(0, 10)
Phonix.UICorner_7.Parent = Phonix.PhonixLine_3

Phonix.ButtonTag_3.Name = "ButtonTag"
Phonix.ButtonTag_3.Parent = Phonix.Tab_3
Phonix.ButtonTag_3.Value = "Farm"

Phonix.Tab_4.Name = "Tab"
Phonix.Tab_4.Parent = Phonix.PhonixMainScroll
Phonix.Tab_4.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.Tab_4.Size = UDim2.new(0, 187, 0, 26)
Phonix.Tab_4.AutoButtonColor = false
Phonix.Tab_4.Font = Enum.Font.RobotoMono
Phonix.Tab_4.Text = "       <b>Settings</b>"
Phonix.Tab_4.RichText = true
Phonix.Tab_4.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Tab_4.TextSize = 14.000
Phonix.Tab_4.TextXAlignment = Enum.TextXAlignment.Left

Phonix.UICorner_8.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_8.Parent = Phonix.Tab_4

Phonix.PhonixHomeImage_4.Name = "PhonixHomeImage"
Phonix.PhonixHomeImage_4.Parent = Phonix.Tab_4
Phonix.PhonixHomeImage_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixHomeImage_4.BackgroundTransparency = 1.000
Phonix.PhonixHomeImage_4.Position = UDim2.new(0.0427807495, 0, 0.15384616, 0)
Phonix.PhonixHomeImage_4.Size = UDim2.new(0, 16, 0, 18)
Phonix.PhonixHomeImage_4.Image = "rbxassetid://8992595171"
Phonix.PhonixHomeImage_4.ScaleType = Enum.ScaleType.Crop

Phonix.PhonixLine_4.Name = "PhonixLine"
Phonix.PhonixLine_4.Parent = Phonix.Tab_4
Phonix.PhonixLine_4.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
Phonix.PhonixLine_4.Position = UDim2.new(0, 0, 0, 6)
Phonix.PhonixLine_4.Size = UDim2.new(0, 3, 0, 13)
Phonix.PhonixLine_4.Visible = false

Phonix.UICorner_9.CornerRadius = UDim.new(0, 10)
Phonix.UICorner_9.Parent = Phonix.PhonixLine_4

Phonix.ButtonTag_4.Name = "ButtonTag"
Phonix.ButtonTag_4.Parent = Phonix.Tab_4
Phonix.ButtonTag_4.Value = "Settings"

Phonix.PhonixTop.Name = "PhonixTop"
Phonix.PhonixTop.Parent = Phonix.PhonixMain

Phonix.PhonixSectionTitle.Name = "PhonixSectionTitle"
Phonix.PhonixSectionTitle.Parent = Phonix.PhonixTop
Phonix.PhonixSectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixSectionTitle.BackgroundTransparency = 1.000
Phonix.PhonixSectionTitle.Position = UDim2.new(0.462321788, -13, 0.100591719, -4)
Phonix.PhonixSectionTitle.Size = UDim2.new(0, 130, 0, 34)
Phonix.PhonixSectionTitle.Font = Enum.Font.RobotoMono
Phonix.PhonixSectionTitle.Text = "<b>Home</b>"
Phonix.PhonixSectionTitle.RichText = true
Phonix.PhonixSectionTitle.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixSectionTitle.TextSize = 19.000
Phonix.PhonixSectionTitle.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixTitle.Name = "PhonixTitle"
Phonix.PhonixTitle.Parent = Phonix.PhonixTop
Phonix.PhonixTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixTitle.BackgroundTransparency = 1.000
Phonix.PhonixTitle.Position = UDim2.new(0.0407331996, 11, 0.0207100585, 0)
Phonix.PhonixTitle.Size = UDim2.new(0, 67, 0, 13)
Phonix.PhonixTitle.Font = Enum.Font.RobotoMono
Phonix.PhonixTitle.Text = "<b>Phonix UI</b>"
Phonix.PhonixTitle.RichText = true
Phonix.PhonixTitle.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixTitle.TextSize = 11.000
Phonix.PhonixTitle.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixUserEmail.Name = "PhonixUserEmail"
Phonix.PhonixUserEmail.Parent = Phonix.PhonixTop
Phonix.PhonixUserEmail.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixUserEmail.BackgroundTransparency = 1.000
Phonix.PhonixUserEmail.Position = UDim2.new(0.154786155, -1, 0.180000007, 0)
Phonix.PhonixUserEmail.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixUserEmail.Font = Enum.Font.RobotoMono
Phonix.PhonixUserEmail.Text = "DohmBoyOG@dohmnet.com"
Phonix.PhonixUserEmail.RichText = true
Phonix.PhonixUserEmail.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixUserEmail.TextSize = 12.000
Phonix.PhonixUserEmail.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixUserName.Name = "PhonixUserName"
Phonix.PhonixUserName.Parent = Phonix.PhonixTop
Phonix.PhonixUserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixUserName.BackgroundTransparency = 1.000
Phonix.PhonixUserName.Position = UDim2.new(0.154786155, -1, 0.133136094, 0)
Phonix.PhonixUserName.Size = UDim2.new(0, 67, 0, 13)
Phonix.PhonixUserName.Font = Enum.Font.RobotoMono
Phonix.PhonixUserName.Text = "<b>DohmBoyOG</b>"
Phonix.PhonixUserName.RichText = true
Phonix.PhonixUserName.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixUserName.TextSize = 14.000
Phonix.PhonixUserName.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixUserImage.Name = "PhonixUserImage"
Phonix.PhonixUserImage.Parent = Phonix.PhonixTop
Phonix.PhonixUserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixUserImage.BackgroundTransparency = 1.000
Phonix.PhonixUserImage.Position = UDim2.new(0.0244399179, 0, 0.106508881, 0)
Phonix.PhonixUserImage.Size = UDim2.new(0, 50, 0, 48)
Phonix.PhonixUserImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
Phonix.PhonixUserImage.ImageTransparency = 0.300

Phonix.UICorner_10.CornerRadius = UDim.new(0, 50)
Phonix.UICorner_10.Parent = Phonix.PhonixUserImage

Phonix.PhonixExitImage.Name = "PhonixExitImage"
Phonix.PhonixExitImage.Parent = Phonix.PhonixTop
Phonix.PhonixExitImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixExitImage.BackgroundTransparency = 1.000
Phonix.PhonixExitImage.BorderSizePixel = 0
Phonix.PhonixExitImage.ClipsDescendants = true
Phonix.PhonixExitImage.Position = UDim2.new(0.6844154, 0, 0, 0)
Phonix.PhonixExitImage.Size = UDim2.new(0, 153, 0, 26)
Phonix.PhonixExitImage.Image = "rbxassetid://8983678046"

Phonix.Exit.Name = "Exit"
Phonix.Exit.Parent = Phonix.PhonixExitImage
Phonix.Exit.BackgroundColor3 = Color3.fromRGB(196, 43, 28)
Phonix.Exit.BackgroundTransparency = 1.000
Phonix.Exit.BorderSizePixel = 0
Phonix.Exit.LayoutOrder = 1
Phonix.Exit.Position = UDim2.new(0, 122, 0, 0)
Phonix.Exit.Size = UDim2.new(0, 30, 0, 27)
Phonix.Exit.AutoButtonColor = false
Phonix.Exit.Font = Enum.Font.SourceSans
Phonix.Exit.Text = ""
Phonix.Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.Exit.TextSize = 14.000

Phonix.UICorner_11.Parent = Phonix.Exit

Phonix.Expand.Name = "Expand"
Phonix.Expand.Parent = Phonix.PhonixExitImage
Phonix.Expand.BackgroundColor3 = Color3.fromRGB(196, 43, 28)
Phonix.Expand.BackgroundTransparency = 1.000
Phonix.Expand.BorderSizePixel = 0
Phonix.Expand.LayoutOrder = 1
Phonix.Expand.Position = UDim2.new(0, 79, 0, 0)
Phonix.Expand.Size = UDim2.new(0, 34, 0, 27)
Phonix.Expand.AutoButtonColor = false
Phonix.Expand.Font = Enum.Font.SourceSans
Phonix.Expand.Text = ""
Phonix.Expand.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.Expand.TextSize = 14.000

Phonix.UICorner_12.Parent = Phonix.Expand

Phonix.Min.Name = "Min"
Phonix.Min.Parent = Phonix.PhonixExitImage
Phonix.Min.BackgroundColor3 = Color3.fromRGB(196, 43, 28)
Phonix.Min.BackgroundTransparency = 1.000
Phonix.Min.BorderSizePixel = 0
Phonix.Min.LayoutOrder = 1
Phonix.Min.Position = UDim2.new(0, 46, 0, 0)
Phonix.Min.Size = UDim2.new(0, 30, 0, 27)
Phonix.Min.AutoButtonColor = false
Phonix.Min.Font = Enum.Font.SourceSans
Phonix.Min.Text = ""
Phonix.Min.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.Min.TextSize = 14.000

Phonix.UICorner_13.Parent = Phonix.Min

Phonix.PhonixTitleImage.Name = "PhonixTitleImage"
Phonix.PhonixTitleImage.Parent = Phonix.PhonixTop
Phonix.PhonixTitleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixTitleImage.BackgroundTransparency = 1.000
Phonix.PhonixTitleImage.Position = UDim2.new(-0.000363856554, 4, -0.0025485754, 0)
Phonix.PhonixTitleImage.Size = UDim2.new(0, 22, 0, 26)
Phonix.PhonixTitleImage.Image = "rbxassetid://8993282700"
Phonix.PhonixTitleImage.ScaleType = Enum.ScaleType.Fit

Phonix.PhonixPages.Name = "PhonixPages"
Phonix.PhonixPages.Parent = Phonix.PhonixMain
Phonix.PhonixPages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixPages.BackgroundTransparency = 1.000
Phonix.PhonixPages.ClipsDescendants = true
Phonix.PhonixPages.Position = UDim2.new(0.431574464, 0, 0.251043558, 0)
Phonix.PhonixPages.Size = UDim2.new(0, 277, 0, 218)

Phonix.PhonixPage.Name = "PhonixPage"
Phonix.PhonixPage.Parent = Phonix.PhonixPages
Phonix.PhonixPage.Active = true
Phonix.PhonixPage.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage.BackgroundTransparency = 1.000
Phonix.PhonixPage.BorderSizePixel = 0
Phonix.PhonixPage.Position = UDim2.new(-0.0590000004, 280, 0, 0)
Phonix.PhonixPage.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage.ScrollBarThickness = 2

Phonix.PhonixPageSection.Name = "PhonixPageSection"
Phonix.PhonixPageSection.Parent = Phonix.PhonixPage
Phonix.PhonixPageSection.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_14.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_14.Parent = Phonix.PhonixPageSection

Phonix.PhonixOptionTitle.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle.Parent = Phonix.PhonixPageSection
Phonix.PhonixOptionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle.Text = "<b>Boss</b>"
Phonix.PhonixOptionTitle.RichText = true
Phonix.PhonixOptionTitle.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle.TextSize = 14.000
Phonix.PhonixOptionTitle.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription.Parent = Phonix.PhonixPageSection
Phonix.PhonixOptionDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription.Text = "Select the boss name"
Phonix.PhonixOptionDescription.RichText = true
Phonix.PhonixOptionDescription.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription.TextSize = 8.000
Phonix.PhonixOptionDescription.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage.Parent = Phonix.PhonixPageSection
Phonix.PhonixOptionImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage.Image = "rbxassetid://8977551484"

Phonix.PhonixDrop.Name = "PhonixDrop"
Phonix.PhonixDrop.Parent = Phonix.PhonixPageSection
Phonix.PhonixDrop.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDrop.Position = UDim2.new(0.59760958, 7, 0.22053358, 5)
Phonix.PhonixDrop.Size = UDim2.new(0, 85, 0, 23)

Phonix.PhonixDropButton.Name = "PhonixDropButton"
Phonix.PhonixDropButton.Parent = Phonix.PhonixDrop
Phonix.PhonixDropButton.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropButton.Size = UDim2.new(0, 85, 0, 23)
Phonix.PhonixDropButton.AutoButtonColor = false
Phonix.PhonixDropButton.Font = Enum.Font.RobotoMono
Phonix.PhonixDropButton.Text = "Select"
Phonix.PhonixDropButton.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixDropButton.TextSize = 8.000
Phonix.PhonixDropButton.TextStrokeColor3 = Color3.fromRGB(246, 246, 246)

Phonix.UICorner_15.Parent = Phonix.PhonixDropButton

Phonix.PhonixDropOptions.Name = "PhonixDropOptions"
Phonix.PhonixDropOptions.Parent = Phonix.PhonixDropButton
Phonix.PhonixDropOptions.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropOptions.AutomaticSize = Enum.AutomaticSize.Y
Phonix.PhonixDropOptions.Position = UDim2.new(0.0143999886, 0, 0.826086938, 7)
Phonix.PhonixDropOptions.Size = UDim2.new(0, 83, 0, 21)
Phonix.PhonixDropOptions.Visible = false
Phonix.PhonixDropOptions.ZIndex = 2

Phonix.UICorner_16.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_16.Parent = Phonix.PhonixDropOptions

Phonix.UIStroke_2.Parent = Phonix.PhonixDropOptions
Phonix.UIStroke_2.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_2.Parent = Phonix.PhonixDropOptions
Phonix.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Phonix.UICorner_17.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_17.Parent = Phonix.PhonixOption

Phonix.UICorner_18.Parent = Phonix.PhonixDrop

Phonix.UIStroke_3.Parent = Phonix.PhonixDrop
Phonix.UIStroke_3.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_3.Parent = Phonix.PhonixPage
Phonix.UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_3.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_2.Name = "PhonixPageSection"
Phonix.PhonixPageSection_2.Parent = Phonix.PhonixPage
Phonix.PhonixPageSection_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_2.Position = UDim2.new(0.0441176482, 0, 0.00382262981, 0)
Phonix.PhonixPageSection_2.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_19.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_19.Parent = Phonix.PhonixPageSection_2

Phonix.PhonixOptionTitle_2.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_2.Parent = Phonix.PhonixPageSection_2
Phonix.PhonixOptionTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_2.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_2.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_2.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_2.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_2.Text = "<b>Auto Reward</b>"
Phonix.PhonixOptionTitle_2.RichText = true
Phonix.PhonixOptionTitle_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_2.TextSize = 14.000
Phonix.PhonixOptionTitle_2.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_2.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_2.Parent = Phonix.PhonixPageSection_2
Phonix.PhonixOptionDescription_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_2.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_2.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_2.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_2.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_2.Text = "Makes boss reward go up"
Phonix.PhonixOptionDescription_2.RichText = true
Phonix.PhonixOptionDescription_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_2.TextSize = 11.000
Phonix.PhonixOptionDescription_2.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_2.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_2.Parent = Phonix.PhonixPageSection_2
Phonix.PhonixOptionImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_2.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_2.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_2.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_2.Image = "rbxassetid://8977551484"

Phonix.PhonixToggleAutoReward.Name = "PhonixToggleAutoReward"
Phonix.PhonixToggleAutoReward.Parent = Phonix.PhonixPageSection_2
Phonix.PhonixToggleAutoReward.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleAutoReward.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixToggleAutoReward.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_20.Parent = Phonix.PhonixToggleAutoReward

Phonix.UIStroke_4.Parent = Phonix.PhonixToggleAutoReward
Phonix.UIStroke_4.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonAutoReward.Name = "PhonixToggleButtonAutoReward"
Phonix.PhonixToggleButtonAutoReward.Parent = Phonix.PhonixToggleAutoReward
Phonix.PhonixToggleButtonAutoReward.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonAutoReward.Position = UDim2.new(-0.110466234, 3, 0.5, -8)
Phonix.PhonixToggleButtonAutoReward.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonAutoReward.AutoButtonColor = false
Phonix.PhonixToggleButtonAutoReward.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonAutoReward.Text = ""
Phonix.PhonixToggleButtonAutoReward.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonAutoReward.TextSize = 14.000

Phonix.UICorner_21.Parent = Phonix.PhonixToggleButtonAutoReward

Phonix.UIStroke_5.Parent = Phonix.PhonixToggleButtonAutoReward

Phonix.Circle.Name = "Circle"
Phonix.Circle.Parent = Phonix.PhonixToggleButtonAutoReward
Phonix.Circle.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_22.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_22.Parent = Phonix.Circle

Phonix.PhonixPageSection_3.Name = "PhonixPageSection"
Phonix.PhonixPageSection_3.Parent = Phonix.PhonixPage
Phonix.PhonixPageSection_3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_3.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_23.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_23.Parent = Phonix.PhonixPageSection_3

Phonix.PhonixOptionTitle_3.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_3.Parent = Phonix.PhonixPageSection_3
Phonix.PhonixOptionTitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_3.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_3.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_3.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_3.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_3.Text = "<b>Auto Kill</b>"
Phonix.PhonixOptionTitle_3.RichText = true
Phonix.PhonixOptionTitle_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_3.TextSize = 14.000
Phonix.PhonixOptionTitle_3.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_3.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_3.Parent = Phonix.PhonixPageSection_3
Phonix.PhonixOptionDescription_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_3.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_3.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_3.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_3.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_3.Text = "When your just too lazy"
Phonix.PhonixOptionDescription_3.RichText = true
Phonix.PhonixOptionDescription_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_3.TextSize = 11.000
Phonix.PhonixOptionDescription_3.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_3.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_3.Parent = Phonix.PhonixPageSection_3
Phonix.PhonixOptionImage_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_3.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_3.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_3.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_3.Image = "rbxassetid://8977551484"

Phonix.PhonixToggleKillBoss.Name = "PhonixToggleKillBoss"
Phonix.PhonixToggleKillBoss.Parent = Phonix.PhonixPageSection_3
Phonix.PhonixToggleKillBoss.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleKillBoss.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixToggleKillBoss.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_24.Parent = Phonix.PhonixToggleKillBoss

Phonix.UIStroke_6.Parent = Phonix.PhonixToggleKillBoss
Phonix.UIStroke_6.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonKillBoss.Name = "PhonixToggleButtonKillBoss"
Phonix.PhonixToggleButtonKillBoss.Parent = Phonix.PhonixToggleKillBoss
Phonix.PhonixToggleButtonKillBoss.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonKillBoss.Position = UDim2.new(-0.110466234, 3, 0.5, -8)
Phonix.PhonixToggleButtonKillBoss.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonKillBoss.AutoButtonColor = false
Phonix.PhonixToggleButtonKillBoss.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonKillBoss.Text = ""
Phonix.PhonixToggleButtonKillBoss.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonKillBoss.TextSize = 14.000

Phonix.UICorner_25.Parent = Phonix.PhonixToggleButtonKillBoss

Phonix.UIStroke_7.Parent = Phonix.PhonixToggleButtonKillBoss
Phonix.UIStroke_7.Color = Color3.fromRGB(145, 145, 145)

Phonix.Circle_2.Name = "Circle"
Phonix.Circle_2.Parent = Phonix.PhonixToggleButtonKillBoss
Phonix.Circle_2.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle_2.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle_2.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle_2.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_26.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_26.Parent = Phonix.Circle_2

Phonix.SideTag.Name = "SideTag"
Phonix.SideTag.Parent = Phonix.PhonixPage
Phonix.SideTag.Value = "BossSide"

Phonix.PhonixPage_2.Name = "PhonixPage"
Phonix.PhonixPage_2.Parent = Phonix.PhonixPages
Phonix.PhonixPage_2.Active = true
Phonix.PhonixPage_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage_2.BackgroundTransparency = 1.000
Phonix.PhonixPage_2.BorderSizePixel = 0
Phonix.PhonixPage_2.Position = UDim2.new(-0.0590000004, 0, 0, 220)
Phonix.PhonixPage_2.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage_2.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage_2.ScrollBarThickness = 2

Phonix.PhonixPageSection_4.Name = "PhonixPageSection"
Phonix.PhonixPageSection_4.Parent = Phonix.PhonixPage_2
Phonix.PhonixPageSection_4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_4.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_27.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_27.Parent = Phonix.PhonixPageSection_4

Phonix.PhonixOptionTitle_4.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_4.Parent = Phonix.PhonixPageSection_4
Phonix.PhonixOptionTitle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_4.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_4.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_4.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_4.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_4.Text = "<b>PVP</b>"
Phonix.PhonixOptionTitle_4.RichText = true
Phonix.PhonixOptionTitle_4.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_4.TextSize = 14.000
Phonix.PhonixOptionTitle_4.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_4.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_4.Parent = Phonix.PhonixPageSection_4
Phonix.PhonixOptionDescription_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_4.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_4.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_4.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_4.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_4.Text = "lots of fun stuff in here..."
Phonix.PhonixOptionDescription_4.RichText = true
Phonix.PhonixOptionDescription_4.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_4.TextSize = 11.000
Phonix.PhonixOptionDescription_4.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_4.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_4.Parent = Phonix.PhonixPageSection_4
Phonix.PhonixOptionImage_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_4.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_4.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_4.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_4.Image = "rbxassetid://8977551484"

Phonix.PhonixArrow.Name = "PhonixArrow"
Phonix.PhonixArrow.Parent = Phonix.PhonixPageSection_4
Phonix.PhonixArrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixArrow.BackgroundTransparency = 1.000
Phonix.PhonixArrow.Position = UDim2.new(0.873000026, 0, 0.379999995, 0)
Phonix.PhonixArrow.Size = UDim2.new(0, 31, 0, 13)
Phonix.PhonixArrow.Font = Enum.Font.RobotoMono
Phonix.PhonixArrow.Text = "<b>></b>"
Phonix.PhonixArrow.RichText = true
Phonix.PhonixArrow.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixArrow.TextScaled = true
Phonix.PhonixArrow.TextSize = 11.000
Phonix.PhonixArrow.TextWrapped = true

Phonix.pvpmenubutton.Name = "pvpmenubutton"
Phonix.pvpmenubutton.Parent = Phonix.PhonixArrow
Phonix.pvpmenubutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.pvpmenubutton.BackgroundTransparency = 1.000
Phonix.pvpmenubutton.BorderSizePixel = 0
Phonix.pvpmenubutton.Position = UDim2.new(0.193548381, 2, 0, 0)
Phonix.pvpmenubutton.Size = UDim2.new(0, 16, 0, 13)
Phonix.pvpmenubutton.AutoButtonColor = false
Phonix.pvpmenubutton.Font = Enum.Font.SourceSans
Phonix.pvpmenubutton.Text = ""
Phonix.pvpmenubutton.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.pvpmenubutton.TextSize = 14.000

Phonix.UIListLayout_4.Parent = Phonix.PhonixPage_2
Phonix.UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_4.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_5.Name = "PhonixPageSection"
Phonix.PhonixPageSection_5.Parent = Phonix.PhonixPage_2
Phonix.PhonixPageSection_5.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_5.Position = UDim2.new(0.0441176482, 0, 0.00382262981, 0)
Phonix.PhonixPageSection_5.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_28.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_28.Parent = Phonix.PhonixPageSection_5

Phonix.PhonixOptionTitle_5.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_5.Parent = Phonix.PhonixPageSection_5
Phonix.PhonixOptionTitle_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_5.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_5.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_5.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_5.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_5.Text = "<b>Unlimited Fuel</b>"
Phonix.PhonixOptionTitle_5.RichText = true
Phonix.PhonixOptionTitle_5.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_5.TextSize = 14.000
Phonix.PhonixOptionTitle_5.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_5.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_5.Parent = Phonix.PhonixPageSection_5
Phonix.PhonixOptionDescription_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_5.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_5.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_5.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_5.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_5.Text = "unlimited for sled"
Phonix.PhonixOptionDescription_5.RichText = true
Phonix.PhonixOptionDescription_5.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_5.TextSize = 11.000
Phonix.PhonixOptionDescription_5.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_5.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_5.Parent = Phonix.PhonixPageSection_5
Phonix.PhonixOptionImage_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_5.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_5.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_5.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_5.Image = "rbxassetid://8977551484"

Phonix.changelog.Name = "changelog"
Phonix.changelog.Parent = Phonix.PhonixPageSection_5
Phonix.changelog.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.changelog.Position = UDim2.new(0.657529533, 0, -2.14957523, 115)
Phonix.changelog.Size = UDim2.new(0, 76, 0, 22)

Phonix.change.Name = "change"
Phonix.change.Parent = Phonix.changelog
Phonix.change.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.change.Size = UDim2.new(0, 76, 0, 22)
Phonix.change.AutoButtonColor = false
Phonix.change.Font = Enum.Font.RobotoMono
Phonix.change.Text = "push"
Phonix.change.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.change.TextSize = 8.000

Phonix.UICorner_29.Parent = Phonix.change

Phonix.UICorner_30.Parent = Phonix.changelog

Phonix.UIStroke_8.Parent = Phonix.changelog
Phonix.UIStroke_8.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_6.Name = "PhonixPageSection"
Phonix.PhonixPageSection_6.Parent = Phonix.PhonixPage_2
Phonix.PhonixPageSection_6.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_6.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_31.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_31.Parent = Phonix.PhonixPageSection_6

Phonix.PhonixOptionTitle_6.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_6.Parent = Phonix.PhonixPageSection_6
Phonix.PhonixOptionTitle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_6.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_6.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_6.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_6.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_6.Text = "<b>Minions Godmode</b>"
Phonix.PhonixOptionTitle_6.RichText = true
Phonix.PhonixOptionTitle_6.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_6.TextSize = 14.000
Phonix.PhonixOptionTitle_6.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_6.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_6.Parent = Phonix.PhonixPageSection_6
Phonix.PhonixOptionDescription_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_6.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_6.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_6.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_6.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_6.Text = "they don't hurt you."
Phonix.PhonixOptionDescription_6.RichText = true
Phonix.PhonixOptionDescription_6.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_6.TextSize = 11.000
Phonix.PhonixOptionDescription_6.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_6.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_6.Parent = Phonix.PhonixPageSection_6
Phonix.PhonixOptionImage_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_6.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_6.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_6.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_6.Image = "rbxassetid://8977551484"

Phonix.changelog_2.Name = "changelog"
Phonix.changelog_2.Parent = Phonix.PhonixPageSection_6
Phonix.changelog_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.changelog_2.Position = UDim2.new(0.657529533, 0, -2.14957523, 115)
Phonix.changelog_2.Size = UDim2.new(0, 76, 0, 22)

Phonix.change_2.Name = "change"
Phonix.change_2.Parent = Phonix.changelog_2
Phonix.change_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.change_2.Size = UDim2.new(0, 76, 0, 22)
Phonix.change_2.AutoButtonColor = false
Phonix.change_2.Font = Enum.Font.RobotoMono
Phonix.change_2.Text = "push"
Phonix.change_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.change_2.TextSize = 8.000

Phonix.UICorner_32.Parent = Phonix.change_2

Phonix.UICorner_33.Parent = Phonix.changelog_2

Phonix.UIStroke_9.Parent = Phonix.changelog_2
Phonix.UIStroke_9.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_7.Name = "PhonixPageSection"
Phonix.PhonixPageSection_7.Parent = Phonix.PhonixPage_2
Phonix.PhonixPageSection_7.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_7.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_34.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_34.Parent = Phonix.PhonixPageSection_7

Phonix.PhonixOptionTitle_7.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_7.Parent = Phonix.PhonixPageSection_7
Phonix.PhonixOptionTitle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_7.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_7.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_7.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_7.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_7.Text = "<b>Walk Speed</b>"
Phonix.PhonixOptionTitle_7.RichText = true
Phonix.PhonixOptionTitle_7.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_7.TextSize = 14.000
Phonix.PhonixOptionTitle_7.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_7.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_7.Parent = Phonix.PhonixPageSection_7
Phonix.PhonixOptionDescription_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_7.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_7.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_7.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_7.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_7.Text = "no explanation needed."
Phonix.PhonixOptionDescription_7.RichText = true
Phonix.PhonixOptionDescription_7.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_7.TextSize = 11.000
Phonix.PhonixOptionDescription_7.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_7.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_7.Parent = Phonix.PhonixPageSection_7
Phonix.PhonixOptionImage_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_7.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_7.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_7.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_7.Image = "rbxassetid://8977551484"

Phonix.PhonixSlider.Name = "PhonixSlider"
Phonix.PhonixSlider.Parent = Phonix.PhonixPageSection_7
Phonix.PhonixSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixSlider.BackgroundTransparency = 1.000
Phonix.PhonixSlider.Position = UDim2.new(0.657529533, 0, 0.48888889, 0)
Phonix.PhonixSlider.Size = UDim2.new(0, 70, 0, 17)

Phonix.Slider.Name = "Slider"
Phonix.Slider.Parent = Phonix.PhonixSlider
Phonix.Slider.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Phonix.Slider.ClipsDescendants = true
Phonix.Slider.Position = UDim2.new(0, 0, 0.291177183, 0)
Phonix.Slider.Size = UDim2.new(0, 70, 0, 8)
Phonix.Slider.AutoButtonColor = false
Phonix.Slider.Font = Enum.Font.SourceSans
Phonix.Slider.Text = ""
Phonix.Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.Slider.TextSize = 14.000

Phonix.UICorner_35.CornerRadius = UDim.new(0, 50)
Phonix.UICorner_35.Parent = Phonix.Slider

Phonix.UIStroke_10.Parent = Phonix.Slider

Phonix.PhonixSliderFill.Name = "PhonixSliderFill"
Phonix.PhonixSliderFill.Parent = Phonix.Slider
Phonix.PhonixSliderFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixSliderFill.Size = UDim2.new(0, 33, 0, 7)

Phonix.UICorner_36.CornerRadius = UDim.new(0, 50)
Phonix.UICorner_36.Parent = Phonix.PhonixSliderFill

Phonix.SliderCount.Name = "SliderCount"
Phonix.SliderCount.Parent = Phonix.PhonixSlider

Phonix.PageTag.Name = "PageTag"
Phonix.PageTag.Parent = Phonix.PhonixPage_2
Phonix.PageTag.Value = "Player"

Phonix.PhonixPage_3.Name = "PhonixPage"
Phonix.PhonixPage_3.Parent = Phonix.PhonixPages
Phonix.PhonixPage_3.Active = true
Phonix.PhonixPage_3.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage_3.BackgroundTransparency = 1.000
Phonix.PhonixPage_3.BorderSizePixel = 0
Phonix.PhonixPage_3.Position = UDim2.new(-0.0590000004, 0, 0, 220)
Phonix.PhonixPage_3.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage_3.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage_3.ScrollBarThickness = 2

Phonix.PhonixPageSection_8.Name = "PhonixPageSection"
Phonix.PhonixPageSection_8.Parent = Phonix.PhonixPage_3
Phonix.PhonixPageSection_8.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_8.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_37.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_37.Parent = Phonix.PhonixPageSection_8

Phonix.PhonixOptionTitle_8.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_8.Parent = Phonix.PhonixPageSection_8
Phonix.PhonixOptionTitle_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_8.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_8.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_8.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_8.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_8.Text = "<b>World Bosses</b>"
Phonix.PhonixOptionTitle_8.RichText = true
Phonix.PhonixOptionTitle_8.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_8.TextSize = 14.000
Phonix.PhonixOptionTitle_8.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_8.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_8.Parent = Phonix.PhonixPageSection_8
Phonix.PhonixOptionDescription_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_8.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_8.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_8.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_8.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_8.Text = "options for farming bosses"
Phonix.PhonixOptionDescription_8.RichText = true
Phonix.PhonixOptionDescription_8.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_8.TextSize = 11.000
Phonix.PhonixOptionDescription_8.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_8.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_8.Parent = Phonix.PhonixPageSection_8
Phonix.PhonixOptionImage_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_8.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_8.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_8.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_8.Image = "rbxassetid://8977551484"

Phonix.PhonixArrow_2.Name = "PhonixArrow"
Phonix.PhonixArrow_2.Parent = Phonix.PhonixPageSection_8
Phonix.PhonixArrow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixArrow_2.BackgroundTransparency = 1.000
Phonix.PhonixArrow_2.Position = UDim2.new(0.873000026, 0, 0.379999995, 0)
Phonix.PhonixArrow_2.Size = UDim2.new(0, 31, 0, 13)
Phonix.PhonixArrow_2.Font = Enum.Font.RobotoMono
Phonix.PhonixArrow_2.Text = "<b>></b>"
Phonix.PhonixArrow_2.RichText = true
Phonix.PhonixArrow_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixArrow_2.TextScaled = true
Phonix.PhonixArrow_2.TextSize = 11.000
Phonix.PhonixArrow_2.TextWrapped = true

Phonix.pvpmenubutton_2.Name = "pvpmenubutton"
Phonix.pvpmenubutton_2.Parent = Phonix.PhonixArrow_2
Phonix.pvpmenubutton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.pvpmenubutton_2.BackgroundTransparency = 1.000
Phonix.pvpmenubutton_2.BorderSizePixel = 0
Phonix.pvpmenubutton_2.Position = UDim2.new(0.193548381, 2, 0, 0)
Phonix.pvpmenubutton_2.Size = UDim2.new(0, 16, 0, 13)
Phonix.pvpmenubutton_2.AutoButtonColor = false
Phonix.pvpmenubutton_2.Font = Enum.Font.SourceSans
Phonix.pvpmenubutton_2.Text = ""
Phonix.pvpmenubutton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.pvpmenubutton_2.TextSize = 14.000

Phonix.UIListLayout_5.Parent = Phonix.PhonixPage_3
Phonix.UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_5.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_9.Name = "PhonixPageSection"
Phonix.PhonixPageSection_9.Parent = Phonix.PhonixPage_3
Phonix.PhonixPageSection_9.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_9.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_38.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_38.Parent = Phonix.PhonixPageSection_9

Phonix.PhonixOptionTitle_9.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_9.Parent = Phonix.PhonixPageSection_9
Phonix.PhonixOptionTitle_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_9.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_9.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_9.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_9.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_9.Text = "<b>Presents</b>"
Phonix.PhonixOptionTitle_9.RichText = true
Phonix.PhonixOptionTitle_9.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_9.TextSize = 14.000
Phonix.PhonixOptionTitle_9.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_9.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_9.Parent = Phonix.PhonixPageSection_9
Phonix.PhonixOptionDescription_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_9.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_9.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_9.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_9.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_9.Text = "well okay..mr.grinch!"
Phonix.PhonixOptionDescription_9.RichText = true
Phonix.PhonixOptionDescription_9.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_9.TextSize = 11.000
Phonix.PhonixOptionDescription_9.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_9.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_9.Parent = Phonix.PhonixPageSection_9
Phonix.PhonixOptionImage_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_9.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_9.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_9.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_9.Image = "rbxassetid://8977551484"

Phonix.PhonixTogglePresents.Name = "PhonixTogglePresents"
Phonix.PhonixTogglePresents.Parent = Phonix.PhonixPageSection_9
Phonix.PhonixTogglePresents.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixTogglePresents.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixTogglePresents.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_39.Parent = Phonix.PhonixTogglePresents

Phonix.UIStroke_11.Parent = Phonix.PhonixTogglePresents
Phonix.UIStroke_11.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonPresents.Name = "PhonixToggleButtonPresents"
Phonix.PhonixToggleButtonPresents.Parent = Phonix.PhonixTogglePresents
Phonix.PhonixToggleButtonPresents.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonPresents.Position = UDim2.new(-0.110466234, 4, 0.5, -8)
Phonix.PhonixToggleButtonPresents.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonPresents.AutoButtonColor = false
Phonix.PhonixToggleButtonPresents.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonPresents.Text = ""
Phonix.PhonixToggleButtonPresents.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonPresents.TextSize = 14.000

Phonix.UICorner_40.Parent = Phonix.PhonixToggleButtonPresents

Phonix.UIStroke_12.Parent = Phonix.PhonixToggleButtonPresents

Phonix.Circle_3.Name = "Circle"
Phonix.Circle_3.Parent = Phonix.PhonixToggleButtonPresents
Phonix.Circle_3.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle_3.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle_3.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle_3.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_41.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_41.Parent = Phonix.Circle_3

Phonix.PhonixPageSection_10.Name = "PhonixPageSection"
Phonix.PhonixPageSection_10.Parent = Phonix.PhonixPage_3
Phonix.PhonixPageSection_10.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_10.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_42.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_42.Parent = Phonix.PhonixPageSection_10

Phonix.PhonixOptionTitle_10.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_10.Parent = Phonix.PhonixPageSection_10
Phonix.PhonixOptionTitle_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_10.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_10.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_10.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_10.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_10.Text = "<b>Candy Canes</b>"
Phonix.PhonixOptionTitle_10.RichText = true
Phonix.PhonixOptionTitle_10.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_10.TextSize = 14.000
Phonix.PhonixOptionTitle_10.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_10.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_10.Parent = Phonix.PhonixPageSection_10
Phonix.PhonixOptionDescription_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_10.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_10.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_10.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_10.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_10.Text = "get all the candy..yum!"
Phonix.PhonixOptionDescription_10.RichText = true
Phonix.PhonixOptionDescription_10.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_10.TextSize = 11.000
Phonix.PhonixOptionDescription_10.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_10.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_10.Parent = Phonix.PhonixPageSection_10
Phonix.PhonixOptionImage_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_10.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_10.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_10.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_10.Image = "rbxassetid://8977551484"

Phonix.PhonixToggleCandy.Name = "PhonixToggleCandy"
Phonix.PhonixToggleCandy.Parent = Phonix.PhonixPageSection_10
Phonix.PhonixToggleCandy.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleCandy.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixToggleCandy.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_43.Parent = Phonix.PhonixToggleCandy

Phonix.UIStroke_13.Parent = Phonix.PhonixToggleCandy
Phonix.UIStroke_13.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonCandy.Name = "PhonixToggleButtonCandy"
Phonix.PhonixToggleButtonCandy.Parent = Phonix.PhonixToggleCandy
Phonix.PhonixToggleButtonCandy.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonCandy.Position = UDim2.new(-0.110466234, 4, 0.5, -8)
Phonix.PhonixToggleButtonCandy.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonCandy.AutoButtonColor = false
Phonix.PhonixToggleButtonCandy.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonCandy.Text = ""
Phonix.PhonixToggleButtonCandy.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonCandy.TextSize = 14.000

Phonix.UICorner_44.Parent = Phonix.PhonixToggleButtonCandy

Phonix.UIStroke_14.Parent = Phonix.PhonixToggleButtonCandy

Phonix.Circle_4.Name = "Circle"
Phonix.Circle_4.Parent = Phonix.PhonixToggleButtonCandy
Phonix.Circle_4.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle_4.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle_4.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle_4.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_45.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_45.Parent = Phonix.Circle_4

Phonix.PageTag_2.Name = "PageTag"
Phonix.PageTag_2.Parent = Phonix.PhonixPage_3
Phonix.PageTag_2.Value = "Farm"

Phonix.PhonixPageSection_11.Name = "PhonixPageSection"
Phonix.PhonixPageSection_11.Parent = Phonix.PhonixPage_3
Phonix.PhonixPageSection_11.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_11.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_46.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_46.Parent = Phonix.PhonixPageSection_11

Phonix.PhonixOptionTitle_11.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_11.Parent = Phonix.PhonixPageSection_11
Phonix.PhonixOptionTitle_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_11.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_11.Position = UDim2.new(0.164239034, 0, 0.176666945, 0)
Phonix.PhonixOptionTitle_11.Size = UDim2.new(0, 137, 0, 15)
Phonix.PhonixOptionTitle_11.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_11.Text = "<b>Snowbase</b>"
Phonix.PhonixOptionTitle_11.RichText = true
Phonix.PhonixOptionTitle_11.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_11.TextSize = 14.000
Phonix.PhonixOptionTitle_11.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_11.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_11.Parent = Phonix.PhonixPageSection_11
Phonix.PhonixOptionDescription_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_11.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_11.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_11.Size = UDim2.new(0, 194, 0, 13)
Phonix.PhonixOptionDescription_11.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_11.Text = "Everything is taken care of,"
Phonix.PhonixOptionDescription_11.RichText = true
Phonix.PhonixOptionDescription_11.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_11.TextSize = 11.000
Phonix.PhonixOptionDescription_11.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_11.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_11.Parent = Phonix.PhonixPageSection_11
Phonix.PhonixOptionImage_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_11.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_11.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_11.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_11.Image = "rbxassetid://8977551484"

Phonix.PhonixToggleCandy_2.Name = "PhonixToggleCandy"
Phonix.PhonixToggleCandy_2.Parent = Phonix.PhonixPageSection_11
Phonix.PhonixToggleCandy_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleCandy_2.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixToggleCandy_2.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_47.Parent = Phonix.PhonixToggleCandy_2

Phonix.UIStroke_15.Parent = Phonix.PhonixToggleCandy_2
Phonix.UIStroke_15.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonCandy_2.Name = "PhonixToggleButtonCandy"
Phonix.PhonixToggleButtonCandy_2.Parent = Phonix.PhonixToggleCandy_2
Phonix.PhonixToggleButtonCandy_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonCandy_2.Position = UDim2.new(-0.110466234, 4, 0.5, -8)
Phonix.PhonixToggleButtonCandy_2.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonCandy_2.AutoButtonColor = false
Phonix.PhonixToggleButtonCandy_2.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonCandy_2.Text = ""
Phonix.PhonixToggleButtonCandy_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonCandy_2.TextSize = 14.000

Phonix.UICorner_48.Parent = Phonix.PhonixToggleButtonCandy_2

Phonix.UIStroke_16.Parent = Phonix.PhonixToggleButtonCandy_2

Phonix.Circle_5.Name = "Circle"
Phonix.Circle_5.Parent = Phonix.PhonixToggleButtonCandy_2
Phonix.Circle_5.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle_5.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle_5.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle_5.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_49.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_49.Parent = Phonix.Circle_5

Phonix.PhonixPage_4.Name = "PhonixPage"
Phonix.PhonixPage_4.Parent = Phonix.PhonixPages
Phonix.PhonixPage_4.Active = true
Phonix.PhonixPage_4.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage_4.BackgroundTransparency = 1.000
Phonix.PhonixPage_4.BorderSizePixel = 0
Phonix.PhonixPage_4.Position = UDim2.new(-0.0590000004, 0, 0, 220)
Phonix.PhonixPage_4.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage_4.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage_4.ScrollBarThickness = 2

Phonix.UIListLayout_6.Parent = Phonix.PhonixPage_4
Phonix.UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_6.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_12.Name = "PhonixPageSection"
Phonix.PhonixPageSection_12.Parent = Phonix.PhonixPage_4
Phonix.PhonixPageSection_12.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_12.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_50.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_50.Parent = Phonix.PhonixPageSection_12

Phonix.PhonixOptionTitle_12.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_12.Parent = Phonix.PhonixPageSection_12
Phonix.PhonixOptionTitle_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_12.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_12.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_12.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_12.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_12.Text = "<b>Time</b>"
Phonix.PhonixOptionTitle_12.RichText = true
Phonix.PhonixOptionTitle_12.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_12.TextSize = 14.000
Phonix.PhonixOptionTitle_12.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_12.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_12.Parent = Phonix.PhonixPageSection_12
Phonix.PhonixOptionDescription_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_12.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_12.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_12.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_12.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_12.Text = "Change Night or Day"
Phonix.PhonixOptionDescription_12.RichText = true
Phonix.PhonixOptionDescription_12.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_12.TextSize = 11.000
Phonix.PhonixOptionDescription_12.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_12.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_12.Parent = Phonix.PhonixPageSection_12
Phonix.PhonixOptionImage_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_12.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_12.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_12.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_12.Image = "rbxassetid://8977551484"

Phonix.PhonixDrop_2.Name = "PhonixDrop"
Phonix.PhonixDrop_2.Parent = Phonix.PhonixPageSection_12
Phonix.PhonixDrop_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDrop_2.Position = UDim2.new(0.59760958, 7, 0.22053358, 5)
Phonix.PhonixDrop_2.Size = UDim2.new(0, 85, 0, 23)

Phonix.PhonixDropButton_2.Name = "PhonixDropButton"
Phonix.PhonixDropButton_2.Parent = Phonix.PhonixDrop_2
Phonix.PhonixDropButton_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropButton_2.Size = UDim2.new(0, 85, 0, 23)
Phonix.PhonixDropButton_2.AutoButtonColor = false
Phonix.PhonixDropButton_2.Font = Enum.Font.RobotoMono
Phonix.PhonixDropButton_2.Text = "Select"
Phonix.PhonixDropButton_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixDropButton_2.TextSize = 8.000
Phonix.PhonixDropButton_2.TextStrokeColor3 = Color3.fromRGB(246, 246, 246)

Phonix.UICorner_51.Parent = Phonix.PhonixDropButton_2

Phonix.PhonixDropOptions_2.Name = "PhonixDropOptions"
Phonix.PhonixDropOptions_2.Parent = Phonix.PhonixDropButton_2
Phonix.PhonixDropOptions_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropOptions_2.AutomaticSize = Enum.AutomaticSize.Y
Phonix.PhonixDropOptions_2.Position = UDim2.new(0.0143999886, 0, 0.826086938, 7)
Phonix.PhonixDropOptions_2.Size = UDim2.new(0, 83, 0, 21)
Phonix.PhonixDropOptions_2.Visible = false
Phonix.PhonixDropOptions_2.ZIndex = 2

Phonix.UICorner_52.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_52.Parent = Phonix.PhonixDropOptions_2

Phonix.UIStroke_17.Parent = Phonix.PhonixDropOptions_2
Phonix.UIStroke_17.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_7.Parent = Phonix.PhonixDropOptions_2
Phonix.UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder

Phonix.PhonixOption_2.Name = "PhonixOption"
Phonix.PhonixOption_2.Parent = Phonix.PhonixDropOptions_2
Phonix.PhonixOption_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixOption_2.Size = UDim2.new(0, 83, 0, 17)
Phonix.PhonixOption_2.ZIndex = 2
Phonix.PhonixOption_2.AutoButtonColor = false
Phonix.PhonixOption_2.Font = Enum.Font.RobotoMono
Phonix.PhonixOption_2.Text = "Day"
Phonix.PhonixOption_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOption_2.TextSize = 11.000

Phonix.UICorner_53.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_53.Parent = Phonix.PhonixOption_2

Phonix.PhonixOption_3.Name = "PhonixOption"
Phonix.PhonixOption_3.Parent = Phonix.PhonixDropOptions_2
Phonix.PhonixOption_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixOption_3.Size = UDim2.new(0, 83, 0, 17)
Phonix.PhonixOption_3.ZIndex = 2
Phonix.PhonixOption_3.AutoButtonColor = false
Phonix.PhonixOption_3.Font = Enum.Font.RobotoMono
Phonix.PhonixOption_3.Text = "Night"
Phonix.PhonixOption_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOption_3.TextSize = 11.000

Phonix.UICorner_54.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_54.Parent = Phonix.PhonixOption_3

Phonix.UICorner_55.Parent = Phonix.PhonixDrop_2

Phonix.UIStroke_18.Parent = Phonix.PhonixDrop_2
Phonix.UIStroke_18.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_13.Name = "PhonixPageSection"
Phonix.PhonixPageSection_13.Parent = Phonix.PhonixPage_4
Phonix.PhonixPageSection_13.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_13.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_56.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_56.Parent = Phonix.PhonixPageSection_13

Phonix.PhonixOptionTitle_13.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_13.Parent = Phonix.PhonixPageSection_13
Phonix.PhonixOptionTitle_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_13.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_13.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_13.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_13.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_13.Text = "<b>Theme</b>"
Phonix.PhonixOptionTitle_13.RichText = true
Phonix.PhonixOptionTitle_13.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_13.TextSize = 14.000
Phonix.PhonixOptionTitle_13.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_13.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_13.Parent = Phonix.PhonixPageSection_13
Phonix.PhonixOptionDescription_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_13.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_13.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_13.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_13.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_13.Text = "Choose color scheme"
Phonix.PhonixOptionDescription_13.RichText = true
Phonix.PhonixOptionDescription_13.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_13.TextSize = 11.000
Phonix.PhonixOptionDescription_13.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_13.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_13.Parent = Phonix.PhonixPageSection_13
Phonix.PhonixOptionImage_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_13.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_13.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_13.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_13.Image = "rbxassetid://8977551484"

Phonix.PhonixDrop_3.Name = "PhonixDrop"
Phonix.PhonixDrop_3.Parent = Phonix.PhonixPageSection_13
Phonix.PhonixDrop_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDrop_3.Position = UDim2.new(0.59760958, 7, 0.22053358, 5)
Phonix.PhonixDrop_3.Size = UDim2.new(0, 85, 0, 23)

Phonix.PhonixDropButton_3.Name = "PhonixDropButton"
Phonix.PhonixDropButton_3.Parent = Phonix.PhonixDrop_3
Phonix.PhonixDropButton_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropButton_3.Size = UDim2.new(0, 85, 0, 23)
Phonix.PhonixDropButton_3.AutoButtonColor = false
Phonix.PhonixDropButton_3.Font = Enum.Font.RobotoMono
Phonix.PhonixDropButton_3.Text = "Select"
Phonix.PhonixDropButton_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixDropButton_3.TextSize = 8.000
Phonix.PhonixDropButton_3.TextStrokeColor3 = Color3.fromRGB(246, 246, 246)

Phonix.UICorner_57.Parent = Phonix.PhonixDropButton_3

Phonix.PhonixDropOptions_3.Name = "PhonixDropOptions"
Phonix.PhonixDropOptions_3.Parent = Phonix.PhonixDropButton_3
Phonix.PhonixDropOptions_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropOptions_3.AutomaticSize = Enum.AutomaticSize.Y
Phonix.PhonixDropOptions_3.Position = UDim2.new(0.0143999886, 0, 0.826086938, 7)
Phonix.PhonixDropOptions_3.Size = UDim2.new(0, 83, 0, 21)
Phonix.PhonixDropOptions_3.Visible = false
Phonix.PhonixDropOptions_3.ZIndex = 2

Phonix.UICorner_58.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_58.Parent = Phonix.PhonixDropOptions_3

Phonix.UIStroke_19.Parent = Phonix.PhonixDropOptions_3
Phonix.UIStroke_19.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_8.Parent = Phonix.PhonixDropOptions_3
Phonix.UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder

Phonix.PhonixOption_4.Name = "PhonixOption"
Phonix.PhonixOption_4.Parent = Phonix.PhonixDropOptions_3
Phonix.PhonixOption_4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixOption_4.Size = UDim2.new(0, 83, 0, 17)
Phonix.PhonixOption_4.ZIndex = 2
Phonix.PhonixOption_4.AutoButtonColor = false
Phonix.PhonixOption_4.Font = Enum.Font.RobotoMono
Phonix.PhonixOption_4.Text = "Day"
Phonix.PhonixOption_4.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOption_4.TextSize = 11.000

Phonix.UICorner_59.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_59.Parent = Phonix.PhonixOption_4

Phonix.PhonixOption_5.Name = "PhonixOption"
Phonix.PhonixOption_5.Parent = Phonix.PhonixDropOptions_3
Phonix.PhonixOption_5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixOption_5.Size = UDim2.new(0, 83, 0, 17)
Phonix.PhonixOption_5.ZIndex = 2
Phonix.PhonixOption_5.AutoButtonColor = false
Phonix.PhonixOption_5.Font = Enum.Font.RobotoMono
Phonix.PhonixOption_5.Text = "Night"
Phonix.PhonixOption_5.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOption_5.TextSize = 11.000

Phonix.UICorner_60.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_60.Parent = Phonix.PhonixOption_5

Phonix.UICorner_61.Parent = Phonix.PhonixDrop_3

Phonix.UIStroke_20.Parent = Phonix.PhonixDrop_3
Phonix.UIStroke_20.Color = Color3.fromRGB(145, 145, 145)

Phonix.PageTag_3.Name = "PageTag"
Phonix.PageTag_3.Parent = Phonix.PhonixPage_4
Phonix.PageTag_3.Value = "Settings"

Phonix.PhonixPage_5.Name = "PhonixPage"
Phonix.PhonixPage_5.Parent = Phonix.PhonixPages
Phonix.PhonixPage_5.Active = true
Phonix.PhonixPage_5.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage_5.BackgroundTransparency = 1.000
Phonix.PhonixPage_5.BorderSizePixel = 0
Phonix.PhonixPage_5.Position = UDim2.new(-0.0590000004, 0, 0, 0)
Phonix.PhonixPage_5.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage_5.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage_5.ScrollBarThickness = 2
Phonix.PhonixPage_5.ScrollingEnabled = false

Phonix.UIListLayout_9.Parent = Phonix.PhonixPage_5
Phonix.UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_9.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_14.Name = "PhonixPageSection"
Phonix.PhonixPageSection_14.Parent = Phonix.PhonixPage_5
Phonix.PhonixPageSection_14.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_14.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_62.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_62.Parent = Phonix.PhonixPageSection_14

Phonix.PhonixOptionTitle_14.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_14.Parent = Phonix.PhonixPageSection_14
Phonix.PhonixOptionTitle_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_14.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_14.Position = UDim2.new(0.164239034, 22, 0.17666693, 0)
Phonix.PhonixOptionTitle_14.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_14.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_14.Text = "<b>Snowman Simulator</b>"
Phonix.PhonixOptionTitle_14.RichText = true
Phonix.PhonixOptionTitle_14.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_14.TextSize = 14.000
Phonix.PhonixOptionTitle_14.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_14.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_14.Parent = Phonix.PhonixPageSection_14
Phonix.PhonixOptionDescription_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_14.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_14.Position = UDim2.new(0.164239034, 18, 0.509598792, 0)
Phonix.PhonixOptionDescription_14.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_14.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_14.Text = "A script made by DohmBoyOG"
Phonix.PhonixOptionDescription_14.RichText = true
Phonix.PhonixOptionDescription_14.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_14.TextSize = 11.000
Phonix.PhonixOptionDescription_14.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixPageSection_15.Name = "PhonixPageSection"
Phonix.PhonixPageSection_15.Parent = Phonix.PhonixPage_5
Phonix.PhonixPageSection_15.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_15.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_63.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_63.Parent = Phonix.PhonixPageSection_15

Phonix.PhonixOptionTitle_15.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_15.Parent = Phonix.PhonixPageSection_15
Phonix.PhonixOptionTitle_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_15.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_15.Position = UDim2.new(0.164239034, -32, 0.17666693, 0)
Phonix.PhonixOptionTitle_15.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_15.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_15.Text = "<b>Discord</b>"
Phonix.PhonixOptionTitle_15.RichText = true
Phonix.PhonixOptionTitle_15.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_15.TextSize = 14.000
Phonix.PhonixOptionTitle_15.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_15.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_15.Parent = Phonix.PhonixPageSection_15
Phonix.PhonixOptionDescription_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_15.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_15.Position = UDim2.new(0.16025497, -31, 0.509598792, 0)
Phonix.PhonixOptionDescription_15.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_15.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_15.Text = "Join the best script server."
Phonix.PhonixOptionDescription_15.RichText = true
Phonix.PhonixOptionDescription_15.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_15.TextSize = 11.000
Phonix.PhonixOptionDescription_15.TextXAlignment = Enum.TextXAlignment.Left

Phonix.Discord.Name = "Discord"
Phonix.Discord.Parent = Phonix.PhonixPageSection_15
Phonix.Discord.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.Discord.Position = UDim2.new(0.657529533, 0, -2.14957523, 115)
Phonix.Discord.Size = UDim2.new(0, 76, 0, 22)

Phonix.Discord_2.Name = "Discord"
Phonix.Discord_2.Parent = Phonix.Discord
Phonix.Discord_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.Discord_2.Size = UDim2.new(0, 76, 0, 22)
Phonix.Discord_2.AutoButtonColor = false
Phonix.Discord_2.Font = Enum.Font.RobotoMono
Phonix.Discord_2.Text = "join"
Phonix.Discord_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Discord_2.TextSize = 8.000

Phonix.UICorner_64.Parent = Phonix.Discord_2

Phonix.UICorner_65.Parent = Phonix.Discord

Phonix.UIStroke_21.Parent = Phonix.Discord
Phonix.UIStroke_21.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_16.Name = "PhonixPageSection"
Phonix.PhonixPageSection_16.Parent = Phonix.PhonixPage_5
Phonix.PhonixPageSection_16.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_16.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_66.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_66.Parent = Phonix.PhonixPageSection_16

Phonix.PhonixOptionTitle_16.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_16.Parent = Phonix.PhonixPageSection_16
Phonix.PhonixOptionTitle_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_16.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_16.Position = UDim2.new(0.164239034, -32, 0.17666693, 0)
Phonix.PhonixOptionTitle_16.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_16.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_16.Text = "<b>Update Journal</b>"
Phonix.PhonixOptionTitle_16.RichText = true
Phonix.PhonixOptionTitle_16.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_16.TextSize = 14.000
Phonix.PhonixOptionTitle_16.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_16.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_16.Parent = Phonix.PhonixPageSection_16
Phonix.PhonixOptionDescription_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_16.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_16.Position = UDim2.new(0.16025497, -31, 0.509598792, 0)
Phonix.PhonixOptionDescription_16.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_16.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_16.Text = "see updates n changes."
Phonix.PhonixOptionDescription_16.RichText = true
Phonix.PhonixOptionDescription_16.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_16.TextSize = 11.000
Phonix.PhonixOptionDescription_16.TextXAlignment = Enum.TextXAlignment.Left

Phonix.changelog_3.Name = "changelog"
Phonix.changelog_3.Parent = Phonix.PhonixPageSection_16
Phonix.changelog_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.changelog_3.Position = UDim2.new(0.657529533, 0, -2.14957523, 115)
Phonix.changelog_3.Size = UDim2.new(0, 76, 0, 22)

Phonix.change_3.Name = "change"
Phonix.change_3.Parent = Phonix.changelog_3
Phonix.change_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.change_3.Size = UDim2.new(0, 76, 0, 22)
Phonix.change_3.AutoButtonColor = false
Phonix.change_3.Font = Enum.Font.RobotoMono
Phonix.change_3.Text = "view"
Phonix.change_3.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.change_3.TextSize = 8.000

Phonix.UICorner_67.Parent = Phonix.change_3

Phonix.UICorner_68.Parent = Phonix.changelog_3

Phonix.UIStroke_22.Parent = Phonix.changelog_3
Phonix.UIStroke_22.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_17.Name = "PhonixPageSection"
Phonix.PhonixPageSection_17.Parent = Phonix.PhonixPage_5
Phonix.PhonixPageSection_17.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_17.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_69.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_69.Parent = Phonix.PhonixPageSection_17

Phonix.PhonixOptionTitle_17.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_17.Parent = Phonix.PhonixPageSection_17
Phonix.PhonixOptionTitle_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_17.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_17.Position = UDim2.new(0.164239034, -32, 0.17666693, 0)
Phonix.PhonixOptionTitle_17.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_17.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_17.Text = "<b>Github</b>"
Phonix.PhonixOptionTitle_17.RichText = true
Phonix.PhonixOptionTitle_17.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_17.TextSize = 14.000
Phonix.PhonixOptionTitle_17.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_17.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_17.Parent = Phonix.PhonixPageSection_17
Phonix.PhonixOptionDescription_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_17.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_17.Position = UDim2.new(0.16025497, -31, 0.509598792, 0)
Phonix.PhonixOptionDescription_17.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_17.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_17.Text = "where dreams are made."
Phonix.PhonixOptionDescription_17.RichText = true
Phonix.PhonixOptionDescription_17.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_17.TextSize = 11.000
Phonix.PhonixOptionDescription_17.TextXAlignment = Enum.TextXAlignment.Left

Phonix.github.Name = "github"
Phonix.github.Parent = Phonix.PhonixPageSection_17
Phonix.github.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.github.Position = UDim2.new(0.657529533, 0, -2.14957523, 115)
Phonix.github.Size = UDim2.new(0, 76, 0, 22)

Phonix.github_2.Name = "github"
Phonix.github_2.Parent = Phonix.github
Phonix.github_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.github_2.Size = UDim2.new(0, 76, 0, 22)
Phonix.github_2.AutoButtonColor = false
Phonix.github_2.Font = Enum.Font.RobotoMono
Phonix.github_2.Text = "view"
Phonix.github_2.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.github_2.TextSize = 8.000

Phonix.UICorner_70.Parent = Phonix.github_2

Phonix.UICorner_71.Parent = Phonix.github

Phonix.UIStroke_23.Parent = Phonix.github
Phonix.UIStroke_23.Color = Color3.fromRGB(145, 145, 145)

Phonix.PageTag_4.Name = "PageTag"
Phonix.PageTag_4.Parent = Phonix.PhonixPage_5
Phonix.PageTag_4.Value = "Home"

Phonix.PhonixPage_6.Name = "PhonixPage"
Phonix.PhonixPage_6.Parent = Phonix.PhonixPages
Phonix.PhonixPage_6.Active = true
Phonix.PhonixPage_6.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Phonix.PhonixPage_6.BackgroundTransparency = 1.000
Phonix.PhonixPage_6.BorderSizePixel = 0
Phonix.PhonixPage_6.Position = UDim2.new(-0.0590000004, 280, 0, 0)
Phonix.PhonixPage_6.Size = UDim2.new(0, 292, 0, 218)
Phonix.PhonixPage_6.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)
Phonix.PhonixPage_6.ScrollBarThickness = 2

Phonix.PhonixPageSection_18.Name = "PhonixPageSection"
Phonix.PhonixPageSection_18.Parent = Phonix.PhonixPage_6
Phonix.PhonixPageSection_18.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_18.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_72.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_72.Parent = Phonix.PhonixPageSection_18

Phonix.PhonixOptionTitle_18.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_18.Parent = Phonix.PhonixPageSection_18
Phonix.PhonixOptionTitle_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_18.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_18.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_18.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_18.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_18.Text = "<b>Player</b>"
Phonix.PhonixOptionTitle_18.RichText = true
Phonix.PhonixOptionTitle_18.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_18.TextSize = 14.000
Phonix.PhonixOptionTitle_18.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_18.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_18.Parent = Phonix.PhonixPageSection_18
Phonix.PhonixOptionDescription_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_18.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_18.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_18.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_18.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_18.Text = "select a player"
Phonix.PhonixOptionDescription_18.RichText = true
Phonix.PhonixOptionDescription_18.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_18.TextSize = 11.000
Phonix.PhonixOptionDescription_18.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_14.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_14.Parent = Phonix.PhonixPageSection_18
Phonix.PhonixOptionImage_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_14.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_14.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_14.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_14.Image = "rbxassetid://8977551484"

Phonix.PhonixDrop_4.Name = "PhonixDrop"
Phonix.PhonixDrop_4.Parent = Phonix.PhonixPageSection_18
Phonix.PhonixDrop_4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDrop_4.Position = UDim2.new(0.59760958, 7, 0.22053358, 5)
Phonix.PhonixDrop_4.Size = UDim2.new(0, 85, 0, 23)

Phonix.PhonixDropButton_4.Name = "PhonixDropButton"
Phonix.PhonixDropButton_4.Parent = Phonix.PhonixDrop_4
Phonix.PhonixDropButton_4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropButton_4.Size = UDim2.new(0, 85, 0, 23)
Phonix.PhonixDropButton_4.AutoButtonColor = false
Phonix.PhonixDropButton_4.Font = Enum.Font.RobotoMono
Phonix.PhonixDropButton_4.Text = "Select"
Phonix.PhonixDropButton_4.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixDropButton_4.TextSize = 8.000
Phonix.PhonixDropButton_4.TextStrokeColor3 = Color3.fromRGB(246, 246, 246)

Phonix.UICorner_73.Parent = Phonix.PhonixDropButton_4

Phonix.PhonixDropOptions_4.Name = "PhonixDropOptions"
Phonix.PhonixDropOptions_4.Parent = Phonix.PhonixDropButton_4
Phonix.PhonixDropOptions_4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixDropOptions_4.AutomaticSize = Enum.AutomaticSize.Y
Phonix.PhonixDropOptions_4.Position = UDim2.new(0.0117647061, -1, 0.826086938, 7)
Phonix.PhonixDropOptions_4.Size = UDim2.new(0, 85, 0, 18)
Phonix.PhonixDropOptions_4.Visible = false
Phonix.PhonixDropOptions_4.ZIndex = 2

Phonix.UICorner_74.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_74.Parent = Phonix.PhonixDropOptions_4

Phonix.UIStroke_24.Parent = Phonix.PhonixDropOptions_4
Phonix.UIStroke_24.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_10.Parent = Phonix.PhonixDropOptions_4
Phonix.UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder

Phonix.UICorner_75.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_75.Parent = Phonix.PhonixOption_6

Phonix.UICorner_76.Parent = Phonix.PhonixDrop_4

Phonix.UIStroke_25.Parent = Phonix.PhonixDrop_4
Phonix.UIStroke_25.Color = Color3.fromRGB(145, 145, 145)

Phonix.UIListLayout_11.Parent = Phonix.PhonixPage_6
Phonix.UIListLayout_11.HorizontalAlignment = Enum.HorizontalAlignment.Center
Phonix.UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
Phonix.UIListLayout_11.Padding = UDim.new(0, 6)

Phonix.PhonixPageSection_19.Name = "PhonixPageSection"
Phonix.PhonixPageSection_19.Parent = Phonix.PhonixPage_6
Phonix.PhonixPageSection_19.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_19.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_77.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_77.Parent = Phonix.PhonixPageSection_19

Phonix.PhonixOptionTitle_19.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_19.Parent = Phonix.PhonixPageSection_19
Phonix.PhonixOptionTitle_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_19.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_19.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_19.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_19.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_19.Text = "<b>Kill Player</b>"
Phonix.PhonixOptionTitle_19.RichText = true
Phonix.PhonixOptionTitle_19.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_19.TextSize = 14.000
Phonix.PhonixOptionTitle_19.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_19.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_19.Parent = Phonix.PhonixPageSection_19
Phonix.PhonixOptionDescription_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_19.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_19.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_19.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_19.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_19.Text = "kills selected player"
Phonix.PhonixOptionDescription_19.RichText = true
Phonix.PhonixOptionDescription_19.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_19.TextSize = 11.000
Phonix.PhonixOptionDescription_19.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_15.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_15.Parent = Phonix.PhonixPageSection_19
Phonix.PhonixOptionImage_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_15.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_15.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_15.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_15.Image = "rbxassetid://8977551484"

Phonix.killplayer.Name = "killplayer"
Phonix.killplayer.Parent = Phonix.PhonixPageSection_19
Phonix.killplayer.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.killplayer.Position = UDim2.new(0.59760958, 7, 0.22053358, 5)
Phonix.killplayer.Size = UDim2.new(0, 85, 0, 23)

Phonix.Kill.Name = "Kill"
Phonix.Kill.Parent = Phonix.killplayer
Phonix.Kill.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.Kill.Size = UDim2.new(0, 85, 0, 23)
Phonix.Kill.AutoButtonColor = false
Phonix.Kill.Font = Enum.Font.RobotoMono
Phonix.Kill.Text = "Push"
Phonix.Kill.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.Kill.TextSize = 8.000
Phonix.Kill.TextStrokeColor3 = Color3.fromRGB(246, 246, 246)

Phonix.UICorner_78.Parent = Phonix.Kill

Phonix.UICorner_79.Parent = Phonix.killplayer

Phonix.UIStroke_26.Parent = Phonix.killplayer
Phonix.UIStroke_26.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixPageSection_20.Name = "PhonixPageSection"
Phonix.PhonixPageSection_20.Parent = Phonix.PhonixPage_6
Phonix.PhonixPageSection_20.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Phonix.PhonixPageSection_20.Size = UDim2.new(0, 251, 0, 45)

Phonix.UICorner_80.CornerRadius = UDim.new(0, 3)
Phonix.UICorner_80.Parent = Phonix.PhonixPageSection_20

Phonix.PhonixOptionTitle_20.Name = "PhonixOptionTitle"
Phonix.PhonixOptionTitle_20.Parent = Phonix.PhonixPageSection_20
Phonix.PhonixOptionTitle_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionTitle_20.BackgroundTransparency = 1.000
Phonix.PhonixOptionTitle_20.Position = UDim2.new(0.164239034, 0, 0.17666693, 0)
Phonix.PhonixOptionTitle_20.Size = UDim2.new(0, 117, 0, 15)
Phonix.PhonixOptionTitle_20.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionTitle_20.Text = "<b>Kill Cam</b>"
Phonix.PhonixOptionTitle_20.RichText = true
Phonix.PhonixOptionTitle_20.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionTitle_20.TextSize = 14.000
Phonix.PhonixOptionTitle_20.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionDescription_20.Name = "PhonixOptionDescription"
Phonix.PhonixOptionDescription_20.Parent = Phonix.PhonixPageSection_20
Phonix.PhonixOptionDescription_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionDescription_20.BackgroundTransparency = 1.000
Phonix.PhonixOptionDescription_20.Position = UDim2.new(0.164239034, 0, 0.509598792, 0)
Phonix.PhonixOptionDescription_20.Size = UDim2.new(0, 137, 0, 13)
Phonix.PhonixOptionDescription_20.Font = Enum.Font.RobotoMono
Phonix.PhonixOptionDescription_20.Text = "enables a killcam"
Phonix.PhonixOptionDescription_20.RichText = true
Phonix.PhonixOptionDescription_20.TextColor3 = Color3.fromRGB(246, 246, 246)
Phonix.PhonixOptionDescription_20.TextSize = 11.000
Phonix.PhonixOptionDescription_20.TextXAlignment = Enum.TextXAlignment.Left

Phonix.PhonixOptionImage_16.Name = "PhonixOptionImage"
Phonix.PhonixOptionImage_16.Parent = Phonix.PhonixPageSection_20
Phonix.PhonixOptionImage_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Phonix.PhonixOptionImage_16.BackgroundTransparency = 1.000
Phonix.PhonixOptionImage_16.Position = UDim2.new(0.0399999991, 0, 0.230000004, 0)
Phonix.PhonixOptionImage_16.Size = UDim2.new(0, 25, 0, 27)
Phonix.PhonixOptionImage_16.Image = "rbxassetid://8977551484"

Phonix.PhonixToggleCandy_3.Name = "PhonixToggleCandy"
Phonix.PhonixToggleCandy_3.Parent = Phonix.PhonixPageSection_20
Phonix.PhonixToggleCandy_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleCandy_3.Position = UDim2.new(0.798626304, 4, 0.531644702, -8)
Phonix.PhonixToggleCandy_3.Size = UDim2.new(0, 33, 0, 16)

Phonix.UICorner_81.Parent = Phonix.PhonixToggleCandy_3

Phonix.UIStroke_27.Parent = Phonix.PhonixToggleCandy_3
Phonix.UIStroke_27.Color = Color3.fromRGB(145, 145, 145)

Phonix.PhonixToggleButtonCandy_3.Name = "PhonixToggleButtonCandy"
Phonix.PhonixToggleButtonCandy_3.Parent = Phonix.PhonixToggleCandy_3
Phonix.PhonixToggleButtonCandy_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Phonix.PhonixToggleButtonCandy_3.Position = UDim2.new(-0.110466234, 4, 0.5, -8)
Phonix.PhonixToggleButtonCandy_3.Size = UDim2.new(0, 33, 0, 16)
Phonix.PhonixToggleButtonCandy_3.AutoButtonColor = false
Phonix.PhonixToggleButtonCandy_3.Font = Enum.Font.SourceSans
Phonix.PhonixToggleButtonCandy_3.Text = ""
Phonix.PhonixToggleButtonCandy_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Phonix.PhonixToggleButtonCandy_3.TextSize = 14.000

Phonix.UICorner_82.Parent = Phonix.PhonixToggleButtonCandy_3

Phonix.UIStroke_28.Parent = Phonix.PhonixToggleButtonCandy_3

Phonix.Circle_6.Name = "Circle"
Phonix.Circle_6.Parent = Phonix.PhonixToggleButtonCandy_3
Phonix.Circle_6.AnchorPoint = Vector2.new(0.5, 0.5)
Phonix.Circle_6.BackgroundColor3 = Color3.fromRGB(206, 206, 206)
Phonix.Circle_6.Position = UDim2.new(-0.100000001, 12, 0.5, 0)
Phonix.Circle_6.Size = UDim2.new(0, 10, 0, 10)

Phonix.UICorner_83.CornerRadius = UDim.new(0, 100)
Phonix.UICorner_83.Parent = Phonix.Circle_6

Phonix.SideTag_2.Name = "SideTag"
Phonix.SideTag_2.Parent = Phonix.PhonixPage_6
Phonix.SideTag_2.Value = "PlayerSide"

Phonix.PhonixScripts.Name = "PhonixScripts"
Phonix.PhonixScripts.Parent = Phonix.Phonix

Phonix.PhonixMain.Active = true
Phonix.PhonixMain.Draggable = true

local function MKQOUDM_fake_script() -- Phonix.Exit.exitscript
    local script = Instance.new("LocalScript", Phonix.Exit)

    local button = script.Parent
    local ui = script.Parent.Parent.Parent.Parent.Parent.Parent.Phonix

    button.MouseButton1Click:Connect(
        function()
            ui:Destroy()
        end
    )
end
coroutine.wrap(MKQOUDM_fake_script)()
local function FTGY_fake_script() -- Phonix.PhonixToggleButtonAutoReward.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonAutoReward)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )
    

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.AutoR = true
                        autoReward()
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.AutoR = false
                    end
                )
            end
        end
    )
end
coroutine.wrap(FTGY_fake_script)()
local function PUZFKJR_fake_script() -- Phonix.PhonixToggleButtonKillBoss.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonKillBoss)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.AutoKill = true
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.AutoKill = false
                    end
                )
            end
        end
    )
end
coroutine.wrap(PUZFKJR_fake_script)()
local function OGCDFY_fake_script() -- Phonix.pvpmenubutton.LocalScript
    local script = Instance.new("LocalScript", Phonix.pvpmenubutton)

    local button = script.Parent
    local pages = script.Parent.Parent.Parent.Parent.Parent.Parent.PhonixPages

    function Tween(Object, Time, Style, Direction, Repeat, Customization)
        local Tween =
            game:GetService("TweenService"):Create(
            Object,
            TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0),
            Customization
        )
        Tween:Play()
    end

    button.MouseButton1Click:Connect(
        function()
            for _, page in next, pages:GetDescendants() do
                if page.ClassName == "StringValue" and page.Value == "PlayerSide" then
                    tab = page.Parent
                end
            end

            for _, page in next, pages:GetDescendants() do
                if page.ClassName == "StringValue" and page.Value == "Player" then
                    original = page.Parent
                end
            end
            Tween(original, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 220)})
            task.wait(0.3)
            Tween(tab, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 0)})
        end
    )
end
coroutine.wrap(OGCDFY_fake_script)()
local function HUUOIS_fake_script() -- Phonix.PhonixSlider.SliderScript
    local script = Instance.new("LocalScript", Phonix.PhonixSlider)

    -----Values-----
    minvalue = minvalue or 0
    maxvalue = maxvalue or 100

    -----Callback-----
    callback = callback or function()
        end

    -----Variables-----
    local mouse = game.Players.LocalPlayer:GetMouse()
    local uis = game:GetService("UserInputService")
    local sliderCount = script.Parent.SliderCount
    local Value

    local sliderButton = script.Parent.Slider
    local sliderFill = script.Parent.Slider.PhonixSliderFill

    -----Main Code-----

    sliderButton.MouseButton1Down:Connect(
        function()
            Value =
                math.floor(
                (((tonumber(maxvalue) - tonumber(minvalue)) / 70) * sliderFill.AbsoluteSize.X) + tonumber(minvalue)
            ) or 0
            pcall(
                function()
                    callback(Value)
                end
            )
            --sliderCount.Position = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
            sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
            moveconnection =
                mouse.Move:Connect(
                function()
                    --sliderCount.Text = Value
                    Value =
                        math.floor(
                        (((tonumber(maxvalue) - tonumber(minvalue)) / 70) * sliderFill.AbsoluteSize.X) +
                            tonumber(minvalue)
                    )
                    pcall(
                        function()
                            callback(Value)
                        end
                    )
                    sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
                    --sliderCount.Position = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
                    thisPlayer.Character.Humanoid.WalkSpeed = Value
                end
            )
            releaseconnection =
                uis.InputEnded:Connect(
                function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value =
                            math.floor(
                            (((tonumber(maxvalue) - tonumber(minvalue)) / 70) * sliderFill.AbsoluteSize.X) +
                                tonumber(minvalue)
                        )
                        pcall(
                            function()
                                callback(Value)
                            end
                        )
                        sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
                        --sliderCount.Position = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 70), 0, 8)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end
            )
        end
    )
end
coroutine.wrap(HUUOIS_fake_script)()
local function ZYPIEES_fake_script() -- Phonix.pvpmenubutton_2.LocalScript
    local script = Instance.new("LocalScript", Phonix.pvpmenubutton_2)

    local button = script.Parent
    local pages = script.Parent.Parent.Parent.Parent.Parent.Parent.PhonixPages

    function Tween(Object, Time, Style, Direction, Repeat, Customization)
        local Tween =
            game:GetService("TweenService"):Create(
            Object,
            TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0),
            Customization
        )
        Tween:Play()
    end

    button.MouseButton1Click:Connect(
        function()
            for _, page in next, pages:GetDescendants() do
                if page.ClassName == "StringValue" and page.Value == "BossSide" then
                    tab = page.Parent
                end
            end

            for _, page in next, pages:GetDescendants() do
                if page.ClassName == "StringValue" and page.Value == "Farm" then
                    original = page.Parent
                end
            end
            Tween(original, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 220)})
            task.wait(0.3)
            Tween(tab, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 0)})
        end
    )
end
coroutine.wrap(ZYPIEES_fake_script)()
local function BNTQ_fake_script() -- Phonix.PhonixToggleButtonPresents.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonPresents)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.Presents = true
                        giftFarm()
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.Presents = false
                        giftFarm()
                    end
                )
            end
        end
    )
end
coroutine.wrap(BNTQ_fake_script)()
local function GXBY_fake_script() -- Phonix.PhonixToggleButtonCandy.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonCandy)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.Canes = true
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.Canes = false
                    end
                )
            end
        end
    )
end
coroutine.wrap(GXBY_fake_script)()
local function WMQW_fake_script() -- Phonix.PhonixToggleButtonCandy_2.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonCandy_2)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.Snowbase = true
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.Snowbase = false
                    end
                )
            end
        end
    )
end
coroutine.wrap(WMQW_fake_script)()
local function KLPE_fake_script() -- Phonix.Discord_2.serverjoiner
    local script = Instance.new("LocalScript", Phonix.Discord_2)

    local button = script.Parent

    button.MouseButton1Click:Connect(
        function()
            join()
        end
    )

    function join()
        syn.request(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode(
                    {
                        ["args"] = {
                            ["code"] = "pHXcGPhCyg"
                        },
                        ["cmd"] = "INVITE_BROWSER",
                        ["nonce"] = "."
                    }
                )
            }
        )
    end
end
coroutine.wrap(KLPE_fake_script)()
local function UZNADR_fake_script() -- Phonix.PhonixToggleButtonCandy_3.ToggleScript
    local script = Instance.new("LocalScript", Phonix.PhonixToggleButtonCandy_3)

    local toggle = script.Parent

    local bounce = true

    toggle.MouseEnter:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 12, 0, 12), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseLeave:Connect(
        function()
            toggle.Circle:TweenSize(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1)
        end
    )

    toggle.MouseButton1Click:Connect(
        function()
            if bounce then
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 28, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0, 0, 0)
                        toggle.Circle.Size = UDim2.new(0, 10, 0, 10)
                        toggle.BackgroundColor3 = Color3.new(0.717647, 0.772549, 0.827451)
                        bounce = false
                        task.wait(0.1)
                        _G.KillCam = true
                    end
                )
            else
                toggle.Circle:TweenPosition(
                    UDim2.new(-0.1, 12, 0.5, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Linear,
                    0.1,
                    false,
                    function()
                        toggle.Circle.BackgroundColor3 = Color3.new(0.807843, 0.807843, 0.807843)
                        toggle.Circle.Size = UDim2.new(0, 12, 0, 12)
                        toggle.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
                        bounce = true
                        task.wait(0.1)
                        _G.KillCam = false
                    end
                )
            end
        end
    )
end
coroutine.wrap(UZNADR_fake_script)()
local function RLBVZVA_fake_script() -- Phonix.PhonixScripts.MainButtonScripts
    local script = Instance.new("LocalScript", Phonix.PhonixScripts)

    local allMainButtons = script.Parent.Parent.PhonixMain.PhonixMainScroll
    local allPages = script.Parent.Parent.PhonixMain.PhonixPages
    local titleText = script.Parent.Parent.PhonixMain.PhonixTop.PhonixSectionTitle

    local previous = nil

    function Tween(Object, Time, Style, Direction, Repeat, Customization)
        local Tween =
            game:GetService("TweenService"):Create(
            Object,
            TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0),
            Customization
        )
        Tween:Play()
    end

    function getHome()
        for _, page in next, allPages:GetDescendants() do
            if page.ClassName == "StringValue" then
                if page.Value == "Home" then
                    local home = page.Parent
                    return home
                end
            end
        end
    end

    function sideout()
        for _, page in next, allPages:GetDescendants() do
            if page.ClassName == "StringValue" then
                if page.Value == "PlayerSide" or page.Value == "BossSide" then
                    if page.Parent.Position == UDim2.new(-0.059, 0, 0, 0) then
                        Tween(page.Parent, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 280, 0, 0)})
                        wait(0.3)
                    end
                end
            end
        end
    end

    for _, button in next, allMainButtons:GetChildren() do
        if button.ClassName == "TextButton" then
            button.MouseEnter:Connect(
                function()
                    button.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                end
            )

            local leave =
                button.MouseLeave:Connect(
                function()
                    button.BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)
                end
            )

            button.MouseButton1Click:Connect(
                function()
                    sideout()
                    --print("previous: " .. tostring(previous))
                    for _, line in next, allMainButtons:GetChildren() do
                        if line.ClassName == "TextButton" then
                            line.PhonixLine.Visible = false
                        end
                    end
                    button.PhonixLine.Visible = true

                    for _, page in next, allPages:GetDescendants() do
                        if page.ClassName == "StringValue" then
                            if previous == nil then
                                Tween(getHome(), 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 220)})
                                task.wait(0.3)
                            end

                            if button.ButtonTag.Value == page.Value then
                                if previous ~= nil then
                                    Tween(previous, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 220)})
                                    task.wait(0.3)
                                end
                                titleText.Text = button.ButtonTag.Value

                                Tween(page.Parent, 0.3, "Quad", "Out", true, {Position = UDim2.new(-0.059, 0, 0, 0)})
                                previous = page.Parent
                                task.wait(0.3)
                            end
                        end
                    end
                end
            )
        end
    end
end
coroutine.wrap(RLBVZVA_fake_script)()
local function IDRCHG_fake_script() -- Phonix.PhonixScripts.InfoScript
    local script = Instance.new("LocalScript", Phonix.PhonixScripts)

    local thisPlayer = game.Players.LocalPlayer
    local otherPlayer = game:GetService("Players")
    local thisPlayerPicture = script.Parent.Parent.PhonixMain.PhonixTop.PhonixUserImage
    local thisPlayerUsername = script.Parent.Parent.PhonixMain.PhonixTop.PhonixUserName
    local thisPlayerEmail = script.Parent.Parent.PhonixMain.PhonixTop.PhonixUserEmail

    local userId = thisPlayer.UserId
    local thumbType = Enum.ThumbnailType.HeadShot
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = otherPlayer:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    thisPlayerPicture.Image = content
    thisPlayerUsername.Text = "<b>" .. thisPlayer.Name .. "</b>"
    thisPlayerEmail.Text = thisPlayer.Name .. "@dohmnet.com"
end
coroutine.wrap(IDRCHG_fake_script)()

Phonix.change.MouseButton1Click:Connect(
    function()
        sledFuel()
    end
)

Phonix.change_2.MouseButton1Click:Connect(
    function()
        minionNoShoot()
    end
)

Phonix.change_3.MouseButton1Click:Connect(
    function()
        print("changelog")
    end
)

Phonix.PhonixDropButton.MouseButton1Click:Connect(
    function()
        if Phonix.PhonixDropOptions.Visible == false then
            Phonix.PhonixDropOptions.Visible = true
        else
            Phonix.PhonixDropOptions.Visible = false
        end
    end
)

Phonix.PhonixDropButton.MouseButton2Click:Connect(
    function()
        print('teleporting to'..Phonix.PhonixDropButton.Text)
        teleport_to_boss(Phonix.PhonixDropButton.Text)
    end
)

Phonix.PhonixDropButton_2.MouseButton1Click:Connect(
    function()
        print("time")
    end
)

Phonix.PhonixDropButton_3.MouseButton1Click:Connect(
    function()
        print("Theme")
    end
)

Phonix.PhonixDropButton_4.MouseButton1Click:Connect(
    function()
        if Phonix.PhonixDropOptions_4.Visible == false then
            Phonix.PhonixDropOptions_4.Visible = true
        else
            Phonix.PhonixDropOptions_4.Visible = false
        end
    end
)

_G.Target = nil

Phonix.Kill.MouseButton1Click:Connect(
    function()
        pvpKill(_G.Target)
    end
)

function pvpKill(plr)
    for _, player in next, otherPlayer:GetPlayers() do
        if player.DisplayName == plr and player.localData.playerSettings.pvp.value == true then
            player.Character:WaitForChild("Humanoid").Died:Connect(
                function()
                    print(player.DisplayName .. " has died!")
                end
            )
            if _G.KillCam then
                game.Workspace.Camera.CameraSubject = player.Character.Humanoid
                repeat
                    task.wait(2)
                    remote:FireServer("pvpHit", player, randomVector)
                until player.Character.Humanoid.Health == 0
                game.Workspace.Camera.CameraSubject = thisPlayer.Character.Humanoid
            else
                repeat
                    task.wait()
                    remote:FireServer("pvpHit", player, randomVector)
                until player.Character.Humanoid.Health == 0
            end
        end
    end
end

function teleport_to_boss(boss)
    local bossPosition = find_specific_boss(boss)
    thisPlayer.Character.HumanoidRootPart.CFrame = bossPosition.portal.teleportSpot.CFrame
end

function find_specific_boss(boss)
    for _, platform in pairs(bossPlatform:GetChildren()) do
        if platform.Name == "bossLedge" and platform.Boss.bossName.Value == boss then
            return platform
        end
    end
end

function autoReward()
    while _G.AutoR do
    local bossPosition = find_specific_boss(selectedBoss)
    if bossPosition:FindFirstChild("Boss") and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") then
        local Event = game.ReplicatedStorage.Signals.bossReward

        spawn(
            function()
                repeat
                    Event:FireServer("hit", selectedBoss, game:GetService("Workspace").steps.bossLedge.Boss.Boss.Humanoid)
                    task.wait()
                until _G.AutoR == false 
            end
    )
    end
end

function boss_auto_kill()
    local bossPosition = find_specific_boss('Yeti Giant')
    local Event = game:GetService("ReplicatedStorage").Signals.snowballProjectile
    while true do
        repeat 
            task.wait()
            if bossPosition.Boss:WaitForChild('Boss') and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") and bossPosition.Boss.Boss.Humanoid.Health > 0 then
                local position = bossPosition.Boss.Boss.HumanoidRootPart.CFrame.p;
                Event:FireServer('explodeLauncher', position)
                task.wait(1)
                end
        until not bossPosition.Boss:FindFirstChild('Boss') or bossPosition.Boss.Boss:WaitForChild('Configuration').state.Value == 'dead' or  bossPosition.Boss.Boss.Humanoid.Health < 0
    end
end
end



        
            
function sledFuel()
    local err, success =
        pcall(
        function()
            for _, v in pairs(playerSleds:GetChildren()) do
                if v:IsA("Folder") and v.Name == thisPlayer.Name then
                    playerFolder = v
                end
            end

            sledConnection =
                playerFolder.ChildAdded:Connect(
                function(playerSleds)
                    handler =
                        playerSleds.Parent:GetChildren()[1]:WaitForChild("Configurations").Fuel.Changed:Connect(
                        function()
                            task.wait()
                            game:GetService("ReplicatedStorage").Signals.sleighEvent:FireServer(
                                "updateFuel",
                                playerFolder:FindFirstChild(playerSleds.Name),
                                100
                            )
                        end
                    )
                end
            )

            playerFolder.ChildRemoved:Connect(
                function()
                    if handler.Connected then
                        handler:Disconnect()
                        warn(handler.Connected)
                    end
                end
            )
        end
    )
end

function minionNoShoot()
    for _, v in pairs(game:GetService("ReplicatedStorage").ModulesClient:GetChildren()) do
        if v:IsA("ModuleScript") and v.Name == "SnowballProjectileClient" then
            for _, s in pairs(getgc()) do
                if
                    type(s) == "function" and
                        getfenv(s).script == game:GetService("ReplicatedStorage").ModulesClient[v.Name]
                 then
                    if debug.getinfo(s).name == "minionSnowball" then
                        hookfunction(
                            s,
                            function(...)
                                print("Nice, try minions cant hurt us!")
                                return "No Thank you."
                            end
                        )
                    end
                end
            end
        end
    end
end

function makeDropOption(txt, parent)
    local PhonixOption = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")

    PhonixOption.Name = "PhonixOption"
    PhonixOption.Parent = parent
    PhonixOption.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    PhonixOption.Size = UDim2.new(0, 83, 0, 17)
    PhonixOption.ZIndex = 2
    PhonixOption.AutoButtonColor = false
    PhonixOption.Font = Enum.Font.RobotoMono
    PhonixOption.Text = txt
    PhonixOption.TextColor3 = Color3.fromRGB(246, 246, 246)
    PhonixOption.TextSize = 8.000
    PhonixOption.MouseButton1Click:Connect(
        function()
            Phonix.PhonixDropButton_4.Text = PhonixOption.Text
            Phonix.PhonixDropOptions_4.Visible = false
            _G.Target = PhonixOption.Text
        end
    )

    UICorner.CornerRadius = UDim.new(0, 3)
    UICorner.Parent = PhonixOption
end

function deleteOption(plr)
    for _, v in next, Phonix.PhonixDropOptions_4:GetChildren() do
        print(plr)
        if v.ClassName == "TextButton" and v.Text:lower() == plr:lower() then
            print("option destruct")
            v:Destroy()
            Phonix.PhonixDropButton_4.Text = "Select"
        end
    end
end

function giftFarm()
    if _G.Presents then
        for _, v in pairs(giftLocations:GetDescendants()) do
            if v and v:IsA("ProximityPrompt") and _G.Presents then
                thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                wait(1)
                fireproximityprompt(v, 10)
                v.Parent.Parent:WaitForChild("unwrapProgressBar", 5)
                repeat
                    wait()
                until not v.Parent.Parent:FindFirstChild("unwrapProgressBar") or _G.Presents == false
            end
        end
    end
end

function makeDropOptionBoss(txt, parent)
    local PhonixOption = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")

    PhonixOption.Name = "PhonixOption"
    PhonixOption.Parent = parent
    PhonixOption.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    PhonixOption.Size = UDim2.new(0, 83, 0, 17)
    PhonixOption.ZIndex = 2
    PhonixOption.AutoButtonColor = false
    PhonixOption.Font = Enum.Font.RobotoMono
    PhonixOption.Text = txt
    PhonixOption.TextColor3 = Color3.fromRGB(246, 246, 246)
    PhonixOption.TextSize = 8.000
    PhonixOption.MouseButton1Click:Connect(
        function()
            Phonix.PhonixDropButton.Text = PhonixOption.Text
            selectedBoss = PhonixOption.Text
            Phonix.PhonixDropOptions.Visible = false
        end
    )

    UICorner.CornerRadius = UDim.new(0, 3)
    UICorner.Parent = PhonixOption
end

function addBosses()
    for _, v in next, bossList:GetChildren() do
        makeDropOptionBoss(v.Name, Phonix.PhonixDropOptions)
    end
end

addBosses()
for _, v in next, otherPlayer:GetPlayers() do
    pvpvalue =
        v.localData.playerSettings.pvp.Changed:connect(
        function(value)
            if value then
                makeDropOption(v.DisplayName, Phonix.PhonixDropOptions_4)
            else
                deleteOption(v.DisplayName)
            end
        end
    )
end

otherPlayer.PlayerAdded:Connect(
    function(plr)
        print(tostring(plr) .. " added!")
        plr:WaitForChild("Character", 5)
        if plr.localData.playerSettings.pvp.Value == true then
            print("added")
            makeDropOption(plr.DisplayName, Phonix.PhonixDropOptions_4)
        end

        pvpvalue =
            plr.localData.playerSettings.pvp.Changed:connect(
            function(value)
                if value then
                    makeDropOption(plr.DisplayName, Phonix.PhonixDropOptions_4)
                else
                    deleteOption(plr.DisplayName)
                end
            end
        )
    end
)

otherPlayer.PlayerRemoving:Connect(
    function(Player)
        deleteOption(Player.DisplayName)
        while Player.Parent do
            Player.AncestryChanged:Wait()
        end
        print("destroyed" .. tostring(Player))
        Player:Destroy()
    end
)