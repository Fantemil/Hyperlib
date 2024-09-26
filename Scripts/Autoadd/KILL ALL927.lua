local function Get_Weapon_Name()
    for _,v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") then
            return v.Name
        end
    end
end

while task.wait() do
    for _,v in next, game:GetService("Players"):GetPlayers() do
        if v ~= game:GetService("Players").LocalPlayer then
            pcall(function()
                local BulletID = game:GetService("Players").LocalPlayer.Name .. game:GetService("Players").LocalPlayer.UserId .. tick() .. math.random(111, 999) .. math.random(111, 999)
                local WeaponName = Get_Weapon_Name()
                if WeaponName ~= nil and game:GetService("Players").LocalPlayer.Character and v.Character and v.Character:FindFirstChild("Head") then
                    game:GetService("ReplicatedStorage").ACS_Engine.Events.ServerBullet:FireServer(unpack(
                        {
                            [1] = v.Character.Head.Position,
                            [2] = Vector3.new(0,0,0),
                            [3] = {["origin"] = v.Character.Head.Position,["weaponName"] = WeaponName,["bulletID"] = BulletID,["currentPenetrationCount"] = 0,["shellSpeed"] = 1,["maxPenetrationCount"] = 1,["penetrationMultiplier"] = 1,["shellType"] = "Bullet",["shellMaxDist"] = 1,["filterDescendants"] = {[1] = game:GetService("Players").LocalPlayer.Character,[2] = workspace.Camera.Viewmodel}}
                        }
                    ))   

                    game:GetService("ReplicatedStorage").ACS_Engine.Events.Damage:InvokeServer(unpack(
                        {
                            [1] = {["origin"] = v.Character.Head.Position,["weaponName"] = WeaponName,["bulletID"] = BulletID,["currentPenetrationCount"] = 0,["shellSpeed"] = 1,["maxPenetrationCount"] = 1,["registeredParts"] = {[v.Character.Head] = true},["penetrationMultiplier"] = 1,["shellType"] = "Bullet",["shellMaxDist"] = 1,["filterDescendants"] = {[1] = game:GetService("Players").LocalPlayer.Character,[2] = workspace.Camera.Viewmodel}},
                            [2] = v.Character.Humanoid,
                            [3] = 200,
                            [4] = 2,
                            [5] = v.Character.Head,
                            [6] = 1
                        }
                    ))
                end
            end)
        end
    end
end