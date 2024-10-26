-- MAKE SURE YOU INPUT AN IMAGE URL
ImageURL = "insert image URL here"

game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
local Lighting = game.Lighting
local imgbytes = game:HttpGet(ImageURL)
writefile("captureimage", imgbytes)
local imgID = getcustomasset("captureimage")
local part = Instance.new("Part", workspace)
part.Anchored = true
part.CanCollide = false
local sizey = math.tan( math.rad(workspace.CurrentCamera.FieldOfView/2) ) * 2  * 10
local sizex = (workspace.CurrentCamera.ViewportSize.x / workspace.CurrentCamera.ViewportSize.y) * sizey
Lighting.Brightness = 2
Lighting.ClockTime = 14
Lighting.FogEnd = 100000
Lighting.GlobalShadows = false
Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
wait(1)
part.CFrame = workspace.CurrentCamera.CFrame + workspace.CurrentCamera.CFrame.LookVector * 10
part.Size = Vector3.new(sizex, sizey, 2)
local decal = Instance.new("Decal", part)
decal.Face = Enum.NormalId.Back
decal.Texture = imgID