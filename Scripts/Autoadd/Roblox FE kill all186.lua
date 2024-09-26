--Read Or else you don't know how to use it
--how to use this script? Well basically 
---this script Work on Game that has Free model Gun that Are Model Like For example Fortline Game 
---most of these game are well botted and Free Model Game copy and pasted alot
---So i decided to Manipulate their remote event game to make Kill all script
---Change the "Pistol" to gun name that exist in game to make loop kill ALSO YOU MUST CARRY AND EQUIP GUN WHILE THAT/EXECUTE THAT IN order to work
---if gun name dont appear on you screen use dex explorer to view what the name of gun in you backpack 
while true do
local player = game.Players.LocalPlayer

for i, v in ipairs(game.Players:GetPlayers()) do
  if v.Name ~= player.Name then
    local upperTorso = v.Character:FindFirstChild("UpperTorso")
    if upperTorso then
      local humanoid = v.Character:FindFirstChild("Humanoid")
      if humanoid then
        local args = {
          [1] = player.Character.Pistol, --Change the Pistol To Gun Name you wanted to Make loop kill all work
          [2] = {
            ["p"] = Vector3.new(-0.04069240391254425, 103.88400268554688, 3.110368251800537),
            ["pid"] = 1,
            ["part"] = upperTorso,
            ["d"] = 2.241058111190796,
            ["maxDist"] = 1.8013105392456055,
            ["h"] = humanoid,
            ["m"] = Enum.Material.Plastic,
            ["sid"] = 1,
            ["t"] = 0.01474018327328561,
            ["n"] = Vector3.new(-0.21247883141040802, 0.5551897287368774, -0.8041250705718994)
          }
        }

        game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
      end
    end
  end
end
wait(0.1)
end