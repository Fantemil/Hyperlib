local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Roblox-Scripts/master/MaterialLua"))()
local UI = Material.Load({Title = "Dragon Blox Ultimate | {}#0001", Style = 1, SizeX = 250, SizeY = 250, Theme = "Mocha"})

-- Tabs
local Main = UI.New({Title = "Main"})
-- 
local plr = game.Players.LocalPlayer
local RunService = game:GetService('RunService')
local questRemote = game:GetService("ReplicatedStorage").Package.Events.Qaction 
local punchRemote = game:GetService("ReplicatedStorage").Package.Events.p
local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill
local rebirthRemote = game:GetService("ReplicatedStorage").Package.Events.reb

local Settings = {Tables = {Forms = {'SSJB4','True God of Creation','True God of Destruction','Super Broly','LSSJG','LSSJ4','SSJG4','LSSJ3','SSJ5','Mystic Kaioken','LSSJ Kaioken','SSJ2 Kaioken','SSJR3','SSJB3','God Of Destruction','God Of Creation','Jiren Ultra Instinct', 'Mastered Ultra Instinct','Godly SSJ2', 'Ultra Instinct Omen', 'Evil SSJ','Blue Evolution','Dark Rose','Kefla SSJ2','SSJ Berserker','True Rose', 'SSJB Kaioken','SSJ Rose', 'SSJ Blue','Corrupt SSJ','SSJ Rage','SSJG','SSJ4','Mystic','LSSJ','SSJ3','Spirit SSJ','SSJ2 Majin','SSJ2','SSJ Kaioken','SSJ','FSSJ','Kaioken'}};Variables = {Farm = false}}
setmetatable(Settings, {__index = function() warn('Dumbass') end}) -- literally no use i was just bored

local function returnQuest(boolean)
    local quest = getrenv()._G.x.GetRecommendedQuest(game.Players.LocalPlayer)
    if (boolean) and quest:find('Bills Planet') then 
        return 'SSJG Kakata'
    else 
        return quest 
    end 
end 
local function transform()
    pcall(function()
        for i,v in pairs(Settings.Tables.Forms) do
            if equipRemote:InvokeServer(v) then
                break
            end
        end
        repeat wait()
            if plr.Character.Status.SelectedTransformation.Value ~= plr.Character.Status.Transformation.Value then
                game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
            end
        until game.Players.LocalPlayer.Character.Status.SelectedTransformation.Value == game.Players.LocalPlayer.Character.Status.Transformation.Value
    end)
end

RunService.RenderStepped:Connect(function()
    if Settings.Variables.Farm then 
        plr.Character:WaitForChild('Humanoid'):ChangeState(11)
    end 
end)
local RebirthFarm = Main.Toggle({
    Text = 'Rebirth-Farm',
    Callback = function(bool)
        Settings.Variables.Farm = bool 
        while bool and wait() do 
            if (not plr.PlayerGui.Main.MainFrame.Frames.Quest.Nop.Visible and bool) then
                for i,v in next, workspace.Living:GetChildren() do 
                    if (v.Name == returnQuest(true) or v.Name == game:GetService("ReplicatedStorage").Package.Quests[returnQuest(true)].Objective.Value) and not plr.PlayerGui.Main.MainFrame.Frames.Quest.Nop.Visible and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then 
                        repeat wait()
                            pcall(function() plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2) end)
                            punchRemote:FireServer('Blacknwhite27',1)
                        until not v or not v:FindFirstChild('Humanoid') or not v:FindFirstChild('HumanoidRootPart') or v.Humanoid.Health <= 0 or not Settings.Variables.Farm or plr.PlayerGui:WaitForChild('Main').MainFrame.Frames.Quest.Nop.Visible
                    end 
                end 
            else 
                pcall(function() questRemote:InvokeServer(workspace.Others.NPCs[returnQuest(true)]) end)
            end 
        end 
    end
})

local GodMode = Main.Toggle({
    Text = 'GodMode',
    Callback = function(bool)
        pcall(function()
            if bool then
                plr.Character.Status.Blocking.Parent = nil 
            else
                plr.Character.Humanoid.Health = -math.huge 
            end
        end)
    end 
})
local AutoTransform = Main.Toggle({
    Text = 'Auto-Transform',
    Callback = function(bool)
        pcall(function()
            while bool and wait() do 
                transform()
            end
        end)
    end 
})
local AutoRebirth = Main.Toggle({
    Text = 'Rebirth',
    Callback = function(bool)
        while bool and wait() do 
            rebirthRemote:InvokeServer()
        end 
    end 
})
local AutoCharge = Main.Toggle({
    Text = 'Auto-Charge',
    Callback = function(bool) 
        while bool and wait() do 
            game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer('Blacknwhite27')
        end
    end 
})