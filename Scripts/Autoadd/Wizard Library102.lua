-- Main Library Source

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
-- Window or baseplate Make tab or section

local Window = Library:NewWindow("Window")
 
-- Section - Section Usefull you don't want ok?

local Section = Window:NewSection("SectionName")
 
-- Button Add Scripts in it

Section:CreateButton("ButtonName", function()
print("Clicked")
end)
 
-- TextBox You can make keysystem 

Section:CreateTextbox("TextBox", function(text)
        print(text)
end)
 
-- You Can Make Toggles

Section:CreateToggle("ToggleName", function(value)
print(value)
end)
 
-- DropDown is Same As TextBox But Different

Section:CreateDropdown("DropDown", {"Hello", "World", "Hello World"}, 2, function(text)
print(text)
end)
 
-- Slider You Can Make Speed Silder or jump Slider

Section:CreateSlider("Slider", 0, 100, 15, false, function(value)
print(value)
 end)

-- Picker You Can make esp 

Section:CreateColorPicker("Picker", Color3.new(255, 255, 255), function(value)
print(value)
end)

-- Wizard Ui By BloodBall