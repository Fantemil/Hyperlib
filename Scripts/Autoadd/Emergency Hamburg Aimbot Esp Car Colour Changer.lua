local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Aceware - Emergency Hamburg", "Midnight")

--Main
local Aimbot = Window:NewTab("PVP")
local AimbotSection = Aimbot:NewSection("PVP Section")
local Car = Window:NewTab("Car")
local MainSection = Car:NewSection("Mod")


MainSection:NewButton("Fix-Car", "Fixes your car from where you are. No need for ADAC!", function()
game:GetService("ReplicatedStorage"):WaitForChild("events-MkO"):WaitForChild("1c4a2bea-db84-4601-bf7f-c4cc36f8fd90"):FireServer()

end)

MainSection:NewDropdown("Car Colour", "Change your cars colour", {"Black", "Blue", "Green", "Orange", "Purple", "Red", "White", "Yellow"}, function(currentOption)
   local args = {
   [1] = currentOption
}

game:GetService("ReplicatedStorage"):WaitForChild("events-MkO"):WaitForChild("28f15023-ea6e-4399-a206-6b42978e8da4"):FireServer(unpack(args))
end)

AimbotSection:NewButton("Aimbot", "Loads Aimbot GUI", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

AimbotSection:NewButton("ESP", "Loads ESP GUI", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
end)