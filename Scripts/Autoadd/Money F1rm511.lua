getgenv().farm = true -- false/true

local plr = game.Players.LocalPlayer
local cash = workspace.Cash
local dmg = workspace.Damageables

for _,v in next, getconnections(plr.Idled) do 
    v:Disable() 
end

local function getMoney()
    for _, m in pairs(cash:GetChildren()) do
        if m.Name == "Cash" and (m.Position - plr.Character.HumanoidRootPart.Position).magnitude <= 20 then
            plr.Character.HumanoidRootPart.CFrame = m.CFrame
            wait(.2)
            fireproximityprompt(m.ProximityPrompt, 6)
            wait(.35)
        end
        if not getgenv().farm then
            break
        end
    end
end

while getgenv().farm do
    pcall(function()
        for _, a in ipairs(dmg:GetChildren()) do
            if not getgenv().farm then
                break
            end
            if a.Damageable.Value > 0 then
                plr.Character.HumanoidRootPart.CFrame = a.Screen.CFrame * CFrame.new(0, 0, 2)
                wait(1)
                repeat
                    if not getgenv().farm then
                        break
                    end
                    plr.Character.HumanoidRootPart.CFrame = a.Screen.CFrame * CFrame.new(0, 0, 2)
                    game:GetService("ReplicatedStorage"):WaitForChild("PUNCHEVENT"):FireServer(1)
                    wait(.5)
                until a.Damageable.Value <= 0
                wait(1)
                getMoney()
            end
        end
    end)
    wait(1)
end