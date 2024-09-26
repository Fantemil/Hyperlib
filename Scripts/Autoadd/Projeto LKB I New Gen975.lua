-- https://discord.com/invite/hdzABPrPjb --
_G.Settings = true
-- False / True --
if _G.Settings == true then
  _G.farm2 = false-- true / false Auto Farm
_G.groundDistance = 0 -- <> Value <> Auto Farm +/- Up / Down
_G.dist = 100000 -- <> Value <> Search-Zombie Distance
_G.HeadSize = 2.5 -- <> Value <> Hitbox
_G.autoequip = false-- true / false Auto Equip Tools + Duplicate Guns More Damage OP
_G.AutoGetPowerups = false -- true / false Auto Get powerups Motolov, Granade ect...]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/Zombie-Attack-Projeto-LKB/main/Open%20Source"))()
print("1")
  else
 -- Basic_Settings --
_G.farm2 = false-- true / false Auto Farm
_G.groundDistance = 0 -- <> Value <> Auto Farm +/- Up / Down
_G.dist = 100000 -- <> Value <> Search-Zombie Distance
_G.HeadSize = 2.5 -- <> Value <> Hitbox
_G.autoequip = false-- true / false Auto Equip Tools + Duplicate Guns More Damage OP
_G.AutoGetPowerups = false -- true / false Auto Get powerups Motolov, Granade ect...
-- _G.AutoBuyGuns = false -- Future Updates...
-- _G.AutoUpdateGuns = false -- Future Updates...
loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/Zombie-Attack-Projeto-LKB/main/Open%20Source"))()
print("2")
end
-- Commands Script --
--[[
message == ";unfarm" or message == ";unFarm" or message == ";uf" then -- Stop Farm
message == ";farm" or message == ";Farm" or message == ";f" then -- Start Farm

message == ";powerup" or message == ";Powerup" or message == ";Powerups" or message == ";powerups" or message == ";pw" or message == ";up" then -- Enabled Auto Collect PowerUp
message == ";unpowerup" or message == ";unPowerup" or message == ";unPowerups" or message == ";unpowerups" or message == ";unpw" or message == ";unup" then -- Disable Auto Collect PowerUp

message == ";autoequip" or message == ";Autoequip" or message == ";at" or message == ";At" or message == ";Equip" or message == "equip" then -- Enabled Auto Equip Guns
message == ";unautoequip" or message == ";unAutoequip" or message == ";unat" or message == ";unAt" or message == ";unEquip" or message == "unequip" then -- Disable Auto Equip

-- Disable + / - Farm Exemple: ";ds+ 100" or ";ds- 100"
message:sub(1, 5) == ";ds+ " then
        local value = tonumber(message:sub(6))
        if value and value >= 1 and value <= 150 then
            _G.groundDistance = value
        end
        elseif message:sub(1, 5) == ";ds- " then
        local value = tonumber(message:sub(6))
        if value and value >= 1 and value <= 150 then
            _G.groundDistance = -value
        elseif message:sub(1, 5) == ";dt " then -- Search-Zombie Distance <Beta>
        local value = tonumber(message:sub(6))
        if value and value >= 1 and value <= 100000 then
          _G.dist = value
           elseif message:sub(1, 5) == ";head " or "Head " or ";headsize " or ";Headsize " or "HeadSize " or ";H " or ";HS " or ";h " or ";H " or "Hitbox " or "hitbox " then
        local value = tonumber(message:sub(6)) -- Zombie Head Hitbox
        if value and value >= 3 and value <= 50 then
          _G.HeadSize = value
         end
        end
     end
  end
end)

all _G. Global
_G.globalTarget,
_G.HeadSize,
_G.dist,
_G.groundDistance,
_G.autoequip,
_G.AutoGetPowerups,
_G.farm2,
_G.Settings,
_G.AutoBuyGuns, -- ComeSoon
_G.AutoUpdateGuns -- ComeSoon
]]