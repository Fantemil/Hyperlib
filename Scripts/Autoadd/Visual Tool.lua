_G.boomboxb = game:GetObjects('rbxassetid://ID')[1]
_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
loadstring(_G.boomboxb.Client.Source)() 
loadstring(_G.boomboxb.Server.Source)()