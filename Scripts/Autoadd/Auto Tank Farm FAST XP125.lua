local host = {"player1"} -- the one thats killing them
local noobs  = {"player1","player2"} -- the ones that are getting killed
abort = false
noclip = true
local players = game.Players
local VirtualUser=game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()

        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())

end)
hideuser = true
spawn(function()
    while wait() do
        if hideuser then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.titleGui.Frame:Destroy()
            end)
        end
    end
end)
function Invis()
    pcall(function()
    local Player = game.Players.LocalPlayer
    local savepos = Player.Character.HumanoidRootPart.CFrame
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1609.06726, 112.907532, 2415.45264, 0.996510983, -1.88264e-08, 0.0834614709, 1.23878658e-08, 1, 7.76616389e-08, -0.0834614709, -7.63567698e-08, 0.996510983)
    wait(2)
    local Clone = game:GetService('Players').LocalPlayer.Character.LowerTorso.Root:Clone()
    game:GetService('Players').LocalPlayer.Character.LowerTorso.Root:Destroy()
    Clone.Parent = game:GetService('Players').LocalPlayer.Character.LowerTorso
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savepos
    end)
end
Invis()
game:GetService('RunService').Stepped:connect(function()
    pcall(function()
    if noclip  then
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.Torso.CanCollide = false
        game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
        game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
        else
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
        game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end
        end
    end
end)
end)

while wait() do
    pcall(function()
    wait()
    if table.find(noobs, game.Players.LocalPlayer.Name) then
        while wait() do
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1609.06726, 112.907532, 2415.45264, 0.996510983, -1.88264e-08, 0.0834614709, 1.23878658e-08, 1, 7.76616389e-08, -0.0834614709, -7.63567698e-08, 0.996510983)
            end)    
        end
    else
        if table.find(host, game.Players.LocalPlayer.Name) then
            for i,v in pairs(noobs) do

                if players[v] then

                    local player = players[v]


                    if not game.Players[v].Character:WaitForChild('ForceField',0.5) then
                        game.Players[v].Character.DescendantAdded:connect(function(na)
                            if na.Name == "ForceField" then
                                abort = true
                            end
                        end)
                        repeat
                            
                                wait()
                                if game.Players[v].Character:FindFirstChild('ForceField') then
                                    abort = true
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game.Players[v].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2))
                                game:GetService("ReplicatedStorage").Events.Punch:FireServer(0,0.1,1)
                            
                        until abort or not game.Players[v].Character:IsDescendantOf(game.Workspace) or not game.Players[v].Character:FindFirstChild('Humanoid') or game.Players[v].Character.Humanoid.Health == 0 or not game.Players[v].Character:FindFirstChild('HumanoidRootPart')
                        abort = false
                    end
                end
            end
        end
    end
end)
end