
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
local player = game.Players.LocalPlayer
local earn = game.Players.LocalPlayer.leaderstats['💸 Earned']
local win1 = player.leaderstats['🏆 Wins']
local earnv = earn.Value

local win = lib:Window("Elemental Hub V1.2",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
local config = win:Tab("Gamepass")
config:Textbox("Gamepass Id",true, function(t)
_G.Id = t
  end)
config:Textbox("Gamepass Price",true, function(t)
_G.Price = t
  end)

local tab = win:Tab("Autofarm")

tab:Toggle("Farm all games",false, function(t)

getgenv().Auto_Farm = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerReady/elemental-hub-farm/main/elemental-hub-farm"))()

end)

tab:Toggle("Auto Create Room All games",false, function(t)
local win1 = player.leaderstats['🏆 Wins']

win1:GetPropertyChangedSignal("Value"):Connect(function()
local games = {
      "SwordFight",
      "Plinko"
        }
local rdmgame = games[math.random(1,#games)]
game:GetService("ReplicatedStorage").RemoteCalls.GameSpecific.Tickets.CreateRoom:InvokeServer(rdmgame,_G.Price,{["assetType"] = "GamePass",["assetId"] = _G.Id},true)

end)
end)

tab:Toggle("Auto farm sword",false, function(t)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Elemental Hub";
    Text = "Press X to disable/enable, ",
    Icon = "",
    Duration = 5
})
loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/1/main/bot'))()
end)
tab:Button("Keyboard Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
tab:Toggle("Cups script ( no autofarm ) ",false, function(t)

local Descendants = workspace:GetDescendants()

local colors = {
    BrickColor.new("Bright red"),
    BrickColor.new("Bright blue"),
    BrickColor.new("Bright yellow"),
    BrickColor.new("Bright green"),
    BrickColor.new("Bright orange"),
    BrickColor.new("Bright purple"),

}

local colorIndex = 1

for i, value in pairs(Descendants) do
    if value.Name == "Important" then
        local cups = value:GetDescendants()
        for i, e in pairs(cups) do
            if e.Name == "Detail" then
                local v = e.Parent.Parent
                
                v["1"].Detail.BrickColor = colors[colorIndex]
                v["1"].Primary.BrickColor = colors[colorIndex]
                v["2"].Detail.BrickColor = colors[colorIndex + 1] or colors[1]
                v["2"].Primary.BrickColor = colors[colorIndex + 1] or colors[1]
                v["3"].Detail.BrickColor = colors[colorIndex + 2] or colors[2]
                v["3"].Primary.BrickColor = colors[colorIndex + 2] or colors[2]
                v["4"].Detail.BrickColor = colors[colorIndex + 3] or colors[3]
                v["4"].Primary.BrickColor = colors[colorIndex + 3] or colors[3]
                v["5"].Detail.BrickColor = colors[colorIndex + 4] or colors[4]
                v["5"].Primary.BrickColor = colors[colorIndex + 4] or colors[4]
                
                colorIndex = colorIndex + 5
                if colorIndex > #colors then
                    colorIndex = 1
                end
            end
        end
    end
end
end)
tab:Toggle("Sword reach( no autofarm )",false, function(t)
local range = 20

--// Variable \--
local player = game:GetService("Players").LocalPlayer

--// Script \--
game:GetService("RunService").RenderStepped:Connect(function()
   local p = game.Players:GetPlayers()
   for i = 2, #p do local v = p[i].Character
       if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
           local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
           if tool and tool:FindFirstChild("Handle") then
               tool:Activate()
               for i,v in next, v:GetChildren() do
                   if v:IsA("BasePart") then
                       firetouchinterest(tool.Handle,v,0)
                       firetouchinterest(tool.Handle,v,1)
if Value == true then
range = 20
                    else if Value == false then
                        range = 0
                      end
                    end
                   end
               end
           end
       end
   end
end)

  end)


local misc = win:Tab("Misc")

misc:Toggle("Auto spin wheel",false, function(t)
if(game.Players.LocalPlayer:IsInGroup("13657923")) then
		while t == true do 
game:GetService("ReplicatedStorage").RemoteCalls.GameSpecific.DailySpinner.ClaimDailySpinner:InvokeServer()
      wait(840)
      end
    else
      lib:Notification("Warning","You are not in the double down group !", "Ok")
    end
end)
misc:Textbox("Messages delay",true, function(t)
local str = t
local min = 300

if tonumber(str) and tonumber(str) >= min then
  _G.Delay = tonumber(str)
  lib:Notification("Notification", "Delay set.", "Ok")
else
  lib:Notification("Warning", "Delay must be a number and at least 300.", "Ok")
    end
end)
advmsg = {}
misc:Textbox("Messages to autoadvertise",true, function(t)
local str = t
if string.len(str) >= 4 then
lib:Notification("Notification","Added your sentence to table.", "Ok")
table.insert(advmsg,t)
    else
      lib:Notification("Warning","Your sentence is too short !", "Ok")
    end
end)
misc:Toggle("Auto advertise",false, function(t)
local min = 2
if #advmsg >= min then
lib:Notification("Notification","Sending messsages...", "Ok")
while wait(_G.Delay) do
if t == true then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(advmsg[math.random(1, #advmsg)], "All")
        end
      end
    else 
      lib:Notification("Warning","Please add more sentences in table or people will think you're a bot.", "Ok")
    end
end)
misc:Button("Clear advertise messages", function()
if next(advmsg) ~= nil then
  for k in pairs(advmsg) do
    advmsg[k] = nil
  end
  lib:Notification("Notification", "Cleared the table", "Ok")
else
  lib:Notification("Warning", "There's nothing in the table!", "Ok")
    end
  end)

misc:Toggle("Anti Afk kick",false, function(t)
if t == true then
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          end)
  end
  end)
winmsg = {}

misc:Textbox("Messages on win",true, function(t)
local str = t
if string.len(str) >= 2 then
lib:Notification("Notification","Added message to table.", "Ok")
table.insert(winmsg,t)
    else
      lib:Notification("Warning","Your sentence is too short !", "Ok")
    end
end)

misc:Toggle("Send messages on wins.",false, function(t)
local min = 2

if #winmsg >= min then
    lib:Notification("Notification", "Sending messages...", "Ok")
    
    win1:GetPropertyChangedSignal("Value"):Connect(function()
        if t == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(winmsg[math.random(1, #winmsg)], "All")
        else
            print("Toggle off")
        end
    end)
else
    lib:Notification("Warning", "Please add more sentences in the table or people will think you're a bot.", "Ok")
    end
    
end)

misc:Button("Clear win messages", function()
if next(winmsg) ~= nil then
  for k in pairs(winmsg) do
    winmsg[k] = nil
  end
  lib:Notification("Notification", "Cleared the table", "Ok")
else
  lib:Notification("Warning", "There's nothing in the table!", "Ok")
    end
  end)
misc:Label("Do not use walk around for sword fight farming")
misc:Toggle("Auto Walk Around",false, function(Script)
_G.Value = Script
local player = game.Players.LocalPlayer
local function getRandomPosition()
    local range = 20 
    
    local position = player.Character.HumanoidRootPart.Position
    local offsetX = math.random(-range, range)
    local offsetY = math.random(-range, range)
    
    return Vector3.new(position.X + offsetX, position.Y, position.Z + offsetY)
end

local function walkToPosition(targetPosition)
    local humanoid = player.Character:WaitForChild("Humanoid")
    
    local direction = (targetPosition - player.Character.HumanoidRootPart.Position).unit
    local distance = (targetPosition - player.Character.HumanoidRootPart.Position).magnitude
    
    humanoid.WalkSpeed = 16 
    
  
    humanoid:MoveTo(targetPosition)
end

while _G.Value == true do
    local randomPosition = getRandomPosition()
    walkToPosition(randomPosition)
    
    wait(2)
    end

  end)

_G.WebUrl = nil
misc:Textbox("Webhook url",true, function(t)
local searchString = "https://discord.com/api/webhooks/"

-- Check if the value starts with the search string
if string.sub(t, 1, string.len(searchString)) == searchString then
    print("The value starts with 'https://discord.com/api/webhooks/'.")
    _G.WebUrl = t
    end
end)

misc:Toggle("Send message every wins",false, function(t)
local wins = player.leaderstats['🏆 Wins']
local oldwValue = wins.Value
local oldearn = game.Players.LocalPlayer.leaderstats['💸 Earned']  
local oldearnv = oldearn.Value
wins:GetPropertyChangedSignal("Value"):Connect(function()
if t == true then
local neww = wins.Value
local newe = oldearn.Value
            local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url = _G.WebUrl
local data = {
   ["content"] = "Hi, this tool was made by SponsoParNordVpn or Elemental Hub",
   ["embeds"] = {
       {
           ["title"] = "**You won a game !**",
           ["description"] = " @everyone Your wins now at "..neww.."🏆 and earned now at "..newe.."💵 You're a champion man !",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Robux_2019_Logo_gold.svg/1883px-Robux_2019_Logo_gold.svg.png" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    end
        end)
end)




misc:Toggle("Send recap of session every 1 hour",false, function(t)
local wins = player.leaderstats['🏆 Wins']
local oldwValue = wins.Value
local oldearn = game.Players.LocalPlayer.leaderstats['💸 Earned']
local Valuea = oldearn.Value
local wincount = 0
local earncount = 0
local earnc = 0
wins:GetPropertyChangedSignal("Value"):Connect(function()
if t == true then
wincount = wincount + 1
local percentage = 40
local reduction = _G.Price * percentage / 100
local result = number - reduction
earncount = earncount + result
        end
      end)
while true do
wait(3600)
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url = _G.WebUrl
local data = {
   ["content"] = "Hi, this tool was made by SponsoParNordVpn or Elemental Hub",
   ["embeds"] = {
       {
           ["title"] = "**You won a game !**",
           ["description"] = " @everyone You won "..wincount.." games and made  "..earncount.."robuxs tax covered in 1 hour.",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Robux_2019_Logo_gold.svg/1883px-Robux_2019_Logo_gold.svg.png" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    end
  end)

misc:Button("Join robux only server", function()
game:GetService("TeleportService"):Teleport(12529881925, LocalPlayer)
end)

local credits = win:Tab("Credits")


credits:Label("Made by SponsoParNordVpn ")
credits:Label("Special thanks to Hydraa_RBX for help ")
credits:Label("Thank to ; ")
credits:Label("Robloxian,Pie,New Trusted")