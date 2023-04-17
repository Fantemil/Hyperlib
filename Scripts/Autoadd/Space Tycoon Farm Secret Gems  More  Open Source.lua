--[Instructions]--
    --[Alien Gem Farm]--
        -- Get a sword {Normal Sword, Blue Sword, Lightsaber}, I recommned the lightsaber and stand still anywhere. Once the script is executed it'll TP aliens to you, kill them, and collect the gems.
    --[Auto Collect Money]
        -- Since i'm a lazy fuck you'll have to get the paths to your collectors on your own. Just replace "FirstTycoon" or whatever it is with whatever tycoon your in, same with for other planets.
    --[Game Link : https://www.roblox.com/games/7535149098/Space-Tycoon-Belt]
--[ENJOY!]--

--[Anti-Afk]--
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
--[Config]--
getgenv().Config = {
    HiddenGemFarm = true,
    AutoCollectMoney = true,
    ObbyMoneyFarm = false,
    ObbyOptions =
    {
        Easy = false,
        Medium = false,
        Hard = false,
        Extreme = false
    },
    AutoClaimFlags = false,
    AlienFarm = false,
    AlienFarmOptions =
    {
        MarsAliens = false,
        UranusAliens = false,
        NeptuneAliens = false
    }
}
--[Main Source]--
spawn(
    function()
        while getgenv().Config.HiddenGemFarm == true and task.wait() do
            for _, v in pairs(game:GetService("Workspace").HiddenStuff.TitanThing.Gems:GetChildren()) do
                if v.Name == "Gem" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
)
spawn(
    function()
        while getgenv().Config.AutoCollectMoney == true and task.wait(5) do
            print("Collecting Money...")
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.match(v.Name, "Tycoon") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.DropperOne.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.DropperOne.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
                if string.match(v.Name, "MarsColony") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
                if string.match(v.Name, "VenusColony") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
                if string.match(v.Name, "TitanColony") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
                if string.match(v.Name, "JupiterColony") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
                if string.match(v.Name, "NeptuneColony") then
                    if v.OwnerName.Value == game.Players.LocalPlayer.Name then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Conveyer.CashColloector.Collector.TakeMoney, 0)
                    end
                end
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Iss.Collector.CashColloector.Collector.TakeMoney, 1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Iss.Collector.CashColloector.Collector.TakeMoney, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").PlutoCastlte.Collector.CashColloector.Collector.TakeMoney, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").PlutoCastlte.Collector.CashColloector.Collector.TakeMoney, 0)
        end
    end
end)
spawn(function ()
    while getgenv().ObbyMoneyFarm == true and task.wait() do
        while getgenv().ObbyMoneyFarm.Easy == true do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Easy.Finish, 1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Easy.Finish, 0)
        end
        while getgenv().ObbyMoneyFarm.Medium == true do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Medium.Finish, 1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Medium.Finish, 0)
        end
        while getgenv().ObbyMoneyFarm.Hard == true do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Hard.Finish, 1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.Obbies.Hard.Finish, 0)
        end
        while getgenv().ObbyMoneyFarm.Extreme == true do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.JupiterObby.Finish, 1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Center.JupiterObby.Finish, 0)
        end
    end
end)
spawn(function ()
    while getgenv().AutoClaimFlags == true do
        for i,v in pairs(game:GetService("Workspace").Flags:GetChildren()) do
            if v:IsA("Model") then
                for i2,v2 in pairs(v:GetChildren()) do
                    if v2.CapturerV.Value == game.Players.LocalPlayer then
                        return
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2.CapturingBill.CFrame
                    end
                end
            end
        end
    end
end)
spawn(
    function()
        while getgenv().Config.AlienFarm == true do
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "AlienGem" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            while getgenv().Config.AlienFarmOptions.MarsAliens == true and task.wait() do
                for i, v in pairs(game:GetService("Workspace").Planets.Mars:GetChildren()) do
                    if v.Name == "Bot" then
                        v.Bot.RealBot.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
                        mouse1click()
                    end
                end
            end
            while getgenv().Config.AlienFarmOptions.UranusAliens == true and task.wait() do
                for i, v in pairs(game:GetService("Workspace").Planets.Uranus:GetChildren()) do
                    if v.Name == "Bot" then
                        v.Bot.RealBot.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
                        mouse1click()
                    end
                end
            end
            while getgenv().Config.AlienFarmOptions.NeptuneAliens == true and task.wait() do
                for i, v in pairs(game:GetService("Workspace").Planets.Neptune:GetChildren()) do
                    if v.Name == "Bot" then
                        v.Bot.RealBot.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
                        mouse1click()
                    end
                end
            end
        end
    end
)