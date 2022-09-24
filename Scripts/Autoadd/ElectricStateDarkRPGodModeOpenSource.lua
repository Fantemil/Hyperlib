local GetService = game.GetService;

--

local Players    = GetService(game, "Players");
local Client     = Players.LocalPlayer;

--

if Client.Character:FindFirstChild("NameTag") then
    Client.Character.NameTag:Destroy() -- woah 1 line god mode?!?!
end