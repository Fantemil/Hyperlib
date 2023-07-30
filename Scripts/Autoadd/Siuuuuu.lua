--[[
    Pet Collection Deleter Script 
        by binbinvoroblox#3309
    
    - I made this so i could create a bank index for my alts more easily
    
    - Deletes any pet types (in your inventory only) that you already have in your inventory or bank with the current exceptions:
        - Ignores Locked/Hardcore/Exclusive/Event/Titanic Pets 
        - It classes normal/gold/rb/dm as different types
]]--

-- Only enable this if your saving multiples for DM index
local SAVE_FOR_CONVERSIONS = false

-- How often we will request data from the server about what pets are in our bank
local BANK_CHECK_FREQUENCY_SECONDS = 30

local Networking = require(game.ReplicatedStorage:WaitForChild("Library"):WaitForChild("Client"):WaitForChild("Network"))

LPH_NO_VIRTUALIZE = function(Function) return Function end
LPH_NO_VIRTUALIZE(function()
    if (not getgenv().RemoteHooking) then
        local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
        local functions = Network.Fire, Network.Invoke
        local old 
        old = hookfunction(getupvalue(functions, 1) , function(...) return true end)
        getgenv().RemoteHooking = true
    end
end)()

local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))

local PetList = {}
local lastBankCheckTime = 0
local bankPets = {}

for i,v in pairs(Library.Directory.Pets ) do
    PetList[i] = v.name
end

function sort_pets(pets)
    local result = previous or {}
    
    for i, pet in ipairs(pets) do
        local isProtectedPet = false
        
        local petName = PetList[pet.id] or tostring(pet.id)
        
        if pet.titanic or pet.huge or pet.rarity == "Exclusive" or pet.rarity == "Event" or pet.l or pet.hc then
            isProtectedPet = true
        end
        
        if not isProtectedPet then
            local petType = "Normal"
            if pet.r then petType = "Rainbow" end
            if pet.g then petType = "Gold" end
            if pet.dm then petType = "Dark" end

            if not result[petName] then
                result[petName] = { Normal = {}, Gold = {}, Rainbow = {}, Dark = {} }
            end

            table.insert(result[petName][petType], pet.uid)
        end
    end
    
    return result
end

function get_pets_to_delete(pets, bankpets)
    local pets_to_delete = {}
        
    for pet_name, pet in pairs(pets) do
        local counts = { Normal = 0, Gold = 0, Rainbow = 0, Dark = 0 }
        local keys = { "Normal", "Gold", "Rainbow", "Dark" }
        for _, key in ipairs(keys) do
            if pet[key] then
                counts[key] = #pet[key]
            end
        end
        
        local allowed_dark = 1
        local allowed_rainbow = 1
        local allowed_gold = 1
        local allowed_normal = 1
        
        if SAVE_FOR_CONVERSIONS then
            allowed_dark = 1
            allowed_rainbow = math.max(1, math.floor(6 * (allowed_dark - counts.Dark)) + 1)
            allowed_gold = math.max(1, math.floor(6 * (allowed_rainbow - counts.Rainbow)) + 1)
            allowed_normal = math.max(1, math.floor(6 * (allowed_gold - counts.Gold)) + 1)
        else
            for bpet_name, bpet in pairs(bankpets) do
                if bpet_name == pet_name then
                    if bpet["Dark"] and #bpet["Dark"] > 0 then allowed_dark = 0 end
                    if bpet["Rainbow"] and #bpet["Rainbow"] > 0 then allowed_rainbow = 0 end
                    if bpet["Gold"] and #bpet["Gold"] > 0 then allowed_gold = 0 end
                    if bpet["Normal"] and #bpet["Normal"] > 0 then allowed_normal = 0 end
                end
            end
        end
        
        for i, value in ipairs(pet.Dark) do
            if i > allowed_dark then
                table.insert(pets_to_delete, value)
            end
        end
        
        for i, value in ipairs(pet.Rainbow) do
            if i > allowed_rainbow then
                table.insert(pets_to_delete, value)
            end
        end
        
        for i, value in ipairs(pet.Gold) do
            if i > allowed_gold then
                table.insert(pets_to_delete, value)
            end
        end
        
        for i, value in ipairs(pet.Normal) do
            if i > allowed_normal then
                table.insert(pets_to_delete, value)
            end
        end
    end

    return pets_to_delete
end

