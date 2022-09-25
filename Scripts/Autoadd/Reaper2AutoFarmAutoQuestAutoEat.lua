--[[
********************* IMPORTANT *****************************
Created By: Sensei Joshy#1060
Our Website: https://senseijoshy.com/
Our Business Email: info@senseijoshy.com
Our Discord: https://senseijoshy.com/discord
************************************************************
]]--

--Discord Joiner With Semd Notification

game.StarterGui:SetCore("SendNotification", {
    Title = "Please Read!!"; 
    Text = "Script Has Been Changed Join The Discord.gg/xgRwzdtnXC. For Updates";
    Duration = 20; 
})

if syn then
syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "xgRwzdtnXC"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
else 
    setclipboard("https://discord.gg/xgRwzdtnXC")
    game.StarterGui:SetCore("SendNotification", {
    Title = "Please Read!!"; 
    Text = "Discord Link Copied";
    Duration = 35; 
})

end