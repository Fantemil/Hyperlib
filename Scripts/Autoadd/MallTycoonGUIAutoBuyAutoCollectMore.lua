--// Settings \\--
local auto_collect_cash = true
local auto_build_mall = true
local auto_select_store = true
local auto_select_setpeice = true
local auto_rebirth = false

--// Variables \\--
local work = game:GetService("Workspace")
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local tycoon_name = "Tycoon"..lp.Name
local config

--// Discord invite shit \\--

local function PromptDiscordInvite(invite, showPrompt)
    if not syn then
        return warn('Synapse X essential to run this script!')
    end
    local Inv, ServerInfo, ServerName = {'s', 'c', 'R', 'a', 'm', 'D', 'a', '4', '6', 'e'}, nil, ''
    
    if invite and type(invite) == 'string' and invite:match('%a') then
        Inv = invite
        data_url = 'https://discord.com/api/v6/invite/'..Inv
    else
        Inv = table.concat(Inv)
        data_url = 'https://discord.com/api/v6/invite/'..Inv
    end
    
    ServerInfo = syn.request({
        Url = 'https://discord.com/api/v6/invite/'..Inv,
        Method = 'GET'
    })
    
    if ServerInfo.Success then
        ServerInfo = game:GetService('HttpService'):JSONDecode(ServerInfo.Body)
    else
        warn(ServerInfo.StatusCode, ServerInfo.StatusMessage, '|', ServerInfo.Body)
        return
    end
    
    local getsynassetfromurl = function(url)
        local File, Raw = 'SynAsset [', syn.request({
            Url = url,
            Method = 'GET'
        }).Body
        if url and type(url) == 'string' and tostring(Raw):find('PNG') then
            for i = 1, 5 do
                File = tostring(File..string.char(math.random(65, 122)))
            end
            File = File..'].png'
            writefile(File, Raw)
            coroutine.wrap(function()
                wait(10)
                if isfile(File) then
                    delfile(File)
                end
            end)()
            return getsynasset(File)
        end
    end
    
    local function Request()
        syn.request(
            {
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    ['origin'] = 'https://ptb.discord.com',
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    ['args'] = {
                    ['code'] = Inv,
                    ['sex'] = '?species=Goblin&realm=Toril'
                },
                ['cmd'] = 'INVITE_BROWSER',
                ['nonce'] = 'OwO'
            })
        })
    end
    Request()
end

--// MaterialLua UI Library // Made By: Twink Marie \\--
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

--// Main UI \\--
local MainGui = Material.Load({
 Title = "Mall Tycoon",
 Style = 1,
 SizeX = 250,
 SizeY = 250,
 Theme = "Dark"
})

--// Main Page in UI \\--
local Title_1 = MainGui.New({
 Title = "Main"
})

local Title_2 = MainGui.New({
 Title = "Credits"
})

--// Toggles \\--
local Title_1_Object_1 = Title_1.Toggle({
 Text = "Auto Collect",
 Callback = function(Value)
  auto_collect_cash = Value
 end,
 Enabled = true
})

local Title_1_Object_2 = Title_1.Toggle({
 Text = "Auto Buy",
 Callback = function(Value)
  auto_build_mall = Value
 end,
 Enabled = true
})

local Title_1_Object_3 = Title_1.Toggle({
 Text = "Auto Pick Store",
 Callback = function(Value)
  uto_select_store = Value
 end,
 Enabled = true
})

local Title_1_Object_4 = Title_1.Toggle({
 Text = "Auto Pick Setpiece",
 Callback = function(Value)
  auto_select_setpeice = Value
 end,
 Enabled = true
})

local Title_1_Object_5 = Title_1.Toggle({
 Text = "Auto Rebirth",
 Callback = function(Value)
  auto_rebirth = Value
 end,
 Enabled = false
})

--// Credits \\--

local Title_2_Object_1 = Title_2.Button({
 Text = "Guybrush Threepwood#8178",
 Callback = function(Value)
 end,
 Menu = {
  Info = function(self)
   MainGui.Banner({
    Text = "Thats me!"
   })
  end
 }
})

local Title_2_Object_2 = Title_2.Button({
 Text = "Join my Discord",
 Callback = function(Value)
  PromptDiscordInvite('WbqreSvspk', false)
 end,
 Menu = {
  Info = function(self)
   MainGui.Banner({
    Text = "This button will send you an invite to my discord server! (Requires Synapse)"
   })
  end
 }
})

--// Presets \\--
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

spawn(function()
 pcall(function()
  while wait(1) do
   for i,v in pairs(work[tycoon_name]:GetDescendants()) do
    if v:IsA("Model") and v.Name == "Gamepasses" then
     v:Destroy()
    end
   end
  end
 end)
end)

wait(1)

