local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'


local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
   Title = 'Project Vertigo | Blending Simulator 2',
   Center = true,
   AutoShow = true,
})

Library.KeybindFrame.Visible = false; -- todo: add a function for this

Library:OnUnload(function()
   Library.Unloaded = true
end)

local Settings = {Area="Area1",Empty="Blend Token",Pause=false,WebhookSent=false,WebhookLink="",WebhookId=""}

--functions
function WebhookInit()
   local data = {["embeds"]= {{["description"] = "Farming On: ||"..game.Players.LocalPlayer.Name.."||",["title"] = "**Current Stats**",["fields"] = {{["name"] = ":moneybag: :",["value"] =  tostring("```\n"..game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Money.Ammount.Text.."```"),["inline"] = false},{["name"] = ":bar_chart: :",["value"] =  tostring("```\n"..game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Level.Balk.Level.Text.."```"),["inline"] = false},},["color"] = tonumber(0x6fa8dc),["footer"] = {["text"] = os.date()}}}}
   local json = game:GetService("HttpService"):JSONEncode(data)
   local headers = {["content-type"] = "application/json"}
   if syn then request = syn.request end
   Settings.WebhookId = game:GetService("HttpService"):JSONDecode(request({Url = Settings.WebhookLink.."?wait=true", Body = json, Method = "POST", Headers = headers}).Body).id
end
function WebhookUpdate()
   local data = {["embeds"]= {{["description"] = "Farming On: ||"..game.Players.LocalPlayer.Name.."||",["title"] = "**Current Stats**",["fields"] = {{["name"] = ":moneybag: :",["value"] =  tostring("```\n"..game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Money.Ammount.Text.."```"),["inline"] = false},{["name"] = ":bar_chart: :",["value"] =  tostring("```\n"..game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Level.Balk.Level.Text.."```"),["inline"] = false},},["color"] = tonumber(0x6fa8dc),["footer"] = {["text"] = os.date()}}}}
   local json = game:GetService("HttpService"):JSONEncode(data)
   local headers = {["content-type"] = "application/json"}
   if syn then request = syn.request end
   request({Url = ("%s/messages/%s"):format(Settings.WebhookLink,Settings.WebhookId).."?wait=true", Body = json, Method = "PATCH", Headers = headers})
end
function GetBag()
   return tonumber(string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Backpack.Ammount.Text,":")[2],"/")[1])
end
function GetBagSize()
   return tonumber(string.split(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerStats.Backpack.Ammount.Text,"/")[2])
end
function GetAreas()
   return {"Area1","Area2","Area3","Area4","Area5","Area6","Area7"}
end
function GetPlot()
   for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
       if v:FindFirstChild("PlotOwner") and v.PlotOwner.Value == game.Players.LocalPlayer.Name then
           return v
       end
   end
end
function ClickBlend()
   if isrbxactive() == true then
       local blend = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu.Blend
       wait(.2)
       mousemoveabs(blend.AbsolutePosition.X+blend.AbsoluteSize.X/2, blend.AbsolutePosition.Y+blend.AbsoluteSize.Y)
       wait()
       mousemoveabs(blend.AbsolutePosition.X+blend.AbsoluteSize.X/2, blend.AbsolutePosition.Y+(blend.AbsoluteSize.Y+1))
       wait(.2)
       mouse1click()
       Settings.Pause = false
   else
       warn("Roblox Not Open!")
       Settings.Pause = false
   end
end
function ClickPlus(Item,TimesToClick)
   if isrbxactive() == true then
       if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 16633520) then
           local add = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu["Add_all"]
           wait(.5)
           mousemoveabs(add.AbsolutePosition.X+add.AbsoluteSize.X/2, add.AbsolutePosition.Y+add.AbsoluteSize.Y)
           wait()
           mousemoveabs(add.AbsolutePosition.X+add.AbsoluteSize.X/2, add.AbsolutePosition.Y+(add.AbsoluteSize.Y+1))
           wait(.2)
           mouse1click()
           wait(.2)
           ClickBlend()
       else
           local plus = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu.CustomMenu.Inventory[Item].Plus
           wait(.5)
           mousemoveabs(plus.AbsolutePosition.X+plus.AbsoluteSize.X/2, plus.AbsolutePosition.Y+plus.AbsoluteSize.Y)
           wait()
           mousemoveabs(plus.AbsolutePosition.X+plus.AbsoluteSize.X/2, plus.AbsolutePosition.Y+(plus.AbsoluteSize.Y+1))
           wait(.3)
           for i = 1, TimesToClick do
               wait(.08)
               mouse1click()
           end
           ClickBlend()
       end
   else
       Settings.Pause = false
   end
