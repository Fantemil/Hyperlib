local vip = game:GetService("Workspace")["VIP Rooms"]:GetDescendants()
local trash = {"VIPDoor", "VIP", "Union", "Mega VIP", "Epic VIP", "Floor", "Rich VIP", "Ultra VIP"}

for i = 1, #trash do
    v = trash[i]
    for o, p in pairs(vip) do
        if p.Name == v then
            p:Destroy()
        end
    end
end