-- peely hub remastered
-- Updated for UPD 20
local peely_settings = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};getgenv().Banana=peely_settings ;if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end