-->AncestorV2

-->Block Shitty Executors
local Executor=identifyexecutor();
local SupportedExecutors={'Synapse X','ScriptWare','Krnl','Temple'};
local Supported=table.find(SupportedExecutors,Executor)~=nil;
assert(Supported,'Executor Not Supported');

local Key={...};
local Password=Key[1];
local DeveloperMode=Key[1]==nil;
setmetatable(Key,{__index=function()if DeveloperMode then return '';end;end;});--> None loadstring Executions Activate DeveloperMode.

-->Init
local Start,Is_Client_Loaded=os.time(),false,nil;
local Ancestor,Connections,GUISettings,CurrentVersion,Ancestor_Loaded={MoneyDuping=false,DupeAxeBeforeModerationAction=false,ModerationAction='Kick',PlayerToModerate=game.Players.LocalPlayer,BaseToDupe=1,SelectedTreeType='Generic',BringTreeAmount=1},{},{NewDonateBase=false,Spook=false,WalkSpeed=16,JumpPower=50,HipHeight=0,SprintSpeed=20,FOV=70,SelectedPlot=1,InfiniteJump=false,SelectedDropType='Both',Light=false,SprintKey='LeftShift',NoclipKey='LeftControl',KeyTP='G',FastCheckout=false,FixCashierRange=false,HardDragger=false,AxeRangeActive=false,AxeSwingActive=false,FlyKey='F',WaterWalk=false,WaterFloat=true,FlySprintSpeed=10,AlwaysDay=false,AlwaysNight=false,NoFog=false,DisableSaving=true,AxeSwing=0,AxeRange=0,FastDeloader=true,IsClientFlying=false,Fling=false,FlySpeed=50,ActivateCarModifications=false,CarSpeed=1,CarPitch=1,AlertShutdown=false,AntiAFK=false},loadstring(game:HttpGetAsync'https://ancestordevelopment.wtf/lua/Version.lua')(),true;

-->GUI Main Function Variables
local DupeMoneyQuantity,AutobuyAmount,AutobuySelectedItem=1,1,'BasicHatchet';

-->Optimisation Shit 
local RepStore,RunService,UIS,Players,Lighting,ScriptContext,PerformanceStats,TeleportService,HttpService,MarketplaceService,VirtualUser=game:GetService'ReplicatedStorage',game:GetService'RunService',game:GetService'UserInputService',game:GetService'Players',game:GetService'Lighting',game:GetService'ScriptContext',game:GetService'Stats'.PerformanceStats,game:GetService'TeleportService',game:GetService'HttpService',game:GetService'MarketplaceService',game:GetService'VirtualUser';
local LP,StarterGui=Players.LocalPlayer,game.StarterGui;
local C_R,C_C,R_Module,hook_func,fwait,tdelay,lstring,Mouse,Stepped,cframe,vector3,wrkspc,gs,tstring,xp_call,p_call,instance,Heartbeat,Character,MFloor,gc,setthreadidentity=coroutine.resume,coroutine.create,require,hookfunction,task.wait,task.delay,loadstring,LP:GetMouse(),RunService.Stepped,CFrame,Vector3,workspace,getsenv,tostring,xpcall,pcall,Instance,RunService.Heartbeat,LP.Character,math.floor,getconnections,set_thread_identity or setidentity or setthreadcontext or syn.set_thread_identity;
local AxeNameLabel,AxeRangeLabel,AxeCooldownLabel;
repeat Stepped:wait()until game:IsLoaded()and LP.PlayerGui:FindFirstChild'OnboardingGUI' and LP.PlayerGui.OnboardingGUI.DoOnboarding.Loaded.Value

-->Game script environments
local PropertyPurchasingClient,CharacterFloat,ClientBeBlacklisted,DonateClient,ObjectInteractionClient,UserInput,NPCChattingClient,LoadSaveClient,NoticeClient=gs(LP.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient),gs(LP.PlayerGui.Scripts.CharacterFloat),gs(LP.PlayerGui.BlackListGUI.ClientBeBlacklisted),gs(LP.PlayerGui.DonateGUI.DonateClient),gs(LP.PlayerGui.InteractionGUI.ObectInteractionClient),R_Module(LP.PlayerGui.Scripts.UserInput),gs(LP.PlayerGui.ChatGUI.NPCChattingClient),gs(LP.PlayerGui.LoadSaveGUI.LoadSaveClient),gs(LP.PlayerGui.NoticeGUI.NoticeClient);

-->Old game functions
local CharacterFloatOld,oldWalls,oldClientBeKicked=CharacterFloat.isInWater,ClientBeBlacklisted.makeWalls,ClientBeBlacklisted.checkIfPlayerNeedsToBeKicked;

local ChatUI=LP.PlayerGui.ChatGUI.Chat;
local LoadPass=getupvalue(LoadSaveClient.saveSlot,12);
local whitelistedPlots={'68, 0, -189, 1, 0, 0, 0, 1, 0, 0, 0, 1','275, 0, -512, 1, 0, 0, 0, 1, 0, 0, 0, 1','383, 0, -250, 1, 0, 0, 0, 1, 0, 0, 0, 1'};

-->Remotes
local Client_May_Load,Donate,Request_Load,Request_Save,GetMetaData,ClientPurchasedProperty,ClientExpandedProperty,ClientRequestOwnership,ClientIsDragging,TestPing,PlayerChatted,SendUserNotice,ClientSetListPlayer,DestroyStructure,ClientInteracted,ClientPlacedBlueprint,ClientPlacedStructure,RemoteProxy,WipeMetaData,SayMessageRequest,ClientIsWhitelisted=RepStore.LoadSaveRequests.ClientMayLoad,RepStore.Transactions.ClientToServer.Donate,RepStore.LoadSaveRequests.RequestLoad,RepStore.LoadSaveRequests.RequestSave,RepStore.LoadSaveRequests.GetMetaData,RepStore.PropertyPurchasing.ClientPurchasedProperty,RepStore.PropertyPurchasing.ClientExpandedProperty,RepStore.Interaction.ClientRequestOwnership,RepStore.Interaction.ClientIsDragging,RepStore.TestPing,RepStore.NPCDialog.PlayerChatted,RepStore.Notices.SendUserNotice,RepStore.Interaction.ClientSetListPlayer,RepStore.Interaction.DestroyStructure,RepStore.Interaction.ClientInteracted,RepStore.PlaceStructure.ClientPlacedBlueprint,RepStore.PlaceStructure.ClientPlacedStructure,RepStore.Interaction.RemoteProxy,RepStore.LoadSaveRequests.WipeMetaData,RepStore.DefaultChatSystemChatEvents.SayMessageRequest,RepStore.Interaction.ClientIsWhitelisted;
local Plots,StoreChildren=wrkspc.Properties:GetChildren(),wrkspc.Stores:GetChildren();
local AxeFolder=RepStore.Purchasables.Tools.AllTools

-->Load freeze bug fix
local BumpModule=R_Module(LP.PlayerGui.BumpButton);
BumpModule.Bump=function()return true;end;

--> Fixes Reloading With Disable Saving Enabled
setupvalue(LoadSaveClient.loadSlot,12,true);

--Fixed Random 'false' Notices
Connections[#Connections+1]={Name='FalseFix',Function=Stepped:Connect(function()
    if LP.PlayerGui.NoticeGUI.Notice.Main.TextLabel.Text=='false'then 
        LP.PlayerGui.NoticeGUI.Notice.Visible=false;
    end;
end)};

-->Re-Execution Dependancies
getgenv().BaseDuping=false;
if not getgenv().OldSelectLoad then
local gc=getgc(true);
    for i=1,#gc do 
        local Function=gc[i];
        if typeof(Function)=='function'and tstring(getfenv(Function).script)=='PropertyPurchasingClient'then 
            if tstring(getinfo(Function).name)=='OnClientInvoke'then
                getgenv().OldSelectLoad=Function;
            end;
        end;
    end;
end;

--Lumber Tycoon 2 Updater Detection
local LastUpdated,LastDumpedUpdate=MarketplaceService:GetProductInfo(game.PlaceId).Updated,lstring(game:HttpGetAsync'https://ancestordevelopment.wtf/lua/LastLT2Update.lua')();
if LastUpdated~=LastDumpedUpdate then 
    SendUserNotice:Fire'Lumber Tycoon 2 Updated. Use At Your Own Risk Or Wait For Ancestor To Verify Update!';
end;

if not isfile'AncestorV2Configuration.cfg'then 
    writefile('AncestorV2Configuration.cfg',HttpService:JSONEncode(GUISettings));
end;

GUISettings=HttpService:JSONDecode(readfile('AncestorV2Configuration.cfg'));
PlayerDropType=GUISettings.SelectedDropType;
local CashiersAutobuy={};
local CashierIDConnection=RepStore.NPCDialog.PromptChat.OnClientEvent:Connect(function(_,Cashier)
    if CashiersAutobuy[Cashier.Name]==nil then
    	CashiersAutobuy[Cashier.Name]=Cashier.ID;
    end;
end);
C_R(C_C(function()
    RepStore.NPCDialog.SetChattingValue:InvokeServer(1);
    repeat Stepped:wait()until CashiersAutobuy["Hoover"]~=nil;
    CashierIDConnection:Disconnect()CashierIDConnection=nil;
    RepStore.NPCDialog.SetChattingValue:InvokeServer(0);
end));

function Ancestor:Set(SlotNumber)
    LP.CurrentSaveSlot.Set:Invoke(SlotNumber,LoadPass);
end;

function Ancestor:GetModelByName(Name)
    local PlayerModels=wrkspc.PlayerModels:GetChildren();
    for i=1,#PlayerModels do 
        local Model=PlayerModels[i];
        if Model:FindFirstChild'Owner'and Model.Owner.Value==LP then 
            local ItemType=Model:FindFirstChild'ItemName';
            if ItemType and tstring(ItemType.Value)==Name then 
                return Model;
            end;
        end;
    end;
    return false;
end;

function Ancestor:SellSign()
    local Sign=Ancestor:GetModelByName('PropertySoldSign');
    local Main=Sign:FindFirstChild'Main';
    if Main.Anchored then 
        ClientInteracted:FireServer(Sign,'Take down sold sign');
    end;
    if(Main.CFrame.p-LP.Character.Head.CFrame.p).Magnitude>10 then 
        Ancestor:Teleport(cframe.new(Main.CFrame.p+vector3.new(0,2,2)));
        fwait(.3)
    end;
    repeat Stepped:wait()
        ClientIsDragging:FireServer(Sign);
        Sign:SetPrimaryPartCFrame(cframe.new(315,3,85));
    until tstring(Sign.Parent)~='PlayerModels';
end;

function Ancestor:MuteSound()
    repeat Stepped:wait()until LP.Character and LP.Character:FindFirstChild'Head';
    Character=LP.Character;
    LP.Character.Head.ChildAdded:Connect(function(Child)
        if tstring(Child)=='DestroyStructure'then 
            Child.Volume=0;
        end;
    end);
end;Ancestor:MuteSound();
LP.CharacterAdded:Connect(Ancestor.MuteSound);

Connections[#Connections+1]={Name='FlyBegan',Function=UIS.InputBegan:Connect(function(Key,Processed)
    if not Processed and Key.KeyCode==Enum.KeyCode[GUISettings.FlyKey]then 
        GUISettings.IsClientFlying=not GUISettings.IsClientFlying;
        if GUISettings.IsClientFlying then 
            Ancestor:Fly();
        end;
    elseif not Processed and Key.KeyCode==Enum.KeyCode[GUISettings.NoclipKey]then 
        GUISettings.Noclip=not GUISettings.Noclip;
    end;
end)};

function Ancestor:GetFlySpeed()
    local Frame=game:GetService("CoreGui").Ancestor.MainFrame.Sections.LocalPlayer.Sections.Frame:GetChildren()
    for i=1,#Frame do 
        local FlySpeed=Frame[i]; 
        if FlySpeed:FindFirstChild'Title'and FlySpeed.Title.Text=='Fly Speed'then 
            return tonumber(FlySpeed.Input.Text);
        end;
    end;
end;


-->Antikick 
lstring([[
local Args={...};
local LP,GUISettings,Ancestor_Loaded=Args[1],Args[2],Args[3];
local Antikick;
Antikick=hookmetamethod(game,'__namecall',function(...)
    if Ancestor_Loaded then
        local Method=getnamecallmethod()
        if Method=='Kick'and ...==LP then
            return;
        end;
        if Method=='InvokeServer'and tostring(...)=='RequestSave'and not GUISettings.DisableSaving then 
            return false;
        end;setnamecallmethod(Method)
    end;
    return Antikick(...);
end)]])(LP,GUISettings,Ancestor_Loaded);