end

function OpenBlenderMenu(Cap)
   keypress(0x45); task.wait(); keyrelease(0x45)
   task.wait(.2)
   if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 16633520) then
       ClickPlus("VipGod",1)
   else
       for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu.CustomMenu.Inventory:GetChildren()) do
           if v:IsA("Frame") and v.Visible == true and v:FindFirstChild("YouHave") then
               if (tonumber(string.split(v.YouHave.TextLabel.Text,":")[2]) - Cap) > 0 then
                   ClickPlus(v.Name,Cap)
               end
           end
       end
   end
end
function GotoBlender()
   for i,v in pairs(GetPlot().PlacedItems.Blenders:GetChildren()) do
       if v:FindFirstChild("CanBeAccesed") and v.CanBeAccesed.Value == true and v:FindFirstChild("MaxCap") then
           local Cap = v.MaxCap.Value
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.BlendMenuOpener.CFrame + Vector3.new(0,5,0)
           wait(.5)
           OpenBlenderMenu(Cap)
       end
   end
end

local Tabs = {Main = Window:AddTab('Main'), ['UI Settings'] = Window:AddTab('UI Settings'),}

local FarmingBox = Tabs.Main:AddLeftGroupbox('Farming')
local QuestBox = Tabs.Main:AddLeftGroupbox('Quest Swapper')
local TeleportsBox = Tabs.Main:AddRightGroupbox('Teleports')
local WebhookBox = Tabs.Main:AddLeftGroupbox('Webhook')

QuestBox:AddButton("Gearo Quest", function()
   game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui["Quest_Menu"]["Gearo_GiveRandomQuest"]:FireServer()
end)
TeleportsBox:AddButton("Goto Plot", function()
   game.Players.LocalPlayer.Character:PivotTo(GetPlot().Floor.CFrame + Vector3.new(0,50,0))
end)
TeleportsBox:AddDivider()
TeleportsBox:AddButton("Goto Shop", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Shop1.Leave.CFrame)
end)
TeleportsBox:AddButton("Goto Shop 2", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Shop2.Leave.CFrame)
end)
TeleportsBox:AddButton("Goto Shop 3", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Shop3.Leave.CFrame)
end)
TeleportsBox:AddButton("Goto Shop Blend", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Shop_Blend.Leave.CFrame)
end)
TeleportsBox:AddButton("Goto Shop Gearo", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Gearo_Shop.Leave.CFrame)
end)
TeleportsBox:AddButton("Goto Shop Magic", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace")["Music_Zones"].Shop_Magic.Leave.CFrame)
end)
TeleportsBox:AddDivider()
TeleportsBox:AddButton("Goto Jarro [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Quest_Jarro"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Kasjmirr [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Quest_Kasjmirr"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Beacho [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Quest_Beacho"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Gearo [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Quest_Gearo"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Wizardo [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Wizardo"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Frosto [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Frosto"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)
TeleportsBox:AddButton("Goto Gingo [NPC]", function()
   game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Quests["Gingo"]["Glow_ring"]:GetPivot()+Vector3.new(0,3,0))
end)

WebhookBox:AddInput('WebhookLink', {Default = "Webhook Link",Numeric = false,Finished = false,Text = 'Webhook Link',Placeholder = 'Webhook Link',})
WebhookBox:AddToggle('Webhook', {Text = 'Send Webhook',Default = false})

FarmingBox:AddDropdown('AreaChoice', {Values = GetAreas(),Default = 1,Multi = false,Text = 'Area To Farm',})
FarmingBox:AddToggle('AutoIngredents', {Text = 'Auto Collect Ingredents',Default = false})
FarmingBox:AddToggle('AutoBlend', {Text = 'Auto Blend Ingredents',Default = false, Tooltip = 'May Be Buggy, Use FullScreen [Roblox Must Be Open!]'})
FarmingBox:AddDropdown('EmptyChoice', {Values = {"Blend Token","Blender [Free]"},Default = 1,Multi = false,Text = 'Auto Empty Backpack Method',})
FarmingBox:AddToggle('AutoEmpty', {Text = 'Auto Empty Backpack',Default = false})
FarmingBox:AddToggle('AutoToken', {Text = 'Auto Collect Blend Tokens',Default = false})
FarmingBox:AddToggle('AutoPresent', {Text = 'Auto Collect Presents',Default = false})
FarmingBox:AddButton('Collect Tokens', function()
   for i,v in next, game:GetService("Workspace").Tokens:GetChildren() do
       if v.Transparency ~= 0.5 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       end
       task.wait(.1)
   end
end)
FarmingBox:AddButton('Auto Buy Skill Tree', function()
   for i,v in pairs(game:GetService("Workspace").SkillTree:GetChildren()) do
       game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.SkillTree.Buy:FireServer(v)
   end
end)
FarmingBox:AddDivider()
FarmingBox:AddToggle('AutoBadges', {Text = 'Auto Claim Badges',Default = false})

--On Toggles
Toggles.Webhook:OnChanged(function()
   task.spawn(function()
       while Toggles.Webhook.Value == true do task.wait(60)
           if Settings.WebhookLink ~= "" and Settings.WebhookSent == false then
               WebhookInit()
               Settings.WebhookSent = true
           elseif Settings.WebhookLink ~= "" and Settings.WebhookSent == true then
               WebhookUpdate()
           end
       end
   end)
end)
Toggles.AutoBlend:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoBlend.Value == true do task.wait()
           if GetBag() == GetBagSize() then
               Settings.Pause = true
               GotoBlender()
           end
       end
   end)
end)
Toggles.AutoPresent:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoPresent.Value == true do task.wait()
           if Settings.Pause == false then
               for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do
                   if v.Name == "Present_Drop" then
                       if v:FindFirstChild("Doos_Boven") and not v.Doos_Boven:FindFirstChild("WeldConstraint") then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetPivot()
                       end
                   end
               end
           end
       end
   end)
