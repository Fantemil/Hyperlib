-- This script will only work on carnivore (meat eater)
-- I will add a plant based eater support (omnivore? maybe)
-- It doesnt contain a kill aura due to the patch

-- new features will be added soon

-- Dont remove Credits or no work >:)
getgenv().Credits = 'ï¼°ï½ï½ï½ï½ï½ï½ï½ï½ï½ï¼ï¼¦ï½ï½ï½ï½ï½ ï¼µï½ï½ï½ï½ï½ï½ï½ï½ ï¼¢ï½ ï¼¢ï½ï½ï½ï½ï½ï½ï½ï½ ï¼ï¼£ï½ï½ï½ï½ï½ï½ï½ï¼ï¼ï¼ï¼ï¼ï¼'

getgenv().AutoEatShit = true
getgenv().AutoSpecialAttack = true

getgenv().Settings = {
AutoEatDistance = 10; -- 10 is default
SprintSpeed = 100; -- change it to you're liking
}

local AutoExecute = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Relkss/Releases/main/Utilities.lua'))();
end

AutoExecute()

game.Players.LocalPlayer.CharacterAdded:Connect(AutoExecute)