local FadeDist = 700





wait(3)

path = workspace



local function round(n)

 return math.floor(n + 0.5)

end



Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)







frame = Frame_Speed

tf = 0

allowframeloss = false

tossremainder = false

lastframe = tick()









function Swait(NUMBER)

 if NUMBER == 0 or NUMBER == nil then

  game:GetService("RunService").RenderStepped:wait()

 else

  for i = 1, NUMBER do

   game:GetService("RunService").RenderStepped:wait()

  end

 end

end





local TweenService = game:GetService("TweenService")



----------------------------------------------------------

function SetTween(SPart,CFr,MoveStyle2,outorin2,AnimTime)

local MoveStyle = Enum.EasingStyle[MoveStyle2]

local outorin = Enum.EasingDirection[outorin2]

local tweeningInformation = TweenInfo.new(

 AnimTime, 

 MoveStyle,

 outorin,

 0,

 false,

 0

)

local MoveCF = CFr

local tweenanim = TweenService:Create(SPart,tweeningInformation,MoveCF)

tweenanim:Play()

end

----------------------------------------------------------





print("Your A")

for _,v in pairs(path:GetChildren()) do

if v:FindFirstChild("BagTouchScript") and v:FindFirstChild("Rarity") then

print(v.Name)

local distTag = Instance.new("BillboardGui")

local EC = Instance.new("Frame")

local EC_2 = Instance.new("Frame")

local EC_3 = Instance.new("Frame")

local EB = Instance.new("Frame")

local EB_2 = Instance.new("Frame")

local EB_3 = Instance.new("Frame")

local EC_4 = Instance.new("Frame")

local EC_5 = Instance.new("Frame")

local EC_6 = Instance.new("Frame")

local EB_4 = Instance.new("Frame")

local EB_5 = Instance.new("Frame")

local EB_6 = Instance.new("Frame")

local Inf = Instance.new("TextLabel")

local Type = Instance.new("TextLabel")

local Dis = Instance.new("TextLabel")

local FadeTag = Instance.new("BoolValue")



--Properties:

distTag.Name = "distTag"

distTag.Parent = v.Main

distTag.AlwaysOnTop = true

distTag.MaxDistance = 5000000

distTag.Size = UDim2.new(3, 50, 3, 50)

distTag.SizeOffset = Vector2.new(0, 1)



FadeTag.Parent = distTag

FadeTag.Name = "FadeEnabled"

FadeTag.Value = false



EC.Name = "EC"

EC.Parent = distTag

EC.BackgroundColor3 = v.Main.Color

EC.BackgroundTransparency = 0.75

EC.BorderSizePixel = 0

EC.Position = UDim2.new(0.940239072, 0, 0.674449146, 0)

EC.Size = UDim2.new(0.0597603284, 0, 0.260700434, 0)



EC_2.Name = "EC"

EC_2.Parent = distTag

EC_2.BackgroundColor3 = v.Main.Color

EC_2.BackgroundTransparency = 0.75

EC_2.BorderSizePixel = 0

EC_2.Position = UDim2.new(0, 0, 0.674449146, 0)

EC_2.Size = UDim2.new(0.0574541762, 0, 0.262996107, 0)



EC_3.Name = "EC"

EC_3.Parent = distTag

EC_3.BackgroundColor3 = v.Main.Color

EC_3.BackgroundTransparency = 0.75

EC_3.BorderSizePixel = 0

EC_3.Position = UDim2.new(0, 0, 0.933852136, 0)

EC_3.Size = UDim2.new(0.999999404, 0, 0.0661479309, 0)



EB.Name = "EB"

EB.Parent = distTag

EB.BackgroundColor3 = Color3.new(0, 0, 0)

EB.BackgroundTransparency = 0.75

EB.BorderSizePixel = 0

EB.Position = UDim2.new(0.880477965, 0, 0.674449146, 0)

EB.Size = UDim2.new(0.0597615391, 0, 0.260700434, 0)



EB_2.Name = "EB"

EB_2.Parent = distTag

EB_2.BackgroundColor3 = Color3.new(0, 0, 0)

EB_2.BackgroundTransparency = 0.75

EB_2.BorderSizePixel = 0

EB_2.Position = UDim2.new(0.0574540384, 0, 0.674449146, 0)

EB_2.Size = UDim2.new(0.0720281452, 0, 0.260700434, 0)



EB_3.Name = "EB"

EB_3.Parent = distTag

EB_3.BackgroundColor3 = Color3.new(0, 0, 0)

EB_3.BackgroundTransparency = 0.75

EB_3.BorderSizePixel = 0

EB_3.Position = UDim2.new(0.129482061, 0, 0.870298982, 0)

EB_3.Size = UDim2.new(0.750995338, 0, 0.064850837, 0)



EC_4.Name = "EC"

EC_4.Parent = distTag

EC_4.BackgroundColor3 = v.Main.Color

EC_4.BackgroundTransparency = 0.75

EC_4.BorderSizePixel = 0

EC_4.Position = UDim2.new(0.940239072, 0, 0.0778212622, 0)

EC_4.Size = UDim2.new(0.0597603284, 0, 0.272373527, 0)



EC_5.Name = "EC"

EC_5.Parent = distTag

EC_5.BackgroundColor3 = v.Main.Color

EC_5.BackgroundTransparency = 0.75

