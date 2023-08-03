local prompt = "high definition picture of a cat pointing a gun at the camera"


local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/someunknowndude/someunknowndude.github.io/main/scripts/CraiyonLib.lua"))()
print("please wait 1-2 minutes")
local imgs = lib:Generate(prompt)
local img1 = imgs[math.random(1,9)]
local gui = Instance.new("ScreenGui",game.CoreGui)
gui.Enabled = true
local f = Instance.new("ImageLabel",gui)
f.Size = UDim2.new(0.25,0,0.25,0)
f.Position = UDim2.new(0.25,0,0.5,0)
f.Image = img1
task.wait(5)
gui:Destroy()
print("done")