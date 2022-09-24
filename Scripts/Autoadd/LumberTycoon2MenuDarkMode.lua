--Script created by Ancestor NOT ME
--Ancestor's Discord-Ancestor#4476
local functions={};

functions.uiMode=function(mode)   
    local lp=game.Players.LocalPlayer
    local color1,color2
    function createCorner(parent)
        if not parent:FindFirstChild('UICorner')then
            local uic=Instance.new('UICorner',parent);
            uic.CornerRadius=UDim.new(0,5)
        end;
    end;

    if mode=='Light'then 
        color1=Color3.fromRGB(255,255,255);
        color2=Color3.fromRGB(0,0,0);
        color3=Color3.fromRGB(220, 220, 220)
    elseif mode=='Dark'then 
        color1=Color3.fromRGB(15,15,15)
        color2=Color3.fromRGB(255,255,255);
        color3=Color3.fromRGB(15,15,15)
    end;
    --Open Menu Button
    local openMenu=lp.PlayerGui.MenuGUI.Open
    
    createCorner(openMenu)
    openMenu.BackgroundColor3=color1
    openMenu.TextLabel.TextColor3=color2
    createCorner(openMenu.DropShadow)
    
    --Main Menu 
    local mainMenu=lp.PlayerGui.MenuGUI.Menu.Main
    local mainMenuQuit=mainMenu.Parent.Quit
    
    mainMenu.BackgroundColor3=color1
    for i,v in next,mainMenu:GetDescendants()do 
        if v:IsA('TextLabel')then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2;
                v.BackgroundColor3=color1;
                createCorner(v)
                v.TextColor3=color2;
            elseif v.Name=='DropShadow'then
                createCorner(v)
                v.TextColor3=color1;
            end;
        end;
        if v:IsA('TextButton')then 
            createCorner(v)
            v.BackgroundColor3=color1;
        end;
    end;
    
    createCorner(mainMenuQuit);
    mainMenuQuit.BackgroundColor3=color1;
    mainMenuQuit.TextLabel.TextColor3=color2;
    createCorner(mainMenuQuit.DropShadow);createCorner(mainMenu);createCorner(mainMenu.DropShadow);
    
    --Load Menu 
    local loadMenu=lp.PlayerGui.LoadSaveGUI;
    loadMenu.SlotList.Main.BackgroundColor3=color1;
    for _,textLabel in next, loadMenu.SlotList.Main:GetDescendants()do 
        if textLabel:IsA('TextLabel')then
            if textLabel.Name=='IsCurrentSlot'then 
                textLabel.TextStrokeColor3=color1;
            end;
            if textLabel.Name=='DropShadow'then 
                textLabel.TextColor3=color1;
            else
            createCorner(textLabel)
            textLabel.TextColor3=color2;
        end;
        elseif textLabel:IsA('TextButton')then 
            textLabel.BackgroundColor3=color1;
            createCorner(textLabel)
        end;
    end;
    lp.PlayerGui.PropertyPurchasingGUI.SelectPurchase.Cost.BackgroundColor3=color1
    --Quit
    createCorner(loadMenu.SlotList.Quit)
    loadMenu.SlotList.Quit.BackgroundColor3=color1;
    loadMenu.SlotList.Quit.TextLabel.TextColor3=color2;
    createCorner(loadMenu.SlotList.Quit.DropShadow);
    createCorner(loadMenu.SlotList.Main);createCorner(loadMenu.SlotList.Main.DropShadow)
    --Load Current Slot 
    local slotInfoMain=loadMenu.SlotInfo.Main 
    local progress=loadMenu.Progress
    for _,v in next,progress:GetDescendants()do 
        if v:IsA'Frame' then 
            createCorner(v);
            if v.Name~='DropShadow'then 
                v.BackgroundColor3=color1;
            end;
        end;
    end;
    createCorner(progress.Main.Text);progress.Main.Text.BackgroundColor3=color1;progress.Main.Text.TextColor3=color2
    
    createCorner(slotInfoMain);createCorner(slotInfoMain.DropShadow)
    for _,button in next,slotInfoMain:GetDescendants()do 
        if button:IsA('TextButton')or button:IsA('TextLabel')then 
            button.BackgroundColor3=color1
            button.TextColor3=color2
            createCorner(button);
        end;
    end;
    slotInfoMain.BackgroundColor3=color1
    
    --Load Quit 
    createCorner(slotInfoMain.Parent.Quit)
    slotInfoMain.Parent.Quit.BackgroundColor3=color1;
    slotInfoMain.Parent.Quit.TextLabel.TextColor3=color2;
    createCorner(slotInfoMain.Parent.Quit.DropShadow);
    createCorner(slotInfoMain.Parent.Quit);createCorner(slotInfoMain.Parent.Quit.DropShadow)
    
    --Select Plot
    local selectPlot=lp.PlayerGui.PropertyPurchasingGUI
    for _, v in next,selectPlot:GetDescendants()do 
        if v.ClassName=='Frame'then 
            createCorner(v);
            if v.Name=='DropShadow'then 
                v.BackgroundColor3=Color3.fromRGB(0,0,0)
            else
                v.BackgroundColor3=color1
            end;
        end;
        if v:IsA('TextLabel')or v:IsA'TextButton'then 
            v.TextColor3=color2
            v.BackgroundColor3=color1
            createCorner(v);
        end;
    end;
    --Notice
    local noticeUI=lp.PlayerGui.NoticeGUI.Notice.Main 
    createCorner(noticeUI)
    noticeUI.BackgroundColor3=color1
    for _,v in next,noticeUI:GetDescendants()do 
        if v:IsA('TextButton')or v:IsA('TextLabel')then 
            v.TextColor3=color2
            v.BackgroundColor3=color1
            createCorner(v);
        end;
        if v:IsA('Frame')then 
            createCorner(v)
        end;
    end;
    
    --Money Gui 
    local buyMoney=lp.PlayerGui.BuyMoneyGUI.BuyMoney 
    
    for _,v in next,buyMoney:GetDescendants()do 
        if v:IsA('Frame')then 
            createCorner(v)
            if v.Name~='DropShadow'then 
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA('TextLabel')and not string.find(v.Text,'R')then 
            if v.Name~='DropShadow'then 
                v.TextColor3=color2;
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
        end;
        if v:IsA'TextButton'then 
            v.BackgroundColor3=color1;
        end;
        createCorner(v);
    end;
    
    --Whitelist 
    local whiteListGui=lp.PlayerGui.WhiteListGUI 
    
    for _,v in next,whiteListGui:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'or v:IsA'TextButton'then 
            if v.Name=='InfoT'then 
                v.TextStrokeColor3=color1;
            end;
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
                v.TextStrokeColor3=color2;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
        if v:IsA'ScrollingFrame'then 
            v.BackgroundColor3=color1;
        end;
    end;
    
    --Blacklist 
    local blackListGui=lp.PlayerGui.BlackListGUI 
    
    for _,v in next,blackListGui:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
        if v:IsA'ScrollingFrame'then 
            v.BackgroundColor3=color1;
        end;
    end;
    
    --Send Money 
    
    local sendMoney=lp.PlayerGui.DonateGUI 
    
    for _,v in next,sendMoney:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
        if v:IsA'ScrollingFrame'then 
            v.BackgroundColor3=color1;
        end;
    end;
    game:GetService('Players').LocalPlayer.PlayerGui.DonateGUI.Donate.Main.AmountLabel.BackgroundColor3=Color3.fromRGB(0,155,0);
    createCorner(game:GetService('Players').LocalPlayer.PlayerGui.DonateGUI.Donate.Main.AmountLabel)
    game:GetService('Players').LocalPlayer.PlayerGui.DonateGUI.Donate.Main.AmountLabel.TextColor3=color2
    --Changelog 
    local changeLog=lp.PlayerGui.ChangelogGUI
    
    for _,v in next,changeLog:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    
    --Credits
    local creditsUI=lp.PlayerGui.CreditsGUI
    
    for _,v in next,creditsUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    
    local scr=getsenv(lp.PlayerGui.CreditsGUI.CreditsClient)
        local old=scr.openWindow
        local old2=scr.displayPage
        scr.openWindow=function()
            old()
            local creditsUI=lp.PlayerGui.CreditsGUI
            for _,v in next,creditsUI:GetDescendants()do
                if v:IsA'Frame'then 
                    createCorner(v);
                    if v.Name~='DropShadow'then
                        v.BackgroundColor3=color1;
                    end;
                end;
                if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
                    if v.Name~='DropShadow'then
                        v.TextColor3=color2
                    else
                        v.TextColor3=color1;
                    end;
                    v.BackgroundColor3=color1;
                    createCorner(v);
                end;
            end;
        end;
        scr.displayPage=function()
        old2()
        local creditsUI=lp.PlayerGui.CreditsGUI
        for _,v in next,creditsUI:GetDescendants()do
            if v:IsA'Frame'then 
                createCorner(v);
                if v.Name~='DropShadow'then
                    v.BackgroundColor3=color1;
                end;
            end;
            if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
                if v.Name~='DropShadow'then
                    v.TextColor3=color2
                else
                    v.TextColor3=color1;
                end;
                v.BackgroundColor3=color1;
                createCorner(v);
            end;
        end;
    end;
    
    --OnBoarding 
    local onBoardingGUI=lp.PlayerGui.OnboardingGUI
    
    for _,v in next,onBoardingGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --Chat GUI
    local chat=lp.PlayerGui.ChatGUI
    for _,v in next,chat:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --ItemDraggerGUI 
    local itemDraggingGUI=lp.PlayerGui.ItemDraggingGUI
    for _,v in next,itemDraggingGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            v.TextColor3=color2
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --ItemInfo 
    local itemInfoGUI=lp.PlayerGui.ItemInfoGUI
    for _,v in next,itemInfoGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA('ImageLabel')then 
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
                v.TextStrokeColor3=color1
            else
                v.TextColor3=color1;
                v.TextStrokeColor3=color1
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --InteractionGUI
    local interactionGUI=lp.PlayerGui.InteractionGUI
    for _,v in next,interactionGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color2;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    game:GetService('Players').LocalPlayer.PlayerGui.InteractionGUI.OwnerShow.BackgroundColor3=color1;
    --StructureGui
    local structureDraggingGUI=lp.PlayerGui.StructureDraggingGUI
    for _,v in next,structureDraggingGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --WireDraggingGUI
    local wireDraggingGUI=lp.PlayerGui.WireDraggingGUI
    for _,v in next,wireDraggingGUI:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    --OverWriteConfirm
    local overWriteConfirm=loadMenu.OverwriteConfirm
    for _,v in next,overWriteConfirm:GetDescendants()do
        if v:IsA'Frame'then 
            createCorner(v);
            if v.Name~='DropShadow'then
                v.BackgroundColor3=color1;
            end;
        end;
        if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
            if v.Name~='DropShadow'then
                v.TextColor3=color2
            else
                v.TextColor3=color1;
            end;
            v.BackgroundColor3=color1;
            createCorner(v);
        end;
    end;
    game:GetService('Players').LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.KeyLabel.TextSize=14;
    game:GetService('Players').LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.TextSize=14
    game:GetService('Players').LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.TextScaled=false;
    for _,v in next,game:GetService('Players').LocalPlayer.PlayerGui:GetDescendants()do 
        if v.Name=='KeyLabel'then 
            v.TextColor3=Color3.fromRGB(0,0,0);
        end;
    end;
    --Blueprints
    local scr=getsenv(lp.PlayerGui.Blueprints.LocalBlueprints)
    local old=scr.populateCategoryList
    scr.populateCategoryList=function()
        old()
        local blueprints=lp.PlayerGui.Blueprints
        for _,v in next,blueprints:GetDescendants()do
            if v:IsA('ImageLabel')then 
                v.BackgroundColor3=color1;
            end;
            if v:IsA'Frame'then 
                createCorner(v);
                if v.Name~='DropShadow'then
                    v.BackgroundColor3=color1;
                elseif mode=='Dark'then 
                    v.BackgroundColor3=Color3.fromRGB(0,0,0);
                elseif mode=='Light'then 
                    v.BackgroundColor3=Color3.fromRGB(25,25,25);
                end;
            end;
            if v:IsA'TextLabel'and v.Name~='InfoT'or v:IsA'TextButton'then 
                if v.Name=='DropShadow'then
                    v:remove();
                end
                if v.Text=='Blueprints'and v.Name~='DropShadow'then 
                    v.TextColor3=color2;
                else
                    v.TextColor3=color2;
                end;
                v.BackgroundColor3=color1;
                createCorner(v);
            end;
            if v:IsA'ScrollingFrame'then 
                v.BackgroundColor3=color1;
            end;
        end;
    end;
end;functions.uiMode('Dark')