for i, v in game:GetService "CoreGui":GetChildren() do
    if v.Name == "Discord" then
        v:Destroy()
    end
end
local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
    _G.Config = { ["Theme"] = "Discord" }
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()
local win = DiscordLib:Window("Epic Hub Reborn")
function server(Name, AssetId)
    return win:Server(Name, AssetId)
end
function Notify(Title, Text, ButtonText)
    DiscordLib:Notification(Title, Text, ButtonText)
end
local serv = server("Main", "")

local CC = serv:Channel("PlayerDatas")
local Channel2 = serv:Channel("AutoFarm")
local chests = workspace.chests
local lp = game:GetService "Players".LocalPlayer
local Char = lp.Character or lp.CharacterAdded:Wait()
local Root = Char:FindFirstChild "HumanoidRootPart"
function GrabChest(chest)
    local v = Root.CFrame
    Root.CFrame = chest.CFrame
    task.wait(.25) -- 4 chests per sec
    fireproximityprompt(chest.ProximityPrompt)
    Root.CFrame = v
end
function GetStats(player)
    -- TrollStand = troll ur using
    local Return = {Trolls = {}, Troll = nil, Items = {}}
    for _, troll in player.TrollgeSaves:GetChildren() do
        if troll.Value ~= "troll" then
            table.insert(Return.Trolls, troll.value)
        end
    end
    for _, item in player.ItemSaves:GetChildren() do
        if item.Value ~= "item" then
            table.insert(Return.Items, item.Value)
        end
    end
    Return.Troll = player.trollge_data.troll_stand.Value
    return Return
end
CC:Textbox("Enter username (Prints result)", "John Doe", true, function(Value)
 function GetPlayer()
  for i, v in game:GetService("Players"):GetPlayers() do
   if v.Name:sub(1, #Value) == Value:sub(1, #Value) then return v end
  end
 end
 local Plr = GetPlayer()
 if not Plr then print("Player not found.") return else print(("@%s/%s's Data"):format(Plr.Name, Plr.DisplayName)) end
 local Items, Trolls = GetStats(Plr).Items, GetStats(Plr).Trolls
 print("-- Troll:",GetStats(Plr).Troll,"--")
 print("-- Items --")
 for i, v in Items do
  print("Item slot #"..tostring(i)..":",v)
 end
 print("-- Trolls --")
 for i, v in Trolls do
  print("Troll slot #"..tostring(i)..":",v)
 end
end)
Channel2:Button("Grab All Chests", function()
 COLLECTING = true
 for i, v in chests:GetChildren() do if COLLECTING then GrabChest(v) end end
end)
Channel2:Button("ForceStop", function()
 COLLECTING = false
end)
Channel2:Button("Open All Chests", function()
 for i, v in lp.Backpack:GetChildren() do
  if v.Name:lower():find("chest") then
   v.Parent = Char
   v:Activate()
   task.wait(.01)
  end
 end
end)
local C3 = serv:Channel("Inventory")
C3:Button("List items that are not cups", function()
 local itms = {};
 local DISPLAYING = 0
 for i, v in lp.Backpack:GetChildren() do if not v.Name:lower():find("cup") then table.insert(itms, v); end end
 for _, item in itms do if DISPLAYING >= 7 then task.wait(4) DISPLAYING = 0 else NotificationLibrary:SendNotification("Info",item.Name, 4) DISPLAYING += 1 end end
end)