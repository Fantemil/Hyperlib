--variables
local me = game.Players.localPlayer
local tf = false
local key = Enum.KeyCode.L

--functions
function refuel()
    for _,v in pairs(workspace:GetChildren()) do
        if string.sub(v.Name,1,4) == 'Car_' then
            if v:FindFirstChild'Lid' then
                if v.Lid:FindFirstChild'Refuel' then
                    me.Character.HumanoidRootPart.CFrame = v.Lid.CFrame wait(1)
                    for _,v2 in pairs(game:GetService("Workspace").Pumps:GetChildren()) do
                        if me:DistanceFromCharacter(v2.Screen.Position) < 9 then
                            game:GetService("ReplicatedStorage").Remote:FireServer("FuelCustomer", v, v2)
                            game:GetService("ReplicatedStorage").Remote:FireServer("BuyItem", "Syntin Petrol Co", 1, "Station") --buy fuel
                            break
                        end
                    end
                elseif v.Lid:FindFirstChild'FinishFuel' then
                    game:GetService("ReplicatedStorage").Remote:FireServer("FinishFuel", v, workspace.Pumps.Pump_Type1)
                end
            end
        end
    end
end

function stamina()
    if me.PlayerGui.GameUI.Stamina.Bar.AbsoluteSize.X < 60 then
        me.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ceilings.Sofa.Seat.CFrame
        wait(10)
        me.Character.Humanoid.Sit = false -- unseat
    end
end

--key input trigger
game:GetService("UserInputService").InputBegan:Connect(function(input, chating)
    if not chating and input.KeyCode == key then
        tf = not tf
    end
end)

--yes
while wait(3) do
    if tf then
        refuel()
        stamina()
    end
end