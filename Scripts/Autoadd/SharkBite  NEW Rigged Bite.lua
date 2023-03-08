if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/6yNuiC9/scr/main/funcs.lua"))()
end
local old=syn.get_thread_identity()
syn.set_thread_identity(3)
local rifle=require(game:GetService("ReplicatedStorage").Projectiles.ProjectileStatsModule).get().Rifle
--retarded code^
syn.set_thread_identity(old)
old=nil
rifle.FireRate=9e9
rifle.MagSize=9e9
rifle.Damage=9e9
rifle.Range=9e9
rifle.Mode=2
rifle.ReloadTime=0
rifle.Recoil=Vector3.new(0,0,0)
local function sharkfunc(x)
task.wait(.5)
funcs.addhook(x,{['color']=Color3.fromRGB(100,0,0);['transp']=.4})
end
workspace.Sharks.ChildAdded:Connect(sharkfunc)
for i,v in pairs(workspace.Sharks:GetChildren()) do
task.spawn(sharkfunc,v)
end
local function chh(ch)
if ch=='InMouth' then
getchar():SetAttribute('InMouth',nil)
end
end
getchar().AttributeChanged:Connect(chh)
funcs.lplr.CharacterAdded:Connect(function(ch) ch.AttributeChanged:Connect(chh) end)