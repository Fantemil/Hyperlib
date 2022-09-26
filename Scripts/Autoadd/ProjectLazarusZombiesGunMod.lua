local Tables = {}

for i,v in next, getreg() do
    if typeof(v) == "table" then
        if v.Damage then
            table.insert(Tables, v)
        end
    end
end

local function Upload()
    for i,v in next, Tables do
        v.GunKick = 0
        v.AimFOV = 360
        v.FireTime = 0.0001
        v.Damage = {Max = 100, Min = 100}
        v.Spread = {Min = 0.01, Max = 0.01}
        v.Semi = false
        v.HeadShot = 100
        v.TorsoShot = 100
        v.LimbShot = 100
    end
end

while wait(5) do
    Tables = {}
   
    for i,v in next, getreg() do
        if typeof(v) == "table" then
            if v.Damage then
                table.insert(Tables, v)
            end
        end
    end
   
    Upload()
end