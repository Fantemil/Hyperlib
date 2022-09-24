local webhookcheck =
is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
secure_load and "Sentinel" or
KRNL_LOADED and "Krnl" or
SONA_LOADED and "Sona" or
"Kid with shit exploit"
request = http_request or request or HttpPost or syn.request

synapse = true
if identifyexecutor():match('Synapse') == nil then
    synapse = false
    --mh:Notify("Error!", "This Feature Only Works On Synapse X")
end

function stringtocolor(str)
    return Color3.fromRGB(table.unpack(str:gsub(" ",""):split(",")))
end

settingsNameT = "theme.Slender"

DefaultSettingsT = {
    ThisIs = "JSON",
 Background = "24, 24, 24", 
 Glow = "255, 255, 254", 
 Accent = "10, 10, 10", 
 LightContrast = "20, 20, 20", 
 DarkContrast = "14, 14, 14",  
 TextColor = "254, 255, 255",
    key = ""
}

SettingsT = nil

if not pcall(function() readfile(settingsNameT) end) then writefile(settingsNameT, game:service'HttpService':JSONEncode(DefaultSettingsT)) end

SettingsT = game:service'HttpService':JSONDecode(readfile(settingsNameT))

function SaveT()
writefile(settingsNameT,game:service'HttpService':JSONEncode(SettingsT))
end

if SettingsT.key == nil then
    SettingsT.key = ""
    SaveT()
end
-- Gui to Lua
-- Version: 3.2
TweenService = game:GetService('TweenService')
local HttpService = game:GetService('HttpService')
-- Instances:

keygui = Instance.new("ScreenGui")
keygui_2 = Instance.new("Frame")
keyglow = Instance.new("ImageLabel")
UICorner = Instance.new("UICorner")
pastekey = Instance.new("TextBox")
UICorner_2 = Instance.new("UICorner")
UITextSizeConstraint = Instance.new("UITextSizeConstraint")
UIPadding = Instance.new("UIPadding")
usekey = Instance.new("TextButton")
UICorner_3 = Instance.new("UICorner")
getkey = Instance.new("TextButton")
UICorner_4 = Instance.new("UICorner")
returnmsg = Instance.new("TextLabel")
UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

--Properties:

keygui.Name = "keygui"
keygui.Parent = game:GetService("CoreGui")
keygui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

keygui_2.Name = "keygui"
keygui_2.Parent = keygui
keygui_2.BackgroundColor3 = stringtocolor(SettingsT.Background)
keygui_2.BorderSizePixel = 0
keygui_2.AnchorPoint = Vector2.new(0.5,0.5)
keygui_2.Position = UDim2.new(0.5, 0, 0.5, 0)
--keygui_2.Size = UDim2.new(0, 544, 0, 171)

keyglow.Name = "Glow"
keyglow.BackgroundTransparency = 1
keyglow.Position = UDim2.new(0, -15, 0, -15)
keyglow.Size = UDim2.new(1, 30, 1, 30)
keyglow.ZIndex = 0
keyglow.Image = "rbxassetid://5028857084"
keyglow.ImageTransparency = 0
keyglow.ImageColor3 = stringtocolor(SettingsT.Glow)
keyglow.ScaleType = Enum.ScaleType.Slice
keyglow.SliceCenter = Rect.new(24, 24, 276, 276)
keyglow.Parent = keygui_2
keyglow.ZIndex = 1

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = keygui_2

pastekey.Name = "pastekey"
pastekey.Parent = keygui_2
pastekey.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
pastekey.Position = UDim2.new(0.082978189, 0, 0.347213298, 0)
--pastekey.Size = UDim2.new(0, 453, 0, 30)
pastekey.Font = Enum.Font.Jura
pastekey.PlaceholderColor3 = stringtocolor(SettingsT.TextColor)
pastekey.PlaceholderText = "Paste Key..."
pastekey.Text = SettingsT.key
pastekey.TextColor3 = stringtocolor(SettingsT.TextColor)
pastekey.TextScaled = true
pastekey.TextSize = 14.000
pastekey.TextWrapped = true
pastekey.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = pastekey

UITextSizeConstraint.Parent = pastekey
UITextSizeConstraint.MaxTextSize = 15

UIPadding.Parent = pastekey
UIPadding.PaddingLeft = UDim.new(0, 10)

