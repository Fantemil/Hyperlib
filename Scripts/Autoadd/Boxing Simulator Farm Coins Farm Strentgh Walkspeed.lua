--[[

Game : https://www.roblox.com/games/4058282580

Codded by : Keathunsar : https://github.com/dady172172/Roblox-Cheats

]]--



buypos = CFrame.new(-254.23877, 856.087158, 1328.32764, 0.856803477, 5.30729682e-09, -0.51564306, 2.60093795e-08, 1, 5.35103197e-08, 0.51564306, -5.9259385e-08, 0.856803477)

sellpos = CFrame.new(-369.591736, 855.879761, 1315.43188, 0.919092059, -1.6196239e-08, 0.39404285, 3.54836072e-09, 1, 3.28262999e-08, -0.39404285, -2.87721864e-08, 0.919092059)

spotpos = CFrame.new(-395.639038, 882.194153, 1405.19495, 0.13768281, 8.85162166e-08, -0.99047637, 1.3301042e-08, 1, 9.12162506e-08, 0.99047637, -2.57332768e-08, 0.13768281)

farmcoins = false

farmstrength = false

infhealth = false

farmboss = false



local VirtualUser=game:service'VirtualUser'

game:service'Players'.LocalPlayer.Idled:connect(function()

    VirtualUser:CaptureController()

    VirtualUser:ClickButton2(Vector2.new())

end)



local function CreateInstance(cls,props)

local inst = Instance.new(cls)

for i,v in pairs(props) do

 inst[i] = v

end

return inst

end

 

local BoxingSimulatorGUI = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='BoxingSimulatorGUI', Parent=game.CoreGui})

local Frame = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.339563876, 0, 0.324749649, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 324, 0, 374),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Frame',Parent = BoxingSimulatorGUI})

local JPSFrame = CreateInstance('Frame',{Style=Enum.FrameStyle.DropShadow,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(-0.000128852, 0, -0.00188833638, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 312, 0, 284),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=-1,Name = 'JPSFrame',Parent = Frame})

local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Boxing Simulator GUI',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.281272709, 0, -1.81552023e-05, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 128, 0, 25),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='TextLabel',Parent = JPSFrame})

local FarmCoinsBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Farm Coins',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0440670848, 0, 0.242220402, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='FarmCoinsBtn',Parent = JPSFrame})