end)
Toggles.AutoIngredents:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoIngredents.Value == true do task.wait()
           if Settings.Pause == false then
               for i,v in pairs(game:GetService("Workspace").Areas[Settings.Area].Items:GetChildren()) do
                   if v:FindFirstChild("Collected") and v.Collected.Value == false then
                       v.Hitbox.Size = Vector3.new(30,30,30)
                   end
               end
               for i,v in pairs(game:GetService("Workspace").Areas[Settings.Area].Items:GetChildren()) do
                   if v:FindFirstChild("Collected") and v.Collected.Value == false then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame
                       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                   end
               end
           end
       end
   end)
end)
Toggles.AutoToken:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoToken.Value == true do task.wait()
           if Settings.Pause == false then
               if game:GetService("Workspace"):FindFirstChild("BlendToken") and game:GetService("Workspace").BlendToken.Size == Vector3.new(0.5, 3, 3) then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlendToken.CFrame
               end
           end
       end
   end)
end)
Toggles.AutoEmpty:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoEmpty.Value == true do task.wait(.5)
           if GetBag() == GetBagSize() and Settings.Empty == "Blend Token" then
               game:GetService("ReplicatedStorage").EmptyBackpack:FireServer(workspace.EmptyBackpacks.Back_Empty_2.Glow_ring)
           elseif GetBag() == GetBagSize() and Settings.Empty == "Blender [Free]" then
               for i,v in pairs(GetPlot().PlacedItems.Blenders:GetChildren()) do
                   if v:FindFirstChild("CanBeAccesed") and v.CanBeAccesed.Value == true then
                       Settings.Pause = true
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.BlendMenuOpener.CFrame + Vector3.new(0,5,0)
                       task.wait(.2)
                       firesignal(game:GetService("Players").LocalPlayer.PlayerGui.PlotInteraction.Button.MouseButton1Click)
                       task.wait(1.3)
                       firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.BlenderMenu.Exit.MouseButton1Click)
                       Settings.Pause = false
                   end
               end
           end
       end
   end)
end)
Toggles.AutoBadges:OnChanged(function()
   task.spawn(function()
       while Toggles.AutoBadges.Value == true do task.wait(.1)
           for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Badges.BadgesList:GetChildren()) do
               if v:IsA("ImageLabel") and v:FindFirstChild("Claim") and v.Claim:FindFirstChild("TextButton_Roundify_12px") and v.Claim.TextButton_Roundify_12px.ImageColor3 == Color3.fromRGB(172,255,146) then
                   game:GetService("ReplicatedStorage").BadgeRemotes.ClaimBadge:InvokeServer(v)
               end
           end
       end
   end)
end)

--Options
Options.WebhookLink:OnChanged(function()
   Settings.WebhookLink = Options.WebhookLink.Value
end)
Options.AreaChoice:OnChanged(function()
   Settings.Area = Options.AreaChoice.Value
end)
Options.EmptyChoice:OnChanged(function()
   Settings.Empty = Options.EmptyChoice.Value
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()