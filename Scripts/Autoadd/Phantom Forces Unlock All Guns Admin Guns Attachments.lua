local network, char, loadgun, loadknife; do
    for _, object in next, getgc(true) do
        if (typeof(object) == "table") then
            if (rawget(object, "send")) then
                network = object;
            elseif (rawget(object, "setbasewalkspeed")) then
                char = object;
            end
        elseif (typeof(object) == "function") then
            local name = debug.getinfo(object).name;

            if (name == "loadgun") then
                loadgun = object;
            elseif (name == "loadknife") then
                loadknife = object;
            end
        end
    end
end

-- services
local replicatedStorage = game:GetService("ReplicatedStorage");

-- cache
local content = replicatedStorage:WaitForChild("Content");
local productionContent = content:WaitForChild("ProductionContent");
local attachmentModules = productionContent:WaitForChild("AttachmentModules");
local gunModules = productionContent:WaitForChild("GunModules");

-- stored data
local gunIgnore = {"JUGGUN", "HK417Old", "PAINTBALL GUN", "RAILGUN OLD", "PPK12", "SVK12E", "MG42"};
local weaponData = {};
local attachmentData = {};
local primaryClasses = { "ASSAULT", "BATTLE", "CARBINE", "SHOTGUN", "PDW", "DMR", "LMG", "SNIPER" };
local generalClassData = {
    ["ASSAULT"] = "AK12",
    ["BATTLE"] = "AK12",
    ["CARBINE"] = "M4A1",
    ["SHOTGUN"] = "KSG 12",
    ["PDW"] = "MP5K",
    ["DMR"] = "INTERVENTION",
    ["LMG"] = "COLT LMG",
    ["SNIPER"] = "INTERVENTION",
    ["PISTOL"] = "M9",
    ["MACHINE PISTOL"] = "M9",
    ["REVOLVER"] = "M9",
    ["OTHER"] = "M9",
    ["FRAGMENTATION"] = "M67 FRAG",
    ["HIGH EXPLOSIVE"] = "M67 FRAG",
    ["IMPACT"] = "M67 FRAG",
    ["ONE HAND BLADE"] = "KNIFE",
    ["TWO HAND BLADE"] = "KNIFE",
    ["ONE HAND BLUNT"] = "MAGLITE CLUB",
    ["TWO HAND BLUNT"] = "HOCKEY STICK",
};
local weapons = {};

-- hooks
do
    local oldNetworkSend = network.send; network.send = function(self, name, ...)
        local args = {...};

        if (name == "changewep") then
            weaponData[args[1]] = args[2];
            args[2] = generalClassData[weapons[args[2]].type];
        end

        if (name == "changeatt") then
            attachmentData[args[2]] = args[3];
            return
        end

        return oldNetworkSend(self, name, unpack(args));
    end

    local oldLoadgrenade = char.loadgrenade; char.loadgrenade = function(self, name, ...)
        name = weaponData["Grenade"] or name;
        return oldLoadgrenade(self, name, ...);
    end;

    local oldLoadknife; oldLoadknife = hookfunction(loadknife, function(name, ...)
        name = weaponData["Knife"] or name;
        return oldLoadknife(name, ...);
    end);

    local oldLoadgun; oldLoadgun = hookfunction(loadgun, function(name, magsize, sparerounds, attachments, ...)
        local gunData = weapons[name];
        local newName = table.find(primaryClasses, gunData.type) and weaponData["Primary"] or weaponData["Secondary"];

        name = (newName and newName or name);

        local attachs = attachmentData[name];

        if (attachs) then
            attachments = attachs;
        end

        return oldLoadgun(name, magsize, sparerounds, attachments, ...);
    end);
end

-- init
do
    for _, module in next, gunModules:GetChildren() do
        if (not table.find(gunIgnore, module.Name)) then
            local data = require(module);
            weapons[module.Name] = data;
        end
    end

    for _, module in next, attachmentModules:GetChildren() do
        local data = require(module);
        data.unlockkills = 0;
    end

    for _, module in next, gunModules:GetChildren() do
        if (not table.find(gunIgnore, module.Name)) then
            local data = require(module);
            data.unlockrank = 0;
            data.adminonly = false;
            data.supertest = false;
            data.exclusiveunlock = false;
            data.hideunlessowned = false;
            data.adminonly = false;
        end
    end
end