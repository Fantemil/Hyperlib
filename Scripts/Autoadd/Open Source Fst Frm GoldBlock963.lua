local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DevSoGod/MyScript/main/library"))()
local Window = library:CreateWindow("Build A Boat For Treasure || à¹à¸¢à¸µà¹à¸¢à¸¡à¹à¸à¹à¸¥à¸¢")
local Tab = Window:CreateTab("Main")
local Sector = Tab:CreateSector("Section1", "left")
Sector:AddToggle("Gold", false, function(v)
    _G.AutoFarmMoney = v
end)
Sector:AddToggle("GoldBlock (Best)", false, function(v)
    _G.AutoFarmGoldBlock = v
end)



local Root, playerDied
local GMT = getrawmetatable(game)
setreadonly(GMT, false)
local OLD = GMT.__namecall
GMT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "InvokeServer" and self.Name == 'InstaLoadFunction' then
        playerDied = true
    end
    return OLD(self, ...)
end)
local stages = workspace:WaitForChild('BoatStages'):WaitForChild('NormalStages')
repeat task.wait() until not not stages.CaveStage1.DarknessPart.Event == true
local function Swap()
    repeat task.wait() until not not Root == true
    Root.CFrame = CFrame.new(Root.CFrame.X - 10, Root.CFrame.Y, Root.CFrame.Z - 10)
    task.wait(.1)
    Root.CFrame = CFrame.new(Root.CFrame.X + 10, Root.CFrame.Y, Root.CFrame.Z + 10)
end


spawn(function()
    pcall(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmMoney then
                    for x = 1, 10 do
                        repeat task.wait() until (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart') or not _G.AutoFarmMoney
                        Root = game.Players.LocalPlayer.Character.HumanoidRootPart
                        if workspace.Gravity ~= 0 then
                            workspace.Gravity = 0
                        end
                        if _G.AutoFarmMoney then
                            Root.CFrame = stages['CaveStage' .. x].DarknessPart.CFrame
                            stages['CaveStage' .. x].DarknessPart.Event:Fire()
                            repeat Swap() until game.Players.LocalPlayer.OtherData['Stage' .. (x - 1)].Value ~= '' or not _G.AutoFarmMoney
                        end
                    end
                    pcall(function()
                        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 1)
                        task.wait()
                        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 0)
                    end)
                    repeat task.wait() until playerDied == true;playerDied = false or not _G.AutoFarmMoney
                    repeat task.wait() until workspace:FindFirstChild(game.Players.LocalPlayer.Name) and workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('HumanoidRootPart') or not _G.AutoFarmMoney
                    workspace.ClaimRiverResultsGold:FireServer()
                    for x = 1, 10 do
                        repeat task.wait() until game.Players.LocalPlayer.OtherData['Stage' .. (x - 1)].Value == '' or not _G.AutoFarmMoney
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    pcall(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmGoldBlock then
                    for x = 1,1 do
                        repeat task.wait() until (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart') or not _G.AutoFarmGoldBlock
                        Root = game.Players.LocalPlayer.Character.HumanoidRootPart
                        if workspace.Gravity ~= 0 then
                            workspace.Gravity = 0
                        end
                        if _G.AutoFarmGoldBlock then
                            Root.CFrame = stages['CaveStage' .. x].DarknessPart.CFrame
                            stages['CaveStage' .. x].DarknessPart.Event:Fire()
                            repeat Swap() until game.Players.LocalPlayer.OtherData['Stage' .. (x - 1)].Value ~= '' or not _G.AutoFarmGoldBlock
                        end
                    end
                    pcall(function()
                        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 1)
                        task.wait()
                        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 0)
                    end)
                    repeat task.wait() until playerDied == true;playerDied = false or not _G.AutoFarmGoldBlock
                    repeat task.wait() until workspace:FindFirstChild(game.Players.LocalPlayer.Name) and workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('HumanoidRootPart') or not _G.AutoFarmGoldBlock
                    workspace.ClaimRiverResultsGold:FireServer()
                    for x = 1,10 do
                        repeat task.wait() until game.Players.LocalPlayer.OtherData['Stage' .. (x - 1)].Value == '' or not _G.AutoFarmGoldBlock
                    end
                end
            end)
        end
    end)
end)


game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
library:ConfigSystem("BuildABoat"):Load()
while wait(1) do
    pcall(function()
        library:ConfigSystem("BuildABoat"):Save()
    end)
end