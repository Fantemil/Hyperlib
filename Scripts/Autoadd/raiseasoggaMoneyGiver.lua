local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local Window = Library:CreateWindow({
 Title = 'Raise a sogga | Cheerios#0447 (kill me.)',
 Center = true,
 AutoShow = true,
})


local MainTab = Window:AddTab('Raise A Sogga Is Bad.')

BoringBox = MainTab:AddLeftGroupbox('TELLMEWHY')

BoringBox:AddInput('MoneyGib', {
 Numeric = true,
 Finished = true,
 
 Text = 'Money Giver',
 Tooltip = 'Gives money',
 
 Placeholder = 'fuck this game',
})
Options.MoneyGib:OnChanged(function()
 Library:Notify('Rich')
 local args = {
  [1] = -Options.MoneyGib.Value
 }
 
 game:GetService("ReplicatedStorage").Remotes.BuyFood:FireServer(unpack(args))
end)