lstring([[
local Args={...};
local Connections,Lighting,p_call=Args[3],Args[5],Args[6];
local LP,GUISettings,UIS,Stepped,Ancestor=Args[8],Args[1],Args[4],Args[2],Args[7];
Connections[#Connections+1]={Name='InfiniteJump',Function=UIS.JumpRequest:Connect(function()
    if GUISettings.InfiniteJump then
        LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping);
    end;
end)};
Connections[#Connections+1]={Name='Main',Function=Stepped:Connect(function()
    WalkSpeed=GUISettings.WalkSpeed;
    if UIS:IsKeyDown(Enum.KeyCode[GUISettings.SprintKey])then
        WalkSpeed=GUISettings.WalkSpeed+GUISettings.SprintSpeed;
        if GUISettings.IsClientFlying then 
            GUISettings.FlySpeed=Ancestor:GetFlySpeed()+GUISettings.SprintSpeed;
        end;
    elseif not UIS:IsKeyDown(Enum.KeyCode[GUISettings.SprintKey])and GUISettings.IsClientFlying then 
        GUISettings.FlySpeed=Ancestor:GetFlySpeed()
    end;
    if LP.Character and LP.Character:FindFirstChild'Humanoid'and GUISettings.ActivateCarModifications then 
        if LP.Character.Humanoid.SeatPart and LP.Character.Humanoid.SeatPart.Parent:FindFirstChild'Configuration'then 
            LP.Character.Humanoid.SeatPart.Parent.Configuration.MaxSpeed.Value=GUISettings.CarSpeed;
            LP.Character.Humanoid.SeatPart.Parent.RunSounds:FireServer('Set Pitch',GUISettings.CarPitch);
        end;
    end;
    if GUISettings.Noclip then 
        for i,v in next,LP.Character:GetChildren()do 
            if v:IsA'BasePart'then 
                v.CanCollide=false;
            end;
        end;
    end;
    if GUISettings.AlwaysDay then
        Lighting.TimeOfDay='12:00:00';
    elseif GUISettings.AlwaysNight then
        Lighting.TimeOfDay='2:00:00';
    end;
    if GUISettings.NoFog then 
        Lighting.FogEnd=1000000;
    end;
    p_call(function()
        LP.Character.Humanoid.WalkSpeed=WalkSpeed;
        LP.Character.Humanoid.JumpPower=GUISettings.JumpPower;
        LP.Character.Humanoid.HipHeight=GUISettings.HipHeight;
    end);
end)}]])(GUISettings,Stepped,Connections,UIS,Lighting,p_call,Ancestor,LP);

--> Future Feature
-- lstring([[
-- local InteractionRange;
-- local LP=LP;
-- local Mouse=LP:GetMouse();
-- local Character=LP.Character;
-- local Head=Character.Head;
-- InteractionRange=hookmetamethod(game,'__index',function(self,key)
--     if self==Head and key=='Position'and not workspace:FindFirstChild'Dragger'then
--         return Mouse.hit.p;
--     end;
--     return InteractionRange(self,key);
-- end);]])();

function Ancestor:Notify(title, text, duration)
    if Ancestor_Loaded then 
        StarterGui:SetCore('SendNotification',{Title=title,Text=text,Duration=duration});
    end;
end;

if not isfile('AncestorSlotNames.cfg')then 
    local DefaultSlotNames={};
    DefaultSlotNames[LP.Name]={Slot1='Slot 1',Slot2='Slot 2',Slot3='Slot 3',Slot4='Slot 4',Slot5='Slot 5',Slot6='Slot 6'};
    writefile('AncestorSlotNames.cfg',HttpService:JSONEncode(DefaultSlotNames));
end;

local AncestorSlotNames=HttpService:JSONDecode(readfile('AncestorSlotNames.cfg'));
local DoesPlayerExist=AncestorSlotNames[tstring(LP.Name)]~=nil;

if not DoesPlayerExist then 
    local DefaultSlotNames={};
    DefaultSlotNames={Slot1='Slot 1',Slot2='Slot 2',Slot3='Slot 3',Slot4='Slot 4',Slot5='Slot 5',Slot6='Slot 6'};
    local SlotNamesOld=HttpService:JSONDecode(readfile('AncestorSlotNames.cfg'));
    SlotNamesOld[tstring(LP.Name)]=DefaultSlotNames
    writefile('AncestorSlotNames.cfg',HttpService:JSONEncode(SlotNamesOld));
end;

local Slots=HttpService:JSONDecode(readfile('AncestorSlotNames.cfg'))
local SlotNames=Slots[tstring(LP.Name)];

function Ancestor:SaveSlotNames()
    local SlotNamesOld=HttpService:JSONDecode(readfile('AncestorSlotNames.cfg'));
    SlotNamesOld[tstring(LP.Name)]=nil;
    SlotNamesOld[tstring(LP.Name)]=SlotNames
    writefile('AncestorSlotNames.cfg',HttpService:JSONEncode(SlotNamesOld));
    SendUserNotice:Fire'Saved Slot Names';
end;

function Ancestor:SaveConfigurationFile()writefile('AncestorV2Configuration.cfg',HttpService:JSONEncode(GUISettings));SendUserNotice:Fire'Saved Configuration File!';end;

function Ancestor:DeleteConfigurationFile()delfile('AncestorV2Configuration.cfg');SendUserNotice:Fire'Deleted Configuration File!';end;

-->CS Antiban
gs(LP.PlayerGui.LoadSaveGUI.LoadSaveClient.LocalScript).ban=function()return Ancestor:Notify('Ancestor','Ban Blocked')end;p_call(function()RepStore.Interaction.Ban:Destroy()warn'Antiban Loaded'end);

--Function Library
function Ancestor:DoesSaveExist(Slot)
    local Data=GetMetaData:InvokeServer(LP);
    for i=1,#Data do
        if i==Slot and Data[i].SaveMeta[#Data[i].SaveMeta] then
            local Datasize=Data[i].SaveMeta[#Data[i].SaveMeta].NumKeys;
            if Datasize>3 or MFloor(PerformanceStats.Ping:GetValue())>250 then 
                SendUserNotice:Fire('Loading may take some time at this moment. be patient...');
            end;
            return Datasize;
        end;
    end;Ancestor:Notify('Ancestor','No Data Found For Slot '..tstring(Slot));
end;


function Ancestor:GetPlayersSlotInfo(Client)
    local Data=GetMetaData:InvokeServer(Players[tstring(Client)]);
    local Info={};
    for i=1,#Data do
        if Data[i].SaveMeta[#Data[i].SaveMeta]then
            local Datasize=Data[i].SaveMeta[#Data[i].SaveMeta].NumKeys;
            Info[#Info+1]=Datasize;
        end;
    end;
    return Info;
end;

function Ancestor:GetCashiers()
    local CashierList={};
    local Stores=workspace.Stores:GetChildren()
    for i=1,#Stores do 
        local Store=Stores[i];
        local Cashiers=Store:GetChildren();
        for i=1,#Cashiers do 
            local Cashier=Cashiers[i]
            if Cashier:FindFirstChild'Head'then 
                CashierList[#CashierList+1]=Cashier
            end;
        end;
    end;
   return CashierList;
end;

function Ancestor:GetCashierInfo(item)
    local Cashiers=Ancestor:GetCashiers()
    local Max,NearestCashier=9e9,nil;
    for i=1,#Cashiers do 
        local Cashier=Cashiers[i];
        if(item.Main.CFrame.p-Cashier.Head.CFrame.p).Magnitude<Max then 
            NearestCashier=Cashier;
            Max=(LP.Character.Head.CFrame.p-Cashier.Head.CFrame.p).Magnitude;
        end;
    end;
    return tstring(NearestCashier),CashiersAutobuy[tstring(NearestCashier)]
end;

function Ancestor:BuyItem(item)
    local Cashier,CashierID=Ancestor:GetCashierInfo(item);
    if Cashier and CashierID then PlayerChatted:InvokeServer({Character=Cashier,Name=Cashier,ID=CashierID},'ConfirmPurchase');end;
end;

function Ancestor:AntiAFK(state)
    local AntiAFK=gc(LP.Idled)[1];
    if state then 
	    AntiAFK:Disable();
    else
        AntiAFK:Enable();
    end;
end;    

function Ancestor:GetItemInfo(SelectedItem,Type)
    local Paths={game:GetService("ReplicatedStorage").Purchasables.Structures.HardStructures,game:GetService("ReplicatedStorage").Purchasables.Structures.BlueprintStructures,game:GetService("ReplicatedStorage").Purchasables.Other,game:GetService("ReplicatedStorage").Purchasables.Tools.AllTools,game:GetService("ReplicatedStorage").Purchasables.WireObjects,game:GetService("ReplicatedStorage").Purchasables.Vehicles};
    for i=1,#Paths do 
        local Folder=Paths[i]:GetChildren();
        for i=1,#Folder do 
            local Item=Folder[i];
            local ItemName=Item:FindFirstChild'ItemName';
            if Type=='Name'then
                if ItemName and ItemName.Value..' '==tstring(SelectedItem):split('-')[1] then 
                    AutobuySelectedItem=tstring(Item)
                    return tstring(Item);
                end;
            end;
            if Type=='Price'then 
                if tstring(Item)==tstring(SelectedItem)then 
                    return tonumber(Item.Price.Value)*AutobuyAmount;
                end;
            end;
        end;
    end;
    return false;
end;

function Ancestor:GetStoreItems()
    return lstring(game:HttpGetAsync'https://ancestordevelopment.wtf/lua/AutobuyList.lua')();
    -- local Paths={game:GetService("ReplicatedStorage").Purchasables.Structures.HardStructures,game:GetService("ReplicatedStorage").Purchasables.Structures.BlueprintStructures,game:GetService("ReplicatedStorage").Purchasables.Other,game:GetService("ReplicatedStorage").Purchasables.Tools.AllTools,game:GetService("ReplicatedStorage").Purchasables.WireObjects,game:GetService("ReplicatedStorage").Purchasables.Vehicles};
    -- local Items={'Basic Hatchet - $12','Rukiryaxe - $7400'};
    -- local function Check(i,StoreItem)
    --     if tstring(i)==tstring(StoreItem)then 
    --         local ItemName=i:FindFirstChild'BoxItemName'or i:FindFirstChild'ItemName';
    --         Items[#Items+1]=tstring(ItemName.Value..' - $'..i.Price.Value);
    --     end;
    -- end;
    -- for i=1,#StoreChildren do 
    --     local Store=StoreChildren[i];
    --     if tstring(Store)=='ShopItems'then
    --         local StoreItems=Store:GetChildren();
    --         for i=1,#StoreItems do 
    --             local StoreItem=StoreItems[i];
    --             for i=1,#Paths do 
    --                 local Folder=Paths[i]:GetChildren();
    --                 for i=1,#Folder do 
    --                     local Item=Folder[i];
    --                     local ItemName=Item:FindFirstChild'ItemName';
    --                     if ItemName and table.find(Items,tstring(ItemName.Value..' - $'..Item.Price.Value))==nil then 
    --                         Check(Item,StoreItem)
    --                     end;
    --                 end;
    --             end;
    --         end;
    --     end;
    -- end;
    -- return Items;
end;

--Using this method leaves the clientside checks intact
function Ancestor:Donate(Amount,Recipient)setupvalue(DonateClient.sendDonation,1,Recipient);setupvalue(DonateClient.sendDonation,3,Amount);DonateClient.sendDonation();end;

function Ancestor:GetConnection(Connection,DisconnectConnection)
    for i=1,#Connections do 
        if Connections[i].Name==Connection then 
            if DisconnectConnection then 
                Connections[i].Function:Disconnect();
                return table.remove(Connections,i);
            end;
            return Connections[i].Function;
        end;
    end;
    return false;
end;

-->Function library
function Ancestor:GetClientMoney()return LP.leaderstats.Money.Value;end;

function Ancestor:GetLoadedSlot()return LP.CurrentSaveSlot.Value;end;

function Ancestor:UpdateAxeInfo()
    if not AxeNameLabel or not AxeRangeLabel or not AxeCooldownLabel then return end
    if Character:FindFirstChild'Tool'then 
        local Tool=Character:FindFirstChild'Tool';
        repeat Stepped:wait()until gc(Tool.Activated)[1]~=nil;
        local AttemptChop=gc(Tool.Activated)[1].Function;
        local Stats=getupvalues(AttemptChop)[1];
        AxeNameLabel:UpdateText('Name: '..Character.Tool.ToolName.Value);
        AxeRangeLabel:UpdateText('Range: '..tstring(Stats.Range));
        AxeCooldownLabel:UpdateText('Cooldown: '..tstring(Stats.SwingCooldown));
    else
        AxeNameLabel:UpdateText('Current Axe Not Found');
        AxeRangeLabel:UpdateText('Range: Not Currently Available');
        AxeCooldownLabel:UpdateText('Cooldown: Not Currently Available');
    end;
end;
Connections[#Connections+1]={Name='UpdateAxeEquip',Function=Stepped:Connect(function(Tool)
    p_call(function()
        Ancestor:UpdateAxeInfo();
    end);
end)}
function Ancestor:FixCashierRange(bool)
    if bool=='Disable'then 
        return Ancestor:GetConnection('FixCashierRange',true)
    end;
    local Cashiers=Ancestor:GetCashiers()
    Connections[#Connections+1]={Name='FixCashierRange',Function=Stepped:Connect(function()
        if Character and Character:FindFirstChild'Head'then
            local Min,NearestCashier=9e9,nil;
            for i=1,#Cashiers do 
                local Cashier=Cashiers[i];
                if(LP.Character.Head.CFrame.p-Cashier.Head.CFrame.p).Magnitude<Min then 
                    NearestCashier=Cashier;
                    Min=(LP.Character.Head.CFrame.p-Cashier.Head.CFrame.p).Magnitude;
                end;
            end;
            if(LP.Character.Head.CFrame.p-NearestCashier.Head.CFrame.p).Magnitude<=10 then 
                LP.PlayerGui.ChatGUI.PromptChat.PromptText.Text='Chat with '..tstring(NearestCashier)
                NPCChattingClient.setPromptVisibility(true);
            else
                NPCChattingClient.setPromptVisibility(false);
            end;
        end;
    end)};
end;

function Ancestor:CanClientLoad()
    if not Client_May_Load:InvokeServer(LP)then 
        Ancestor:Notify('Ancestor','Waiting for Load timeout. please wait...')
        repeat Stepped:wait()until Client_May_Load:InvokeServer(LP);
    end;
    return true;
end;

function Ancestor:LoadSlot(Slot) 
    if not Ancestor:DoesSaveExist(Slot)then return end;
    Ancestor:CanClientLoad();if Ancestor:GetLoadedSlot()~=-1 and not Ancestor.MoneyDuping and not GUISettings.DisableSaving then Ancestor:SaveSlot();Ancestor:FastDeload();end;
    C_R(C_C(function()Is_Client_Loaded=Request_Load:InvokeServer(Slot,LP)end));
    Connections[#Connections+1]={Name='ClientLoaded',Function=LP.CurrentlySavingOrLoading:GetPropertyChangedSignal'Value':Connect(function()
        if not LP.CurrentlySavingOrLoading.Value then
            Ancestor:GetConnection('ClientLoaded',true);
        end;
    end)};
    repeat Stepped:wait()PropertyPurchasingClient:selectionMade()until typeof(Ancestor:GetConnection'ClientLoaded')~='RBXScriptConnection';
    Ancestor:Set(Slot);
    SendUserNotice:Fire('Loaded Slot '..tstring(Ancestor:GetLoadedSlot()),1);
end;

function Ancestor:SaveSlot()Request_Save:InvokeServer(Ancestor:GetLoadedSlot(),LP);end;

function Ancestor:GiveBTools()if LP.Backpack:FindFirstChildOfClass'HopperBin'then return end;for i=1,4 do instance.new('HopperBin',LP.Backpack).BinType=i;end;end;

function Ancestor:Teleport(cf)
    repeat wait()until Character:FindFirstChild('HumanoidRootPart');
    xp_call(function()
        Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(cf*CFrame.Angles(math.rad(Character.Humanoid.SeatPart.Parent.PrimaryPart.Orientation.X),math.rad(Character.Humanoid.SeatPart.Parent.PrimaryPart.Orientation.Y),math.rad(Character.Humanoid.SeatPart.Parent.PrimaryPart.Orientation.Z)));
    end,function()
        Character:SetPrimaryPartCFrame(cf);
    end);
end;

function Ancestor:SafeSuicide()
    xp_call(function()
        Character.Head:Destroy();
    end,function()Ancestor:Notify('Ancestor','Character is already dead')end);
end;

function Ancestor:DupeMoney()
    if Ancestor.MoneyDuping then 
        SendUserNotice:Fire'Already Duping Money!';
        return;
    end;
    Ancestor.MoneyDuping=true;
    for i=1,DupeMoneyQuantity do 
        if not Ancestor.MoneyDuping then 
            SendUserNotice:Fire'Aborted Money Dupe';
            break;
        end;
        Ancestor:CanClientLoad();
        C_R(C_C(function()
            local Success=Donate:InvokeServer(LP,Ancestor:GetClientMoney(),Ancestor:GetLoadedSlot());
            if not Success then 
                Ancestor:Notify('Ancestor','Waiting for donation... please wait!');
                repeat Stepped:wait()until Donate:InvokeServer(LP,Ancestor:GetClientMoney(),Ancestor:GetLoadedSlot());
            end;
        end));
        repeat Stepped:wait()until Ancestor:GetClientMoney()==0;
        Connections[#Connections+1]={Name='DupeMoney',Function=LP.leaderstats.Money:GetPropertyChangedSignal'Value':Connect(function()
            if Ancestor:GetClientMoney()>20 then
                C_R(C_C(function()
                    for i=1,2 do 
                        Ancestor:SaveSlot();
                        fwait(2);
                    end;
                    Ancestor:GetConnection('DupeMoney',true);
                end));
                SendUserNotice:Fire('Duped Money '..tstring(i)..' Times!');
            end;
        end)};
        Ancestor:LoadSlot(Ancestor:GetLoadedSlot());
		repeat Stepped:wait()until typeof(Ancestor:GetConnection'DupeMoney')~='RBXScriptConnection';
    end;
    Ancestor.MoneyDuping=false;
end;

function Ancestor:SetAxeRange(Active,Value)
    local Tool=Character:FindFirstChildOfClass'Tool';
    if not Tool or not AxeRangeLabel then return end;
    local AttemptChop=gc(Tool.Activated)[1].Function;
    local OldStats=getupvalues(AttemptChop);
    local NewStats=OldStats[1];
    if Active then
        NewStats.Range=Value;
    else
        NewStats.Range=R_Module(RepStore.Purchasables.Tools.AllTools:FindFirstChild(tstring(Tool.ToolName.Value)).AxeClass).new().Range;
    end;
    AxeRangeLabel:UpdateText('Range: '..tstring(NewStats.Range));
    setupvalue(AttemptChop,1,NewStats);
end;

function Ancestor:SetSwingCooldown(Active)
    local Tool=Character:FindFirstChildOfClass'Tool';
    if not Tool or not AxeCooldownLabel then return end;
    local AttemptChop=gc(Tool.Activated)[1].Function;
    local OldStats=getupvalues(AttemptChop);
    local NewStats=OldStats[1];
    NewStats.SwingCooldown=(Active and 0.02)or R_Module(RepStore.Purchasables.Tools.AllTools:FindFirstChild(tstring(Tool.ToolName.Value)).AxeClass).new().SwingCooldown;
    AxeCooldownLabel:UpdateText('Cooldown: '..tstring(NewStats.SwingCooldown));
    setupvalue(AttemptChop,1,NewStats);
end;

Connections[#Connections+1]={Name='AxeModificationHandler',Function=Character.ChildAdded:Connect(function(Tool)
    if Tool:IsA'Tool'then
        repeat Stepped:wait()until gc(Tool.Activated)[1]
        if GUISettings.AxeRangeActive then 
            Ancestor:SetAxeRange(true,GUISettings.AxeRange);
        end;
        if GUISettings.AxeSwingActive then 
            Ancestor:SetSwingCooldown(true,GUISettings.AxeSwing);
        end;
    end;
end)};
Connections[#Connections+1]={Name='EffectRemover',Function=Stepped:Connect(function(Effect)
    local Effects=wrkspc.Effects:GetChildren();
    for i=1,#Effects do 
        local Effect=Effects[i];
        if tstring(Effect)=='StructureModel'then return end;
        Effect:Destroy();
    end;
end)};

function Ancestor:GetTree()
    local workspaceChildren=workspace:GetChildren();
    for i=1,#workspaceChildren do
        if tstring(workspaceChildren[i])=='TreeRegion'then 
            local Trees=workspaceChildren[i]:GetChildren();
            for i=1,#Trees do 
                local Tree=Trees[i]
                if Tree:FindFirstChild'WoodSection'and Tree:FindFirstChild'TreeClass'and Tree.TreeClass.Value==Ancestor.SelectedTreeType and Tree.WoodSection.Size.Y>.5 and #Tree:GetChildren()>=15 and Tree.WoodSection.ID.Value==1 then 
                    SelectedTree=Tree.WoodSection
                    return SelectedTree;
                end;
            end;
        end;
    end;
end;

function Ancestor:AttemptChop(Tree)
    local Axe=Ancestor:GetBestAxe();
    if not Axe then return end
    local Hitpoint=Ancestor:GetHitPoint(Axe)
    local CutEvent=Tree.Parent:FindFirstChild'CutEvent';
    RemoteProxy:FireServer(CutEvent,{['tool']=Axe,['faceVector']=vector3.new(1,0,0),['height']=.32,['sectionId']=1,['hitPoints']=Hitpoint,['cooldown']=-14,['cuttingClass']='Axe'})
end;

function Ancestor:BringTree()
    local Tool=Ancestor:GetBestAxe()
    if not Tool then return Ancestor:Notify('Ancestor','You need an axe to use this feature!') end;
    local OldPos=Character.HumanoidRootPart.CFrame
    for i=1,Ancestor.BringTreeAmount do
        local Tree=Ancestor:GetTree();
        Character:SetPrimaryPartCFrame(cframe.new(Tree.CFrame.p+vector3.new(4,0,4)));
        Connections[#Connections+1]={Name='BringTree',Function=workspace.LogModels.ChildAdded:Connect(function(Tree)
            local Owner=Tree:WaitForChild'Owner';
            if Owner.Value==LP then 
                Tree.PrimaryPart=Tree:FindFirstChild'WoodSection';
                for i=1,10 do 
                    ClientRequestOwnership:FireServer(Tree);
                    ClientIsDragging:FireServer(Tree);
                    Tree:SetPrimaryPartCFrame(OldPos);
                    Stepped:wait();
                end;
                Ancestor:GetConnection('BringTree',true);
                SelectedTree=nil;
            end;
        end)};
        repeat Stepped:wait()Ancestor:AttemptChop(Tree)until typeof(Ancestor:GetConnection'BringTree')~='RBXScriptConnection';
    end;
    Character:SetPrimaryPartCFrame(OldPos);
