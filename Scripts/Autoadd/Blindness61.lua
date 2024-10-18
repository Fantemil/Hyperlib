local blur = Instance.new("BlurEffect")
blur.Parent = game:GetService("Lighting")
blur.Size = 50

local camera = workspace.CurrentCamera
camera.FieldOfView = 50

local player = game.Players.LocalPlayer
player.CameraMaxZoomDistance = 0
player.CameraMinZoomDistance = 0