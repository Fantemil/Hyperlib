--[[ 
    Author: Scarlett
    
    Hope the little patch works, I might add a little bit more features but idk
--]]

local quick = loadstring(game:HttpGet('https://raw.githubusercontent.com/Belkworks/quick/master/init.lua'))();
local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua'))().Load({
    Title = 'Giant Simulator  ―  Bleus',
    Style = 1,
    SizeX = 400,
    SizeY = 400,
    Theme = 'Aqua',
    ColorOverrides = {
        MainFrame = Color3.fromRGB(35, 35, 35);
    }
}).New;

repeat wait() until (game and game:IsLoaded());
local s = quick.Service;

local workspace = s.Workspace;
local replicatedStorage = s.ReplicatedStorage;
local currentCamera = workspace.CurrentCamera;
local players = s.Players;
local virtualUser = s.VirtualUser;
local tweenService = s.TweenService;
local runService = s.RunService;
local stepped = runService.Stepped;

local client = players.LocalPlayer;
local character = client.Character or client.CharacterAdded:Wait();
client.CharacterAdded:Connect(function(char)
    character = char;
end);

if getconnections then
    for i = 1, #getconnections(client.Idled) do
        getconnections(client.Idled)[i]:Disable();
    end;
else
    client.Idled:Connect(function()
       virtualUser:Button2Down(Vector2.new(), currentCamera.CFrame);
       wait(1);
       virtualUser:Button2Up(Vector2.new(), currentCamera.CFrame);
    end);
end;

replaceclosure(replicatedStorage.ReportGoogleAnalyticsEvent.FireServer, function()
   return nil;
end);


local function tween(obj, time, ...)
    local tween = tweenService:Create(obj, TweenInfo.new(time), ...);
    tween:Play();
    tween.Completed:Connect(function() tween:Destroy() end);
 return tween;
end;

local function getNodeFolder()
    for _, f in next, workspace.Scene:GetChildren() do
        if type(tonumber(f.Name)) == 'number' then
            return f;
        end;
    end;
end;

local function getANode()
    local d, e = math.huge;
    for _, v in next, getNodeFolder():GetChildren() do
        if (v:FindFirstChild('Prefab') and #v.Prefab:GetChildren() > 0) then
            local magnitude = client:DistanceFromCharacter(v.Position);
            
            if (magnitude <= d) then
                d = magnitude;
                e = v;
            end;
        end;
    end;
    return e;
end;

local main = lib({
    Title = 'Main';
}); do
    main.Toggle({
        Text = 'Auto Farm',
        Callback = function(v)
            getgenv().autoFarmState = v;
        end;
    });
end;

pcall(function() 
    if getgenv().mainLoop then
        getgenv().mainLoop:Disconnect();
    end;
end);
getgenv().mainLoop = stepped:Connect(function()
    if not character or (character and not (character:FindFirstChild('HumanoidRootPart') and character:FindFirstChild('Humanoid'))) then return end;
    
    if autoFarmState then
        task.spawn(function()
            replicatedStorage.Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer();
            wait(0.65);
            replicatedStorage.Aero.AeroRemoteServices.GameService.WeaponAnimComplete:FireServer();
        end);
    
        local node = getANode();
        if node then
            -- Did math.random because I was fresh out of brain juice LOL.
            tween(character.HumanoidRootPart, client:DistanceFromCharacter(node.Position) / 2500, { CFrame = node.CFrame + Vector3.new(math.random(2, 5), 1, 0) }, Enum.EasingStyle.Linear);
        end;
    end;
end);