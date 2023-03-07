-- Variables

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char.Humanoid

-- Rest

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()

local Window = Library:CreateWindow({
    Title = 'Balls Script | Guess The Build!',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
}

local Main = Tabs.Main:AddLeftGroupbox('Main')

Main:AddToggle('AutoGuess', {
    Text = 'Auto Guess',
    Default = false,
    Tooltip = 'Automatically Guesses the correct answer',
})

Toggles.AutoGuess:OnChanged(function()
    if game:GetService("ReplicatedStorage").Data.InSession.Value and Toggles.AutoGuess.Value and plr.GuessValue.Value == "false" then
        game:GetService("ReplicatedStorage").Remotes.ChatRemote:FireServer(game:GetService("ReplicatedStorage").Data.Word.Value)
    end
end)

game:GetService("ReplicatedStorage").Data.InSession.Changed:Connect(function()
    if game:GetService("ReplicatedStorage").Data.InSession.Value and Toggles.AutoGuess.Value then
        game:GetService("ReplicatedStorage").Remotes.ChatRemote:FireServer(game:GetService("ReplicatedStorage").Data.Word.Value)
    end
end)

Main:AddButton('Show Answer', function()
    require(game:GetService("ReplicatedStorage").Modules.Notification):title("word is "..game:GetService("ReplicatedStorage").Data.Word.Value.."!", Color3.new(255,255,255))
end)

local Misc = Tabs.Main:AddRightGroupbox('Misc.')

Misc:AddButton('Redeem All Codes', function()
    for _, v in pairs(plr.Data1:GetChildren()) do
        if v:IsA("BoolValue") and not v.Value then
            game:GetService("ReplicatedStorage").RedeemCode:InvokeServer(v.Name)
        end
    end
end)

Misc:AddButton('Unload UI', function()
    Library:Unload()
end)