local plrs = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local lp = plrs.LocalPlayer
local net = rs.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SwordHit
local inv = rs.Inventories:FindFirstChild(lp.Name)
local range = 20

local function getSword()
    return inv:FindFirstChild("wood_sword") or
           inv:FindFirstChild("stone_sword") or
           inv:FindFirstChild("iron_sword") or
           inv:FindFirstChild("diamond_sword") or
           inv:FindFirstChild("emerald_sword")
end

local function dist(p1, p2)
    return (p1 - p2).Magnitude
end

while true do
    local sword = getSword()
    if sword then
        for _, p in pairs(plrs:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                local pPos = p.Character.HumanoidRootPart.Position
                local lpPos = lp.Character.HumanoidRootPart.Position
                if dist(lpPos, pPos) <= range and p.Team ~= lp.Team then
                    local args = {
                        [1] = {
                            ["entityInstance"] = p.Character,
                            ["chargedAttack"] = {
                                ["chargeRatio"] = 0
                            },
                            ["validate"] = {
                                ["targetPosition"] = {
                                    ["value"] = pPos
                                },
                                ["selfPosition"] = {
                                    ["value"] = lpPos
                                }
                            },
                            ["weapon"] = sword
                        }
                    }
                    net:FireServer(unpack(args))
                end
            end
        end
    end
    task.wait(0.07)
end
setclipboard('https://discord.gg/VudXCDCaBN')