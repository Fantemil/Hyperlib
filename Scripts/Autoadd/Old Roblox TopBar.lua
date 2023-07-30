

--  _____       _     _             ___   ___  __   __  
-- |  __ \     | |   | |           |__ \ / _ \/_ | / /  
-- | |__) |___ | |__ | | _____  __    ) | | | || |/ /_  
-- |  _  // _ \| '_ \| |/ _ \ \/ /   / /| | | || | '_ \
-- | | \ \ (_) | |_) | | (_) >  <   / /_| |_| || | (_) |
-- |_|  \_\___/|_.__/|_|\___/_/\_\ |____|\___/ |_|\___/
--                                                      
--              Script made by Invisible_                    
--      If you want the cursor, look youtube for it :)
--From the uploadder:i only disabled the new topbar,have fun!
--Disabling new TopBar.
game.CoreGui.TopBarApp.Enabled = false
--Loading Old Roblox TopBar.
if game:IsLoaded() ~= true then
   game.Loaded:Wait()
end
--Needed for nostalgia, Filtering Disabled spoof
local Workspace = game.Workspace
local old
old = hookmetamethod(game, "__index", newcclosure(function(Self, ...)
   local args = ...
   if Self == Workspace and args == "FilteringEnabled" then
       return false
   end
   return old(Self, ...)
end))

--Script utils
oldrequire = require
getgenv().bakrequire = require

cache = {}

function IsCached(Inst)
   for i,v in next, cache do
       if v[1] == Inst then
           return true, v[2]
       end
   end
   return false
end

getgenv().require = function(inst)
   CachedStatus, Result = IsCached(inst)
   if CachedStatus == false and Result == nil then
       result = loadstring(inst.Source)()
       table.insert(cache, {inst, result})
    return result
   else
       if Result then
           return Result
       end
   end
end

getgenv().LoadLibrary = function(str)
return loadstring(game:GetObjects("rbxassetid://9133787982")[1][str].Source)()
end

--Delete CoreGui guis
function ExistAndDelete(str)
   task.spawn(function()
       if game:GetService("CoreGui"):FindFirstChild(str) == nil then
           game:GetService("CoreGui"):WaitForChild(str):Destroy()
       else
           game:GetService("CoreGui")[str]:Destroy()
       end
   end)
end

ExistAndDelete("RobloxGui")
ExistAndDelete("TeleportGui")
ExistAndDelete("RobloxPromptGui")
ExistAndDelete("RobloxLoadingGui")
ExistAndDelete("PlayerList")
ExistAndDelete("RobloxNetworkPauseNotification")
ExistAndDelete("PurchasePrompt")
ExistAndDelete("HeadsetDisconnectedDialog")
ExistAndDelete("ThemeProvider")
ExistAndDelete("BubbleChat")

--Adios all CoreScript!!!
for i,v in pairs(game:GetDescendants()) do
   if v.ClassName == "CoreScript" then
       v:Destroy()
   end
end


--Chat handler (soo people can see your messages) (YOU CAN EDIT THIS IF THE GAME YOUR PLAYING HAVE A CUSTOM CHAT)
game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") ~= nil then
    if game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") ~= nil then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest"):FireServer(msg, "All")
    end
   end
end)

--Delete Chat if found
if game.Players.LocalPlayer:FindFirstChild("PlayerGui") == nil then
   game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Chat") == nil then
   game.Players.LocalPlayer.PlayerGui:WaitForChild("Chat"):Destroy()
else
   game.Players.LocalPlayer.PlayerGui["Chat"]:Destroy()
end



--The Health bar always on
game.Players.PlayerAdded:Connect(function(plr)
   task.spawn(function()
       if plr ~= nil then
           if plr.Character == nil then
               plr.CharacterAdded:Wait()
           end
           if plr.Character:FindFirstChild("Humanoid") == nil then
               plr.Character:WaitForChild("Humanoid")
           end
           plr.Character.Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
       end
       plr.CharacterAdded:Connect(function(charac)
           if charac:FindFirstChild("Humanoid") == nil then
               charac:WaitForChild("Humanoid")
           end
           charac.Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
       end)
   end)
end)

task.spawn(function()
   while true do
       task.wait(.1)
       for i,v in pairs(game.Players:GetChildren()) do
           if v.Character ~= nil then
               if v.Character:FindFirstChild("Humanoid") then
                   sethiddenproperty(v.Character.Humanoid, "HealthDisplayType", Enum.HumanoidHealthDisplayType.AlwaysOn)
               end
           end
       end
   end
end)




--Funny gui
local RobloxGui = game:GetObjects("rbxassetid://9139773381")[1]
RobloxGui.Parent = game:GetService("CoreGui")

