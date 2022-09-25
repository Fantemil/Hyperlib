local lp = game.Players.LocalPlayer
local tool;local handle;local knife;
local animation1 = Instance.new("Animation")
animation1.AnimationId = "rbxassetid://2467567750"
local animation2 = Instance.new("Animation")
animation2.AnimationId = "rbxassetid://1957890538"
local anims = {animation1,animation2}
tool = Instance.new("Tool")
tool.Name = "Fake knife"
tool.Grip = CFrame.new(0, -1.16999984, 0.0699999481, 1, 0, 0, 0, 1, 0, 0, 0, 1)
tool.GripForward = Vector3.new(-0, -0, -1)
tool.GripPos = Vector3.new(0,-1.17,0.0699999)
tool.GripRight = Vector3.new(1,0,0)
tool.GripUp = Vector3.new(0,1,0)
handle = Instance.new("Part")
handle.Size = Vector3.new(0.310638815, 3.42103457, 1.08775854)
handle.Name = "Handle"
handle.Transparency = 1
handle.Parent = tool
tool.Parent = lp.Backpack
knife=lp.Character:WaitForChild("KnifeDisplay")
knife.Massless = true
lp:GetMouse().Button1Down:Connect(function()
if tool and  tool.Parent == lp.Character then
local an = lp.Character.Humanoid:LoadAnimation(anims[math.random(1,2)])
an:Play()
end
end)
local aa = Instance.new("Attachment",handle)
local ba = Instance.new("Attachment",knife)
local hinge = Instance.new("HingeConstraint",knife)
hinge.Attachment0=aa hinge.Attachment1=ba
hinge.LimitsEnabled = true
hinge.LowerAngle = 0
hinge.Restitution = 0
hinge.UpperAngle = 0
for _,v in pairs(lp.Character:WaitForChild("UpperTorso"):GetChildren()) do if v:IsA"Weld" and v.Part1 == knife then v:Destroy() break end end
game:GetService"RunService".Heartbeat:Connect(function()
setsimulationradius(1/0,1/0)
if tool.Parent == lp.Character then
knife.CFrame = handle.CFrame
elseif lp.Character and knife then
knife.CFrame = lp.Character:WaitForChild"UpperTorso".CFrame * CFrame.new(-0.200027466, -0.399999619, 0.5, 3.22982669e-05, -0.707153201, 0.707060337, 1.33886933e-05, 0.707060337, 0.707153141, -1, -1.33812428e-05, 3.22982669e-05)
end
end)