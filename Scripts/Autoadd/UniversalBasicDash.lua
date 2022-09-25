if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/exceptional0/scr/main/funcs.lua"))()
end


local dashkeybinds={
["default"]=Enum.KeyCode.Q,
[10243982775]=Enum.KeyCode.F,
[5939428933]=Enum.KeyCode.R
}
dashkeybinds=dashkeybinds[game.PlaceId] or dashkeybinds.default
funcs.uip.InputBegan:Connect(function(input,gameprocessed)
if not gameprocessed and input.KeyCode == dashkeybinds then
local hrp=getchar():WaitForChild("HumanoidRootPart",10)
local sd=hrp and hrp:FindFirstChild("nms")
if sd then sd:Destroy() return end
if not hrp then return end
local slide = Instance.new("BodyVelocity")
slide.Name="nms"
slide.MaxForce = Vector3.new(1,0,1) * 30000
slide.Velocity = hrp.CFrame.lookVector * 100
slide.Parent = hrp

for count = 1, 8 do
if slide then
task.wait(0.1)
slide.Velocity*= 0.7
else
return
end
end
slide:Destroy()
end
end)