end;

function Ancestor:ApplyLight()
    if not GUISettings.Light then
        if Character.Head:FindFirstChild'Ancestor'then
            return Character.Head.Ancestor:Destroy();
        end;
        return;
    end;local Light=instance.new('PointLight',Character.Head);Light.Name,Light.Range,Light.Brightness='Ancestor',150,1.7;
end;

function Ancestor:GetPlayersBase(Player)
    if not Player then Player=LP;end;
    for i=1,#Plots do 
		local Plot=Plots[i];
        if Plot.Owner.Value==Player then 
            return Plot;
		end;
    end;
    return false;
end;

function Ancestor:GetStructureColour(Structure)
    if Structure:FindFirstChild'BlueprintWoodClass'then 
        return tstring(Structure.BlueprintWoodClass.Value);
    end;
    return'nil';
end;

function Ancestor:SaveBaseToFile(plr,Name)
    local Plot=Ancestor:GetPlayersBase()
    if not Plot then 
        return SendUserNotice:Fire'Player has no plot loaded';
    end;
    local OriginCFrame,Blueprints=Plot.OriginSquare.CFrame.p,'';
    local PlayerModels=workspace.PlayerModels:GetChildren()
    for i=1,#PlayerModels do 
        local Blueprint=PlayerModels[i];
        if Blueprint:FindFirstChild'ItemName'and Blueprint:FindFirstChildOfClass'Part'and RepStore.Purchasables.Structures.BlueprintStructures:FindFirstChild(tstring(Blueprint.ItemName.Value))then 
            local MainCFrame=(Blueprint:FindFirstChild'MainCFrame'and Blueprint:FindFirstChild'MainCFrame'.Value)or Blueprint:FindFirstChild'BuildDependentWood'.CFrame
            BlueprintType,BlueprintWoodClass=Blueprint.ItemName.Value,Ancestor:GetStructureColour(Blueprint);
            Blueprints=Blueprints..''..BlueprintType..'&'..tstring(MainCFrame-OriginCFrame)..'&'..BlueprintWoodClass..'[Ancestor]';
        end;
    end;
    writefile(Name..'.AncestorV2',Blueprints)
    SendUserNotice:Fire('Saved Base!')
end;

function Ancestor:LoadBaseFromFile(File)
    if not isfile(File..'.AncestorV2')then 
       return SendUserNotice:Fire('File does not exist');
    end;
    if not Ancestor:GetPlayersBase() then 
        return SendUserNotice:Fire('Player has no plot loaded!');
    end;
    local PlotToBuildOn=Ancestor:GetPlayersBase().OriginSquare.CFrame.p;
    File=readfile(File..'.AncestorV2'):split('[Ancestor]');
    local WoodClasses={};
    for i=1,#File do
        local StructurePlaced;
        local StructureFilled;
        local Structure=File[i]:split'&';
        local BlueprintType,WoodClass,BlueprintCFrame=Structure[1],Structure[3],Structure[2];
        if WoodClass and not WoodClasses[WoodClass]then
            WoodClasses[WoodClass]={Amount=0,Type=WoodClass};
        end;
        for _,WoodClass in next,WoodClasses do 
            if tstring(WoodClass.Type)==tstring(WoodClass)then 
                WoodClass.Amount=WoodClass.Amount+1;
            end;
        end;
        if BlueprintCFrame then
            local Plank;
            for _,PlankIdk in next,workspace.PlayerModels:GetChildren()do 
                if PlankIdk:FindFirstChild'TreeClass'and PlankIdk.TreeClass.Value==WoodClass and PlankIdk.Owner.Value==LP then 
                    Plank=PlankIdk;
                end;
            end;
            Blueprints=BlueprintCFrame:split(',');
            BlueprintCFrame=cframe.new(tonumber(Blueprints[1]),tonumber(Blueprints[2]),tonumber(Blueprints[3]),tonumber(Blueprints[4]),tonumber(Blueprints[5]),tonumber(Blueprints[6]),tonumber(Blueprints[7]),tonumber(Blueprints[8]),tonumber(Blueprints[9]),tonumber(Blueprints[10]),tonumber(Blueprints[11]),tonumber(Blueprints[12]));
            StructurePlaced=workspace.PlayerModels.ChildAdded:Connect(function(Structure)
                local Owner,Type,MainCF=Structure:WaitForChild('Owner',5),Structure:WaitForChild('Type',5),Structure:WaitForChild('MainCFrame',5);
                if StructurePlaced and Owner.Value==LP and Type.Value=='Structure' and tstring(MainCF.Value)==tstring(BlueprintCFrame+PlotToBuildOn)then 
                    StructurePlaced:Disconnect();StructurePlaced=nil;
                end;
            end);
            StructureFilled=workspace.PlayerModels.ChildAdded:Connect(function(Structure)
                local Owner,Type=Structure:WaitForChild('Owner',5),Structure:WaitForChild('Type',5);
                if StructureFilled and Owner.Value==LP and Type.Value=='Structure'then 
                    StructureFilled:Disconnect();StructureFilled=nil;
                    ClientPlacedStructure:FireServer(tstring(Structure.ItemName.Value),BlueprintCFrame+PlotToBuildOn,LP,Structure.BlueprintWoodClass.Value,Structure,true);
                end;
            end);
            ClientPlacedBlueprint:FireServer(BlueprintType,Plank.WoodSection.CFrame,LP);
            repeat Stepped:wait()until not StructurePlaced;
        end;
    end;
