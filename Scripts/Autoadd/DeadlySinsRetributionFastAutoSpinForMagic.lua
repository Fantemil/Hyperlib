local Magic = {"Sunshine","Infinity","Babylon",}
local Spinfs = game.Players.LocalPlayer.PlayerGui.MainUI.LocalScript.Magic1Spin

_G.Spins = true

function Spins()

 Spinfs:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Contents.RaceMagic)
 wait(0.5)
end


while _G.Spins do
 Spins()
 for i,v in next, Magic do
   if game.Players.LocalPlayer.Data.Magic1.Value == v then
     _G.Spins = false
     wait()
   end
 end
end