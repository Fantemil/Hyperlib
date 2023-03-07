game:GetService("Workspace").MainBaseplate.Transparency = 0.6
game:GetService("Workspace").MainBaseplate.Texture:Destroy()
local cooldown = {}
while wait() do
for i,v in pairs(workspace.Cubes:GetChildren()) do 
    pcall(function()
    if game.Players.LocalPlayer:DistanceFromCharacter(v.Handle.Position) <= 10 and not table.find(cooldown, v) then
        game.ReplicatedStorage.Events.PickUp:FireServer(v)
        wait()
           local HRPCFrame = game.Players.LocalPlayer.Character.Head.CFrame
    local Rotation = HRPCFrame - HRPCFrame.Position  
    local NewCFrame = Rotation + Vector3.new(HRPCFrame.X, -12, HRPCFrame.Z) 
        v.Drop.RemoteEvent:FireServer(NewCFrame)
        wait()
        spawn(function()
        table.insert(cooldown, v)
        wait(1)
        table.remove(cooldown, cooldown[v])
        end)
    end
    end)
end
end