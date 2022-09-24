getgenv().tspyen = true
local funcs = {}
funcs.normalizeblue = function(nnnn)
return "%"..nnnn
end
funcs.normalizemagic = function(magic)
return string.gsub(magic,"[%(+%)+%^+%*+%$+%.+%[+%]+%++%-+%?+%%+]",funcs.normalizeblue)
end
funcs.plrs = game:GetService("Players")
local newf = Instance.new("Folder")
newf.Parent = game:GetService("CoreGui")
newf.Name = "smx"
local function addn(plr)
local nm = plr.Character and plr.Character:GetChildren()
local v = nm and plr.Character:WaitForChild("Head",10)
if v ~= nil then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = newf
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.Adornee = v
BillboardGui.AlwaysOnTop = true
BillboardGui.MaxDistance = 10000
BillboardGui.Size = UDim2.new(4, 0, 1, 0)
BillboardGui.SizeOffset = Vector2.new(0, 4.5)
local con
con = plr.CharacterRemoving:Connect(function()
BillboardGui:Destroy()
con:Disconnect()
end)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "\n"
local tm = ""
if plr.Neutral ~= true then
tm = " ("..plr.Team.Name..")"
TextLabel.TextColor3 = plr.TeamColor.Color
else
tm = " (Neutral)"
TextLabel.TextColor3 = Color3.new(1,1,1)
end
TextLabel.TextSize = 15
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
local p = plr.Backpack and plr.Backpack:GetChildren()
local nu = 1
local hpt = ""
local hm = plr.Character:FindFirstChildOfClass("Humanoid") or plr.Character:WaitForChild("Humanoid",10)
if hm then
hpt = plr.DisplayName..": "..hm.Health.."/"..hm.MaxHealth..tm.."\n"
TextLabel.Text = hpt..TextLabel.Text
hm.HealthChanged:Connect(function()
local ohttp = funcs.normalizemagic(hpt)
hpt = plr.DisplayName..": "..hm.Health.."/"..hm.MaxHealth..tm.."\n"
TextLabel.Text = hpt..string.gsub(TextLabel.Text,ohttp,"")
end)
end
plr:GetPropertyChangedSignal("Team"):Connect(function()
if plr.Neutral ~= true and plr.Team then
tm = " ("..plr.Team.Name..")"
TextLabel.TextColor3 = plr.TeamColor.Color
else
tm = " (Neutral)"
TextLabel.TextColor3 = Color3.new(1,1,1)
end
local ohttp = funcs.normalizemagic(hpt)
hpt = (hm and plr.DisplayName..": "..hm.Health.."/"..hm.MaxHealth..tm.."\n") or plr.DisplayName..tm.."\n"
TextLabel.Text = hpt..string.gsub(TextLabel.Text,ohttp,"")
end)
for m,x in pairs(nm) do
local tn = string.gsub(x.Name,"\n"," ")
if string.find(TextLabel.Text,tn,1,true) then

elseif x ~= nil and x:IsA("Tool") and nu%4 == 0  then
TextLabel.Text = TextLabel.Text.."\n"..tn
nu=1
elseif x ~= nil and x:IsA("Tool") then
TextLabel.Text = TextLabel.Text..tn..","
nu=nu+1
end
end
plr.Character.ChildAdded:Connect(function(n)
local tn = string.gsub(n.Name,"\n"," ")
if string.find(TextLabel.Text,tn,1,true) then

elseif nu%4 == 0 and n:IsA("Tool") then
TextLabel.Text = TextLabel.Text.."\n"..tn.." (EQUIPPED),"
nu=1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
elseif n:IsA("Tool") then
TextLabel.Text = TextLabel.Text..tn.." (EQUIPPED),"
nu=nu+1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
end
end)
plr.Character.ChildRemoved:Connect(function(n)
local tn = funcs.normalizemagic(string.gsub(n.Name,"\n"," "))
if n:IsA("Tool") then
local repl = (string.find(TextLabel.Text,"\n"..tn.." %(EQUIPPED%),") and string.gsub(TextLabel.Text,"\n"..tn.." %(EQUIPPED%),","")) or (string.find(TextLabel.Text,tn.." %(EQUIPPED%),") and string.gsub(TextLabel.Text,tn.." %(EQUIPPED%),","")) or TextLabel.Text
TextLabel.Text = repl
nu=nu-1
BillboardGui.SizeOffset = BillboardGui.SizeOffset-Vector2.new(0,.1)
end
end)
if p then
for m,x in pairs(p) do
local tn = string.gsub(x.Name,"\n"," ")
if string.find(TextLabel.Text,tn,1,true) then

elseif x ~= nil and x:IsA("Tool") and nu%4 == 0 then
TextLabel.Text = TextLabel.Text.."\n"..tn..","
nu = 1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
elseif x ~= nil and x:IsA("Tool") then
TextLabel.Text = TextLabel.Text..tn..","
nu=nu+1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
end
end
plr.Backpack.ChildAdded:Connect(function(n)
local tn = string.gsub(n.Name,"\n"," ")
if string.find(TextLabel.Text,tn,1,true) then

elseif nu%4 == 0 and n:IsA("Tool") then
TextLabel.Text = TextLabel.Text.."\n"..tn..","
nu = 1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
elseif n:IsA("Tool") then
TextLabel.Text = TextLabel.Text..tn..","
nu=nu+1
BillboardGui.SizeOffset = BillboardGui.SizeOffset+Vector2.new(0,.1)
end
end)
plr.Backpack.ChildRemoved:Connect(function(n)
local tn = funcs.normalizemagic(string.gsub(n.Name,"\n"," "))
if n:IsA("Tool") then
local repl = (string.find(TextLabel.Text,"\n"..tn..",") and string.gsub(TextLabel.Text,"\n"..tn..",","")) or (string.find(TextLabel.Text,tn..",") and string.gsub(TextLabel.Text,tn..",","")) or TextLabel.Text
TextLabel.Text = repl
nu=nu-1
BillboardGui.SizeOffset = BillboardGui.SizeOffset-Vector2.new(0,.1)
end
end)
end
end
end

local function plrj(ml)
if getgenv().tspyen then
addn(ml)
ml.CharacterAdded:Connect(function(L)
local hd = L:WaitForChild("Head",200)
if hd then
addn(ml)
end
end)
end
end
for i,plr in pairs(funcs.plrs:GetPlayers()) do
plrj(plr)
end
funcs.plrs.PlayerAdded:Connect(plrj)