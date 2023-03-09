repeat wait() until (game:GetService('Players').LocalPlayer and game:IsLoaded())
local webhook = ""
if game.PlaceId == 5735553160 then --depths
    webhook = ""
elseif game.PlaceId == 6032399813 then --etria
    webhook = ""
end;
local port = 7963

local Player = game:GetService("Players").LocalPlayer
local hook = hookfunction or detour_function
local players1 = game.Players:GetChildren()
local  RandomPlayer = players1[math.random(1, #players1)]
repeat  RandomPlayer = players1[math.random(1, #players1)] until RandomPlayer ~= Player
local user = Player.Name
local count = 0
local count2 = 0

function hop()
if isfile(user..".Blocked") == false then
writefile(user..".Blocked", "0")
local readf = readfile(user..".Blocked")
local Response1 = syn.request({
    Url = "http://localhost:"..port.."/BlockUser?Account="..user.."&UserId="..RandomPlayer.UserId,
    Method = "GET"
})

rconsoleprint("Blocking:"..RandomPlayer.UserId.."\n")
rconsoleprint(Response1.Body.."\n")

writefile(user..".Blocked",readf + 1)

while wait(4) do
game:GetService("TeleportService"):Teleport(4111023553)
end;
elseif isfile(user..".Blocked") == true then
local readf = readfile(user..".Blocked")
if tonumber(readf) < 50 then
local Response = syn.request({
    Url = "http://localhost:"..port.."/BlockUser?Account="..user.."&UserId="..RandomPlayer.UserId,
    Method = "GET"
})

rconsoleprint("Blocking:"..RandomPlayer.UserId.."\n")
rconsoleprint(Response.Body.."\n")

writefile(user..".Blocked",readf + 1)

while wait(4)do
game:GetService("TeleportService"):Teleport(4111023553)
end;
elseif isfile(user..".Blocked") == true then
local readf = readfile(user..".Blocked")
    if tonumber(readf) >= 50 then
local Response2 = syn.request({
    Url = "http://localhost:"..port.."/UnblockEveryone?Account="..user,
    Method = "GET"
})

rconsoleprint(Response2.Body)

writefile(user..".Blocked", "0")

while wait(4) do
game:GetService("TeleportService"):Teleport(4111023553)
end;
end;
end;
end;
end;

local VIM = game:GetService("VirtualInputManager")

local old; old = hook(game.FindService, function(...)
    local Arguments = {...};
    if (Arguments[2] == 'VirtualInputManager') then
        return nil;
    end;
    return old(...);
end)

function etria()
    
repeat game:GetService('RunService').Heartbeat:Wait()
    VIM:SendMouseButtonEvent(0,0, 0, true, game, 0);
    wait();
    VIM:SendMouseButtonEvent(0,0, 0, false, game, 0);
until Player.Character

repeat wait() until Player.Character:FindFirstChild("HumanoidRootPart")
repeat wait() until (Player.Character.HumanoidRootPart.Position - Vector3.new(-3151.1398925781, -271.57504272461, 1282.8912353516)).Magnitude > 400
repeat wait() until Player.PlayerGui.WorldInfo.InfoFrame.ServerInfo:FindFirstChild("ServerRegion")

local v1 = require(game.ReplicatedStorage.Modules.Lib);
local u1 = {
 Effects = {}, 
 Classes = require(game.ReplicatedStorage.EffectClasses), 
 Container = nil
};

function u1.FindEffect(p30, p31, p32)
 for v17, v18 in pairs(p30.Effects) do
  if v18.Class == p31 then
   if p32 then
    return v18;
   end;
   if not v18.Disabled then
    return v18;
   end;
  end;
 end;
end;

local b = require(game:GetService("ReplicatedStorage").EffectReplicator);
b:WaitForContainer();
local str = ""

function GetPlayers()
    str = ""
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= Player then
            str = str..v.Name.."   ";
        end;
    end;
    return str
end;

function webhookthing(item)
    local string1 = GetPlayers()
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] =  "**" .. "ENCHANT FOUND:" .. item .. "**",
                ["description"] = string1 .. "\n**REGION:**" .. Player.PlayerGui.WorldInfo.InfoFrame.ServerInfo.ServerRegion.Text,
                ["type"] = "rich",
                ["color"] = tonumber(0x7269da),
                ["image"] = {
                ["name"] = "Epic Enchant sniper"
                }
            }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
        ["content-type"] = "application/json"
    }
    
    local synthing = syn.request
    {   
        Url = webhook, 
        Method = "POST", 
        Headers = headers,
        Body = newdata,
    }
end;

wait(4)

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v:FindFirstChild("Backpack") and v ~= Player then
        for e,g in pairs(v.Backpack:GetChildren()) do
            local stringthing = ""
            if g:IsA("Tool") and string.find(g.ToolTip, "+") and string.find(g.ToolTip,"HVY") and not string.find(g.ToolTip,"%%") or g:IsA("Tool") and string.find(g.ToolTip, "+") and string.find(g.ToolTip,"MED") and not string.find(g.ToolTip,"%%") or g:IsA("Tool") and string.find(g.ToolTip, "+") and string.find(g.ToolTip,"LHT") and not string.find(g.ToolTip,"%%") then
                local string2 = string.split(g.Name,"$")
                stringthing = string.split(g.ToolTip, "+")
                stringthing = "  " .. g.Parent.Parent.Name .. "  HAS  " .. string2[1] .. "  ENCHANT:  " .. stringthing[2]
                if g:FindFirstChild("KeepOnDeath") then
                    stringthing = stringthing .. "  SOULBOUND"
                end;
                webhookthing(stringthing)
            elseif g:IsA("Tool") and string.find(g.ToolTip, "-") and g:FindFirstChild("Enchant") then
                local string2 = string.split(g.Name,"$")
                stringthing = string.split(g.ToolTip, "-")
                stringthing = "  " .. g.Parent.Parent.Name .. "  HAS  " .. string2[1] .. "  ENCHANT:  " .. stringthing[2]
                if g:FindFirstChild("KeepOnDeath") then
                    stringthing = stringthing .. "  SOULBOUND"
                end;
                webhookthing(stringthing)
            end;
        end;
    end;
end;

wait(2)

repeat wait(1) until not b:FindEffect("Danger")
Player:Kick("Finished")
hop()

end;

function getingame()

repeat game:GetService('RunService').Heartbeat:Wait()
    VIM:SendMouseButtonEvent(0,0, 0, true, game, 0);
    wait();
    VIM:SendMouseButtonEvent(0,0, 0, false, game, 0);
until Player.PlayerGui.LoadingGui.Overlay.Options:FindFirstChild("Option")

count = 0
repeat game:GetService('RunService').Heartbeat:Wait()
    wait(0.1)
    count = count + 1
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.Options.Option.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.Options.Option.AbsolutePosition.Y + 40, 0, true, game, 0);
    wait();
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.Options.Option.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.Options.Option.AbsolutePosition.Y + 40, 0, false, game, 0);
until count == 5

wait(0.1)

count = 0
repeat game:GetService('RunService').Heartbeat:Wait()
    wait(0.1)
    count = count + 1
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.Slots.A.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.Slots.A.AbsolutePosition.Y + 40, 0, true, game, 0);
    wait();
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.Slots.A.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.Slots.A.AbsolutePosition.Y + 40, 0, false, game, 0);
until count == 5

wait(0.1)

count = 0
repeat game:GetService('RunService').Heartbeat:Wait()
    wait(0.1)
    count = count + 1
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.ServerFrame.QuickJoin.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.ServerFrame.QuickJoin.AbsolutePosition.Y + 40, 0, true, game, 0);
    wait();
    VIM:SendMouseButtonEvent(Player.PlayerGui.LoadingGui.Overlay.ServerFrame.QuickJoin.AbsolutePosition.X + 40, Player.PlayerGui.LoadingGui.Overlay.ServerFrame.QuickJoin.AbsolutePosition.Y + 40, 0, false, game, 0);
until count == 5

end;

if game.PlaceId == 4111023553 then 
getingame()
else
etria()
end;