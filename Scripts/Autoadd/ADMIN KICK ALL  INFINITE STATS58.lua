local plr = game:getService("Players").LocalPlayer
for _,v in pairs(game:getService("Players"):GetChildren()) do
    if v ~= plr then
local A_1 = "joeisjoeifnotjoe"
local A_2 = v.Name
local Event = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AdminGUI").Credits.Kick.LocalScript.RemoteEvent
Event:FireServer(A_1, A_2)
    end
    wait()
end 