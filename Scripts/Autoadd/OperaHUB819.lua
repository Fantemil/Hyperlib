repeat task.wait() until game:IsLoaded()
for i, v in game:GetService"CoreGui":GetChildren() do
 if v.Name == "Discord" then v:Destroy() end
end
local lp = game:GetService"Players".LocalPlayer
local Crates = workspace.Game.Crates
local Root = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart
local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
local win = DiscordLib:Window("Mechanical Ascension X")
function server(Name, AssetId)
 return win:Server(Name, AssetId)
end
function Notify(Title, Text, ButtonText)
 DiscordLib:Notification(Title, Text, ButtonText)
end
local BluePrints = {
 Load = false,
 Delay = 10,
 LoadThese = {},
 WA = false
}
local Reincarination = {
 Auto = false,
 Mode = 'none'
}
local serv = server("OperaHUB", "")
local CC = serv:Channel("Crates")
local CC2 = serv:Channel("GUI")
local CC3 = serv:Channel("Teleports")
local CC4 = serv:Channel("Auto Farm")
CC2:Button("Destroy GUI", function() game:GetService("CoreGui").Discord:Destroy() end)
Notify("Developer Note", "WARNING! Do not use this script in public / filled servers as some people may report you!", "Understood!")
CC:Button("Grab All Crates", function()
while #Crates:GetChildren() > 0 and task.wait() do
for i, v in Crates:GetChildren() do
 v.CFrame = Root.CFrame
 firetouchinterest(Root, v, 0)
 task.wait()
end
end
print("Grabbed all crates successfully.")
end)
CC:Button("Open All Basic Boxes", function()
for i = 1, tonumber(lp.SaveStats:FindFirstChild("Basic Box").Value) do
local args = {
    [1] = "Basic Box",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$682fac6c66f03eea3d94091c20e21346551c7ac38a28afa688dc1ea241185164"):InvokeServer(unpack(args))
task.wait(10)
end
end)
CC:Button("Open All Charged Boxes", function()
for i = 1, tonumber(lp.SaveStats:FindFirstChild("Charged Box").Value) do
local args = {
 [1] = "Charged Box",
 [2] = 1
}
    
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$682fac6c66f03eea3d94091c20e21346551c7ac38a28afa688dc1ea241185164"):InvokeServer(unpack(args))
task.wait(10)
end
end)
CC:Button("Open All Turboxes", function()
    for i = 1, tonumber(lp.SaveStats:FindFirstChild("Turbox").Value) do
        local args = {
            [1] = "Turbox",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$682fac6c66f03eea3d94091c20e21346551c7ac38a28afa688dc1ea241185164"):InvokeServer(unpack(args))        
    task.wait(10)
    end
    end)
local Interactables = workspace.Game.Interactables
CC3:Button("Mekurious (Crafting)", function()
 Root.CFrame = Interactables.Crafting.Model.MeshPart.CFrame
end)
CC3:Button("Rosmepta (Prestige)", function()
 Root.CFrame = Interactables.Prestige.Model.MeshPart.CFrame
end)
CC3:Button("Kazahl (Merchant)", function()
 Root.CFrame = Interactables.Merchant.Model.MeshPart.CFrame
end)
CC3:Button("Heilian (Upgrades)", function()
 Root.CFrame = Interactables.Upgrades.MeshPart.CFrame
end)
CC3:Button("Your Base", function()
 local Base = lp.BaseOwned.Value
 local ActualBase;
 for i, v in workspace.Bases:GetChildren() do
  if v.Name == tostring(Base) then ActualBase = v break end
 end
 Root.CFrame = ActualBase.SpawnLocation.CFrame
end)
CC:Label("Please be careful when using Grab All Crates as somebody cou\nld be watching!\n")
CC:Label("Open All Boxes Note:\nTo open all, It would take 10y total seconds where y\nis your box count (For example 20 Basic Boxes would take 200\nseconds.)")
function GetBluePrints()
 local bp = {}
 for i, v in lp.PlayerGui.Interface.MainFrames.Progression.Pages.MainScroll.Blueprints.Scroll:GetChildren() do
  if v.Name ~= "New" and v:IsA("Frame") then
    table.insert(bp, v.Name)
  end
 end
 return bp
end
function LoadBluePrint(name)
    local args = {
        [1] = name,
        [2] = "Main"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$5c7ba1a1fb2626ae2a880db190f7422d13ce0828a3d0af6bba414cf2bf08d475"):InvokeServer(unpack(args))    
end
function Reinc()
    local args = {
        [1] = false
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$db7d97d0be88eac5c0c8b7f146c4c79abf57c84de610e5e547aba97b2b9b025e"):InvokeServer(unpack(args))   
end
function WithdrawAll()
    local Base;
    local WW = {}
    for i, v in workspace.Bases:GetChildren() do
     if v.BaseOwner.Value == lp.Name then Base = v break end
    end
    for i, v in Base.Items:GetChildren() do
     table.insert(WW, v)
    end
    local args = {
        [1] = WW
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Communicator"):WaitForChild("$a5bba011da92206b9b8dce6d15e25ecfae4348e5372670f3d4499d95fa3869d9"):InvokeServer(unpack(args))
end
function ReincPrice(mode)
 local n = lp.SaveStats.RealLife.Value
 local money = lp.SaveStats.RealMoney.Value
 local x;
 local y;
 if mode:lower()=='easy' then
  x = 1e+21
  y = x * ((math.round(n / 5) * 2) + 1)  * ((math.round(n / 100) * 250) + 1) * (math.round((n / 250) ^ 25) + 1)
 elseif mode:lower()=='normal' then
  x = 5e+22
  y = x * ((math.round(n / 5) * 2) + 1) * (math.round((n / 50) * 250) + 1) * (1e+3 ^ math.round(n / 100)) * (1e+6 ^ math.round(n / 1000))
 end
 return y
end
CC4:Toggle("Auto Reincarnate", false, function(val)
 Reincarination.Auto = val
end)
CC4:Dropdown("Reincarination Mode (IMPORTANT)", {'easy', 'normal'}, function(mode)
 Reincarination.Mode = mode
 print("Selected reincarination mode", mode)
end)
local CC5 = serv:Channel("Blueprint Management")
CC5:Toggle("Auto Load Blueprints", false, function(val)
 BluePrints.Load = val
end)
CC5:Toggle("Withdraw all every load", false, function(val)
 BluePrints.WA = val
end)
CC5:Label("\nWhat the toggle above does is, If true, Every time the script auto loads a\nblueprint, It will withdraw all your base items then load the blueprint, Else it will just place the\nblueprint items on the current items.")
CC5:Textbox("Load Delay", '10', true, function(t)
 BluePrints.Delay = tonumber(t)
end)
CC5:Label("Load Delay is the time it takes (in seconds) to load each blueprint\nFor example, 10 load delay would mean wait 10 seconds\nbefore loading the second/third blueprint")
local Names = {'First', 'Second', 'Third'}
local Selected = {}
for i, v in GetBluePrints() do
 if i > #Names then break end
 CC5:Dropdown(string.format('Choose %s blueprint', Names[i]), GetBluePrints(), function(Bl)
  table.insert(BluePrints.LoadThese, Bl)
 end)
end
task.spawn(function()
 while task.wait() do
  if Reincarination.Auto and Reincarination.Mode ~= 'none' and ReincPrice(Reincarination.Mode) <= tonumber(lp:WaitForChild"SaveStats":WaitForChild"RealMoney".Value) then
   Reinc()
   if BluePrints.Load then
    for _, v in BluePrints.LoadThese do
     if BluePrints.WA then
      WithdrawAll()
     end
     LoadBluePrint(v)
     task.wait(BluePrints.Delay)
    end
   end
  end
 end
end)