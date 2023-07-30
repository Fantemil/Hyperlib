-- also join .gg/zoware 😎

--[[
 how 2 use
 step 1: get a gun (not a melee)
 step 2: turn on pvp mode
 step 3: equip ur gun
 step 4: execute
 step 5: everyone with pvp on now should die
]]

-- 4/15/23 (dd/mm/yy)

bloodengine, ware = pcall(game.HttpGet, game, ('https://%s'):format('github.com/VanillaDeveloper/ZoDestroyer/blob/main/blood_engine_killall.lua?raw=true'))
assert(bloodengine, 'cannot load your script')
for i = 1,3 do loadstring(ware)(); end