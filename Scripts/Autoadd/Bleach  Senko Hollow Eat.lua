local Character = game.Players.LocalPlayer.Character
local Remote = Character.HollowServer.Input

local function GetClosest()
    local Food = workspace.Food:GetChildren()
    
    local Mag, Closest = 9999, nil
    for _,v in next, Food do
        if (v.Position - Character.PrimaryPart.Position).Magnitude < Mag then
            if v.Bites.Value == 0 and v.Amount.Value >= 1 then
                Closest = v
            end
        end
    end
    
    return Closest
end

while true do
    local Food = GetClosest()
    if Food then
        Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        while Food and Food.Parent do
            Remote:FireServer('StartEat')
            Character:SetPrimaryPartCFrame(Food.CFrame * CFrame.new(0,5,4))
            wait()
        end
        Remote:FireServer('EndEat')
        wait()
    end
    wait()
end