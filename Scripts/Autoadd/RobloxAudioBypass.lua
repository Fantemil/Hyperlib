game.ReplicatedStorage.Authentication:FireServer()
game.Players.LocalPlayer.PlayerGui.Authentication:Destroy()
if syn then
   local rem = game:GetService("ReplicatedStorage"):WaitForChild("Sound")
rem.OnClientEvent:Connect(function(fn,url,pn,vm)
writefile(fn..".mp3", game:HttpGet(url))
local b = Instance.new("Sound")
b.Parent = pn
b.SoundId = getsynasset(fn..".mp3")
b.Volume = vm
b:Play()
end)
else
       local rem = game:GetService("ReplicatedStorage"):WaitForChild("Sound")
rem.OnClientEvent:Connect(function(fn,url,pn,vm)
writefile(fn..".mp3", game:HttpGet(url))
local b = Instance.new("Sound")
b.Parent = pn
b.SoundId = getcustomasset(fn..".mp3")
b.Volume = vm
b:Play()
end)
end