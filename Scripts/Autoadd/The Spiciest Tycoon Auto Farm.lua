local Functions, Information = {}, {}

shared.buy = true -- Auto Buy Buttons On/Off
shared.process = true -- Auto Process On/Off
shared.rebirth = true -- Auto Rebirth On/Off
shared.processDelay = 15 -- In Seconds

function Information:GetTycoon()
    return game:GetService("Workspace").Tycoons[game.Players.LocalPlayer.UserId]
end

function Functions:BuyButtons()
    for i, v in next, Information:GetTycoon().Buttons:GetChildren() do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
    end
end

function Functions:ProcessFood()
    local oldpos = game.Players.LocalPlayer.Character:GetPivot()
    game.Players.LocalPlayer.Character:PivotTo(Information:GetTycoon()["_Default"].CollectorNPC:GetPivot())
    task.wait(0.1)
    fireproximityprompt(Information:GetTycoon()["_Default"].CollectorNPC.ProximityPrompt)
    task.wait(0.1)
    game.Players.LocalPlayer.Character:PivotTo(oldpos)
end

function Functions:Rebirth()
    game:GetService("ReplicatedStorage").Assets.Remotes.Func:InvokeServer("TycoonSystem", "Rebirth")
end

while shared.buy do
    Functions:BuyButtons()
    task.wait()
end

while shared.process do
    Functions:ProcessFood()
    task.wait(shared.processDelay)
end

while shared.rebirth do
    Functions:Rebirth()
    task.wait()
end