usekey.Name = "usekey"
usekey.Parent = keygui_2
usekey.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
usekey.Position = UDim2.new(0.143738851, 0, 0.668027103, 0)
--usekey.Size = UDim2.new(0, 163, 0, 29)
usekey.AutoButtonColor = false
usekey.Font = Enum.Font.Jura
usekey.Text = "Use Key"
usekey.TextColor3 = stringtocolor(SettingsT.TextColor)
usekey.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = usekey

getkey.Name = "getkey"
getkey.Parent = keygui_2
getkey.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
getkey.Position = UDim2.new(0.555503488, 0, 0.668027103, 0)
--getkey.Size = UDim2.new(0, 163, 0, 29)
getkey.AutoButtonColor = false
getkey.Font = Enum.Font.Jura
getkey.Text = "Get Key"
getkey.TextColor3 = stringtocolor(SettingsT.TextColor)
getkey.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = getkey

returnmsg.Name = "returnmsg"
returnmsg.Parent = keygui_2
returnmsg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
returnmsg.BackgroundTransparency = 1.000
returnmsg.Position = UDim2.new(0, 0, 0.2, 0)
returnmsg.Size = UDim2.new(0, 544, 0, 133)
returnmsg.Visible = false
returnmsg.Font = Enum.Font.Jura
returnmsg.Text = "placeholder"
returnmsg.TextColor3 = stringtocolor(SettingsT.TextColor)
returnmsg.TextScaled = true
returnmsg.TextSize = 14.000
returnmsg.TextWrapped = true

UITextSizeConstraint_2.Parent = returnmsg
UITextSizeConstraint_2.MaxTextSize = 22

keytopbar = Instance.new("ImageLabel")
keytopbar.Image = "rbxassetid://4595286933"
keytopbar.ScaleType = "Slice"
keytopbar.SliceCenter = Rect.new(4,4,296,296)
keytopbar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
keytopbar.Parent = keygui_2
--keytopbar.Size = UDim2.new(0, 544, 0, 38)
keytopbar.Position = UDim2.new(0,0,0,0)
keytopbar.ImageTransparency = 0
keytopbar.BackgroundTransparency = 1
keytopbar.BorderSizePixel = 0
keytopbar.Name = 'keytopbar'

topbartext = Instance.new("TextLabel")
topbartext.Text = "Slender Hub - Miner's Haven"
topbartext.BackgroundTransparency = 1
topbartext.Name = "topbartext"
topbartext.TextScaled = false
topbartext.TextSize = 0
topbartext.TextTransparency = 0
topbartext.TextColor3 = stringtocolor(SettingsT.TextColor)
topbartext.Font = Enum.Font.Jura
--topbartext.Size = UDim2.new(0,346,0,41)
topbartext.AnchorPoint = Vector2.new(0.5,0)
topbartext.Position = UDim2.new(0.5,0,0,0.8)
topbartext.Parent = keytopbar
topbartext.BackgroundColor3 = Color3.fromRGB(255,255,255)

backkey = Instance.new('TextButton')
backkey.Name = "backkey"
backkey.Parent = keygui_2
backkey.AnchorPoint = Vector2.new(0.5,0)
backkey.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
backkey.Position = UDim2.new(0.5, 0, 0, 125)
backkey.Size = UDim2.new(0, 163, 0, 29)
backkey.AutoButtonColor = false
backkey.Font = Enum.Font.Jura
backkey.Text = "Back"
backkey.TextColor3 = stringtocolor(SettingsT.TextColor)
backkey.TextSize = 14.000
backkey.TextTransparency = 1
backkey.BackgroundTransparency = 1
backkey.Visible = false

copykey = Instance.new('TextButton')
copykey.Name = "copykey"
copykey.Parent = keygui_2
copykey.AnchorPoint = Vector2.new(0.5,0)
copykey.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
copykey.Position = UDim2.new(0.5, 0, 0, 50)
copykey.Size = UDim2.new(0, 163, 0, 29)
copykey.AutoButtonColor = false
copykey.Font = Enum.Font.Jura
copykey.Text = "Copy Url"
copykey.TextColor3 = stringtocolor(SettingsT.TextColor)
copykey.TextSize = 14.000
copykey.TextTransparency = 1
copykey.BackgroundTransparency = 1
copykey.Visible = false

UICorner_5 = Instance.new("UICorner")
UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = backkey

