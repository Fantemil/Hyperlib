local Research = {
'Water',--EARTH
'Food',
'FrozenWater',
'Gel',
'Biology',
'Crystals',
'Light',
'Robotics',
'AdvDocking',
'AdvAI',
'NuclearPower',
'LunarSurvaying',--MOON
'LunarLanders',
'LunarMining',
'LunarRovers',
'AutoMiners',
'MartianSurvaying', --MARS
'MartainLanders',
'WaterSearching',
'MartianRovers',
'MarsDust',
'VenusSurvaying',--VENUS
'VenusProbes',
'AntiCorrosionTest',
'HeatResistance'
}
for i,v in pairs(Research) do
game:GetService("ReplicatedStorage").Events.StartResearch:FireServer(v)
end