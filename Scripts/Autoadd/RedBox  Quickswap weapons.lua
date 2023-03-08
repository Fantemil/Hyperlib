if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end

local g=game:GetService("ReplicatedStorage").Assets.Loadout
local gn={"Pump Shotgun","Frag Grenade","Pump Shotgun"}
local rm=game:GetService("ReplicatedStorage").AddTool
local function otherdefaults()
task.wait()
rm:FireServer(getchar(),g.Secondary["Beretta M9"])
if g.Misc:FindFirstChild(gn[2]) then
rm:FireServer(getchar(),g.Misc[gn[2]])
end
rm:FireServer(getchar(),g.Melee["Linked Sword"])
end
local function fulldef()
gn[1]=gn[1]~="M4A1" and "M4A1" or "Pump Shotgun"
gn[2]=gn[2]~="Frag Grenade" and "Frag Grenade" or "Cuffs"
gn[3]=gn[1]
if g.Primary:FindFirstChild(gn[1]) then
rm:FireServer(getchar(),g.Primary[gn[1]])
end
otherdefaults()
end
game:GetService("UserInputService").InputBegan:Connect(function(x,nn)
if not nn and x.KeyCode==Enum.KeyCode.E and getchar():FindFirstChild("Head") then
fulldef()
elseif not nn and x.KeyCode==Enum.KeyCode.X and getchar():FindFirstChild("Head") and g.Primary:FindFirstChild(gn[3]) then
gn[3]=gn[3]~="Remington 700" and "Remington 700" or gn[1]
rm:FireServer(getchar(),g.Primary[gn[3]])
otherdefaults()
elseif not nn and x.KeyCode==Enum.KeyCode.V and getchar():FindFirstChild("Head") and g.Misc:FindFirstChild(gn[2]) then
rm:FireServer(getchar(),g.Primary[gn[1]])
otherdefaults()
end
end)
local nounequip=false
oldNamecall = hookmetamethod(game, "__namecall", function(instance, ...)
local ncm = getnamecallmethod()
if not checkcaller() and nounequip and ncm=="UnequipTools" and instance.Parent==getchar() and instance.Name=="Humanoid" then
       return
end
       

       return oldNamecall(instance,...)
end)

print("ex",os.time())
local rem=game:GetService("ReplicatedStorage").Assets.Remotes.throwGrenade
local function onspawn(ch)
nounequip=false
local bp,hum=funcs.lplr:WaitForChild("Backpack",10),ch:WaitForChild("Humanoid",10)
ch:WaitForChild("Head",10)
local lastexplosion=-20
hum.HealthChanged:Connect(function(hp)
if hp <= 4 and os.clock()-lastexplosion > 9 then
lastexplosion=os.clock()
nounequip=true
--for i = 1,3 do
if ch and bp then
local nnnn=66
for i = 1,nnnn/2 do
rm:FireServer(ch,g.Misc["Frag Grenade"])
end
coroutine.wrap(function()
for i = 1,nnnn/2 do
rm:FireServer(ch,g.Misc["Frag Grenade"])
end end)()
bp.ChildAdded:Wait()
task.wait(.9)
for i,gren in pairs(bp:GetChildren()) do
coroutine.wrap(function()
if gren.Name=="Frag Grenade" then
pcall(function() gren.Parent=ch end)
task.wait(.4)
for i = 1,1600 do
pcall(function() gren.Parent=ch end)
if gren and gren.Parent==ch then
rem:FireServer(Vector3.new(Random.new():NextNumber(-20,20),Random.new():NextNumber(-20,20),Random.new():NextNumber(-20,20)), gren)
end
task.wait(.01)
end

end
end)()
task.wait(.03)
end

end

--end
task.wait(3.2)
fulldef()
task.wait(1.4)
fulldef()
nounequip=false
end
end)

end
onspawn(getchar())
funcs.lplr.CharacterAdded:Connect(onspawn)