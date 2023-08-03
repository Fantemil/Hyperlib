if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end

for i,kn in pairs(workspace.knifeDisplays:GetChildren()) do
kn=kn.Name
local realkn=game:GetService("Workspace").knifeDisplays[kn]
local woodkn=game:GetService("Workspace").knifeDisplays["Wood Knife"]
local fakekn=getproperties(game:GetService("Workspace").knifeDisplays[kn])
fakekn.Ability=getproperties(realkn.Ability)
fakekn.Price=getproperties(woodkn.Price)
fakekn.Dmg=getproperties(realkn.Dmg)
fakekn.Knockback=getproperties(realkn.Knockback)
getchar().clientMain.Remote:FireServer("buyKnife", fakekn)
realkn,woodkn,fakekn=nil,nil,nil

kn=nil

end

local kn="Wood Knife"
local realkn=game:GetService("Workspace").knifeDisplays[kn]
local woodkn=game:GetService("Workspace").knifeDisplays["Wood Knife"]
local fakekn=getproperties(game:GetService("Workspace").knifeDisplays[kn])
fakekn.Ability=getproperties(realkn.Ability)
fakekn.Price=getproperties(woodkn.Price)
fakekn.Dmg=getproperties(realkn.Dmg)
fakekn.Knockback=getproperties(realkn.Knockback)
getchar().clientMain.Remote:FireServer("buyKnife", fakekn)
realkn,woodkn,fakekn=nil,nil,nil

kn=nil