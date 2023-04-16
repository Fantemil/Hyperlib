-- PRESS T TO TOGGLE THE AIMBOT ON & OFF.
--//Setting Up DendroESP\\--
local DendroESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/LordNahida/DendroESP/main/V2/Source.lua"))();
DendroESP.WallPenThickness = 0.75;
DendroESP.RenderModelState = true;

local PlayerModels = Workspace.Playermodels;
local Characters = PlayerModels:GetChildren();
--//Creating the ESP\\--
for _ = 2, #Characters do
    local Character = Characters[_];
    local Proxy = DendroESP:AddCharacter(Character, "BoundingBox");
    Proxy.CrosshairEnabled = true;
    Proxy.CrosshairOffset = CFrame.new(0, 1.5, 0);
    Proxy.Offset3D = CFrame.new(0, 3, 0);
    Proxy.RadialHitbox = 50;
end;

PlayerModels.ChildAdded:Connect(function(Character)
    task.wait(1);
    local Proxy = DendroESP:AddCharacter(Character, "BoundingBox");
    Proxy.CrosshairEnabled = true;
    Proxy.CrosshairOffset = CFrame.new(0, 1.5, 0);
    Proxy.Offset3D = CFrame.new(0, 3, 0);
    Proxy.RadialHitbox = 50;
end);
--//Aimbot Toggle\\--
local UserInputService = game:GetService("UserInputService");
local AimbotOn = false;

local AssistFactor = 10;
UserInputService.InputBegan:Connect(function(Input, GameProcessedEvent)
    if (GameProcessedEvent) then return; end;
    if (Input.KeyCode == Enum.KeyCode.T) then
        AimbotOn = not AimbotOn;
        return;
    end;
    if (Input.KeyCode == Enum.KeyCode.Plus) then
        AssistFactor += 1;
        return;
    end;
    if (Input.KeyCode == Enum.KeyCode.Minus) then
        AssistFactor -= 1;
        return;
    end;
end)
--//Aimbot\\--
local SQ2 = 2 ^ 0.5;
--[[
    PostRender is a built-in DendroESP event that is fired every frame after the ESP renders that frame.
    It gives a table as the parameters, which contains all ESP Proxies that were non-negative and on screen.
    (non-negative = can be shot, whether through a wallbang or not.)
]]
DendroESP.PostRender:Connect(function(Tables)
    if (#Tables == 0 or not AimbotOn) then return; end;
    local MPos = DendroESP.MousePos;--Built-in value in DendroESP that gives the mouse position every frame.
    --This gives the true mouse position, not the one relative to the GUI Inset.
    local Closest, ClosestDist = Tables[1], (Tables[1].CrosshairCenter2D - MPos).Magnitude;
    for _ = 2, #Tables do
        local Current = Tables[_];
        local CDist = (Current.CrosshairCenter2D - MPos).Magnitude;
        local IsCloser = CDist < ClosestDist;
        Closest = (IsCloser and Current) or Closest;
        ClosestDist = (IsCloser and CDist) or ClosestDist;
    end;
    if (ClosestDist > 100) then return; end;
    local Delta = (Closest.CrosshairCenter2D - MPos);
    local Factor = math.min(Delta.Magnitude, SQ2 + AssistFactor);
    Delta = Delta.Unit * Factor;
    mousemoverel(Delta.X, Delta.Y);
end);