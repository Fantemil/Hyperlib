-- Gui to Lua
-- for notepad++ search indexing: tyrone.lua
local l = {game:GetService("Workspace").Axe.ClickDetector,game:GetService("Workspace").table2.Collar.collar.ClickDetector}
for i,v in pairs(workspace:GetDescendants()) do
if v.Parent:IsA("Tool") and v:IsA("ClickDetector") then table.insert(l,v) end end
local main = Instance.new("ScreenGui")
local _txtbox = Instance.new("TextBox")
local cmdframe = Instance.new("ScrollingFrame")
local txt = Instance.new("TextLabel")
local _close = Instance.new("TextButton")
local runservice = game:GetService("RunService")
local rustepped = runservice.Stepped
local ruhb = runservice.Heartbeat
local playerservice = game:GetService("Players")
local lp = playerservice.LocalPlayer
local ligma = game:GetService("Lighting")
local is,uc = game:GetService("ReplicatedStorage").IsHog,game:GetService("ReplicatedStorage").UnCuffed
local dv = true
local removeblindfold = true
local deb = game:GetService("Debris")
local con,con1,cont = nil,nil,false
local con2,con3,con4,cont2 = nil,nil,nil,false
--local vvv,vvvv = "Grab","Drop"
--local vvvvvv = game:GetService("ReplicatedStorage").Grab
--local fuck = game:GetService("ReplicatedStorage").Tase
--local hastbc,cbtT = false,false
local tr = game:GetService("ReplicatedStorage").Trail
--disable if you like the blindfold hat, you'll still see normally either way
main.Name = "main"
main.Parent = game:GetService("CoreGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_txtbox.Name = "_txtbox"
_txtbox.Parent = main
_txtbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_txtbox.BackgroundTransparency = 0.350
_txtbox.Draggable = true
_txtbox.Position = UDim2.new(0.61360544, 0, 0.0637362674, 0)
_txtbox.Size = UDim2.new(0.136734694, 0, 0.0802197829, 0)
_txtbox.Font = Enum.Font.SourceSans
_txtbox.PlaceholderText = "cmds r sus"
_txtbox.Text = ""
_txtbox.TextColor3 = Color3.fromRGB(255, 255, 255)
_txtbox.TextScaled = true
_txtbox.TextSize = 14.000
_txtbox.TextWrapped = true

cmdframe.Name = "cmdframe"
cmdframe.Active = false
cmdframe.Parent = main
cmdframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cmdframe.Position = UDim2.new(0.376870751, 0, 0.309890121, 0)
cmdframe.Size = UDim2.new(0.245578229, 0, 0.376923114, 0)
cmdframe.Visible = false
cmdframe.CanvasSize = UDim2.new(0, 0, 0.829999971, 0)

txt.Name = "txt"
txt.Parent = cmdframe
txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
txt.BackgroundTransparency = 1.000
txt.Position = UDim2.new(0, 0, -0.000313895056, 0)
txt.Size = UDim2.new(0.963989615, 0, 1.00031388, 0)
txt.Font = Enum.Font.SourceSans
txt.Text = [[ [toggle] = use this command to enable/disable
commands:
choosinggui
-remove team choosing gui when joining game so you can be choosing team
trail
-makes things untransparent or something
very good
weapons / wps
-get all known weapons
axe
-obv
cmds
sp
-sets normal speed and jump power
-[toggle]
rj
bpe
-[toggle]
-loops enable backpack
rp / rs
arp (auto, [toggle])
-remove cuffs,rope,bag,blindfold,reset animation
-may unragdoll you (should do it as of the latest update)
-cuff/rope removal is sometimes visual only (still cant open doors, slow)
-infinite yield > re to fix
prisoner
guard
fugitive

cms
-combat shenanigans
q to tp behind someone
c to heal yourself (holding not needed :OOOO, some cooldown)
x+q tp back
x+' cms killswitch/remove keybinds
awps
-auto grab and sort
]]
txt.TextColor3 = Color3.fromRGB(255, 255, 255)
txt.TextSize = 14.000
txt.TextXAlignment = Enum.TextXAlignment.Left
txt.TextYAlignment = Enum.TextYAlignment.Top

_close.Name = "_close"
_close.Parent = main
_close.Active = false
_close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_close.Position = UDim2.new(0.376870751, 0, 0.686813176, 0)
_close.Size = UDim2.new(0.245578229, 0, 0.0582417585, 0)
_close.Visible = false
_close.Font = Enum.Font.SourceSans
_close.Text = "close"
_close.TextColor3 = Color3.fromRGB(255, 255, 255)
_close.TextSize = 14.000
local bpt = false
-- Scripts:
local function cmd(x)
x = x:lower()
if string.sub(x,1,11) == "choosinggui" then
local vsb = lp.PlayerGui.Menu:FindFirstChild("TeamMenu")
if not vsb then return end
vsb.Visible = not vsb.Visible
elseif string.sub(x,1,7) == "weapons" or string.sub(x,1,3) == "wps" then
for i,v in pairs(l) do
fireclickdetector(v)
end
elseif x == "iy" then
coroutine.wrap(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)()
elseif x == "bpe" then
bpt = not bpt
coroutine.wrap(function() local sg = game:GetService("StarterGui") while task.wait(0.25) and bpt == true do sg:SetCoreGuiEnabled("Backpack", true) end end)()
elseif x == "axe" then
fireclickdetector(l[1])
elseif x == "trail" then
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("BasePart") then
tr:FireServer(v,true)
end
end
elseif x == "prisoner" or x == "pr" then
lp.PlayerGui.TeamChangePrisoner.Frame.Visible = true
elseif x == "guard" or x == "gd" then
lp.PlayerGui.TeamChangePolice.Frame.Visible = true
elseif x == "fugitive" then
lp.PlayerGui.TeamChangeFugitive.Frame.Visible = true
elseif x == "arp" then
local tbm = {"ropepart","cuff"}
cont = not cont
local function cn()
local ch = lp.Character
if not ch then return end
con = ch.DescendantAdded:Connect(function(m)
if table.find(tbm,m.Name:lower()) and cont == true or m.Name:lower() == "bag" and not m:IsA("Tool") and not m:FindFirstAncestorOfClass("Tool") and cont == true then
task.wait(0.5)
task.defer(cmd,"rp")
elseif cont == false then
pcall(function()
con:Disconnect()
con1:Disconnect()
con = nil
con1 = nil
end)
end
end)
end
cn()
con1 = lp.CharacterAdded:Connect(cn)
elseif x == "awps" then
coroutine.wrap(function()
local l = {}
l["axe"] = game:GetService("Workspace").Axe.ClickDetector l["collar"] = game:GetService("Workspace").table2.Collar.collar.ClickDetector
for i,v in pairs(workspace:GetDescendants()) do
if v.Parent:IsA("Tool") and v:IsA("ClickDetector") then l[v.Parent.Name:lower()] = v end end
local pos = {"axe","collar","hamburger","keycard","handcuffs (fugitive)","handsaw","pliers","rope","bag"}
local maxval = table.getn(pos)
local deb,impdel = game:GetService("Debris"),game:GetService("ReplicatedStorage").ImportDelete
sg = game:GetService("StarterGui")
local function sng(x)
local bp,hum = lp:WaitForChild("Backpack",400),x:WaitForChild("Humanoid",420)
local gp = {"prisoner","guard"}
if not bp then return end
coroutine.wrap(function()
task.wait(0.4)
if table.find(gp,lp.Team.Name:lower()) then
if x:FindFirstChild("Shirt") then
impdel:FireServer("Shirt","Delete")
end
if x:FindFirstChild("Pants") then
impdel:FireServer("Pants","Delete")
end
end
end)()
local temp = Instance.new("Folder",game:GetService("ReplicatedStorage"))
for i,v in pairs(bp:GetChildren()) do
v.Parent = temp
end
local hda,db = false,true
local notb = {'handcuffs (fugitive)','keycard'}
for i,v in ipairs(pos) do
fireclickdetector(l[v])
if lp.Team.Name == "Guard" and not table.find(notb,v) then
bp.ChildAdded:Wait()
task.wait()
end
if v == "axe" and hda == false and db == true then
hda = true
local ax = bp:WaitForChild("Axe",420)
if not ax then return end
task.wait()
ax.Parent = x
if not x:FindFirstChild("Fist") and lp.Team.Name ~= "Choosing" then local fist = bp:WaitForChild("Fist",0.6) if fist ~= nil then fist.Parent = temp end end
fireclickdetector(l[v])
bp.ChildAdded:Wait()
ax.Parent = bp
elseif v == "handcuffs (fugitive)" and temp:FindFirstChild("Handcuffs") then
temp.Handcuffs.Parent = bp
elseif v == "keycard" and temp:FindFirstChild("KeyCard") then
temp.KeyCard.Parent = bp
end
end
task.wait(0.44)
for i,v in pairs(l) do
fireclickdetector(v)
end
for i,v in pairs(temp:GetChildren()) do
v.Parent = bp
end
deb:AddItem(temp,0)
sg:SetCore("SendNotification", {
Title = "sort";
Text = "grabbed and sorted"; -- bottom text uwu
Icon = "rbxassetid://4851371272";
Duration = 5;
})
end
local ch = lp.Character
if ch then
sng(ch)
end
lp.CharacterAdded:Connect(sng)
end)()
elseif string.sub(x,1,2) == "rp" or string.sub(x,1,2) == "rs" then
for i = 1,2 do
local ch = lp.Character
if not ch then return end
pcall(function()
for i = 1,2 do
if ch:FindFirstChild("Humanoid") and ch:FindFirstChild("RagDoll") and ch.RagDoll.Value == true then
game:GetService("ReplicatedStorage").RagdollHandlerEvent:FireServer(ch,ch.Humanoid,"Unragdoll")
end
is:FireServer(ch,"UnHog")
firesignal(lp.PlayerGui.Avatar.Undo.MouseButton1Click)
task.defer(function()
task.wait(0.55)
uc:FireServer(ch)
end)
end
end)
local hd,la,ra = ch:FindFirstChild("Head"),ch:FindFirstChild("Left Arm"),ch:FindFirstChild("Right Arm")
if not hd then return end
if la ~= nil then
for i,v in pairs(la:GetChildren()) do if v.Name:lower() == "cuff" then v:Destroy() end end
end
if ra ~= nil then
for i,v in pairs(ra:GetChildren()) do if v.Name:lower() == "cuff" then v:Destroy() end end
end
for i,v in pairs(ch:GetChildren()) do if v.Name:lower() == "ropepart" or v.Name:lower() == "blindfold" and removeblindfold then v:Destroy() end end
for i,v in pairs(hd:GetChildren()) do if v.Name:lower() == "bag" then v:Destroy() end end
if ligma:FindFirstChildOfClass("ColorCorrectionEffect") then ligma:FindFirstChildOfClass("ColorCorrectionEffect").Enabled = false end
if ligma:FindFirstChildOfClass("BlurEffect") then ligma:FindFirstChildOfClass("BlurEffect").Enabled = false end
local hm = ch:FindFirstChildOfClass("Humanoid")
if hm == nil then return end
if ch:FindFirstChild("Animate") then ch.Animate.Disabled = true for i,v in ipairs(hm:GetPlayingAnimationTracks()) do v:Stop() end ch.Animate.Disabled = false end
hm.WalkSpeed = 16
hm.JumpPower = 50
hm.AutoRotate = true
task.wait(0.3)
end
elseif x == "cms" then
coroutine.wrap(function()
local mym = lp:GetMouse()
local uip = game:GetService("UserInputService")
local con,con2,lp = nil,nil,nil
local hev,cd,rem = game:GetService("ReplicatedStorage").EatingEvent,game:GetService("Workspace").Hamburger.ClickDetector,game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
getgenv().tlkshenanigans = {}
getgenv().tlkshenanigans.distaway = 3.7
con = uip.InputBegan:Connect(function(inpuut,proc)
if inpuut.UserInputType == Enum.UserInputType.Keyboard and not proc then
if inpuut.KeyCode == Enum.KeyCode.Q then
local hrp = (lp.Character or lp.CharacterAdded:Wait()) and lp.Character:FindFirstChild("HumanoidRootPart")
if hrp == nil then return end
if uip:IsKeyDown(Enum.KeyCode.X) then hrp.CFrame = lp end
lp = hrp.CFrame
local nt = mym.Target:FindFirstAncestorOfClass("Model")
nt = nt and nt:FindFirstChild("HumanoidRootPart")
if nt then hrp.CFrame = nt.CFrame*CFrame.new(0,0,tlkshenanigans.distaway) end
elseif inpuut.KeyCode == Enum.KeyCode.C then
fireclickdetector(game:GetService("Workspace").Hamburger.ClickDetector)
local ch = lp.Character or lp.CharacterAdded:Wait()
local hb = lp.Backpack:WaitForChild("Hamburger",50)
if not hb then return end
hev:FireServer(ch,hb,"Heal")
elseif inpuut.KeyCode == Enum.KeyCode.Quote and uip:IsKeyDown(Enum.KeyCode.X) then
con:Disconnect() con,uip,mym,hev,cd,rem = nil,nil,nil,nil,nil,nil getgenv().tlkshenanigans = nil
print("disconnected")
end
end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "SHENANIGANS";
Text = "loaded shenanigans"; -- bottom text uwu
Icon = "rbxassetid://6678521436";
Duration = 5;
})
end)()
elseif x == "sp" then
--stolen from infinite yield
cont2 = not cont2
local mychar = lp.Character or lp.CharacterAdded:Wait()
local hum = mychar:WaitForChild("Humanoid",500)
if not hum or cont2 == false then if con2 ~= nil then con2:Disconnect() end if con3 ~= nil then con3:Disconnect() end if con4 ~= nil then con4:Disconnect() end return end
local function wpc()
if hum and cont2 == true then
hum.WalkSpeed = 26
hum.JumpPower = 50
end
end
wpc()
con2 = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(wpc)
con3 = hum:GetPropertyChangedSignal("JumpPower"):Connect(wpc)
con4 = lp.CharacterAdded:Connect(function(ch)
mychar = ch
hum = mychar:WaitForChild("Humanoid",1000)
if not hum then return end
con2 = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(wpc)
con3 = hum:GetPropertyChangedSignal("JumpPower"):Connect(wpc)
end)
elseif string.sub(x,1,2) == "rj" then
--stolen from infinite yield
if #playerservice:GetPlayers() <= 1 then
playerservice.LocalPlayer:Kick("\nRejoining...")
if dv == false then
wait(0.50)
else
Wait(0.50)
end
game:GetService('TeleportService'):Teleport(game.PlaceId, lp)
else
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
end
elseif string.sub(x,1,4) == "cmds" then
_close.Active = not _close.Active
cmdframe.Active = not cmdframe.Active
_close.Visible = not _close.Visible
cmdframe.Visible = not cmdframe.Visible
end
end
local function OVTEMO_fake_script() -- _txtbox.txt
local script = Instance.new('LocalScript', _txtbox)

local function onfocus(x)
if x then
cmd(_txtbox.Text:lower())
end
end
_txtbox.FocusLost:Connect(onfocus)
end
coroutine.wrap(OVTEMO_fake_script)()
local function ZURHG_fake_script() -- _close.LocalScript
local script = Instance.new('LocalScript', _close)
local function onclick()
_close.Active = not _close.Active
cmdframe.Active = not cmdframe.Active
_close.Visible = not _close.Visible
cmdframe.Visible = not cmdframe.Visible
end
_close.MouseButton1Click:Connect(onclick)
end
coroutine.wrap(ZURHG_fake_script)()
local us = game:GetService("UserInputService")
local function stfu()
_txtbox.Text = ""
end
local function onkeydown(x)
local txtfocused = us:GetFocusedTextBox()
if txtfocused then return end
if x.KeyCode == Enum.KeyCode.BackSlash then
_txtbox:CaptureFocus()
task.defer(stfu,"")
end
end
us.InputBegan:Connect(onkeydown)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "cmds r sus";
Text = "loaded"; -- bottom text uwu
Icon = "rbxassetid://6678521436";
Duration = 5;
})
main = nil