end;

local Player=game.Players.LocalPlayer
local OldCFrame=Player.Character.HumanoidRootPart.CFrame

function Ancestor:GetAxes()
    local Axes={};
    local Tools=Player.Backpack:GetChildren();
    local CharacterTools=Player.Character:GetChildren();
    for i=1,#Tools do 
        local Axe=Tools[i]
        if Axe:FindFirstChild'CuttingTool'then
            Axes[#Axes+1]=Axe;
        end;
    end;
    for i=1,#CharacterTools do 
        local Axe=CharacterTools[i]
        if Axe:FindFirstChild'CuttingTool'then
            Axes[#Axes+1]=Axe;
        end;
    end;
    return Axes
end;

function Ancestor:DoesAxeExist()
    return Ancestor:GetAxes()[1]~=nil;
end;

function Ancestor:DropTools(Position)
    local Tools=Ancestor:GetAxes();
    for i=1,#Tools do 
        local Axe=Tools[i]
        if Axe:FindFirstChild'CuttingTool'then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(Axe,'Drop tool',Position or Character.HumanoidRootPart.CFrame);
        end;
    end;
end;

function Ancestor:DupeInventory()
    if not Ancestor:DoesAxeExist()then 
        SendUserNotice:Fire'You Need An Axe To Use This!';
        return false;
    end;
    local OldCFrame=LP.Character.HumanoidRootPart.CFrame
    C_R(C_C(function()
        while GUISettings.DupeInventory do 
            Stepped:wait()
            Ancestor:DropTools(OldCFrame);
            Connections[#Connections+1]={Name='DupeInventory',Function=LP.CharacterAdded:Connect(function(Character)
                repeat task.wait()until Character:FindFirstChild'HumanoidRootPart'; 
                Ancestor:GetConnection('DupeInventory',true)
            end)};
            LP.Character.Head:Destroy();
            repeat Stepped:wait()until typeof(Ancestor:GetConnection'DupeInventory')~='RBXScriptConnection';
        end;
        repeat Stepped:wait()until Character and Character:FindFirstChild'HumanoidRootPart';
        Character.HumanoidRootPart.CFrame=OldCFrame;
    end));
    return true;
end;

function Ancestor:MaxLand(Plot,IgnoreLimit)
    if not Ancestor:GetPlayersBase(LP)then 
        Ancestor:FreeLand();
        repeat Stepped:wait()until Ancestor:GetPlayersBase(LP)
    end;
    if not Plot then 
        Plot=Ancestor:GetPlayersBase(LP);
    end;
    local OriginSquare=Plot.OriginSquare;
    local children=#Plot:GetChildren()
    if children>=26 and GUISettings.DisableSaving and not IgnoreLimit then
        Ancestor:Notify('Error','Already Max-Landed',4);
        return;
    end;
    ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+40,OriginSquare.Position.Y,OriginSquare.Position.Z));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-40,OriginSquare.Position.Y,OriginSquare.Position.Z));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X,OriginSquare.Position.Y,OriginSquare.Position.Z+40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X,OriginSquare.Position.Y,OriginSquare.Position.Z-40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+40,OriginSquare.Position.Y,OriginSquare.Position.Z+40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+40,OriginSquare.Position.Y,OriginSquare.Position.Z-40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-40,OriginSquare.Position.Y,OriginSquare.Position.Z+40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-40,OriginSquare.Position.Y,OriginSquare.Position.Z-40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+80,OriginSquare.Position.Y,OriginSquare.Position.Z));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-80,OriginSquare.Position.Y,OriginSquare.Position.Z));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X,OriginSquare.Position.Y,OriginSquare.Position.Z+80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X,OriginSquare.Position.Y,OriginSquare.Position.Z-80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+80,OriginSquare.Position.Y,OriginSquare.Position.Z+80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+80,OriginSquare.Position.Y,OriginSquare.Position.Z-80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-80,OriginSquare.Position.Y,OriginSquare.Position.Z+80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-80,OriginSquare.Position.Y,OriginSquare.Position.Z-80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+40,OriginSquare.Position.Y,OriginSquare.Position.Z+80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-40,OriginSquare.Position.Y,OriginSquare.Position.Z+80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+80,OriginSquare.Position.Y,OriginSquare.Position.Z+40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+80,OriginSquare.Position.Y,OriginSquare.Position.Z-40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-80,OriginSquare.Position.Y,OriginSquare.Position.Z+40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-80,OriginSquare.Position.Y,OriginSquare.Position.Z-40));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X+40,OriginSquare.Position.Y,OriginSquare.Position.Z-80));ClientExpandedProperty:FireServer(Plot,cframe.new(OriginSquare.Position.X-40,OriginSquare.Position.Y,OriginSquare.Position.Z-80));
    if not IgnoreLimit then Ancestor:Teleport(cframe.new(Plot.OriginSquare.CFrame.p)+vector3.new(0,5,0));end;
end;

function Ancestor:GetFreeLand(Donate)
    local UnOwnedPlots={};
	for i=1,#Plots do 
		local Plot=Plots[i];
        if Plot.Owner.Value==nil then 
            if Donate then
                if not table.find(whitelistedPlots,tstring(Plot.OriginSquare.OriginCFrame.Value))then 
                    return Plot;
                end;
            end;
            UnOwnedPlots[#UnOwnedPlots+1]=Plot;
		end;
    end
    local Max,NearestPlot=9e9;
    for i=1,#UnOwnedPlots do 
        local Plot=UnOwnedPlots[i];
        if(Plot.OriginSquare.CFrame.p-LP.Character.Head.CFrame.p).Magnitude<Max then 
            NearestPlot=Plot;
            Max=(Plot.OriginSquare.CFrame.p-LP.Character.Head.CFrame.p).Magnitude;
        end;
    end;
    return NearestPlot;
end;

function Ancestor:GetClosestCounter(StoreItem)
local Min,ClosestCounter=9e9
    for i=1,#StoreChildren do 
        local Store=StoreChildren[i];
        if Store:FindFirstChild'Counter'then 
            local Counter=Store:FindFirstChild'Counter';
            if(Counter.CFrame.p-StoreItem.Main.CFrame.p).Magnitude<Min then 
                ClosestCounter=Counter;
                Min=(Counter.CFrame.p-StoreItem.Main.CFrame.p).Magnitude;
            end;
        end;
    end;
    return ClosestCounter;
end;

function Ancestor:Fly()
    local MaxSpeed,WeldOne,WeldTwo=9e9;
    repeat Stepped:wait()until Character and Character:FindFirstChild'Head';
    local Steer,BackSteer={Forward=0,Back=0,Left=0,Right=0},{Forward=0,Back=0,Left=0,Right=0};
    if not Character.Humanoid.SeatPart then
        Character.Humanoid.PlatformStand=true;
    end;
    if Character.Humanoid.SeatPart then
        Car=Character.Humanoid.SeatPart;
        WeldOne=instance.new('Weld',Character.Humanoid.SeatPart);WeldTwo=instance.new('Weld',Character.HumanoidRootPart);
        WeldOne.Part0=Character.HumanoidRootPart
        WeldOne.Part1=Character.Humanoid.SeatPart
        WeldTwo.Part0=Character.HumanoidRootPart
        WeldTwo.Part1=Character.Humanoid.SeatPart			
    end;
    function Fly()
        GUISettings.WaterFloat=false;
        local Gyro=instance.new('BodyGyro',Character.HumanoidRootPart);
        Gyro.P=9e4;
        Gyro.maxTorque=vector3.new(9e9,9e9,9e9);
        Gyro.CFrame=Character.HumanoidRootPart.CFrame;
        local Velocity=instance.new('BodyVelocity',Character.HumanoidRootPart);
        Velocity.Velocity=vector3.new(0,0.1,0);
        Velocity.maxForce=vector3.new(9e9, 9e9, 9e9);
        GUISettings.Noclip=true;
        repeat Stepped:wait()
            local FlySpeed,SteerSpeed=GUISettings.FlySpeed,50;
            if Steer.Left+Steer.Right~=0 or Steer.Forward+Steer.Back~=0 then
                SteerSpeed=FlySpeed;
                if SteerSpeed>MaxSpeed then
                    SteerSpeed=MaxSpeed;
                end;
            elseif not(Steer.Left+Steer.Right~=0 or Steer.Forward+Steer.Back~=0)and speed~=0 then
                SteerSpeed=SteerSpeed-50;
                if SteerSpeed<0 then
                    FlySpeed=0;
                end;
            end;
            if(Steer.Left + Steer.Right)~=0 or(Steer.Forward+Steer.Back)~=0 then
                Velocity.Velocity=((wrkspc.CurrentCamera.CoordinateFrame.lookVector*(Steer.Forward+Steer.Back))+((wrkspc.CurrentCamera.CoordinateFrame*cframe.new(Steer.Left+Steer.Right,(Steer.Forward+Steer.Back)*.2,0).p)-wrkspc.CurrentCamera.CoordinateFrame.p))*SteerSpeed;
                BackSteer={Forward=Steer.Forward,Back=Steer.Back,Left=Steer.Left,Right=Steer.Right}
            elseif(Steer.Left+Steer.Right==0 or Steer.Forward+Steer.Back==0)and SteerSpeed~=0 then
                Velocity.Velocity=((wrkspc.CurrentCamera.CoordinateFrame.lookVector*(BackSteer.Forward+BackSteer.Back))+((wrkspc.CurrentCamera.CoordinateFrame*cframe.new(BackSteer.Left+BackSteer.Right,(BackSteer.Forwardorward+BackSteer.Back)*.2,0).p)-wrkspc.CurrentCamera.CoordinateFrame.p))*SteerSpeed;
            else
                Velocity.Velocity=vector3.new(0,0.1,0);
            end;
            Gyro.CFrame = wrkspc.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad((Steer.Forward+Steer.Back)*50*SteerSpeed/MaxSpeed),0,0);
        until not GUISettings.IsClientFlying;
        Gyro:Destroy()
        Velocity:Destroy()
        if WeldOne and WeldTwo then 
            WeldOne:Destroy();
            WeldTwo:Destroy();
            Ancestor:Teleport(cframe.new(Car.CFrame.p))
        end;
        GUISettings.Noclip=false;
        LP.Character.Humanoid.PlatformStand=false;
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key:lower()=='w'then
            isWDown=true;
            Steer.Forward=1;
        elseif Key:lower()=='a'then
            isADown=true;
            Steer.Left=-1;
        elseif Key:lower()=='s'then
            isSDown=true;
            Steer.Back=-1;
        elseif Key:lower()=='d'then
            isSDown=true;
            Steer.Right=1;
        end;
    end);
    Mouse.KeyUp:Connect(function(Key)
        if Key:lower()=='w'then
            isWDown=false;
            Steer.Forward=0;
        elseif Key:lower()=='a'then
            isADown=false;
            Steer.Left=0;
        elseif Key:lower()=='s'then
            isSDown=false;
            Steer.Back=0;
        elseif Key:lower()=='d'then
            isDDown=false;
            Steer.Right=0;
        end;
    end);
    Fly()
end;

function Ancestor:GetStoreItem(Item)
    for i=1,#StoreChildren do 
        local Store=StoreChildren[i];
        if tstring(Store)=='ShopItems'then
            local StoreItems=Store:GetChildren();
            for i=1,#StoreItems do 
                local StoreItem=StoreItems[i];
                if tstring(StoreItem)==Item then  
                    return StoreItem,Ancestor:GetClosestCounter(StoreItem); 
                end
            end;
        end;
    end;
end;

function Ancestor:Whitelist(Player,Value)
    if not Player then Player=LP;end;
    ClientSetListPlayer:InvokeServer(LP.WhitelistFolder,Player,Value);
end;

function Ancestor:FreeLand()
    if Ancestor:GetPlayersBase(LP)and GUISettings.DisableSaving then 
        Ancestor:Notify('Error','You already have a plot!',4);
        return;
    end;
    local Plot=Ancestor:GetFreeLand(true)--(BaseDuping and Ancestor:GetFreeLand(true))or Ancestor:GetFreeLand();
    ClientPurchasedProperty:FireServer(Plot,Plot.OriginSquare.CFrame.p);
    if not BaseDuping then
        Ancestor:Teleport(cframe.new(Plot.OriginSquare.CFrame.p)+vector3.new(0,5,0));
    end;
end;

