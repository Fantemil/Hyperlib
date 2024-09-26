-- Makes the lib working
_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"

--loadstring
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/HawkHUB/main/LibSources/HawkLib.lua", true))()

--------------------------------------------------------------------------

--Creating Window
local Window = Hawk:Window({
	ScriptName = "Hawk HUB",
	DestroyIfExists = true, --if false, gui wont disappear
	Theme = "Dark" --Themes: Pink, White, Dark
})

--Creating Close Button
Window:Close({
	visibility = true, --if false, close button will disappear
	Callback = function()
		Window:Destroy() --Destroying Gui Function
	end,
})

--Creating Minimize Button
Window:Minimize({
	visibility = true, --if false, close button will disappear
	OpenButton = true, -- Visible = false etc, open button.
	Callback = function()
	end,
})

--Creating Tab
local tab1 = Window:Tab("Tab")
-- Window:Tab("Tab","Tab Title")

------------------------------------------------------

--Creating Section (lib elemens can be used without any section)
--Its only a Title, not a really section
local newsec = tab1:Section("Section")

newsec:UpdateSection("New Section Text") --Updates Section Name

------------------------------------------------------

--Creating Label
local label = newsec:Label("New Label","Example Description")
--newsec:Label("New Label")

label:UpdateLabel("Label","Spyro on top")
--label:UpdateLabel("New Label","Ezz")
--label:UpdateLabel("New Label")

------------------------------------------------------

--Creating Button
local button = newsec:Button("New Button","Example Description",function()
	print("Button")
end)
--newsec:Button("New Button",function() end)

button:UpdateButton("Button","Suri bum bum",function()
	print("OUTPUT CHANGED")
end)

--[[
button:UpdateButton("Button","Suri bum bum") -- Output "Button"
button:UpdateButton("Button") -- Output "Button"
]]

------------------------------------------------------

--Creating Paragraph
newsec:Paragraph("Paragraph Title",{"Hawk HUB on top","This is a text","Hello again","Mechanism"})

------------------------------------------------------

--Creating Slider
local slider = newsec:Slider("Slider Title",16,100,function(value)
	print(value)
end)

--Get Value
print(slider:GetValue())

--Set Value
slider:SetValue(100)

------------------------------------------------------

--Creating Line
newsec:Line()

------------------------------------------------------

--Creating Color Picker
newsec:ColorPicker("Color Picker Title",Color3.fromRGB(39, 39, 39),function(xd)
	print(xd)
end)

------------------------------------------------------

--Creating KeyBind
newsec:KeyBind("Example Key Bind","Q",function()
	Hawk:ToggleUI() --Toggle UI
end)

------------------------------------------------------

--Creating Toggle
newsec:Toggle("Example Toggle",false,function(value)
	if value == true then
		print("Activated!")
	elseif value == false then
		print("Disabled!")
	end
end)

------------------------------------------------------

--Creating Toggle
newsec:TextBox("Example TextBox","write here",function(value)
	print(value)
end)

------------------------------------------------------

local newlist = {"Spyro","Bruh Moment","Ismet Chan v31"}

--Creating Dropdown
local dropdown = newsec:Dropdown("Example Dropdown",{"Hanki"},function(xd)
	if xd == "Hanki" then
		print("helo")
	end
end)

dropdown:Clear() --Clears the dropdown

dropdown:Add("Alex",function() --Adds an item
	print("falpearx was here")
end)

dropdown:Remove("Alex") --Removes an item

dropdown:Refresh(newlist, false) 
--[[
Clears the dropdown and refreshes

if true, dropdown will automatically opened
]]

------------------------------------------------------

--Creating Image

newsec:Image("Spyro","Hawk",{
	Name = "Spyro", -- "Name of the file and the Title"
	FileName = "Spyro.webm",
	CheckFile = false,
	ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/SpyroSmirk.webm", --webm links or rbxassetid ids only
	ImageColor = Color3.fromRGB(255, 255, 255), --Image Color
	Stroke = Color3.fromRGB(255, 255, 255), --Stroke Color
	Volume = 1, --Volume if you set a video
	Description = {"A Cool Dragon","Part of skylanders"} --Description
})



------------------------------------------------




------------------------------------------------



--Creating Notifications
local Notifications = Hawk:AddNotifications()

-----------------------------------------

--Creating Responsible Notifications
Notifications:Notification("Example","This is a notification","Done",1)
wait()
Notifications:Notification("Example","This is a notification","Warn",1)
wait()
Notifications:Notification("Example","This is a notification","Error",1)
wait()
Notifications:Notification("Example","This is a notification","Notify",1)

-----------------------------------------
--Creating Notifications with Buttons
Notifications:Notify("Example","This is a notification","Error",function()
end)
Notifications:Notify("Example","This is a notification","Notify",function()
end)

wait(7)
Notifications:Notification("Example","This is a notification","Notify",7)
Notifications:Notify("Example","This is a notification","Notify",function()
end)