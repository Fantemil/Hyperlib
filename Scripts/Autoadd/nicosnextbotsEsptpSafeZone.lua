local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Nicos sexbots")

local b = w:CreateFolder("Main functions")

local c = w:CreateFolder("Misc")

b:Button("Monster Esp",function()
   esp()
end)

b:Button("Safe Zone #1",function()
   teleport1()
end)

b:Button("Safe Zone #2",function()
   teleport2()
end)

c:Button("is made by",function()
   print("is made by")
end)

c:Button("FireIsTheBest",function()
   print("FireIsTheBest - V3rm")
end)

c:Button("Discord in devcon",function()
   print("DawgZalensky#7579")
end)


c:DestroyGui()


function esp()
  while task.wait(15) do
     for __,v in pairs(game:GetService("Workspace").bots:GetDescendants()) do
      if v:IsA("Model") then
        local a = Instance.new("BillboardGui",v)
        a.Name = "Sex"
        a.Size = UDim2.new(7,0,7,0)
        a.AlwaysOnTop = true
        a.MaxDistance = 250
        local b = Instance.new("Frame",a)
        b.Size = UDim2.new(1,0, 1,0)
        b.BackgroundTransparency = 0.80
        b.BorderSizePixel = 0
        b.BackgroundColor3 = Color3.new(0, 0, 0)
        local c = Instance.new('TextLabel',b)
        c.Size = UDim2.new(2,0,2,0)
        c.BorderSizePixel = 0
        c.TextSize = 15
        c.Text = v.Name
        c.BackgroundTransparency = 1
      end
     end
  end
end


function teleport1()
  local daddy = game.Players.LocalPlayer.Character.HumanoidRootPart
  local griddy = CFrame.new(Vector3.new(-70, 35, 362))
  daddy.CFrame = griddy
end

function teleport2()
  local minions = game.Players.LocalPlayer.Character.HumanoidRootPart
  local riseofgru = CFrame.new(Vector3.new(-96, 19, -18))
  minions.CFrame = riseofgru
end