--Remove kick blur
task.spawn(function()
  while true do
      task.wait()
      game:GetService("RunService"):SetRobloxGuiFocused(false)
  end
end)

--Scripts both taken from a real 2016 roblox studio
--They do the joining stuff etc
task.spawn(function()
   -- Creates the generic "ROBLOX" loading screen on startup
   -- Written by ArceusInator & Ben Tkacheff, 2014
   --
   
   -- Constants
   local PLACEID = game.PlaceId
   
   local MPS = game:GetService('MarketplaceService')
   local UIS = game:GetService('UserInputService')
   local guiService = game:GetService("GuiService")
   local ContextActionService = game:GetService('ContextActionService')
   local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
   
   local startTime = tick()
   
   local COLORS = {
    BLACK = Color3.new(0, 0, 0),
    BACKGROUND_COLOR = Color3.new(45/255, 45/255, 45/255),
    WHITE = Color3.new(1, 1, 1),
    ERROR = Color3.new(253/255,68/255,72/255)
   }
   
   local function getViewportSize()
    while not game.Workspace.CurrentCamera do
    game.Workspace.Changed:wait()
    end
   
    while game.Workspace.CurrentCamera.ViewportSize == Vector2.new(0,0) do
    game.Workspace.CurrentCamera.Changed:wait()
    end
   
    return game.Workspace.CurrentCamera.ViewportSize
   end
   
   --
   -- Variables
   local GameAssetInfo -- loaded by InfoProvider:LoadAssets()
   local currScreenGui, renderSteppedConnection = nil, nil
   local destroyingBackground, destroyedLoadingGui, hasReplicatedFirstElements = false, false, false
   local backgroundImageTransparency = 0
   local isMobile = (UIS.TouchEnabled == true and UIS.MouseEnabled == false and getViewportSize().Y <= 500)
   local isTenFootInterface = guiService:IsTenFootInterface()
   local platform = UIS:GetPlatform()
   
   local function IsConvertMyPlaceNameInXboxAppEnabled()
    if UIS:GetPlatform() == Enum.Platform.XBoxOne then
    local success, flagValue = pcall(function() return settings():GetFFlag("ConvertMyPlaceNameInXboxApp") end)
    return (success and flagValue == true)
    end
    return false
   end
   
   --
   -- Utility functions
   local create = function(className, defaultParent)
    return function(propertyList)
    local object = Instance.new(className)
    local parent = nil
   
    for index, value in next, propertyList do
    if type(index) == 'string' then
    if index == 'Parent' then
    parent = value
    else
    object[index] = value
    end
    else
    if type(value) == 'function' then
    value(object)
    elseif type(value) == 'userdata' then
    value.Parent = object
    end
    end
    end
   
    if parent then
    object.Parent = parent
    end
   
    if object.Parent == nil then
    object.Parent = defaultParent
    end
   
    return object
    end
   end
   
   --
   -- Create objects
   
   local MainGui = {}
   local InfoProvider = {}
   
   
   function ExtractGeneratedUsername(gameName)
    local tempUsername = string.match(gameName, "^([0-9a-fA-F]+)'s Place$")
    if tempUsername and #tempUsername == 32 then
    return tempUsername
    end
   end
   
   -- Fix places that have been made with incorrect temporary usernames
   function GetFilteredGameName(gameName, creatorName)
    if gameName and type(gameName) == 'string' then
    local tempUsername = ExtractGeneratedUsername(gameName)
    if tempUsername then
    local newGameName = string.gsub(gameName, tempUsername, creatorName, 1)
    if newGameName then
    return newGameName
    end
    end
    end
    return gameName
   end
   
   
   function InfoProvider:GetGameName()
    if GameAssetInfo ~= nil then
    if IsConvertMyPlaceNameInXboxAppEnabled() then
    return GetFilteredGameName(GameAssetInfo.Name, self:GetCreatorName())
    else
    return GameAssetInfo.Name
    end
    else
    return ''
    end
   end
   
   function InfoProvider:GetCreatorName()
    if GameAssetInfo ~= nil then
    return GameAssetInfo.Creator.Name
    else
    return ''
    end
   end
   
   function InfoProvider:LoadAssets()
    task.spawn(function()
    if PLACEID <= 0 then
    while game.PlaceId <= 0 do
    wait()
    end
    PLACEID = game.PlaceId
    end
   
    -- load game asset info
    coroutine.resume(coroutine.create(function()
    local success, result = pcall(function()
    GameAssetInfo = MPS:GetProductInfo(PLACEID)
    end)
    if not success then
    print("LoadingScript->InfoProvider:LoadAssets:", result)
    end
    end))
    end)
   end
   
   function MainGui:tileBackgroundTexture(frameToFill)
    if not frameToFill then return end
    frameToFill:ClearAllChildren()
    if backgroundImageTransparency < 1 then
    local backgroundTextureSize = Vector2.new(512, 512)
    for i = 0, math.ceil(frameToFill.AbsoluteSize.X/backgroundTextureSize.X) do
    for j = 0, math.ceil(frameToFill.AbsoluteSize.Y/backgroundTextureSize.Y) do
    create 'ImageLabel' {
    Name = 'BackgroundTextureImage',
    BackgroundTransparency = 1,
    ImageTransparency = backgroundImageTransparency,
    Image = 'rbxasset://textures/loading/darkLoadingTexture.png',
    Position = UDim2.new(0, i*backgroundTextureSize.X, 0, j*backgroundTextureSize.Y),
    Size = UDim2.new(0, backgroundTextureSize.X, 0, backgroundTextureSize.Y),
    ZIndex = 1,
    Parent = frameToFill
    }
    end
    end
    end
   end
   
   -- create a cancel binding for console to be able to cancel anytime while loading
   local function createTenfootCancelGui()
    local cancelLabel = create'ImageLabel'
    {
    Name = "CancelLabel";
    Size = UDim2.new(0, 83, 0, 83);
    Position = UDim2.new(1, -32 - 83, 0, 32);
    BackgroundTransparency = 1;
    Image = 'rbxasset://textures/ui/Shell/ButtonIcons/BButton.png';
    }
    local cancelText = create'TextLabel'
    {
    Name = "CancelText";
    Size = UDim2.new(0, 0, 0, 0);
    Position = UDim2.new(1, -131, 0, 64);
    BackgroundTransparency = 1;
    FontSize = Enum.FontSize.Size36;
    TextXAlignment = Enum.TextXAlignment.Right;
    TextColor3 = COLORS.WHITE;
    Text = "Cancel";
    }
   
    -- bind cancel action
    local platformService = nil
    pcall(function()
    platformService = game:GetService('PlatformService')
    end)
   
    if platformService then
    if not game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
    local seenBButtonBegin = false
    ContextActionService:BindCoreAction("CancelGameLoad",
    function(actionName, inputState, inputObject)
    if inputState == Enum.UserInputState.Begin then
    seenBButtonBegin = true
    elseif inputState == Enum.UserInputState.End and seenBButtonBegin then
    cancelLabel:Destroy()
    cancelText.Text = "Canceling..."
    cancelText.Position = UDim2.new(1, -32, 0, 64)
    ContextActionService:UnbindCoreAction('CancelGameLoad')
    platformService:RequestGameShutdown()
    end
    end,
    false,
    Enum.KeyCode.ButtonB)
    end
    end
   
    while cancelLabel.Parent == nil do
    if currScreenGui then
    local blackFrame = currScreenGui:FindFirstChild('BlackFrame')
    if blackFrame then
    cancelLabel.Parent = blackFrame
    cancelText.Parent = blackFrame
    break
    end
    end
    wait()
    end
   end
   
   --
   -- Declare member functions
   function MainGui:GenerateMain()
    local screenGui = create 'ScreenGui' {
    Name = 'RobloxLoadingGui'
    }
   
    --
    -- create descendant frames
    local mainBackgroundContainer = create 'Frame' {
    Name = 'BlackFrame',
    BackgroundColor3 = COLORS.BACKGROUND_COLOR,
    BackgroundTransparency = 0,
    Size = UDim2.new(1, 0, 1, 0),
    Position = UDim2.new(0, 0, 0, 0),
    Active = true,
    Parent = screenGui,
    }
   
    local closeButton = create 'ImageButton' {
    Name = 'CloseButton',
    Image = 'rbxasset://textures/loading/cancelButton.png',
    ImageTransparency = 1,
    BackgroundTransparency = 1,
    Position = UDim2.new(1, -37, 0, 5),
    Size = UDim2.new(0, 32, 0, 32),
    Active = false,
    ZIndex = 10,
    Parent = mainBackgroundContainer,
    }
   
    local graphicsFrame = create 'Frame' {
    Name = 'GraphicsFrame',
    BorderSizePixel = 0,
    BackgroundTransparency = 1,
    Position = UDim2.new(1, (isMobile == true and -75 or (isTenFootInterface and -245 or -225)), 1, (isMobile == true and -75 or (isTenFootInterface and -185 or -165))),
    Size = UDim2.new(0, (isMobile == true and 70 or (isTenFootInterface and 140 or 120)), 0, (isMobile == true and 70 or (isTenFootInterface and 140 or 120))),
    ZIndex = 2,
    Parent = mainBackgroundContainer,
    }
   
    local loadingImage = create 'ImageLabel' {
    Name = 'LoadingImage',
    BackgroundTransparency = 1,
    Image = 'rbxasset://textures/loading/loadingCircle.png',
    Position = UDim2.new(0, 0, 0, 0),
    Size = UDim2.new(1, 0, 1, 0),
    ZIndex = 2,
    Parent = graphicsFrame,
    }
   
    local loadingText = create 'TextLabel' {
    Name = 'LoadingText',
    BackgroundTransparency = 1,
    Size = UDim2.new(1, (isMobile == true and -14 or -56), 1, 0),
    Position = UDim2.new(0, (isMobile == true and 12 or 28), 0, 0),
    Font = Enum.Font.SourceSans,
    FontSize = (isMobile == true and Enum.FontSize.Size12 or Enum.FontSize.Size18),
    TextWrapped = true,
    TextColor3 = COLORS.WHITE,
    TextXAlignment = Enum.TextXAlignment.Left,
    Visible = not isTenFootInterface,
    Text = "Loading...",
    ZIndex = 2,
    Parent = graphicsFrame,
    }
   
    local uiMessageFrame = create 'Frame' {
    Name = 'UiMessageFrame',
    BackgroundTransparency = 1,
    Position = UDim2.new(0.25, 0, 1, -120),
    Size = UDim2.new(0.5, 0, 0, 80),
    ZIndex = 2,
    Parent = mainBackgroundContainer,
    }
   
    local uiMessage = create 'TextLabel' {
    Name = 'UiMessage',
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Font = Enum.Font.SourceSansBold,
    FontSize = Enum.FontSize.Size18,
    TextWrapped = true,
    TextColor3 = COLORS.WHITE,
    Text = "",
    ZIndex = 2,
    Parent = uiMessageFrame,
    }
   
    local infoFrame = create 'Frame' {
    Name = 'InfoFrame',
    BackgroundTransparency = 1,
    Position = UDim2.new(0, (isMobile == true and 20 or 100), 1, (isMobile == true and -120 or -150)),
    Size = UDim2.new(0.4, 0, 0, 110),
    ZIndex = 2,
    Parent = mainBackgroundContainer,
    }
   
    local placeLabel = create 'TextLabel' {
    Name = 'PlaceLabel',
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 0, 80),
    Position = UDim2.new(0, 0, 0, 0),
    Font = Enum.Font.SourceSans,
    FontSize = (isTenFootInterface and Enum.FontSize.Size48 or Enum.FontSize.Size24),
    TextWrapped = true,
    TextScaled = true,
    TextColor3 = COLORS.WHITE,
    TextStrokeTransparency = 0,
    Text = "",
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Bottom,
    ZIndex = 2,
    Parent = infoFrame,
    }
   
    if isTenFootInterface then
    local byLabel = create'TextLabel' {
    Name = "ByLabel",
    BackgroundTransparency = 1,
    Size = UDim2.new(0, 36, 0, 30),
    Position = UDim2.new(0, 0, 0, 80),
    Font = Enum.Font.SourceSans,
    FontSize = Enum.FontSize.Size36,
    TextScaled = true,
    TextColor3 = COLORS.WHITE,
    TextStrokeTransparency = 0,
    Text = "By",
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 2,
    Visible = false,
    Parent = infoFrame,
    }
    local creatorIcon = create'ImageLabel' {
    Name = "CreatorIcon",
    BackgroundTransparency = 1,
    Size = UDim2.new(0, 30, 0, 30),
    Position = UDim2.new(0, 38, 0, 80),
    ImageTransparency = 0,
    Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon32.png',
    ZIndex = 2,
    Visible = false,
    Parent = infoFrame,
    }
    end
   
    local creatorLabel = create 'TextLabel' {
    Name = 'CreatorLabel',
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 0, 30),
    Position = UDim2.new(0, isTenFootInterface and 72 or 0, 0, 80),
    Font = Enum.Font.SourceSans,
    FontSize = (isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size18),
    TextWrapped = true,
    TextScaled = true,
    TextColor3 = COLORS.WHITE,
    TextStrokeTransparency = 0,
    Text = "",
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 2,
    Parent = infoFrame,
    }
   
    local backgroundTextureFrame = create 'Frame' {
    Name = 'BackgroundTextureFrame',
    BorderSizePixel = 0,
    Size = UDim2.new(1, 0, 1, 0),
    Position = UDim2.new(0, 0, 0, 0),
    ClipsDescendants = true,
    ZIndex = 1,
    BackgroundTransparency = 1,
    Parent = mainBackgroundContainer,
    }
   
    local errorFrame = create 'Frame' {
    Name = 'ErrorFrame',
    BackgroundColor3 = COLORS.ERROR,
    BorderSizePixel = 0,
    Position = UDim2.new(0.25,0,0,0),
    Size = UDim2.new(0.5, 0, 0, 80),
    ZIndex = 8,
    Visible = false,
    Parent = screenGui,
    }
   
    local errorText = create 'TextLabel' {
    Name = "ErrorText",
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Font = Enum.Font.SourceSansBold,
    FontSize = Enum.FontSize.Size14,
    TextWrapped = true,
    TextColor3 = COLORS.WHITE,
    Text = "",
    ZIndex = 8,
    Parent = errorFrame,
    }
   
    while not game:GetService("CoreGui") do
    wait()
    end
    screenGui.Parent = game:GetService("CoreGui")
    currScreenGui = screenGui
   end
   
   function round(num, idp)
     local mult = 10^(idp or 0)
     return math.floor(num * mult + 0.5) / mult
   end
   
   ---------------------------------------------------------
   -- Main Script (show something now + setup connections)
   
   -- start loading assets asap
   InfoProvider:LoadAssets()
   MainGui:GenerateMain()
   if isTenFootInterface then
    createTenfootCancelGui()
   end
   
   local setVerb = true
   local lastRenderTime, lastDotUpdateTime, brickCountChange = nil, nil, nil
   local fadeCycleTime = 1.7
   local turnCycleTime = 2
   local lastAbsoluteSize = Vector2.new(0, 0)
   local loadingDots = "..."
   local dotChangeTime = .2
   local lastBrickCount = 0
   
   renderSteppedConnection = game:GetService("RunService").RenderStepped:connect(function()
    if not currScreenGui then return end
    if not currScreenGui:FindFirstChild("BlackFrame") then return end
   
    if setVerb then
    setVerb = false
    end
   
    if currScreenGui.BlackFrame:FindFirstChild("BackgroundTextureFrame") and currScreenGui.BlackFrame.BackgroundTextureFrame.AbsoluteSize ~= lastAbsoluteSize then
    lastAbsoluteSize = currScreenGui.BlackFrame.BackgroundTextureFrame.AbsoluteSize
    MainGui:tileBackgroundTexture(currScreenGui.BlackFrame.BackgroundTextureFrame)
    end
   
    local infoFrame = currScreenGui.BlackFrame:FindFirstChild('InfoFrame')
    if infoFrame then
    -- set place name
    local placeLabel = infoFrame:FindFirstChild('PlaceLabel')
    if placeLabel and placeLabel.Text == "" then
    placeLabel.Text = InfoProvider:GetGameName()
    end
   
    -- set creator name
    local creatorLabel = infoFrame:FindFirstChild('CreatorLabel')
    if creatorLabel and creatorLabel.Text == "" then
    local creatorName = InfoProvider:GetCreatorName()
    if creatorName ~= "" then
    if isTenFootInterface then
    local showDevName = true
    if platform == Enum.Platform.XBoxOne then
    local success, result = pcall(function()
    return settings():GetFFlag("ShowDevNameInXboxApp")
    end)
    if success then
    showDevName = result
    end
    end
    creatorLabel.Text = showDevName and creatorName or ""
    local creatorIcon = infoFrame:FindFirstChild('CreatorIcon')
    local byLabel = infoFrame:FindFirstChild('ByLabel')
    if creatorIcon then creatorIcon.Visible = showDevName end
    if byLabel then byLabel.Visible = showDevName end
    else
    creatorLabel.Text = "By "..creatorName
    end
    end
    end
    end
   
    if not lastRenderTime then
    lastRenderTime = tick()
    lastDotUpdateTime = lastRenderTime
    return
    end
   
    local currentTime = tick()
    local fadeAmount = (currentTime - lastRenderTime) * fadeCycleTime
    local turnAmount = (currentTime - lastRenderTime) * (360/turnCycleTime)
    lastRenderTime = currentTime
   
    currScreenGui.BlackFrame.GraphicsFrame.LoadingImage.Rotation = currScreenGui.BlackFrame.GraphicsFrame.LoadingImage.Rotation + turnAmount
   
    local updateLoadingDots =  function()
    loadingDots = loadingDots.. "."
    if loadingDots == "...." then
    loadingDots = ""
    end
    currScreenGui.BlackFrame.GraphicsFrame.LoadingText.Text = "Loading" ..loadingDots
    end
   
    if currentTime - lastDotUpdateTime >= dotChangeTime and InfoProvider:GetCreatorName() == "" then
    lastDotUpdateTime = currentTime
    updateLoadingDots()
    else
    if guiService:GetBrickCount() > 0 then
    if brickCountChange == nil then
    brickCountChange = guiService:GetBrickCount()
    end
    if guiService:GetBrickCount() - lastBrickCount >= brickCountChange then
    lastBrickCount = guiService:GetBrickCount()
    updateLoadingDots()
    end
    end
    end
   
    if not isTenFootInterface then
    if currentTime - startTime > 5 and currScreenGui.BlackFrame.CloseButton.ImageTransparency > 0 then
    currScreenGui.BlackFrame.CloseButton.ImageTransparency = currScreenGui.BlackFrame.CloseButton.ImageTransparency - fadeAmount
   
    if currScreenGui.BlackFrame.CloseButton.ImageTransparency <= 0 then
    currScreenGui.BlackFrame.CloseButton.Active = true
    end
    end
    end
   end)
   
   task.spawn(function()
    local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
    local guiInsetChangedEvent = Instance.new("BindableEvent")
    guiInsetChangedEvent.Name = "GuiInsetChanged"
    guiInsetChangedEvent.Parent = RobloxGui
    guiInsetChangedEvent.Event:connect(function(x1, y1, x2, y2)
    if currScreenGui and currScreenGui:FindFirstChild("BlackFrame") then
    currScreenGui.BlackFrame.Position = UDim2.new(0, -x1, 0, -y1)
    currScreenGui.BlackFrame.Size = UDim2.new(1, x1 + x2, 1, y1 + y2)
    end
    end)
   end)
   
   local leaveGameButton, leaveGameTextLabel, errorImage = nil
   
   guiService.ErrorMessageChanged:connect(function()
    if guiService:GetErrorMessage() ~= '' then
    if isTenFootInterface then
    currScreenGui.ErrorFrame.Size = UDim2.new(1, 0, 0, 144)
    currScreenGui.ErrorFrame.Position = UDim2.new(0, 0, 0, 0)
    currScreenGui.ErrorFrame.BackgroundColor3 = COLORS.BLACK
    currScreenGui.ErrorFrame.BackgroundTransparency = 0.5
    currScreenGui.ErrorFrame.ErrorText.FontSize = Enum.FontSize.Size36
    currScreenGui.ErrorFrame.ErrorText.Position = UDim2.new(.3, 0, 0, 0)
    currScreenGui.ErrorFrame.ErrorText.Size = UDim2.new(.4, 0, 0, 144)
    if errorImage == nil then
    errorImage = Instance.new("ImageLabel")
    errorImage.Image = "rbxasset://textures/ui/ErrorIconSmall.png"
    errorImage.Size = UDim2.new(0, 96, 0, 79)
    errorImage.Position = UDim2.new(0.228125, 0, 0, 32)
    errorImage.ZIndex = 9
    errorImage.BackgroundTransparency = 1
    errorImage.Parent = currScreenGui.ErrorFrame
    end
    -- we show a B button to kill game data model on console
    if not isTenFootInterface then
    if leaveGameButton == nil then
    local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
    local utility = require(RobloxGui.Modules.Settings.Utility)
    local textLabel = nil
    leaveGameButton, leaveGameTextLabel = utility:MakeStyledButton("LeaveGame", "Leave", UDim2.new(0, 288, 0, 78))
    leaveGameButton.NextSelectionDown = leaveGameButton
    leaveGameButton.NextSelectionLeft = leaveGameButton
    leaveGameButton.NextSelectionRight = leaveGameButton
    leaveGameButton.NextSelectionUp = leaveGameButton
    leaveGameButton.ZIndex = 9
    leaveGameButton.Position = UDim2.new(0.771875, 0, 0, 37)
    leaveGameButton.Parent = currScreenGui.ErrorFrame
    leaveGameTextLabel.FontSize = Enum.FontSize.Size36
    leaveGameTextLabel.ZIndex = 10
    game:GetService("GuiService").SelectedCoreObject = leaveGameButton
    else
    game:GetService("GuiService").SelectedCoreObject = leaveGameButton
    end
    end
    end
    currScreenGui.ErrorFrame.ErrorText.Text = guiService:GetErrorMessage()
    currScreenGui.ErrorFrame.Visible = true
    local blackFrame = currScreenGui:FindFirstChild('BlackFrame')
    if blackFrame then
    blackFrame.CloseButton.ImageTransparency = 0
    blackFrame.CloseButton.Active = true
    end
    else
    currScreenGui.ErrorFrame.Visible = false
    end
   end)
   
   guiService.UiMessageChanged:connect(function(type, newMessage)
    if type == Enum.UiMessageType.UiMessageInfo then
    local blackFrame = currScreenGui and currScreenGui:FindFirstChild('BlackFrame')
    if blackFrame then
    blackFrame.UiMessageFrame.UiMessage.Text = newMessage
    if newMessage ~= '' then
    blackFrame.UiMessageFrame.Visible = true
    else
    blackFrame.UiMessageFrame.Visible = false
    end
    end
    end
   end)
   
   if guiService:GetErrorMessage() ~= '' then
    currScreenGui.ErrorFrame.ErrorText.Text = guiService:GetErrorMessage()
    currScreenGui.ErrorFrame.Visible = true
   end
   
   
   function stopListeningToRenderingStep()
    if renderSteppedConnection then
    renderSteppedConnection:disconnect()
    renderSteppedConnection = nil
    end
   end
   
   function fadeAndDestroyBlackFrame(blackFrame)
    if destroyingBackground then return end
    destroyingBackground = true
    task.spawn(function()
    local infoFrame = blackFrame:FindFirstChild("InfoFrame")
    local graphicsFrame = blackFrame:FindFirstChild("GraphicsFrame")
   
    local infoFrameChildren = infoFrame:GetChildren()
    local transparency = 0
    local rateChange = 1.8
    local lastUpdateTime = nil
   
    while transparency < 1 do
    if not lastUpdateTime then
    lastUpdateTime = tick()
    else
    local newTime = tick()
    transparency = transparency + rateChange * (newTime - lastUpdateTime)
    for i = 1, #infoFrameChildren do
    local child = infoFrameChildren[i]
    if child:IsA('TextLabel') then
    child.TextTransparency = transparency
    child.TextStrokeTransparency = transparency
    elseif child:IsA('ImageLabel') then
    child.ImageTransparency = transparency
    end
    end
    graphicsFrame.LoadingImage.ImageTransparency = transparency
    blackFrame.BackgroundTransparency = transparency
   
    if backgroundImageTransparency < 1 then
    backgroundImageTransparency = transparency
    local backgroundImages = blackFrame.BackgroundTextureFrame:GetChildren()
    for i = 1, #backgroundImages do
    backgroundImages[i].ImageTransparency = backgroundImageTransparency
    end
    end
   
    lastUpdateTime = newTime
    end
    wait()
    end
    if blackFrame ~= nil then
    stopListeningToRenderingStep()
    blackFrame:Destroy()
    end
    end)
   end
   
   function destroyLoadingElements(instant)
    if not currScreenGui then return end
    if destroyedLoadingGui then return end
    destroyedLoadingGui = true
   
    local guiChildren = currScreenGui:GetChildren()
    for i=1, #guiChildren do
    -- need to keep this around in case we get a connection error later
    if guiChildren[i].Name ~= "ErrorFrame" then
    if guiChildren[i].Name == "BlackFrame" and not instant then
    fadeAndDestroyBlackFrame(guiChildren[i])
    else
    guiChildren[i]:Destroy()
    end
    end
    end
   end
   
   function handleFinishedReplicating()
    hasReplicatedFirstElements = (#game:GetService("ReplicatedFirst"):GetChildren() > 0)
   
    if not hasReplicatedFirstElements then
    if game:IsLoaded() then
    handleRemoveDefaultLoadingGui()
    else
    local gameLoadedCon = nil
    gameLoadedCon = game.Loaded:connect(function()
    gameLoadedCon:disconnect()
    gameLoadedCon = nil
    handleRemoveDefaultLoadingGui()
    end)
    end
    else
    wait(5) -- make sure after 5 seconds we remove the default gui, even if the user doesn't
    handleRemoveDefaultLoadingGui()
    end
   end
   
   function handleRemoveDefaultLoadingGui(instant)
    if isTenFootInterface then
    ContextActionService:UnbindCoreAction('CancelGameLoad')
    end
    destroyLoadingElements(instant)
   end
   
   game:GetService("ReplicatedFirst").FinishedReplicating:connect(handleFinishedReplicating)
   if game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
    handleFinishedReplicating()
   end
   
   game:GetService("ReplicatedFirst").RemoveDefaultLoadingGuiSignal:connect(handleRemoveDefaultLoadingGui)
   if game:GetService("ReplicatedFirst"):IsDefaultLoadingGuiRemoved() then
    handleRemoveDefaultLoadingGui()
   end
   
   local UserInputServiceChangedConn;
   local function onUserInputServiceChanged(prop)
    if prop == 'VREnabled' then
    local UseVr = false
    pcall(function() UseVr = UIS.VREnabled end)
   
    if UseVr then
    if UserInputServiceChangedConn then
    UserInputServiceChangedConn:disconnect()
    UserInputServiceChangedConn = nil
    end
    handleRemoveDefaultLoadingGui(true)
    require(RobloxGui.Modules.LoadingScreen3D)
    end
    end
   end
   
   UserInputServiceChangedConn = UIS.Changed:connect(onUserInputServiceChanged)
   onUserInputServiceChanged('VREnabled')
end)

