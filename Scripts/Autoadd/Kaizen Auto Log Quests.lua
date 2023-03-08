if game.PlaceId == 7525610732 then
    if not game:IsLoaded() then game.Loaded:Wait() end
    local behindamountmain = -15
    local mainnpc = game.Workspace.Interactions.Sidequests.Midlands.TreeLogSideQuest
    local behindamountsecond = -20
    local secondnpc = game.Workspace.Interactions.Sidequests.Midlands.TreeLogOtherNPC
    pcall(function() print("") wait()
    wait(4.5)
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = mainnpc.CFrame + mainnpc.CFrame.UpVector * behindamountmain
    wait(.35)
    game:GetService("ReplicatedStorage").Knit.Services.interactService.RF.GetOptionData:InvokeServer("TreeLogSideQuest", "Yes")
    wait(.35)
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = secondnpc.CFrame + secondnpc.CFrame.UpVector * behindamountsecond
    wait(.35)
    game:GetService("ReplicatedStorage").Knit.Services.interactService.RF.GetInitFunction:InvokeServer("TreeLogOtherNPC")
    wait(.35)
    game:GetService("ReplicatedStorage").Knit.Services.interactService.RF.GetOptionData:InvokeServer("TreeLogOtherNPC", "Okay")
    wait(.35)
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = mainnpc.CFrame + mainnpc.CFrame.UpVector * behindamountmain
    wait(.35)
    for i = 1, 5 do
        wait(.10)
    game:GetService("ReplicatedStorage").Knit.Services.interactService.RF.GetInitFunction:InvokeServer("TreeLogSideQuest")
    end
    wait(.25)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end)
    else return end