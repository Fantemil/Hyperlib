--If it isnt constantly hopping for you then did you even try putting this in autoexecute?

if not game:IsLoaded() then
game.Loaded:Wait()
end
    
getgenv().chestfarm = true
getgenv().anticheatbypass = true

getgenv().Slot = 1 --Slot you wanna use

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/Pilgrammed_Chest.lua"))()