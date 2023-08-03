--------------------------------------------------------------------

-- Lib

local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/inceldom/kinx/main/ui'))()

local win = UILib:Window("Hisako PornHub Edition",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

--------------------------------------------------------------------

-- Sections

-- Main

local MainSection = win:Tab("Main")

local client = game.Players.LocalPlayer
local char = client.Character

MainSection:Slider("WalkSpeed",0,1000,16, function(t)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

MainSection:Button("Poof", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13.1070051, 5.03540802, -30.4838753, -0.81643033, -0.321228325, 0.479847789, -1.84239219e-08, 0.830985904, 0.556293488, -0.577443957, 0.454174846, -0.678442061)
	wait(2)	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.1334925, 13.8650913, 26.4850826, -0.410385668, -0.412152827, 0.813457847, 6.67055522e-09, 0.892035365, 0.45196557, -0.911912084, 0.185480192, -0.366078526)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.2894745, 9.65994453, 147.087463, -0.941052675, -0.146768644, 0.304760218, 2.93735543e-08, 0.900964379, 0.433893055, -0.338259995, 0.408316225, -0.847854972)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(96.3995361, -4.41435337, 148.541733, -0.97346288, 0.108878642, -0.201284498, 7.94346455e-09, 0.879567206, 0.475774705, 0.228844941, 0.463149011, -0.856226027)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(195.020676, 23.7458611, 148.672516, -0.964883745, 0.10271927, -0.241760388, 1.54269575e-08, 0.920370519, 0.391047418, 0.262677222, 0.377315313, -0.888050556)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.551102, 93.5674286, 145.500381, 0.659078002, 0.552483916, -0.510272145, 3.02446921e-08, 0.678486109, 0.73461324, 0.752074599, -0.484167457, 0.447175264)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(217.635605, 143.63382, 150.847122, -0.91161412, -0.175854966, 0.371530265, -2.26187491e-09, 0.903863013, 0.427821934, -0.411047101, 0.390008509, -0.823974311)	
	wait(2)	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(342.226776, 144.841873, 150.764297, -0.935263634, 0.151428372, -0.319923967, -1.36949465e-08, 0.903863013, 0.427822024, 0.353951842, 0.400126398, -0.845350206)	
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(377.58844, 147.035065, 151.59314, -0.555869102, 0.476254702, -0.68131566, -4.79492002e-08, 0.819608271, 0.572924316, 0.83126986, 0.318470955, -0.455594867)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(398.108948, 165.652802, 152.263794, -0.526524603, 0.384233534, -0.758377492, 1.10485141e-08, 0.892041028, 0.451954424, 0.850159883, 0.237965122, -0.469681561)
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(364.072296, 14.1423178, -179.368484, 0.999522984, 0.0213792063, -0.0222869441, -1.19747083e-08, 0.721650541, 0.692257524, 0.0308833029, -0.691927314, 0.721306324)	
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(361.712219, 11.4866972, -307.321259, 0.994093895, -0.0811905339, 0.0720099434, 6.96657976e-09, 0.663542867, 0.748138249, -0.108523436, -0.743719637, 0.659623921)	
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(347.336853, 59.6712227, -434.975861, 0.510989606, 0.330813766, -0.793380022, -1.89957632e-08, 0.922978282, 0.384852022, 0.859586895, -0.196655363, 0.471632302)	
	wait(2)		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(343.534515, 127.280289, -515.095276, 0.994015515, 0.0558037646, -0.0939097703, -1.41091059e-08, 0.859674573, 0.510842085, 0.109238751, -0.507784963, 0.854529858)
	
end)

MainSection:Button("Poof 2", function()

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(343.534515, 127.280289, -515.095276, 0.994015515, 0.0558037646, -0.0939097703, -1.41091059e-08, 0.859674573, 0.510842085, 0.109238751, -0.507784963, 0.854529858)
	
end)

---------------------------------------------------------------------------------------------------

-- Other Func
-- Add UI
local Settings = win:Tab("Settings")


Settings:Label("UI Toggle Key:  Right-Ctrl")

Settings:Button("Copy Discord Invite", function()
    setclipboard("https://discord.gg/https://discord.com/invite/MKR4yPquys")
    UILib:Notification("Notification", "Copied!", "Okay")
end)