local StartTick = tick();

if typeof(syn) == "table" and gethui then
    syn.protect_gui = not gethui and syn.protect_gui or function(Instance) Instance.Parent = gethui() end;
end

if not game:IsLoaded() then
    game.Loaded:Wait();
end

warn("--<< AlphaZero v2 Loader >>--")

local File = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Sw1ndlerScripts/AlphaZero/main/Handlers/File.lua")))();

File:Setup("AlphaZero", "1.0.0", {
    Subfolders = { "Games" },
    HubData = { Owner = "Sw1ndlerScripts", Repo = "AlphaZero" }
});

File:QueueDownload("AlphaZero/Loader.lua", "https://raw.githubusercontent.com/Sw1ndlerScripts/AlphaZero/main/Loader.lua", true);

for _, Game in next, File:GetFilesFrom("https://github.com/Sw1ndlerScripts/AlphaZero/tree/main/Games") do
    local Name = Game:match("([^/]+)$");
    local Url = "https://raw.githubusercontent.com/Sw1ndlerScripts/AlphaZero/main/Games/"..Name;

    File:QueueDownload("AlphaZero/Games/"..Name, Url);
end

File:DownloadQueued();

local function GetGameFromPlaceId()
    local Games = File:Load("AlphaZero/Games/PlaceIds.lua");

    for Game, PlaceId in next, Games do
        if PlaceId == game.PlaceId then
            return Game;
        end
    end

    return false;
end

local Game = GetGameFromPlaceId();

if not Game then
    return File:Load("AlphaZero/Games/Universal.lua");
end

File:Load(string.format("AlphaZero/Games/%s.lua", Game));

print(string.format("AlphaZero v2 took %.2f second(s) to load.", tick() - StartTick));