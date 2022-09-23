if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end
for i,v in pairs(workspace.NPC:GetChildren()) do
funcs.addhook(v,{txtenabled=true,autoremove=true,color=Color3.fromRGB(100,0,0)})
end