--// Configurations \\--
config = {
 func = {
  fb1 = function(button)
   for i,signal in next, getconnections(button.MouseButton1Click) do
    signal:Fire()
   end
   for i,signal in next, getconnections(button.MouseButton1Down) do
    signal:Fire()
   end
   for i,signal in next, getconnections(button.Activated) do
    signal:Fire()
   end
  end,
  collect_cash = function()
   game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestCollectCash")
  end,
  pick_store = function()
   if lp.PlayerGui.Interface.PickStore.PickStore.Background.Visible then
    local Rarity = {"Legendary", "Epic", "Rare", "Common"}
    local Green = lp.PlayerGui.Interface.PickStore.PickStore.Background.SpeechBubble.GreenMini.RateTextLabel
    local Red = lp.PlayerGui.Interface.PickStore.PickStore.Background.SpeechBubble.RedMini.RateTextLabel
    local PickedType = false
    local Built = false
    for _,Rare in pairs(Rarity) do
     if not PickedType then
      for _,v in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
       pcall(function()
        if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent:FindFirstChild("StoreType") and v.Parent.Name == Rare then
         if string.match(Green.Text, v.Parent.StoreType.Text) then
          PickedType = v.Parent.StoreType.Text
         end
        end
       end)
      end
     end
    end
    for _,Rare in pairs(Rarity) do
     for _,v in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
      pcall(function()
       if PickedType then
        if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent.StoreType.Text == PickedType and v.Parent.Name == Rare then
         print("Green", PickedType, Rare)
         Built = true
         config.func.fb1(v)
        end
       else
        if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent.Name == Rare and not string.match(Red.Text, v.Parent.StoreType.Text) then
         if Rare == "Common" and not Built and not string.match(Green.Text, " any ") then
          for _,leg in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
           pcall(function()
            if leg.Name == "InventoryButton" and leg.Parent.Name == "StoreButton" and not Built then
             print("Legendary", leg.Parent.StoreTitle.Text)
             Built = true
             config.func.fb1(leg)
            end
           end)
          end
         end
         if not Built then
          print("Random", Rare)
          Built = true
          config.func.fb1(v)
         end
        end
       end
      end)
     end
    end
    if not Built then
     for _,v in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
      pcall(function()
       if v.Name == "InventoryButton" and v.Parent.Name == "StoreButton" and not Built then
        print("Legendary", v.Parent.StoreTitle.Text)
        Built = true
        config.func.fb1(v)
       end
      end)
     end
    end
    if not Built then
     for _,Rare in pairs(Rarity) do
      for _,v in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
       pcall(function()
        if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent.Name == Rare then
         print("Red", Rare)
         Built = true
         config.func.fb1(v)
        end
       end)
      end
     end
    end
   end
  end,
  pick_setpiece = function()
   if lp.PlayerGui.Interface.PickSetPiece.PickSetPiece.Background.Visible then
    for _,v in pairs(lp.PlayerGui.Interface.PickSetPiece:GetDescendants()) do
     pcall(function()
      if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent.Name == "Option2" and v.Parent.parent.Visible then
       print(v.Parent.StoreTitle.Text)
       config.func.fb1(v)
      end
     end)
    end
   end
  end,
  buy_all = function()
   for _,v in pairs(work[tycoon_name]:GetDescendants()) do
    pcall(function()
     if v:IsA("TouchTransmitter") and v.Name == "TouchInterest" and v.Parent.Name == "Button" and v.Parent.Parent.Name ~= "RespawnButton" and v.Parent.Parent.Name ~= "ButtonCollect" then
      local Cash = lp.leaderstats.Cash
      local Cost = v.Parent.Parent.ButtonCost
      wait(.1)
      if Cash.Value >= Cost.Value then
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ButtonTriggeredLocally", v.Parent.Parent, v.Parent.Parent.ButtonData)
       wait()
      end
     end
    end)
   end
   config.func.pick_store()
  end,
  rebirth = function()
   pcall(function()
    local F13 = work[tycoon_name]:FindFirstChild("Floor13")
    if F13 then
     local Con = F13:FindFirstChild("Contents")
     if Con then
      local Trophy = Con:FindFirstChild("Trophy")
      if Trophy then
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestUnlockStores")
       wait(.5)
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestRebirth")
      end
     end
    end
   end)
  end,
 }
}

--// Collect Cash \\--
spawn(function()
 while wait(1) do
  if auto_collect_cash then
   config.func.collect_cash()
  end
 end
end)

--// Auto Pick Set Piece \\--
spawn(function()
 while wait(1) do
  if auto_select_setpeice then
   config.func.pick_setpiece()
  end
 end
end)

--// Auto Pick Store \\--
spawn(function()
 while wait(1) do
  if auto_select_store then
   config.func.pick_store()
  end
 end
end)

--// Auto Buy \\--
spawn(function()
 while wait(1) do 
  if auto_build_mall then
   config.func.buy_all()
  end
 end
end)

--// Auto Rebirth \\--
spawn(function()
 while wait(1) do
  if auto_rebirth then
   config.func.rebirth()
  end
 end
end)