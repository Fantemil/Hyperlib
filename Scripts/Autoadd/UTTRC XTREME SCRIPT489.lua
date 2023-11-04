







































local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Speed_Finish = Instance.new("TextButton")
local closetab = Instance.new("TextButton")
local hotbar = Instance.new("Frame")
local minitab = Instance.new("TextButton")
local openmenu = Instance.new("TextButton")
local BSpeed_Finish = Instance.new("TextButton")
local CSpeed_Finish = Instance.new("TextButton")
local DSpeed_Finish = Instance.new("TextButton")
local ESpeed_Finish = Instance.new("TextButton")
local FSpeed_Finish = Instance.new("TextButton")
local GSpeed_Finish = Instance.new("TextButton")

gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Name = ("CustomChars")
gui.ResetOnSpawn = false


frame.Parent = gui
frame.Name = ("MainFrame")
frame.Size = UDim2.new(0.4, 0, 0.5, 0)
frame.Active = true
frame.Draggable = true
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Parent = gui
hotbar.Name = ("Hotbar")
hotbar.Size = UDim2.new(0.6, 0, 0.1, 0)
hotbar.Active = true
hotbar.Draggable = false
hotbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hotbar.BackgroundTransparency = 0.1
hotbar.BorderSizePixel = 5
hotbar.BorderColor3 = Color3.fromRGB(85, 255, 0)
hotbar.Position = UDim2.new(0.195, 0, 0.04, 0)
hotbar.Visible = false


title.Parent = gui.MainFrame
title.Name = ("GODOOOD")
title.Size = UDim2.new(0.5, 0, 0.2, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(85, 255, 0)
title.TextScaled = true
title.Text = ("UNDERTALE : THE TIMELINES RANDOMIZED CODES XTREME GUI")
title.Font = ("Arcade")

closetab.Parent = gui.MainFrame
closetab.Name = ("Colose")
closetab.Size = UDim2.new(0.1, 0, 0.05, 0)
closetab.BackgroundTransparency = 0.1
closetab.BorderSizePixel = 3
closetab.BorderColor3 = Color3.fromRGB(85, 255, 0)
closetab.Text = ("X")
closetab.TextColor3 = Color3.fromRGB(85, 255, 0)
closetab.BackgroundColor3 = Color3.fromRGB(0,0,0)
closetab.TextScaled = true
closetab.Position = UDim2.new(0.9, 0, 0, 0)
closetab.Font = ("Arcade")


openmenu.Parent = gui.Hotbar
openmenu.Name = ("OpenDaMain")
openmenu.Size = UDim2.new(0.08, 0, 1, 0)
openmenu.BackgroundTransparency = 0.1
openmenu.BorderSizePixel = 3
openmenu.BorderColor3 = Color3.fromRGB(85, 255, 0)
openmenu.Text = ("Main Menu")
openmenu.TextColor3 = Color3.fromRGB(85, 255, 0)
openmenu.BackgroundColor3 = Color3.fromRGB(0,0,0)
openmenu.TextScaled = true
openmenu.Position = UDim2.new(0, 0, 0, 0)
openmenu.Visible = false
openmenu.Font = ("Arcade")


minitab.Parent = gui.MainFrame
minitab.Name = ("Minimizeizie")
minitab.Size = UDim2.new(0.1, 0, 0.05, 0)
minitab.BackgroundTransparency = 0.1
minitab.BorderSizePixel = 3
minitab.BorderColor3 = Color3.fromRGB(85, 255, 0)
minitab.Text = ("-")
minitab.TextColor3 = Color3.fromRGB(85, 255, 0)
minitab.BackgroundColor3 = Color3.fromRGB(0,0,0)
minitab.TextScaled = true
minitab.Position = UDim2.new(0.79, 0, 0, 0)
minitab.Font = ("Arcade")


Speed_Finish.Parent = gui.MainFrame
Speed_Finish.Name = ("Birdtale fun")
Speed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
Speed_Finish.BackgroundTransparency = 0.1
Speed_Finish.BorderSizePixel = 3
Speed_Finish.BorderColor3 = Color3.fromRGB(85, 255, 0)
Speed_Finish.Text = ("AutoFarm Souls (One Time Use)")
Speed_Finish.TextColor3 = Color3.fromRGB(85, 255, 0)
Speed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
Speed_Finish.TextScaled = true
Speed_Finish.Position = UDim2.new(0, 8, 0.25, 0)
Speed_Finish.Visible = true
Speed_Finish.Font = ("Arcade")

BSpeed_Finish.Parent = gui.MainFrame
BSpeed_Finish.Name = ("THE BUFFEREDAXY")
BSpeed_Finish.Size = UDim2.new(0.25, 0, 0.15, 0)
BSpeed_Finish.BackgroundTransparency = 0.1
BSpeed_Finish.BorderSizePixel = 3
BSpeed_Finish.BorderColor3 = Color3.fromRGB(255, 0, 255)
BSpeed_Finish.Text = ("INF HP")
BSpeed_Finish.TextColor3 = Color3.fromRGB(255, 0, 255)
BSpeed_Finish.BackgroundColor3 = Color3.fromRGB(0,0,0)
BSpeed_Finish.TextScaled = true
BSpeed_Finish.Position = UDim2.new(0, 155, 0.25, 0)
BSpeed_Finish.Visible = true
BSpeed_Finish.Font = ("Arcade")




closetab.MouseButton1Click:Connect(function()
	frame.Visible = false
end)





minitab.MouseButton1Click:Connect(function()
	hotbar.Visible = true
	frame.Visible = false
	openmenu.Visible = true
end)





openmenu.MouseButton1Click:Connect(function()
	frame.Visible = true
	openmenu.Visible = false
end)

Speed_Finish.MouseButton1Click:Connect(function()

 

















game.Workspace.Maps.Lobby.GrindZone.GrindPart.Name = ("a")
game.Workspace.Maps.Lobby.GrindZone.GrindPart.Name = ("b")
game.Workspace.Maps.Lobby.GrindZone.GrindPart.Name = ("c")
game.Workspace.Maps.Lobby.GrindZone.GrindPart.Name = ("d")
while true do
wait(0.01)
game.Workspace.Maps.Lobby.GrindZone.a.Position = game.Players. LocalPlayer. Character. HumanoidRootPart. Position
game.Workspace.Maps.Lobby.GrindZone.b.Position = game.Players. LocalPlayer. Character. HumanoidRootPart. Position
game.Workspace.Maps.Lobby.GrindZone.c.Position = game.Players. LocalPlayer. Character. HumanoidRootPart. Position
game.Workspace.Maps.Lobby.GrindZone.d.Position = game.Players. LocalPlayer. Character. HumanoidRootPart. Position
game.Workspace.Maps.Lobby.HARD["Dust soul"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Workspace.Maps.Lobby.Easy["Dust soul"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Workspace.Maps.Lobby.Normal["Dust soul"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(1,10),0)
end

end)
BSpeed_Finish.MouseButton1Click:Connect(function()

 







game.Workspace.Maps.Lobby.SpawnLocation.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position



end)

















while true do
	if openmenu.Visible == false and frame.Visible == true and hotbar.Visible == true then
		hotbar.Visible = false
		wait(0.01)
	end
	wait(0.01)
end

