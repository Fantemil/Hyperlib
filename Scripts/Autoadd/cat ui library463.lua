local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreyCaat/GC-Library/main/Lib.txt", true))()
--getting the library


local main = library:CreateMain("Gui Name", "credits")
--"credits" can be left empty, I would recommend using your discord name


local tab = main:CreateTab("Tab Name")
--creating a tab


local label = tab:CreateLabel("Text here")
--creating text


local button = tab:CreateButton("Button Name", function()
--executes this when clicking on the button
print("Button")
end)
--creating a button

local line = tab:CreateLine()
--creating a line

local dropdown = tab:CreateDropdown("Dropdown Name")
--creating a dropdown menu


local dropdownbutton = dropdown:CreateDropdownButton("Button Name", function()
--executes this when clicking on the button
print("Button")
end)
--adding a button to the dropdown menu


local toggle = tab:CreateToggle("Toggle Name", function(state)
--state is either false or true (false = red | true = green)
--executes this when clicking on the toggle
if state then
print("Im enabled")
elseif not state then
print("Im disabled")
end
end)
--creating a toggle


local slider = tab:CreateSlider("Walkspeed", 16, 400, function(arg)
--"Walkspeed".= name of the Slider
--16..........= minvalue
--400.........= maxvalue
--arg.........= current value of the slider
--this will execute everytime arg changes:
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
end)
--creating a slider | Example 1


local slider = tab:CreateSlider("JumpPower", 50, 400, function(arg)
--"JumpPower".= name of the Slider
--50..........= minvalue
--400.........= maxvalue
--arg.........= current value of the slider
--this will execute everytime arg changes:
game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
end)
--creating a slider | Example 2