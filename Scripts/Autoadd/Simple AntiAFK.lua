repeat
    wait()
until game:IsLoaded()
wait()

if getconnections then
    for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "From scriptblox.com",
	Text = "Made by swqely",
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Anti-AFK activated.",
	Text = "No GUI. Enjoy.",
})