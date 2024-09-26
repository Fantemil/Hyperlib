local ds = game:GetService("Workspace").AllDoors;
local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();

local win = lib:MakeWindow({Name = 'Find The Code', HidePremium = false, SaveConfig = true, ConfigFolder = 'OrionTest'});

local function add(tab, fName, pre, cnt)
    local fld = ds:FindFirstChild(fName);
    if fld then
        for i = 1, cnt do
            task.spawn(function()
                local nm = pre .. i;
                local ok, res = pcall(function()
                    local dr = fld:FindFirstChild(nm);
                    if dr then
                        tab:AddLabel(nm);
                        local cd = dr:FindFirstChild("Code");
                        if cd and cd:IsA("StringValue") then
                            tab:AddLabel(cd.Value);
                        end
                    end
                end);
                if not ok then
                    print("Error:", res);
                end
                task.wait(0.1);
            end);
        end;
    end;
end;

local islTab = win:MakeTab({Name = "Island", Icon = "", PremiumOnly = false});
add(islTab, "IslandDoors", "", 10);

local desTab = win:MakeTab({Name = "Desert", Icon = "", PremiumOnly = false});
add(desTab, "DesertDoors", "D", 10);

local volTab = win:MakeTab({Name = "Volcano", Icon = "", PremiumOnly = false});
add(volTab, "VolcanoDoors", "D", 10);

local mcTab = win:MakeTab({Name = "Minecraft", Icon = "", PremiumOnly = false});
add(mcTab, "MineCraftDoors", "D", 10);

local iceTab = win:MakeTab({Name = "Ice", Icon = "", PremiumOnly = false});
add(iceTab, "IceDoors", "D", 10);

local spcTab = win:MakeTab({Name = "Space", Icon = "", PremiumOnly = false});
add(spcTab, "SpaceDoors", "D", 10);

local pharTab = win:MakeTab({Name = "Pharaohs", Icon = "", PremiumOnly = false});
add(pharTab, "PharaohsDoors", "D", 10);

local retTab = win:MakeTab({Name = "Retro", Icon = "", PremiumOnly = false});
add(retTab, "RetroDoors", "D", 10);

lib:Init();