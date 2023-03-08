--// Variables \\--
local Updated_On = "Updated on 25/12/2022";

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("FG Battles")

local m = w:CreateFolder("Main")

local f = w:CreateFolder("Info")

--// Functions \\--


f:Label(Updated_On,{
    TextSize = 20; 
    TextColor = Color3.fromRGB(255,0,255);
    BgColor = Color3.fromRGB(40,40,40); 
    
})

f:Label("Made By: ronin#5376",{
    TextSize = 20; 
    TextColor = Color3.fromRGB(255,0,255);
    BgColor = Color3.fromRGB(40,40,40); 
    
})

--// Script \\--
getgenv().config = {
    Kill_All = false;
    Collect = false;
}

game.RunService.Stepped:Connect(function()
if getgenv().config.Kill_All then
for i=2,#game.Players:GetPlayers() do
pcall(function()
v=game.Players:GetPlayers()[i]
if not game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Event:FireServer("slash",v.Character,Vector3.new(math.huge,math.huge,math.huge))
else game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Event:FireServer("slash",v.Character,Vector3.new(math.huge,math.huge,math.huge))
end
end)
end
end
end)

game.RunService.Heartbeat:Connect(function()
if getgenv().config.Collect then
pcall(function()
for i,v in ipairs(game.Workspace:GetDescendants()) do
    if v.Name == "CollectScript" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Parent,0) 
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Parent,1)  
    end
end
end)
end
end)

--// Buttons \\--


m:Toggle("Kill All Players",function(bool)
    getgenv().config.Kill_All = bool
end);

m:Toggle("Collect All Coins",function(bool)
    getgenv().config.Collect = bool
end);


m:Button("EdgeLord Vip Thing",function(bool)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").EdgeLord.Button,0)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").EdgeLord.Button,1)
end);

m:Button("VoltLegend Vip Thing",function(bool)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").VoltLegend.Button,0)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").VoltLegend.Button,1)
end);