function Ancestor:ClaimAllFreePlots(MaxLand)
    local NewPlots={};
    local OldPlayerPosition=Character.HumanoidRootPart.CFrame.p;
    if Ancestor:GetPlayersBase(LP)then 
        Ancestor:Notify('Error','Unload Your Base Before Using This!',4);
        return;
    end;
    for i=1,#Plots do 
		local Plot=Plots[i];
        if Plot.Owner.Value==nil then 
            Ancestor:Teleport(cframe.new(Plot.OriginSquare.CFrame.p+vector3.new(0,5,0)));
            repeat Stepped:wait()ClientIsDragging:FireServer(Plot)until Plot.Owner.Value==LP;
            if MaxLand then 
                NewPlots[#NewPlots+1]=Plot;
            end;
		end;
    end;
    if MaxLand then
        SendUserNotice:Fire'Lagging Server. This Will Eventually Kill It. Did I Mention There\'s No Going Back? No? Oh...' 
        for i=1,#NewPlots do 
        local Plot=NewPlots[i]
            task.spawn(function()
                while Stepped:wait()do
                    Ancestor:MaxLand(Plot,true);
                    for i,v in next,Plot:GetChildren()do 
                        if tstring(v)=='Square'then
                            v:Destroy();
                        end;
                    end;
                end;
            end);
        end;
    end;
    if not MaxLand then
        Ancestor:Teleport(OldPlayerPosition)
        SendUserNotice:Fire'Claimed All Plots!';
    end;
end;

function Ancestor:DonateBase(NewMethod)
    if GUISettings.DisableSaving then return Ancestor:Notify('Ancestor','Disable slot saving to use this feature!')end;
    local Plot=Ancestor:GetPlayersBase();
    if Plot then SendUserNotice:Fire('Force unloading. next time don\'t use this while loaded.Please wait...')Ancestor:CanClientLoad();Request_Load:InvokeServer(-1,LP);end;
	local Properties=workspace.Properties:GetChildren()
	for i=1,#Properties do 
	    local Property=Properties[i];
		if Property.Owner.Value==nil then
			if table.find(whitelistedPlots,tstring(Property.OriginSquare.OriginCFrame.Value))then
                FoundPlot=true;
			end;
		end;
	end;
	if not FoundPlot then 
	    return SendUserNotice:Fire'No Supported Plot Located!';
	end;
	BaseDuping=true;
    setthreadidentity(2);
    C_R(C_C(function()
        Request_Load:InvokeServer(Ancestor.BaseToDupe)
    end));setthreadidentity(8);
    if NewMethod then
        repeat Stepped:wait()until not LP.OwnsProperty.Value;
        Ancestor:FreeLand(true);
        repeat Stepped:wait()until Ancestor:GetModelByName('PropertySoldSign');
        Ancestor:GetModelByName('PropertySoldSign'):Destroy();
    end;
	repeat Stepped:wait()until LP.OwnsProperty.Value;
    Ancestor:Set(Ancestor.BaseToDupe);
	repeat Stepped:wait()until Ancestor:GetLoadedSlot()==Ancestor.BaseToDupe;
	local OldPos=LP.Character.HumanoidRootPart.CFrame.p;
	Ancestor:Whitelist(false,true);
    if not NewMethod then
        for i=1,3 do
            local Plot=Ancestor:GetFreeLand()
            Ancestor:Teleport(cframe.new(Plot.OriginSquare.CFrame.p+vector3.new(0,5,0)));
            repeat Stepped:wait()ClientIsDragging:FireServer(Plot)until Plot.Owner.Value==LP;
        end;
    end;
    Ancestor:Teleport(cframe.new(OldPos));
    SendUserNotice:Fire('Please wait. Ancestor Will Inform You When The Donation Has Completed.\n DO NOT LEAVE THE SERVER UNTIL THIS IS COMPLETE!');
    Ancestor:Teleport(cframe.new(Ancestor:GetPlayersBase().OriginSquare.CFrame.p+vector3.new(0,5,0)))
	Ancestor:CanClientLoad();
	Request_Load:InvokeServer(-1,LP);
	Ancestor:Set(-1)
    Ancestor:Whitelist(false,false);
    SendUserNotice:Fire('Successfully donated base!');
	BaseDuping=false;
end;

function Ancestor:FastDeload()
    if BaseDuping or not GUISettings.FastDeloader then return end;
    local PlayerModels=wrkspc.PlayerModels:GetChildren();
    for i=1,#PlayerModels do 
        local Model=PlayerModels[i];
        if Model:FindFirstChild'Owner'and Model.Owner.Value==LP then 
            DestroyStructure:FireServer(Model);
        end;
    end;
end;

function Ancestor:ResetCarSpeed()
    if not Character.Humanoid.SeatPart then return end;
    local CurrentVehicle=Character.Humanoid.SeatPart.Parent.ItemName.Value;
    local VehicleFolder=RepStore.Purchasables.Vehicles:GetDescendants();
    for i=1,#VehicleFolder do 
        local Vehicle=VehicleFolder[i];
        if tstring(Vehicle)==tstring(CurrentVehicle)then 
            Character.Humanoid.SeatPart.Parent.Configuration.MaxSpeed.Value=Vehicle.Model.Configuration.MaxSpeed.Value;
        end;
    end;
end;

RepStore.PropertyPurchasing.SelectLoadPlot.OnClientInvoke=function(...)
    setthreadidentity(2);
    if not BaseDuping then 
        return OldSelectLoad(...);
    end;
	local Properties=workspace.Properties:GetChildren()
	for i=1,#Properties do 
	    local Property=Properties[i];
		if Property.Owner.Value==nil then
			if table.find(whitelistedPlots,tstring(Property.OriginSquare.OriginCFrame.Value))then
                return Property,0;
			end;
		end;
	end;
    setthreadidentity(8);
end;

function Ancestor:GetPlotButtonByID(ID)
    local Amount=-1;
    local Buttons=LP.PlayerGui.LoadSaveGUI.SlotList.Main:GetChildren(); 
        for i=1,#Buttons do 
        local Button=Buttons[i];
        if Button.ClassName=='TextButton'then
            Amount=Amount+1
            if Amount==ID then
                return Button.SlotName;
            end;
        end;
    end;
end;
local CorrectThread=false;
C_R(C_C(function()
    setthreadidentity(2)
    LoadSaveClient.openList();
    LoadSaveClient.exitAll();
    setthreadidentity(8)
    CorrectThread=true;
    for i=1,6 do 
        local Base=Ancestor:GetPlotButtonByID(i);
        Base.TextScaled=true;
    end;
end));

Connections[#Connections+1]={Name='SlotNames',Function=Stepped:Connect(function()
    p_call(function()
        for i=1,6 do 
            local Base=Ancestor:GetPlotButtonByID(i);
            Base.TextScaled=true;
            Base.Text=SlotNames['Slot'..tstring(i)]
        end;
    end);
end)}

function Ancestor:DeleteSlot(SlotNumber)
    if Ancestor:GetLoadedSlot()~=-1 then SendUserNotice:Fire('Unloading Current Slot... Please wait');end;
    Request_Load:InvokeServer(-1,LP);
    Ancestor:Set(-1);
    Request_Save:InvokeServer(SlotNumber,LP); -- Deletes the slot
    SendUserNotice:Fire('Deleted Slot '..SlotNumber..'!')
end;

function Ancestor:DeleteTreeCS()
    local workspaceChildren=wrkspc:GetChildren();
    for i=1,#workspaceChildren do 
        local TreeRegion=workspaceChildren[i];
        if tstring(TreeRegion)=='TreeRegion'then 
            local Trees=TreeRegion:GetChildren();
            for i=1,#Trees do 
                local Tree=Trees[i];
                Tree:Destroy();
            end;
            Stepped:wait();
        end;
    end;
end;

function Ancestor:DarkMode(mode)   
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
    local openMenu=LP.PlayerGui.MenuGUI.Open
    
    createCorner(openMenu)
    openMenu.BackgroundColor3=color1
    openMenu.TextLabel.TextColor3=color2
    createCorner(openMenu.DropShadow)
    
    --Main Menu 
    local mainMenu=LP.PlayerGui.MenuGUI.Menu.Main
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
    local loadMenu=LP.PlayerGui.LoadSaveGUI;
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
    LP.PlayerGui.PropertyPurchasingGUI.SelectPurchase.Cost.BackgroundColor3=color1
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
    local selectPlot=LP.PlayerGui.PropertyPurchasingGUI
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
    local noticeUI=LP.PlayerGui.NoticeGUI.Notice.Main 
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
    local buyMoney=LP.PlayerGui.BuyMoneyGUI.BuyMoney 
    
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
    local whiteListGui=LP.PlayerGui.WhiteListGUI 
    
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
    local blackListGui=LP.PlayerGui.BlackListGUI 
    
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
    
    local sendMoney=LP.PlayerGui.DonateGUI 
    
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
    LP.PlayerGui.DonateGUI.Donate.Main.AmountLabel.BackgroundColor3=Color3.fromRGB(0,155,0);
    createCorner(LP.PlayerGui.DonateGUI.Donate.Main.AmountLabel)
    LP.PlayerGui.DonateGUI.Donate.Main.AmountLabel.TextColor3=color2
    --Changelog 
    local changeLog=LP.PlayerGui.ChangelogGUI
    
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
    local creditsUI=LP.PlayerGui.CreditsGUI
    
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
    
    local scr=getsenv(LP.PlayerGui.CreditsGUI.CreditsClient)
        local old=scr.openWindow
        local old2=scr.displayPage
        scr.openWindow=function()
            old()
            local creditsUI=LP.PlayerGui.CreditsGUI
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
        local creditsUI=LP.PlayerGui.CreditsGUI
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
    local onBoardingGUI=LP.PlayerGui.OnboardingGUI
    
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
    local chat=LP.PlayerGui.ChatGUI
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
    local itemDraggingGUI=LP.PlayerGui.ItemDraggingGUI
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
    local itemInfoGUI=LP.PlayerGui.ItemInfoGUI
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
    local interactionGUI=LP.PlayerGui.InteractionGUI
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
    LP.PlayerGui.InteractionGUI.OwnerShow.BackgroundColor3=color1;
    --StructureGui
    local structureDraggingGUI=LP.PlayerGui.StructureDraggingGUI
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
    local wireDraggingGUI=LP.PlayerGui.WireDraggingGUI
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
    LP.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.KeyLabel.TextSize=14;
    LP.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.TextSize=14
    LP.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.TextScaled=false;
    for _,v in next,LP.PlayerGui:GetDescendants()do 
        if v.Name=='KeyLabel'then 
            v.TextColor3=Color3.fromRGB(0,0,0);
        end;
    end;
    --Blueprints
    local scr=getsenv(LP.PlayerGui.Blueprints.LocalBlueprints)
    local old=scr.populateCategoryList
    scr.populateCategoryList=function()
        old()
        local blueprints=LP.PlayerGui.Blueprints
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
end;Ancestor:DarkMode'Dark';
function Ancestor:HardDragger(state)
    if not state then 
        Ancestor:GetConnection('HardDragger',true);
        return;
    end
    Connections[#Connections+1]={Name='HardDragger',Function=wrkspc.ChildAdded:connect(function(Dragger)
        if tstring(Dragger)=='Dragger'then
            local BodyGyro=Dragger:WaitForChild'BodyGyro';
            local BodyPosition=Dragger:WaitForChild'BodyPosition';
            repeat Stepped:wait()until wrkspc:FindFirstChild'Dragger';
            repeat Stepped:wait()
                BodyPosition.P=120000;
                BodyPosition.D=1000;
                BodyPosition.maxForce=vector3.new(1,1,1)*1000000;
                BodyGyro.maxTorque=vector3.new(1,1,1)*200;
                BodyGyro.P=1200;
                BodyGyro.D=140;
            until not wrkspc:FindFirstChild'Dragger';
            -->Revert
            BodyPosition.P=10000;
            BodyPosition.D=800;
            BodyPosition.maxForce=vector3.new(17000,17000,17000);
            BodyGyro.maxTorque=vector3.new(200,200,200);
            BodyGyro.P=1200;
            BodyGyro.D=140;
        end;
    end)};
end;

function Ancestor:IsPlayerWhitelisted(Player)
    return ClientIsWhitelisted:InvokeServer(Player)==true;
end;