EC_5.BorderSizePixel = 0

EC_5.Position = UDim2.new(0, 0, 0.0778212622, 0)

EC_5.Size = UDim2.new(0.0574538782, 0, 0.272373527, 0)



EC_6.Name = "EC"

EC_6.Parent = distTag

EC_6.BackgroundColor3 = v.Main.Color

EC_6.BackgroundTransparency = 0.75

EC_6.BorderSizePixel = 0

EC_6.Position = UDim2.new(0, 0, -2.98420062e-08, 0)

EC_6.Size = UDim2.new(0.999999404, 0, 0.0778213963, 0)



EB_4.Name = "EB"

EB_4.Parent = distTag

EB_4.BackgroundColor3 = Color3.new(0, 0, 0)

EB_4.BackgroundTransparency = 0.75

EB_4.BorderSizePixel = 0

EB_4.Position = UDim2.new(0.880477965, 0, 0.0778212622, 0)

EB_4.Size = UDim2.new(0.0597615391, 0, 0.272373527, 0)



EB_5.Name = "EB"

EB_5.Parent = distTag

EB_5.BackgroundColor3 = Color3.new(0, 0, 0)

EB_5.BackgroundTransparency = 0.75

EB_5.BorderSizePixel = 0

EB_5.Position = UDim2.new(0.0574540384, 0, 0.0778212622, 0)

EB_5.Size = UDim2.new(0.0720281452, 0, 0.272373527, 0)



EB_6.Name = "EB"

EB_6.Parent = distTag

EB_6.BackgroundColor3 = Color3.new(0, 0, 0)

EB_6.BackgroundTransparency = 0.75

EB_6.BorderSizePixel = 0

EB_6.Position = UDim2.new(0.129482061, 0, 0.0778212696, 0)

EB_6.Size = UDim2.new(0.749402046, 0, 0.0907907709, 0)



Inf.Name = "Inf"

Inf.Parent = distTag

Inf.BackgroundColor3 = v.Main.Color

Inf.BackgroundTransparency = 0.75

Inf.BorderSizePixel = 0

Inf.ClipsDescendants = true

Inf.Position = UDim2.new(0.129482061, 0, 0.168612242, 0)

Inf.Size = UDim2.new(0.749402046, 0, 0.181582734, 0)

Inf.Font = Enum.Font.SourceSansBold

Inf.Text = "Bag Type"

Inf.TextColor3 = Color3.new(1, 1, 1)

Inf.TextScaled = true

Inf.TextSize = 18

Inf.TextWrapped = true



Type.Name = "Type"

Type.Parent = distTag

Type.BackgroundColor3 = v.Main.Color

Type.BackgroundTransparency = 0.75

Type.BorderSizePixel = 0

Type.ClipsDescendants = true

Type.Position = UDim2.new(0, 0, 0.350194782, 0)

Type.Size = UDim2.new(1, 0, 0.325551301, 0)

Type.Font = Enum.Font.SourceSansBold

Type.Text = v.Rarity.Value

Type.TextColor3 = Color3.new(1, 1, 1)

Type.TextScaled = true

Type.TextSize = 18



Dis.Name = "Dis"

Dis.Parent = distTag

Dis.BackgroundColor3 = v.Main.Color

Dis.BackgroundTransparency = 0.75

Dis.BorderSizePixel = 0

Dis.ClipsDescendants = true

Dis.Position = UDim2.new(0.129482061, 0, 0.674449146, 0)

Dis.Size = UDim2.new(0.750996053, 0, 0.195849612, 0)

Dis.Font = Enum.Font.SourceSansBold

Dis.Text = "AAAAAAA"--round((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).magnitude).." m"

Dis.TextColor3 = Color3.new(1, 1, 1)

Dis.TextScaled = true

Dis.TextSize = 18

end

end

print("cute boi")



while true do Swait(10)

 

for _,v in pairs(path:GetChildren()) do

 coroutine.resume(coroutine.create(function()

if v:FindFirstChild("BagTouchScript") and v:FindFirstChild("Rarity") then



if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

 --   Swait()



v.Main.distTag.Dis.Text = round((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).magnitude).." m"

local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).magnitude

if dist < FadeDist then

---------------------------------------------------- 

if v.Main.distTag.FadeEnabled.Value == true then

 v.Main.distTag.FadeEnabled.Value = false

for _,v2 in next, v.Main.distTag:GetDescendants() do 

if v2:IsA("Frame") then

 SetTween(v2,{BackgroundTransparency = 0.75},"Quad","InOut",1)

end 

if v2:IsA("TextLabel") then

  SetTween(v2,{BackgroundTransparency = 0.75,TextTransparency = 0},"Quad","InOut",1)

end 

end

end

----------------------------------------------------

else -----------------------------------------------

---------------------------------------------------- 

if v.Main.distTag.FadeEnabled.Value == false then

 v.Main.distTag.FadeEnabled.Value = true

for _,v2 in next, v.Main.distTag:GetDescendants() do 

if v2:IsA("Frame") then

  SetTween(v2,{BackgroundTransparency = 0.95},"Quad","InOut",1)

end 

if v2:IsA("TextLabel") then

 SetTween(v2,{BackgroundTransparency = 0.95,TextTransparency = 0.5},"Quad","InOut",1)

end 

end



end

---------------------------------------------------- 

end





end

end    



end))

end

end