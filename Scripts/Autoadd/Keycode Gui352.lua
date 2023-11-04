-- Made by Guesttester_1
local CAS = game:GetService("ContextActionService")
local function Action()
	print("Button Clicked")
end
local Button = CAS:BindAction("ButtonTarget", Action, true, Enum.KeyCode.E) -- it's on mobile. Key code is for PC players.
CAS:SetPosition("ButtonTarget", UDim2.new(0,0,0.5,0))  -- Position if u wanna remove it if u want
CAS:SetTitle("ButtonTarget","E") -- Name Button E Its From Enum keycode
CAS:SetImage("ButtonTarget", "IMAGEHERE") -- Image or decal
CAS:GetButton("ButtonTarget").Size = UDim2.new(0.5,0,0.5,0) -- Size if u Wanna remove it if u want