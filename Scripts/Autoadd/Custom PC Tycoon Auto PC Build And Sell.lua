_G.PCMaking1 = true;

-- Plrs/Folders
local RemotesFolder = game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents;
local Player = game:GetService("Players").LocalPlayer
local PCFolder = Player.Pc;

-- Vars
local PcItemsFolder = Player.PcItems;
local BuyRemote = RemotesFolder.BuyItem;
local PlaceRemote = RemotesFolder.PlaceItem;
local PlacePartRemote = RemotesFolder.PlacePart;
local BuildPCRemote = RemotesFolder.BuildPc;
local SaveRemote = RemotesFolder.Save;
local SellRemote = RemotesFolder.Sell;

-- Array (adjust the parts in here to buy higher end items)
local PC_Parts = {"Ram 1Gb", "32Gb", "Gpu 150", "3 1200", "Bronze 200w", "Plain Case", "P03"}

-- Loop!
while _G.PCMaking1 do
       
    -- Purchase pc parts
    for i = 1, #PC_Parts do
        BuyRemote:FireServer(PC_Parts[i], false, "1")
        wait(0.1)
    end
   
    -- Place our PC Case
    PlaceRemote:FireServer("Plain Case")
    BuildPCRemote:FireServer("finish editing component")
    wait(0.1)
   
    if PcItemsFolder:FindFirstChild("P03") then -- Check if plr has item
        -- Place Motherboard
        PlacePartRemote:FireServer("Motherboard", PcItemsFolder["P03"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break; -- Stop loop (skip the rest of this loop)
    end
   
    if PcItemsFolder:FindFirstChild("Bronze 200w") then
        -- Place PowerSuply??
        PlacePartRemote:FireServer("PowerSuply", PcItemsFolder["Bronze 200w"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break;
    end
   
    if PcItemsFolder:FindFirstChild("3 1200") then
        -- Place CPU
        PlacePartRemote:FireServer("Cpu", PcItemsFolder["3 1200"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break;
    end
   
    if PcItemsFolder:FindFirstChild("Ram 1Gb") then
        -- Place Ram
        PlacePartRemote:FireServer("Ram", PcItemsFolder["Ram 1Gb"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break;
    end
   
    if PcItemsFolder:FindFirstChild("32Gb") then
        -- Place Memory
        PlacePartRemote:FireServer("Memory", PcItemsFolder["32Gb"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break;
    end
   
    if PcItemsFolder:FindFirstChild("Gpu 150") then
        -- Place GPU
        PlacePartRemote:FireServer("Gpu", PcItemsFolder["Gpu 150"])
        BuildPCRemote:FireServer("groupPart")
        wait(0.1)
    else
        break;
    end
   
    -- Save PC
    SaveRemote:FireServer("Oof")
    wait(0.1)
   
    -- Sell all PC's in folder (this is due to errors occuring during the pc making process..)
    for i, PC in ipairs(PCFolder:GetChildren()) do
        SellRemote:FireServer(PC.Name)
    end
end