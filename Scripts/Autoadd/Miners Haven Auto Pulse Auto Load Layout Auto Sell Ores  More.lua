local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
   Title = 'Project Vertigo | Miners Haven',
   Center = true,
   AutoShow = true,
})

Library.KeybindFrame.Visible = false; -- todo: add a function for this

Library:OnUnload(function()
   Library.Unloaded = true
end)

--Locals
local FetchItemModule = require(game:GetService("ReplicatedStorage").FetchItem)
local TycoonBase = game.Players.LocalPlayer.PlayerTycoon.Value.Base
local MyTycoon = game:GetService("Players").LocalPlayer.PlayerTycoon.Value
local MoneyLibary = require(game:GetService("ReplicatedStorage").MoneyLib)
local PlayersList = {}
if syn then request = syn.request end

--Functions
function GetUpgraders()
   tbl = {}
   for i,v in pairs(MyTycoon:GetChildren()) do
       if v:FindFirstChild("Model") and v.Model:FindFirstChild("Upgrade") then
           table.insert(tbl,v)
       elseif v:FindFirstChild("Model") and v.Model:FindFirstChild("Upgrader") then
           table.insert(tbl,v)
       elseif v:FindFirstChild("Model") and v.Model:FindFirstChild("Cannon") then
           table.insert(tbl,v)
       end
   end
   return tbl
end
function GetPlayers()
   table.clear(PlayersList)
   for i,v in pairs(game.Players:GetChildren()) do
       table.insert(PlayersList,v.Name)
   end
end
GetPlayers()
game.Players.PlayerAdded:Connect(function()
   GetPlayers()
end)
game.Players.PlayerRemoving:Connect(function()
   GetPlayers()
end)
function GetDropped()
   local tbl = {}
   for i,v in pairs(game:GetService("Workspace").DroppedParts[MyTycoon.Name]:GetChildren()) do
       table.insert(tbl,v)        
   end
   return tbl
end
function ShopItems()
   for i,v in pairs(getgc(true)) do
       if type(v) == "table" and rawget(v,"Miscs") then
           return v["All"]
       end
   end
end
function HasItem(Needed)
   if game:GetService("ReplicatedStorage").HasItem:InvokeServer(Needed) > 0 then
       return true
   end
   return false
end
function IsShopItem(Needed)
   for i,v in pairs(ShopItems()) do
       if tonumber(v.ItemId.Value) == tonumber(Needed) then
           return true
       end
   end
   return false
end


local Settings = {AutoLoopUpgrader=false,LayoutCopierSelected="1",LayoutPlayerSelected="",ItemTracker=false,WebhookLink="",LoopPulse=false,AutoPulse=false,LoopRemoteDrop=false,AutoLoadSetup=false,LoadAfter=5,ShouldReload=false,LayoutSelected=1,AutoRebirth=false,LoopUpgrader=false,SelectedUpgrader="nil",SelectedFurnace="nil"}
local Tabs = {Main = Window:AddTab('Main'),Layouts=Window:AddTab('Layouts'),['UI Settings'] = Window:AddTab('UI Settings'),}

local LayoutsTabbox = Tabs.Layouts:AddLeftTabbox()
local LayoutsTab = LayoutsTabbox:AddTab('Ores')