local ImageLabel = CreateInstance('ImageLabel',{Image='rbxassetid://38727848',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Crop,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.188999996, 0, 0, -110),Rotation=90,Selectable=false,Size=UDim2.new(0, 183, 0, 303),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ImageLabel',Parent = JPSFrame})

local WalkSpeedBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Walk Speed 50',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.653041422, 0, 0.242220402, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='WalkSpeedBtn',Parent = JPSFrame})

local FarmStrengthBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Farm Strength',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.345349103, 0, 0.242220432, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='FarmStrengthBtn',Parent = JPSFrame})

local ImageLabel = CreateInstance('ImageLabel',{Image='rbxassetid://38727848',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Crop,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.188999996, 0, 0, 0),Rotation=90,Selectable=false,Size=UDim2.new(0, 183, 0, 303),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ImageLabel',Parent = JPSFrame})

local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Teleports',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.274862438, 0, 0.464770585, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 128, 0, 25),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='TextLabel',Parent = JPSFrame})

local TpShopBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Shop',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0440670848, 0, 0.67884016, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='TpShopBtn',Parent = JPSFrame})

local TpSellBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Sell',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.345349133, 0, 0.67884022, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='TpSellBtn',Parent = JPSFrame})

local TpFarmLocationBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Farm Location',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.653041422, 0, 0.67884016, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='TpFarmLocationBtn',Parent = JPSFrame})

local InfHealthBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Inf Health',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.188297868, 0, 0.372502059, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='InfHealthBtn',Parent = JPSFrame})

local FarmBossBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Farm Boss',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.486374795, 0, 0.372502059, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 89, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='FarmBossBtn',Parent = JPSFrame})

local OpenBtn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Close',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1.36609697, 0, -0.609625518, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 73, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='OpenBtn',Parent = Frame})



OpenBtn.MouseButton1Click:connect(function()

    if OpenBtn.Text == "Close" then

        OpenBtn.Text = "Open"

        JPSFrame.Visible = false

        print("Menu Closed")

    elseif OpenBtn.Text == "Open" then

        OpenBtn.Text = "Close"

        JPSFrame.Visible = true

        print("Menu Opened")       

    end

end)



FarmCoinsBtn.MouseButton1Click:connect(function()

    if farmcoins == true then farmcoins = false print("Disabled")

        FarmCoinsBtn.BackgroundColor3 = Color3.new(0, 0, 0)

    elseif farmcoins == false then farmcoins = true print("Enabled")

        FarmCoinsBtn.BackgroundColor3 = Color3.new(0, 170, 0)

    end

    farmCoins()

end)



FarmStrengthBtn.MouseButton1Click:connect(function()

    if farmstrength == true then farmstrength = false print("Disabled")

        FarmStrengthBtn.BackgroundColor3 = Color3.new(0, 0, 0)

    elseif farmstrength == false then farmstrength = true print("Enabled")

        FarmStrengthBtn.BackgroundColor3 = Color3.new(0, 170, 0)

    end

    farmStrength()

end)



InfHealthBtn.MouseButton1Click:connect(function()

    if infhealth == true then infhealth = false print("Disabled")

        InfHealthBtn.BackgroundColor3 = Color3.new(0, 0, 0)

    elseif infhealth == false then infhealth = true print("Enabled")

        InfHealthBtn.BackgroundColor3 = Color3.new(0, 170, 0)

    end

    infHealth()

end)



FarmBossBtn.MouseButton1Click:connect(function()

    if farmboss == true then farmboss = false print("Disabled")

        FarmBossBtn.BackgroundColor3 = Color3.new(0, 0, 0)

    elseif farmboss == false then farmboss = true print("Enabled")

        FarmBossBtn.BackgroundColor3 = Color3.new(0, 170, 0)

    end

    farmBoss()

end)



TpFarmLocationBtn.MouseButton1Click:connect(function()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spotpos

end)



TpShopBtn.MouseButton1Click:connect(function()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = buypos

end)



TpSellBtn.MouseButton1Click:connect(function()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sellpos

end)



WalkSpeedBtn.MouseButton1Click:connect(function()

    local plr = game.Players.LocalPlayer.Name

 game:GetService("Workspace")[plr].Humanoid.WalkSpeed = 50

end)



function farmCoins()

    while farmcoins == true do

        for _,v in pairs(game:GetService("Workspace").Coins:GetChildren()) do

            if farmcoins == false then return end

            for _,g in pairs(v:GetChildren()) do 

                if g.Name == "HumanoidRootPart" then 

                    wait()

                    g.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

                    if farmcoins == false then return end

                end

            end

        end

    end

end



function farmStrength()

    while farmstrength == true do

        local virtualUser = game:GetService('VirtualUser')

        virtualUser:CaptureController()

        wait(0.116159)

        virtualUser:SetKeyUp('0x11a')

        wait(0.399961)

        virtualUser:Button1Down(Vector2.new(-0.0, -0.0), CFrame.new(-0.0, 0.0, -0.0, -0.0, 0.0, 0.0, 0.0))

        virtualUser:SetKeyDown('0x11a')

        wait()

        game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()

    end       

end



function infHealth()

    while infhealth == true do

        wait()

        local plr = game.Players.LocalPlayer.Name

        game.Players[plr].Character.Humanoid.MaxHealth = math.huge

        game.Players[plr].Character.Humanoid.Health = math.huge

        

    end

end



function farmBoss()

    while farmboss == true do

        if game:GetService("Workspace").Boss.Pirate.RightUpperLeg then

            local a = game:GetService("Workspace").Boss.Pirate.RightUpperLeg.CFrame

            TP(a)

            local virtualUser = game:GetService('VirtualUser')

            virtualUser:CaptureController()       

            virtualUser:SetKeyUp('0x11a')      

            virtualUser:Button1Down(Vector2.new(-0.0, -0.0), CFrame.new(-0.0, 0.0, -0.0, -0.0, 0.0, 0.0, 0.0))

            virtualUser:SetKeyDown('0x11a')

            wait()

            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()

        end

    end

    wait(1)

    FarmBossBtn.BackgroundColor3 = Color3.new(0, 0, 0)

    if farmboss == true then farmboss = false end

end



function TP(location)

    

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location

end