UICorner_6= Instance.new("UICorner")
UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = copykey

local easingstyle = Enum.EasingStyle.Bounce
TweenService:Create(keygui_2, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0, 544, 0, 171)}):Play()
TweenService:Create(keytopbar, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0, 544, 0, 38)}):Play()
TweenService:Create(topbartext, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0,346,0,41), TextSize = 25}):Play()
TweenService:Create(pastekey, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0, 453, 0, 30)}):Play()
TweenService:Create(usekey, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0, 163, 0, 29)}):Play()
TweenService:Create(getkey, TweenInfo.new(1, easingstyle), {Size = UDim2.new(0, 163, 0, 29)}):Play()

local keyclicked = false
local getpage = false
_G.wl_key = pastekey.Text

pastekey.Changed:Connect(function(value)
    if value == "Text" then
        _G.wl_key = pastekey.Text
    end
end)

usekey.MouseEnter:Connect(function()
    if not keyclicked then
        TweenService:Create(usekey, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3}):Play()
    end
end)

usekey.MouseLeave:Connect(function()
    if not keyclicked then
        TweenService:Create(usekey, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    end
end)

getkey.MouseEnter:Connect(function()
    if not keyclicked then
        TweenService:Create(getkey, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3}):Play()
    end
end)

getkey.MouseLeave:Connect(function()
    if not keyclicked then
        TweenService:Create(getkey, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    end
end)

backkey.MouseEnter:Connect(function()
    if getpage then
        TweenService:Create(backkey, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3}):Play()
    end
end)

backkey.MouseLeave:Connect(function()
    if getpage then
        TweenService:Create(backkey, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    end
end)

copykey.MouseEnter:Connect(function()
    if getpage then
        TweenService:Create(copykey, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3}):Play()
    end
end)

copykey.MouseLeave:Connect(function()
    if getpage then
        TweenService:Create(copykey, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    end
end)

copykey.MouseButton1Click:Connect(function()
    setclipboard('https://mh.slender.dev/getkey')
    copykey.Text = 'Copied To Clipboard!'
end)

usekey.MouseButton1Click:Connect(function()
    if keyclicked then
        return
    end
    keyclicked = true
    usekey.Text = 'Validating...'
    loadstring(game:HttpGet('https://raw.githubusercontent.com/slendercreeper/MinersHaven/main/Main%20Script.lua'))()
    --loadstring(readfile('scripttest.txt'))()
end)


getkey.MouseButton1Click:Connect(function()
    if keyclicked then
        return
    end
    keyclicked = true
    backkey.Visible = true
    copykey.Visible = true
    TweenService:Create(keyglow, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(255,0,0)}):Play()
    local thingstotween = {"TextButton", "TextLabel", "ImageLabel", "TextBox"}
    for i,v in pairs(keygui_2:GetDescendants()) do
        if v.Name ~= 'keytopbar' and v.Name ~= 'returnmsg' and v.Name ~= "Glow" and v.Name ~= "backkey" and v.Name ~= "copykey" then
            if v:IsA('TextButton') or v:IsA('TextBox') then
                TweenService:Create(v, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
                coroutine.wrap(function() wait(0.5); v.Visible = false; end)()
            end
        end
    end
    returnmsg.Text = 'Go to https://mh.slender.dev/getkey to get your free key!'
    returnmsg.TextTransparency = 1
    returnmsg.Visible = true
    wait(0.5)
    TweenService:Create(returnmsg, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
    TweenService:Create(backkey, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
    TweenService:Create(copykey, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
    wait(0.5)
    getpage = true
end)

backkey.MouseButton1Click:Connect(function()
    getpage = false
    TweenService:Create(returnmsg, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
    TweenService:Create(backkey, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
    TweenService:Create(copykey, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
    wait(0.5)
    returnmsg.Visible = false
    local thingstotween = {"TextButton", "TextLabel", "ImageLabel", "TextBox"}
    for i,v in pairs(keygui_2:GetDescendants()) do
        if v.Name ~= 'keytopbar' and v.Name ~= 'returnmsg' and v.Name ~= "Glow" and v.Name ~= "backkey" and v.Name ~= "copykey" then
            if v:IsA('TextButton') or v:IsA('TextBox') then
                v.Visible = true
                TweenService:Create(v, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            end
        end
    end
    TweenService:Create(keyglow, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
    wait(0.5)
    keyclicked = false
end)