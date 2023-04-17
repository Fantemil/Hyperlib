local AmmoIncrease = true
local Settings = {
['Range']=5000,
['FireRate']=10000,
['Spread']=0,
['Zoom']=20,
['FireMode']="Auto",
['Dropoff']=0,
['ReloadTime']=0,
['Recoil']=0
}
local ModFunc,ModList,ModTable = nil,0,nil
local Reload = game.ReplicatedStorage.RuddevRemotes.Reload
for _,a in pairs(debug.getregistry()) do
if type(a) == "function" and pcall(function() return debug.getupvalues(a) end) then
for i,v in pairs(debug.getupvalues(a)) do
if type(v) == "table" then
for ch,e in pairs(v) do
if ch == "UUID" and ModTable == nil then
ModTable = v
ModFunc = a
ModList = i
end
end
end
end
end
end
RetMod = {}
for i,v in pairs(ModTable) do
if Settings[i] == nil then
RetMod[i] = ModTable[i]
else
RetMod[i] = Settings[i]
end
end
debug.setupvalue(ModFunc,ModList,RetMod)
--Got lazy; Couldnt find the static ammo value in registry so I subbed for GUI
--If yall know where it is then DM me on disc and ill fix this up
local Plr = game.Players.LocalPlayer
local GUI = Plr.PlayerGui:FindFirstChild("MainGui")
local Ammo = nil
if GUI and AmmoIncrease then
local GUIAmmo = GUI.Main.Ammo
GUIAmmo.Changed:Connect(function(prop)
if prop == "Text" then --filter text to find ammo in mag
local A = GUIAmmo.Text
local Pos = string.find(A,"/")-2
Ammo = tonumber(string.sub(A,0,Pos))
if Ammo == 0 then
spawn(function() repeat wait() Reload:FireServer() until Ammo > 0 end)
end
if Ammo < 0 then
Reload:FireServer()
repeat wait() until Ammo > 0
end
if Ammo > 0 then
RetMod['Magazine'] = Ammo
debug.setupvalue(ModFunc,ModList,RetMod)
end
end
end)
end