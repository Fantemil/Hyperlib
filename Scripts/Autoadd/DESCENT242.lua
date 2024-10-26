getgenv().Enabled = true;

local ws = game:GetService("Workspace");
local mf = ws:FindFirstChild("Mobs");
local ifs = ws:FindFirstChild("ItemDrops");

local ps = game:GetService("Players");
local lp = ps.LocalPlayer;

local rs = game:GetService("RunService");

local cfg = {
    Mobs = true,
    Items = true,
    Players = true
};

local tm = {};
local ti = {};
local tp = {};

local function hl(obj, col)
    local h = Instance.new("Highlight");
    h.FillColor = col;
    h.OutlineColor = Color3.new(0, 0, 0);
    h.Parent = obj;
end

local function updEsp(objs, tList, col)
    for _, obj in ipairs(objs) do
        if not tList[obj] then
            tList[obj] = true;
            hl(obj, col);
        end
    end
end

local function updMobs()
    if cfg.Mobs and mf then
        updEsp(mf:GetChildren(), tm, Color3.fromRGB(252, 28, 28));
    end
end

local function updItems()
    if cfg.Items and ifs then
        updEsp(ifs:GetChildren(), ti, Color3.fromRGB(3, 252, 115));
    end
end

local function updPlayers()
    if cfg.Players then
        for _, p in ipairs(ps:GetPlayers()) do
            if p ~= lp and p.Character then
                updEsp({p.Character}, tp, Color3.fromRGB(3, 252, 232));
            end
        end
    end
end

local function autoUpd()
    tm = {};
    ti = {};
    tp = {};

    updMobs();
    updItems();
    updPlayers();
end

rs.Heartbeat:Connect(function()
    autoUpd();
    task.wait(0.1);
end);