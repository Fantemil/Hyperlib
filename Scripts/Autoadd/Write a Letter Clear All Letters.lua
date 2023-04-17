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
                                        
                                        
                                        

Clear everyone's Notes Script by tabz#9432 | I GET BANNED ALLOT SO IT MIGHT NOT BE ACCURATE
https://www.roblox.com/games/6423728755/new-physics-engine
]]--
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67, 4, 95)
wait()
local args = {
    [1] = workspace.BulletinBoards.Notes.Note
}
wait()
game:GetService("ReplicatedStorage").COM.Game.RequestPinPickUp:InvokeServer(unpack(args))
local args = {
    [1] = "Drop"
}
game:GetService("Players").LocalPlayer.Character.Note.ClassEvent:FireServer(unpack(args))
end 