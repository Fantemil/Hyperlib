getgenv().autoTap = true;

local remotePath = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices

spawn(function ()  
    while autoTap == true do
       local args = {[1] = 1}
       remotePath.ClickService.Click:FireServer(unpack(args))
       wait()
    end
end)