local function get_bank_id()
  local banks = Networking.Invoke("Get My Banks")
  if not banks or not banks[1] or not banks[1].BUID then
    error("Failed to retrieve bank ID")
  end
  return banks[1].BUID
end

local function get_bank_pets(bank_id)
  local bank = Networking.Invoke("Get Bank", bank_id)
  if not bank or not bank.Storage or not bank.Storage.Pets then
    error("Failed to retrieve pet info from bank")
  end
  return bank.Storage.Pets
end

local function PetCheck()
    local invPets = sort_pets(Library.Save.Get().Pets)
    local currentTime = os.time()
    if (tonumber(lastBankCheckTime) == 0 or currentTime - lastBankCheckTime >= BANK_CHECK_FREQUENCY_SECONDS) then
        lastBankCheckTime = currentTime
        pcall(function()
            print("Retreiving bank pets")
            bankPets = sort_pets(get_bank_pets(get_bank_id()))
        end)
    end
    local petsToDelete = get_pets_to_delete(invPets, bankPets)
    if #petsToDelete > 0 then
        print("Deleting", #petsToDelete, "pets")
        Networking.Invoke("Delete Several Pets", petsToDelete)
    end
end

pcall(function()
    bankPets = sort_pets(get_bank_pets(get_bank_id()))
end)

getgenv().DeleteCollectionExcess = true
while getgenv().DeleteCollectionExcess and task.wait(1) do
    PetCheck()
end

_G.Enabled = true --// set to "false" to disable the script

local useGolden = true --// Set to "false" if you don't want to open golden eggs


--// DON'T EDIT BELOW IF YOU DONT KNOW WHAT YOU'RE DOING

local event = workspace.__THINGS.__REMOTES:FindFirstChild("buy egg")

local rprint

local Normal_Eggs = {}
local Golden_Eggs = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Eggs = ReplicatedStorage:WaitForChild("Game").Eggs

if rconsolewarn then
rconsoleclear()
rprint = rconsolewarn
else
rprint = print
end

function Time(Tick) -- Not By me
if typeof(Tick) ~= "number" then
return warn('Integer expected, got', typeof(Tick))
end
local Tick = tick() - Tick
local Weeks = math.floor(math.floor(math.floor(math.floor(Tick / 60) / 60) / 24) / 7)
local Days =  math.floor(math.floor(math.floor(Tick / 60) / 60) / 24)
local Hours = math.floor(math.floor(Tick / 60) / 60)
local Minutes = math.floor(Tick / 60)
local Seconds = math.floor(Tick)
local MilliSeconds = (Tick * 1000)
local Format = ""
if Weeks > 0 then
Format = Format .. string.format("%d Week/s, ", Weeks)
end
if Days > 0 then
Format = Format .. string.format("%d Day/s, ", Days % 7)
end
if Hours > 0 then
Format = Format .. string.format("%d Hour/s, ", Hours % 24)
end
if Minutes > 0 then
Format = Format .. string.format("%d Minute/s, ", Minutes % 60)
end
if Seconds > 0 then
Format = Format .. string.format("%d Second/s, ", Seconds % 60)
end
if MilliSeconds > 0 then
Format = Format .. string.format("%d Ms", MilliSeconds % 1000)
end
return Format
end

local startTick = tick()

for _,eggFolder in pairs(Eggs:GetChildren()) do
for _,eggName in pairs(eggFolder:GetChildren()) do
if string.find(eggName.Name, "Golden") then
table.insert(Golden_Eggs, eggName.Name)
else
table.insert(Normal_Eggs, eggName.Name)
end
end
task.wait()
end

rprint("Added all eggs to database. Took "..tostring(Time(startTick)))


while _G.Enabled == true and wait(0.05) do
local args = {}
local normalegg = Normal_Eggs[math.random(1, #Normal_Eggs)]
local goldenegg = Golden_Eggs[math.random(1, #Golden_Eggs)]
if useGolden == true then
if math.random(1,2) == 1 then
args = {normalegg, false}
rprint("[Mastery Farm] Buying: "..normalegg)
else
args = {goldenegg, false}
rprint("[Mastery Farm] Buying: "..goldenegg)
end
else
args = {normalegg, false}
rprint("[Mastery Farm] Buying: "..normalegg)
end
local e = event:InvokeServer(args)
repeat wait() until e ~= nil
rprint("Running Time: "..tostring(Time(startTick)))
end