LayoutsTab:AddDropdown('LayoutPlayerSelected',{Values = PlayersList,Default = 2,Multi = false,Text = 'Player',})
LayoutsTab:AddDropdown('LayoutCopierSelected', {Values = {1,2,3},Default = 1,Multi = false,Text = 'Layout',})
LayoutsTab:AddButton('Build Layout', function()
   for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:GetService("Players")[Settings.LayoutPlayerSelected].Layouts["Layout"..Settings.LayoutCopierSelected].Value)) do
       task.spawn(function()
           if HasItem(v["ItemId"]) == true then
               local TopLeft = TycoonBase.CFrame * CFrame.new(Vector3.new(TycoonBase.Size.X/2, 0, TycoonBase.Size.Z/2))
               local Position = TopLeft * Vector3.new(tonumber(v.Position[1]), tonumber(v.Position[2]), tonumber(v.Position[3]))
               local Rotation = Vector3.new(tonumber(v.Position[4]),tonumber(v.Position[5]),tonumber(v.Position[6]))
               local NewCf = CFrame.new(Position, Position + (Rotation * 5))
               game:GetService("ReplicatedStorage").PlaceItem:InvokeServer(FetchItemModule.Get(nil,v["ItemId"]).Name,NewCf,{TycoonBase})
               task.wait()
           elseif HasItem(v["ItemId"]) == false and IsShopItem(v["ItemId"]) == true and game:GetService("Players").LocalPlayer.PlayerGui.GUI.Money.Value >= game:GetService("ReplicatedStorage").Items[FetchItemModule.Get(nil,v["ItemId"]).Name].Cost.Value then
               game:GetService("ReplicatedStorage").BuyItem:InvokeServer(FetchItemModule.Get(nil,v["ItemId"]).Name,1)
               task.wait()
               local TopLeft = TycoonBase.CFrame * CFrame.new(Vector3.new(TycoonBase.Size.X/2, 0, TycoonBase.Size.Z/2))
               local Position = TopLeft * Vector3.new(tonumber(v.Position[1]), tonumber(v.Position[2]), tonumber(v.Position[3]))
               local Rotation = Vector3.new(tonumber(v.Position[4]),tonumber(v.Position[5]),tonumber(v.Position[6]))
               local NewCf = CFrame.new(Position, Position + (Rotation * 5))
               game:GetService("ReplicatedStorage").PlaceItem:InvokeServer(FetchItemModule.Get(nil,v["ItemId"]).Name,NewCf,{TycoonBase})
               task.wait()
           else
               if IsShopItem(v["ItemId"]) == true then
                   print("Cant Afford Item, "..FetchItemModule.Get(nil,v["ItemId"]).Name)
               else
                   print("Cant Find, "..FetchItemModule.Get(nil,v["ItemId"]).Name)
               end
           end
       end)
   end
end)

local OresTabbox = Tabs.Main:AddLeftTabbox()
local OresTab = OresTabbox:AddTab('Ores')
local RebirthTabbox = Tabs.Main:AddRightTabbox()
local RebirthTab = RebirthTabbox:AddTab('Rebirthing')
local MiscTabbox = Tabs.Main:AddLeftTabbox()
local MiscTab = MiscTabbox:AddTab('Misc')
local WebhookTabbox = Tabs.Main:AddRightTabbox()
local WebhookTab = WebhookTabbox:AddTab('Webhook')

OresTab:AddInput('SelectedUpgrader', {Default = 'Upgrader',Numeric = false,Finished = false,Text = 'Upgrader',Placeholder = 'Upgrader Name',})
OresTab:AddToggle('LoopUpgrader', {Text = 'Loop Upgrader',Default = false})
OresTab:AddToggle('AutoLoopUpgraders', {Text = 'Loop All Upgraders',Default = false})
OresTab:AddDivider()
OresTab:AddInput('SelectedFurnace', {Default = 'Furnace',Numeric = false,Finished = false,Text = 'Furnace',Placeholder = 'Furnace',})
OresTab:AddButton('Sell Ores', function()
   for i,v in pairs(GetDropped()) do
       if MyTycoon:FindFirstChild(Settings.SelectedFurnace) then
           firetouchinterest(v,MyTycoon[Settings.SelectedFurnace].Model.Lava,0)
           task.wait()
           firetouchinterest(v,MyTycoon[Settings.SelectedFurnace].Model.Lava,1)
       end
   end
end)

RebirthTab:AddToggle('AutoRebirth', {Text = 'Auto Rebirth',Default = false})
RebirthTab:AddToggle('AutoLoadSetup', {Text = 'Load Layout',Default = false})
RebirthTab:AddDropdown('LayoutSelected', {Values = {1,2,3},Default = 1,Multi = false,Text = 'Layout',})
RebirthTab:AddToggle('ShouldReload', {Text = 'Reload Layout',Default = false})
RebirthTab:AddSlider('LoadAfter', {Text = 'Reload After (s)',Default = 5,Min = 1,Max = 60,Rounding = 0,Compact = false,})

MiscTab:AddToggle('LoopProximtyPrompt', {Text = 'Auto Excavator',Default = false})
MiscTab:AddToggle('LoopRemoteDrop', {Text = 'Auto Remote',Default = false})
MiscTab:AddToggle('LoopPulse', {Text = 'Auto Pulse',Default = false})
MiscTab:AddButton('Get Free Daily Crate', function()
   firesignal(game:GetService("Players").LocalPlayer.PlayerGui.GUI.SpookMcDookShop.RedeemFrame.MouseButton1Click)
end)
MiscTab:AddDivider()
MiscTab:AddToggle('ToggleCraftsMan', {Text = 'Craftman Gui',Default = false})

