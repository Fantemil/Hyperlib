local text = "infinite notes made by tabz[#[9432"
--[[
   __                __                 
  /  |              /  |                
 _$$ |_     ______  $$ |____   ________ 
/ $$   |   /      \ $$      \ /        |
$$$$$$/    $$$$$$  |$$$$$$$  |$$$$$$$$/ 
  $$ | __  /    $$ |$$ |  $$ |  /  $$/  
  $$ |/  |/$$$$$$$ |$$ |__$$ | /$$$$/__ 
  $$  $$/ $$    $$ |$$    $$/ /$$      |
   $$$$/   $$$$$$$/ $$$$$$$/  $$$$$$$$/ 
                                        
                                        
                                        

Inf Notes Script by tabz#9432 | I GET BANNED ALLOT SO IT MIGHT NOT BE ACCURATE
https://www.roblox.com/games/8425637426/Write-a-Letter
]]--
while wait() do
local args = {
    [1] = text,
    [2] = false
}
wait()
game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote:InvokeServer(unpack(args))
local args = {
    [1] = "Drop"
}
game:GetService("Players").LocalPlayer.Character.Note.ClassEvent:FireServer(unpack(args))
end 