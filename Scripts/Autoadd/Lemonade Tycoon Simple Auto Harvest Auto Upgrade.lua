 local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


local Variables = {
    ['Player'] = {
        ['Tycoon'] = nil,
        ['LocalPlayer'] = game.Players.LocalPlayer
    },
    ['Toggle'] = {
        ['AutoFarm'] = false,
        ['AutoUpgrade'] = false
    }
}


local Function = {
    ['GetTycoon'] = function()
        for i,v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
            if v.Name == "Owner" then
                if tostring(v.Value) == Variables.Player.LocalPlayer.Name then
                    Variables.Player.Tycoon = v.Parent.Name
                end
            end
    end
end
}






local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local wndw = Rayfield:CreateWindow({
    Name = "JumbleScripts.com",
    LoadingTitle = "Lemon Tycoon",
    LoadingSubtitle = "by Jumble",
    ConfigurationSaving = {
      Enabled = true,
      FolderName = "JumbleHub",
      FileName = "LemonTycoon"
    },
    Discord = {
      Enabled = true,
      Invite = "2jjvVfqrGE",
      RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
      Title = "Jumble",
      Subtitle = "Key",
      Note = "",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = ""
    }
})

local HomeTab = wndw:CreateTab("Home", 11802060386)

local HomeSection = HomeTab:CreateSection("Home")

Function.GetTycoon()



game["Run Service"].RenderStepped:Connect(function()
    if Variables.Toggle.AutoFarm then
        task.wait()
        for i,v in pairs(game:GetService("Workspace").Tycoons[Variables.Player.Tycoon].Purchases:GetDescendants()) do
            if v.Name == "Lemons" then
                local eztree = v.Parent.Name
                local args = {
                    [1] = workspace.Tycoons[Variables.Player.Tycoon].Purchases[eztree]
                }

                game:GetService("ReplicatedStorage").Events.Remotes.Harvest:FireServer(unpack(args))
                task.wait()
            end
    end
end
end)


function LemonadeTP()
spawn(function()
        while Variables.Toggle.AutoUpgrade do
            task.wait()
            for i,v in pairs(game:GetService("Workspace").Tycoons[Variables.Player.Tycoon]:GetDescendants()) do
                if v.Name =="TouchInterest" then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                end
            end
        end
    end)
end



local AutoUpgradeToggle = HomeTab:CreateToggle({
    Name = "Auto Upgrade",
    CurrentValue = false,
    Flag = "AutoUpgradeToggle",
    Callback = function(Value)
        Variables.Toggle.AutoUpgrade = Value
        LemonadeTP()
    end,
})


local AutoFarmToggle = HomeTab:CreateToggle({
    Name = "Auto Harvest",
    CurrentValue = false,
    Flag = "AutoFarmToggle",
    Callback = function(Value)
        Variables.Toggle.AutoFarm = Value
    end,
})