---made by jamjam
---equip sniper to work

while true do
local player = game.Players.LocalPlayer
 
for i, v in ipairs(game.Players:GetPlayers()) do
  if v.Name ~= player.Name then
    local UpperTorso = v.Character:FindFirstChild("UpperTorso")
    if UpperTorso then
      local humanoid = v.Character:FindFirstChild("Humanoid")
      if humanoid then
          local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.Sniper,
    [2] = {
        ["p"] = Vector3.new(-69.17404174804688, 53.9786491394043, -79.91133117675781),
        ["pid"] = 1,
        ["part"] = UpperTorso,
        ["d"] = 4.149898052215576,
        ["maxDist"] = 4.144620895385742,
        ["h"] = Humanoid,
        ["m"] = Enum.Material.Plastic,
        ["sid"] = 3,
        ["t"] = 0.10278839607565572,
        ["n"] = Vector3.new(-0.9585323333740234, 0.012211349792778492, 0.284722238779068)
    }
}

game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
        end
      end
    end
  end
  wait(0.1)
  end