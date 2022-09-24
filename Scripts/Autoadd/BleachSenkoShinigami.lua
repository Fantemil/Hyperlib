--// made by bloodthorn cooperations \\--
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Remote = Character.CharacterManager.RemoteEvent

local Stuns = {
    ['CANTM1'] = true,
    ['Attacking'] = true,
    ['Action'] = true,
    ['CANTM2'] = true,
    ['NoShunpo'] = true,
    ['Stunned'] = true,
};

Character.ChildAdded:Connect(function(Child)
    if Stuns[Child.Name] then
        task.wait()
        Child:Destroy()
    end
end)

while true do
    for _, Hollow in next, workspace.Live:GetChildren() do
        if string.find(Hollow.Name,'Hollow') then
            while Hollow and Hollow.Parent and Hollow.Humanoid.Health > 0 and Character.Humanoid.Health > 0 do
                Character:SetPrimaryPartCFrame(Hollow.HumanoidRootPart.CFrame * CFrame.new(0,0,4))
                Remote:FireServer('LeftClick')
                wait()
            end
        end
        if Character.Humanoid.Health <= 0 then
            return
        end
    end
    wait()
end