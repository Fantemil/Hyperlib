local lp = game:GetService('Players').LocalPlayer
local cti = game:GetService("ReplicatedStorage").Events.ClientTycoonInput
local srfc, tcn

for _,v in pairs(workspace.Tycoons:GetChildren()) do
    if v.Player.Value == lp then
        tcn = v
        srfc = tcn.Items.OftenFiltered.Surface
        break
    end
end

while wait() do
    for _,v in pairs(srfc:GetChildren()) do
        cti:FireServer(tcn, {['name'] = 'CollectBill', ['model'] = v})
    end
end