function Ancestor:CanPlaceItem(Item)-->Improved From Game Source
    local PlayerLand={};
    local Properties=workspace.Properties:GetChildren();
    for i=1,#Properties do 
        local Property=Properties[i];
	    if Property.Owner.Value and(Ancestor:IsPlayerWhitelisted(Players[tstring(Property.Owner.Value)]))or Property.Owner.Value==LP then
            local Plots=Property:GetChildren();
            for i=1,#Plots do 
                local Plot=Plots[i];
	            if Plot:IsA'BasePart'then
	                PlayerLand[#PlayerLand+1]={MinBounds=Vector3.new(math.min(Plot.Position.X+Plot.Size.X/2,Plot.Position.X-Plot.Size.X/2),Plot.Position.Y,math.min(Plot.Position.Z+Plot.Size.Z/2,Plot.Position.Z-Plot.Size.Z/2)),MaxBounds=Vector3.new(math.max(Plot.Position.X+Plot.Size.X/2,Plot.Position.X-Plot.Size.X/2),Plot.Position.Y+100,math.max(Plot.Position.Z+Plot.Size.Z/2,Plot.Position.Z-Plot.Size.Z/2)),Owner=Property.Owner.Value};
	           end;
	        end;
	    end;
    end;
	local CanPlace=true;
	local PlotOwner=LP;
	local PlaceItem=Item:GetChildren();
	for i=1,#PlaceItem do 
        local Part=PlaceItem[i];
		if Part:IsA'BasePart'then
			local Position=Part.Position;
			local PartInBounds=false;
			for i=1,#PlayerLand do 
                local Plot=PlayerLand[i];
				local inThisPlot=(Position.X>=Plot.MinBounds.X and Position.X<=Plot.MaxBounds.X and Position.Z>=Plot.MinBounds.Z and Position.Z<=Plot.MaxBounds.Z);
				PartInBounds=PartInBounds or inThisPlot;
				if inThisPlot then
					PlotOwner=Plot.Owner;
				end;
			end;
			CanPlace=CanPlace and PartInBounds;
		elseif Part:IsA'Model'then
			local recurseRet,RecursePlotOwner=Ancestor:CanPlaceItem(Part);
			CanPlace=CanPlace and recurseRet;
			PlotOwner=RecursePlotOwner or PlotOwner;
		end;
		if not CanPlace then
			break;
		end;
	end;
	return CanPlace,PlotOwner;
end;

function Ancestor:GetBestAxe()
    local Axes,bestAxe,dmg,damage,longestrange={},nil,0,nil,0;
    LP.Character.Humanoid:UnequipTools();
    for _,Axe in next,LP.Backpack:GetChildren()do
        if Axe:FindFirstChild'CuttingTool'then 
            Axes[#Axes+1]=Axe;
        end;
    end;
    for Index,Axe in next,Axes do
        if Axe:FindFirstChild'ToolName'and AxeFolder:FindFirstChild(tstring(Axe.ToolName.Value))then 
            stats=require(AxeFolder:FindFirstChild(tstring(Axe.ToolName.Value)).AxeClass).new();       
            if stats.SpecialTrees then 
                if stats.SpecialTrees[Ancestor.SelectedTreeType]then
                    return Axe;
                end;
            end;
            damage=stats.Damage;
            range=stats.Range;
            if damage>dmg and longestrange<range then 
                longestrange=range;
                dmg=damage;
                bestAxe=Axe;
            end;
        end;
    end;
    return bestAxe;
end;

function Ancestor:GetHitPoint(Axe)
local NewAxeFolder=AxeFolder[tstring(Axe.ToolName.Value)];
local AxeModule=require(NewAxeFolder.AxeClass).new();
local HitPoint=AxeModule.Damage;
    if AxeModule.SpecialTrees then 
        if AxeModule.SpecialTrees[Ancestor.SelectedTreeType]then 
            HitPoint=AxeModule.SpecialTrees[Ancestor.SelectedTreeType].Damage
        end
    end				
    return HitPoint;
end;

function Ancestor:ModeratePlayer(Option)
    if Option~='Kick'then
		return SendUserNotice:Fire'The Requested Action Is Not Currently Supported';
	 end;
    if not Ancestor:DoesAxeExist()then 
        SendUserNotice:Fire'You Need An Axe To Use This!';
        return false;
    end;
    if Ancestor.PlayerToModerate==LP then 
        SendUserNotice:Fire'You Cannot Perform This Action On Yourself!';
        return false;
    end;
    if not Players:FindFirstChild(tstring(Ancestor.PlayerToModerate))then 
        SendUserNotice:Fire'Selected Player Has Left The Game!';
        return false;
    end;
    if Players:FindFirstChild(tstring(Ancestor.PlayerToModerate)).Character.Humanoid.Sit then 
        SendUserNotice:Fire'Selected Player Is Seated!';
        return false;
    end;
    if Ancestor.DupeAxeBeforeModerationAction then 
        GUISettings.DupeInventory=true;
        Ancestor:DupeInventory();
        Connections[#Connections+1]={Name='ModerationCharacter',Function=LP.CharacterAdded:Connect(function()
            Ancestor:GetConnection('ModerationCharacter',true);
            GUISettings.DupeInventory=false;
        end)};
        repeat Stepped:wait()until typeof(Ancestor:GetConnection'ModerationCharacter')~='RBXScriptConnection';
    end;
    local Humanoid=Character.Humanoid;
    if not Character:FindFirstChild'Tool'then 
        local Tools=Ancestor:GetAxes();
        Tools[1].Parent=Character;
    end;
    repeat Stepped:wait()until Character:FindFirstChild'Tool';
    local Axe=Character:FindFirstChild'Tool';
    local NewHumanoid=Humanoid:Clone();
    Humanoid:Destroy();
    NewHumanoid.Parent=Character;
    if Option=='Kick'then
        Axe.Owner:Destroy();
    end;
    if Option=='HardKill'then
        Character.HumanoidRootPart.CFrame=cframe.new(-1675,800,1295);
        Character.HumanoidRootPart.Anchored=true;
        task.wait(5)
    end;
    repeat task.wait()Ancestor.PlayerToModerate.Character.HumanoidRootPart.CFrame=Axe.Handle.CFrame;until Axe.Parent~=Player;
    game:GetService('ReplicatedStorage').Interaction.DestroyStructure:FireServer(Axe);
    repeat Stepped:wait()until not Character:FindFirstChild'Tool'
    Character:Destroy();
end;

function Ancestor:CSInvis(Enabled)
    if not Enabled then
        for i,v in next,Lighting:GetChildren()do 
            if v:IsA'Accessory'then 
                v.Parent=Character;
            end;
        end;
    end;
    for i,v in next,Character:GetDescendants()do 
        if v.Name=='face'or v:IsA'BasePart'and v.Name~='HumanoidRootPart'then 
            v.Transparency=(Enabled and 1)or 0;
        end;
        if v:IsA'Accessory'then 
            if Enabled then
                v.Parent=game.Lighting;
            end;
        end;
    end;
end;

function Ancestor:AutobuyItems()
    local ItemToBuy,Counter=Ancestor:GetStoreItem(AutobuySelectedItem);
    local Store=ItemToBuy.Parent;
    local Price=Ancestor:GetItemInfo(tstring(ItemToBuy),'Price')
    if Price>=Ancestor:GetClientMoney()then
        SendUserNotice:Fire('Not Enough Money! You Need $'..tstring(Price)..'!');
        return;
    end;
    local OldPlayerPosition=LP.Character.HumanoidRootPart.CFrame.p;
    if not Ancestor:CanPlaceItem(Character)then
        Instant=false;
    else
        Instant=true;
    end;
    for i=1,AutobuyAmount do 
        if not ItemToBuy then 
            repeat Stepped:wait()until Store:FindFirstChild(tstring(AutobuySelectedItem));
            ItemToBuy=Store:FindFirstChild(tstring(AutobuySelectedItem));
        end;
        if i==1 then Ancestor:Teleport(cframe.new(ItemToBuy.PrimaryPart.CFrame.p+vector3.new(5,0,5)));for i=1,2 do TestPing:InvokeServer();end;end;
        repeat Stepped:wait()ClientRequestOwnership:FireServer(ItemToBuy)ClientIsDragging:FireServer(ItemToBuy)ItemToBuy:SetPrimaryPartCFrame(cframe.new(Counter.CFrame.p))until (Counter.CFrame.p-ItemToBuy.PrimaryPart.CFrame.p).Magnitude<8;
        Connections[#Connections+1]={Name='AutobuyConnection',Function=wrkspc.PlayerModels.ChildAdded:Connect(function(Child)
            local Owner=Child:WaitForChild('Owner',5);
            if Owner.Value==LP then 
                Ancestor:GetConnection('AutobuyConnection',true);
                if not Instant then
                    repeat Stepped:wait()ClientIsDragging:FireServer(ItemToBuy)ItemToBuy:SetPrimaryPartCFrame(cframe.new(OldPlayerPosition+vector3.new(0,5,0)))until(ItemToBuy.PrimaryPart.CFrame.p-OldPlayerPosition).Magnitude<10;
                else 
                    ClientPlacedStructure:FireServer(nil,cframe.new(OldPlayerPosition+vector3.new(4,0,4)),LP,nil,ItemToBuy,true);
                end;
            end;
        end)};
        repeat Stepped:wait()Ancestor:BuyItem(ItemToBuy)until typeof(Ancestor:GetConnection'AutobuyConnection')~='RBXScriptConnection';
    end;
    Ancestor:Teleport(cframe.new(OldPlayerPosition));
end;

function Ancestor:FastCheckout(Value)
    setconstant(NPCChattingClient.advanceChat,18,Value)
end;

function Ancestor:Fling()
    local Fling=instance.new'BodyAngularVelocity';
    Fling.Parent=Character.HumanoidRootPart;
    Fling.AngularVelocity=vector3.new(0,300000,0);
    Fling.MaxTorque=vector3.new(0,300000,0);
    Fling.P=9e9;
    GUISettings.Noclip=true;
    while GUISettings.Fling do 
        Stepped:wait()
        if Character.Humanoid.FloorMaterial==Enum.Material.Air then 
            Fling.AngularVelocity=vector3.new(0,0,0);
        else
            Fling.AngularVelocity=vector3.new(0,600000,0);
        end;
    end;
    Fling:Destroy();
    GUISettings.Noclip=false;
end;

repeat Stepped:Wait()until CorrectThread;
local AncestorUI=lstring(game:HttpGetAsync'https://ancestordevelopment.wtf/lua/AncestorV2.lua')():Initiate();
local LocalPlayerTab=AncestorUI:CreateTab(5181994100,'LocalPlayer');
local HumanoidSectionTab=LocalPlayerTab:CreateSection()
local HumanoidSection=HumanoidSectionTab:CreateSubSection('Humanoid Options');

-- HumanoidSection:CreateDropDown()
HumanoidSection:CreateSlider('Walk Speed',function(Speed)GUISettings.WalkSpeed=Speed;end,16,400,GUISettings.WalkSpeed,true,'Changes Your Character\'s WalkSpeed.');
HumanoidSection:CreateSlider('Sprint Speed',function(Speed)GUISettings.SprintSpeed=Speed;end,20,200,GUISettings.SprintSpeed,true,'Changes Your Character\'s Sprint Speed.');
HumanoidSection:CreateSlider('Jump Power',function(Power)GUISettings.JumpPower=Power;end,50,400,GUISettings.JumpPower,true,'Changes Your Character\'s Jump Power.');
HumanoidSection:CreateSlider('Hip Height',function(Height)GUISettings.HipHeight=Height;end,0,200,GUISettings.HipHeight,true,'Changes Your Character\'s Hip Height.');
HumanoidSection:CreateSlider('Fly Speed',function(Speed)GUISettings.FlySpeed=Speed;end,50,400,GUISettings.FlySpeed,true,'Changes Your Character\'s Fly Speed.');
HumanoidSection:CreateKeybind('Fly',function(Key)GUISettings.FlyKey=tstring(Key.Name)end,Enum.KeyCode[GUISettings.FlyKey],true,'Binds A Key For Flying.');
HumanoidSection:CreateKeybind('Sprint(Hold)',function(Key)GUISettings.SprintKey=tstring(Key.Name)end,Enum.KeyCode[GUISettings.SprintKey],true,'Binds A Key For Sprinting.');
HumanoidSection:CreateKeybind('Noclip',function(Key)GUISettings.NoclipKey=tstring(Key.Name)end,Enum.KeyCode.LeftControl,true,'Binds A Key For Noclipping.');
HumanoidSection:CreateKeybind('Key-TP',function(v)
    if(LP.Character.Head.CFrame.p-Mouse.Hit.p).Magnitude<5000 then 
        Ancestor:Teleport(cframe.new(Mouse.Hit.p)+vector3.new(0,3,0));
    end;
end,Enum.KeyCode.G,true,'Binds A Key For Teleportion');
HumanoidSection:CreateToggle('Infinite Jump',false,function(toggle)GUISettings.InfiniteJump=toggle;end,GUISettings.InfiniteJump,true,'Allows You To Jump Indefinitely.');
HumanoidSection:CreateToggle('Light',false,function(toggle)GUISettings.Light=toggle;Ancestor:ApplyLight();end,GUISettings.Light,true,'Applies A Light To Your Character\'s Head.');
HumanoidSection:CreateToggle('Fling',false,function(toggle)GUISettings.Fling=toggle;if toggle then Ancestor:Fling()end;end,GUISettings.Fling,true,'Rotates You Violently To Fling Items/Players.');
-- HumanoidSection:CreateToggle('Dance Stroke',false,function(toggle)GUISettings.Fling=toggle;if toggle then Ancestor:Fling()end;end,GUISettings.Fling,true,'Rotates You Violently To Fling Items/Players.');
HumanoidSection:CreateButton('Safe Suicide',function()Ancestor:SafeSuicide();end,true,true,'Kills Your Character But Keeps Your Axes.');
local CameraSection=HumanoidSectionTab:CreateSubSection('Camera Options');
local FOVSlider=CameraSection:CreateSlider('FOV',function(FOV)GUISettings.FOV=FOV;wrkspc.CurrentCamera.FieldOfView=FOV;end,1,120,GUISettings.FOV,true,'Changes Your Camera\'s FOV.');
CameraSection:CreateButton('Reset FOV',function()GUISettings.FOV=70;FOVSlider:Set(70)wrkspc.CurrentCamera.FieldOfView=70;end,true,true,'Resets Your Camera\'s FOV.');
local MiscSection=HumanoidSectionTab:CreateSubSection('Misc Options');
MiscSection:CreateToggle('Anti-AFK',false,function(state)GUISettings.AntiAFK=state;Ancestor:AntiAFK(state)end,GUISettings.AntiAFK,true,'Toggles Anti-AFK');
MiscSection:CreateButton('BTools',function()Ancestor:GiveBTools();end,true,true,'Gives You BTools To Modify The Game World To Your Liking.');
MiscSection:CreateButton('Rejoin Game',function()TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId,LP);end,true,true,'Rejoins The Current Server You\'re Playing In.');
local TeleportSection=HumanoidSectionTab:CreateSubSection();
TeleportSection:CreateTitle('Teleport To Location')
TeleportSection:CreateDropDown(function(Location)if Location=='Wood R Us'then Ancestor:Teleport(cframe.new(270,4,60));elseif Location=='Spawn'then Ancestor:Teleport(cframe.new(174,10.5,66));elseif Location=='Land Store'then Ancestor:Teleport(cframe.new(270,3,-98));elseif Location=='Bridge'then Ancestor:Teleport(cframe.new(112,37,-892));elseif Location=='Dock'then Ancestor:Teleport(cframe.new(1136,0,-206));elseif Location=='Palm'then Ancestor:Teleport(cframe.new(2614,-4,-34));elseif Location=='Cave'then Ancestor:Teleport(cframe.new(3590,-177,415));elseif Location=='Volcano'then Ancestor:Teleport(cframe.new(-1588,623,1069));elseif Location=='Swamp'then Ancestor:Teleport(cframe.new(-1216,131,-822));elseif Location=='Fancy Furnishings'then Ancestor:Teleport(cframe.new(486,3,-1722));elseif Location=='Boxed Cars'then Ancestor:Teleport(cframe.new(509,3,-1458));elseif Location=='Ice Mountain'then Ancestor:Teleport(cframe.new(1487,415,3259));elseif Location=='Links Logic'then Ancestor:Teleport(cframe.new(4615,7,-794));elseif Location=='Bob\'s Shack'then Ancestor:Teleport(cframe.new(292,8,-2544));elseif Location=='Fine Arts Store'then Ancestor:Teleport(cframe.new(5217,-166,721));elseif Location=='Shrine Of Sight'then Ancestor:Teleport(cframe.new(-1608,195,928));elseif Location=='Strange Man'then Ancestor:Teleport(cframe.new(1071,16,1141));elseif Location=='Volcano Win'then Ancestor:Teleport(cframe.new(-1667,349,1474));elseif Location=='Ski Lodge'then Ancestor:Teleport(cframe.new(1244,59,2290));elseif Location=='Fur Wood'then Ancestor:Teleport(cframe.new(-1080,-5,-942));elseif Location=='The Den'then Ancestor:Teleport(cframe.new(330,45,1943));end;end,{'Spawn','Wood R Us','Land Store','Bridge','Dock','Palm','Cave','The Den','Volcano','Swamp','Fancy Furnishings','Boxed Cars','Links Logic','Bobs Shack','Fine Arts Store','Ice Mountain','Shrine Of Sight','Strange Man','Volcano Win','Ski Lodge','Fur Wood'},'Spawn',false);
TeleportSection:CreateTitle('Teleport To Player')
TeleportSection:CreateDropDown(function(Player)
    if not Players:FindFirstChild(Player)then 
        return Ancestor:Notify('Error','Player Not Found!');
    end;Ancestor:Teleport(cframe.new(Players[Player].Character.HumanoidRootPart.CFrame.p+vector3.new(0,5,0)));
end,{},false,true);
TeleportSection:CreateTitle'Teleport To Player\'s Base';
TeleportSection:CreateDropDown(function(Player)
    if not Players:FindFirstChild(Player)then 
        return Ancestor:Notify('Error','Player Not Found!');
    end;
    xp_call(function()
        Ancestor:Teleport(cframe.new(Ancestor:GetPlayersBase(Players[Player]).OriginSquare.CFrame.p+vector3.new(0,5,0)));
    end,function()Ancestor:Notify('Error','Player Has No Plot!');end);
end,{},false,true);

