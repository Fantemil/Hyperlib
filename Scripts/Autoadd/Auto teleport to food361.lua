--[[
Join this guy discord https://discord.com/invite/eZyhYsed66
]]
if game.PlaceId == 12166287786 then
local collectDebris = workspace:FindFirstChild("CollectDebris")[1]

game.StarterGui:SetCore("SendNotification", {
    Title = "Thank You!";
    Text = "Thank you for using my script. Giving a like can make me good!";
    Duration = 5;
})

if collectDebris then
    while true do  
        for i = 1, 7000 do
            local part = collectDebris:FindFirstChild(tostring(i))
            if part and part:IsA("BasePart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
                wait(0.5)  -- change this on how fast you want it to be
            end
        end
        wait(0.5)  -- change it here too
    end
end
end