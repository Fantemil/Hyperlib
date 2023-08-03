local a=game:GetService'Players'local b=game:GetService'ReplicatedStorage'local
c=game:GetService'Workspace'local d=game:GetService'ContentProvider'local e=game
:GetService'CoreGui'do if getgenv().doors then return end getgenv().doors=true
end do local f f=hookfunction(d.PreloadAsync,function(g,h,i)if table.find(h,e)
then local j=function(j,k)if j:match'^rbxasset://'or j:match'^rbxthumb://'then
return i(j,k)end end warn'Anticheat Check Detected'return f(g,h,j)end return f(g
,h,i)end)end local f=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local g=
loadstring(game:HttpGet(f..'Library.lua'))()local h=loadstring(game:HttpGet(f..
'addons/SaveManager.lua'))()local i=loadstring(game:HttpGet(f..
'addons/ThemeManager.lua'))()local j=syn and syn.protect_gui or function(j)end
local k=a.LocalPlayer local l=b.GameData local m={['Beat']=true,['Creak']=true,[
'Door']=true,['Doorknob']=true,['Ghost']=true,['Window Knock']=true}local n=10
local o={}local p={}local q={}local r=function(r)if r then local s=r:
FindFirstChild'HumanoidRootPart'if s then local t=r:FindFirstChild'Humanoid'
return t~=nil end end return false end local s do s={}s.__index=s function s.new
(t)local u=setmetatable({instance=t,destructed=false},s)u.instance.
AncestryChanged:Connect(function(v,w)if w==nil then u:destroy()end end)return u:
constructor(t)end function s.constructor(t,u)t.cham=Instance.new
'BoxHandleAdornment'task.defer(t.onStart,t)return t end function s.onStart(t)
local u=t.instance local v=u:WaitForChild('FigureRagdoll',2.5)local w=v:
WaitForChild('Root',2.5)local x=t.cham p[x]=true x.Visible=Toggles.FIGURE_CHAMS.
Value x.Color3=Color3.new(1,0,0)x.Transparency=0.25 x.Size=Vector3.new(2,5,2)x.
AlwaysOnTop=true x.ZIndex=5 x.Adornee=w x.RobloxLocked=true x.Parent=w end
function s.destroy(t)if t.destructed then return else t.destructed=true end t.
cham:Destroy()p[t.cham]=nil end end local t do t={}t.__index=t function t.new(u)
local v=setmetatable({instance=u,destructed=false},t)v.instance.AncestryChanged:
Connect(function(w,x)if x==nil then v:destroy()end end)return v:constructor(u)
end function t.constructor(u,v)u.cham=Instance.new'BoxHandleAdornment'task.
defer(u.onStart,u)return u end function t.onStart(u)local v=u.instance local w=u
.cham q[w]=true w.Visible=Toggles.INTERACT_CHAMS.Value w.Color3=Color3.new(1,1,1
)w.Transparency=0.5 w.Size=v.Size+Vector3.new(0.1,0.1,0.1)w.AlwaysOnTop=true w.
ZIndex=5 w.Adornee=v w.RobloxLocked=true w.Parent=e end function t.destroy(u)if
u.destructed then return else u.destructed=true end u.cham:Destroy()q[u.cham]=
nil end end local u do u={}u.__index=u function u.new(v)local w=setmetatable({
instance=v,destructed=false},u)w.instance.AncestryChanged:Connect(function(x,y)
if y==nil then w:destroy()end end)return w:constructor(v)end function u.
constructor(v,w)task.defer(v.onStart,v)return v end function u.onStart(v)local w
=v.instance repeat if w.Name=='50'then v:onRoom50()break end if w.Name=='100'
then v:onRoom100()break end until true end function u.onRoom50(v)local w=v.
instance local x=w:WaitForChild('FigureSetup',2.5)local y=s.new(x)local z=
function(z)if z.Name=='Super Cool Bookshelf With Hint Book'then local A=z:
WaitForChild('LiveHintBook',2.5)if A then local B=A:WaitForChild('Base',2.5)if B
then t.new(B)end end end end for A,B in ipairs(w.Assets:GetChildren())do task.
defer(z,B)end w.Assets.ChildAdded:Connect(z)end function u.onRoom100(v)local w=v
.instance local x=w:WaitForChild('FigureSetup',2.5)local y=s.new(x)end function
u.destroy(v)if v.destructed then return else v.destructed=true end end end local
v=function(v)local w=u.new(v)end local w=function(w)while not r(w)do w.
DescendantAdded:Wait()end n=w.Humanoid.WalkSpeed w.Humanoid.WalkSpeed=w.Humanoid
.WalkSpeed+Options.WALKSPEED.Value end local x=function(x)if x:IsA'Attachment'
then if Toggles.REMOVE_AMBIENCE.Value then local y for z=1,10 do y=x:
FindFirstChildWhichIsA'Sound'if y then break end task.wait()end if y then if m[y
.Name]then y:Pause()end end end end end local y=function(y)if y.Name==
'RushMoving'then if Toggles.EVENT_NOTIFIER.Value then g:Notify
'[Event Notifier]: Rush spawned, hide quickly!'end elseif y.Name=='AmbushMoving'
then if Toggles.EVENT_NOTIFIER.Value then g:Notify
[[[Event Notifier]: Ambush spawned, hide quickly! He can return up to 3-4 times!]]
end end end g:SetWatermark'Linoria Community (OminousVibes)'g:Notify
'Loading UI...'do local z=g:CreateWindow'Doors'do local A=z:AddTab'Gameplay'do
local B=A:AddLeftTabbox'Modifications'local C=B:AddTab'Character Mods'C:
AddSlider('WALKSPEED',{Text='Speed Boost',Min=0,Max=10,Default=0,Rounding=1,
Suffix=''})C:AddToggle('GLOW_ENABLED',{Text='Body Glow',Default=false,Tooltip=
'Adds a subtle glow for better vision'})local D=B:AddTab'World Mods'D:AddToggle(
'REMOVE_AMBIENCE',{Text='Remove Ambience',Default=false,Tooltip=
'Removes the unnecessary sounds from the world'})end do local B=A:
AddLeftGroupbox'Assists'B:AddToggle('AUTO_HEARTBEAT',{Text=
'Always Win Heartbeat Minigame',Default=true,Tooltip=
'Always win the heartbeat minigame (Room 50 & 100)'})end do local B=A:
AddRightGroupbox'Notifiers'B:AddToggle('EVENT_NOTIFIER',{Text='Event Notifier',
Default=true,Tooltip='Notifies you when certain events occur'})end end do local
A=z:AddTab'Visuals'do local B=A:AddLeftTabbox'Visuals'local C=B:AddTab'Entities'
C:AddToggle('FIGURE_CHAMS',{Text='Figure Chams',Default=true,Tooltip=
'Figure ESP'})local D=B:AddTab'Objects'D:AddToggle('INTERACT_CHAMS',{Text=
'Interactable Chams',Default=true,Tooltip='ESP for items that can be picked up'}
)end do local B=A:AddRightGroupbox'World Render'end end do local A=z:AddTab
'Settings'i:SetLibrary(g)h:SetLibrary(g)i:SetFolder'OminousVibes'h:SetFolder
'OminousVibes/doors'h:IgnoreThemeSettings()h:SetIgnoreIndexes{'MenuKeybind'}h:
BuildConfigSection(A)i:ApplyToTab(A)local B=A:AddLeftGroupbox'Menu'B:AddButton(
'Unload',function()g:Unload()end)B:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})B:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()g.
KeybindFrame.Visible=Toggles.Keybinds.Value end)B:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()g:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end g:Notify'UI Loaded'k.CharacterAdded:Connect(
w)c.ChildAdded:Connect(y)c.Terrain.ChildAdded:Connect(x)c.CurrentRooms.
ChildAdded:Connect(v)c.CurrentRooms.DescendantAdded:Connect(function(z)if z.Name
=='KeyObtain'then t.new(z)end end)l.LatestRoom.Changed:Connect(function(z)if
Toggles.EVENT_NOTIFIER.Value then local A=l.ChaseStart.Value-z if 0<A and A<4
then g:Notify("[Event Notifier]: There is an event in '"..tostring(A)..
"' rooms!")end end end)do do Options.WALKSPEED:OnChanged(function(z)local A=k.
Character if r(A)then A.Humanoid.WalkSpeed=n+Options.WALKSPEED.Value end end)
Toggles.GLOW_ENABLED:OnChanged(function()for z,A in ipairs(o)do A:Destroy()end
if Toggles.GLOW_ENABLED.Value then local B=Instance.new'PointLight'local C=
Instance.new'SurfaceLight'B.Brightness=0.75 C.Brightness=0.25 B.Range=20 C.Range
=90 o={B,C}j(B)j(C)B.Parent=k.Character.HumanoidRootPart C.Parent=k.Character.
Head else o={}end end)end do Toggles.FIGURE_CHAMS:OnChanged(function()for z,A in
pairs(p)do z.Visible=Toggles.FIGURE_CHAMS.Value end end)Toggles.INTERACT_CHAMS:
OnChanged(function()for z,A in ipairs(q)do A.Visible=Toggles.INTERACT_CHAMS.
Value end end)end end do local z local A local B local C,D=typeof,unpack local E
=game.IsA z=hookmetamethod(game,'__index',function(F,G)if not checkcaller()then
if C(F)=='Instance'then if E(F,'Humanoid')then if G=='WalkSpeed'then return n
end end end end return z(F,G)end)A=hookmetamethod(game,'__newindex',function(F,G
,H)if not checkcaller()then if C(F)=='Instance'then if E(F,'Humanoid')then if G
=='WalkSpeed'then n=H return A(F,G,H+Options.WALKSPEED.Value)end end end end
return A(F,G,H)end)B=hookmetamethod(game,'__namecall',function(F,...)if not
checkcaller()then if C(F)=='Instance'then if E(F,'RemoteEvent')then if z(F,
'Name')=='ClutchHeartbeat'then if Toggles.AUTO_HEARTBEAT.Value then local G={...
}G[2]=true return B(F,D(G))end end end end end return B(F,...)end)end do local z
=k.Character if z then w(z)end end do for z,A in ipairs(c.CurrentRooms:
GetChildren())do task.defer(v,A)end end return g:Notify'[Doors] Loaded!'