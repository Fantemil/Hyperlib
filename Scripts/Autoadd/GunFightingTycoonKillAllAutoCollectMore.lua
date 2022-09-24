local XanaxUILib = loadstring(game:HttpGet("https://pastebin.com/raw/XZz3Ytbu"))()
local Ui = XanaxUILib:CreateWindow("BennettV1")

local Info = Ui:CreateSection("Info")
local ExampleSection = Ui:CreateSection("Player")
local worldex = Ui:CreateSection('World')
local tycoon = {
    game:GetService("Workspace").Tycoons.Tycoons.Acid.Essentials.Giver, game:GetService("Workspace").Tycoons.Tycoons.Void.Essentials.Giver,
    game:GetService("Workspace").Tycoons.Tycoons.Wind.Essentials.Giver, game:GetService("Workspace").Tycoons.Tycoons.Laser.Essentials.Giver,
    game:GetService("Workspace").Tycoons.Tycoons.Flame.Essentials.Giver, game:GetService("Workspace").Tycoons.Tycoons.Electric.Essentials.Giver,
    game:GetService("Workspace").Tycoons.Tycoons.Storm.Essentials.Giver, game:GetService("Workspace").Tycoons.Tycoons.Ice.Essentials.Giver
}

local players = game:GetService('Players')
local plyr = players.LocalPlayer

Info:CreateLabel("Made By Bennett#1897")
Info:CreateLabel("UI Credits: Xanax UI Library")
Info:CreateLabel("All Scripts Are Mine")
Info:CreateLabel("Im Ass At Making UIs")
Info:CreateButton("Destroy UI", function() XanaxUILib.functions:DestroyGUI() end)

ExampleSection:CreateLabel("Player Exploits")
ExampleSection:CreateButton("OP Pistol", function()     
    
    for i,v in pairs(players.LocalPlayer:GetDescendants()) do
    
    if v.Name == 'Pistol' then
        
        states = v.Setting
    end
end

for i,v in pairs(players.LocalPlayer.Character:GetDescendants()) do
    
    if v.Name == 'Pistol' then
        
        states = v.Setting
    end
end
 
m = require(states)
m.Auto = true
m.BaseDamage = math.huge
m.AmmoPerMag = math.huge
m.Knockback = math.huge
m.Recoil = 0 end)

ExampleSection:CreateButton('Give Carpet', function()     
    for i, v in pairs(game:GetDescendants()) do
    if v.Name == 'GoldenCarpet' and not plyr.Backpack:FindFirstChild('GoldenCarpet') then
            carpet = v:Clone()
            carpet.Parent = plyr.Backpack
    end
    end
end)

ExampleSection:CreateSlider("WalkSpeed", "WalkSpeed", 16, 100, false, function(ws)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

ExampleSection:CreateSlider('JumpPower', 'JumpPower', 50, 400, false, function(jp)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)

worldex:CreateLabel('World Exploits')
worldex:CreateButton('Kill All (Must Hold Out Pistol)', function() for i, v in pairs(players:GetPlayers()) do
    if v ~= players.LocalPlayer then
        local args = {
            [1] = players.LocalPlayer.Character.Pistol,
            [2] = players.LocalPlayer,
            [3] = v.Character.Humanoid,
            [4] = v.Character.HumanoidRootPart,
            [5] = math.huge
        }
        game.ReplicatedStorage.InflictTarget:FireServer(unpack(args))
    end
 end
  end)

  
worldex:CreateButton('Auto Collector', function() 
    
    while wait() do
        for i,v in pairs(tycoon) do
                local plyrhead = game:GetService('Players').LocalPlayer.Character.Head
                firetouchinterest(plyrhead, v, 0)
                wait()
                firetouchinterest(plyrhead, v, 1)
                end
        end

end)