local GamePlayerTab=AncestorUI:CreateTab(6894662531,'Game Options');
local GameSectionTab=GamePlayerTab:CreateSection()
local GraphicalSection=GameSectionTab:CreateSubSection('Graphical Options');
local AlwaysDay,AlwaysNight;
AlwaysDay=GraphicalSection:CreateToggle('Always Day',function()if AlwaysNight:GetState() then AlwaysNight:Toggle()end;end,function(state)GUISettings.AlwaysDay=state;end,GUISettings.AlwaysDay,true,'Changes The InGame Time To DayTime.');
AlwaysNight=GraphicalSection:CreateToggle('Always Night',function()if AlwaysDay:GetState()then AlwaysDay:Toggle()end;end,function(state)GUISettings.AlwaysNight=state;end,GUISettings.AlwaysNight,true,'Changes The InGame Time To NightTime.');
GraphicalSection:CreateToggle('No Fog',false,function(state)GUISettings.NoFog=state;end,GUISettings.NoFog,true,'Removes InGame Fog');
GraphicalSection:CreateToggle('Spook',false,function(state)GUISettings.Spook=state;Lighting.Spook.Value=state;end,GUISettings.Spook,true,'Toggles Spook Mode Usually Found In The Halloween Event');
local StoreSection=GameSectionTab:CreateSubSection('Store Options');
StoreSection:CreateToggle('Fast Checkout',false,function(state)GUISettings.FastCheckout=state;Ancestor:FastCheckout(state and 0 or 1.5)end,GUISettings.FastCheckout,true,'Allows You To Interact With Cashier\'s Much Faster Than Usual.');
StoreSection:CreateToggle('Fix Cashier\'s Range',false,function(state)GUISettings.FixCashierRange=state;Ancestor:FixCashierRange(state and'Enable'or'Disable')end,GUISettings.FixCashierRange,true,'Makes The "Chat With.." UI Appear Faster Than Usual.');
local ServerSettings=GameSectionTab:CreateSubSection('Server Options');
ServerSettings:CreateButton('Claim All Plots',function()Ancestor:ClaimAllFreePlots()end,true,true,'Claims All Free Plots In The Server.');
local ClientOptions=GameSectionTab:CreateSubSection('Client Options');
ClientOptions:CreateButton('Delete All Trees',function()Ancestor:DeleteTreeCS()end,true,true,'This Will Client Destroy Every Tree In The Server.');

local WaterSection=GameSectionTab:CreateSubSection('Water Options');
WaterSection:CreateToggle('Water Walk',false,function(state)
    GUISettings.WaterWalk=state;
    local Water=wrkspc.Water:GetChildren();
    local WaterBridge=wrkspc.Bridge.VerticalLiftBridge.WaterModel:GetChildren();
    for i=1,#WaterBridge do WaterBridge[i].CanCollide=state;end;
    for i=1,#Water do Water[i].CanCollide=state;end;
end,GUISettings.WaterWalk,true,'Allows You To Walk On Water.');

WaterSection:CreateToggle('Water Float',false,function(state)
    GUISettings.WaterFloat=state;
    CharacterFloat.isInWater=function(...)
        LP.PlayerGui.UnderwaterOverlay.Enabled=state;
        if not GUISettings.WaterFloat and Ancestor_Loaded then 
            return 1;
        else 
            return CharacterFloatOld(...);
        end;
    end;
end,GUISettings.WaterFloat,true,'Toggles Whether Or Not You Float While In Water.');

local OtherPlayerTab=AncestorUI:CreateTab(8769279408,'Troll Options');
local OtherPlayerSection=OtherPlayerTab:CreateSection()
local ModeratePlayer=OtherPlayerSection:CreateSubSection('Troll Options');

ModeratePlayer:CreateDropDown(function(Option)
    Ancestor.ModerationAction=Option;
 end,{'Kick','Kill','Hard Kill','Bring','Fling'},'Kick');

 ModeratePlayer:CreateDropDown(function(Player)
   Ancestor.PlayerToModerate=Players[tstring(Player)]
end,{},false,true);
ModeratePlayer:CreateToggle('Dupe Axe',false,function(state)Ancestor.DupeAxeBeforeModerationAction=state;end,false,true,'Duplicates Your Inventory Before Performing Action.');
ModeratePlayer:CreateButton('Perform Action',function()Ancestor:ModeratePlayer(Ancestor.ModerationAction);end,true,true,'Performs The Selected Action Against The Selected Player.');
local ServerOptions=OtherPlayerSection:CreateSubSection('Server Options');
ServerOptions:CreateToggle('Alert Server Killer(Toxic)',false,function(state)GUISettings.AlertShutdown=state;end,GUISettings.AlertShutdown,true,'Alerts Every Player In The Server That You\'re Going To Kill It.');
ServerOptions:CreateButton('Kill Server',function()if AncestorUI:CreateOption()then if GUISettings.AlertShutdown then SayMessageRequest:FireServer('NUKING SERVER IN 3 ','All')for i=2,1,-1 do task.wait(1)SayMessageRequest:FireServer(tstring(i),'All');end;SayMessageRequest:FireServer('NICE KNOWING YOU BOZOS!!!!','All')end;Ancestor:ClaimAllFreePlots(true)else SendUserNotice:Fire'Kill Server Aborted'end;end,true,true,'This Will Literally Kill The Server. No Joke.');
local PlotTab=AncestorUI:CreateTab(8772257496,'Plot Options');
local PlotSection=PlotTab:CreateSection()
local LoadSection=PlotSection:CreateSubSection('Load Options');
local Load;
Load=LoadSection:CreateSlider('Slot To Load',function(slot)if SlotNames.Slot1~='Slot 1'then Load:UpdateHeader('Slot Name: '..SlotNames['Slot'..slot])end;GUISettings.SelectedPlot=slot;end,1,6,1,false,nil,(SlotNames.Slot1~='Slot 1'));
if SlotNames.Slot1~='Slot 1'then 
    Load:UpdateHeader('Slot Name: '..SlotNames.Slot1);
end;
LoadSection:CreateButton('Load Selected Slot',function()Ancestor:LoadSlot(GUISettings.SelectedPlot);end,true,true,'Loads The Selected Slot.');
LoadSection:CreateButton('Unload Selected Slot',function()Request_Save:InvokeServer(Ancestor:GetLoadedSlot())Ancestor:CanClientLoad();Ancestor:FastDeload()Request_Load:InvokeServer(-1,LP)Ancestor:Set(-1);end,true,true,'Unloads The Current Slot.');
LoadSection:CreateButton('Delete Selected Slot',function()if AncestorUI:CreateOption()then Ancestor:DeleteSlot(GUISettings.SelectedPlot)else SendUserNotice:Fire'Delete Slot Aborted'end;end,true,true,'Deletes The Selected Slot.');
LoadSection:CreateButton('Save Selected Slot',function()Ancestor:SaveSlot();end,true,true,'Saves The Current Loaded Slot.');
local PlotInfoSection=PlotSection:CreateSubSection('Plot Information');
local SlotName,Slot1,Slot2,Slot3,Slot4,Slot5,Slot6;

PlotInfoSection:CreateDropDown(function(Player)
    if not Players:FindFirstChild(Player)then 
        return Ancestor:Notify('Error','Player Not Found!');
    end;
    SlotName:UpdateText('Loading Info for '..tstring(Player)..'...')
    C_R(C_C(function()
        local Data=Ancestor:GetPlayersSlotInfo(Player)
        SlotName:UpdateText('Showing Info for '..tstring(Player));
        Slot1:UpdateText('Slot 1 Datasize: '..tstring(Data[1]~=nil and Data[1] or '0'));
        Slot2:UpdateText('Slot 2 Datasize: '..tstring(Data[2]~=nil and Data[2] or '0'));
        Slot3:UpdateText('Slot 3 Datasize: '..tstring(Data[3]~=nil and Data[3] or '0'));
        Slot4:UpdateText('Slot 4 Datasize: '..tstring(Data[4]~=nil and Data[4] or '0'));
        Slot5:UpdateText('Slot 5 Datasize: '..tstring(Data[5]~=nil and Data[5] or '0'));
        Slot6:UpdateText('Slot 6 Datasize: '..tstring(Data[6]~=nil and Data[6] or '0'));
    end));
end,{},false,true);
C_R(C_C(function()
    SlotName=PlotInfoSection:CreateTitle('Showing Info for '..tstring(LP))
    local Data=Ancestor:GetPlayersSlotInfo(LP)
    Slot1=PlotInfoSection:CreateLabel('Slot 1 Datasize: '..tstring(Data[1]~=nil and Data[1] or '0'));
    Slot2=PlotInfoSection:CreateLabel('Slot 2 Datasize: '..tstring(Data[2]~=nil and Data[2] or '0'));
    Slot3=PlotInfoSection:CreateLabel('Slot 3 Datasize: '..tstring(Data[3]~=nil and Data[3] or '0'));
    Slot4=PlotInfoSection:CreateLabel('Slot 4 Datasize: '..tstring(Data[4]~=nil and Data[4] or '0'));
    Slot5=PlotInfoSection:CreateLabel('Slot 5 Datasize: '..tstring(Data[5]~=nil and Data[5] or '0'));
    Slot6=PlotInfoSection:CreateLabel('Slot 6 Datasize: '..tstring(Data[6]~=nil and Data[6] or '0'));
end))

