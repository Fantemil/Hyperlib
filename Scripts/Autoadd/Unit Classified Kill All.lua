--https://pastebin.com/raw/yTg7H4GX
getgenv().WeaponName = "M9 Bayonet" -- Replace This With The Custom Weapon Name If You Want
local function KillAll()
    if game:GetService("ReplicatedStorage").Weapons:FindFirstChild(WeaponName) then
        for _,v in next, game:GetService("Players"):GetPlayers() do
            if v ~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                game:GetService("ReplicatedStorage").Events.ME:FireServer(unpack({[1] = {[1] = "hitpart",[2] = v.Character:FindFirstChild("HumanoidRootPart"),[3] = game:GetService("ReplicatedStorage").Weapons:FindFirstChild(WeaponName),[4] = math.huge}}))
            end
        end
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Invalid Weapon Name",Duration = 5})
    end
end
KillAll()