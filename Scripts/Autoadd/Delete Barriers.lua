local map = game.Workspace.Map
local forcefields = map:GetChildren()

for i = 1, #forcefields do
if forcefields[i].Name == "Forcefield" then
local ggBois = forcefields[i]:Clone()
ggBois.Name = "lmao ez"
ggBois.Parent = map
forcefields[i]:Destroy()
end
end