WebhookTab:AddInput('WebhookLink', {Default = 'Link',Numeric = false,Finished = false,Text = 'Link',Placeholder = 'Link',})
WebhookTab:AddToggle('ItemTracker', {Text = 'Item Tracker',Default = false})

--Toggles
Toggles.ItemTracker:OnChanged(function()
   Settings.ItemTracker = Toggles.ItemTracker.Value
end)
Toggles.ToggleCraftsMan:OnChanged(function()
   game:GetService("Players").LocalPlayer.PlayerGui.GUI.Craftsman.Visible = Toggles.ToggleCraftsMan.Value
end)
Toggles.LoopPulse:OnChanged(function()
   Settings.LoopPulse = Toggles.LoopPulse.Value
   task.spawn(function()
       while Settings.LoopPulse == true do task.wait()
           if Settings.LoopPulse == true then
               game:GetService("ReplicatedStorage").Pulse:FireServer()
           end
       end
   end)
end)
Toggles.LoopRemoteDrop:OnChanged(function()
   Settings.LoopRemoteDrop = Toggles.LoopRemoteDrop.Value
   task.spawn(function()
       while Settings.LoopRemoteDrop == true do task.wait()
           if Settings.LoopRemoteDrop == true then
               game:GetService("ReplicatedStorage").RemoteDrop:FireServer()
           end
       end
   end)
end)
Toggles.AutoLoopUpgraders:OnChanged(function()
   Settings.AutoLoopUpgraders = Toggles.AutoLoopUpgraders.Value
   task.spawn(function()
       while Settings.AutoLoopUpgraders do task.wait()
           if Settings.AutoLoopUpgraders then
               for i,v2 in pairs(GetDropped()) do
                   for i2,v in pairs(GetUpgraders()) do
                       if v.Model:FindFirstChild("Upgrade") then
                           firetouchinterest(v2,v.Model.Upgrade,0)
                           task.wait()
                           firetouchinterest(v2,v.Model.Upgrade,1)
                       elseif v.Model:FindFirstChild("Upgrader") then
                           firetouchinterest(v2,v.Model.Upgrader,0)
                           task.wait()
                           firetouchinterest(v2,v.Model.Upgrader,1)
                       elseif v.Model:FindFirstChild("Cannon") then
                           firetouchinterest(v2,v.Model.Cannon,0)
                           task.wait()
                           firetouchinterest(v2,v.Model.Cannon,1)
                       end
                   end
               end
           end
       end
   end)
end)
Toggles.LoopUpgrader:OnChanged(function()
   Settings.LoopUpgrader = Toggles.LoopUpgrader.Value
   task.spawn(function()
       while Settings.LoopUpgrader do task.wait()
           if Settings.LoopUpgrader then
               for i,v in pairs(GetDropped()) do
                   if MyTycoon:FindFirstChild(Settings.SelectedUpgrader) and MyTycoon[Settings.SelectedUpgrader].Model:FindFirstChild("Upgrade") then
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Upgrade,0)
                       task.wait()
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Upgrade,1)
                   elseif MyTycoon:FindFirstChild(Settings.SelectedUpgrader) and MyTycoon[Settings.SelectedUpgrader].Model:FindFirstChild("Upgrader") then
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Upgrader,0)
                       task.wait()
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Upgrader,1)
                   elseif MyTycoon:FindFirstChild(Settings.SelectedUpgrader) and MyTycoon[Settings.SelectedUpgrader].Model:FindFirstChild("Cannon") then
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Cannon,0)
                       task.wait()
                       firetouchinterest(v,MyTycoon[Settings.SelectedUpgrader].Model.Cannon,1)
                   end
               end
           end
       end
   end)
