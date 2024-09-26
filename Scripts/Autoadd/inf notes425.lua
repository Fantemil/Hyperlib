local text = "infinite notes"
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