local MiscPlotSection=PlotSection:CreateSubSection('Misc Plot Options');
MiscPlotSection:CreateToggle('Slot Saving',false,function(state)GUISettings.DisableSaving=state;end,GUISettings.DisableSaving,true,'Toggles Slot Saving.');
MiscPlotSection:CreateToggle('Fast Deload',false,function(state)GUISettings.FastDeloader=state;end,GUISettings.FastDeloader,true,'Toggles Fast Deloading When Loading.');
local SlotSection=PlotSection:CreateSubSection('Physical Plot Options');
SlotSection:CreateButton('Free Land',function()Ancestor:FreeLand();end,true,true,'Gives You Land For Free.');
SlotSection:CreateButton('Max Land',function()Ancestor:MaxLand();end,true,true,'Max-Lands Your Plot For Free.');
SlotSection:CreateButton('Sell Land Sign',function()Ancestor:SellSign();end,true,true,'Sells Your Plot Sign If You Have One.');
SlotSection:CreateButton('Expand Land',function()PropertyPurchasingClient.setPlatformControls=function()end;PropertyPurchasingClient.enterPurchaseMode(0,true);end,true,true,'Allows You To Expand Your Land To Your Liking.');
local DupeSection=PlotSection:CreateSubSection('Plot Duplication Options');
DupeSection:CreateSlider('Plot To Donate',function(slot)Ancestor.BaseToDupe=slot;end,1,6);
DupeSection:CreateToggle('New Method',false,function(state)GUISettings.NewDonateBase=state;end,GUISettings.NewDonateBase,true,'Toggles The New Donate Base Method.');
DupeSection:CreateButton('Donate Plot',function()if GUISettings.NewDonateBase then Ancestor:DonateBase(true)return end;Ancestor:DonateBase();end,true,true,'Donates Your Plot To The Server. Make Sure To Whitelist Them.');
-- local BuildSection=PlotSection:CreateSubSection('Save/Build Options');
-- BuildSection:CreateTextbox('Save Base To File',function(Name)if not Ancestor:GetPlayersBase()then return SendUserNotice:Fire'Player has no plot Loaded'end; if Name==''then SendUserNotice:Fire'Invalid File Name!'return;end; Ancestor:SaveBaseToFile(nil,Name);SendUserNotice:Fire('Saved '..tstring(Name)..'!');end,'Enter FileName Here',false,true,'Saves The Player\'s Base To A File.');
-- BuildSection:CreateTextbox('Load Base from File',function(Name)Ancestor:LoadBaseFromFile(Name)end,'Enter FileName Here',false,true,'Build The Bases From A File.');


local TreeTab=AncestorUI:CreateTab(8772271242,'Tree Options');
local TreeSection=TreeTab:CreateSection()
local BringTreeSection=TreeSection:CreateSubSection('Bring Tree');
local BringTreeButton;
BringTreeSection:CreateDropDown(function(Option)
    Ancestor.SelectedTreeType=Option;
    if Ancestor.BringTreeAmount<=1 then 
        Title='Tree';
    else
        Title='Trees';
    end;
    BringTreeButton:UpdateHeader('Bring '..Ancestor.BringTreeAmount..' '..Ancestor.SelectedTreeType..' '..Title)
end,{'Generic','GoldSwampy','CaveCrawler','Cherry','Frost','Volcano','Oak','Walnut','Birch','SnowGlow','Pine','GreenSwampy','Koa','Palm','Spooky','SpookyNeon',--[['LoneCave']]},'Generic',false);
BringTreeSection:CreateSlider('Quantity',function(Quantity)Ancestor.BringTreeAmount=Quantity;if Quantity<=1 then Title='Tree';else Title='Trees';end;BringTreeButton:UpdateHeader('Bring '..Ancestor.BringTreeAmount..' '..Ancestor.SelectedTreeType..' '..Title);end,1,10,1,false,nil);
BringTreeButton=BringTreeSection:CreateButton('Bring 1 Generic Tree',function()Ancestor:BringTree();end,true,true,'Brings The Selected Amount Of The Selected Tree To You.');
-- local BuildSection=PlotSection:CreateSubSection('Save/Build Options');


BringTreeButton:UpdateHeader('Bring '..Ancestor.BringTreeAmount..' '..Ancestor.SelectedTreeType..' Tree')


local DraggingOptions=TreeSection:CreateSubSection('Dragging Options');
DraggingOptions:CreateToggle('Hard Dragger',false,function(state)GUISettings.HardDragger=state;Ancestor:HardDragger(state)end,GUISettings.HardDragger,true,'Makes Picking Up Heavy Trees/Items Much Easier.');

local MoneyTab=AncestorUI:CreateTab(5182389716,'Money Options');
local MoneySection=MoneyTab:CreateSection()
local Autobuy=MoneySection:CreateSubSection('Autobuy');
Autobuy:CreateDropDown(function(item)Ancestor:GetItemInfo(item,'Name')end,{unpack(Ancestor:GetStoreItems())},'Basic Hatchet - $12',false);
Autobuy:CreateSlider('Amount',function(Quantity)AutobuyAmount=Quantity;end,1,100);
Autobuy:CreateButton('Purchase Item/s',function()Ancestor:AutobuyItems();end,true,true,'Auto-Buys The Selected Items.');
local DupeMoney=MoneySection:CreateSubSection('Money Duplication');
game:GetService("CoreGui").Ancestor.MainFrame.Sections["Money Options"].Sections.Frame.ScrollingFrame.Frame.Position=UDim2.new(0.5,0,.49,0)
DupeMoney:CreateSlider('Amount',function(Quantity)DupeMoneyQuantity=Quantity;end,1,10);
DupeMoney:CreateButton('Dupe Money On Selected Slot',function()Ancestor:DupeMoney();end,true,true,'Duplicates Your Current Money Amount.');
DupeMoney:CreateButton('Abort Dupe Money',function()if Ancestor.MoneyDuping then Ancestor.MoneyDuping=false;SendUserNotice:Fire'Attempting To Abort Money Dupe!';else SendUserNotice:Fire'Money Dupe Is Not Active!';end;end,true,true,'Terminates Money Duplication. May Take A While.');
local AxeTab=AncestorUI:CreateTab(8772286873,'Axe Options');
local AxeSection=AxeTab:CreateSection()
local AxeModifications=AxeSection:CreateSubSection('Axe Stats');

AxeModifications:CreateSlider('Axe Range',function(Quantity)GUISettings.AxeRange=Quantity;if GUISettings.AxeRangeActive then Ancestor:SetAxeRange(true,Quantity)end;end,0,120,GUISettings.AxeRange,true,'Modifies Your Axe Range So You Can Cut Trees From A Longer Distance.');
AxeModifications:CreateToggle('Activate Axe Range',false,function(toggle)GUISettings.AxeRangeActive=toggle;Ancestor:SetAxeRange(true,GUISettings.AxeRange)if not toggle then Ancestor:SetAxeRange(false)end;end,GUISettings.AxeRangeActive,true,'Activates Axe Range Modifications.');
AxeModifications:CreateToggle(' No Axe Cooldown',false,function(toggle)GUISettings.AxeSwingActive=toggle;Ancestor:SetSwingCooldown(true)if not toggle then Ancestor:SetSwingCooldown(false)end;end,GUISettings.AxeSwingActive,true,'Removes The ClientSided Cooldown For Swinging Axes.');

local AxeInformation=AxeSection:CreateSubSection('Current Axe Information');
AxeNameLabel=AxeInformation:CreateLabel('Current Axe Not Found');
AxeRangeLabel=AxeInformation:CreateLabel('Range: NULL')
AxeCooldownLabel=AxeInformation:CreateLabel('Cooldown: NULL')
-- AxeInformation:CreateLabel('Name: BasicHatchet')
local AxeModifications=AxeSection:CreateSubSection('Duplication Options');
local DupeInventory;
DupeInventory=AxeModifications:CreateToggle('Dupe Inventory',false,function(toggle)GUISettings.DupeInventory=toggle;if toggle then if not Ancestor:DupeInventory()then  task.wait(.3)DupeInventory:Toggle()end;end;end,false,true,'Duplicates Your Inventory.');

local AxeOptions=AxeSection:CreateSubSection('Axe Options');
AxeOptions:CreateButton('Drop All Tools',function()Ancestor:DropTools();end,true,true,'Drops All Your Tools.');

local BuildTab=AncestorUI:CreateTab(8772073607,'Build Options');
local BuildSection=BuildTab:CreateSection()
local BuildMode=BuildSection:CreateSubSection('Build Mode - Currently Under Development');

local CarTab=AncestorUI:CreateTab(8821528672,'Car Options');
local CarSection=CarTab:CreateSection()
local CarMods=CarSection:CreateSubSection('Vehicle Options');
CarMods:CreateSlider('Car Speed',function(Speed)GUISettings.CarSpeed=Speed;end,1,4,GUISettings.CarSpeed,true,'Modifies Your Car Speed So You Can Drive Faster.');
CarMods:CreateSlider('Car Pitch',function(Speed)GUISettings.CarPitch=Speed;end,1,20,GUISettings.CarPitch,true,'Modifies Your Car Pitch So You Can Annoy Other Players.');
CarMods:CreateToggle('Activate Car Modifications',false,function(toggle)GUISettings.ActivateCarModifications=toggle;if not toggle then Ancestor:ResetCarSpeed()end;end,GUISettings.ActivateCarModifications,true,'Activates Car Modifications.');
-- local BaseDropTab=AncestorUI:CreateTab(8785403056,'Theme Options');
-- local BaseDropSection=BaseDropTab:CreateSection()
-- local BaseDrop=BaseDropSection:CreateSubSection('Theme Options - Currently Under Development');

local SettingsMain=AncestorUI:CreateTab(5182003557,'Settings');
local SettingsSection=SettingsMain:CreateSection();
local Credits=SettingsSection:CreateSubSection('Credits');
Credits:CreateLabel'Made By Ancestor';
local GUIInfo=SettingsSection:CreateSubSection('GUI Information');
GUIInfo:CreateLabel('Version: '..tstring(CurrentVersion));
GUIInfo:CreateLabel('Executor: '..tstring(Executor));
local Ping,CPU,CurrentSlot;
Ping=GUIInfo:CreateLabel('Ping: '..math.floor(game:GetService("Stats").PerformanceStats.Ping:GetValue())..'ms');
CPU=GUIInfo:CreateLabel('CPU: '..math.floor(game:GetService("Stats").PerformanceStats.CPU:GetValue())..'ms');
CurrentSlot=GUIInfo:CreateLabel('');
Connections[#Connections+1]={Name='Ping',Function=Stepped:Connect(function()
    Ping:UpdateText('Ping: '..math.floor(game:GetService("Stats").PerformanceStats.Ping:GetValue())..'ms');
    CPU:UpdateText('CPU: '..math.floor(game:GetService("Stats").PerformanceStats.CPU:GetValue())..'ms');
    CurrentSlot:UpdateText('Current Loaded Slot: '..(Ancestor:GetLoadedSlot()>0 and Ancestor:GetLoadedSlot()or 'None'));
end)}

local ConfigurationSettings=SettingsSection:CreateSubSection('Configuration Settings');
ConfigurationSettings:CreateButton('Save Configuration',function()Ancestor:SaveConfigurationFile()end,true,true,'Saves Your Confiuration File');
ConfigurationSettings:CreateButton('Delete Configuration',function()Ancestor:DeleteConfigurationFile()end,true,true,'Deletes Your Confiuration File');
local PlotNameSettings=SettingsSection:CreateSubSection('Plot Name Settings');
PlotNameSettings:CreateTextbox('Slot 1 Name',function(Name)SlotNames.Slot1=Name;Ancestor:GetPlotButtonByID(1).Text=Name;end,SlotNames.Slot1,false,true,'Renames Slot 1 To Your Preferred Name.',true);
PlotNameSettings:CreateTextbox('Slot 2 Name',function(Name)SlotNames.Slot2=Name;Ancestor:GetPlotButtonByID(2).Text=Name;end,SlotNames.Slot2,false,true,'Renames Slot 2 To Your Preferred Name.',true);
PlotNameSettings:CreateTextbox('Slot 3 Name',function(Name)SlotNames.Slot3=Name;Ancestor:GetPlotButtonByID(3).Text=Name;end,SlotNames.Slot3,false,true,'Renames Slot 3 To Your Preferred Name.',true);
PlotNameSettings:CreateTextbox('Slot 4 Name',function(Name)SlotNames.Slot4=Name;Ancestor:GetPlotButtonByID(4).Text=Name;end,SlotNames.Slot4,false,true,'Renames Slot 4 To Your Preferred Name.',true);
PlotNameSettings:CreateTextbox('Slot 5 Name',function(Name)SlotNames.Slot5=Name;Ancestor:GetPlotButtonByID(5).Text=Name;end,SlotNames.Slot5,false,true,'Renames Slot 5 To Your Preferred Name.',true);
PlotNameSettings:CreateTextbox('Slot 6 Name',function(Name)SlotNames.Slot6=Name;Ancestor:GetPlotButtonByID(6).Text=Name;end,SlotNames.Slot6,false,true,'Renames Slot 6 To Your Preferred Name.',true);
PlotNameSettings:CreateButton('Save Slot Names',function()Ancestor:SaveSlotNames();end,true,true,'Saves Your Slot Names ONLY For The Current ROBLOX Account.');
local Settings=SettingsSection:CreateSubSection('GUI Settings');
Settings:CreateKeybind('Toggle UI',function(v)
    game.CoreGui.Ancestor.Enabled=not game.CoreGui.Ancestor.Enabled;
end,Enum.KeyCode.RightControl,true,'Toggles UI Visibility.');
Settings:CreateToggle('GUI Tips',false,function(toggle)for i,v in next,AncestorUI:GetHelpSections()do v.Visible=toggle;end;end,true,true,'Toggles GUI Tips');
Settings:CreateTitle('Dropdown Name Settings')
Settings:CreateDropDown(function(Type)
   PlayerDropType=Type;
   GUISettings.SelectedDropType=Type;
   PlayerDropType=GUISettings.SelectedDropType
end,{'Both','DisplayName','UserName'},GUISettings.SelectedDropType);
Connections[#Connections+1]={Name='DestroyedGUI',Function=game.CoreGui.ChildRemoved:Connect(function(Child)
    if tstring(Child)=='Ancestor'then
        Ancestor_Loaded=false;
        GUISettings.IsClientFlying=false;GUISettings.Fling=false;
		for i=1,#Connections do 
			Connections[i].Function:Disconnect();
		end;
    end;
end)};warn('Loaded AncestorV2 In '..tstring(os.time()-Start)..' Second/s =^w^=');