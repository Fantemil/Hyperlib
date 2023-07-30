-- Made by CasualDev#0001
-- NOTE FROM CASUALDEV
-- EXECUTE SCRIPT TWICE SINCE IT HAS TO FIRE GENERATE NUMBER
getgenv().printcode = true
-- this will print the next code into console
getgenv().moneyfarm = true
-- this activates or deactivates the money farm
-- this fixes error bug
getgenv().joindiscord = false
-- joins our discord :) we makes scripts for free so pls join discord.gg/varity

local printwait = "5"
-- put how long u want it to wait for to print the next code
local checkcode = "10"
-- put how long to make it wait to check code
-- these will effect how fast or slow u make money 

game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()

-- fixes bug where no make money
--/ make locals for getting code value
local player = game:GetService("Players").LocalPlayer
local number = player.GeneratedNumber

if joindiscord == true then
    if syn then
        syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "varity"
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
end
end

spawn(function()
    if gencodeonjoin == true then
        game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
        wait(1)
        game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
end
end)

spawn(function()
while printcode == true do
    print("Next code: "..tostring(number.Value))
    wait(printwait)
end
end)

spawn(function()
while moneyfarm == true do
local args = {
    [1] = tostring(number.Value)
}

game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(unpack(args))
wait(checkcode)
end
end)