end)
Toggles.LoopProximtyPrompt:OnChanged(function()
   Settings.LoopProximtyPrompt = Toggles.LoopProximtyPrompt.Value
   task.spawn(function()
       while Settings.LoopProximtyPrompt do task.wait()
           if Settings.LoopProximtyPrompt then
               for i,v in pairs(MyTycoon:GetChildren()) do
                   if string.find(v.Name,"Excavator") then
                      fireproximityprompt(v.Model.Internal.ProximityPrompt)
                   end
               end
           end
       end
   end)
end)
Toggles.AutoRebirth:OnChanged(function()
   Settings.AutoRebirth = Toggles.AutoRebirth.Value
   task.spawn(function()
       while Settings.AutoRebirth do task.wait()
           if game:GetService("Players").LocalPlayer.PlayerGui.GUI.Money.Value >= MoneyLibary.RebornPrice(game:GetService("Players").LocalPlayer) and (game:GetService("Players").LocalPlayer.PlayerTycoon.Value:GetPivot().p - game.Players.LocalPlayer.Character:GetPivot().p).Magnitude <= 150 and Settings.AutoRebirth  == true then
               game:GetService("ReplicatedStorage").Rebirth:InvokeServer(26)
               if Settings.AutoLoadSetup == true then
                   game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load","Layout"..Settings.LayoutSelected)
                   if Settings.ShouldReload == true then
                       task.wait(Settings.LoadAfter)
                       game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load","Layout"..Settings.LayoutSelected)
                   end
               end
           end
       end
   end)
end)
Toggles.AutoLoadSetup:OnChanged(function()
   Settings.AutoLoadSetup = Toggles.AutoLoadSetup.Value
end)
Toggles.ShouldReload:OnChanged(function()
   Settings.ShouldReload = Toggles.ShouldReload.Value
end)

game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notifications.ChildAdded:Connect(function(v)
   if v.Name == "ItemTemplate" or "ItemTemplateMini" and v:FindFirstChild("Title") and v:FindFirstChild("Tier") and v:FindFirstChild("Icon") and Settings.ItemTracker == true then
       local ImageId = v.Icon.Image
       if string.find(ImageId,"rbxasset") then
          ImageId = string.split(tostring(v.Icon.Image),"//")[2]
       end
       local ImageData = game:GetService("HttpService"):JSONDecode(request({Url="https://thumbnails.roblox.com/v1/assets?assetIds="..tonumber(ImageId).."&returnPolicy=PlaceHolder&size=512x512&format=Png&isCircular=false"}).Body)
       local ImageLink = ImageData.data[1]["imageUrl"]
       local Data = {["embeds"]= {{
           ["title"] = "**New Item**",
           ["fields"] = {
               {
                   ["name"] = ":page_facing_up: **Item**",
                   ["value"] =  tostring("```\n"..v.Title.Text.."```"),
                   ["inline"] = true
               },
               {
                   ["name"] = (":arrow_up: **Tier**"),
                   ["value"] =  tostring("```\n"..v.Tier.Text.."```"),
                   ["inline"] = true
               },
           },
       ["color"] = tonumber("0x"..tostring(string.split((string.format("#%02X%02X%02X", v.BackgroundColor3.R * 0xFF,v.BackgroundColor3.G * 0xFF, v.BackgroundColor3.B * 0xFF)),"#")[2])),
       ["footer"] = {["text"] = "Project Vertigo | "..os.date()},
       ["thumbnail"] = {["url"]=tostring(ImageLink)}
       }}
   }
   
       request({Url = Settings.WebhookLink.."?wait=true", Body =  game:GetService("HttpService"):JSONEncode(Data), Method = "POST", Headers = {["content-type"] = "application/json"}})
   end
end)


--Options
Options.WebhookLink:OnChanged(function()
   Settings.WebhookLink = Options.WebhookLink.Value
end)
Options.SelectedUpgrader:OnChanged(function()
   Settings.SelectedUpgrader = Options.SelectedUpgrader.Value
end)
Options.SelectedFurnace:OnChanged(function()
   Settings.SelectedFurnace = Options.SelectedFurnace.Value
end)
Options.LayoutSelected:OnChanged(function()
   Settings.LayoutSelected = Options.LayoutSelected.Value
end)
Options.LoadAfter:OnChanged(function()
   Settings.LoadAfter = Options.LoadAfter.Value
end)
Options.LayoutCopierSelected:OnChanged(function()
   Settings.LayoutCopierSelected = Options.LayoutCopierSelected.Value
end)
Options.LayoutPlayerSelected:OnChanged(function()
   Settings.LayoutPlayerSelected = Options.LayoutPlayerSelected.Value
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('ProjectVertigo')
SaveManager:SetFolder('ProjectVertigo/MinersHaven')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()