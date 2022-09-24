local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "Tab 1",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
OrionLib:MakeNotification({
 Name = "Title!",
 Content = "Notification content... what will it say??",
 Image = "rbxassetid://4483345998",
 Time = 5
})
Tab:AddButton({
 Name = "Button!",
 Callback = function()
        print("button pressed")
   end    
})
Tab:AddToggle({
 Name = "This is a toggle!",
 Default = false,
 Callback = function(Value)
  print(Value)
 end    
})
Tab:AddColorpicker({
 Name = "Colorpicker",
 Default = Color3.fromRGB(255, 0, 0),
 Callback = function(Value)
  print(Value)
 end   
})
Tab:AddSlider({
 Name = "Slider",
 Min = 0,
 Max = 20,
 Default = 5,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "bananas",
 Callback = function(Value)
  print(Value)
 end    
})
Slider:Set(2)
Tab:AddLabel("Label")
CoolLabel:Set("Label New!")
Tab:AddParagraph("Paragraph","Paragraph Content")
CoolParagraph:Set("Paragraph New!")
Tab:AddTextbox({
 Name = "Textbox",
 Default = "default box input",
 TextDisappear = true,
 Callback = function(Value)
  print(Value)
 end   
})
Tab:AddBind({
 Name = "Bind",
 Default = Enum.KeyCode.E,
 Hold = false,
 Callback = function()
  print("press")
 end    
})
Bind:Set(Enum.KeyCode.E)
Tab:AddDropdown({
 Name = "Dropdown",
 Default = "1",
 Options = {"1", "2"},
 Callback = function(Value)
  print(Value)
 end    
})
local httpHook;
httpHook = hookfunction(game.HttpGet, function(self,...)
   local Args = {...}
   if Args[1] and type(Args[1]) == "string" then
       if Args[1]:match("checkPremium.php") then
           return "true"
       end
   end
   return httpHook(self,...)
end)

local OrionLib = loadstring(game:HttpGet(('https://hypernite.xyz/Backup/Orion/source.lua')))() -- Backed up to my host