task.spawn(function()
   -- Creates all neccessary scripts for the gui on initial load, everything except build tools
   -- Created by Ben T. 10/29/10
   -- Please note that these are loaded in a specific order to diminish errors/perceived load time by user
   
   local scriptContext = game:GetService("ScriptContext")
   local touchEnabled = game:GetService("UserInputService").TouchEnabled
   
   local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
   
   local soundFolder = Instance.new("Folder")
   soundFolder.Name = "Sounds"
   soundFolder.Parent = RobloxGui
   
   -- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
   local function safeRequire(moduleScript)
    local moduleReturnValue = nil
    local success, err = pcall(function() moduleReturnValue = require(moduleScript) end)
    if not success then
    warn("Failure to Start CoreScript module" ..moduleScript.Name.. ".\n" ..err)
    end
    return moduleReturnValue
   end
   
   --CUSTOM FUNCTION FOR SYNAPSE X
   function AddCoreScriptLocal(str)
       local Inject = [==[
           --Get names
           script.Name = script.Name..[[]==]..str..[==[]]
           --FAKE SCRIPT
           local script = Instance.new("LocalScript", game.CoreGui.RobloxGui)
           script.Name = [[CoreScripts/]==]..str..[==[]]
           script.Disabled = true
           script.Source = [[print("Doin' your mom")]]
           
       ]==]
       
       loadstring(Inject..tostring(RobloxGui.CoreScriptSyn[str].Source))()
   end
   
   -- TopBar
   task.spawn(function()
       AddCoreScriptLocal("Topbar")
   end)
   -- SettingsScript
   local luaControlsSuccess, luaControlsFlagValue = pcall(function() return settings():GetFFlag("UseLuaCameraAndControl") end)
   
   -- MainBotChatScript (the Lua part of Dialogs)
   task.spawn(function()
       AddCoreScriptLocal("MainBotChatScript2")
   end)
   
   -- In-game notifications script
   task.spawn(function()
       AddCoreScriptLocal("NotificationScript2")
   end)
   -- Performance Stats Management
   task.spawn(function()
       AddCoreScriptLocal("PerformanceStatsManagerScript")
   end)
   
   -- Chat script
   task.spawn(function() safeRequire(RobloxGui.Modules.ChatSelector) end)
   task.spawn(function() safeRequire(RobloxGui.Modules.PlayerlistModule) end)
   task.spawn(function()
       AddCoreScriptLocal("BubbleChat")
   end)
   -- Purchase Prompt Script (run both versions, they will check the relevant flag)
   task.spawn(function()
       AddCoreScriptLocal("PurchasePromptScript2")
   end)
   task.spawn(function()
       AddCoreScriptLocal("PurchasePromptScript3")
   end)
   
   -- Backpack!
   task.spawn(function() safeRequire(RobloxGui.Modules.BackpackScript) end)
   task.spawn(function()
       AddCoreScriptLocal("VehicleHud")
   end)
   task.spawn(function()
       AddCoreScriptLocal("GamepadMenu")
   end)
   if touchEnabled then -- touch devices don't use same control frame
    -- only used for touch device button generation
    task.spawn(function()
    AddCoreScriptLocal("ContextActionTouch")
       end)
    RobloxGui:WaitForChild("ControlFrame")
    RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
    RobloxGui.ControlFrame.BottomLeftControl.Visible = false
   end
   
   do
    local UserInputService = game:GetService('UserInputService')
    local function tryRequireVRKeyboard()
    if UserInputService.VREnabled then
    return safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
    end
    return nil
    end
    if not tryRequireVRKeyboard() then
    UserInputService.Changed:connect(function(prop)
    if prop == "VREnabled" then
    tryRequireVRKeyboard()
    end
    end)
    end
   end
   
   -- Boot up the VR App Shell
   if UserSettings().GameSettings:InStudioMode() then
    local UserInputService = game:GetService('UserInputService')
    local function onVREnabled(prop)
    if prop == "VREnabled" then
    if UserInputService.VREnabled then
    local shellInVRSuccess, shellInVRFlagValue = pcall(function() return settings():GetFFlag("EnabledAppShell3D") end)
    local shellInVR = (shellInVRSuccess and shellInVRFlagValue == true)
    local modulesFolder = RobloxGui.Modules
    local appHomeModule = modulesFolder:FindFirstChild('Shell') and modulesFolder:FindFirstChild('Shell'):FindFirstChild('AppHome')
    if shellInVR and appHomeModule then
    safeRequire(appHomeModule)
    end
    end
    end
    end
   
    task.spawn(function()
    if UserInputService.VREnabled then
    onVREnabled("VREnabled")
    end
    UserInputService.Changed:connect(onVREnabled)
    end)
   end
end)
