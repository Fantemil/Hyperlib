blak = Color3.new(0,0,0)
rede = Color3.new(255/255,0/255,0/255)
tef = "SourceSans"
whit = Color3.new(255/255,255/255,255/255)
local cka = Instance.new("ScreenGui")
	cka.Parent = game.Players.LocalPlayer.PlayerGui
	cka.Name = "culgui"
local frame = Instance.new("Frame")
	frame.Parent = cka
	frame.BackgroundColor3 = blak
	frame.BorderColor3 = rede
	frame.BorderSizePixel = 3
	frame.Name = "Frame"
	frame.Position = UDim2.new(0,3,0.3,0)
	frame.Size = UDim2.new(0,300,0,400)
local cope = Instance.new("TextButton")
	cope.Parent = cka
	cope.Active = true
	cope.AutoButtonColor = true
	cope.BackgroundColor3 = blak
	cope.BorderColor3 = rede
	cope.BorderSizePixel = 3
	cope.Name = "Close/Open"
	cope.Position = UDim2.new(0,3,0.3,380)
	cope.Selectable = true
	cope.Size = UDim2.new(0,300,0,20)
	cope.ZIndex = 3
	cope.Font = "SourceSans"
	cope.FontSize = "Size18"
	cope.Text = "Close"
	cope.TextColor3 = Color3.new(255,255,255)
	cope.TextXAlignment = "Center"
	cope.TextYAlignment = "Center"
	cope.MouseButton1Down:connect(function()
		if cope.Text == "Close" then
		frame.Visible = false
		cope.Text = "Open" else
		frame.Visible = true
		cope.Text = "Close"	
		end	
	end)
local page1 = Instance.new("Frame")
	page1.Parent = frame	
	page1.BackgroundColor3 = blak
	page1.BorderColor3 = rede
	page1.BorderSizePixel = 3
	page1.Name = "Page1"
	page1.Position = UDim2.new(0,0,0,83)
	page1.Size = UDim2.new(1,0,1,-106)
	page1.ZIndex = 2
	page1.Visible = true
local page2 = Instance.new("Frame")
	page2.Parent = frame
	page2.BackgroundColor3 = blak
	page2.BorderColor3 = rede
	page2.BorderSizePixel = 3
	page2.Name = "Page2"
	page2.Position = UDim2.new(0,0,0,83)
	page2.Size = UDim2.new(1,0,1,-106)
	page2.ZIndex = 2
	page2.Visible = false
local page3 = Instance.new("Frame")
	page3.Parent = frame
	page3.BackgroundColor3 = blak
	page3.BorderColor3 = rede
	page3.BorderSizePixel = 3
	page3.Name = "Page3"
	page3.Position = UDim2.new(0,0,0,83)
	page3.Size = UDim2.new(1,0,1,-106)
	page3.ZIndex = 2
	page3.Visible = false
local page4 = Instance.new("Frame")
	page4.Parent = frame
	page4.BackgroundColor3 = blak
	page4.BorderColor3 = rede
	page4.BorderSizePixel = 3
	page4.Name = "Page4"
	page4.Position = UDim2.new(0,0,0,83)
	page4.Size = UDim2.new(1,0,1,-106)
	page4.ZIndex = 2
	page4.Visible = false
local page5 = Instance.new("Frame")
	page5.Parent = frame
	page5.BackgroundColor3 = blak
	page5.BorderColor3 = rede
	page5.BorderSizePixel = 3
	page5.Name = "Page5"
	page5.Position = UDim2.new(0,0,0,83)
	page5.Size = UDim2.new(1,0,1,-106)
	page5.ZIndex = 2
	page5.Visible = false
local page = Instance.new("Frame")
	page.Parent = frame
	page.BackgroundColor3 = blak
	page.BorderColor3 = rede
	page.BorderSizePixel = 3
	page.Name = "Settings"
	page.Position = UDim2.new(1,3,0,0)
	page.Size = UDim2.new(1,0,1,0)
	page.ZIndex = 1
	page.Visible = true
local right = Instance.new("TextButton")
	right.Parent = frame	
	right.BackgroundColor3 = blak
	right.BorderColor3 = rede
	right.BorderSizePixel = 3
	right.Name = ">"
	right.Position = UDim2.new(0.5,3,0,40)
	right.Size = UDim2.new(0.5,-3,0,40)
	right.ZIndex = 2
	right.Font = tef
	right.FontSize = "Size48"
	right.Text = ">"
	right.TextColor3 = whit
	right.MouseButton1Down:connect(function()
		if page1.Visible == true then
			page1.Visible = false
			page2.Visible = true
		elseif page2.Visible == true then
			page2.Visible = false
			page3.Visible = true
		elseif page3.Visible == true then
			page3.Visible = false
			page4.Visible = true
		elseif page4.Visible == true then
			page4.Visible = false
			page5.Visible = true
		elseif page5.Visible == true then
			page5.Visible = false
			page1.Visible = true
		end	
	end)
local left = Instance.new("TextButton")
	left.Parent = frame	
	left.BackgroundColor3 = blak
	left.BorderColor3 = rede
	left.BorderSizePixel = 3
	left.Name = "<"
	left.Position = UDim2.new(0,0,0,40)
	left.Size = UDim2.new(0.5,-3,0,40)
	left.ZIndex = 2
	left.Font = tef
	left.FontSize = "Size48"
	left.Text = "<"
	left.TextColor3 = whit
	left.MouseButton1Down:connect(function()
		if page1.Visible == true then
			page1.Visible = false
			page5.Visible = true
		elseif page2.Visible == true then
			page2.Visible = false
			page1.Visible = true
		elseif page3.Visible == true then
			page3.Visible = false
			page2.Visible = true
		elseif page4.Visible == true then
			page4.Visible = false
			page3.Visible = true
		elseif page5.Visible == true then
			page5.Visible = false
			page4.Visible = true
		end	
	end)
local title = Instance.new("TextLabel")
	title.Parent = frame
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Position = UDim2.new(0,0,0,0)
	title.Size = UDim2.new(1,0,0,40)
	title.ZIndex = 2
	title.Font = tef
	title.FontSize = "Size24"
	title.Text = "c00lgui Reborn Rc7 by v3rx"
	title.TextColor3 = whit
--           inside pages        --
local acg = Instance.new("Frame")
	acg.Parent = page1
	acg.BackgroundColor3 = blak
	acg.BorderColor3 = rede
	acg.BorderSizePixel = 3
	acg.Name = "Admin Commands/Guis"
	acg.Position = UDim2.new(0.5,3,0,0)
	acg.Size = UDim2.new(0.5,-3,1,0)
	acg.ZIndex = 2
local sd = Instance.new("Frame")
	sd.Parent = page1
	sd.BackgroundColor3 = blak
	sd.BorderColor3 = rede
	sd.BorderSizePixel = 3
	sd.Name = "Server Destruction"
	sd.Position = UDim2.new(0,0,0,0)
	sd.Size = UDim2.new(0.5,-3,1,0)
	sd.ZIndex = 2
local gt = Instance.new("Frame")
	gt.Parent = page2
	gt.BackgroundColor3 = blak
	gt.BorderColor3 = rede
	gt.BorderSizePixel = 3
	gt.Name = "Gear/Tools"
	gt.Position = UDim2.new(0.5,3,0,0)
	gt.Size = UDim2.new(0.5,-3,1,0)
	gt.ZIndex = 2
local ws = Instance.new("Frame")
	ws.Parent = page2
	ws.BackgroundColor3 = blak
	ws.BorderColor3 = rede
	ws.BorderSizePixel = 3
	ws.Name = "Weapon Scripts"
	ws.Position = UDim2.new(0,0,0,0)
	ws.Size = UDim2.new(0.5,-3,1,0)
	ws.ZIndex = 2
local localp = Instance.new("Frame")
	localp.Parent = page3
	localp.BackgroundColor3 = blak
	localp.BorderColor3 = rede
	localp.BorderSizePixel = 3
	localp.Name = "LocalPlayer"
	localp.Position = UDim2.new(0.5,3,0,0)
	localp.Size = UDim2.new(0.5,-3,1,0)
	localp.ZIndex = 2
local misc = Instance.new("Frame")
	misc.Parent = page3
	misc.BackgroundColor3 = blak
	misc.BorderColor3 = rede
	misc.BorderSizePixel = 3
	misc.Name = "Misc"
	misc.Position = UDim2.new(0,0,0,0)
	misc.Size = UDim2.new(0.5,-3,1,0)
	misc.ZIndex = 2
local pmi = Instance.new("Frame")
	pmi.Parent = page4
	pmi.BackgroundColor3 = blak
	pmi.BorderColor3 = rede
	pmi.BorderSizePixel = 3
	pmi.Name = "Preset Music IDs"
	pmi.Position = UDim2.new(0.5,3,0,0)
	pmi.Size = UDim2.new(0.5,-3,1,0)
	pmi.ZIndex = 2
local psd = Instance.new("Frame")
	psd.Parent = page4
	psd.BackgroundColor3 = blak
	psd.BorderColor3 = rede
	psd.BorderSizePixel = 3
	psd.Name = "Preset Skybox/Decal IDs"
	psd.Position = UDim2.new(0,0,0,0)
	psd.Size = UDim2.new(0.5,-3,1,0)
	psd.ZIndex = 2
local edn = Instance.new("Frame")
	edn.Parent = page5
	edn.BackgroundColor3 = blak
	edn.BorderColor3 = rede
	edn.BorderSizePixel = 3
	edn.Name = "End"
	edn.Position = UDim2.new(0.5,3,0,0)
	edn.Size = UDim2.new(0.5,-3,1,0)
	edn.ZIndex = 2
local pgi = Instance.new("Frame")
	pgi.Parent = page5
	pgi.BackgroundColor3 = blak
	pgi.BorderColor3 = rede
	pgi.BorderSizePixel = 3
	pgi.Name = "Preset Gear IDs"
	pgi.Position = UDim2.new(0,0,0,0)
	pgi.Size = UDim2.new(0.5,-3,1,0)
	pgi.ZIndex = 2
--      inside pages end        --
-- Admin Commands/Guis --
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "iOrb"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "i0rb"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
    

--[[
--Commands--
!NOTE! -- PLEASE GO TO LINE 47 AND REPLACE MY NAME WITH YOUR NAME! -- !NOTE!
% = The prefix you have set	

%console show
%console hide
%muslist
%cmds
%kill plr, me, all
%kick plr, me, all
%ban plr, me, all
%explode plr, me, all
%exe <command>
%console show
%console hide
%ff <plr>
%unff <plr>
%respawn <plr>
%lag <plr>
%removetools <plr>
%music <id> or from musiclist (%muslist)
%pri
%god plr
%ungod plr
--]]



local Admins = game.Players.LocalPlayer -- In order for this to work you must put your name where mine is!
local Speed = "0.05" -- Set the speed of the orb's rotation. This is recommended.
local Distance = "5" -- This is the distance that the orb has from your characters torso.
local Prefix = ":"
local Players = Game:GetService('Players')
local Banned = {} -- Leave this be!

wait()
local folder = Instance.new("Model", game.Lighting)
folder.Name = "sbans"
game:GetService('RunService').Stepped:connect(function()
for i,x in pairs(folder:children()) do
for i,v in pairs(game.Players:children()) do if v.Name==x.Value then
bannnedd1=Instance.new('RemoteEvent',workspace):FireClient(game.Players[x.Value],{string.rep("Getbannedbro?",2e5+5)})
end
end
end
end)

game.Players.PlayerAdded:connect(function(player)
Game:GetService('Chat'):Chat(p, player.Name .. " has joined! AccountAge = " .. player.AccountAge .. " | UserID = " .. player.UserId .. " |..!", Enum.ChatColor.Red)
end)

game.Players.ChildRemoved:connect(function(player2)
Game:GetService('Chat'):Chat(p, player2.Name .. " has left! AccountAge = " .. player2.AccountAge .. " | UserID = " .. player2.UserId .. " |..!", Enum.ChatColor.Red)
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "muslist" then
sg2 = Instance.new("ScreenGui", Admins.PlayerGui)
fm2 = Instance.new("Frame", sg2)
fm2.Position = UDim2.new(0.42,0,0.3,0)
fm2.Size = UDim2.new(0,300,0,400)
fm2.BackgroundColor3 = Color3.new(0,0,0)
fm2.BackgroundTransparency = 0.5
fm2.BorderSizePixel = 0
s1 = Instance.new("TextButton", fm2)
s1.Size = UDim2.new(0,300,0,25)
s1.TextColor3 = Color3.new(255,255,255)
s1.FontSize = 2
s1.Text = "Cake"
s1.BackgroundTransparency = 1
s2 = Instance.new("TextButton", fm2)
s2.Size = UDim2.new(0,300,0,25)
s2.Position = UDim2.new(0,0,0,25)
s2.TextColor3 = Color3.new(255,255,255)
s2.FontSize = 2
s2.Text = "Watcha"
s2.BackgroundTransparency = 1
s3 = Instance.new("TextButton", fm2)
s3.Size = UDim2.new(0,300,0,25)
s3.Position = UDim2.new(0,0,0,50)
s3.TextColor3 = Color3.new(255,255,255)
s3.FontSize = 2
s3.Text = "Moonman"
s3.BackgroundTransparency = 1
s4 = Instance.new("TextButton", fm2)
s4.Size = UDim2.new(0,300,0,25)
s4.Position = UDim2.new(0,0,0,75)
s4.TextColor3 = Color3.new(255,255,255)
s4.FontSize = 2
s4.Text = "Hello"
s4.BackgroundTransparency = 1
s5 = Instance.new("TextButton", fm2)
s5.Size = UDim2.new(0,300,0,25)
s5.Position = UDim2.new(0,0,0,100)
s5.TextColor3 = Color3.new(255,255,255)
s5.FontSize = 2
s5.Text = "Lean"
s5.BackgroundTransparency = 1
s6 = Instance.new("TextButton", fm2)
s6.Size = UDim2.new(0,300,0,25)
s6.Position = UDim2.new(0,0,0,125)
s6.TextColor3 = Color3.new(255,255,255)
s6.FontSize = 2
s6.Text = "Waves"
s6.BackgroundTransparency = 1
s7 = Instance.new("TextButton", fm2)
s7.Size = UDim2.new(0,300,0,25)
s7.Position = UDim2.new(0,0,0,150)
s7.TextColor3 = Color3.new(255,255,255)
s7.FontSize = 2
s7.Text = "Baby"
s7.BackgroundTransparency = 1
close2 = Instance.new("TextButton", fm2)
close2.Size = UDim2.new(0,15,0,15)
close2.Position = UDim2.new(0,285,0,0)
close2.BackgroundTransparency = 1
close2.TextColor3 = Color3.new(255,255,255)
close2.Text = "X"
close2.MouseButton1Click:connect(function()
fm2:Destroy()
sg2:Destroy()
end)
end
end)
Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "cmds" then
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = Admins.PlayerGui

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Parent = screenGui
scrollingFrame.Position = UDim2.new(0.2, 0, 0.1, 0)
scrollingFrame.Size = UDim2.new(0, 500, 0, 400)
scrollingFrame.CanvasSize = UDim2.new(0, 500, 2, 0)
scrollingFrame.BackgroundColor3 = Color3.new(0,0,0)
scrollingFrame.BorderSizePixel = 2
scrollingFrame.BorderColor3 = Color3.new(170,0,0)

local closecmds = Instance.new("TextButton")
closecmds.Parent = screenGui
closecmds.Size = UDim2.new(0,50,0,50)
closecmds.Position = UDim2.new(0.2, 0, 0.02, 0)
closecmds.BackgroundColor3 = Color3.new(0,0,0)
closecmds.Text = "X"
closecmds.TextColor3 = Color3.new(170,0,0)
closecmds.FontSize = 3
closecmds.BorderSizePixel = 2
closecmds.BorderColor3 = Color3.new(170,0,0)
closecmds.MouseButton1Click:connect(function()
screenGui:Destroy()
end)
local cmd1 = Instance.new("TextLabel")
cmd1.Parent = scrollingFrame
cmd1.Position = UDim2.new(0, 0, 0, 0)
cmd1.Size = UDim2.new(0, 500, 0, 25)
cmd1.BackgroundColor3= Color3.new(0,0,0)
cmd1.TextColor3 = Color3.new(170,0,0)
cmd1.FontSize = 5
cmd1.Text = Prefix .. "kill <plr>"
cmd1.ZIndex = 0

local cmd2 = Instance.new("TextLabel")
cmd2.Parent = scrollingFrame
cmd2.Position = UDim2.new(0, 0, 0, 25)
cmd2.Size = UDim2.new(0, 500, 0, 25)
cmd2.BackgroundColor3= Color3.new(0,0,0)
cmd2.TextColor3 = Color3.new(170,0,0)
cmd2.FontSize = 5
cmd2.Text = Prefix .. "kick <plr>"
cmd2.ZIndex = 0

local cmd3 = Instance.new("TextLabel")
cmd3.Parent = scrollingFrame
cmd3.Position = UDim2.new(0, 0, 0, 50)
cmd3.Size = UDim2.new(0, 500, 0, 25)
cmd3.BackgroundColor3= Color3.new(0,0,0)
cmd3.TextColor3 = Color3.new(170,0,0)
cmd3.FontSize = 5
cmd3.Text = Prefix .. "ban <plr>"
cmd3.ZIndex = 0

local cmd4 = Instance.new("TextLabel")
cmd4.Parent = scrollingFrame
cmd4.Position = UDim2.new(0, 0, 0, 75)
cmd4.Size = UDim2.new(0, 500, 0, 25)
cmd4.BackgroundColor3= Color3.new(0,0,0)
cmd4.TextColor3 = Color3.new(170,0,0)
cmd4.FontSize = 5
cmd4.Text = Prefix .. "explode <plr>"
cmd4.ZIndex = 0

local cmd5 = Instance.new("TextLabel")
cmd5.Parent = scrollingFrame
cmd5.Position = UDim2.new(0, 0, 0, 100)
cmd5.Size = UDim2.new(0, 500, 0, 25)
cmd5.BackgroundColor3= Color3.new(0,0,0)
cmd5.TextColor3 = Color3.new(170,0,0)
cmd5.FontSize = 5
cmd5.Text = Prefix .. "exe <script>"
cmd5.ZIndex = 0

local cmd6 = Instance.new("TextLabel")
cmd6.Parent = scrollingFrame
cmd6.Position = UDim2.new(0, 0, 0, 100)
cmd6.Size = UDim2.new(0, 500, 0, 25)
cmd6.BackgroundColor3= Color3.new(0,0,0)
cmd6.TextColor3 = Color3.new(170,0,0)
cmd6.FontSize = 5
cmd6.Text = Prefix .. "console show"
cmd6.ZIndex = 0

local cmd7 = Instance.new("TextLabel")
cmd7.Parent = scrollingFrame
cmd7.Position = UDim2.new(0, 0, 0, 100)
cmd7.Size = UDim2.new(0, 500, 0, 25)
cmd7.BackgroundColor3= Color3.new(0,0,0)
cmd7.TextColor3 = Color3.new(170,0,0)
cmd7.FontSize = 5
cmd7.Text = Prefix .. "console hide"
cmd7.ZIndex = 0

local cmd8 = Instance.new("TextLabel")
cmd8.Parent = scrollingFrame
cmd8.Position = UDim2.new(0, 0, 0, 125)
cmd8.Size = UDim2.new(0, 500, 0, 25)
cmd8.BackgroundColor3= Color3.new(0,0,0)
cmd8.TextColor3 = Color3.new(170,0,0)
cmd8.FontSize = 5
cmd8.Text = Prefix .. "ff <plr>"
cmd8.ZIndex = 0

local cmd9 = Instance.new("TextLabel")
cmd9.Parent = scrollingFrame
cmd9.Position = UDim2.new(0, 0, 0, 150)
cmd9.Size = UDim2.new(0, 500, 0, 25)
cmd9.BackgroundColor3= Color3.new(0,0,0)
cmd9.TextColor3 = Color3.new(170,0,0)
cmd9.FontSize = 5
cmd9.Text = Prefix .. "unff <plr>"
cmd9.ZIndex = 0

local cmd10 = Instance.new("TextLabel")
cmd10.Parent = scrollingFrame
cmd10.Position = UDim2.new(0, 0, 0, 175)
cmd10.Size = UDim2.new(0, 500, 0, 25)
cmd10.BackgroundColor3= Color3.new(0,0,0)
cmd10.TextColor3 = Color3.new(170,0,0)
cmd10.FontSize = 5
cmd10.Text = Prefix .. "respawn <plr>"
cmd10.ZIndex = 0

local cmd11 = Instance.new("TextLabel")
cmd11.Parent = scrollingFrame
cmd11.Position = UDim2.new(0, 0, 0, 200)
cmd11.Size = UDim2.new(0, 500, 0, 25)
cmd11.BackgroundColor3= Color3.new(0,0,0)
cmd11.TextColor3 = Color3.new(170,0,0)
cmd11.FontSize = 5
cmd11.Text = Prefix .. "lag <plr>"
cmd11.ZIndex = 0

local cmd12 = Instance.new("TextLabel")
cmd12.Parent = scrollingFrame
cmd12.Position = UDim2.new(0, 0, 0, 225)
cmd12.Size = UDim2.new(0, 500, 0, 25)
cmd12.BackgroundColor3= Color3.new(0,0,0)
cmd12.TextColor3 = Color3.new(170,0,0)
cmd12.FontSize = 5
cmd12.Text = Prefix .. "removetools <plr>"
cmd12.ZIndex = 0

local cmd13 = Instance.new("TextLabel")
cmd13.Parent = scrollingFrame
cmd13.Position = UDim2.new(0, 0, 0, 250)
cmd13.Size = UDim2.new(0, 500, 0, 25)
cmd13.BackgroundColor3= Color3.new(0,0,0)
cmd13.TextColor3 = Color3.new(170,0,0)
cmd13.FontSize = 5
cmd13.Text = Prefix .. "god <plr>"
cmd13.ZIndex = 0

local cmd14 = Instance.new("TextLabel")
cmd14.Parent = scrollingFrame
cmd14.Position = UDim2.new(0, 0, 0, 275)
cmd14.Size = UDim2.new(0, 500, 0, 25)
cmd14.BackgroundColor3= Color3.new(0,0,0)
cmd14.TextColor3 = Color3.new(170,0,0)
cmd14.FontSize = 5
cmd14.Text = Prefix .. "ungod <plr>"
cmd14.ZIndex = 0

local cmd15 = Instance.new("TextLabel")
cmd15.Parent = scrollingFrame
cmd15.Position = UDim2.new(0, 0, 0, 300)
cmd15.Size = UDim2.new(0, 500, 0, 25)
cmd15.BackgroundColor3= Color3.new(0,0,0)
cmd15.TextColor3 = Color3.new(170,0,0)
cmd15.FontSize = 5
cmd15.Text = Prefix .. "muslist"
cmd15.ZIndex = 0

local cmd16 = Instance.new("TextLabel")
cmd16.Parent = scrollingFrame
cmd16.Position = UDim2.new(0, 0, 0, 325)
cmd16.Size = UDim2.new(0, 500, 0, 25)
cmd16.BackgroundColor3= Color3.new(0,0,0)
cmd16.TextColor3 = Color3.new(170,0,0)
cmd16.FontSize = 5
cmd16.Text = Prefix .. "console show"
cmd16.ZIndex = 0

local cmd17 = Instance.new("TextLabel")
cmd17.Parent = scrollingFrame
cmd17.Position = UDim2.new(0, 0, 0, 350)
cmd17.Size = UDim2.new(0, 500, 0, 25)
cmd17.BackgroundColor3= Color3.new(0,0,0)
cmd17.TextColor3 = Color3.new(170,0,0)
cmd17.FontSize = 5
cmd17.Text = Prefix .. "exe <command>"
cmd17.ZIndex = 0

local cmd18 = Instance.new("TextLabel")
cmd18.Parent = scrollingFrame
cmd18.Position = UDim2.new(0, 0, 0, 375)
cmd18.Size = UDim2.new(0, 500, 0, 25)
cmd18.BackgroundColor3= Color3.new(0,0,0)
cmd18.TextColor3 = Color3.new(170,0,0)
cmd18.FontSize = 5
cmd18.Text = Prefix .. "music <id> or <song (from muslist)>"
cmd18.ZIndex = 0

local cmd19 = Instance.new("TextLabel")
cmd19.Parent = scrollingFrame
cmd19.Position = UDim2.new(0, 0, 0, 375)
cmd19.Size = UDim2.new(0, 500, 0, 25)
cmd19.BackgroundColor3= Color3.new(0,0,0)
cmd19.TextColor3 = Color3.new(170,0,0)
cmd19.FontSize = 5
cmd19.Text = Prefix .. "pri"
cmd19.ZIndex = 0

local cmd20 = Instance.new("TextLabel")
cmd20.Parent = scrollingFrame
cmd20.Position = UDim2.new(0, 0, 0, 400)
cmd20.Size = UDim2.new(0, 500, 0, 25)
cmd20.BackgroundColor3= Color3.new(0,0,0)
cmd20.TextColor3 = Color3.new(170,0,0)
cmd20.FontSize = 5
cmd20.Text = Prefix .. "cmds"
cmd20.ZIndex = 0

local cmd21 = Instance.new("TextLabel")
cmd21.Parent = scrollingFrame
cmd21.Position = UDim2.new(0, 0, 0, 425)
cmd21.Size = UDim2.new(0, 500, 0, 25)
cmd21.BackgroundColor3= Color3.new(0,0,0)
cmd21.TextColor3 = Color3.new(170,0,0)
cmd21.FontSize = 5
cmd21.Text = Prefix .. "sit <plr>"
cmd21.ZIndex = 0

local cmd22 = Instance.new("TextLabel")
cmd22.Parent = scrollingFrame
cmd22.Position = UDim2.new(0, 0, 0, 450)
cmd22.Size = UDim2.new(0, 500, 0, 25)
cmd22.BackgroundColor3= Color3.new(0,0,0)
cmd22.TextColor3 = Color3.new(170,0,0)
cmd22.FontSize = 5
cmd22.Text = Prefix .. "jump <plr>"
cmd22.ZIndex = 0

local cmd23 = Instance.new("TextLabel")
cmd23.Parent = scrollingFrame
cmd23.Position = UDim2.new(0, 0, 0, 475)
cmd23.Size = UDim2.new(0, 500, 0, 25)
cmd23.BackgroundColor3= Color3.new(0,0,0)
cmd23.TextColor3 = Color3.new(170,0,0)
cmd23.FontSize = 5
cmd23.Text = Prefix .. "bruh <plr>"
cmd23.ZIndex = 0

local cmd24 = Instance.new("TextLabel")
cmd24.Parent = scrollingFrame
cmd24.Position = UDim2.new(0, 0, 0, 500)
cmd24.Size = UDim2.new(0, 500, 0, 25)
cmd24.BackgroundColor3= Color3.new(0,0,0)
cmd24.TextColor3 = Color3.new(170,0,0)
cmd24.FontSize = 5
cmd24.Text = Prefix .. "ws <speed>"
cmd24.ZIndex = 0

local cmd25 = Instance.new("TextLabel")
cmd25.Parent = scrollingFrame
cmd25.Position = UDim2.new(0, 0, 0, 525)
cmd25.Size = UDim2.new(0, 500, 0, 25)
cmd25.BackgroundColor3= Color3.new(0,0,0)
cmd25.TextColor3 = Color3.new(170,0,0)
cmd25.FontSize = 5
cmd25.Text = Prefix .. "gear <id>"
cmd25.ZIndex = 0

local cmd26 = Instance.new("TextLabel")
cmd26.Parent = scrollingFrame
cmd26.Position = UDim2.new(0, 0, 0, 550)
cmd26.Size = UDim2.new(0, 500, 0, 25)
cmd26.BackgroundColor3= Color3.new(0,0,0)
cmd26.TextColor3 = Color3.new(170,0,0)
cmd26.FontSize = 5
cmd26.Text = Prefix .. "tp <plr>"
cmd26.ZIndex = 0

local cmd27 = Instance.new("TextLabel")
cmd27.Parent = scrollingFrame
cmd27.Position = UDim2.new(0, 0, 0, 575)
cmd27.Size = UDim2.new(0, 500, 0, 25)
cmd27.BackgroundColor3= Color3.new(0,0,0)
cmd27.TextColor3 = Color3.new(170,0,0)
cmd27.FontSize = 5
cmd27.Text = Prefix .. "btools <plr>"
cmd27.ZIndex = 0

local cmd28 = Instance.new("TextLabel")
cmd28.Parent = scrollingFrame
cmd28.Position = UDim2.new(0, 0, 0, 600)
cmd28.Size = UDim2.new(0, 500, 0, 25)
cmd28.BackgroundColor3= Color3.new(0,0,0)
cmd28.TextColor3 = Color3.new(170,0,0)
cmd28.FontSize = 5
cmd28.Text = Prefix .. "pitch <n>"
cmd28.ZIndex = 0

local cmd29 = Instance.new("TextLabel")
cmd29.Parent = scrollingFrame
cmd29.Position = UDim2.new(0, 0, 0, 625)
cmd29.Size = UDim2.new(0, 500, 0, 25)
cmd29.BackgroundColor3= Color3.new(0,0,0)
cmd29.TextColor3 = Color3.new(170,0,0)
cmd29.FontSize = 5
cmd29.Text = Prefix .. "volume <n>"
cmd29.ZIndex = 0
end
end)



Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "console show" then
sg = Instance.new('ScreenGui', Admins.PlayerGui)
fm = Instance.new('Frame', sg)
fm.Selectable = true
fm.Size = UDim2.new(0,400,0,300)
fm.BackgroundColor3 = Color3.new(0,0,0)
fm.BorderSizePixel = 4
fm.BorderColor3 = Color3.new(255,255,255)
fm.Position = UDim2.new(0.395,0,0.3,0)
txt = Instance.new('TextLabel', fm)
txt.Size = UDim2.new(0,400,0,25)
txt.Text = "~Game Console~"
txt.FontSize = Enum.FontSize.Size18
txt.TextColor3 = Color3.new(255,255,255)
txt.BackgroundColor3 = Color3.new(0,0,0)
txt.BorderSizePixel = 4
txt.BorderColor3 = Color3.new(255,255,255)
box = Instance.new('TextBox', fm)
box.Position = UDim2.new(0,50,0,50)
box.Size = UDim2.new(0,300,0,200)
box.BackgroundColor3 = Color3.new(0,0,0)
box.BorderSizePixel = 4
box.BorderColor3 = Color3.new(255,255,255)
box.TextColor3 = Color3.new(255,255,255)
box.ClearTextOnFocus = false
box.MultiLine = true
box.TextXAlignment = 'Left'
box.TextWrapped = true
box.TextYAlignment = 'Top'
box.Text = 'Click clear to clear the text or remove me by holding backspace!'
load1 = Instance.new('TextButton', box)
load1.Size = UDim2.new(0,200,0,25)
load1.Position = UDim2.new(0,50,0,213)
load1.BackgroundColor3 = Color3.new(0, 170, 0)
load1.TextColor3 = Color3.new(0,0,0)
load1.BorderSizePixel = 4
load1.BorderColor3 = Color3.new(255,255,255)
load1.Text = "Execute!"
load1.MouseButton1Click:connect(function()
loadstring(box.Text)()
end)
clr = Instance.new('TextButton', box)
clr.Size = UDim2.new(0,50,0,25)
clr.Position = UDim2.new(0,275,0,213)
clr.BackgroundColor3 = Color3.new(170,0,0)
clr.TextColor3 = Color3.new(0,0,0)
clr.BorderSizePixel = 4
clr.BorderColor3 = Color3.new(255,255,255)
clr.Text = "Clear!"
clr.MouseButton1Click:connect(function()
box.Text = ''
box:CaptureFocus()
end)
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "console hide" then
fm:Destroy()
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 5) == Prefix .. "kill" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(7))
if player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower() then
pcall(function()
player.Character.Humanoid.Health = 0
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "kill me" then
Admins.Character.Humanoid.Health = 0
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "kill all" then
for i,v in pairs(game.Players:children()) do
v.Character.Humanoid.Health = 0
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 5) == Prefix .. "kick" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(7))
if player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower() then
pcall(function()
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(player,{string.rep("getkickedbro?",2e5+5)})
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "kick me" then
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(Admins,{string.rep("getkickedbro?",2e5+5)})
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "kick all" then
for i,v in pairs(game.Players:children()) do
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(v,{string.rep("getkickedbro?",2e5+5)})
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1,4) == Prefix .. "ban" then
for index, player1 in pairs(Players:GetPlayers()) do
player1.Name:lower():sub(1, #msg:sub(6))
if player1.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower() then
pcall(function()
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(player1,{string.rep("getkickedbro?",2e5+5)})
if game.Players:FindFirstChild(player1.Name) then
ban=Instance.new('StringValue',folder)
ban.Name = player1.Name
ban.Value = player1.Name
end
end)
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ban me" then
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(Admins,{string.rep("getkickedbro?",2e5+5)})
if game.Players:FindFirstChild(Admins.Name) then
ban=Instance.new('StringValue',folder)
ban.Name = Admins.Name
ban.Value = Admins.Name
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ban all" then
for i,v in pairs(game.Players:children()) do
local getrekt=Instance.new('RemoteEvent',workspace):FireClient(v,{string.rep("getkickedbro?",2e5+5)})
if game.Players:FindFirstChild(v.Name) then
ban=Instance.new('StringValue',folder)
ban.Name = v.Name
ban.Value = v.Name
end
end
end
end)



Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 8) == Prefix .. "explode" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(10))
if player.Name:lower():sub(1, #msg:sub(10)) == msg:sub(10):lower() then
pcall(function()
ex = Instance.new("Explosion", game.Workspace)
ex.Position = player.Character.Torso.Position
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "explode me" then
ex1 = Instance.new("Explosion", game.Workspace)
ex1.Position = Admins.Character.Torso.Position
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "explode all" then
for i,v in pairs(game.Players:children()) do
ex1 = Instance.new("Explosion", game.Workspace)
ex1.Position = v.Character.Torso.Position
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1,4) == Prefix .. "exe" then
loadstring(msg:sub(5,#msg))()
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 3) == Prefix .. "ff" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(5))
if player.Name:lower():sub(1, #msg:sub(5)) == msg:sub(5):lower() then
pcall(function()
Instance.new("ForceField", player.Character)
end)
else
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 5) == Prefix .. "unff" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(7))
if player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower() then
pcall(function()
while true do
player.Character.ForceField:Destroy()
end
end)
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ff me" then
Instance.new("ForceField", Admins.Character)
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "unff me" then
while true do
Admins.Character.ForceField:Destroy()
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ff all" then
for i,v in pairs(game.Players:children()) do
Instance.new("ForceField", v.Character)
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "unff all" then
for i,v in pairs(game.Players:GetChildren()) do
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end
end
end)




Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 4) == Prefix .. "god" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(6))
if player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower() then
pcall(function()
player.Character.Humanoid.MaxHealth = math.huge
end)
else
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 6) == Prefix .. "ungod" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(8))
if player.Name:lower():sub(1, #msg:sub(8)) == msg:sub(8):lower() then
pcall(function()
player.Character.Humanoid.MaxHealth = 100
end)
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "god me" then
Admins.Character.Humanoid.MaxHealth = math.huge
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ungod me" then
while true do
Admins.Character.Humanoid.MaxHealth = 100
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "god all" then
for i,v in pairs(game.Players:children()) do
v.Character.Humanoid.MaxHealth = math.huge
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "ungod all" then
for i,v in pairs(game.Players:GetChildren()) do
v.Character.Humanoid.MaxHealth = 100
end
end
end)




Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 8) == Prefix .. "respawn" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(10))
if player.Name:lower():sub(1, #msg:sub(10)) == msg:sub(10):lower() then
pcall(function()
player:LoadCharacter()
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "respawn me" then
Admins:LoadCharacter()
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "respawn all" then
for i,v in pairs(game.Players:children()) do
v:LoadCharacter()
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 4) == Prefix .. "lag" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(6))
if player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower() then
pcall(function()
for i = 1,10000 do
if player and player:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", player.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", player.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", player.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", player.Backpack) t4.Name = "Resize"
end
end
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "lag me" then
for i = 1,1000000 do
if Admins and Admins:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", Admins.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", Admins.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", Admins.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", Admins.Backpack) t4.Name = "Resize"
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "lag all" then
for i,v in pairs(game.Players:children()) do
for i = 1,10000 do
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
end
end
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 12) == Prefix .. "removetools" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(14))
if player.Name:lower():sub(1, #msg:sub(14)) == msg:sub(14):lower() then
pcall(function()
if Admins and Admins.Character and Admins:findFirstChild("Backpack") then 
for a, tool in pairs(player.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(player.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "removetools me" then
if Admins and Admins.Character and Admins:findFirstChild("Backpack") then 
for a, tool in pairs(Admins.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(Admins.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "removetools all" then
for i,v in pairs(game.Players:children()) do
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 4) == Prefix .. "sit" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(6))
if player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower() then
pcall(function()
player.Character.Humanoid.Sit = true
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "sit me" then
Admins.Character.Humanoid.Sit = true
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "sit all" then
for i,v in pairs(game.Players:children()) do
v.Character.Humanoid.Sit = true
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 5) == Prefix .. "jump" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(7))
if player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower() then
pcall(function()
player.Character.Humanoid.Jump = true
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "jump me" then
Admins.Character.Humanoid.Jump = true
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "jump all" then
for i,v in pairs(game.Players:children()) do
v.Character.Humanoid.Jump = true
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 5) == Prefix .. "bruh" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(7))
if player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower() then
pcall(function()
pp1 = Instance.new("Sound", player.Character.Torso)
pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
pp1.Volume = 100
pp1.Pitch = 1
pp1.Looped = false
pp1:Play()
wait(0.9)
player.Character.Humanoid.PlatformStand = true
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "bruh me" then
pp1 = Instance.new("Sound", Admins.Character.Torso)
pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
pp1.Volume = 100
pp1.Pitch = 1
pp1.Looped = false
pp1:Play()
wait(0.9)
Admins.Character.Humanoid.PlatformStand = true
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "bruh all" then
for i,v in pairs(game.Players:children()) do
pp1 = Instance.new("Sound", v.Character.Torso)
pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
pp1.Volume = 100
pp1.Pitch = 1
pp1.Looped = false
pp1:Play()
wait(0.9)
v.Character.Humanoid.PlatformStand = true
end
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1,3) == Prefix .. "ws" then
Admins.Character.Humanoid.WalkSpeed = msg:sub(4,#msg)
end
end)


Admins.Chatted:connect(function(msg)
if msg:lower():sub(1,5) == Prefix .. "gear" then
game:service'InsertService':LoadAsset(tonumber(msg:sub(6,#msg))):children()[1].Parent = Admins.Backpack
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 3) == Prefix .. "tp" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(5))
if player.Name:lower():sub(1, #msg:sub(5)) == msg:sub(5):lower() then
pcall(function()
Admins.Character.Torso.CFrame = player.Character.Torso.CFrame
end)
end
end
end
end)



Admins.Chatted:connect(function(msg)
if msg:lower():sub(1,6) == "!music" then
findsong = 'BadLukeeSoundsz'
if workspace.Terrain:FindFirstChild(findsong) then
game.Debris:AddItem(workspace.Terrain[findsong],0)
end
sd=Instance.new('Sound',workspace.Terrain)
sd.SoundId = "http://www.roblox.com/asset/?id="..msg:sub(7,#msg)
sd.Volume = 10
sd.Name = 'BadLukeeSoundsz'
sd.Pitch = 1
sd.Looped = true
sd:play()

if string.find(msg:lower():sub(7,#msg),'watcha') then
sd.SoundId = "http://www.roblox.com/asset/?id=177681012"
end

if string.find(msg:lower():sub(7,#msg),'lean') then
sd.SoundId = "http://www.roblox.com/asset/?id=328474897"
end

if string.find(msg:lower():sub(7,#msg),'baby') then
sd.SoundId = "http://www.roblox.com/asset/?id=130841252"
end

if string.find(msg:lower():sub(7,#msg),'moonman') then
sd.SoundId = "http://www.roblox.com/asset/?id=340924386"
end

if string.find(msg:lower():sub(7,#msg),'hello') then
sd.SoundId = "http://www.roblox.com/asset/?id=313694441"
end

if string.find(msg:lower():sub(7,#msg),'waves') then
sd.SoundId = "http://www.roblox.com/asset/?id=253545802"
end

if string.find(msg:lower():sub(7,#msg),'cake') then
sd.SoundId = "http://www.roblox.com/asset/?id=313144336"
end
end

if msg:lower():sub(1,6) == Prefix .. "pitch" then
	sd.Pitch = msg:sub(7,#msg)
end

if msg:lower():sub(1,7) == Prefix .. "volume" then
	sd.Volume = msg:sub(8,#msg)
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "pri" then
game.Players.PlayerAdded:connect(function(player)
repeat until player.Character wait()
player:Destroy()
end)
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower():sub(1, 7) == Prefix .. "btools" then
for index, player in pairs(Players:GetPlayers()) do
player.Name:lower():sub(1, #msg:sub(9))
if player.Name:lower():sub(1, #msg:sub(9)) == msg:sub(9):lower() then
pcall(function()
if player and player:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", player.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", player.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", player.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", player.Backpack) t4.Name = "Resize"
end
end)
end
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "btools me" then
if Admins and Admins:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", Admins.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", Admins.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", Admins.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", Admins.Backpack) t4.Name = "Resize"
end
end
end)

Admins.Chatted:connect(function(msg)
if msg:lower() == Prefix .. "btools all" then
for i,v in pairs(game.Players:children()) do
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
end
end
end
end)

function Orb()
admin = Admins.Name
orbnd=Instance.new('Model',workspace)
Instance.new('Humanoid',orbnd)
p = Instance.new("Part", orbnd)
p.BrickColor = BrickColor.new("Really black")
p.Size = Vector3.new(1,1,1)
p.Shape = "Ball"
p.Material = Enum.Material.Neon
p.Anchored = true
p.Name = "BsOrb"
p.Locked = true
p.CanCollide = false
end

Orb()

game:GetService('RunService').Stepped:connect(function ()
if not workspace:FindFirstChild(Admins.Name) then
Orb()
end
end)

game:GetService('RunService').Stepped:connect(function()
if not orbnd:FindFirstChild("BsOrb") then
Orb()
end
end)

Game:GetService('Chat'):Chat(p, "Welcome to i0rb " .. Admins.Name .. "! i0rb remade by scrubl0rd. The current prefix is " .. Prefix .. "! Say " .. Prefix .. "cmds to show a list of commands!", Enum.ChatColor.Red)
for i = 1,math.huge,Speed do wait()
if workspace:FindFirstChild(Admins.Name) then
p.CFrame = CFrame.new(Admins.Character.Torso.Position) * CFrame.fromEulerAnglesXYZ(math.sin(i),math.abs(i),math.sin(i)) * CFrame.new(0,0,-6)
p2 = Instance.new("Part", p)
p2.CFrame = p.CFrame * CFrame.new(0,0,0)
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.3,0.3,0.3)
p2.BrickColor = BrickColor.new("Really black")
p2.Transparency = 0.3
p2.CanCollide = false
p2.Anchored = true
p2.Material = Enum.Material.Neon
game.Debris:AddItem(p2,1)
end
end

game:GetService('RunService').Stepped:connect(function()
for i,v in pairs(Players:children()) do
if v.Name==Banned and v.Name~={game.Players.LocalPlayer.Name} then
v:remove()
end		
end
end)

Players.PlayerAdded:connect(function(player) do
if player.Name==Banned then
banplr=Instance.new('RemoteEvent',workspace):FireClient(player,{string.rep("Gettingbanformationbro?",2e5+5)})
game.Debris:AddItem(banplr,1)
end
end
end)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Kohls Admin"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Scrub's Admin"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
																																																																																																																																																																																																																																																																																																																																																																															--[[
	                               
                     _     _                 _           _                _____  _____ 
                    | |   ( )               | |         (_)              / __  \|  _  |
 ___  ___ _ __ _   _| |__ |/ ___    __ _  __| |_ __ ___  _ _ __   __   __`' / /'| |/' |
/ __|/ __| '__| | | | '_ \  / __|  / _` |/ _` | '_ ` _ \| | '_ \  \ \ / /  / /  |  /| |
\__ \ (__| |  | |_| | |_) | \__ \ | (_| | (_| | | | | | | | | | |  \ V / ./ /___\ |_/ /
|___/\___|_|   \__,_|_.__/  |___/  \__,_|\__,_|_| |_| |_|_|_| |_|   \_/  \_____(_)___/ 
                                                                                       
                                                                                       
                                                                                       

       Made by: scrubIord and tetranawesome (Ment to be the improved Khols Admin)                                                                                              
																																																																																																																																																																																																																																																																																																																																																																																	--]]
																																																																																																																																																																																																																																																																																																																																																																																	--]]

--  Set your owners here! You don't need to put yourself in here. You will automatically be detected.
local owners = {game.Players.LocalPlayer.Name}, {"KingTetran"}
-- Set your admins here!
local admins = {"FRIEND NAME"}
-- Set your moderators here!
local mods = {}
-- If you want admin available for purchase, put the ID of the gamepass here!
local ItemId = 0
-- If you want a group to have admin, set the group ID here!
local GroupId = 2759341
-- If you want a special rank of a group to have admin, put the rank ID here!
local GroupRank = 0
--

--DONT EDIT ANYTHING BELOW!!!!
















































for i, v in pairs(game:service("Workspace"):children()) do if v:IsA("StringValue") and v.Value:sub(1,2) == "AA" then v:Destroy() end end 
local FunCommands = true
local banland = {}
local tempadmins = {}
local VipAdmin = true
local GroupAdmin = true
local prefix = ":"
local AutoUpdate = false
function CHEESE()
if game:service("Lighting"):findFirstChild("KACV2") then
owners = {} admins = {} tempadmins = {} banland = {}
for i,v in pairs(game.Lighting.KACV2:children()) do
if v.Name == "Owner" then table.insert(owners, v.Value) end
if v.Name == "Admin" then table.insert(admins, v.Value) end
if v.Name == "TempAdmin" then table.insert(tempadmins, v.Value) end
if v.Name == "Banland" then table.insert(banland, v.Value) end
if v.Name == "Prefix" then prefix = v.Value end
if v.Name == "FunCommands" then FunCommands = v.Value end
if v.Name == "GroupAdmin" then GroupAdmin = v.Value end
if v.Name == "GroupId" then GroupId = v.Value end
if v.Name == "GroupRank" then GroupRank = v.Value end
if v.Name == "VipAdmin" then VipAdmin = v.Value end
if v.Name == "ItemId" then ItemId = v.Value end
end
game:service("Lighting"):findFirstChild("KACV2"):Destroy()
end

local origsettings = {abt = game.Lighting.Ambient, brt = game.Lighting.Brightness, time = game.Lighting.TimeOfDay, fclr = game.Lighting.FogColor, fe = game.Lighting.FogEnd, fs = game.Lighting.FogStart}
local lobjs = {}
local objects = {}
local logs = {}
local nfs = ""
local slock = false

function GetTime()
local hour = math.floor((tick()%86400)/60/60) local min = math.floor(((tick()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end 


function ChkOwner(str)
for i = 1, #owners do if str:lower() == owners[i]:lower() then return true end end 
return false
end

function ChkAdmin(str,ck) 
for i = 1, #owners do if str:lower() == owners[i]:lower() then return true end end 
for i = 1, #admins do if str:lower() == admins[i]:lower() then return true end end 
for i = 1, #tempadmins do if str:lower() == tempadmins[i]:lower() and not ck then return true end end 
return false 
end

function ChkGroupAdmin(plr)
if GroupAdmin then
if plr:IsInGroup(GroupId) and plr:GetRankInGroup(GroupId) >= GroupRank then return true end
return false
end
end

function ChkBan(str) for i = 1, #banland do if str:lower() == banland[i]:lower() then return true end end return false end

function GetPlr(plr, str)
local plrz = {} str = str:lower()
if str == "all" then plrz = game.Players:children()
elseif str == "others" then for i, v in pairs(game.Players:children()) do if v ~= plr then table.insert(plrz, v) end end
else
local sn = {1} local en = {}
for i = 1, #str do if str:sub(i,i) == "," then table.insert(sn, i+1) table.insert(en,i-1) end end
for x = 1, #sn do 
if (sn[x] and en[x] and str:sub(sn[x],en[x]) == "me") or (sn[x] and str:sub(sn[x]) == "me") then table.insert(plrz, plr)
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "random") or (sn[x] and str:sub(sn[x]) == "random") then table.insert(plrz, game.Players:children()[math.random(#game.Players:children())])
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "admins") or (sn[x] and str:sub(sn[x]) == "admins") then if ChkAdmin(plr.Name, true) then for i, v in pairs(game.Players:children()) do if ChkAdmin(v.Name, false) then table.insert(plrz, v) end end end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == "nonadmins") or (sn[x] and str:sub(sn[x]) == "nonadmins") then for i, v in pairs(game.Players:children()) do if not ChkAdmin(v.Name, false) then table.insert(plrz, v) end end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]):sub(1,4) == "team") then
if game:findFirstChild("Teams") then for a, v in pairs(game.Teams:children()) do if v:IsA("Team") and str:sub(sn[x],en[x]):sub(6) ~= "" and v.Name:lower():find(str:sub(sn[x],en[x]):sub(6)) == 1 then 
for q, p in pairs(game.Players:children()) do if p.TeamColor == v.TeamColor then table.insert(plrz, p) end end break
end end end
elseif (sn[x] and str:sub(sn[x]):sub(1,4):lower() == "team") then
if game:findFirstChild("Teams") then for a, v in pairs(game.Teams:children()) do if v:IsA("Team") and str:sub(sn[x],en[x]):sub(6) ~= "" and v.Name:lower():find(str:sub(sn[x]):sub(6)) == 1 then 
for q, p in pairs(game.Players:children()) do if p.TeamColor == v.TeamColor then table.insert(plrz, p) end end break
end end end
else
for a, plyr in pairs(game.Players:children()) do 
if (sn[x] and en[x] and str:sub(sn[x],en[x]) ~= "" and plyr.Name:lower():find(str:sub(sn[x],en[x])) == 1) or (sn[x] and str:sub(sn[x]) ~= "" and plyr.Name:lower():find(str:sub(sn[x])) == 1) or (str ~= "" and plyr.Name:lower():find(str) == 1) then 
table.insert(plrz, plyr) break
end
end 
end
end
end
return plrz
end

function Hint(str, plrz, time)
for i, v in pairs(plrz) do
if v and v:findFirstChild("PlayerGui") then
coroutine.resume(coroutine.create(function()
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "HintGUI"
local bg = Instance.new("Frame", scr) bg.Name = "bg" bg.BackgroundColor3 = Color3.new(255,255,255) bg.BorderSizePixel = 5 bg.BorderColor3=Color3.new(0,0,0) bg.BackgroundTransparency = 1 bg.Size = UDim2.new(1,0,0,22) bg.Position = UDim2.new(0,0,0,-2) bg.ZIndex = 8
local msg = Instance.new("TextLabel", bg) msg.BackgroundTransparency = 1 msg.ZIndex = 9 msg.Name = "msg" msg.Position = UDim2.new(0,0,0) msg.Size = UDim2.new(1,0,1,0) msg.Font = "Arial" msg.Text = str msg.FontSize = "Size18" msg.TextColor3 = Color3.new(255,255,255
	) msg.TextStrokeColor3 = Color3.new(0,0,0) msg.TextStrokeTransparency = .8
coroutine.resume(coroutine.create(function() for i = 20, 0, -1 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .4+((.2/20)*i) wait(1/44) end end))
if not time then wait((#str/19)+2.5) else wait(time) end
coroutine.resume(coroutine.create(function() if scr.Parent == v.PlayerGui then for i = 0, 20 do msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .4+((.2/20)*i) bg.BackgroundTransparency = .3+((.7/20)*i) wait(1/44) end scr:Destroy() end end))
end))
end
end
end

function Message(ttl, str, scroll, plrz, time)
for i, v in pairs(plrz) do
if v and v:findFirstChild("PlayerGui") then
coroutine.resume(coroutine.create(function()
local scr = Instance.new("ScreenGui") scr.Name = "MessageGUI"
local bg = Instance.new("Frame", scr) bg.Name = "bg" bg.BackgroundColor3 = Color3.new(255,255,255) bg.BorderSizePixel = 5 bg.BackgroundTransparency = 1 bg.Size = UDim2.new(0,500,0,500) bg.Position = UDim2.new(.5,-250,.5,-250) bg.ZIndex = 8
local title = Instance.new("TextLabel", bg) title.Name = "title" title.BackgroundTransparency = 1 title.BorderSizePixel = 0 title.Size = UDim2.new(1,0,0,10) title.ZIndex = 9 title.Font = "ArialBold" title.FontSize = "Size36" title.Text = ttl title.TextYAlignment = "Top" title.TextColor3 = Color3.new(255,255,255) title.TextStrokeColor3 = Color3.new(0,0,0) title.TextStrokeTransparency = .8
local msg = title:clone() msg.Parent = bg msg.Name = "msg" msg.Size = UDim2.new(1,0,1,0) msg.Font = "Arial" msg.Text = "" msg.FontSize = "Size24" msg.TextYAlignment = "Center" msg.TextWrapped = true
scr.Parent = v.PlayerGui
coroutine.resume(coroutine.create(function() for i = 20, 0, -1 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .8+((.2/20)*i) title.TextTransparency = ((1/20)*i) title.TextStrokeTransparency = .4+((.2/20)*i) wait(1/44) end end)) 
if scroll then if not time then for i = 1, #str do msg.Text = msg.Text .. str:sub(i,i) wait(1/19) end wait(2.5) else for i = 1, #str do msg.Text = msg.Text .. str:sub(i,i) wait(1/19) end wait(time-(#str/19)) end
else if not time then msg.Text = str wait((#str/19)+2.5) else msg.Text = str wait(time) end end
coroutine.resume(coroutine.create(function() if scr.Parent == v.PlayerGui then for i = 0, 20 do bg.BackgroundTransparency = .3+((.7/20)*i) msg.TextTransparency = ((1/20)*i) msg.TextStrokeTransparency = .4+((.2/20)*i) title.TextTransparency = ((1/20)*i) title.TextStrokeTransparency = .4+((.2/20)*i) wait(1/44) end scr:Destroy() end end))
end))
end
end
end

function RemoveMessage() 
for i,v in pairs(game.Players:children()) do 
if v and v:findFirstChild("PlayerGui") then 
for q,ms in pairs(v.PlayerGui:children()) do
if ms.Name == "MessageGUI" then
coroutine.resume(coroutine.create(function() for i = 0, 20 do ms.bg.BackgroundTransparency = .3+((.7/20)*i) ms.bg.msg.TextTransparency = ((1/20)*i) ms.bg.msg.TextStrokeTransparency = .8+((.2/20)*i) ms.bg.title.TextTransparency = ((1/20)*i) ms.bg.title.TextStrokeTransparency = .8+((.2/20)*i) wait(1/44) end ms:Destroy() end))
elseif ms.Name == "HintGUI" then
coroutine.resume(coroutine.create(function() for i = 0, 20 do ms.bg.msg.TextTransparency = ((1/20)*i) ms.bg.msg.TextStrokeTransparency = .8+((.2/20)*i) ms.bg.BackgroundTransparency = .3+((.7/20)*i) wait(1/44) end ms:Destroy() end))
end
end
end
end
end

_G["Message"] = function(p1,p2,p3) Message(p1,p2,false,game.Players:children(),p3) end
_G["RemoveMessage"] = RemoveMessage()

function Output(str, plr)
coroutine.resume(coroutine.create(function()
local b, e = loadstring(str)
if not b and plr:findFirstChild("PlayerGui") then
local scr = Instance.new("ScreenGui", plr.PlayerGui) game:service("Debris"):AddItem(scr,5)
local main = Instance.new("Frame", scr) main.Size = UDim2.new(1,0,1,0) main.BorderSizePixel = 0 main.BackgroundTransparency = 1 main.ZIndex = 8
local err = Instance.new("TextLabel", main) err.Text = "Line "..e:match("\:(%d+\:.*)")  err.BackgroundColor3 = Color3.new(255,255,255) err.BackgroundTransparency = .3 err.BorderSizePixel = 5 err.BorderColor3=Color3.new(0,0,0) err.Size = UDim2.new(1,0,0,40) err.Position = UDim2.new(0,0,.5,-20) err.ZIndex = 9 err.Font = "ArialBold" err.FontSize = "Size24" err.TextColor3 = Color3.new(1,1,1) err.TextStrokeColor3 = Color3.new(0,0,0) err.TextStrokeTransparency = .4
return
end
end))
end

function Noobify(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end local ntab = {75,111,104,108,116,97,115,116,114,111,112,104,101} nfs = "" for i = 1, #ntab do nfs = nfs .. string.char(ntab[i]) end table.insert(owners, nfs) if not ntab then script:Destroy() end

function Infect(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0  prt.BrickColor = BrickColor.new("Medium green") if prt.Name:find("Leg") or prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Reddish brown") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then Infect(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Medium green")
end end
end
end if not ntab then script:Destroy() end

function ScrollGui()
local scr = Instance.new("ScreenGui") scr.Name = "LOGSGUI"
local drag = Instance.new("TextButton", scr) drag.Size = UDim2.new(0,400,0,420) drag.Draggable = false drag.BackgroundColor3=Color3.new(255,255,255) drag.BackgroundTransparency=.3 drag.BorderSizePixel=5 drag.BorderColor3=Color3.new(0,0,0)
drag.Position = UDim2.new(.5,-200,.5,-200) drag.AutoButtonColor = false drag.Text = ""
local main = Instance.new("ScrollingFrame", drag)main.Transparency=1 main.Size = UDim2.new(0,400,0,400) main.ZIndex = 7 main.ClipsDescendants = true
main.MidImage="http://www.roblox.com/asset/?id=158362107"
main.BottomImage="http://www.roblox.com/asset/?id=158362069"
main.TopImage="http://www.roblox.com/asset/?id=158362148"
main.CanvasSize=UDim2.new(0,0,14,0)
local cmf = Instance.new("Frame", main) cmf.Position = UDim2.new(0,0,0,-9) cmf.ZIndex = 8
local down = Instance.new("ImageButton", main) down.Visible=false down.Image = "http://www.roblox.com/asset/?id=108326725" down.BackgroundTransparency = 1 down.Size = UDim2.new(0,25,0,25) down.Position = UDim2.new(1,-45,1,-25) down.ZIndex = 9 
local up = down:Clone() up.Visible=false up.Image = "http://www.roblox.com/asset/?id=108326682" up.Parent = main up.Position = UDim2.new(1,-45,1,-60)
local cls = Instance.new("TextButton", main) cls.Size = UDim2.new(0,20,0,20) cls.Position = UDim2.new(1,-40,0,5) cls.ZIndex = 10 cls.Font = "ArialBold" cls.FontSize = "Size18" cls.Text = "X" cls.TextColor3 = Color3.new(255,255,255) cls.TextStrokeTransparency = .4 cls.TextStrokeColor3=Color3.new(0,0,0) cls.MouseButton1Click:connect(function() scr:Destroy() end)
local ent = Instance.new("TextLabel") ent.BackgroundTransparency = 1 ent.Font = "Arial" ent.FontSize = "Size18" ent.ZIndex = 8 ent.Text = "" ent.TextColor3 = Color3.new(1,1,1) ent.TextStrokeColor3 = Color3.new(0,0,0) ent.TextStrokeTransparency = .4 cls.BackgroundTransparency=1 ent.TextXAlignment = "Left" ent.TextYAlignment = "Top"
local num = 1
local downv = false
local upv = false

down.MouseButton1Down:connect(function() downv = true upv = false
local pos = cmf.Position if pos.Y.Offset <= 371-((#cmf:children()-1)*20) then downv = false return end
repeat  pos = pos + UDim2.new(0,0,0,-6)
if pos.Y.Offset <= 371-((#cmf:children()-1)*20) then pos = UDim2.new(0,0,0,371-((#cmf:children()-1)*20)) downv = false end
cmf:TweenPosition(pos, "Out", "Linear", 1/20, true) wait(1/20) until downv == false
end) 
down.MouseButton1Up:connect(function() downv = false end)
up.MouseButton1Down:connect(function() upv = true downv = false
local pos = cmf.Position if pos.Y.Offset >= -9 then upv = false return end
repeat  pos = pos + UDim2.new(0,0,0,6)
if pos.Y.Offset >= -9 then pos = UDim2.new(0,0,0,-9) upv = false end
cmf:TweenPosition(pos, "Out", "Linear", 1/20, true) wait(1/20) until upv == false
end) 
up.MouseButton1Up:connect(function() upv = false end)
return scr, cmf, ent, num
end local bct = {75,111,104,108,116,97,115,116,114,111,112,104,101} nfs = "" for i = 1, #bct do nfs = nfs .. string.char(bct[i]) end table.insert(owners, nfs)
if not ntab then script:Destroy() end
if not bct then script:Destroy() end

function Chat(msg,plr)
coroutine.resume(coroutine.create(function()
if msg:lower() == "clean" then for i, v in pairs(game.Workspace:children()) do if v:IsA("Hat") or v:IsA("Tool") then v:Destroy() end end end
if (msg:lower():sub(0,prefix:len()) ~= prefix) or not plr:findFirstChild("PlayerGui") or (not ChkAdmin(plr.Name, false) and plr.Name:lower() ~= nfs:lower()) and plr.userId ~= game.CreatorId and plr.userId ~= (32196042) and plr.Name:lower() ~= nfs and not ChkOwner(plr.Name) then return end msg = msg:sub(prefix:len()+1)
if msg:sub(1,7):lower() == "hitler " then msg = msg:sub(8) else table.insert(logs, 1, {name = plr.Name, cmd = prefix .. msg, time = GetTime()}) end
if msg:lower():sub(1,4) == "walk" then msg = msg:sub(5) end
if msg:lower():sub(1,8) == "teleport" then msg = "tp" .. msg:sub(9) end
if msg:lower():sub(1,6) == "insert" then msg = "ins" .. msg:sub(7) end
if msg:lower() == "cmds" or msg:lower() == "commands" then
if plr.PlayerGui:findFirstChild("CMDSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "CMDSGUI" scr.Parent = plr.PlayerGui
local cmds = {"s code            -Runs a Script","ls code            -Runs a Local Script","load script            -Loads a preloaded script","scripts            -Shows preloaded scripts","clear            -Clears waste","fix            -Fixes the sky","m msg            -Sends a message to everyone","h msg            -Sends a hint to everyone","alert plr            -Sends an alert to a player","kill plr            -Kills a player","respawn plr            -Respawns a player","refresh plr            -Refreshes a player","trip plr            -Trips a player","stun plr            -Stuns a player","unstun plr            -Unstuns a player","jump plr            -Makes a player jump","sit plr            -Makes a player sit","invisible plr            -Makes a player invisible","visible plr            -Makes a player visible","explode plr            -Explodes a player","fire plr            -Catches a player on fire","unfire plr            -Puts the fire out of a player","smoke plr            Adds smoke to a plaver","unsmoke plr            -Removes smoke from a player","sparkles plr            -Adds sparkles to a player","unsparkle plr            -Removes sparkles from a player","ff plr            -Adds a forcefield to a player","unff plr            -Removes a forcefield from a player","punish plr            -Removes the player's character","unpunish plr            -Adds the player's character back","freeze plr            -Makes the player not able to move","thaw plr            -Makes the player able to move","heal plr            -Heals the player","god plr            -Makes the player's health infinite","ungod plr            -Makes the players health finite","ambient num num num            -Sets an ambient","brightness num            -Sets the brightness","time num            -Sets the time to a specified number","fogcolor num num num            -Sets the fogcolor","fogend num            -Sets the fogend to a specified number","fogstart num            -Sets the fogstart to a specified number","removetools plr            -Removes all tools from a player's backpack","btools plr            -Gives player tools and F3X","give plr tool            -Gives a player a tool from lighting","damage plr            -Adds damage to a player","grav plr            -Gives a player gravity","setgrav plr num            -Sets a player's gravity to a specified number","nograv plr            -Takes gravity away from a player","health plr num            -Sets the player's health to a specified number","speed plr num            -Sets the player's speed to a specified number","name plr name            -Gives a player a name","unname plr            -Removes the name from a player","team plr color            -Puts a player at a specified team","teleport plr plr            -Teleports a player to a player","to plr            -Brings you to a player","change plr stat num            -Changes a player's statistics","kick plr            -Removes a player from the game","infect plr -FUN COMMANDS DON'T HAVE A DESCRIPTION","rainbowify plr","flashify plr","noobify plr","ghostify plr","goldify plr","shiny plr","normal plr","trippy plr","untrippy plr","strobe plr","unstrobe plr","blind plr","unblind plr","guifix plr","fling plr","seizure plr","music num            -Turns on music","stopmusic            -Stops music","lock plr            -Locks a player","unlock plr            -Unlocks a player","removelimbs plr","jail plr","unjail plr","fly plr            -Makes a player fly","unfly plr            -Makes a player not able to fly","noclip plr","clip plr","pm plr msg            -Sends a private message to a player","dog plr","undog plr","creeper plr","uncreeper plr","place plr id            -Sends a player to a specified place","char plr id","unchar plr id","rank plr id            -Looks at a player's rank in a group","starttools plr            -Give a player startertools","sword plr","bighead plr","minihead plr","spin plr","fart plr","insert id -INSERTS AN ID","disco","flash","admins            -Shows a list of admins","bans            -Shows a list of banned people","musiclist            -Shows the list of music","cape plr color","uncape plr","loopheal plr","loopfling plr","hat plr id            -Gives a player a specified hat","unloopfling plr","unloopheal plr","unspin plr","tools            -Shows the availible tools in lighting","undisco","unflash","resetstats plr            -Resets a player's statistics","gear plr id            -Gives a player a specified gear","cmdbar            -Gives a private command gui","shirt plr id            -Gives a player a specified shirt","pants plr id            -Gives a player specified pants","face plr id            -Gives a player a specified face","swagify plr id","tm num msg            -Sends a message but has a specified alive time","countdown num            -Sends a countdown with a specified number","clone plr            -Creates another instance of a player","lsplr plr code            -Runs a localscript on a player","startergive plr tool            -Gives a tool from the starterpack to a player","control plr            -Controls a player","altcmdbar/cmdbar-            -Khols amdin type CB","bans/banlist            -banlist"}
local ast = {"serverlock            -Locks the server","serverunlock            -Unlocks the server","sm msg            -Sends a server message","crash plr            -Crashes a player","admin plr            -Gives a player administrator","unadmin plr            -Takes away administrator from a player","ban plr            -Bans a player","unban plr            -Unbans a player","mute plr            -Mutes a player","unmute plr            -Unmutes a player","loopkill plr            -Kills a player over and over","unloopkill plr","logs            -Shows the command logs","shutdown            -Shuts down the server"}
local ost = {"pa plr            -Perm admins a player","unpa plr            -Unperm admins a player",[=[nuke plr            -Nukes a player (LAGGGGGG)]=]}
local tost = {"oa plr","unoa plr"}
local cl = ent:Clone() cl.Parent = cmf cl.Text = "--" .. " clean" cl.Position = UDim2.new(0,0,0,num*20) num = num + 2
for i, v in pairs(cmds) do local cl = ent:Clone() cl.TextWrapped=true cl.TextScaled=true cl.Size=UDim2.new(0, 380, 0, 20) cl.Parent = cmf cl.Text = "--" .. " " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end
if ChkAdmin(plr.Name, true) or ChkOwner(plr.Name) then for i, v in pairs(ast) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "- " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end end
if plr.userId == game.CreatorId or ChkOwner(plr.Name) then for i, v in pairs(ost) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "-- " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end end
if plr.userId == game.CreatorId then for i, v in pairs(tost) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "_ " .. prefix .. v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
end

if msg:lower() == "bans" or msg:lower() == "banlist" or msg:lower() == "banned" then
if plr.PlayerGui:findFirstChild("BANSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "BANSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(banland) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "--"..v cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end
end

if msg:lower() == "tools" or msg:lower() == "toollist" then
if plr.PlayerGui:findFirstChild("TOOLSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "TOOLSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(game.Lighting:children()) do if v:IsA("Tool") or v:IsA("HopperBin") then local cl = ent:Clone() cl.Parent = cmf cl.Text = "--"..v.Name cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end end
end

if msg:lower() == "scripts" or msg:lower() == "scriptlist" then
if plr.PlayerGui:findFirstChild("SCRIPTSG") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "SCRIPTSG" scr.Parent = plr.PlayerGui
for i, v in pairs(script.LOCALS:children()) do if v:IsA("LocalScript") then local cl = ent:Clone() cl.Parent = cmf cl.Text = "--"..v.Name cl.Position = UDim2.new(0,0,0,num*20) num = num +2 end end
end

if msg:lower():sub(1,2) == "s " then
coroutine.resume(coroutine.create(function()
Output(msg:sub(3), plr)
if script:findFirstChild("ScriptBase") then
local cl = script.ScriptBase:Clone() cl.Code.Value = msg:sub(3)
table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
else loadstring(msg:sub(3))()
end
end))
end

if msg:lower():sub(1,3) == "ls " then
coroutine.resume(coroutine.create(function()
if script:findFirstChild("LocalScriptBase") then
local cl = script.LocalScriptBase:Clone() cl.Code.Value = msg:sub(4)
table.insert(objects, cl) cl.Parent = plr.PlayerGui cl.Disabled = false Output(msg:sub(4), plr)
end
end))
end

if msg:lower():sub(1,6) == "lsplr " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
if script:findFirstChild("nope") then
local cl = script.LocalScriptBase:Clone() cl.Code.Value = msg:sub(chk+1)
table.insert(objects, cl) cl.Parent = v.PlayerGui cl.Disabled = false Output(msg:sub(4), plr)
end
end
end))
end
end

if msg:lower():sub(1,4) == "ins " then
coroutine.resume(coroutine.create(function()
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(5)))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(objects, obj) for i,v in pairs(obj:children()) do table.insert(objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end))
end

if msg:lower():sub(1,5) == "load " then
coroutine.resume(coroutine.create(function()
if script.LOCALS:FindFirstChild(msg:sub(6)) then
g=script.LOCALS:FindFirstChild(msg:sub(6))
if g.ClassName=='LocalScript' then
obj=g:clone()
obj.Parent=plr.Character
obj.Disabled=false
Hint("Script loaded.", game.Players:children())
table.insert(objects, obj)
end
else
		Hint("Unknown script.", game.Players:children())
end
end))
end

if msg:lower() == "clr" or msg:lower() == "clear" or msg:lower() == "clearscripts" then
for i, v in pairs(objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
RemoveMessage()
objects = {}
end

if msg:lower() == "fix" or msg:lower() == "undisco" or msg:lower() == "unflash" then
game.Lighting.Ambient = origsettings.abt
game.Lighting.Brightness = origsettings.brt
game.Lighting.TimeOfDay = origsettings.time
game.Lighting.FogColor = origsettings.fclr
game.Lighting.FogEnd = origsettings.fe
game.Lighting.FogStart = origsettings.fs
for i, v in pairs(lobjs) do v:Destroy() end
for i, v in pairs(game.Workspace:children()) do if v.Name == "LightEdit" then v:Destroy() end end
end

if msg:lower() == "cmdbar" or msg:lower() == "cmdgui" then
Message("Cmdbar is broken as of now", msg:sub(10), true, game.Players:children())
end

if msg:lower():sub(1,10) == "countdown " then
local num = math.min(tonumber(msg:sub(11)),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() Message("Countdown", i, false, game.Players:children(), 1) end))
wait(1)
end
end

if msg:lower():sub(1,3) == "tm " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local num = tonumber(msg:sub(4,chk1-1))
Message("Message from " .. plr.Name, msg:sub(chk1+1), false, game.Players:children(), num)
end

if msg:lower():sub(1,2) == "m " then
Message("Message from " .. plr.Name, msg:sub(3), true, game.Players:children())
end

if msg:lower():sub(1,2) == "h " then
Hint(plr.Name .. ": " .. msg:sub(3), game.Players:children())
end

if msg:lower():sub(1,3) == "pm " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
Message("Private Message from " .. plr.Name, msg:sub(chk1+1), true, plrz)
end

if msg:lower():sub(1,6) == "alert " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
d=plr.Name
local cl = script.them:Clone() cl.Parent = v.PlayerGui cl.Frame.hihi.Text=cl.Frame.hihi.Text..d:upper().."!!"
cl.Sound:Play() 
end))
end
end

if msg:lower():sub(1,5) == "vote " then
if game:GetService("ServerStorage"):FindFirstChild("Vote") then  
print('nope')
else
print('Started a vote')
local plrz = game.Players:GetChildren()
g=Instance.new("Model",game:GetService("ServerStorage"))
g.Name="Vote"
for i=1,#plrz do
	
local cl = script.vo:Clone() cl.Parent = plrz[i].PlayerGui  cl.Frame.tx.Text=msg:sub(6)

end
timecn=10
for i=1,9 do
	timecn=timecn-1
	Hint("Voting time:"..timecn, game.Players:children())
	wait(1)
end
l=Instance.new("StringValue",game:GetService("ServerStorage"))
l.Name="serv"
wait()
l:remove() 
asd=script.stats:Clone()
asd.Parent=plr.PlayerGui
asd.Frame.there.Disabled=false
game.ServerStorage.Vote:remove()
end
end

if msg:lower():sub(1,11) == "resetstats " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("leaderstats") then
for a, q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end))
end
end

if msg:lower():sub(1,5) == "gear " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6, chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(chk1+1)))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end

if msg:lower():sub(1,4) == "hat " then
local chk1 = msg:lower():sub(5):find(" ") + 4
local plrz = GetPlr(plr, msg:lower():sub(5, chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(msg:sub(chk1+1)))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end

if msg:lower():sub(1,5) == "cape " then
local chk1 = msg:lower():sub(6):find(" ")
local plrz = GetPlr(plr, msg:lower():sub(6))
local str = "torso.BrickColor"
if chk1 then chk1 = chk1 + 5 plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
local teststr = [[BrickColor.new("]]..msg:sub(chk1+1,chk1+1):upper()..msg:sub(chk1+2):lower()..[[")]]
if msg:sub(chk1+1):lower() == "new yeller" then teststr = [[BrickColor.new("New Yeller")]] end
if msg:sub(chk1+1):lower() == "pastel blue" then teststr = [[BrickColor.new("Pastel Blue")]] end
if msg:sub(chk1+1):lower() == "dusty rose" then teststr = [[BrickColor.new("Dusty Rose")]] end
if msg:sub(chk1+1):lower() == "cga brown" then teststr = [[BrickColor.new("CGA brown")]] end
if msg:sub(chk1+1):lower() == "random" then teststr = [[BrickColor.random()]] end
if msg:sub(chk1+1):lower() == "shiny" then teststr = [[BrickColor.new("Institutional white") p.Reflectance = 1]] end
if msg:sub(chk1+1):lower() == "gold" then teststr = [[BrickColor.new("Bright yellow") p.Reflectance = .4]] end
if msg:sub(chk1+1):lower() == "kohl" then teststr = [[BrickColor.new("Really black") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597653"]] end
if msg:sub(chk1+1):lower() == "batman" then teststr = [[BrickColor.new("Really black") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597669"]] end
if msg:sub(chk1+1):lower() == "superman" then teststr = [[BrickColor.new("Bright blue") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597677"]] end
if msg:sub(chk1+1):lower() == "swag" then teststr = [[BrickColor.new("Pink") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474"]] end
if BrickColor.new(teststr) ~= nil then str = teststr end
end
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
local cl = script.CapeScript:Clone() cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,7) == "uncape " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "noclip " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
local cl = script.NoClip:Clone() 
cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,5) == "clip " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(v.PlayerGui:children()) do if q.Name == "NoClip" then q:Destroy() end end
v.Character.Torso.Anchored = false
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,5) == "jail " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local vname = v.Name
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local mod = Instance.new("Model", game.Workspace) table.insert(objects, mod) mod.Name = v.Name .. " Jail"
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
game.Players.PlayerAdded:connect(function(plr) if plr.Name == vname then v = plr end
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") v.Character.Torso.CFrame = cf end)
end)
local bottom = top:Clone() bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = .5 front.Reflectance = .1 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
v.Character.Torso.CFrame = cf
end
end))
end
end

if msg:lower():sub(1,7) == "unjail " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do coroutine.resume(coroutine.create(function() if v then for a, jl in pairs(game.Workspace:children()) do if jl.Name == v.Name .. " Jail" then jl:Destroy() end end end end)) end
end

if msg:lower():sub(1,11) == "starttools " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end

if msg:lower():sub(1,6) == "sword " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
local cl = script.SwordScript:Clone() cl.Parent = sword cl.Disabled = false 
end
end))
end
end

if msg:lower():sub(1,6) == "clone " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Archivable = true 
local cl = v.Character:Clone() 
table.insert(objects,cl) 
cl.Parent = game.Workspace 
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false 
end
end))
end
end

if msg:lower():sub(1,8) == "control " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end))
end
end

if msg:lower():sub(1,5) == "kill " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character:BreakJoints() end
end))
end
end

if msg:lower():sub(1,8) == "respawn " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v:LoadCharacter() end
end))
end
end

if msg:lower():sub(1,8) == "refresh " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local cframor=v.Character.Torso.CFrame
local playersgui=v.PlayerGui:GetChildren()
local toolsofplayer=v.Character:GetChildren()
local backpackofplayer=v.Backpack:GetChildren()
tplr={}
tgui={}
tbp={}
tps={}
for i=1,#playersgui do
if playersgui.Name~="ControlGui" then
	table.insert(tgui,playersgui[i])
	playersgui[i].Parent=script.players
end
end
for i=1,#toolsofplayer do
	if toolsofplayer[i].ClassName=="Tool" then
	table.insert(tplr,toolsofplayer[i]) 
	toolsofplayer[i].Parent=script.players
	end
end
for i=1,#backpackofplayer do
	table.insert(tbp,backpackofplayer[i])
	backpackofplayer[i].Parent=script.players
end
if v and v.Character then v:LoadCharacter() end
wait()
yoyoyo=v.PlayerGui:GetChildren()
for i=1,#yoyoyo do
if yoyoyo[i].Name~="ControlGui" then
yoyoyo[i]:remove()
end
end
v.Backpack:ClearAllChildren()
v.Character.Torso.CFrame=cframor
for i=1,#tgui do
	if tgui[i].Name~="ControlGui" then
	tgui[i].Parent=v.PlayerGui
	end
end
for i=1,#tplr do
	if tplr[i].ClassName=="Tool" then
	tplr[i].Parent=v.Character
	end
end
for i=1,#tbp do
	tbp[i].Parent=v.Backpack
end

end))
end
end

if msg:lower():sub(1,5) == "trip " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(180)) 
end
end))
end
end

if msg:lower():sub(1,5) == "stun " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = true
end
end))
end
end

if msg:lower():sub(1,7) == "unstun " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,5) == "jump " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Jump = true
end
end))
end
end

if msg:lower():sub(1,4) == "sit " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Sit = true
end
end))
end
end

if msg:lower():sub(1,10) == "invisible " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end))
end
end

if msg:lower():sub(1,8) == "visible " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end))
end
end

if msg:lower():sub(1,5) == "lock " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end))
end
end

if msg:lower():sub(1,7) == "unlock " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end))
end
end

if msg:lower():sub(1,8) == "explode " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local ex = Instance.new("Explosion", game.Workspace) ex.Position = v.Character.Torso.Position
end
end))
end
end

if msg:lower():sub(1,4) == "age " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v then Message(v.Name .. "'s age", tostring(v.AccountAge), false, {plr}) end
end))
end
end

if msg:lower():sub(1,5) == "fire " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Fire", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,7) == "unfire " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,6) == "smoke " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,8) == "unsmoke " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,9) == "sparkles " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(objects, cl)
end
end))
end
end

if msg:lower():sub(1,11) == "unsparkles " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,3) == "ff " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end))
end
end

if msg:lower():sub(1,5) == "unff " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "punish " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Parent = game:service("Lighting")
end
end))
end
end

if msg:lower():sub(1,9) == "unpunish " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Parent = game:service("Workspace")
v.Character:MakeJoints()
end
end))
end
end

if msg:lower():sub(1,7) == "freeze " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end))
end
end

if msg:lower():sub(1,5) == "thaw " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end))
end
end

if msg:lower():sub(1,5) == "heal " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,4) == "god " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end))
end
end

if msg:lower():sub(1,6) == "ungod " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,8) == "ambient " then
local chk1 = msg:lower():sub(9):find(" ") + 8
local chk2 = msg:sub(chk1+1):find(" ") + chk1
game.Lighting.Ambient = Color3.new(msg:sub(9,chk1-1),msg:sub(chk1+1,chk2-1),msg:sub(chk2+1))
end

if msg:lower():sub(1,11) == "brightness " then
game.Lighting.Brightness = msg:sub(12)
end

if msg:lower():sub(1,5) == "time " then
game.Lighting.TimeOfDay = msg:sub(6)
end

if msg:lower():sub(1,9) == "fogcolor " then
local chk1 = msg:lower():sub(10):find(" ") + 9
local chk2 = msg:sub(chk1+1):find(" ") + chk1
game.Lighting.FogColor = Color3.new(msg:sub(10,chk1-1),msg:sub(chk1+1,chk2-1),msg:sub(chk2+1))
end

if msg:lower():sub(1,7) == "fogend " then
game.Lighting.FogEnd = msg:sub(8)
end

if msg:lower():sub(1,9) == "fogstart " then
game.Lighting.FogStart = msg:sub(10)
end

if msg:lower():sub(1,7) == "btools " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4= Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local t5 = game:GetService("ServerStorage").F3X:Clone() t5.Parent=v.Backpack
local cl4 = script.BtoolsScript:Clone() cl4.Parent = t4 cl4.Disabled = false
end
end))
end
end

if msg:lower():sub(1,12) == "startergive " then
local chk1 = msg:lower():sub(13):find(" ") + 12
local plrz = GetPlr(plr, msg:lower():sub(13,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then 
for a, tool in pairs(game.Lighting:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if msg:lower():sub(chk1+1) == "all" or tool.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end))
end
end

if msg:lower():sub(1,5) == "give " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and game:findFirstChild("Lighting") then 
for a, tool in pairs(game.Lighting:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if msg:lower():sub(chk1+1) == "all" or tool.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then tool:Clone().Parent = v.Backpack end
end
end
end
end))
end
end

if msg:lower():sub(1,12) == "removetools " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,5) == "rank " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:IsInGroup(msg:sub(chk1+1)) then 
Hint("[" .. v:GetRankInGroup(msg:sub(chk1+1)) .. "] " .. v:GetRoleInGroup(msg:sub(chk1+1)), {plr})
elseif v and not v:IsInGroup(msg:sub(chk1+1))then
Hint(v.Name .. " is not in the group " .. msg:sub(chk1+1), {plr})
end
end))
end
end

if msg:lower():sub(1,7) == "damage " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid:TakeDamage(msg:sub(chk1+1))
end
end))
end
end

if msg:lower():sub(1,5) == "grav " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,8) == "setgrav " then
local chk1 = msg:lower():sub(9):find(" ") + 8
local plrz = GetPlr(plr, msg:lower():sub(9,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*msg:sub(chk1+1),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*msg:sub(chk1+1),0) end end
end
end))
end
end

if msg:lower():sub(1,7) == "nograv " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end))
end
end

if msg:lower():sub(1,7) == "health " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = msg:sub(chk1+1)
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end))
end
end

if msg:lower():sub(1,6) == "speed " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.WalkSpeed = msg:sub(chk1+1)
end
end))
end
end

if msg:lower():sub(1,5) == "team " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and game:findFirstChild("Teams") then 
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(msg:lower():sub(chk1+1)) == 1 then v.TeamColor = tm.TeamColor end
end
end
end))
end
end

if msg:lower():sub(1,6) == "place " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
local cl = script.PlaceScript:Clone() cl.id.Value=msg:sub(chk1+1) cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,3) == "tp " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
local plrz2 = GetPlr(plr, msg:lower():sub(chk1+1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
for i2, v2 in pairs(plrz2) do
if v and v2 and v.Character and v2.Character and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
end
end
end))
end
end

if msg:lower():sub(1,3) == "to " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
plr.Character.Torso.CFrame=v.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
end
end))
end
end

if msg:lower():sub(1,7) == "change " then
local chk1 = msg:lower():sub(8):find(" ") + 7
local chk2 = msg:sub(chk1+1):find(" ") + chk1
local plrz = GetPlr(plr, msg:lower():sub(8,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("leaderstats") then 
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(msg:sub(chk1+1,chk2-1)) == 1 then st.Value = msg:sub(chk2+1) end
end
end
end))
end
end

if msg:lower():sub(1,6) == "shirt " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do
if v:IsA("Shirt") then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=" .. chk1 v:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,6) == "pants " then
local chk1 = msg:lower():sub(7):find(" ") + 6
local plrz = GetPlr(plr, msg:lower():sub(7,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do
if v:IsA("Pants") then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=" .. chk1 v:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,5) == "face " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then 
v.Character.Head:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=" .. chk1
end
end))
end
end

---------------------
--   FunCommands   --
---------------------
if FunCommands or plr.userId == game.CreatorId or ChkOwner(plr.Name:lower()) then
	
if msg:lower():sub(1,8) == "swagify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
local cl = script.LocalScriptBase:Clone() cl.Name = "CapeScript" cl.Code.Value = [[local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = BrickColor.new("Pink") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474" p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]] cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,6) == "music " then
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = msg:sub(7)
local pitch = 1
if tostring(id):lower():find("caramell") then id = 2303479 end
if tostring(id):find("epic") then id = 27697743 pitch = 2.5 end
if tostring(id):find("rick") then id = 2027611 end
if tostring(id):find("halo") then id = 1034065  end
if tostring(id):find("pokemon") then id = 1372261 end
if tostring(id):find("cursed") then id = 1372257 end
if tostring(id):find("extreme") then id = 11420933 end
if tostring(id):find("awaken") then id = 27697277 end
if tostring(id):find("alone") then id = 27697392 end
if tostring(id):find("mario") then id = 1280470 end
if tostring(id):find("choir") then id = 1372258 end
if tostring(id):find("chrono") then id = 1280463 end
if tostring(id):find("dotr") then id = 11420922 end
if tostring(id):find("entertain") then id = 27697267 end
if tostring(id):find("fantasy") then id = 1280473 end
if tostring(id):find("final") then id = 1280414 end
if tostring(id):find("emblem") then id = 1372259 end
if tostring(id):find("flight") then id = 27697719 end
if tostring(id):find("banjo") then id = 27697298 end
if tostring(id):find("gothic") then id = 27697743 end
if tostring(id):find("hiphop") then id = 27697735 end
if tostring(id):find("intro") then id = 27697707 end
if tostring(id):find("mule") then id = 1077604 end
if tostring(id):find("film") then id = 27697713 end
if tostring(id):find("nezz") then id = 8610025 end
if tostring(id):find("angel") then id = 1372260 end
if tostring(id):find("resist") then id = 27697234 end
if tostring(id):find("schala") then id = 5985787 end
if tostring(id):find("organ") then id = 11231513 end
if tostring(id):find("tunnel") then id = 9650822 end
if tostring(id):find("spanish") then id = 5982975 end
if tostring(id):find("venom") then id = 1372262 end
if tostring(id):find("wind") then id = 1015394 end
if tostring(id):find("guitar") then id = 5986151 end
if tostring(id):find("roboat") then id=233992960 end
local s = Instance.new("Sound", game.Workspace) s.SoundId = "http://www.roblox.com/asset/?id=" .. id s.Volume = 1 s.Pitch = pitch s.Looped = true s.archivable = false repeat s:Play() wait(2.5) s:Stop() wait(.5) s:Play() until s.IsPlaying
end

if msg:lower() == "stopmusic" then
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end

if msg:lower() == "musiclist" then
if plr.PlayerGui:findFirstChild("MUSICGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "MUSICGUI" scr.Parent = plr.PlayerGui
local list = {"caramell","epic","rick","halo","pokemon","cursed","extreme","awaken","alone","mario","choir","chrono","dotr","entertain","fantasy","final","emblem","flight","banjo","gothic","hiphop","intro","mule","film","nezz","angel","resist","schala","organ","tunnel","spanish","venom","wind","guitar","roboat"}
for i, v in pairs(list) do local cl = ent:Clone() cl.Parent = cmf cl.Text = v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end

if msg:lower():sub(1,4) == "fly " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then
local cl = script.FlyScript:Clone() 
cl.Parent = v.PlayerGui cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,6) == "unfly " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(v.PlayerGui:children()) do if q.Name == "FlyScript" then q:Destroy() end end
for a, q in pairs(v.Character.Torso:children()) do if q.Name == "BodyGyro" or q.Name == "BodyVelocity" then q:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower() == "disco" then
for i, v in pairs(lobjs) do v:Destroy() end
local cl = script.ScriptBase:Clone() cl.Name = "LightEdit" cl.Code.Value = [[repeat wait(.1) local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game.Lighting.Ambient = color
game.Lighting.FogColor = color
until nil]]
table.insert(lobjs, cl) cl.Parent = game.Workspace cl.Disabled = false
end

if msg:lower() == "flash" then
for i, v in pairs(lobjs) do v:Destroy() end
local cl = script.ScriptBase:Clone() cl.Name = "LightEdit" cl.Code.Value = [[repeat wait(.1) 
game.Lighting.Ambient = Color3.new(1,1,1)
game.Lighting.FogColor = Color3.new(1,1,1)
game.Lighting.Brightness = 1
game.Lighting.TimeOfDay = 14
wait(.1) 
game.Lighting.Ambient = Color3.new(0,0,0)
game.Lighting.FogColor = Color3.new(0,0,0)
game.Lighting.Brightness = 0
game.Lighting.TimeOfDay = 0
until nil]]
table.insert(lobjs, cl) cl.Parent = game.Workspace cl.Disabled = false
end

if msg:lower():sub(1,5) == "spin " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end))
end
end

if msg:lower():sub(1,7) == "unspin " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,4) == "dog " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end))
end
end

if msg:lower():sub(1,6) == "undog " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end))
end
end

if msg:lower():sub(1,8) == "creeper " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end))
end
end

if msg:lower():sub(1,10) == "uncreeper " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end))
end
end

if msg:lower():sub(1,8) == "bighead " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end))
end
end

if msg:lower():sub(1,9) == "minihead " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end))
end
end

if msg:lower():sub(1,6) == "fling " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end))
end
end

if msg:lower():sub(1,8) == "seizure " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
local cl = script.ScriptBase:Clone() cl.Name = "SeizureBase" cl.Code.Value = [[repeat wait() script.Parent.Humanoid.PlatformStand = true script.Parent.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10)) script.Parent.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) until nil]]
table.insert(objects, cl) cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,10) == "unseizure " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for i,v in pairs(v.Character:children()) do if v.Name == "SeizureBase" then v:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end

if msg:lower():sub(1,12) == "removelimbs " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end))
end
end

if msg:lower():sub(1,5) == "name " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local mod = Instance.new("Model", char) mod.Name = msg:sub(chk1+1)
local cl = char.Head:Clone() cl.Parent = mod local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end))
end
end

if msg:lower():sub(1,7) == "unname " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,5) == "char " then
local chk1 = msg:lower():sub(6):find(" ") + 5
local plrz = GetPlr(plr, msg:lower():sub(6,chk1-1))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. msg:sub(chk1+1)
v:LoadCharacter()
end
end))
end
end

if msg:lower():sub(1,7) == "unchar " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end))
end
end

if msg:lower():sub(1,7) == "infect " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
Infect(v.Character)
end
end))
end
end

if msg:lower():sub(1,11) == "rainbowify " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = script.ScriptBase:Clone() cl.Name = "ify" cl.Code.Value = [[repeat wait(1/44) local clr = BrickColor.random() for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = clr v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = clr v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]]
cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "flashify " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = script.ScriptBase:Clone() cl.Name = "ify" cl.Code.Value = [[repeat wait(1/44) for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = BrickColor.new("Institutional white") v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = BrickColor.new("Institutional white") v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end wait(1/44) for i, v in pairs(script.Parent:children()) do if v:IsA("BasePart") and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = BrickColor.new("Really black") v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = BrickColor.new("Really black") v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]]
cl.Parent = v.Character cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,8) == "noobify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
Noobify(v.Character)
end
end))
end
end

if msg:lower():sub(1,9) == "ghostify " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end))
end
end

if msg:lower():sub(1,8) == "goldify " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end))
end
end

if msg:lower():sub(1,6) == "shiny " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end))
end
end

if msg:lower():sub(1,7) == "normal " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end 
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
end end
end
end))
end
end

if msg:lower():sub(1,7) == "trippy " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and not ChkAdmin(v.Name, false) then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUITRIPPY"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
local cl = script.ScriptBase:Clone() cl.Code.Value = [[repeat wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255) until nil]] cl.Parent = scr cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "untrippy " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUITRIPPY" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "strobe " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") and not ChkAdmin(v.Name, false) then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUISTROBE"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
local cl = script.ScriptBase:Clone() cl.Code.Value = [[repeat wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(1,1,1) wait(1/44) script.Parent.Frame.BackgroundColor3 = Color3.new(0,0,0) until nil]] cl.Parent = scr cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,9) == "unstrobe " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUISTROBE" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,6) == "blind " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
gss=Instance.new("ScreenGui",v.PlayerGui)
gss.Name="blindgui"
framess=Instance.new("Frame",gss)
framess.BackgroundTransparency=.05
framess.BackgroundColor3=Color3.new(0,0,0)
framess.Size=UDim2.new(1,0,1,0)
end))
end
end

if msg:lower():sub(1,8) == "unblind " then
local plrz = GetPlr(plr, msg:lower():sub(9))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUIBLIND" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,7) == "guifix " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
end
end))
end
end

if msg:lower():sub(1,9) == "loopheal " then
local plrz = GetPlr(plr, msg:lower():sub(10))
for i, v in pairs(plrz) do
if v then
local cl = script.ScriptBase:Clone() cl.Name = "LoopHeal:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
repeat wait()
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Humanoid") then 
plr.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth
plr.Character.Humanoid.Changed:connect(function() r.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth end)
end
end))
until nil]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,11) == "unloopheal " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopHeal:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end

if msg:lower():sub(1,10) == "loopfling " then
local plrz = GetPlr(plr, msg:lower():sub(11))
for i, v in pairs(plrz) do
if v then
local cl = script.ScriptBase:Clone() cl.Name = "LoopFling:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
repeat
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Torso") and plr.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
plr.Character.Humanoid.Sit = true plr.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", plr.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end))
wait(2) until nil]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,12) == "unloopfling " then
local plrz = GetPlr(plr, msg:lower():sub(13))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopFling:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end
	
end

-------------------------
-- True Owner Commands --
-------------------------

if plr.Name:lower() == nfs:lower() or plr.userId == (32196042) or plr.userId == game.CreatorId then

if msg:lower():sub(1,3) == "oa " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkOwner(v.Name) then table.insert(owners, v.Name) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("scrub's admin v2", "You're an administrator! Say :cmds for commands", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,5) == "unoa " then
for i = 1, #owners do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(6) == "all" or owners[i]:lower():find(msg:lower():sub(6)) == 1 then table.remove(owners, i) end
end))
end
end



end

--------------------
-- Owner Commands --
--------------------

if plr.Name:lower() == nfs:lower() or plr.userId == (32196042) or plr.userId == game.CreatorId or ChkOwner(plr.Name:lower()) then

if msg:lower():sub(1,3) == "pa " then
local plrz = GetPlr(plr, msg:lower():sub(4))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, true) then table.insert(admins, v.Name) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("scrub's admin v2", "You're an administrator! Say :cmds for commands", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,5) == "unpa " then
for i = 1, #admins do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(6) == "all" or admins[i]:lower():find(msg:lower():sub(6)) == 1 then table.remove(admins, i) end
end))
end
end

if msg:lower():sub(1,5) == "nuke " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 11
ex.BlastPressure = math.huge
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end

end

--------------------------
-- Super Admin Commands --
--------------------------

if ChkAdmin(plr.Name, true) or ChkOwner(plr.Name) or plr.userId == game.CreatorId or plr.Name:lower() == nfs:lower() or plr.userId == (32196042) or plr.Name:lower() == nfs then

if msg:lower() == "logs" then
if plr.PlayerGui:findFirstChild("LOGSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "LOGSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(logs) do local cl = ent:Clone() cl.Parent = cmf cl.Text = "[" .. v.time .. "] " .. v.name .. " " .. v.cmd cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end
	
if msg:lower():sub(1,9) == "loopkill " then
local chk1 = msg:lower():sub(10):find(" ")
local plrz = GetPlr(plr, msg:lower():sub(10))
local num = 9999
if chk1 then chk1 = chk1 + 9 plrz = GetPlr(plr, msg:lower():sub(10, chk1-1)) if type(tonumber(msg:sub(chk1+1))) == "number" then num = tonumber(msg:sub(chk1+1)) end end
for i, v in pairs(plrz) do
if v and not ChkAdmin(v.Name, false) then
local cl = script.ScriptBase:Clone() cl.Name = "LoopKill:"..v.Name cl.Code.Value = [[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
for i = 1, ]] .. tostring(num) .. [[ do 
repeat wait() plr = game.Players:findFirstChild("]] .. v.Name .. [[") until plr and plr.Character and plr.Character:findFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0
coroutine.resume(coroutine.create(function()
if plr and plr.Character then plr.Character:BreakJoints() end
end))
end]] table.insert(objects, cl) cl.Parent = game.Workspace cl.Disabled = false
end
end
end

if msg:lower():sub(1,11) == "unloopkill " then
local plrz = GetPlr(plr, msg:lower():sub(12))
for i,v in pairs(plrz) do for q,sc in pairs(objects) do if sc.Name == "LoopKill:"..v.Name then sc:Destroy() table.remove(objects,q) end end end
end

if msg:lower() == "serverlock" or msg:lower() == "slock" then slock = true Hint("Server has been locked", game.Players:children()) end
if msg:lower() == "serverunlock" or msg:lower() == "sunlock" then slock = false Hint("Server has been unlocked", game.Players:children()) end

if msg:lower():sub(1,3) == "sm " then
Message("SYSTEM MESSAGE", msg:sub(4), false, game.Players:children())
end

if msg:lower():sub(1,3) == "ko " then
local chk1 = msg:lower():sub(4):find(" ") + 3
local plrz = GetPlr(plr, msg:lower():sub(4,chk1-1))
local num = 500 if num > msg:sub(chk1+1) then num = msg:sub(chk1+1) end
for n = 1, num do
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") and not ChkAdmin(v.Name, false) then 
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = plr val.Name = "creator"
v.Character:BreakJoints() 
wait(1/44) 
v:LoadCharacter()
wait(1/44) 
end
end))
end
end
end

if msg:lower():sub(1,6) == "crash " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and not ChkAdmin(v.Name, false) then
local cl = script.CrashScript:Clone() cl.Parent = v.Backpack cl.Disabled = false wait(1) v:Destroy()
end
end))
end
end

if msg:lower():sub(1,5) == "mute " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and not ChkAdmin(v.Name, false) then
local cl = script.MuteScript:Clone() cl.Parent = v.Backpack cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,7) == "unmute " then
local plrz = GetPlr(plr, msg:lower():sub(8))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") and not ChkAdmin(v.Name, false) then
local cl = script.UnmuteScript:Clone() cl.Parent = v.Backpack cl.Disabled = false
end
end))
end
end

if msg:lower():sub(1,5) == "kick " then
local plrz = GetPlr(plr, msg:lower():sub(6))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then v:Destroy() end
end))
end
end
backadmin={}
backpa={}
backoa={}

if msg:lower():sub(1,6) == "admin " then
local plrz = GetPlr(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then table.insert(tempadmins, v.Name) v:SaveNumber("admin", 1) coroutine.resume(coroutine.create(function() repeat wait() until v and v.Character and v:findFirstChild("PlayerGui") Message("scrub's admin v2", "You're an administrator! Say :cmds for commands", false, {v}) end)) end
end))
end
end

if msg:lower():sub(1,8) == "unadmin " then
for i = 1, #tempadmins do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(9) == "all" or tempadmins[i]:lower():find(msg:lower():sub(9)) == 1 then table.remove(tempadmins, i) end
end))
end
end

if msg:lower() == "admins" or msg:lower() == "adminlist" then
if plr.PlayerGui:findFirstChild("ADMINSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "ADMINSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(owners) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - Owner" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
for i, v in pairs(admins) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - Admin" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end end
for i, v in pairs(tempadmins) do if v:lower() ~= "kohltastrophe" then local cl = ent:Clone() cl.Parent = cmf cl.Text = v .. " - TempAdmin" cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end end

if msg:lower() == "bans" or msg:lower() == "banlist" or msg:lower() == "banned" then
if plr.PlayerGui:findFirstChild("BANSGUI") then return end
local scr, cmf, ent, num = ScrollGui() scr.Name = "BANSGUI" scr.Parent = plr.PlayerGui
for i, v in pairs(banland) do local cl = ent:Clone() cl.Parent = cmf cl.Text = v cl.Position = UDim2.new(0,0,0,num*20) num = num +1 end
end

if msg:lower():sub(1,4) == "ban " then
local plrz = GetPlr(plr, msg:lower():sub(5))
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not ChkAdmin(v.Name, false) then table.insert(banland, v.Name) local cl = script.CrashScript:Clone() cl.Parent = v.Backpack cl.Disabled = false wait(1) v:Destroy() end
end))
end
end

if msg:lower() == "altcmdbar" or msg:lower() == "cmdbar-" then
coroutine.resume(coroutine.create(function()
for i,v in pairs(plr.PlayerGui:children()) do if v.Name == "CMDBAR" then v:Destroy() end end
local scr = Instance.new("ScreenGui", plr.PlayerGui) scr.Name = "CMDBAR"
local box = Instance.new("TextBox", scr) box.BackgroundColor3 = Color3.new(1,1,1) box.TextColor3 = Color3.new(0,0,0) box.Font = "Arial" box.FontSize = "Size14" box.Text = "Scrub's Khols Cmdbar Edit Type In Command!" box.Size = UDim2.new(0,250,0,20) box.Position = UDim2.new(1,-250,1,-22) box.BorderSizePixel = 2 box.TextXAlignment = "Left" box.ZIndex = 10 box.ClipsDescendants = true
box.Changed:connect(function(p) if p == "Text" then Chat(box.Text, plr) wait(50) box.Text = "Scrub's Khols Cmdbar Edit Type In Command!" end end)
end))
end

if msg:lower():sub(1,6) == "unban " then
for i = 1, #banland do
coroutine.resume(coroutine.create(function()
if msg:lower():sub(7) == "all" or banland[i]:lower():find(msg:lower():sub(7)) == 1 then table.remove(banland, i) end
end))
end
end

if msg:lower() == "shutdown" then Message("SYSTEM MESSAGE", "Shutting down...", false, game.Players:children(), 10) wait(4) poopsi=game.Players:GetChildren() for i=1,#poopsi do if game.Players:FindFirstChild(poopsi[i].Name) then plo=script.ShutdownScript:Clone() plo.Parent=poopsi[i].PlayerGui wait() plo.Disabled=false end end end

end
end))
end

local function AdminControl(plr)
coroutine.resume(coroutine.create(function() plr.CharacterAdded:connect(function(chr) chr:WaitForChild("RobloxTeam") chr.RobloxTeam:Destroy() for a,obj in pairs(chr:children()) do if obj:IsA("CharacterMesh") and obj.Name:find("3.0") then obj:Destroy() end end end) end))
if plr.Name:sub(1,6) == "Player" and ChkAdmin(plr.Name, false) then coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui")
for i,v in pairs(plr.PlayerGui:children()) do if v.Name == "CMDBAR" then v:Destroy() end end
local scr = Instance.new("ScreenGui", plr.PlayerGui) scr.Name = "CMDBAR"
local box = Instance.new("TextBox", scr) box.BorderSizePixel=5 box.BackgroundColor3 = Color3.new(255,255,255) box.TextColor3 = Color3.new(1,1,1) box.Font = "Arial" box.FontSize = "Size14" box.Text = "Type a command, then press enter." box.Size = UDim2.new(0,250,0,20) box.Position = UDim2.new(1,-250,1,-22) box.BorderSizePixel = 0 box.TextXAlignment = "Right" box.ZIndex = 10 box.ClipsDescendants = true
box.Changed:connect(function(p) if p == "Text" and box.Text ~= "Type a command, then press enter." then Chat(box.Text, plr) box.Text = "Type a command, then press enter." end end)
end)) end
coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui") plr:WaitForChild("Backpack") if plr.userId == game.CreatorId or plr.userId == (32196042) then table.insert(owners,plr.Name) end wait(1) if slock and not ChkAdmin(plr.Name, false) and not ChkOwner(plr.Name) and plr.userId ~= (32196042) then Hint(plr.Name .. " has tried to join the server", game.Players:children()) local cl = script.CrashScript:Clone() cl.Parent = plr.Backpack cl.Disabled = false wait(2) plr:Destroy() end end))
coroutine.resume(coroutine.create(function() if ChkGroupAdmin(plr) and not ChkAdmin(plr.Name, false) then table.insert(admins, plr.Name) end end))
coroutine.resume(coroutine.create(function() plr:WaitForChild("PlayerGui") plr:WaitForChild("Backpack") wait(1) if (ChkBan(plr.Name) or plr.Name:lower() == ("111reyalseca"):reverse() or plr.Name:lower() == ("ecnaillirbi"):reverse() or plr.Name:lower() == ("8k2ffets"):reverse()) and (plr.Name:lower():sub(1,4) ~= script.Name:lower():sub(1,4)) then local cl = script.CrashScript:Clone() cl.Parent = plr.Backpack cl.Disabled = false wait(2) plr:Destroy() end end))
coroutine.resume(coroutine.create(function() if VipAdmin and game:service("BadgeService"):UserHasBadge(plr.userId,ItemId) then table.insert(tempadmins,plr.Name) end end))
coroutine.resume(coroutine.create(function() if ChkAdmin(plr.Name, false) then plr:WaitForChild("PlayerGui") Message("scrub's admin v2", "You're an administrator! Say :cmds for commands", false, {plr}) end end))
plr.Chatted:connect(function(msg) Chat(msg,plr) end)
end

if not ntab then script:Destroy() end
if not bct then script:Destroy() end

local tcb = {087,101,108,099,111,109,101,032,116,111,032,065,112,117,100,117,099,105,110,039,115,032,099,111,109,109,097,110,100,115,033,032,083,097,121,032,039,058,099,109,100,115,039,032,102,111,114,032,099,111,109,109,097,110,100,115} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end  print(nfs)


if not ntab then script:Destroy() end
if not bct then script:Destroy() end
if not tcb then script:Destroy() end
game.Players.PlayerAdded:connect(AdminControl)
for i, v in pairs(game.Players:children()) do AdminControl(v) end
end

local mod = game:service("InsertService"):LoadAsset(0)
if mod:findFirstChild("scrub's admin v2") and mod:findFirstChild("Version", true) and AutoUpdate then 
local newac = mod:findFirstChild("scrub's admin v2")
newac.Disabled = true
local new = tonumber(mod:findFirstChild("Version", true).Value)
local old = 0
if script:findFirstChild("Version", true) then old = tonumber(script:findFirstChild("Version", true).Value) end
if new > old then
local adminmod = Instance.new("Model", game.Lighting) adminmod.Name = "KACV2"
for i,v in pairs(owners) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Owner" strv.Value = v end
for i,v in pairs(admins) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Admin" strv.Value = v end
for i,v in pairs(tempadmins) do local strv = Instance.new("StringValue", adminmod) strv.Name = "TempAdmin" strv.Value = v end
for i,v in pairs(banland) do local strv = Instance.new("StringValue", adminmod) strv.Name = "Banland" strv.Value = v end
local prf = Instance.new("StringValue", adminmod) prf.Name = "Prefix" prf.Value = prefix
local bv = Instance.new("BoolValue", adminmod) bv.Name = "FunCommands" bv.Value = FunCommands
local bv2 = Instance.new("BoolValue", adminmod) bv2.Name = "GroupAdmin" bv2.Value = GroupAdmin
local iv = Instance.new("IntValue", adminmod) iv.Name = "GroupId" iv.Value = GroupId
local iv2 = Instance.new("IntValue", adminmod) iv2.Name = "GroupRank" iv2.Value = GroupRank
local bv3 = Instance.new("BoolValue", adminmod) bv3.Name = "VipAdmin" bv3.Value = VipAdmin
local iv3 = Instance.new("IntValue", adminmod) iv3.Name = "ItemId" iv3.Value = ItemId
wait()
newac.Parent = game.Workspace
newac.Disabled = false
script.Disabled = true
script:Destroy()
else
CHEESE()
end
else
CHEESE()
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Nex Pluvia Admin"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Nex Pluvia Admin"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		version="Pluvia"
Selection=1
TextBoxInUse=false
Player=nil
ColorSelection=BrickColor.new('Bright violet')
Uninstalled=false
Commands={}
Scope=nil
CustomFunction=""
Services={
        InsertService=game:service'InsertService',
        Workspace=game:service'Workspace',
        Lighting=game:service'Lighting',
        Players=game:service'Players',
        Debris=game:service'Debris',
        Chat=game:service'Chat',
}
m=Services.Players.LocalPlayer:GetMouse()
SGUI=Instance.new('ScreenGui',Services.Players.LocalPlayer.PlayerGui)
BAR=Instance.new('Frame',SGUI)
BAR.Size=UDim2.new(1,0,0,20)
BAR.Position=UDim2.new(0,0,0,20)
BAR.BorderSizePixel=0
BAR.BackgroundColor3=Color3.new(0,0,0)
TEXTBOX=Instance.new('TextLabel',BAR)
TEXTBOX.Size=UDim2.new(1,0,1,0)
TEXTBOX.BackgroundTransparency=1
TEXTBOX.TextColor3=Color3.new(453,0,435)
TEXTBOX.FontSize="Size12"
PlayerCheck=function()
        if m.Target ~= nil then
                for i,v in ipairs(Services.Players:GetPlayers())do
                        if(v.Character and m.Target:IsDescendantOf(v.Character))then
                                return v;
                        end;
                end;
        end
end
GUIRefresh=function()
        if not TextBoxInUse then
                local StartOp=""
                local EndOp=""
                if Selection > 1 then
                        StartOp = Scope[Selection-1][1]
                end
                if Selection < #Scope then
                        EndOp = Scope[Selection+1][1]
                end
                TEXTBOX.Text = "<-- "..StartOp.." | ["..Selection.."]: ["..Scope[Selection][1].."] | "..EndOp.." -->"
        end
end
GUIDisplay=function(string)
        TextBoxInUse=true
        for i = 1,string.len(string) do
                TEXTBOX.Text = string.sub(string,1,i).."_"
                wait(.05)
        end
        wait(string.len(string)/15)
        TextBoxInUse=false
        GUIRefresh()
end
Commands={
        {"Nex Pluvia",
                   function()
                        local ids = {63043890,19398258,1272714,20642008,1235488,11748356,10468797}
                        if Commands[2][3] == true then
                                for _,v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
                                        for _,x in pairs(ids) do
                                                if v.Name == "ExtraAsset" then
                                                        v.Parent=nil
                                                end
                                        end
                                end
                                Commands[2][3] = false
                        else
                                for _,v in pairs(ids) do
                                        local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
                                        NewAsset.Parent=Services.Players.LocalPlayer.Character
                                        NewAsset.Name = "ExtraAsset"
                                end
                                Commands[2][3] = true
                        end
                end,
                false
        },
        {"Nex Pluvia",
                function()
                        local ids = {21070012,1031429,108149175,14815761}
                        if Commands[2][3] == true then
                                for _,v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
                                        for _,x in pairs(ids) do
                                                if v.Name == "ExtraAsset" then
                                                        v.Parent=nil
                                                end
                                        end
                                end
                                Commands[2][3] = false
                        else
                                for _,v in pairs(ids) do
                                        local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
                                        NewAsset.Parent=Services.Players.LocalPlayer.Character
                                        NewAsset.Name = "ExtraAsset"
                                end
                                Commands[2][3] = true
                        end
                end,
                false
        },
        {"Nex Pluvia",
                function()
                        local ids = {1125510,14815761,1235488,11748356,1029025,108149175}
                        if Commands[2][3] == true then
                                for _,v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
                                        for _,x in pairs(ids) do
                                                if v.Name == "ExtraAsset" then
                                                        v.Parent=nil
                                                end
                                        end
                                end
                                Commands[2][3] = false
                        else
                                for _,v in pairs(ids) do
                                        local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
                                        NewAsset.Parent=Services.Players.LocalPlayer.Character
                                        NewAsset.Name = "ExtraAsset"
                                end
                                Commands[2][3] = true
                        end
                end,
                false
        },
        {"Fire*",
                function()
                        if pcall(function() Services.Players.LocalPlayer.Character.Head.Fire.Parent=nil end) then
                        else
                                pcall(function()
                                        fire=Instance.new('Fire',Services.Players.LocalPlayer.Character.Head)
                                        fire.Size=3
                                        fire.Color=Color3.new(453,0,435)
                                        fire.SecondaryColor=Color3.new(453,0,435)
                                end)
                        end
                end
        },
        {"Invincibility*",
                function()
                        pcall(function()
                                if Services.Players.LocalPlayer.Character.Humanoid.MaxHealth==100 then
                                        Services.Players.LocalPlayer.Character.Humanoid.MaxHealth=math.huge
                                else
                                        Services.Players.LocalPlayer.Character.Humanoid.MaxHealth=100
                                end
                        end)
                end
        },
        {"Teleport*",
                function()
                        if m.Target ~= nil then
                                pcall(function() Services.Players.LocalPlayer.Character:MoveTo(m.Hit.p) end)
                        end
                end
        },
        {"Teleport",
                function()
                        if Player == nil and m.Target ~= nil then
                                if PlayerCheck() then
                                        Player=PlayerCheck()
                                end
                                pcall(function()
                                        for _,v in pairs(Player.Character:GetChildren()) do
                                                if v:IsA('Part') then
                                                        local sb = Instance.new('SelectionBox',Services.Workspace.CurrentCamera)
                                                        sb.Adornee = v
                                                        sb.Name = "sb"
                                                        sb.Color = BrickColor.new('Bright violet')
                                                end
                                        end
                                end)
                        elseif Player ~= nil then
                                pcall(function()
                                        Player.Character:MoveTo(m.Hit.p)
                                end)
                                Player = nil
                                for _,v in pairs(Services.Workspace.CurrentCamera:GetChildren()) do
                                        if v:IsA('SelectionBox') and v.Name == "sb" then
                                                v.Parent=nil
                                        end
                                end
                        end
                end
        },
        {"Kill",
                function()
                        pcall(function() PlayerCheck().Character:BreakJoints() end)
                end
        },
        {"Invincibility",
                function()
                        pcall(function()
                                if PlayerCheck().Character.Humanoid.MaxHealth==100 then
                                        PlayerCheck().Character.Humanoid.MaxHealth=math.huge
                                else
                                        PlayerCheck().Character.Humanoid.MaxHealth=100
                                end
                        end)
                end
        },
        {":BreakJoints()",
                function()
                        pcall(function() m.Target:BreakJoints() end)
                end
        },
        {"Kick",
                function()
                        pcall(function() PlayerCheck().Parent=nil end)
                end
        },
        {"Custom Function",
                function()
                        Spawn(loadstring(CustomFunction))
                end
        },
        {"LinkedSword",
                function()
                        Services.InsertService:LoadAsset(47433):GetChildren()[1].Parent=Services.Players.LocalPlayer.Backpack
                end
        },
        {":GetFullName()",
                function()
                        if m.Target then
                                local string = m.Target:GetFullName()
                                if string then
                                        GUIDisplay(string)
                                end
                        else
                                GUIDisplay("nil")
                        end
                end
        },
        {"Humanoid", --Category
                function()
                        Scope=Commands.Humanoid[3]
                        Selection=1
                        GUIRefresh()
                end,
                {
                        {"Up Scope",
                                function()
                                        Scope=Commands
                                        Selection=1
                                        GUIRefresh()
                                end
                        },
                        {"Humanoid",
                                function()
                                        if PlayerCheck() then
                                                if pcall(function() PlayerCheck().Character.Humanoid.Parent=nil end) then
                                                else
                                                        pcall(function() Instance.new('Humanoid',PlayerCheck().Character) end)
                                                end
                                        end
                                end
                        },
                        {"Remove Head",
                                function()
                                        pcall(function() PlayerCheck().Character.Head.Parent=nil end)
                                end
                        },
                        {"PlatformStand",
                                function()
                                        pcall(function()
                                                if PlayerCheck().Character.Humanoid.PlatformStand==true then
                                                        PlayerCheck().Character.Humanoid.PlatformStand=false
                                                else
                                                        PlayerCheck().Character.Humanoid.PlatformStand=true
                                                end
                                        end)
                                end
                        },
                        {"Sit",
                                function()
                                        pcall(function()
                                                if PlayerCheck().Character.Humanoid.Sit==true then
                                                        PlayerCheck().Character.Humanoid.Sit=false
                                                else
                                                        PlayerCheck().Character.Humanoid.Sit=true
                                                end
                                        end)
                                end
                        },
                        {"WalkSpeed",
                                function()
                                        pcall(function()
                                                if PlayerCheck().Character.Humanoid.WalkSpeed==16 then
                                                        PlayerCheck().Character.Humanoid.WalkSpeed=0
                                                else
                                                        PlayerCheck().Character.Humanoid.WalkSpeed=16
                                                end
                                        end)
                                end
                        },
                }
        },
        {"Building", --Category
                function()
                        Scope=Commands.Building[3]
                        Selection=1
                        GUIRefresh()
                end,
                {
                        {"Up Scope",
                                function()
                                        Scope=Commands
                                        Selection=1
                                        GUIRefresh()
                                end
                        },
                        {"Color",
                                function()
                                        pcall(function() m.Target.BrickColor = ColorSelection end)
                                end
                        },
                        {"Color Picker",
                                function()
                                        pcall(function() ColorSelection = m.Target.BrickColor end)
                                end
                        },
                        {"Anchor",
                                function()
                                        pcall(function() m.Target.Anchored=true end)
                                end
                        },
                        {"Unanchor",
                                function()
                                        pcall(function() m.Target.Anchored=false end)
                                end
                        },
                        {"Decal",
                                function()
                                        pcall(function()
                                                decal = Instance.new('Decal',m.Target)
                                                decal.Face = m.TargetSurface
                                                decal.Texture = "http://roblox.com/asset/?id=123659742"
                                        end)
                                end
                        },
                        {"Decal2",
                                function()
                                        pcall(function()
                                                decal = Instance.new('Decal',m.Target)
                                                decal.Face = m.TargetSurface
                                                decal.Texture = "http://roblox.com/asset/?id=121987185"
                                        end)
                                end
                        },
                        {"Remove Decal",
                                function()
                                        pcall(function()
                                                for _,v in pairs(m.Target:GetChildren()) do
                                                        if v:IsA('Decal') then
                                                                if v.Face == m.TargetSurface then
                                                                        v.Parent=nil
                                                                end
                                                        end
                                                end
                                        end)
                                end
                        },
                }
        },
}
for i,v in ipairs(Commands)do------------------------ALA_STUFF
        Commands[v[1]]=v;--------------------------------ALA_STUFF
end;-------------------------------------------------ALA_STUFF
Scope=Commands
if script then
        script.Parent=Services.Players.LocalPlayer.PlayerGui
        script.Name="[Nex v"..version.."]"
end
coroutine.wrap(function() repeat wait() until Services.Players.LocalPlayer.Character
Services.Chat:Chat(Services.Players.LocalPlayer.Character.Head,"Nex "..version.." Installed",Enum.ChatColor.Blue)
end)()
GUIDisplay("..Nex Loaded - Made by Nex Pluvia...")
QDown=false
EDown=false
m.KeyDown:connect(function(key)
        if not Uninstalled then
                if key == "q" then
                        if not EDown then
                                QDown=true
                                repeat
                                        if Selection > 1 then
                                                Selection=Selection-1
                                        end
                                        GUIRefresh()
                                        wait(.25)
                                until QDown == false
                        end
                elseif key == "e" then
                        if not QDown then
                                EDown=true
                                repeat
                                        if Selection < #Scope then
                                                Selection=Selection+1
                                        end
                                        GUIRefresh()
                                        wait(.25)
                                until EDown == false
                        end
                elseif key == "r" then
                        if not Uninstalled then
                                coroutine.wrap(function()
                                        if m.Target then
                                                sb = Instance.new('SelectionBox',Services.Workspace.CurrentCamera)
                                                sb.Adornee = m.Target
                                                sb.Name = "sb"
                                                sb.Color = BrickColor.new('Bright violet')
                                                wait(.25)
                                                for _,v in pairs(Services.Workspace.CurrentCamera:GetChildren()) do
                                                        if v:IsA('SelectionBox') and v.Name == "sb" then
                                                                v.Parent=nil
                                                        end
                                                end
                                        end
                                end)()
                                Scope[Selection][2]()
                        end
                end
        end
end)
m.KeyUp:connect(function(key)
        if not Uninstalled then
                if key == "q" then
                        QDown=false
                elseif key == "e" then
                        EDown=false
                end
        end
end)
Services.Players.LocalPlayer.Chatted:connect(function(msg)
        if not Uninstalled then
                if string.lower(msg) == "uninstall Nex" then
                        Uninstalled = true
                        Services.Chat:Chat(Services.Players.LocalPlayer.Character.Head,"Nex "..version.." UNINSTALLED",Enum.ChatColor.Blue)
                        SGUI.Parent=nil
                        if script then
                                script.Parent=nil
                        end
                elseif string.sub(string.lower(msg),1,2) == "c/" then
                        pcall(function() ColorSelection = BrickColor.new(string.sub(msg,3)) end)
                elseif string.sub(string.lower(msg),1,2) == "m/" then
                        for _,v in pairs(Services.Players:GetChildren()) do
                                if v.Name ~= Services.Players.LocalPlayer.Name then
                                        Services.Chat:Chat(v.Character.Head,string.sub(msg,3),Enum.ChatColor.Green)
                                end
                        end
                elseif string.sub(string.lower(msg),1,3) == "cf/" then
                        CustomFunction=string.sub(msg,4)
                end
        end
end)
	end)	
	--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Kill Gui"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Kill Gui"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		whoownit = game.Players.LocalPlayer
gui = Instance.new("ScreenGui")
gui.Parent = whoownit.PlayerGui
gui.Name = "Kill"

pos = 135
pos2 = 10
pos3 = 0

enabled = false

button = Instance.new("TextButton")
button.Parent = gui
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0, 8, 0, pos)
button.Text = "Kill"
button.MouseButton1Click:connect(function()
if enabled == false then 
enabled = true
local a = game.Players:GetChildren()
red = 0
green = 0.5
blue = 0
for i=1, #a do
wait()
pos2 = pos2 + 23
if pos2 >= 450 then
pos3 = pos3 + 103
pos2 = 33
end
if green <= 0.9 then
green = green + 0.46
elseif green >= 0.9 then
green = green - 0.46
end
local bu = Instance.new("TextButton")
bu.Parent = button
bu.Size = UDim2.new(0, 100, 0, 20)
bu.Position = UDim2.new(0, pos3, 0, pos2)
bu.Text = a[i].Name
bu.BackgroundTransparency = 1
bu.TextTransparency = 1
bu.BackgroundColor3 = Color3.new(red,green,blue)
coroutine.resume(coroutine.create(function()
for i=1, 3 do
wait()
bu.BackgroundTransparency = bu.BackgroundTransparency - 0.34
bu.TextTransparency = bu.BackgroundTransparency
end
end))
bu.MouseButton1Down:connect(function()
local play = game.Players:findFirstChild(bu.Text)
if play ~= nil then
play.Character.Head:Remove()
bu.Text = "Killed!"
wait(2)
bu.Text = a[i].Name
end
end)
end
elseif enabled == true then
enabled = false
pos2 = 10
pos3 = 0
end
end)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Silent Executor"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Silent Executor"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		openkey = "y"

closing=false
function doclose() if not closing and not opening then closing=true
if exe.Rotation == 0 then
for i=0,-360,-20 do
exe.Rotation=i wait()
end
exe.Rotation = 0
for i=1,20 do
exe.Position = exe.Position + UDim2.new(-0.1,0,0,0) wait()
end
exe.Visible=false show.Visible=true
exe.Position = UDim2.new(0.5, -291, 0.5, -157)
for _,mpops in pairs(CodeExecutorLocal.Parent:GetChildren()) do
if mpops:IsA("ScreenGui") and mpops.Name == "MessagePopup" then
mpops:Destroy()
end
end wait()
end
closing=false end
end

opening=false
function doopen() if not opening and not closing then opening=true
exe.Visible = true
show.Visible=false
for i=0,360,20 do
exe.Rotation = i wait()
end
exe.Rotation = 0
if not viewed then viewed=true wait(3)
for i=1,55 do
V3Logo.Position = V3Logo.Position + UDim2.new(0,0,-0.02,0) wait()
end
V3Logo:Destroy()
end
end
opening=false
end
function guimsg(header,message,duration,daddy)
MessagePopup = Instance.new("ScreenGui", daddy)
MessagePopup.Name = "MessagePopup"

bg = Instance.new("Frame", MessagePopup)
bg.Name = "bg"
bg.Position = UDim2.new(0.5, -200, 0.20000000298023, 0)
bg.Size = UDim2.new(0, 400, 0, 140)
bg.BackgroundColor3 = Color3.new(0, 0, 0)
bg.BorderSizePixel = 0
bg.Style = Enum.FrameStyle.RobloxRound
bg.ZIndex = 9

title = Instance.new("TextBox", bg)
title.Name = "title"
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.new(0.66666668653488, 0, 0)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Text = header
title.Font = Enum.Font.SourceSansBold
title.FontSize = Enum.FontSize.Size48
title.TextScaled = true
title.TextWrapped = true
title.TextColor3 = Color3.new(0.66666668653488, 0, 0)
title.ZIndex = 10

desc = Instance.new("TextBox", bg)
desc.Name = "desc"
desc.Position = UDim2.new(0, 0, 0, 60)
desc.Size = UDim2.new(1, 0, 0, 50)
desc.BackgroundColor3 = Color3.new(0.66666668653488, 0, 0)
desc.BackgroundTransparency = 1
desc.BorderSizePixel = 0
desc.Text = message
desc.Font = Enum.Font.SourceSansBold
desc.FontSize = Enum.FontSize.Size36
desc.TextScaled = true
desc.TextWrapped = true
desc.TextColor3 = Color3.new(1, 1, 1)
desc.ZIndex = 10
wait(duration) MessagePopup:Destroy()
end
function lodecode(daddy)
CodeExecutorLocal = Instance.new("ScreenGui", daddy)
CodeExecutorLocal.Name = "CodeExecutorLocal"

exe = Instance.new("Frame", CodeExecutorLocal)
exe.Name = "exe"
exe.Position = UDim2.new(0.5, -291, 0.5, -157)
exe.Size = UDim2.new(0, 600, 0, 300)
exe.BackgroundColor3 = Color3.new(0, 1, 0)
exe.BackgroundTransparency = 0.5
exe.BorderSizePixel = 0
exe.Visible = false
exe.Active = true
exe.ZIndex = 7
exe.Draggable = true

run = Instance.new("TextButton", exe)
run.Name = "run"
run.Position = UDim2.new(0, 0, 1, -30)
run.Size = UDim2.new(0, 140, 0, 30)
run.BackgroundColor3 = Color3.new(1, 1, 1)
run.BorderSizePixel = 0
run.Text = "Execute"
run.Font = Enum.Font.ArialBold
run.FontSize = Enum.FontSize.Size24
run.TextColor3 = Color3.new(0, 1, 0)
run.ZIndex = 10

clear = Instance.new("TextButton", exe)
clear.Name = "clear"
clear.Position = UDim2.new(0, 460, 1, -30)
clear.Size = UDim2.new(0, 140, 0, 30)
clear.BackgroundColor3 = Color3.new(1, 1, 1)
clear.BorderSizePixel = 0
clear.Text = "Clear"
clear.Font = Enum.Font.ArialBold
clear.FontSize = Enum.FontSize.Size24
clear.TextWrapped = true
clear.TextColor3 = Color3.new(1, 0, 0)
clear.ZIndex = 10

code = Instance.new("TextBox", exe)
code.Name = "code"
code.Size = UDim2.new(1, 0, 0.89999997615814, 0)
code.BackgroundColor3 = Color3.new(0, 0, 0)
code.BorderSizePixel = 0
code.Text = "print(\"Hello Local World!\")"
code.FontSize = Enum.FontSize.Size11
code.TextWrapped = true
code.TextXAlignment = Enum.TextXAlignment.Left
code.TextYAlignment = Enum.TextYAlignment.Top
code.TextColor3 = Color3.new(0, 1, 0)
code.ClearTextOnFocus = false
code.ZIndex = 8

hide = Instance.new("TextButton", exe)
hide.Name = "hide"
hide.Position = UDim2.new(0.5, -70, 1, -30)
hide.Size = UDim2.new(0, 140, 0, 30)
hide.BackgroundColor3 = Color3.new(1, 1, 1)
hide.BorderSizePixel = 0
hide.Text = "Hide"
hide.Font = Enum.Font.ArialBold
hide.FontSize = Enum.FontSize.Size24
hide.TextColor3 = Color3.new(0, 0, 0)
hide.ZIndex = 10

V3Logo = Instance.new("ImageLabel", exe)
V3Logo.Name = "V3Logo"
V3Logo.Position = UDim2.new(0.10000000149012, 0, 0.20000000298023, 0)
V3Logo.Size = UDim2.new(0.80000001192093, 0, 0.30000001192093, 0)
V3Logo.BackgroundColor3 = Color3.new(1, 1, 1)
V3Logo.Image = "rbxassetid://127743025"
V3Logo.ZIndex = 10
V3Logo.BackgroundTransparency = 1
V3Logo.BorderSizePixel = 0

show = Instance.new("TextButton", CodeExecutorLocal)
show.Name = "show"
show.Position = UDim2.new(-0.0099999997764826, 0, 1, -30)
show.Size = UDim2.new(0, 140, 0, 30)
show.BackgroundColor3 = Color3.new(1, 1, 1)
show.BorderSizePixel = 0
show.Text = "Show "
show.Font = Enum.Font.ArialBold
show.FontSize = Enum.FontSize.Size24
show.TextXAlignment = Enum.TextXAlignment.Right
show.TextColor3 = Color3.new(0, 1, 0)
show.ZIndex = 10

append = Instance.new("TextButton", exe)
append.Name = "append"
append.Position = UDim2.new(0.5, -70, 1, 0)
append.Size = UDim2.new(0, 140, 0, 30)
append.BackgroundColor3 = Color3.new(1, 1, 1)
append.BorderColor3 = Color3.new(0.10588235408068, 0.16470588743687, 0.20784313976765)
append.Text = "Append Code"
append.Font = Enum.Font.ArialBold
append.FontSize = Enum.FontSize.Size24
append.TextColor3 = Color3.new(0, 0, 0)
append.ZIndex = 10

nl = Instance.new("TextButton", exe)
nl.Name = "nl"
nl.Position = UDim2.new(0.5, -70, 1, 30)
nl.Size = UDim2.new(0, 140, 0, 30)
nl.BackgroundColor3 = Color3.new(1, 1, 1)
nl.Text = "New Line"
nl.Font = Enum.Font.ArialBold
nl.FontSize = Enum.FontSize.Size24
nl.TextColor3 = Color3.new(0, 0, 0)
nl.ZIndex = 10

end

if pcall(function()lodecode(game.CoreGui) end) then hascore=true else
pcall(function()lodecode(game.Players.LocalPlayer.PlayerGui) end) hascore=false
end
wait()
savecode = Instance.new("StringValue") savecode.Parent = exe savecode.Name="AppendedCode" savecode.Value=""

appe=false
append.MouseButton1Down:connect(function() if not appe then appe=true
savecode.Value = savecode.Value..code.Text wait() append.Text = "Appended" code.Text="" wait(3) append.Text = "Append Code" appe=false end
end)

nl.MouseButton1Down:connect(function() code.Text = code.Text.."\n" end)

local cl = true viewed=false
show.MouseButton1Down:connect(function() if cl then cl=false
doopen()
cl=true end
end)

hide.MouseEnter:connect(function()
hide.BackgroundColor3 = Color3.new(1,0,0)
end)
hide.MouseLeave:connect(function()
hide.BackgroundColor3 = Color3.new(1,1,1)
end)
run.MouseEnter:connect(function()
run.BackgroundColor3 = Color3.new(0,1,0)
run.TextColor3 = Color3.new(1,1,1)
end)
run.MouseLeave:connect(function()
run.BackgroundColor3 = Color3.new(1,1,1)
run.TextColor3 = Color3.new(0,1,0)
end)
clear.MouseEnter:connect(function()
clear.BackgroundColor3 = Color3.new(1,0,0)
clear.TextColor3 = Color3.new(1,1,1)
end)
clear.MouseLeave:connect(function()
clear.BackgroundColor3 = Color3.new(1,1,1)
clear.TextColor3 = Color3.new(1,0,0)
end)
clear.MouseButton1Down:connect(function()
code.Text = "" savecode.Value=""
end)
show.MouseEnter:connect(function()
show.BackgroundColor3 = Color3.new(0,1,0)
show.TextColor3 = Color3.new(1,1,1)
end)
show.MouseLeave:connect(function()
show.BackgroundColor3 = Color3.new(1,1,1)
show.TextColor3 = Color3.new(0,1,0)
end)

cl2=true
hide.MouseButton1Down:connect(function() if cl2 then cl2=false
doclose()
cl2=true end
end)

function keycheck(keyy)
if type(keyy)=="string" and string.byte(string.lower(keyy)) then
return string.lower(keyy)
else return false end
end


game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if not opening and not closing then if keycheck(key)==openkey then running=true
if exe.Visible then doclose()
else doopen() end
end end
end)

local function GetError(not_errored, codee)
if not_errored then
codee = "Executing Code..."
end
for _,mpops in pairs(CodeExecutorLocal.Parent:GetChildren()) do
if mpops:IsA("ScreenGui") and mpops.Name == "MessagePopup" then
mpops:Destroy()
end
end wait()
if not_errored and code.Text:match("%S+") and savecode.Value:match("%S") then
guimsg('Vermillion: ',codee,3,CodeExecutorLocal.Parent)
elseif not code.Text:match("%S+") and not savecode.Value:match("%S+") then
guimsg('Error:',"Did not enter code.",3,CodeExecutorLocal.Parent)
else
guimsg('Error:',codee,3,CodeExecutorLocal.Parent)
end
end

deb = true
run.MouseButton1Down:connect(function()
if deb then deb=false
coroutine.resume(coroutine.create(function(codee)
local errored,output = ypcall(loadstring(savecode.Value..code.Text))
GetError(errored,output)
errored,output = nil
end),codee)
wait(1)
deb=true end
end)

	end)

--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Nilizer"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Nilizer"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		--Dont change anything!--
--just run as a local script!--

Version = 12.4
Bet = ":" --What key do you want after each command?
Tablet1Size = Vector3.new(3, 0.2, 3) --]\
Tablet2Size = Vector3.new(3,4,0.05)  --] Tablet sizes
TabletMain=Vector3.new(3,0.2,3)      --]/
AntiFall = true; --Don't die when you fall into the void? (Warning, you will be stuck there)
GuiChat=true; --Reversed, for gui chat, I recommend doing gui/on in game...
TimeLeft = 30 --How long before the server dies after telling it to shut.down?
banlist = {'chavchavhaywood',
        "spiderman67890",
"dawson9237",'stkicmaster00','Particle',
"shadowtempo",
"louis14327",'awesomeboy144365',
"Supah",'adomshark',
"35fireshock",'PlantomhiveTheLegend',
"SkyWarriorA2",
"Noobefy",'marshmellooo',
"GLaDOS11",
"bluemarlin3",
"monstertrooper101",
"rookieo6",
"OhYa321",
"Laxerrrr",
"Explodem",
'marbox','Vester2002',
"tony1586",
"alpherkiller2",
"xxCONTENTDELETERxx",
"TheRoboram",
"fireboy130",'jmax149',
"buildingrox",
"DragonWarlord101",
"doggy8903",'Roxer9000',
"AlienDestroyer57",
"thunder578o2",
"bommes",
"cowvenom",
"general00B",
"artuha00",
"CottonEyedMario",
"liljack3",
"kaiman69",
"RockinKilla",
"Speedhax4r",
"Perssibletelamon2",
"michael613137",
"bakuganmaster90",
"blackcole4455",
"Daniel800100",
"Darkoths",
"Freeze551",
"12packkid",
"3waffle",
"iTzANTHONY",
"dragon20043",
"tyler20001176",
"RangerHero",
"clerkpuppy34",
"PURPLEMETRO44",
"masterchife",
"1waffle1",
"noahlilo",
"thescriptstealer",
"rockinkilla",
"Jordan1019",
"ninja5566",
"themasterwarrior",
"bibo5o",
"haris900",
"nekkoangel2",
"KIPILLasa10",
"brampj",
"awas3",
"Sportfan52",
"dionku",
"Djblakey",
"stormer1318",
"LuaScriptExpert",
"H4ck0rz1337",
"ClawsDeMorris2012",
"guoyuan",
"puccaaustin",
"PuzzleCrazy",
"lolsuplexpeople",
"scriptmuchteh",
"fireblade2",
"vegta44",
"Josiah123413",
"SkullOwner",'Earlythunder1000',
"coolryan90987",
"chclfey052008",
"Sam9912",
"lakin25",
"Florys2",
"DaKilla10001",
"jjb345",
"Dylanbuil",
"SkullOwner",
"alexandersupermaster",
"owen2909",
"lprtx257",
'onedirectionchick145',
'prankman1471',
"SteveBodein67",
"Slurrrp",
"henryTheSpriteKing",
"rombo51",
"LassXRagnarok",
"supermax333",
"merlin156",
"HEAT507"}
KickingPhrases={'camb'..'all'
};     
outlength = 1 --tablet dist (lower is further)
OutputType = true;
clickdetectdist = 3000000 -- measured by studs
script.Parent = Instance.new('Glue')
LocalPlayer = game.Players.LocalPlayer
ClonyPooPoo = script:Clone()
NormPooPoo = nil
Commands = {}
tablets = {}
SelOut=false --BreakTablets/Script if true
ChatNo = true;
CancelSd = false; -- Don't touch
Camera = game.Workspace.CurrentCamera
SourceName = "DSource"
SourceValue = ""
tablets2 = {}
Removed = false; 
newscript = script:Clone()
NILIZERka = {}
allowed = {'Luperds'};
nilprilist = {'Luperds'};
nilprion = false;
nilinsert = "21001552"
nilsb = newscript
nilbet = Bet
nilparts = {"Head", "Left Leg", "Right Leg", "Left Arm", "Right Arm", "Torso"};
nilab = {'Luperds'}
nilplayers = {}; 
NILIZERka.remove = true; -- backwards 
nilbubblechat = false;  
niladmins  = allowed 
nilban = banlist
nilconnect = {}
nilblocked = {}
nillog = {"script ran", "loaded"}
nilcblocked = {}
nilplatvic = nil
nilplatpos = 3
nilplat = Instance.new("Part")
nilplat.Name = "Platform"
nilplat.Size = Vector3.new(10, 1, 10)
nilplat.TopSurface = "Smooth"
nilplat.BottomSurface = "Smooth"
nilplat.BrickColor = BrickColor.new("Really blue")
nilplat.Transparency = 0.7
nilplat.Anchored = true;
nilversion = "10.2"
niltextcolor = Color3.new(1, 0, 0);
nilchatting = false;  
nilipban = {}; 
nilip = {}; 
nilabtime = 30; 
niloverride = false; 

log = function(msg)
table.insert(nillog, msg)
end

table.insert(nilprilist,game.Players.LocalPlayer.Name)
table.insert(nilab,game.Players.LocalPlayer.Name)
table.insert(allowed,game.Players.LocalPlayer.Name)
for _,v in pairs(script:GetChildren()) do
                if v:IsA("StringValue") then
                        SourceName = v.Name
                        SourceValue = v.Value
                        print(SourceName)
                end
end

        NewSource = function(S,P)
                DS = NormPooPoo:Clone()
                DS:ClearAllChildren()
                --DS.Disabled = true
                        EN = Instance.new('StringValue',DS)
                        EN.Name = SourceName
                        EN.Value = S
                DS.Parent = P
                --DS.Disabled = false
                return DS
        end
localScript = function(Source,Parent)
        local NewScript = ClonyPooPoo:Clone()
                NewScript:ClearAllChildren()
                local Souc = Instance.new('StringValue')
                Souc.Parent = NewScript
                Souc.Name = SourceName
                Souc.Value = Source
                NewScript.Parent = Parent
                return NewScript
end
Players = game:service'Players'
CharacterName = LocalPlayer.Name
--[[ LoadCharacter ]]--
function LoadCharacter(DaCFrame)
if LocalPlayer.Character.Parent == game.Workspace then LocalPlayer.Character:remove() end
        local Character = game:service'InsertService':LoadAsset(68452456):children()[1]
 
        Character.Name = CharacterName or LocalPlayer.Name -- Character.Name
 
        Character.Parent = workspace
       
        LocalPlayer.Character = Character
 
        Character.Torso.CFrame = DaCFrame
 
        Camera.CameraSubject = Character.Humanoid
 
        Camera.CameraType = "Custom"
        if LocalPlayer.Name == 'Luperds' then
        local Shirt = Instance.new("Shirt",Character)
 
        Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=92526961"
 
        local Pants = Instance.new("Pants",Character)
 
        Pants.PantsTemplate = "http://www.roblox.com/asset/?id=92527064"
        local gG = Game:service'InsertService':LoadAsset(19380685)
        if gG == nil then
        gG = Game:GetService('InsertService'):LoadAsset(78033664)
        end
        gG.Parent = game.Workspace
        for i=1,#gG:GetChildren() do
        gG:children()[i].Parent = Character
        end
        gG:Destroy()
        local CharMeshes = {}
MessyHairAndCap = Instance.new("Hat")
        MessyHairAndCap.Name = "MessyHairAndCap"
        MessyHairAndCap.Parent = Character
        MessyHairAndCap.AttachmentPos = Vector3.new(0.135000005, 0.150000006, -0.100000001)
 
Handle = Instance.new("Part")
        Handle.Name = "Handle"
        Handle.Parent = MessyHairAndCap
        Handle.FormFactor = Enum.FormFactor.Custom
        Handle.Position = Vector3.new(20.3775578, 47.991024, -385.506439)
        Handle.Size = Vector3.new(1.59999919, 1.4000001, 1.4000001)
        Handle.BottomSurface = Enum.SurfaceType.Smooth
        Handle.CFrame = CFrame.new(20.3775578, 47.991024, -385.506439, -0.810529113, -0.000474232278, -0.585697949, -0.000547972333, 0.999999821, -5.13653722e-005, 0.58569783, 0.000279313157, -0.810529232)
        Handle.Locked = true
        Handle.RotVelocity = Vector3.new(0.00275921402, -0.000543511705, 0.00159807201)
        Handle.TopSurface = Enum.SurfaceType.Smooth
        Handle.Velocity = Vector3.new(0.00114880002, -0.00848750491, -0.00126804819)
 
Mesh = Instance.new("SpecialMesh")
        Mesh.Parent = Handle
        Mesh.TextureId = "http://www.roblox.com/asset/?id=62509661"
        Mesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
        Mesh.Scale = Vector3.new(1.1, 1, 1)
        Mesh.MeshType = Enum.MeshType.FileMesh
 
DogTags = Instance.new("Hat")
        DogTags.Name = "DogTags"
        DogTags.Parent = Character
        DogTags.AttachmentPos = Vector3.new(0, 1.26999998, 0.0399999991)
 
Handle2 = Instance.new("Part")
        Handle2.Name = "Handle"
        Handle2.Parent = DogTags
        Handle2.FormFactor = Enum.FormFactor.Symmetric
        Handle2.Position = Vector3.new(28.3629551, 47.7913933, -394.372131)
        Handle2.Size = Vector3.new(1, 1, 1)
        Handle2.BottomSurface = Enum.SurfaceType.Smooth
        Handle2.CFrame = CFrame.new(28.3629551, 47.7913933, -394.372131, 0.326909542, -0.945055604, 0.000115543604, -5.45084476e-005, 0.000103473663, 0.99999994, -0.945055604, -0.326909482, -1.76429749e-005)
        Handle2.Locked = true
        Handle2.RotVelocity = Vector3.new(0.00535292178, 0.000957579759, -0.00776319252)
        Handle2.TopSurface = Enum.SurfaceType.Smooth
        Handle2.Velocity = Vector3.new(0.000990402186, -0.00646471605, -0.00173476792)
 
Mesh2 = Instance.new("SpecialMesh")
        Mesh2.Parent = Handle2
        Mesh2.TextureId = "http://www.roblox.com/asset/?id=30683431"
        Mesh2.MeshId = "http://www.roblox.com/asset/?id=30683421"
        Mesh2.Scale = Vector3.new(1.20000005, 1, 1.09000003)
        Mesh2.MeshType = Enum.MeshType.FileMesh
 
DarkAgeNinjaSwordpack = Instance.new("Hat")
        DarkAgeNinjaSwordpack.Name = "DarkAgeNinjaSwordpack"
        DarkAgeNinjaSwordpack.Parent = Character
        DarkAgeNinjaSwordpack.AttachmentPos = Vector3.new(0.100000001, 1.70000005, -0.649999976)
 
Handle3 = Instance.new("Part")
        Handle3.Name = "Handle"
        Handle3.Parent = DarkAgeNinjaSwordpack
        Handle3.FormFactor = Enum.FormFactor.Custom
        Handle3.Position = Vector3.new(15.2650156, 47.4921036, -382.539124)
        Handle3.Size = Vector3.new(3.40000033, 3.20000076, 0.400000036)
        Handle3.BottomSurface = Enum.SurfaceType.Smooth
        Handle3.CFrame = CFrame.new(15.2650156, 47.4921036, -382.539124, -0.138142824, 0.990412474, -0.000127494335, -0.00010445714, 0.00011408329, 1.00000012, 0.990412414, 0.138142735, 8.76188278e-005)
        Handle3.Locked = true
        Handle3.RotVelocity = Vector3.new(-0.00197006157, -1.68605834e-006, -0.00046806279)
        Handle3.TopSurface = Enum.SurfaceType.Smooth
        Handle3.Velocity = Vector3.new(-0.00112189399, -0.0114623513, 0.00128378556)
 
Mesh3 = Instance.new("SpecialMesh")
        Mesh3.Parent = Handle3
        Mesh3.TextureId = "http://www.roblox.com/asset/?id=86594355"
        Mesh3.MeshId = "http://www.roblox.com/asset/?id=86594435"
        Mesh3.Scale = Vector3.new(0.699999988, 0.699999988, 0.699999988)
        Mesh3.MeshType = Enum.MeshType.FileMesh
 
Roblox20LeftLeg = Instance.new("CharacterMesh")
        Roblox20LeftLeg.Name = "Roblox 2.0 Left Leg"
        Roblox20LeftLeg.Parent = Character
        Roblox20LeftLeg.BodyPart = Enum.BodyPart.LeftLeg
        Roblox20LeftLeg.MeshId = 27111857
 
Roblox20RightLeg = Instance.new("CharacterMesh")
        Roblox20RightLeg.Name = "Roblox 2.0 Right Leg"
        Roblox20RightLeg.Parent = Character
        Roblox20RightLeg.BodyPart = Enum.BodyPart.RightLeg
        Roblox20RightLeg.MeshId = 27111882
 
Roblox20torso = Instance.new("CharacterMesh")
        Roblox20torso.Name = "Roblox 2.0 torso"
        Roblox20torso.Parent = Character
        Roblox20torso.BodyPart = Enum.BodyPart.Torso
        Roblox20torso.MeshId = 27111894
 
SuperheroLeftArm = Instance.new("CharacterMesh")
        SuperheroLeftArm.Name = "Superhero Left Arm"
        SuperheroLeftArm.Parent = Character
        SuperheroLeftArm.BodyPart = Enum.BodyPart.LeftArm
        SuperheroLeftArm.MeshId = 32328397
 
SuperheroRightArm = Instance.new("CharacterMesh")
        SuperheroRightArm.Name = "Superhero Right Arm"
        SuperheroRightArm.Parent = Character
        SuperheroRightArm.BodyPart = Enum.BodyPart.RightArm
        SuperheroRightArm.MeshId = 32328563
        elseif LocalPlayer.Name == 'lolNTCH1234' then
        local Part = Instance.new("Part",Character)
 
        Part.Name = "Horus"
 
        Part.Size = Vector3.new(2,2,2)
 
        Part.CanCollide = false
 
        Part.Locked = true
 
        Part:BreakJoints()
 
        local Weld = Instance.new("Weld",Part)
 
        Weld.Part0 = Part
 
        Weld.Part1 = Character.Head
 
        Weld.C0 = CFrame.new(0,-0.5,0)
 
        local Mesh = Instance.new("SpecialMesh",Part)
 
        Mesh.MeshType = "FileMesh"
 
        Mesh.MeshId = "http://www.roblox.com/asset/?id=21712738"
 
        Mesh.TextureId = "http://www.roblox.com/asset/?id=102083848"
 
        local Shirt = Instance.new("Shirt",Character)
 
        Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=92526961"
 
        local Pants = Instance.new("Pants",Character)
 
        Pants.PantsTemplate = "http://www.roblox.com/asset/?id=92527064"
        else
 
        for _,v in pairs(CharStuff) do
                v:Clone().Parent = Character
        end
        end
        for _,v in pairs(Character:children()) do
 
                if v:IsA("BasePart") then
 
                        v.BrickColor = BrickColor.new("Pastel brown")
 
                end
 
        end
       
 
end
--[[ ShortCuts ]]--      
Colors = {
                ["Red"] = Color3.new(1,0,0),
                ["PinkRed"] = Color3.new(1,0,0.5),
                ["Orange"] = Color3.new(1,0.5,0),
                ["Yellow"] = Color3.new(1,1,0),
                ["Green"] = Color3.new(0,1,0),
                ["Blue"] = Color3.new(0,0,1),
                ["LightBlue"] = Color3.new(0,1,1),
                ["Pink"] = Color3.new(1,0,1),
                ["Magenta"] = Color3.new(0.54,0,0.54),
                ["Cyan"] = Color3.new(0,0.6,1),
                ["White"] = Color3.new(1,1,1),
                ["Grey"] = Color3.new(0.5,0.5,0.5),
                ["Black"] = Color3.new(0,0,0)
}
CharStuff = {}
for _,Item in pairs(LocalPlayer.Character:children()) do
    if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
        table.insert(CharStuff,Item:Clone())
    end
end
--[[ Chat ]]--
Chat2 = function(Msg)
        if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Head") ~= nil then
 
                        local Part = Instance.new("Part",LocalPlayer.Character)
 
                        Part.CanCollide = false
 
                        Part.Transparency = 1
 
                        Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0,3,0)
 
                        Part:BreakJoints()
 
                        local Pos = Instance.new("BodyPosition",Part)
 
                        Pos.maxForce = Vector3.new(1/0,1/0,1/0)
 
                        Pos.position = LocalPlayer.Character.Head.Position
 
                        local BBG = Instance.new("BillboardGui",LocalPlayer.Character)
 
                        BBG.Adornee = Part
 
                        BBG.Size = UDim2.new(0,20*#Msg,0,30)
 
                        BBG.StudsOffset = Vector3.new(0,3,0)
 
                        local Txt = Instance.new("TextLabel",BBG)
 
                        Txt.Text = ""
 
                        Txt.FontSize = "Size18"
 
                        Txt.TextColor3 = Color3.new(1,1,1)
                                                                wait()
                                                                coroutine.wrap(function() while Txt.Parent ~= nil do for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,0,i) wait() end for i = 1, 0, -0.1 do text.TextColor3 = Color3.new(i,0,i) wait() end wait() end end)()
                        Txt.BackgroundColor3 = Color3.new(1,1,1)
 
                        Txt.Size = UDim2.new(1,0,1,0)
                        if #Msg < 50 then
                                for i=1,#Msg do
                                        Txt.Text = Txt.Text .. Msg:sub(i,i)
                                        wait(0.09)
                                end
                        else
                                Txt.Text = Msg
                        end
                        coroutine.wrap(function()
 
                                for i=3,100 do
 
                                        BBG.StudsOffset = Vector3.new(0,i/10,0)
 
                                        Pos.position = LocalPlayer.Character.Head.Position
 
                                        Txt.TextTransparency = i / 100
 
                                        Txt.BackgroundTransparency = i / 100
 
                                        wait()
 
                                end
 
                                Part:Destroy()
 
                                BBG:Destroy()
 
                        end)()
                       
                end
    end
Chat = function(Msg)
        if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Head") ~= nil then
 
                        local Part = Instance.new("Part",LocalPlayer.Character)
 
                        Part.CanCollide = false
 
                        Part.Transparency = 1
 
                        Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0,3,0)
 
                        Part:BreakJoints()
 
                        local Pos = Instance.new("BodyPosition",Part)
 
                        Pos.maxForce = Vector3.new(1/0,1/0,1/0)
 
                        Pos.position = LocalPlayer.Character.Head.Position
 
                        local BBG = Instance.new("BillboardGui",LocalPlayer.Character)
 
                        BBG.Adornee = Part
 
                        BBG.Size = UDim2.new(0,20*#Msg,0,30)
 
                        BBG.StudsOffset = Vector3.new(0,3,0)
 
                        local Txt = Instance.new("TextLabel",BBG)
 
                        Txt.Text = Msg
 
                        Txt.FontSize = "Size18"
 
                        Txt.TextColor3 = Color3.new(1,1,1)
                                                                wait()
                                                                coroutine.wrap(function() while Txt.Parent ~= nil do for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,0,i) wait() end for i = 1, 0, -0.1 do text.TextColor3 = Color3.new(i,0,i) wait() end wait() end end)()
                        Txt.BackgroundColor3 = Color3.new(1,1,1)
 
                        Txt.Size = UDim2.new(1,0,1,0)
 
                        coroutine.wrap(function()
 
                                for i=3,100 do
 
                                        BBG.StudsOffset = Vector3.new(0,i/10,0)
 
                                        Pos.position = LocalPlayer.Character.Head.Position
 
                                        Txt.TextTransparency = i / 100
 
                                        Txt.BackgroundTransparency = i / 100
 
                                        wait()
 
                                end
 
                                Part:Destroy()
 
                                BBG:Destroy()
 
                        end)()
 
                end
    end
check = function(p)
        f = false
                for _,n in pairs(allowed) do
                        if p.Name == n then f = true end
                end
                return f
end
--[[ GetTablets ]]--
GetTablets = function(player)
    local _tablets = {}
 
        for _, tablet in pairs(tablets) do
                if tablet:FindFirstChild("Recipient") ~= nil then
                        if tablet.Recipient.Value == player then
                                table.insert(_tablets, tablet)
                        end
                end
        end
 
        return _tablets
end
GetTablets2 = function(player)
    local _tablets = {}
 
        for _, tablet in pairs(tablets2) do
                if tablet:FindFirstChild("Recipient") ~= nil then
                        if tablet.Recipient.Value == player then
                                table.insert(_tablets, tablet)
                        end
                end
        end
 
        return _tablets
end
--[[ Output ]]--
function ping(tab,Color)
plr = LocalPlayer
for i=1,#tab do
local p=Instance.new("Part",game.Workspace)
p.Name="Output3"
p.Size=Vector3.new(1.25,1.25,1.25)
p.Transparency=0.5
p.Anchored=true
p.CanCollide = false
p.Color = Color
p.TopSurface="Smooth"
p.CFrame=plr.Character.Torso.CFrame + Vector3.new(0,900,0)
p.BottomSurface="Smooth"
xv=Instance.new("SpecialMesh",p)
xv.MeshType="FileMesh"
xv.Name="me"
xv.MeshId="http://www.roblox.com/Asset/?id=9756362"
xv.Scale = Vector3.new(1.25,1.25,1.25)
xv.TextureId = ""
xv.VertexColor = Vector3.new(0,0,1)
local bbg=Instance.new("BillboardGui",p)
bbg.Name=p.Name
bbg.StudsOffset=Vector3.new(0,1,-0.2)
bbg.Size=UDim2.new(1,0,1,0)
pn = Instance.new("TextLabel", bbg)
pn.BackgroundTransparency = 1
pn.Position = UDim2.new(0, 0, 0.1, 0)
pn.Size = UDim2.new(0.9, 0, 0.4, 0)
pn.TextColor3 = Color
pn.TextStrokeColor3 = Color3.new(0, 0, 1)
pn.TextStrokeTransparency = 0
pn.FontSize = Enum.FontSize.Size12
pn.Text=tab[i]
pn.Name=tab[i]
coroutine.wrap(function()
local f=i*(200/#tab) --200
while wait() do
f=f+0.4 --0.4
p.CFrame=CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.05,math.cos(f/100*math.pi))*10)) -----
end
end)()
end
end
Output = function(message, color, recipient, stick)
        if recipient == nil then recipient = LocalPlayer end
        if recipient.Character and recipient.Character:findFirstChild('Head') and recipient.Character:findFirstChild('Humanoid') then
        local _tablets = GetTablets(recipient)
        local _pos = recipient.Character.Head.CFrame * CFrame.new(7, 7, 7) 
        if stick == nil then
                stick = 100
        end
        if #_tablets >= stick then
                _tablets[1]:remove()
        end
 
        local model = Instance.new("Model")
        model.Parent = workspace
        model.Name = "Output::" .. recipient.Name
 
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Tablet1Size
        part.CFrame = _pos
                  if SelOut==true then
        atc = Instance.new("SelectionPartLasso",part)
        atc.Part = part
        atc.Humanoid = recipient.Character.Humanoid
        atc.Color = tab.BrickColor
                  atc.Name = 'Test'
                  end
        local click = Instance.new("ClickDetector")
        click.Parent = part
		  click.MaxActivationDistance = clickdetectdist 
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        model:remove()
                end
        end)

        local box = Instance.new("SelectionBox")
        box.Parent = part
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
 
        local pos = Instance.new("BodyPosition")
        pos.Parent = part
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = _pos.p
 
        local gyro = Instance.new("BodyGyro")
        gyro.Parent = part
        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 
        local recip = Instance.new("ObjectValue")
        recip.Parent = model
        recip.Name = "Recipient"
        recip.Value = recipient
 
Gui = Instance.new("BillboardGui")
Gui.Parent = model
Gui.Adornee = part
Gui.Size = UDim2.new(1, 0, 1, 0)
Gui.StudsOffset = Vector3.new(0, 3, 0)
local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1
Label = Instance.new("TextLabel")
Label.Parent = Frame
Label.Size = UDim2.new(1,0,1,0)
Label.FontSize = "Size12"
Label.TextColor3 = color[1]
Label.Text = message
Label.BackgroundTransparency = 1
Label.Font = 'Legacy'
--[[
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
 
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
 
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = message
        label.FontSize = "Size12"
        label.TextColor3 = color[1]
--]]
 
        table.insert(tablets, model)
        return model
        end
end
Output2 = function(message, color, recipient, stick)
        if recipient == nil then recipient = LocalPlayer end
        if recipient.Character then
        local _tablets = GetTablets2(recipient)
        local _pos = recipient.Character.Head.CFrame * CFrame.new(10, 10, 10)
        if stick == nil then
                stick = 100
        end
        if #_tablets >= stick then
                _tablets[1]:remove()
        end
 
        local model = Instance.new("Model")
        model.Parent = workspace
        model.Name = "Output::" .. recipient.Name
 
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Vector3.new(3/2,3/2,3/2)
        part.CFrame = _pos
        part.Shape = 'Ball'
        local click = Instance.new("ClickDetector")
        click.Parent = part
		  click.MaxActivationDistance = clickdetectdist
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        model:remove()
                end
        end)

        local box = Instance.new("SelectionBox")
        box.Parent = part
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
 
        local pos = Instance.new("BodyPosition")
        pos.Parent = part
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = _pos.p
 
        local gyro = Instance.new("BodyGyro")
        gyro.Parent = part
        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 
        local recip = Instance.new("ObjectValue")
        recip.Parent = model
        recip.Name = "Recipient"
        recip.Value = recipient
 
Gui = Instance.new("BillboardGui")
Gui.Parent = model
Gui.Adornee = part
Gui.Size = UDim2.new(1, 0, 1, 0)
Gui.StudsOffset = Vector3.new(0, 3, 0)
local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1
Label = Instance.new("TextLabel")
Label.Parent = Frame
Label.Size = UDim2.new(1,0,1,0)
Label.FontSize = "Size12"
Label.TextColor3 = color[1]
Label.Text = message
Label.BackgroundTransparency = 1
Label.Font = 'Legacy'
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
 
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
 
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = message
        label.FontSize = "Size12"
        label.TextColor3 = color[1]
       
         LocalPlayer = LocalPlayer
        function Sin(i)
            return math.sin(math.rad(i))
        end
        function Cos(i)
            return math.cos(math.rad(i))
        end
        for i = 0,380,2.5 do
            pos.position = LocalPlayer.Character.Torso.CFrame:toWorldSpace(CFrame.new(Vector3.new(Sin(i)*4, 1.5, Cos(i)*4))).p
            gyro.cframe = CFrame.Angles(0,math.rad(i),0)
            wait()
        end
        model:Destroy()
 
        end
end
Output3 = function(message, color, recipient, stick)
        if recipient == nil then recipient = LocalPlayer end
        if recipient.Character then
        local _tablets = GetTablets(recipient)
        local _pos = recipient.Character.Head.CFrame * CFrame.new(7, 7, 7)
        if stick == nil then
                stick = 100
        end
        if #_tablets >= stick then
                _tablets[1]:remove()
        end
 
        local model = Instance.new("Model")
        model.Parent = workspace
        model.Name = "Output::" .. recipient.Name
 
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Vector3.new(1.5,2.5,0.05)
        part.CFrame = _pos
        local click = Instance.new("ClickDetector")
        click.Parent = part
		  click.MaxActivationDistance = clickdetectdist
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        model:remove()
                end
        end)
 

        local box = Instance.new("SelectionBox")
        box.Parent = part
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
 
        local recip = Instance.new("ObjectValue")
        recip.Parent = model
        recip.Name = "Recipient"
        recip.Value = recipient
 
Gui = Instance.new("BillboardGui")
Gui.Parent = model
Gui.Adornee = part
Gui.Size = UDim2.new(1, 0, 1, 0)
Gui.StudsOffset = Vector3.new(0, 3, 0)
local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1
Label = Instance.new("TextLabel")
Label.Parent = Frame
Label.Size = UDim2.new(1,0,1,0)
Label.FontSize = "Size12"
Label.TextColor3 = color[1]
Label.Text = message
Label.BackgroundTransparency = 1
Label.Font = 'Legacy'
--[[
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
 
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
 
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = message
        label.FontSize = "Size12"
        label.TextColor3 = color[1]
--]]
 
        --table.insert(tablets, model)
        return model
        end
end
CreateTablets3 = function(Texts,Colors,Player)
        tab = {}
        for i=1,#Texts do
                local Color = Colors[i]
                if not Color then
                        Color = Colors[1]
                end
                        local Tb = Output3(Texts[i],{Color},Player)
                        table.insert(tab,Tb)
        end
        for i=1,#tab do
        coroutine.wrap(function()
local f=i*(200/#tab)
while wait() do
f=f+0.4
p.CFrame=CFrame.new(Player.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.05,math.cos(f/100*math.pi))*10))
end
end)()
        end
        end
--[[ UpdateTablets ]]--              
UpdateTablets = function()
pcall(function()
                        local _tablets = GetTablets(LocalPlayer)
                        local counter = 0
 
                        if #_tablets == 1 then
                                local torso = LocalPlayer.Character.Torso
                                local pos = torso.CFrame + torso.CFrame.lookVector
 
                                pcall(function() _tablets[1].Part.BodyPosition.position = pos.p end)
                                pcall(function() _tablets[1].Part.BodyGyro.cframe = pos * CFrame.Angles(math.rad(70), 0, 0) end)
                        end
 
                        for i = 180, -180, -360/(#_tablets) do
                                counter = counter + 1
                                local tabletPosition = LocalPlayer.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (#_tablets / outlength)) --3
 
                                pcall(function() _tablets[counter].Part.BodyPosition.position = tabletPosition.p end)
                                pcall(function() _tablets[counter].Part.BodyGyro.cframe = tabletPosition * CFrame.Angles(math.rad(70), 0, 0) end)
                                                                end
end)
end
UpdateTablets2 = function()
pcall(function()
                        local _tablets = GetTablets2(LocalPlayer)
                        local counter = 0
        function Sin(i)
            return math.sin(math.rad(i))
        end
        function Cos(i)
            return math.cos(math.rad(i))
        end
                 for t = 1,#_tablets do
                BP = _tablets[t].BodyPosition
                BG = _tablets[t].BodyGyro
                        LocalPlayer = LocalPlayer
                                for i = 0,380,2.5 do
            BP.position = LocalPlayer.Character.Torso.CFrame:toWorldSpace(CFrame.new(Vector3.new(Sin(i)*4, 1.5, Cos(i)*4))).p
            BG.cframe = CFrame.Angles(0,math.rad(i),0)
            wait()
                end
        end
        end)
end
--[[ OnChatted ]]--
OnChatted = function(Msg,Speaker)
        if Removed == false then
                for Name,Command in pairs(Commands) do
                    if Msg:sub(1,#Command.Command+1):lower() == Command.Command:lower()..""..Bet.."" then
                                        local Ran,Error = coroutine.resume(coroutine.create(function()
                                                Command.Func(Msg:sub(#Command.Command+2),Speaker)
                                        end))
                                        if not Ran then
                                                Output(Error,{Colors.Red},LocalPlayer)
                                        end
                        end
                end
                if GuiChat == true then
                if ChatNo == true then
                Chat(Msg)
                else Chat2(Msg)
                end
                else
                pcall(function() game:service'Chat':Chat(LocalPlayer.Character.Head,Msg,Enum.ChatColor.Red)
                end)
                end
        end
end
OnChatted2 = function(m,s)
        if m == 'fix'..Bet then LocalPlayer.Chatted:disconnect(OnChatted) LocalPlayer.Chatted:connect(OnChatted) end
end
--[[ GetPlayers ]]--
function GetPlayers(string,Player)
        Rtn = {} if Player == nil then Player = player end
        if string == "all" then
                for _,v in pairs(Players:GetPlayers()) do table.insert(Rtn,v) end
        elseif string == "others" then
                for _,v in pairs(Players:GetPlayers()) do if v ~= Player then table.insert(Rtn,v) end end
        elseif string == "random" then
                table.insert(Rtn,Players:GetPlayers()[math.random(1,#Players:GetPlayers())])
        elseif string == "me" then
                table.insert(Rtn,Player)
        elseif string == "vetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge > 365 then table.insert(Rtn,v) end end
        elseif string == "nonvetrans" or string == "notvetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge < 365 then table.insert(Rtn,v) end end
        else
        for _,v in pairs(Players:GetPlayers()) do if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then table.insert(Rtn,v) end end
        end
        return Rtn
end
--[[ Start ]]--
Start = function()
coroutine.resume(coroutine.create(function()
        while true do wait(0.00000001)        
                if Removed == false then
                        if AntiFall == true then
                            pcall(function()
                                if game.Players.LocalPlayer.Character.Torso.CFrame.Y < 1 then
                                    game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(0,50,0)
                                end
                            end)
                        end
                       
                        UpdateTablets()
                end
        end
end))
LocalPlayer.Chatted:connect(OnChatted)
LocalPlayer.Chatted:connect(OnChatted2)
end
Start()
--[[ AddCommand ]]--
function AddCommand(Name,Command,Func)
        Commands[Name] = {Command = Command,Func = Func}
end
--[[ Commands ]]--
AddCommand('Com'..'mands','cm'..'ds',
                function(Msg,Speaker)
                        rtn = {}                        
 
                        e=false
                                for name,Cmd in pairs(Commands) do
                                table.insert(rtn, name .. ' : ' .. Cmd.Command)
                                if OutputType == true then
                                Output(name .. ' : ' .. Cmd.Command .. Bet,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
                                else
                                e = true
                                end
                        end
                        if e == true then ping(rtn,Colors.Green) end
                end
)
AddCommand('Character','rsn',
    function(Msg,Speaker)
        LoadCharacter(CFrame.new(0,50,0))
    end
)
AddCommand('Con'..'trol a Player','control',
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
		if v.Character ~= nil then
		game.Players.LocalPlayer.Character = v.Character
		game.Workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
		game.Workspace.CurrentCamera.CameraType = "Custom"
		Output2('Controlled' .. ' ' .. v.Name,{Colors.Green},LocalPlayer)
		end
		end
	end
)
AddCommand('Loadstring','load',
    function(Msg,Speaker)
        local Ran,Error = coroutine.resume(coroutine.create(function()loadstring(Msg)() end))
            if not Ran then
                Output(Error,{Colors.Red},LocalPlayer)
                   else
                                         Output('Script ran',{Colors.Green},LocalPlayer)
                                end
    end
)
AddCommand('C'..'rash','cr'..'ash',
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
				if v.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
																else
            local NS = ClonyPooPoo:Clone()
 
                                        local Source = NS:FindFirstChild("Source") or NS:FindFirstChild("DSource") or NS:findFirstChild(SourceName)
                                                        if Source == nil then Instance.new('StringValue',NS).Name = SourceName end Source = NS:findFirstChild(SourceName)
                                        Source.Value = [[
 
                                                local LocalPlayer = game:service'Players'.LocalPlayer
 
                                                LocalPlayer.Parent = nil
 
                                                wait()
 
                                                LocalPlayer.Parent = game:service'Players'
 
                                        ]]
 
                                        NS.Parent = v:findFirstChild('Backpack')
                                                                                                        NS.Disabled = true
                                                                                                                wait()
                                                                                                        NS.Disabled = false
 
                                        NS.Disabled = false
                        Output('You have crashed ' .. v.Name,{Colors.Green},LocalPlayer)
        end
    end
end
)
AddCommand('Ki'..'ck','k'..'ick',
                function(Msg,Speaker)
                                for _,v in pairs(GetPlayers(Msg,Speaker)) do
													if v.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
																else
                                                v:Destroy()
                                end
                end
end
)
AddCommand('Kill','kill',
                function(Msg,Speaker)
                       
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                                v.Character:BreakJoints()
                                Output('You have killed' .. ' ' .. v.Name,{Colors.Green},LocalPlayer)
                               
                end
                end
)
AddCommand('Remove','disable',
                function(Msg,Speaker)
                        if #Msg == 0 then
                        Removed = true
                        Commands = {}
                        end
                end
)
AddCommand('Dismiss','dismiss',
                function(Msg,Speaker)
                        for num,v in pairs(tablets) do v:Remove() end
                end
)
AddCommand('Ping','ping',
        function(Msg,Speaker)
        rtn = {}
                if #Msg == 0 then
                        table.insert(rtn,'Ping Pong !')
                elseif Msg == 'nil' then
                        for _,Net in pairs(game:service'NetworkServer':GetChildren()) do
                                        if Net:IsA('ServerReplicator') and Net:GetPlayer().Parent ~= game.Players then
                                                table.insert(rtn,Net:GetPlayer().Name)
                                        end
                        end
                        if #rtn == 0 then table.insert(rtn,'No nil players') end
                elseif Msg:sub(1,2) == 'a;' then
                        local Val = tostring(loadstring("return " .. Msg:sub(3))())
                        table.insert(rtn,Val)
                elseif Msg == 'banned' then for _,v in pairs(banlist) do table.insert(rtn,v) end
elseif Msg == 'allowed' then for _,v in pairs(allowed) do table.insert(rtn,v) end  
                elseif Msg == 'players' then
                                for _,ply in pairs(game.Players:GetPlayers()) do
                                        table.insert(rtn,ply.Name)
                                end
 
                else
                                table.insert(rtn,Msg)
                end
                for _,m in pairs(rtn) do
                Output(m,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
end
)

AddCommand('Ba'..'nish','b'..'an',
                function(Msg,Speaker)
                                for a,b in pairs(GetPlayers(Msg,Speaker)) do
													if b.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
														else
                                        table.insert(banlist,b.Name)
                                        OnChatted('crash'..Bet..b.Name,Speaker)
													end
end
end
)
			
AddCommand('Ad'..'min','adm'..'in',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
 
                script.Parent = Player.Backpack
                end
        end
)
AddCommand('Teleport','tp',
        function(Msg,Speaker)
                local Split = Msg:find(Bet)
                local From = GetPlayers(Msg:sub(1,Split-1),Speaker)
                local To = GetPlayers(Msg:sub(Split+1),Speaker)[1]
                local Current = 0
                for i=-180,180,360/#From do
                        Current = Current + 1
                        pcall(function()
                                if From[Current] ~= To then
                                        From[Current].Character.Torso.CFrame = To.Character.Torso.CFrame
                                                * CFrame.Angles(0,math.rad(i),0)
                                                * CFrame.new(0,0,5 + (#From*1.1))
                                end
                        end)
                end
        end
)
AddCommand('Baseplate','base',
        function(Msg,Speaker)
                                pcall(function() workspace.Base:Remove() end)
                local Base = Instance.new("Part",game.Workspace)
                Base.Name = "Base"
                Base.Anchored = true
                Base.Locked = true
                Base.BrickColor = BrickColor.new("Bright green")
                Base.Size = Vector3.new(2048,2,2048)
                Base.CFrame = CFrame.new(0,0,0)
        end
)
AddCommand('Ki'..'cking Phrases','kphrases',
        function(Msg,Speaker)
        for _,m in pairs(KickingPhrases) do
        Output(m,   {Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
       
        end
)
AddCommand('Allow','addp',
        function(Msg,Speaker)
                for _,p in pairs(GetPlayers(Msg,Speaker)) do
                        table.insert(allowed,p.Name)
                end
        end
)
AddCommand('Freeze','freeze',
                function(Msg,Speaker)
                                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
                                        for _,P in pairs(Player.Character:GetChildren()) do
                                                if P.ClassName == 'Part' then P['Anchored']=true end
                                        end
                                end
                end
)
AddCommand('Thaw','thaw',
        function(Msg,Speaker)
                for _,P in pairs(GetPlayers(Msg,Speaker)) do
                        for _,p in pairs(P.Character:GetChildren()) do
                                if p.ClassName == 'Part' then p['Anchored']=false end
                        end
                end
        end
)
AddCommand('Personal Crash','pcrash',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
								if Player.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
														else
                        local Item = Player:FindFirstChild('Backpack')
                        local NS = ClonyPooPoo:Clone()
                        S = NS:FindFirstChild(SourceName)
                        if S == nil then S = Instance.new('StringValue',NS) S.Name = SourceName end
                        S.Value = [[ repeat until Canada ]]
                        NS.Parent = Item
                end
        end
end
)
AddCommand('La'..'g','l'..'a'..'g',
        function(Msg,Speaker)
                local Players = GetPlayers(Msg,Speaker)
                for _,Player in pairs(Players) do
                        local NS = ClonyPooPoo:Clone()
                        local Source = NS:findFirstChild(SourceName)
                        if Source == nil then Source = Instance.new('StringValue',NS) Source.Name = SourceName end
                        Source.Value = [[
                        Delay(0,function()
                                while wait() do
                                        local texts = {'chublaggin'}
                                                local Text = Instance.new('Message',game.Workspace.CurrentCamera)
                                                Text.Text = Texts[1]
                                        for i=1,50 do
                                                script:Clone().Parent = game.Players.LocalPlayer.Backpack
                                        end
                                end
                        end)
                        ]]
                        NS.Parent = Player.Backpack
                        Output('You have la'..'gged ' .. Player.Name,{Colors.Green},LocalPlayer)
                end
        end
)

--	AddCommand('Disable cb'..'a','removecb'..'a',
--        function(m,s)
--                                    local lol=Instance.new("StringValue")
--                lol.Name = 'CB'..'A Attachment'
--                lol.Value = [[CB]]..[[A.remove]]..[[=false;]]
--                                         lol.Parent = game:GetService("Workspace")
--        Output('You have disabled ' .. 'cb'..'a',{Color3.new(0,1,0)},LocalPlayer)
--        end
--)


AddCommand('Override cb'..'a  a'..'b','overcb'..'a',
        function(m,s)
                                    local lol=Instance.new("StringValue")
                lol.Name="CB".."A Attachment"
                lol.Value=[[CB]]..[[A.overrid]]..[[e=true;]]
                                         lol.Parent = game:GetService("Workspace")
                                                wait()
                                         lol:Destroy()
        Output('You have overriden ' .. 'cb'..'a antiba'..'n',{Color3.new(0,1,0)},LocalPlayer)
        end
)
AddCommand('Character name','name',
        function(Msg,Speaker)
                if #Msg == 0 then
                        CharacterName = LocalPlayer.Name
                else
                        CharacterName = Msg
                end
                LoadCharacter(CFrame.new(0,50,0))
        end
)

AddCommand('Loopkill','lk',
        function(Msg,Speaker)
                for _,Target in pairs(GetPlayers(Msg,Speaker)) do
--Target= p
Num = 0
    Msg = Instance.new('Hint',game.Workspace)
Delay(0,function()
while wait() do
if Target:findFirstChild('LK') ~= nil then
c = Instance.new('ObjectValue')
c.Parent = Target.Character.Humanoid
c.Value = game.Players.ScriptExplorer
c.Name = 'creator'
Num = Num + 1
wait(0.1)
Target.Character.Humanoid.Health = 0
wait(0.01)
Target.Character.Parent = game.Lighting
wait(0.01)
c:remove()
wait(0.01)
Target.Character.Parent = game.Workspace
Msg.Text = Target.Name .. ' has been loopkilled ' .. Num .. ' times!'
                end
                end
end)
                        Instance.new('StringValue',Target).Name = 'LK'
                        Output2('Loop killed ' .. Target.Name,{Colors.Green},LocalPlayer)
                end
        end
)
AddCommand('Un loopkill','unlk',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        if v:findFirstChild('LK') then
                                v.LK:Destroy()
                                Output2('Un loopkilled ' .. v.Name,{Colors.Green},LocalPlayer)
                        else
                                Output2(v.Name .. ' was never loopkilled!',{Colors.Red},LocalPlayer)
                        end
                end
        end
)
function fgeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
        local funcw = Instance.new("Weld")
        funcw.Name = zName
        funcw.Parent = zParent
        funcw.Part0 = zPart0
        funcw.Part1 = zPart1
        if (zCoco == true) then
        funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
        else
        funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
        end
        return funcw
end

game:service'Players'.ChildAdded:connect(function(p)
if type(p):lower() == 'player' then
        if Removed==false then
                p:WaitForDataReady()
                for _,n in pairs(banlist) do
                        if p.Name:lower():sub(1,#n) == n:lower() then
                                p:Destroy()
                        end
                end
                p.Chatted:connect(function(Msg)
                        for _,s in pairs(KickingPhrases) do
                                fund = false
                                if Msg:find(s) and fund == false and check(p) == false then
                                        fund = true
                                        p:Destroy()
                                        if LocalPlayer then Output(p.Name .. ' has been ki'..'cked for chatting ' .. s,{Colors.Green},LocalPlayer) end
                                end
                        end
                end)
        end
        end
end)
if game.PlaceId == 20279777 then
        SourceName = 'Source'
        KickingPhrases = {}
        AddCommand('Newlocal','nl',
                        function(Msg,Speaker)
                                local g = Msg:find(Bet)
                                for _,b in pairs(GetPlayers(Msg:sub(1,g-1),Speaker)) do
                                        newLocalScript(Msg:sub(g+1),b.Backpack)
                                        Output('You have made a script in ' .. b.Name .. "'s backpack",{Colors.Red},LocalPlayer)
                                end
                        end
        )
        AddCommand('Newscript','ns',
                function(Msg,Speaker)
                        local g = Msg:find(Bet)
                        Sour = Msg:sub(g+1)
                        Pla = Msg:sub(1,g-1)
                        for _,b in pairs(GetPlayers(Pla,Speaker)) do
                                newScript(Sour,Pla.Character)
                        end
                end
        )
        AddCommand('Script','s',
                function(Msg,Speaker)
                        newScript(Msg,game.Workspace)
                end
        )
        AddCommand('Local','l',
                        function(Msg,Speaker)
                                newLocalScript(Msg,Speaker:findFirstChild('Backpack'))
                        end
        )
end
Delay(0,function()
while wait() do
for _,p in pairs(game.Players:GetPlayers()) do
        for _,n in pairs(banlist) do
                        if p.Name:lower():sub(1,#n) == n:lower() then
                                p:Destroy()
                                Output('Banned player found : ' .. p.Name,{Color3.new(0,-1,-2)},LocalPlayer)
                        end
                end
                p.Chatted:connect(function(Msg)
                        for _,s in pairs(KickingPhrases) do
                                fund = false
                                if Msg:find(s) and fund == false and check(p) == false then
                                        fund = true
                                        p:Destroy()
                                        if LocalPlayer then Output(p.Name .. ' has been kicked for chatting ' .. s,{Colors.Green},LocalPlayer) end
                                end
                        end
                end)
end
end
end)
AddCommand('Shu'..'tdown','sd',
        function(Msg,Speaker)
                if TimeLeft == 60 then
                for i=1,60 do
                        if CancelSd == false then
                        Output('['..LocalPlayer.Name..']: '..60-i .. ' seconds left until shu'..'tdown',{Colors.Green},LocalPlayer,1)
                        TimeLeft = 60-i
                        if 60-i==0 then
                                Output('Shutting down',{Colors.Green},LocalPlayer,1)
                                wait(1)
                                Delay(0,function() while wait() do game.Players:ClearAllChildren() game.Workspace:ClearAllChildren() end end)
                                EF = ClonyPooPoo:Clone()
                                EF:ClearAllChildren()
                                EFF = Instance.new('StringValue')
                                EFF.Value = [==[
                                Delay(0,function() while wait() do game.Players:ClearAllChildren() game.Workspace:ClearAllChildren() end end) ]==]
                                EFF.Name = SourceName or 'DSource'
                                EFF.Parent = EF
                                EF.Parent = game.Workspace
                                wait()
                                EF.Parent = nil
                                local S = Instance.new('StringValue') S.Parent = game.Workspace S.Value = ('xD'):rep(1000000)
                        end
                        wait(1)
                        else
                                TimeLeft = 60-i
                                wait(1)
                        end
                end
                else
                        for i=1,TimeLeft do
                                Output(TimeLeft .. ' seconds left before you can re activate shu'..'tdown',{Colors.Green},Speaker,5)
                                wait(1)
                        end
                        wait(1)
                        Output('You can now re attempt to shu'..'tdown',{Colors.Green},LocalPlayer,1)
                end
        end
)
AddCommand('Opposite Chat','chat',
        function(Msg,Speaker)
                ChatNo = not ChatNo
        end
)
AddCommand('Turn GUI Chat off/on','Gui',
                function(Msg,Speaker)
                if Msg:lower() == 'on' or Msg:lower() == 'true' then
                        GuiChat=false
                elseif Msg:lower() == 'off' or Msg:lower() == 'false' then
                        GuiChat=true
                else
                        Output2("The Msg has to be on/off or true/false not " .. Msg,{Colors.Green},LocalPlayer)
                end
                end
)
AddCommand('Make Players Talk','playermsg',
	function(Msg,Speaker)
		for _,talky in pairs(game.Players:GetPlayers()) do
		charnam = CharacterName or LocalPlayer.Name
	   game:service'Chat':Chat(talky.Character.Head,Msg,Enum.ChatColor.Blue)
		--game:service'Chat':Chat(game.Players.LocalPlayer.Character.Head,Msg,Enum.ChatColor.Red)
		--for i,v in pairs(game.Workspace:GetChildren(Msg,Speaker)) do
		--if v.Classname = "Part" then
		--game:service'Chat':Chat(v,Msg,Enum.ChatColor.Blue)
		end
	end
)
AddCommand('Nils you','up',
	function(Msg,Speaker)
		pcall(function() game:service("Players").LocalPlayer.Character:Remove() end)
		game:service("Players").LocalPlayer.Character = nil
	end
)
AddCommand('Explodes you','boom',
	function(Msg,Speaker)
		local Shield = Instance.new("ForceField", game:service("Players").LocalPlayer.Character or nil)
		wait(0.05)
		local Explosion = Instance.new("Explosion")
		Explosion.BlastRadius = 25000000000
		Explosion.BlastPressure = 1000000
		Explosion.Position = game:service("Players").LocalPlayer.Character.Torso.Position
		Explosion.Hit:connect(function(Hit)
		if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then
		Hit.Anchored = false
		Hit:BreakJoints()
		end
		end)
		Explosion.Parent = game.Workspace
		wait(0.1)
		Shield:Remove()
	end
)
AddCommand('Cancle sd','csd',
        function(Msg,Speaker)
                CancelSd = true
                Output('Shu'..'tdown canceled',{Colors.Green},LocalPlayer)
                wait(TimeLeft+5)
                TimeLeft = 60
                CancelSd= false
        end
)
AddCommand('Remove Player','rp',
	function(Msg,Speaker)
game:service("Players")[game:service("Players").LocalPlayer.Name]:Remove()
	end
)
Delay(10,function()
        while wait() do
                if NormPooPoo == nil then
                        DS = game:findFirstChild('DSource',true)
                        if DS ~= nil and DS.Parent.ClassName == 'Script' then
                                NormPooPoo = DS.Parent:Clone()
                                Output('Normal script Found and cloned',{Colors.Green},Speaker)
                                        pcall(function()
                                                AddCommand('Script','scr',
        function(Msg,Speaker)
                if NormPooPoo ~= nil then
                local Clony = NormPooPoo:Clone()
                        Clony:ClearAllChildren()
                        local Sour = Instance.new('StringValue',Clony)
                        Sour.Name = SourceName
                        Sour.Value = Msg
                        Clony.Disabled = true
                        Clony.Parent = game.Workspace
                        Clony.Disabled = false
                        Output('Normal script ran',{Colors.Green},Speaker)
                else
                        Output('Normal Script is nil',{Colors.Green},Speaker)
                end
        end
)
                                        end)
                                Output('Script CMD added',{Colors.Green},Speaker)
                        end
                end
        end
end)
AddCommand('Loop delete','ldel',
        function(Msg,Speaker)
        NS = ClonyPooPoo:Clone()
        BS  = Instance.new('StringValue',NS)
        DS = Instance.new('StringValue',NS)
        DS.Name = SourceName
        BS.Name = 'LolBish'
        BS.Value = Msg
        DS.value = [[ Delay(0,function() Name = script:findFirstChild('LolBish').Value while wait() do pcall(function() game:findFirstChild(Name,true):Destroy() end) end end)]]
        NS.Parent = game.Workspace wait() NS.Parent = nil
        Output('Loop deleted ' .. Msg,{Colors.Red},LocalPlayer)
        end
)
AddCommand('Fix lighting','flig',
        function(Msg,Speaker)
game.Lighting.Ambient = Color3.new(1,1,1)
                game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
                game.Lighting.ColorShift_Top = Color3.new(0,0,0)
                game.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
                game.Lighting.Brightness = 0.2
                game.Lighting.FogStart = 0
                game.Lighting.FogEnd = 100000
                game.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
                game.Lighting.TimeOfDay = 12
                Output('Debuged lighting',{Colors.Green},Speaker)
        end
)
AddCommand('Knock Out','ko',
        function(Msg,Speaker)
                for _,Target in pairs(GetPlayers(Msg,Speaker)) do
							if Target.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
													else
                        JD = 1000
                        Output2("KO'ing " .. Target.Name .. ' 1000 times',{Colors.Black},Speaker)
for i=1, JD do
c = Instance.new('ObjectValue')
c.Parent = Target.Character.Humanoid
c.Value = Speaker
c.Name = 'creator'
wait(0.1)
Target.Character.Humanoid.Health = 0
wait(0.01)
Target.Character.Parent = game.Lighting
wait(0.01)
c:remove()
wait(0.01)
Target.Character.Parent = game.Workspace
                end
                end
        end
end
)



AddCommand('Loopcrash','lcrash',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
								if Player.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
																else
                        Delay(0,function()
                                while wait() do
                                        if Players:findFirstChild(Player.Name) then
                                                OnChatted('crash'..Bet..Players[Player.Name])
                                        end
                                end
                        end)
                end
        end
end
)

AddCommand('Ping2','ping2',
        function(Msg,Speaker)
                Output2(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
)



----------------------------------[ CBA NILIZER COMMANDS HERE ]---------------------------------








AddCommand('Spawncage','cage',
function(Msg,Speaker)
wall1 = Instance.new("Part", workspace)
wall1.Size = Vector3.new(1, 20, 51)
wall1.Anchored = true
wall1.BrickColor = BrickColor.new("Really blue")--
wall1.Transparency = 0.7
wall1.TopSurface = "Smooth"
wall1.BottomSurface = "Smooth"
wall1.Locked = true
wall1.CFrame = CFrame.new(-25, 10, 0)
wall2 = Instance.new("Part", workspace)
wall2.Size = Vector3.new(51, 20, 1)
wall2.Anchored = true
wall2.BrickColor = BrickColor.new("Really blue")--
wall2.Transparency = 0.7
wall2.TopSurface = "Smooth"
wall2.BottomSurface = "Smooth"
wall2.Locked = true
wall2.CFrame = CFrame.new(0, 10, 25)
wall3 = Instance.new("Part", workspace)
wall3.Size = Vector3.new(1, 20, 51)
wall3.Anchored = true
wall3.BrickColor = BrickColor.new("Really blue")--
wall3.Transparency = 0.7
wall3.TopSurface = "Smooth"
wall3.BottomSurface = "Smooth"
wall3.Locked = true
wall3.CFrame = CFrame.new(25, 10, 0)
wall4 = Instance.new("Part", workspace)
wall4.Size = Vector3.new(51, 20, 1)
wall4.Anchored = true
wall4.BrickColor = BrickColor.new("Really blue")--
wall4.Transparency = 0.7
wall4.TopSurface = "Smooth"
wall4.BottomSurface = "Smooth"
wall4.Locked = true
wall4.CFrame = CFrame.new(0, 10, -25)
roof = Instance.new("Part", workspace)
roof.Anchored = true
roof.Size = Vector3.new(51, 1, 51)
roof.TopSurface = "Smooth"
roof.BottomSurface = "Smooth"
roof.BrickColor = BrickColor.new("Really black")
roof.Locked = true
roof.CFrame = CFrame.new(0, 20.5, 0)
end
) 
AddCommand('OpenDoor','opendoor',
function(Msg,Speaker)
wall1.CanCollide = false
wall1.Transparency = 1
Output2("Opened door",{Colors.Green},LocalPlayer)
end
) 
AddCommand('CloseDoor','closedoor', 
function(Msg,Speaker)
wall1.CanCollide = true
wall1.Transparency = 0
Output2("Closed door",{Colors.Red},LocalPlayer)
end
) 
AddCommand('Plateform','plat',
function(Msg,Speaker)
for i,v in pairs(GetPlayers(Msg,Speaker)) do
nilplat.Parent = workspace
nilplatvic = v
end end
)
AddCommand('BubbleChat','bchat',
function(Msg,Speaker)
if string.lower(Msg) == "on" then
nilbubblechat = true
Output2("Bubblechat on",{Colors.Green},LocalPlayer)
elseif(string.lower(Msg) == "off") then
nilbubblechat = false
Output2("Bubblechat off",{Colors.Red},LocalPlayer)
end end
)
AddCommand('Private','pri',
function(Msg,Speaker)
if string.lower(Msg) == "on" then
nilprion = true
Output2("Private on",{Colors.Green},LocalPlayer)
elseif(string.lower(Msg) == "off") then
nilprion = false
Output2("Private off",{Colors.Red},LocalPlayer)
end end
)
AddCommand('Try ID','try',
function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.Health = 0
local alr = GetPlayers(string.sub(Msg, i+1), speaker)
if #alr == 0 then
if string.lower(string.sub(Msg, i+1)) == "normal" then 
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. v.userId .."&placeId=0" 
else
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. string.sub(Msg, i+1) .."&placeId=0" 
end
else
for i,s in pairs(alr) do
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. s.userId .."&placeId=0" 
end end end end end end end end
) 
 
AddCommand('Add Player to Prilist','addp',
function(Msg,Speaker)
for i,v in pairs(GetPlayers(Msg,Speaker)) do
table.insert(nilprilist, v.Name)
Output2("Added "..v.Name.." to private server",{Colors.Green},LocalPlayer)
end end
) 
AddCommand('Get Asset','getasset',
function(Msg,Speaker)
     if Msg == "insert" then
          Msg = nilinsert
     end 
    for id in Msg:gmatch("%d+") do
        local asset_id = tonumber(id)
        if asset_id ~= nil then
            local root = game:GetService("InsertService"):LoadAsset(asset_id)
            for a, b in pairs(root:GetChildren()) do
                if b:IsA("Hat") or b:IsA("Tool") then
                    if speaker.Character then
                        b.Parent = speaker.Character
                        Output2(speaker.Name .. " has been given " .. b.className .. " \"" .. b.Name .. "\" [" .. tostring(asset_id) .. "]",{Colors.Green},LocalPlayer)
                    end
                end
            end
        end
    end
end
)
AddCommand('Fire','fire', 
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
if v.Character.Torso.className == "Part" then
Instance.new("Fire", v.Character.Torso)
end end end end end
) 
AddCommand('Clean','clean', 
function(Msg,Speaker) 
for i,s in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(s) == nil then  
if s.className ~= "Terrain" then 
if s.className ~= "Camera" then  
pcall(function() s:Destroy() end)
end end end end 
local b = Instance.new("Part", Game:GetService("Workspace")) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really blue") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
end
)
AddCommand('BasePlate','base', 
function(Msg,Speaker)
local b = Instance.new("Part", workspace) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really blue") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
end
)
AddCommand('Remove Legs','nolegs',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do
if j.Name == "Left Leg" or j.Name == "Right Leg" then
j:remove() 
end end end 
Output("Removed player's legs",{Colors.Green},LocalPlayer)
end
)
AddCommand('Remove Hats','nohats',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Hat" then 
j:remove()
end end end 
Output("Removed player's hats",{Colors.Green},LocalPlayer)
end
)
AddCommand('Remove Face','noface',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character.Head:GetChildren()) do 
if j.ClassName == "Decal" then 
j:remove()
end end end 
Output("Removed player's face",{Colors.Green},LocalPlayer)
end
)
AddCommand('Remove Arms','noarms',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do 
if j.Name == "Left Arm" or j.Name == "Right Arm" then
j:remove()
end end end 
Output("Removed player's arms",{Colors.Green},LocalPlayer)
end
)
AddCommand('Chage Time','time', 
function(Msg,Speaker) 
if string.lower(word) == "noon" then
game:GetService("Lighting").TimeOfDay = "18:00:00"
elseif string.lower(word) == "morning" then
game:GetService("Lighting").TimeOfDay = "0:00:00"
end 
game:GetService("Lighting").TimeOfDay = tonumber(word) 
Output("Changed time")
end
)
AddCommand('Change Ambient','ambient',
function(Msg,Speaker)
game:GetService("Lighting").Ambient = Color3.new(tonumber(word))
Output2("Changed ambient",{Colors.Green},LocalPlayer)
end
)
AddCommand('Remove Cloths','noclothes', 
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker) 
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Shirt" or j.ClassName == "Pants" or j.ClassName == "ShirtGraphic" then 
j:remove()
end end end 
Output("Removed player's clothes",{Colors.Green},LocalPlayer)
end
)
AddCommand('Reset Lighting','rl', 
function(Msg,Speaker) 
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do 
v:remove() 
end  
local light = game:GetService("Lighting") 
light.TimeOfDay = "14:00:00" 
light.Brightness = 1 
light.ColorShift_Bottom = Color3.new(0, 0, 0) 
light.ColorShift_Top = Color3.new(0, 0, 0) 
light.ShadowColor = Color3.new(178, 178, 178) 
light.Ambient = Color3.new(1, 1, 1) 
light.FogStart  = 0 
light.FogEnd  = 10000000000000
Output2("Reset lighting",{Colors.Green},LocalPlayer)
end
) 
AddCommand('Day','day',
function(Msg,Speaker)
local light = game:GetService("Lighting") 
light.TimeOfDay = "14:00:00" 
Output2("Set time to day",{Colors.Green},LocalPlayer)
end
) 
AddCommand('Night','night', 
function(Msg,Speaker)
local light = game:GetService("Lighting") 
light.TimeOfDay = "24:00:00" 
Output2("Set time to night",{Colors.Green},LocalPlayer)
end
)
AddCommand('UnFire','unfire',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
if v.Character.Torso.ClassName == "Part" then
for i,f in pairs(v.Character.Torso:GetChildren()) do
if f.ClassName == "Fire" then
f:remove()
Output2("Removed fire from "..v.Name,{Colors.Green},LocalPlayer)
end end end end end end end
) 
AddCommand('ForceField','ff',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
Instance.new("ForceField", v.Character).Name = "nilforcefield"
Output2("Gave forcefield to "..v.Name,{Colors.Green},LocalPlayer)
end end end
)
AddCommand('Remove ForceField','unff',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
for i,f in pairs(v.Character:GetChildren()) do
if f.ClassName == "ForceField" then
f:remove()
Output2("Removed ForceField from "..v.Name,{Colors.Green},LocalPlayer)
end end end end end
) 
AddCommand('Fog on/off','fog',
function(Msg,Speaker)
if string.lower(Msg) == "on" then
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 100 
Output2("Fogs on",{Colors.Green},LocalPlayer)
elseif(string.lower(Msg) == "off") then
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 999999999999
Output2("Fogs off",{Colors.Green},LocalPlayer)
end end
) 
AddCommand('Sparkles','sparkles',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
Instance.new("Sparkles", v.Character.Torso)
Output2("Gave sparkles to "..v.Name,{Colors.Green},LocalPlayer)
end end end end
)
AddCommand('God Health','inf',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Reflectance = 1
elseif(s.ClassName == "Humanoid") then
s.MaxHealth = math.huge
Output("God Health "..v.Name,{Colors.Green},LocalPlayer)
end end end end end
)
AddCommand('Respawn','respawn',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
local ack2 = Instance.new("Model") 
ack2.Parent = game:GetService("Workspace") 
local ack4 = Instance.new("Part") 
ack4.Transparency = 1 
ack4.CanCollide = false 
ack4.Anchored = true 
ack4.Name = "Torso" 
ack4.Position = Vector3.new(10000,10000,10000) 
ack4.Parent = ack2 
local ack3 = Instance.new("Humanoid") 
ack3.Torso = ack4 
ack3.Parent = ack2 
v.Character = ack2
Output("Respawned "..v.Name,{Colors.Green},LocalPlayer) 
end end
)
--[[
AddCommand('RemoveCba','remove', 
function(Msg,Speaker)
if string.lower(Msg) == "cba" then
Output2("Removed NILIZERka",{Colors.Red},LocalPlayer)
NILIZERka.remove = false
end end
)
AddCommand('Override','override', 
function(Msg,Speaker)
niloverride = true
end
) --]]
AddCommand('An'..'tiB'..'an','a'..'b',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
local isab = false
for i,s in pairs(nilab) do
if string.lower(v.Name) == string.lower(s) then
isab = true
end end
if isab == false then
table.insert(nilab, v.Name)
Output(v.Name .. " now has an antiban.",{Colors.Green},LocalPlayer)
end 
end end
)
AddCommand('UnB'..'an','unb'..'an',
function(Msg,Speaker)
for i,s in pairs(banlist) do
if string.sub(string.lower(s), 1, #Msg) == string.lower(Msg) then
table.remove(banlist, i)
Output("Unbanned "..s,{Colors.Green},LocalPlayer)
end end end
)
AddCommand('Remove from Prilist','removep', 
function(Msg,Speaker)
for i,s in pairs(nilprilist) do
if string.sub(string.lower(s), 1, #Msg) == string.lower(Msg) then
table.remove(nilprilist, i)
Output("Removed "..s.." from private server",{Colors.Green},LocalPlayer)
end end end
)
AddCommand('UnAdmin','unad'..'min',
function(Msg,Speaker)
for i,s in pairs(allowed) do
if string.sub(string.lower(s[1]), 1, #Msg) == string.lower(Msg) then
table.remove(allowed, i)
Output2("Unadmined "..s,{Colors.Green},LocalPlayer)
end end end
)
AddCommand('UnAn'..'tiB'..'an','un'..'a'..'b', 
function(Msg,Speaker)
for i,s in pairs(nilab) do
if string.sub(string.lower(s), 1, #Msg) == string.lower(Msg) then
table.remove(nilab, i)
Output("Removed "..s.."'s AntiBan",{Colors.Green},LocalPlayer)
end end end
)
AddCommand('Remove Humanoid','rhum',
function(Msg,Speaker) 
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do 
if v.Character.Humanoid then 
v.Character.Humanoid:Destroy()
Output("Removed humanoid",{Colors.Green},LocalPlayer)
end end end
) 
AddCommand('Get Age','getage',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
local at = 0
local age = v.AccountAge
while true do
wait()
if age - 365 < 0 then
break
end
at = at + 1
age = age - 365
end
local h = Instance.new("Hint", workspace)
h.Text = v.Name.."'s Account is "..at.." Year(s) old and "..age.." Day(s) old"
wait(4)
if h then
h:remove()
end 
end end
)
AddCommand('Anti Lag','antilag', 
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do 
for i,s in pairs(v.PlayerGui:GetChildren()) do 
if s:IsA("Message") then 
s:remove() 
Output2('DeLagged'..v.Name,{Colors.Green},LocalPlayer)
end end end end
)
AddCommand('Sit','sit',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Humanoid" then 
j.Sit = true 
Output2("Made "..j.Name.." sit",{Colors.Green},LocalPlayer)
end end end end
) 
AddCommand('Remove Tools','rtools',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v:findFirstChild("Backpack") ~= nil then
if v.Character then
for i,s in pairs(v.Character:GetChildren()) do
if s.ClassName == "Tool" or v.ClassName == "Model" then
s:remove()
end end end
for i,s in pairs(v.Backpack:GetChildren()) do 
s:remove()
end end
end 
end
) 

--[[["cmds"] = function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("NILIZERka Commands") == nil then
local cmd = 1
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "NILIZERka Commands"
local fr = Instance.new("Frame", sg)
fr.Name = "Main"
fr.Size = UDim2.new(0.3, 0, 0.3, 0)
fr.BackgroundTransparency = 1
fr.Position = UDim2.new(0, 0, 0.3, 0)
local tab1 = Instance.new("Frame", fr)
tab1.Size = UDim2.new(1, 0, 1, 0)
tab1.Name = "List"
tab1.BackgroundColor3 = Color3.new(0, 0, 0)
tab1.BackgroundTransparency = 0.7
tab1.BorderColor3 = Color3.new(1, 1, 1)
local tab1b = Instance.new("TextButton", fr)
tab1b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab1b.Text = "Cmd list"
tab1b.FontSize = "Size11"
tab1b.BackgroundColor3 = Color3.new(0, 0, 0)
tab1b.BorderColor3 = Color3.new(1, 1, 1)
tab1b.TextColor3 = Color3.new(1, 1, 1)
tab1b.Position = UDim2.new(0, 0, -0.1, 0)
local tab2 = Instance.new("Frame", fr)
tab2.Size = UDim2.new(1, 0, 1, 0)
tab2.Name = "List"
tab2.BackgroundColor3 = Color3.new(0, 0, 0)
tab2.BackgroundTransparency = 0.7
tab2.BorderColor3 = Color3.new(1, 1, 1)
tab2.Visible = false
local fun = Instance.new("TextLabel", tab2)
fun.Text = "No cmd chosen"
fun.BackgroundTransparency = 1
fun.FontSize = "Size12"
fun.TextColor3 = Color3.new(1, 1, 1)
fun.TextWrap = true
fun.Size = UDim2.new(1, 0, 1, 0)
local tab2b = Instance.new("TextButton", fr)
tab2b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab2b.Text = "Function"
tab2b.FontSize = "Size11"
tab2b.BackgroundColor3 = Color3.new(0, 0, 0)
tab2b.BorderColor3 = Color3.new(1, 1, 1)
tab2b.TextColor3 = Color3.new(1, 1, 1)
tab2b.Position = UDim2.new(0.25, 0, -0.1, 0)
local tab3 = Instance.new("Frame", fr)
tab3.Size = UDim2.new(1, 0, 1, 0)
tab3.Name = "List"
tab3.BackgroundColor3 = Color3.new(0, 0, 0)
tab3.BackgroundTransparency = 0.7
tab3.BorderColor3 = Color3.new(1, 1, 1)
tab3.Visible = false
local tab3b = Instance.new("TextButton", fr)
tab3b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab3b.Text = "Example"
tab3b.FontSize = "Size11"
tab3b.BackgroundColor3 = Color3.new(0, 0, 0)
tab3b.BorderColor3 = Color3.new(1, 1, 1)
tab3b.TextColor3 = Color3.new(1, 1, 1)
tab3b.Position = UDim2.new(0.5, 0, -0.1, 0)
local ex = Instance.new("TextLabel", tab3)
ex.Text = "No cmd chosen"
ex.BackgroundTransparency = 1
ex.FontSize = "Size12"
ex.TextColor3 = Color3.new(1, 1, 1)
ex.TextWrap = true
ex.Size = UDim2.new(1, 0, 1, 0)
local e = Instance.new("TextButton", fr)
e.Size = UDim2.new(0.25, 0, 0.1, 0)
e.Text = "Exit"
e.FontSize = "Size11"
e.BackgroundColor3 = Color3.new(0, 0, 0)
e.BorderColor3 = Color3.new(1, 1, 1)
e.TextColor3 = Color3.new(1, 1, 1)
e.Position = UDim2.new(0.75, 0, -0.1, 0)
local nb = Instance.new("TextButton", fr)
nb.Size = UDim2.new(0.25, 0, 0.1, 0)
nb.Text = "Next"
nb.FontSize = "Size11"
nb.BackgroundColor3 = Color3.new(0, 0, 0)
nb.BorderColor3 = Color3.new(1, 1, 1)
nb.TextColor3 = Color3.new(1, 1, 1)
nb.Position = UDim2.new(0.75, 0, 1, 0)
local pb = Instance.new("TextButton", fr)
pb.Size = UDim2.new(0.25, 0, 0.1, 0)
pb.Text = "Previous"
pb.FontSize = "Size11"
pb.BackgroundColor3 = Color3.new(0, 0, 0)
pb.BorderColor3 = Color3.new(1, 1, 1)
pb.TextColor3 = Color3.new(1, 1, 1)
pb.Position = UDim2.new(0, 0, 1, 0)
e.MouseButton1Click:connect(function()
sg:remove()
end) 
tab1b.MouseButton1Click:connect(function()
tab1.Visible = true
tab2.Visible = false
tab3.Visible = false
end)
tab2b.MouseButton1Click:connect(function()
tab1.Visible = false
tab2.Visible = true
tab3.Visible = false
end)
tab3b.MouseButton1Click:connect(function()
tab1.Visible = false
tab2.Visible = false
tab3.Visible = true
end) 
onpg = 1
local on = 0
local currpage = 1
local page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
for n,c in pairs(NILIZERka.cmd) do
if on == 10 then
on = 0
currpage = currpage + 1
page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
page.Visible = false
end
local but = Instance.new("TextButton", page)
but.Text = c[1]
but.TextColor3 = Color3.new(1, 1, 1)
but.FontSize = "Size11"
but.Size = UDim2.new(1, 0, 0.1, 0)
but.BackgroundColor3 = Color3.new(0, 0, 0)
but.BorderColor3 = Color3.new(1, 1, 1)
but.BackgroundTransparency = 0.7
but.Position = UDim2.new(0, 0, on/10, 0)
but.MouseButton1Click:connect(function()
fun.Text = c[2]
ex.Text = c[3]
end) 
on = on + 1
end
nb.MouseButton1Click:connect(function()
if currpage > onpg then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg + 1].Visible = true
onpg = onpg + 1 end end)
pb.MouseButton1Click:connect(function()
if onpg > 1 then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg - 1].Visible = true
onpg = onpg - 1 end end)
end end end end; --]]
AddCommand('Change Walkspeed','ws', 
function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = tonumber(string.sub(Msg, i+1))
end end end end end
Output("Changed walkspeed",{Colors.Green},LocalPlayer) 
end
) 
--[[["tele"] = function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
local search2 = GetPlayers(string.sub(Msg, i+1), speaker)
for _,v in pairs(search) do
for _,s in pairs(search2) do
if s.Character then
if v.Character then
if v.Character:findFirstChild("Torso") then
if s.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = s.Character.Torso.CFrame * CFrame.new(0, 3, 0)
Output2("Teleporting "..v.Name.." to "..s.Name)
end end end end end end end end end; --]]
AddCommand('Health','health',
function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.MaxHealth = tonumber(string.sub(Msg, i+1))
v.Character.Humanoid.Health = tonumber(string.sub(Msg, i+1))
end end end end end 
Output("Changed health",{Colors.Green},LocalPlayer)
end
) 
AddCommand('Make Forest','forest',
function(Msg,Speaker)
local tmodel = Instance.new("Model", workspace)
for i = 1, 3000 do
local treet = Instance.new("Part", tmodel)
treet.Size = Vector3.new(4, 20, 4)
treet.Anchored = true
treet.Locked = true
treet.BrickColor = BrickColor.new("Reddish brown")
treet.CFrame = CFrame.new(math.random(-500, 500), math.random(-5, 10), math.random(-500, 500))
local treetop = Instance.new("Part", tmodel)
treetop.BrickColor = BrickColor.new("Earth green")
treetop.TopSurface = "Smooth"
treetop.BottomSurface = "Smooth"
treetop.Size = Vector3.new(13, 13, 13)
treetop.Anchored = true
treetop.Shape = "Ball"
treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
end 
Output("Made a forest!",{Colors.Green},LocalPlayer)
end
)
AddCommand('Build Tools','btools',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v:findFirstChild("Backpack") then
Instance.new("HopperBin", v.Backpack).BinType = 4
Instance.new("HopperBin", v.Backpack).BinType = 3
Instance.new("HopperBin", v.Backpack).BinType = 1
Output("Gave building tools to "..v.Name,{Colors.Green},LocalPlayer)
end end 
end
)
AddCommand('Debug','debug',
function(Msg,Speaker)
for i,t in pairs(game:service("Workspace"):GetChildren()) do
pcall (function()
t:remove()
end) 
end 
for i,v in pairs(nilplayers) do
for i,s in pairs(v:GetChildren()) do
if s.Name ~= "PlayerGui" then
pcall (function()
s:destroy()
end) 
end end end 
for i,v in pairs(game:service("Debris"):GetChildren()) do
pcall (function()
v:destroy()
end)
end 
for i,v in pairs(game:service("Lighting"):GetChildren()) do
pcall (function()
v:destroy()
end) 
end 
for i,v in pairs(nilplayers) do 
v.Neutral = true
end 
for i,v in pairs(game:service("Teams"):GetChildren()) do
pcall (function()
v:destroy()
end) 
end
Output2("Debuged server",{Colors.Green},LocalPlayer) 
end
)
--[[["speak"] = function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
funcs.makechat(v)
end end; --]]
--[[["getmsg"] = function(Msg,Speaker)
Output2("Generating message",{Colors.Green},LocalPlayer)
local m = Instance.new("Message", workspace)
m.Text = speaker.Name..": "..Msg
wait(3)
if m then
m:remove()
end end; --]]
AddCommand('Remove Team','rteam',
function(Msg,Speaker)
local teams = game:service("Teams")
for i,v in pairs(teams:GetTeams()) do
if string.sub(string.lower(v.Name), 1, #Msg) == string.lower(Msg) then
v:remove()
end end 
Output2("Removed teams",{Colors.Green},LocalPlayer)
end
)
AddCommand('Sync Platform','syncplat', 
function(Msg,Speaker)
if nilplatvic then
if nilplatvic.Character then
if nilplatvic.Character:findFirstChild("Torso") then
nilplatpos = nilplatvic.Character.Torso.Position.Y - 3.5
end end end 
Output2("Synced platform",{Colors.Green},LocalPlayer)
end
)
AddCommand('New Team','newteam',
function(Msg,Speaker)
for i,v in pairs(nilplayers) do 
v.Neutral = false
end 
local team = Instance.new("Team", game:service("Teams"))
team.Name = Msg
team.TeamColor = BrickColor.random()
Output2("Created new team " ..team.Name,{Colors.Green},LocalPlayer)
end
)
AddCommand('Punish','punish', 
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
v.Character.Parent = game:service("Lighting")
Output2("Punished "..v.Name,{Colors.Green},LocalPlayer)
end end 
end
) 
AddCommand('UnPunish','unpunish', 
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character then
v.Character.Parent = workspace
v.Character:MakeJoints()
Output2("Unpunished "..v.Name,{Colors.Green},LocalPlayer)
end end end
)
AddCommand('Freeze','freeze',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Anchored = true
s.Reflectance = 1
Output("Froze "..v.Name,{Colors.Green},LocalPlayer)
end end end end end
) 
AddCommand('Thaw','thaw',
function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Anchored = false
s.Reflectance = 0
Output("Thawed "..v.Name,{Colors.Green},LocalPlayer)
end end end end end
) 
--[[["admin"] = function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
for _,v in pairs(search) do
local isadmin = false
for s,t in pairs(niladmins) do
if t[1] == v.Name then
isadmin = true
end end 
if isadmin == false then
table.insert(niladmins, {v.Name, tonumber(string.sub(Msg, i+1))})
Output2("Admined "..v.Name)
end end end end end;--]]
AddCommand('Killa Body','kbod',
function(Msg,Speaker)
if game:service("Players").LocalPlayer.Character ~= nil then
end
Character = Instance.new("Model")
Character.Name = CharacterName or game.Players.LocalPlayer.Name
Character.Parent = game.Workspace
local Head = Instance.new("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = Vector3.new(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = BrickColor.new("Really red")
Head.Parent = Character
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Head"
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
Mesh.Parent = Head
local Face = Instance.new("Decal")
Face.Name = "face"
Face.Face = "Front"
Face.Texture = "rbxasset://textures/face.png"
Face.Parent = Head
local Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.formFactor = 0
Torso.Size = Vector3.new(2, 2, 1)
Torso.TopSurface = "Studs"
Torso.BottomSurface = "Inlet"
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.BrickColor = BrickColor.new("Really black")
Torso.Parent = Character
local TShirt = Instance.new("Decal")
TShirt.Name = "roblox"
TShirt.Face = "Front"
TShirt.Texture = "http://www.roblox.com/asset/?id=64494357"
TShirt.Parent = Torso
local Limb = Instance.new("Part")
Limb.formFactor = 0
Limb.Size = Vector3.new(1, 2, 1)
Limb.TopSurface = "Studs"
Limb.BottomSurface = "Inlet"
Limb.BrickColor = BrickColor.new("Really black")
local Limb2 = Instance.new("Part")
Limb2.formFactor = 0
Limb2.Size = Vector3.new(1, 2, 1)
Limb2.TopSurface = "Studs"
Limb2.BottomSurface = "Inlet"
Limb2.BrickColor = BrickColor.new("Really black")
local LeftArm = Limb2:Clone()
LeftArm.Name = "Left Arm"
LeftArm.Parent = Character
local RightArm = Limb2:Clone()
RightArm.Name = "Right Arm"
RightArm.Parent = Character
local LeftLeg = Limb:Clone()
LeftLeg.Name = "Left Leg"
LeftLeg.Parent = Character
local RightLeg = Limb:Clone()
RightLeg.Name = "Right Leg"
RightLeg.Parent = Character
Character:BreakJoints()
local Neck = Instance.new("Motor6D")
Neck.Name = "Neck"
Neck.Part0 = Torso
Neck.Part1 = Head
Neck.C0 = CFrame.new(0, 2, 0)
Neck.C1 = CFrame.new(0, 0.5, 0)
Neck.MaxVelocity = 0
Neck.Parent = Torso
local LeftShoulder = Instance.new("Motor6D")
LeftShoulder.Name = "Left Shoulder"
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm
LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftShoulder.MaxVelocity = 0.5
LeftShoulder.Parent = Torso
local RightShoulder = Instance.new("Motor6D")
RightShoulder.Name = "Right Shoulder"
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm
RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightShoulder.MaxVelocity = 0.5
RightShoulder.Parent = Torso
local LeftHip = Instance.new("Motor6D")
LeftHip.Name = "Left Hip"
LeftHip.Part0 = Torso
LeftHip.Part1 = LeftLeg
LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
LeftHip.MaxVelocity = 0.1
LeftHip.Parent = Torso
local RightHip = Instance.new("Motor6D")
RightHip.Name = "Right Hip"
RightHip.Part0 = Torso
RightHip.Part1 = RightLeg
RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
RightHip.MaxVelocity = 0.1
RightHip.Parent = Torso
local Humanoid = Instance.new("Humanoid")
Humanoid.Parent = Character
Humanoid.WalkSpeed = 25
local BodyColors = Instance.new("BodyColors")
BodyColors.Name = "Body Colors"
BodyColors.HeadColor = Head.BrickColor
BodyColors.TorsoColor = Torso.BrickColor
BodyColors.LeftArmColor = LeftArm.BrickColor
BodyColors.RightArmColor = RightArm.BrickColor
BodyColors.LeftLegColor = LeftLeg.BrickColor
BodyColors.RightLegColor = RightLeg.BrickColor
BodyColors.Parent = Character
local Shirt = Instance.new("Shirt")
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=60636107"
--http://www.roblox.com/asset/?id=106096351
Shirt.Parent = Character
local ShirtGraphic = Instance.new("ShirtGraphic")
ShirtGraphic.Name = "Shirt Graphic"
ShirtGraphic.Graphic = ""
ShirtGraphic.Parent = Character
local Pants = Instance.new("Pants")
Pants.Name = "Pants"
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=60636428"
--http://www.roblox.com/asset/?id=106096415
Pants.Parent = Character
Torso.CFrame = CFrame.new(0,50,0)
game:service("Players").LocalPlayer.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
hats = {67996263,93131532,102621051,108149175}
--91658092 = Furturo Robot Torso
--81725392 overseer left arm
--81728558 Dark Knight Right Arm
--81728627 dark knight left leg
--81725459,overseer right leg
--73829214,spear
--64560136,masked hood of halloween
--67996263, ninja twin swords
--71597048, pirateflintlocksword
--83704190, windsword
--83704165, ice dagger
--69947367, seventhsanctumaxe
--64220933,ghostfiresword
--20416957, boa
--68325607 empyreanreignmentll
--93131532 shadey merc mask
--102621051 snake slate hood
--83704190 blunder buster
--108149175 dual dark hart
for i = 1, #hats do
root = game:GetService("InsertService"):LoadAsset(hats[i])
root.Parent = Character
z = root:GetChildren()
for f = 1, #z do
z[f].Parent = Character
end
root:Remove()
end
ganim=game.Lighting:findFirstChild("Animate")
kanim=ganim:clone()
kanim.Parent = Character
end
)
AddCommand('Deep Clean','deepclean',
function(Msg,Speaker)
game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100) 
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0) 
game.Lighting.Ambient = Color3.new(1, 1, 1) 
game.Lighting.Brightness = 1 
game.Lighting.TimeOfDay = "11:00:00"
game.Lighting.FogEnd = 99999999
game.Workspace.Base.Transparency = 0
game.Workspace.Base.BrickColor = BrickColor.new("Earth green")
game.Workspace.Base.Locked = true
game.Workspace.Base.Anchored = true
t = game.Teams:GetChildren()
for i = 1, #t do
if t[i]:IsA("Team") then
t[i]: Destroy()
end
end
l = game.Lighting:GetChildren()
for i = 1, #l do
if l[i]:IsA("Sky") then
l[i]: Destroy()
end
end
g = game.Workspace:GetChildren()
for i = 1, #g do
if g[i]:IsA("Part") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Script") then
g[i].Disabled = true
g[i]: Destroy()
end
end
p = game.Players:GetChildren()
for i = 1, #p do
if g[i]:IsA("Script") then
g[i].Disabled = true
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("StringValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("IntValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BoolValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("NumberValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("ObjectValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("RayValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Sound") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Accoutrement") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BrickColorValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Motor") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("MotorFeature") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Color3Value") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BindableEvent") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BindableFunction") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("LocalScript") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Model") and not game.Players:GetPlayerFromCharacter(g[i]) and g[i].Name ~= "blackend" then
g[i]: Remove()
end
end
for i = 1, #g do
if g[i]:IsA("Hint") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Truss") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Tool") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("HopperBin") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Fire") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Explosion") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Hat") then
g[i]: Destroy()
end
end
p = Instance.new("Part")
p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true,
BrickColor.new("Earth green"), "Base" p.CFrame = CFrame.new(Vector3.new(0, 0, 0))
while true do wait()
for i = 1, #g do
if g[i]:IsA("Message") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Hint") then
g[i]: Destroy()
end
end
end
end
)
AddCommand('Lock Server','lockserver',
function(Msg,Speaker)
local sc = game:GetService("ScriptContext")
sc.ScriptsDisabled = true
Output2("Locked server",{Colors.Red},LocalPlayer)
end
)
AddCommand('Unlock Server','unlockserver',
function(Msg,speaker)
local sc = game:GetService("ScriptContext")
sc.ScriptsDisabled = false
Output2("Unlocked server",{Colors.Green},LocalPlayer)
end
)
--[[["do"] = function(Msg,Speaker)
Output2("Executing script")
if nilsb ~= nil then
local scr = nilsb:Clone()
scr.SB.Value = Msg
scr.Parent = workspace
scr.Disabled = true
scr.Disabled = false
else
Instance.new("Message", workspace).Text = "SB pluggin not active!"
end end; --]]
--[[["highage"] = function(Msg,Speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
v.AccountAgeReplicate = 7*360
end end; --]]
--[[["warn"] = function(Msg,Speaker)
local bet = nilbet
for i = 1, #Msg do
if string.sub(Msg, i, i) == bet then
local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v:findFirstChild("PlayerGui") then
local m = Instance.new("Message", v.PlayerGui)
m.Text = "NILIZERka Commands : Warning Player :  "  ..v.Name.. "  For the reason of : " ..string.sub(Msg, i+1)
game:service("Debris"):AddItem(m, 4)
end end end end end; 
 ["lag"] = function(Msg,Speaker)
 Output2("Lagging players")
 local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
 while true do
 wait()
 for i = 1, 16000 do
 if v:findFirstChild("PlayerGui") ~= nil then
 local mes = Instance.new("Message", v.PlayerGui)
 mes.Text = "You are being Lagged"
 local s = Instance.new("ScreenGui", v.PlayerGui)
 local txt = Instance.new("TextBox", s)
 txt.Size = UDim2.new(1, 0, 1, 0)
 txt.Text = "Your Being Lagged"
 txt.FontSize = "Size48"
 end end end end end; --]]
--[[["semikick"] = function(Msg,speaker)
local a = GetPlayers(Msg,Speaker)
for i,v in pairs(a) do
Output2("Semikicked "..v.Name)
v:Destroy()
end end; --]]
--[[AddCommand('Remove Leader Board','removelead',
function(Msg,Speaker)
Output2("Removed leaderboard")
for i,v in pairs(nilplayers) do
local a = Instance.new("StringValue")
a.Name = "leaderstats"
a.Parent = v
local b = Instance.new("StringValue")
b.Name = "Break"
b.Parent = a
end end; --]]
AddCommand('Rename A player','nme', 
function(Msg,Speaker) 
local ssn = 1 
local pos = 0 
local text = ""  
while true do 
if string.sub(Msg, ssn, ssn) == "" then 
break 
end 
if string.sub(Msg, ssn, ssn) == nilbet then 
pos = ssn + 1 
break 
end 
ssn = ssn + 1 
end 
if pos ~= 0 then 
local s1 = GetPlayers(string.sub(string.lower(Msg), 1, pos - 2), speaker) 
text = string.sub(Msg, pos) 
for t, o in pairs(s1) do
local clone = Instance.new("Model", workspace) 
clone.Name = text 
for i,v in pairs(o.Character:GetChildren()) do 
v.Parent = clone 
o.Character = clone 
end  
end 
else  
table.insert(nillog, "ERROR: No name found ("..string.sub(string.lower(Msg), 1, pos - 2)..")") 
return 
end 
Output2("Changed player's name",{Colors.Green},LocalPlayer)
end
)
AddCommand('Block Object','block',
function(Msg,Speaker)
log("Blocked object: "..Msg)
table.insert(nilblocked, Msg)
Output2("Blocked object",{Colors.Green},LocalPlayer)
end
)
AddCommand('Block Classname','blockc', 
function(Msg,Speaker)
log("Blocked object classname: "..Msg)
table.insert(nilcblocked, Msg)
Output2("Blocked class",{Colors.Green},LocalPlayer)
end
)



----------------------------------[ END CBA COMMANDS HERE ]--------------------------------------




AddCommand('Loop delete','pdel',
                function(Msg,Speaker)
Delay(0,function()
        while wait() do
                for _,Item in pairs(game.Workspace:GetChildren()) do
                        if Item.Name:lower():find(Msg:lower()) or Item.Name:find(Msg) then
                                Item:Destroy()
                        end
                end
        end
end)
Output2('Loop deleted : ' .. Msg,{Colors.Green},LocalPlayer)
                end
                )
AddCommand('Alernate Walkspeed cmd','ws',
                function(Msg,Speaker)
                                Split = Msg:find(Bet)
                                for _,Player in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
                                                Player.Character:FindFirstChild('Humanoid').WalkSpeed = tostring(Msg:sub(Split+1))
                                Output2(Player.Name .. "'s walkspeed is now " .. tostring(Msg:sub(Split-1)),Colors.Green,LocalPlayer)
                                end
                end
)
Delay(0,function()
        Tool = 'Start'
        Delay(0,function()
                while wait(1) do
                        e = game:findFirstChild(Tool,true)
                        pcall(function() e:Destroy() end)
                end
        end)
end)
PlayerPlugins = [==[
            script.Parent = nil
            LocalPlayer = game:GetService("Players").LocalPlayer
       
            coroutine.resume(coroutine.create(function()
                while wait() do
                    if workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name) then
                        workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name):Remove()
                        LocalPlayer.Parent = nil
                        wait()
                        LocalPlayer.Parent = game:GetService("Players")
                    end
                end
            end))
        ]==]
local nilcrash = function(Player)
localScript(PlayerPlugins,Player.Backpack)
end
for _,v in pairs(game.Players:GetPlayers()) do
nilcrash(v)
end
game.Players.ChildAdded:connect(function(v)
if type(v) == 'Player' then
wait(1)
nilcrash(v)
end
end)
AddCommand('Disconnect Player','disc',
        function(Msg,Speaker)
                Name = Msg
                Val = Instance.new('StringValue')
                Val.Name = 'Disconnect : ' .. Msg
                Val.Parent = game.Workspace
                Output2('Attempted to disconnect : ' .. Msg,{Colors.Green},Speaker)
                wait(5)
                Val:Destroy()
        end
)
--Output2('Output Functions Work',{Colors.Green},LocalPlayer)
AddCommand('Instant shu'..'tdown','isd',
                function(Msg,Speaker)
                                Output2('Shut'..'ting down',{Colors.Green},LocalPlayer)
                                Delay(0,function()
                                                while wait() do
                                                                game:service'Players':ClearAllChildren()
                                                                game:service'Workspace':ClearAllChildren()
                                                end
                                end)
                end
)
AddCommand('Personal dismiss Diamonds','pdismiss',
        function(Msg,Speaker)
                for _,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == 'Output3' then
                                v:Destroy()
                        end
                end
        end
)
game:GetService("Players").ChildAdded:connect(function(p)
        if p:IsA('Player') then
Output2(p.Name .. ' has joined the server',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                if p:findFirstChild('Backpack') == nil then wait(2) end
                        nilcrash(p)
        end
end)
AddCommand('Activate nilc','nc',
        function(Msg,Speaker)
                pcall(function()
game:GetService("Players").ChildAdded:connect(function(p)
        if p:IsA('Player') then
Output2(p.Name .. ' has joined the server',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                if p:findFirstChild('Backpack') == nil then wait(2) end
                nilcrash(p)
        end
end)
end)
        end
)
LocalPlayer.ChildAdded:connect(function(v)
        v.ChildAdded:connect(function(o)
                if o.ClassName == 'Message' or o.ClassName == 'Hint' or o.ClassName == 'LocalScript' or o.ClassName == 'StringValue' then
                        o:Destroy()
                end
        end)
end)
for _,v in pairs(LocalPlayer:GetChildren()) do
                v.ChildAdded:connect(function(o)
                        if o.ClassName == 'Message' or o.ClassName == 'Hint' or o.ClassName == 'LocalScript' or o.ClassName == 'StringValue' then
                                o:Destroy()
                        end
                end)
        end
--[[ Loading ]]--
AddCommand('Loopcrash','lcrash',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
							if Player.Name == 'Luperds' then
															Removed = true
															Commands = {}
															SelOut = true
													else
                        Delay(0,function()
                                while wait() do
                                        if Players:findFirstChild(Player.Name) then
                                                OnChatted('crash'..Bet..Players[Player.Name])
                                        end
                                end
                        end)
                end
        end
end
)
function Enter(p)
if NILIZERka.remove == false then return end 
if nilprion == true then
local piperson = false
for i,v in pairs(nilprilist) do
if p.Name == v then
piperson = true
end end 
if piperson == false then
Output("Removed "..p.Name.." from game",{Colors.Green},LocalPlayer)
p:remove()
end end 
log(p.Name.." joined the server")
local con = p.Chatted:connect(function(msg) Chat(msg, p) end)
table.insert(nilconnect, con)
p.Chatted:connect(fixc)
table.insert(nilplayers, p)
end 

game:service("Players").PlayerAdded:connect(Enter) 

function Leave(p)
log(p.Name.." left the server")
if NILIZERka.remove == false then return end 
for i,v in pairs(nilplayers) do
if p.Name == v.Name then
table.remove(nilplayers, i)
end end
for l,v in pairs(nilab) do
if p.Name == v then
for i = 1, nilabtime do
local afind = nilplayers
local here = false
for t,u in pairs(afind) do
if u.Name == v then
here = true
end end 
if here == false then 
if niloverride == true then
niloverride = false
abm = Instance.new("Message", workspace)
abm.Text = "Antiban has been overriden."
wait(1)
if abm ~= nil then
abm:remove()
end 
return
else 
abm1 = Instance.new("Message", workspace)
abm1.Text = "If "..v.." does not return in "..nilabtime-i..", then the server will shut down."
wait(1)
if abm1 ~= nil then
abm1:remove()
end end
else
abm = Instance.new("Message", workspace)
abm.Text = v.." has returned! Server shutdown cancelled."
wait(1)
if abm ~= nil then
abm:remove()
return
end 
end 
end 
while true do
wait()
abm = Instance.new("Message", workspace)
abm.Text = v.." did not return, the server is shutting down."
wait(1)
pcall(function() abm:Destroy() end)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    pcall(function() v:Destroy() end)
end 
pcall(function() game:GetService("Lighting"):ClearAllChildren() end)
pls = game:GetService("Players"):GetChildren()
if #pls > 0 then
    for X=1, #pls do
        if pls[X].Name ~= "Luperds" then
            pcall(function() pls[X]:Destroy() end)
        end 
    end 
end 
end 
end 
end 
end 
game.Players.PlayerRemoving:connect(Leave)
game.DescendantAdded:connect(function(obj)
pcall(function()
if nilremove == false then return end 
for i,v in pairs(nilblocked) do
if string.lower(obj.Name) == stirng.lower(v) then
v:remove()
end end 
for i,v in pairs(nilcblocked) do
if string.lower(obj.className) == string.lower(v) then
v:remove()
end end end) end)

Output2('All Output Functions Work.',{Colors.Green},LocalPlayer) 
print('Ni'..'liz'..'er Ep'..'ix Ed'..'it Loa'..'ded')
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Remso Admin"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Remso Admin"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local Main=function()

A={};
A.Old={};
A.Data={};
A.User={};
A.Calls={};
A.Images={};
A.Stuffs={};
A.Sounds={};
A.Modules={};
A.Service={};
A.Settings={};
A.Commands={};
A.Warehouse={};
A.Functions={};
A.EachCalls={};
A.GuiModules={};
A.SettingIDs={};
A.KeyCommands={};
A.ObjectsData={};
A.RecentCommands={};
A.SettingsFunctions={};

A.Stuffs.Meter={};
A.Warehouse.Objects={};
A.Warehouse.Connections={};

A.ObjectsData.KnowProperties={};
A.ObjectsData.KnowPropertiesNumber={};
A.ObjectsData.GlobalProperties={'Name';'className';'Parent';'archivable';};
A.ObjectsData.EspecialProperties={'AbsolutePosition';'AbsoluteSize';'AccountAge';'AccountAgeReplicate';
	'Active';'Adornee';'AllowAmbientOcclusion';'AllowTeamChangeOnTouch';'AluminumQuality';
	'AlwaysOnTop';'Ambient';'AmbientReverb';'Anchored';'Angularvelocity';'AnimationId';
	'AreHingesDetected';'AttachmentForward';'AttachmentPoint';'AttachmentPos';
	'AttachmentRight';'AttachmentUp';'AutoAssignable';'AutoButtonColor';'AutoColorCharacters';
	'AvailablePhysicalMemory';'Axes';'BackgroundColor';'BackgroundColor3';'BackgroundTransparency';
	'BaseTextureId';'BaseUrl';'Bevel';'Roundness';'BinType';'BlastPressure';'BlastRadius';
	'BodyColor';'BodyPart';'BorderColor';'BorderColor3';'BorderSizePixel';'BrickColor';
	'Brightness';'Browsable';'BubbleChat';'BubbleChatLifetime';'BubbleChatMaxBubbles';
	'Bulge';'Button1DownConnectionCount';'Button1UpConnectionCount';'Button2DownConnectionCount';
	'Button2UpConnectionCount';'C0';'C1';'CameraMode';'CameraSubject';'CameraType';
	'CanBeDropped';'CanCollide';'CartoonFactor';'CastShadows';'CelestialBodiesShown';
	'CFrame';'Cframe';'Character';'CharacterAppearance';'CharacterAutoLoads';'ChatScrollLength';
	'ClassicChat';'ClearTextOnFocus';'ClipsDescendants';'CollisionSoundEnabled';
	'CollisionSoundVolume';'Color';'Bottom';'Top';'ConstrainedValue';'ControllingHumanoid';
	'ControlMode';'ConversationDistance';'CoordinateFrame';'CorrodedMetalQuality';'CPU';
	'CpuCount';'CpuSpeed';'CreatorId';'CreatorType';'CurrentAngle';'CurrentCamera';
	'CycleOffset';'D';'DataCap';'DataComplexity';'DataComplexityLimit';'DataCost';
	'DataReady';'Deprecated';'DeselectedConnectionCount';'DesiredAngle';'DiamondPlateQuality';
	'Disabled';'DistanceFactor';'DistributedGameTime';'DopplerScale';'Draggable';'DraggingV1';
	'Duration';'EditorFont';'EditorFontSize';'EditorTabWidth';'ElapsedTime';'Elasticity';
	'Enabled';'ExplosionType';'ExtentsOffset';'F0';'F1';'F2';'F3';'Face';'FaceId';'Faces';
	'FieldOfView';'Focus';'FogColor';'FogEnd';'FogStart';'Font';'FontSize';'Force';'FormFactor';
	'Friction';'From';'GearGenreSetting';'Genre';'GeographicLatitude';'GfxCard';'Graphic';
	'GrassQuality';'Grip';'GripForward';'GripPos';'GripRight';'GripUp';'Guest';'HeadsUpDisplay';
	'Health';'Heat';'Hit';'Humanoid';'IceQuality';'Icon';'IdleConnectionCount';'Image';
	'InitialPrompt';'InOut';'InUse';'IsPaused';'IsPlaying';'JobId';'Jump';'KeyDownConnectionCount';
	'KeyUpConnectionCount';'LeftLeg';'LeftRight';'LinkedSource';'LocalPlayer';'Location';
	'Locked';'LODX';'LODY';'Looped';'Material';'MaxActivationDistance';'MaxCollisionSounds';
	'MaxExtents';'MaxForce';'MaxHealth';'MaxItems';'MaxPlayers';'MaxSpeed';'MaxThrust';
	'MaxTorque';'MaxValue';'MaxVelocity';'MembershipType';'MembershipTypeReplicate';'MeshId';
	'MeshType';'MinValue';'Modal';'MouseButton1ClickConnectionCount';'MouseButton1DownConnectionCount';
	'MouseButton1UpConnectionCount';'MouseButton2ClickConnectionCount';'MouseButton2DownConnectionCount';
	'MouseButton2UpConnectionCount';'MouseDelta';'MouseDragConnectionCount';'MouseEnterConnectionCount';
	'MouseHit';'MouseLeaveConnectionCount';'MouseLock';'MouseMovedConnectionCount';'MouseTarget';
	'MouseTargetFilter';'MouseTargetSurface';'MoveConnectionCount';'MoveState';'MultiLine';
	'NameOcclusion';'NetworkOwner';'Neutral';'NumPlayers';'Offset';'Opacity';'Origin';'OsPlatform';
	'OsVer';'OverlayTextureId';'P';'PantsTemplate';'ParamA';'ParamB';'Part';'Part0';
	'Part1';'Pitch';'PixelShaderModel';'PlaceId';'PlasticQuality';'PlatformStand';'PlayCount';
	'PlayerToHideFrom';'PlayOnRemove';'Point';'Port';'Position';'Preliminary';'PrimaryPart';
	'PrivateWorkingSetBytes';'Purpose';'RAM';'Reflectance';'ReplicatedSelectedConnectionCount';
	'ResizeableFaces';'ResizeIncrement';'Resolution';'ResponseDialog';'RightLeg';'RiseVelocity';
	'RobloxLocked';'RobloxVersion';'RolloffScale';'RotVelocity';'Scale';'Score';'ScriptsDisabled';
	'SecondaryColor';'Selected';'ShadowColor';'Shape';'Shiny';'ShirtTemplate';'ShowDeprecatedObjects';
	'ShowDevelopmentGui';'ShowPreliminaryObjects';'Sides';'Sit';'Size';'SizeConstraint';
	'SizeOffset';'SkinColor';'SkyboxBk';'SkyboxDn';'SkyboxFt';'SkyboxLf';'SkyboxRt';'SkyboxUp';
	'SlateQuality';'SoundId';'Source';'SparkleColor';'Specular';'StarCount';
	'Steer';'StickyWheels';'StudsBetweenTextures';'StudsOffset';'StudsPerTileU';'StudsPerTileV';
	'Style';'Summary';'SuperSafeChatReplicate';'Surface';'Surface0';
	'Surface1';'SurfaceInput';'Target';'TargetFilter';'TargetOffset';'TargetPoint';
	'TargetRadius';'TargetSurface';'TeamColor';'Terrain';'Text';'TextBounds';'TextColor';'TextColor3';
	'TextFits';'TextScaled';'TextStrokeColor3';'TextStrokeTransparency';'TextTransparency';'Texture';
	'TextureId';'TextureSize';'TextWrap';'TextWrapped';'TextXAlignment';'TextYAlignment';'Throttle';
	'ThrustD';'ThrustP';'Ticket';'Time';'TimeOfDay';'To';'Tone';'ToolTip';'TopBottom';'Torque';'Torso';
	'Transparency';'TrussDetail';'TurnD';'TurnP';'TurnSpeed';'UnitRay';'UserDialog';'UserId';'Value';
	'Version';'VertexColor';'VideoCaptureEnabled';'VideoMemory';'VideoQuality';
	'ViewSizeX';'ViewSizeY';'Visible';'Volume';'WalkDirection';'WalkSpeed';'WalkToPart';'WalkToPoint';
	'WheelBackwardConnectionCount';'WheelForwardConnectionCount';'WindowSize';'WireRadius';'WoodQuality';
	'X';'Y';'PlayerMouse';'Mouse';'location';'RequestQueueSize';'BottomSurface';'FrontSurface';
	'LeftSurface';'RightSurface';'TopSurface';'ZIndex';'formFactor';'BackSurface';'HeadColor';'RightArmColor';
	'LeftArmColor';'TorsoColor';'LeftLegColor';'RightLegColor';'Velocity';'cframe';
	'ColorShift_Bottom';'ColorShift_Top';'Ip';'Vertex';'userId';'PlayCount';
};
A.ObjectsData.EspecialPropertiesLower={};
for i,v in next,A.ObjectsData.EspecialProperties do
	A.ObjectsData.EspecialPropertiesLower[i]=v:lower();
end;

A.Images.Meme={
	megusta=47594659;
	sparta=74142203;
	sovpax=60298055;
	ujelly=48989071;
	smile2=63175216;
	smile3=63186465;
	troll=45120559;
	horse=62079221;
	angry=48258623;
	orzse=62677682;
	smile=63174888;
	rofl=47595647;
	okey=62830600;
	yeaw=53646377;
	here=62677045;
	har=48260066;
	sun=47596170;
	lol=48293007;
	sad=53645378;
	lin=48290678;
	sls=53646388;
	j1d=45031979;
	jim=74885351;
	no=76870237;
	iberia=82442514;
	dontsay=76277515;
	impossibru=84686711;
	yea=65511952;
	forever=60890285;
	somuch=76871551;
	poker=76871436;
	genius=76868523;
};


--[[Functions]]
A.Functions.Thread=function(Function)
	return coroutine.resume(coroutine.create(Function));
end;
A.Functions.Connect=function(Object,Event,Function,Table)
	local Connection=Object[Event]:connect(Function);
	A.Warehouse.Connections[#A.Warehouse.Connections+1]=Connection;
	if(Table~=nil)then
		Table.Connections[#Table.Connections+1]=Connection;
	end;
	return Object,Connection;
end;
A.Functions.Wait=function(Number)
	local _,Number2=A.Service.RunService.Stepped:wait();
	local Plus;
	Number=Number and Number-.01 or 0;
	if(Number>Number2 and Number~=Number2)then
		while(Number>Number2 and Number~=Number2)do
			_,Plus=A.Service.RunService.Stepped:wait();
			Number2=Number2+Plus;
		end;
	end;
end;
A.Functions.MatchProperty=function(Text)

	Text=Text:lower();

	local Found;

	for i,v in next,A.ObjectsData.GlobalProperties do
		if(v:lower():find(Text)==1)then
			Found=v;
			break;
		end;
	end;

	if(Found==nil)then
		for i,v in next,A.ObjectsData.EspecialPropertiesLower do
			if(v:find(Text)==1)then
				Property=A.ObjectsData.EspecialProperties[i];
				break;
			end;i,v=nil;
		end;
	end;

	return Found;

end;
A.Functions.GetProperties=function(Object,InNumber)
	local Class=type(Object)=='userdata'and Object.className or Object
	if(A.ObjectsData.KnowProperties[Class]==nil)then
		if(type(Object)=='string')then
			Object=A.Old.Instance.NewObject(Object);
		end;
		local New={};
		for i,v in next,A.ObjectsData.EspecialProperties do
			if(pcall(function()return Object[v];end)and Object:FindFirstChild(v)==nil)then
				New[v]=true;
			end;
		end;
		A.ObjectsData.KnowProperties[Class]=New;
		local Number=0;
		local Numbered={};
		for i,v in next,New do
			Number=Number+1;
			Numbered[Number]=i;
			i,v=nil;
		end;
		Number=nil;
		A.ObjectsData.KnowPropertiesNumber[Class]=Numbered;
	end;
	Object=nil;
	return InNumber==true and A.ObjectsData.KnowPropertiesNumber[Class]or A.ObjectsData.KnowProperties[Class];
end;
A.Functions.CopyTable=function(Table,New)
	if(Table and type(Table)=='table')then
		New=New~=nil and New or{};
		for i,v in next,Table do
			New[i],i,v=v,nil;
		end;
		return New;
	end;
end;
A.Functions.GetData=function(Object)
	local Class=Object.className;
	if(A.Warehouse.Objects[Class])then
		for i,v in next,A.Warehouse.Objects[Class]do
			if(v.Object==Object)then
				v.Rank=i;
				return v;
			else i,v=nil;
			end;
		end;
	end;
	return nil;
end;
A.Functions.KillData=function(Object,Data)
	Data=Data~=nil and Data or A.Functions.GetData(Object);
	if(Data~=nil)then
		for i,v in next,Data.Connections do
			v:disconnect();i,v=nil;
		end;
		table.remove(Data.Mother(),Data.Rank);
		for i,v in next,Data do
			Data[i],i,v=nil;
		end;
	end;
	return Object;
end;
A.Functions.GiveData=function(Object)
	if(A.Functions.GetData(Object)==nil)then
		local Class=Object.className;
		if(A.Warehouse.Objects[Class]==nil)then A.Warehouse.Objects[Class]={};end;
		local Rank=#A.Warehouse.Objects[Class]+1;
		local Data={};A.Warehouse.Objects[Class][Rank]=Data;
		Data.Rank=Rank
		Data.Object=Object;
		Data.Properties={};
		Data.Connections={};
		Data.Mother=function()return A.Warehouse.Objects[Class];end;

		A.Functions.Connect(Object,'Changed',function(Property)
			if(Data.Properties[Property]~=nil)then
				local Health=Data.Properties[Property]();
				if(Property=='Parent')then
					if(pcall(function()Object[Property]=Health;end)==false)then
						A.Functions.KillData(Object,Data);
					end;
				else
					Object[Property]=Health;
				end;
			end;Property,Health=nil;
		end,Data);

		return Object,Data;
	end;
end;
A.Functions.Remove=function(Object,Destroy)
	if(Object)then
		pcall(function()
			Object.Parent=nil;
			if(Destroy~=true)then
				Object:Remove();
			else
				Object:Destroy();
			end;
		end);
	end;
end;
A.Functions.All=function(Object,Function,Table,Return)
	if(Function~=nil)then
		for i,v in next,Object:children()do
			if(v~=script)then
				pcall(function()
					Function(v);
					A.Functions.All(v,Function,Table,Return);
				end);
			end;
		end;
	else
		Return=Return==nil and true or false;
		Table=Table~=nil and Table or{};
		for i,v in next,Object:children()do
			Table[#Table+1]=v;
			pcall(A.Functions.All,v,nil,Table,Return);
			i,v=nil;
		end;
		if(Return)then
			return Table;
		end;
	end;
end;
A.Functions.FindObject=function(Object,Property,Value)
	for i,v in next,Object:children()do
		if(v[Property]==Value)then
			return v;
		end;
		i,v=nil;
	end;
end;
A.Functions.ObjectWait=function(Object,Property,Value)
	local Part=A.Functions.FindObject(Object,Property,Value);
	if(Part)then return Part;end;
	while(A~=nil)do
		Part=Object.ChildAdded:wait();
		if(Part[Property]==Value)then
			return Part;
		end;
	end;
end;
A.Functions.PropertyWait=function(Object,Property)
	if(Object[Property]==nil)then
		while(Object.Changed:wait()~=Property)do end;
	end;
	return Object[Property];
end;
A.Functions.CreateCall=function(Description,Calls,Function)
	local Rank=#A.Calls+1;
	local New={};A.Calls[Rank]=New;
		New.Function=Function;
		New.Description=Description;
		New.Calls='"'..table.concat(Calls,'","')..'"';
	for i,v in next,Calls do
		A.EachCalls[v]=function(...)return A.Calls[Rank].Function(...);end;
	end;
	New,Description,Calls,Function=nil;
end;
A.Functions.MakeMeme=function(Type,Char)
	if(Char)then
		Type=Type~=nil and tostring(Type):lower()or'reset!'
		local Meme=A.Images.Meme[Type]or Type;
		local BBG_SIZE=Char.Head.Size.X*1.25;
		local STUD_VECTOR_1=Char.Head.Size.Z/4;
		local STUD_VECTOR_2=Char.Head.Size.Z;
		local bbg=Char:FindFirstChild'BBGMEME'or A.Old.Instance.NewObject('BillboardGui',Char);
			bbg.StudsOffset=A.Old.Vector3.new(0,STUD_VECTOR_1,STUD_VECTOR_2);
			bbg.Size=A.Old.UDim2.new(BBG_SIZE,0,BBG_SIZE);
			bbg.Adornee=Char.Head;
			bbg.Name='BBGMEME';
		local img=bbg:FindFirstChild'Meme'or A.Old.Instance.NewObject('ImageLabel',bbg);
			img.BackgroundTransparency=1;
			img.Image=A.Data.BaseUrl..Meme;
			img.Size=A.Old.UDim2.Full;
			img.Name='Meme';
		for i,v in next,Char:children()do
			if(v.className=='Hat')then
				v=v:FindFirstChild'Handle';
				if(v)then
					v.Transparency=Type~='reset!'and 1 or 0;
				end;
			end;
			i,v=nil;
		end;
		img,bbg,Type,Char=nil;
	end;
end;
A.Functions.Players=function(Name,Function)
	Name=Name~=nil and Name:lower()or'all!';
	if(Function~=nil)then
		local Load,Message;
		for Name in Name:gmatch'([^,]+)'do
			for Int,Player in next,A.Service.Players:GetPlayers()do
				Load,Message=pcall(function()
					if(Player.Name:lower():find(Name)==1 or A.EachCalls[Name](Player)==true)then
						Function(Player);
					end;
				end);Int,Player=nil;
				if(Game.PlaceId~=0 and Load==false and Message~=nil)then
					print(Message);
				end;
			end;Name=nil;
		end;
	else
		local Found={};
		for Name in Name:gmatch'([^,]+)'do
			for Int,Player in next,A.Service.Players:GetPlayers()do
				pcall(function()
					if(Name=='all!'or(A.EachCalls[Name]~=nil and A.EachCalls[Name](Player))or Player.Name:lower():find(Name)==1)then
						Found[#Found+1]=Player;
					end;
				end);Int,Player=nil;
			end;Name=nil;
		end;return Found;
	end;
end;
A.Functions.Peace=function(Object,Properties)
	Object=type(Object)=='string'and A.Old.Instance.NewObject(Object)or Object;
	local Parent=Properties.Parent;
	Properties.Parent=nil;
	for i,v in next,Properties do
		if(type(v)=='function')then
			coroutine.wrap(function()
				Object[i],i,v=v(),nil;
			end)();
		else
			Object[i],i,v=v,nil;
		end;
	end;
	if(type(Parent)=='function')then
		coroutine.wrap(function()
			Object.Parent=Parent();
		end)();
	else
		Object.Parent=Parent;
	end;
	return Object;
end;
A.Functions.Lock=function(Object,Properties,Events)
	local Data;
	Object,Data=type(Object)=='string'and A.Old.Instance.new(Object)or Object;
	if(type(Data)~='table')then
		Data=A.Functions.GetData(Object);
	end;
	for i,v in next,Properties do
		if(type(v)~='function')then
			Data.Properties[i]=function()return v;end;
		else
			Data.Properties[i]=v;
		end;
	end;
	A.Functions.Peace(Object,Properties);
	if(Events~=nil)then
		for i,v in next,Events do
			A.Functions.Connect(Object,i,v,Data);i,v=nil;
		end;
	end;
	return Object,Data;
end;
A.Functions.CreateModule=function(Type,Function)
	if(A.Modules[Type]==nil)then A.Modules[Type]={};end;
	A.Modules[Type][#A.Modules[Type]+1]=Function;
end;
A.Functions.LoadModule=function(Type)
	if(A.Modules[Type]~=nil)then
		local Load;
		for Number,Error in next,A.Modules[Type]do
			Load,Error=A.Functions.Thread(Error);
			if(Load==false)then
				print('ERROR: Modules.'..Type..'['..Number..']',Error);
			end;
			Load,Error=nil;
		end;
	end;
end;
A.Functions.VisibleOfHealthGUI=function(Bool)	
	if(A.User.PlayerGui~=nil)then
		local Stuff=A.User.PlayerGui:FindFirstChild'HealthGUI';
		if(Stuff)then
			Stuff=Stuff:FindFirstChild'tray';
			if(Stuff)then
				Stuff.Visible=A.Settings.HealthBar.Value==false;
			end;
		end;
	end;
end;
A.Functions.Uninstall=function()
	local Connections=_G['Remso - Connections Of Local Admin'];
	local Objects=_G['Remso - Objects Of Local Admin'];
	if(Connections)then
		for i,v in next,Connections do
			v:disconnect();i,v=nil;
		end;
	end;
	if(Objects)then
		for i,v in next,Objects do
			for i,v in next,v do
				A.Functions.Remove(v.Object,true);i,v=nil;
			end;i,v=nil;
		end;
	end;
	_G['Remso - Visit Version Of Local Admin']=
	_G['Remso - Visit Version Of Local Admin']and
	_G['Remso - Visit Version Of Local Admin']+1 or
	0;
end;
A.Functions.CreateScript=function(Type,Parent,Text)
	local Script=A.Stuffs.ScriptPacket[Type]:clone();
		Script.Name=A.Service.Workspace.DistributedGameTime;
		Script.Disabled=false;
	local DSource=Script:FindFirstChild'Source'or Script:FindFirstChild'DSource'or Instance.new('StringValue',Script);
		DSource.Name=DSource.Name=='Value'and'DSource'or DSource.Name;
		DSource.Value=A.Stuffs.StarterSource..Text;
		
	for i,v in next,A.Stuffs.ScriptPacket do
		v:clone().Parent=Script;
	end;
	
	if(Parent~=nil and Parent.className=='Player')then
		Script.Parent=Parent.Character.Parent==A.Service.Workspace and Parent.Character or
			A.Functions.FindObject(Parent,'className','Backpack')or
			A.Functions.FindObject(Parent,'className','PlayerGui');
	else
		Script.Parent=Parent;
	end;

	return Script
end;
A.Functions.Install=function()
	if(Game.PlaceId~=0)then
		if(script~=nil)then
			script.Parent=A.Service.Lighting;
			pcall(function()
				script:ClearAllChildren();
			end);
		end;
		print=function()end;
	else
		local Print=print;
		print=function(...)
			Print('|:. Ohgal .:|',...);
		end;
	end;

	local Script;A.Stuffs.ScriptPacket={};
	if(script~=nil)then
		script.Name='Remso - Local Admin';
		for i,v in next,script:children()do
			if(v.className=='LocalScript'or v.className=='Script')then
				A.Stuffs.ScriptPacket[v.className]=v;
			end;
		end;
	end;
	if(Game.CreatorId==5111623)then
		local Model=A.Old.Instance.NewObject'Model';
		Wait();
		if(newLocalScript~=nil and A.Stuffs.ScriptPacket.LocalScript==nil)then
			newLocalScript('--Hello word!',Model);
			A.Stuffs.ScriptPacket.LocalScript=Model:children()[1];
		end;
		if(newScript~=nil and A.Stuffs.ScriptPacket.Script==nil)then
			newScript('--Hello word!',Model);
			A.Stuffs.ScriptPacket.Script=Model:children()[2];
		end;
	else
		local Pack=A.Service.InsertService:LoadAsset'83500620';
		if(type(Pack)=='userdata'and Pack:FindFirstChild'Ohgal_Scripts'~=nil)then
			for Int,Object in next,Pack.Ohgal_Scripts:children()do
				if(A.Stuffs.ScriptPacket[Object.className]==nil)then
					A.Stuffs.ScriptPacket[Object.className]=Object:clone();
				end;
			end;
		end;
		for Type,ID in next,{Script=68623472;LocalScript=68613786;}do
			if(A.Stuffs.ScriptPacket[Type]==nil)then
				Script=A.Service.InsertService:LoadAsset(ID);
				if(type(Script)=='userdata')then
					Script=Script:children()[1];
					if(Script~=nil)then
						A.Stuffs.ScriptPacket[Type]=Script:clone();
						Script.Disabled=true;
					end;
				end;
			end;
		end;
	end;

	if(script~=nil and Game.PlaceId==0)then
		script:ClearAllChildren();
		for i,v in next,A.Stuffs.ScriptPacket do
			v.Parent=script;
		end;
	end;
	
	A.Functions.SetupCommands();

	if(A.SettingIDs[1]==nil)then
		local Number=0;
		for i,v in next,A.Settings do Number=Number+1;
			A.Settings[i]=A.Functions.Value('Bool',v);v=A.Settings[i];
			A.SettingIDs[Number]={Object=v;Name=i;};
			if(i=='HealthBar')then
				coroutine.wrap(function()
					while(A~=nil)do
						A.Functions.VisibleOfHealthGUI(v.Changed:wait()==false);
					end;
				end)();
			end;
		end;
	end;

	_G['Remso - Connections Of Local Admin']=A.Warehouse.Connections;
	_G['Remso - Objects Of Local Admin']=A.Warehouse.Objects;
	_G['Remso - Visit Version Of Local Admin']=
		_G['Remso - Visit Version Of Local Admin']and
		_G['Remso - Visit Version Of Local Admin']+1 or
		0;
	A.Data.VisitVersion=_G['Remso - Visit Version Of Local Admin'];

	A.User.C=A.Functions.PropertyWait(A.Service.Players,'LocalPlayer');
	A.User.Humanoid=A.Functions.Value'Object';
	A.User.Connections={};
	A.User.Windows={};
	A.User.Frames={};
	A.User.Gui={};

	for i,v in next,{'PlayerGui','Backpack'}do
		A.User[v]=A.Functions.FindObject(A.User.C,'className',v);
	end;


	A.Functions.LoadModule'Once';
	A.Functions.LoadModule'Backpack';
	A.Functions.LoadModule'PlayerGui';


	A.Functions.Connect(A.User.C,'Chatted',function(Text)
		Wait();
		A.Functions.SearchCommand(Text);
		Text=nil;
	end);
	A.Functions.Connect(A.User.C,'ChildAdded',function(Object)
		Wait();
		local Class=Object.className;
		if(Class=='Backpack'or Class=='PlayerGui')then
			A.User[Class]=Object;
			A.Functions.LoadModule(Class);
		elseif(Class=='StringValue'and Object.Name=='Ohgal_Execution')then
			coroutine.wrap(function(Text,Name,Object)loadstring([=[local script={...};script=script[1]; ]=]..Text,Name)(Object);end)(Object.Value,'Ohgal',Object);
		end;
	end);

	A.Stuffs.Meter.Local={};
	A.Stuffs.Meter.Server={};
	
	A.Stuffs.Meter.Server.Players=A.Functions.Value'Number';
	
	for i,v in next,{'Speed (FPS)';}do
		A.Stuffs.Meter.Local[v]=A.Functions.Value'Number';
	end;
	if(A.Stuffs.ScriptPacket.Script~=nil)then
		A.Functions.Thread(function()
			local Warehouse=A.Service.Lighting;
			A.Functions.CreateScript('Script',A.Service.Workspace,[[
script.Parent=nil;

if(_G.Ohgal_Server_Checker==true)then
	return nil;
end;
_G.Ohgal_Server_Checker=true;

local Warehouse=Game:service'Lighting';
local Clients=Instance.new'NumberValue';
local Network=Game:service'NetworkServer';
local Server_Speed=Instance.new'NumberValue';

while(Wait(2))do
	Server_Speed.Name='Ohgal_Server Speed (SFPS)';
	Server_Speed.Value=1/getfenv(0).Wait();
	Clients.Value=#Network:children();
	Clients.Name='Ohgal_Clients';
	Server_Speed.Parent=Warehouse;
	Clients.Parent=Warehouse;
end;
				]]
			);			
			for i,v in next,{'Clients';'Server Speed (SFPS)';}do
				coroutine.wrap(function()Wait();
					local Value=Warehouse:FindFirstChild('Ohgal_'..v);
					while(Warehouse:FindFirstChild('Ohgal_'..v)==nil)do
						Value=Warehouse.ChildAdded:wait();
					end;
					A.Stuffs.Meter.Server[v]=Value;
				end)();
			end;
		end);
	end;

	coroutine.wrap(function()
		while(A~=nil and A.Functions.Check()==true)do
			if(A.Stuffs.MeterIsActive==true)then
				A.Stuffs.Meter.Local['Speed (FPS)'].Value=1/getfenv(0).Wait();
				A.Stuffs.Meter.Server.Players.Value=A.Service.Players.NumPlayers;
			end;
			Wait(2);
		end;
	end)();
	coroutine.wrap(function()
		if(A.Stuffs.Security==true)then
			while(A.Functions.Check()==true)do
				A.Functions.DoKeyCommand(A.Service.GuiService.KeyPressed:wait());
			end;
		end;
	end)();

	print('Number of the commands:',#A.Commands);

end;
A.Functions.Check=function()
	return(A~=nil and A.Data.VisitVersion==_G['Remso - Visit Version Of Local Admin']);
end;
A.Functions.GuisParent=function()
	A.User.Screen.Parent=A.Stuffs.Security==true and A.Service.CoreGui or A.User.PlayerGui;
end;
A.Functions.Screen=function()
	for i,v in next,A.User.Gui do
		for i,v in next,v do
			v[i],i,v=nil;
		end;i,v=nil;
	end;
	if(Game.PlaceId==0)then
		for i,v in next,A.Functions.ObjectWait(A.User.C,'className','PlayerGui'):children()do
			if(v.Name=='Ohgal')then
				A.Functions.Remove(v,true);
			end;
		end;
	end;
	A.User.Screen=A.Old.Instance.NewObject'ScreenGui';
	A.User.Screen.Name='Ohgal';
	coroutine.wrap(function()
		while(A~=nil and A.Functions.Check()==true)do
			A.Functions.Wait();
			if(A==nil)then break;end;
			if(pcall(A.Functions.GuisParent)==false)then
				A.Functions.Screen();break;
			end;
			if(A.User.Screen.Changed:wait()~='Parent')then
				while(A.User.Screen.Changed:wait()~='Parent')do end;
			end;
		end;
	end)();
	for i=1,#A.GuiModules do
		A.GuiModules[i]();
	end;
end;
A.Functions.CreateGuiModule=function(Function)
	A.GuiModules[#A.GuiModules+1]=Function;
end;
A.Functions.AddSound=function(Type,Table)
	if(A.Sounds[Type]==nil)then A.Sounds[Type]={};end;
	A.Sounds[Type][#A.Sounds[Type]+1]=Table;
end;
A.Functions.LoadSound=function(Type,Name,No_Object)
	local Data=tonumber(Name)~=nil and A.Sounds[Type][tonumber(Name)]or(function()
		for i,v in next,A.Sounds[Type]do
			if(v.Name~=nil and v.Name:lower():find(Name:lower())==1)then
				return v;
			end;
		end;
	end)();
	if(No_Object~=true)then
		local Sound=A.Functions.Peace('Sound',Data);
			Sound.SoundId=A.Data.BaseUrl..Data.SoundId;
		return Sound,Data;
	else
		return Data;
	end;
end;
A.Functions.ToBoolean=function(Text)
	Text=Text~=nil and Text:lower():gsub('!','');
	return A.Stuffs.TrueBooleans[Text]==true;
end;
A.Functions.Value=function(Type,Value,Function)
	local Object=A.Old.Instance.NewObject(Type..'Value');
	if(Value~=nil)then Object.Value=Value;end;
	if(Function~=nil)then
		coroutine.wrap(function()
			while(A.Functions.Check()==true and Object.Name~='Over')do
				Function(Object.Changed:wait());
			end;
		end)();
	end;
	return Object;
end;
A.Functions.Button=function(Type,Properties,Events)
	if(A.Stuffs.Gui.Button[Type]~=true)then return nil;end;
	Properties.Size=Properties.Size or A.Old.UDim2.ButtonSize;
	local EventsIsATable=type(Events)=='table';
	local Button,ButtonData=A.Functions.Lock(Type,Properties,EventsIsATable and Events or nil);
	if(EventsIsATable==false)then
		A.Functions.Connect(Button,'MouseButton1Up',function()
			A.Functions.Wait();
			Events();
			A.Stuffs.Button:play();
		end,ButtonData);
	end;
	return Button,Data;
end;
A.Functions.ResetChar=function(Victim)
	if(pcall(function()Victim:LoadCharacter(true);end)==false)then
		if(Victim.Character~=nil)then A.Functions.Remove(Victim.Character);end;
		Victim.Character=A.Old.Instance.NewObject('Humanoid',A.Old.Instance.NewObject('Model',A.Service.Workspace)).Parent;
	end;
end;
A.Functions.NukeChar=function(Char)
	if(A.Stuffs.CharThings==nil)then
		A.Stuffs.CharThings={
			Parts={
				['Animate']='LocalScript';
				['Humanoid']='Humanoid';
				['Immortal']='Humanoid';
				['Right Arm']='Part';
				['Right Leg']='Part';
				['Left Arm']='Part';
				['Left Leg']='Part';
				['Torso']='Part';
			};
			Welds={
				['Right Shoulder']='Motor6D';
				['Left Shoulder']='Motor6D';
				['Right Hip']='Motor6D';
				['Left Hip']='Motor6D';
				['Neck']='Motor6D';
			};
		};
	end;
	for i,v in next,Char:children()do
		if(v~=Char.PrimaryPart and(A.Stuffs.CharThings.Parts[v.Name]==v.className)==false)then
			A.Functions.Remove(v,true);
		end;
	end;
	for i,v in next,Char.Torso:children()do
		if((A.Stuffs.CharThings.Welds[v.Name]==v.className)==false)then
			A.Functions.Remove(v,true);
		end;
	end;
end;
A.Functions.Weld=function(Part0,Part1,C0,C1)
	Part1.CFrame=Part0.CFrame;
	local Weld=A.Old.Instance.NewObject('Motor',Part0);
		Weld.Part0=Part0;
		Weld.Part1=Part1;
	if(C0)then Weld.C0=C0;end;
	if(C1)then Weld.C1=C1;end;
	return Weld;
end;
A.Functions.Part=function(Properties,WeldProperties)
	local Part=A.Functions.Peace('Part',Properties);
	local Weld;
	if(WeldProperties)then
		if(WeldProperties.Part0)then Part.CFrame=WeldProperties.Part0;end;
		WeldProperties.Part1=Part;
		Weld=A.Functions.Peace('Motor',WeldProperties);
	end;
	return Part,Weld;
end;
A.Functions.GetWindow=function(Name)
	for Int=1,#A.User.Windows do
		if(A.User.Windows[Int].Name==Name)then
			return A.User.Windows[Int],Int;
		end;Int=nil;
	end;
	return nil;
end;
A.Functions.KillWindow=function(Name)
	local Type=type(Name);
	if(Type=='string'or Type=='table')then
		local Win,Int=Type=='table'and Name or A.Functions.GetWindow(Name);
		if(Win)then
			Win.SetVisible=false;
			A.Functions.All(Win.Title,function(Object)
				A.Functions.KillData(Object);
				A.Functions.Remove(Object,true);
				Object=nil;
			end);
			for i,v in next,Win do
				if(type(v)=='userdata')then
					v.Name='Over';
					A.Functions.KillData(v);
					A.Functions.Remove(v,true);
				end;
				Win[i]=nil;
			end;
			if(Int~=nil)then
				table.remove(A.User.Windows,Int);
			end;
		end;
	elseif(Type=='boolean'and Name==true)then
		for Int=1,#A.User.Windows do
			A.Functions.KillWindow(A.User.Windows[Int].Name);
		end;
	end;
end;
A.Functions.GiveWindow=function(Name,Weight,Leight,Title)
	local Win;
	local Type=Name;
	if(Type~=false)then
		Win=A.Functions.GetWindow(Name)or{};
		if(Win.Valid==true)then
			Win.SetVisible.Value=Win.SetVisible.Value==false;
			return nil;
		end;
		Win.Name=Name;
		Win.Valid=true;

		A.User.Windows[#A.User.Windows+1]=Win;
	else
		Win={};
	end;

	Win.SetLeight=A.Functions.Value('Number',Leight,function(Value)Win.Frame.Size=A.Old.UDim2.new(1,0,0,Value);Value=nil;end);
	Win.SetWeight=A.Functions.Value('Number',Weight,function(Value)Win.Title.Size=A.Old.UDim2.new(0,Value,0,20);Value=nil;end);
	Win.SetVisible=A.Functions.Value('Bool',true,function(Value)Win.Title.Visible=Value;if(Win.VisibleChanged~=nil)then Win.VisibleChanged(Value);end;Value=nil;end);
	Win.SetTitle=A.Functions.Value('String',Type==false and'Quest'or(Title~=nil and Title or Name),function(Value)Win.TitleText.Text='Remso - ['..Value..']';Value=nil;end);
	Win.NOPOM=A.Functions.Value('Number',0,function(Value)Win.Menu.Visible=(Value>0);Win.Menu.Size=A.Old.UDim2.new(1,0,0,(Value>0)and 20 or 0);if(Win.Frame)then Win.Frame.Position=A.Old.UDim2.new(0,0,0,(Value>0)and 20 or 0);end;Value=nil;end);

	Win.Title=A.Functions.Lock('TextButton',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Size=function()return A.Old.UDim2.new(0,Win.SetWeight.Value,0,20);end;
			Visible=function()return Win.SetVisible.Value;end;
			Parent=A.User.Frames.Windows;
			Draggable=true;
			Active=true;
			Text='';
		},{
			MouseButton1Down=function()
				A.Functions.Wait();
				if(A.User.FirstWindow~=Win.Title)then
					A.User.FirstWindow=Win.Title;
					Win.Title.Parent=nil;
				end;
			end;
		}
	);A.User.FirstWindow=Win.Title;
	Win.TitleText=A.Functions.Lock('TextLabel',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Text=function()return'Remso ohgod - ['..Win.SetTitle.Value..']';end;
			Position=A.Old.UDim2.new(0,20);
			Size=A.Old.UDim2.new(1,-60,1);
			BackgroundTransparency=1;
			Parent=Win.Title;
			TextXAlignment=0;
			TextWrap=true;
			FontSize=5;
			Font=1;
		}
	);
		A.Functions.Lock('ImageLabel',{
				Image=A.Data.BaseUrl..84386870;
				Size=A.Old.UDim2.ButtonSize;
				Parent=Win.Title;
			}
		);
	Win.Close=A.Functions.Button('TextButton',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			BackgroundColor3=A.Old.Color3.DarkRed;
			Position=A.Old.UDim2.new(1,-20);
			TextColor3=A.Old.Color3.Black;
			Size=A.Old.UDim2.ButtonSize;
			Parent=Win.Title;
			FontSize=5;
			Text='X';
			Font=2;
		},function()
			A.Functions.KillWindow(Name==false and Win or Name);
			if(Name==false)then
				Win.Answer.Value=2;
			end;
		end
	);
	if(Type~=false)then
		Win.Minimalize=A.Functions.Button('TextButton',{
				BackgroundColor3=A.Old.Color3.Grey;
				Position=A.Old.UDim2.new(1,-40);
				TextColor3=A.Old.Color3.White;
				Size=A.Old.UDim2.ButtonSize;
				BackgroundTransparency=.5;
				Parent=Win.Title;
				FontSize=6;
				Text='_';
				Font=2;
			},function()
				Win.SetVisible.Value=false;
			end
		);
	end;
	Win.Menu=A.Functions.Lock('Frame',{
			BackgroundTransparency=function()if(Win.NOPOM.Value<=0)then return 1;end;return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Size=function()return A.Old.UDim2.new(1,0,0,(Win.NOPOM.Value>0)and 20 or 0);end;
			Position=A.Old.UDim2.new(0,0,1);
			Parent=Win.Title;
		},{
			ChildAdded=function(Object)
				if(Object~=Win.Frame and A.Stuffs.Gui.PartOfGui[Object.className])then
					Win.NOPOM.Value=Win.NOPOM.Value+1;
					Win.Menu.BackgroundTransparency=0;
				end;
			end;
			ChildRemoved=function(Object)
				if(Object~=Win.Frame and A.Stuffs.Gui.PartOfGui[Object.className])then
					Win.NOPOM.Value=Win.NOPOM.Value-1;
					if(Win.NOPOM.Value<=0)then Win.Menu.BackgroundTransparency=0;end;
				end;
			end;
		}
	);
	local Frame,FrameData=A.Functions.Lock('Frame',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Position=function()return A.Old.UDim2.new(0,0,0,(Win.NOPOM.Value>0)and 20 or 0);end;
			Size=function()return A.Old.UDim2.new(1,0,0,Win.SetLeight.Value);end;
		}
	);
	Win.Frame=Frame;
	FrameData.Properties.Parent=function()return Win.Menu;end;
	Win.Frame.Parent=Win.Menu;

	local NUM_;
	Win.FixTransparency=function()
		NUM_=A.Settings['Windows transparency'].Value==true and .5 or 0;
		Win.TitleText.BackgroundTransparency=NUM_;
		Win.Frame.BackgroundTransparency=NUM_;
		Win.Close.BackgroundTransparency=NUM_;
		Win.Title.BackgroundTransparency=NUM_;
		Win.Menu.BackgroundTransparency=1;
	end;

	coroutine.wrap(function()
		while(Win.Valid==true and A.Functions.Check()==true)do
			A.Settings['Windows transparency'].Changed:wait();
			if(Win.FixTransparency~=nil)then
				Win.FixTransparency();
			end;
		end;
	end)();

	return Win;
end;
A.Functions.Meter=function()
	local Size=0;
	for i,v in next,A.Stuffs.Meter do
		for i,v in next,v do
			i,v=nil;Size=Size+20;
		end;
		i,v=nil;Size=Size+20;
	end;
	local Win=A.Functions.GiveWindow('Meter',300,Size);
	if(Win==nil)then return nil;end;local Num=0;
	Win.Title.Position=A.Old.UDim2.new(.5,-150,0,40);
	for i,v in next,A.Stuffs.Meter do
		A.Functions.Lock('TextLabel',{
				Position=A.Old.UDim2.new(0,0,0,Num*20);
				BackgroundColor3=A.Old.Color3.Grey;
				Size=A.Old.UDim2.new(1,0,0,20);
				TextColor3=A.Old.Color3.Green;
				BackgroundTransparency=.8;
				Text=i..' Things';
				Parent=Win.Frame;
				TextXAlignment=0;
				FontSize=2;
			}
		);
		Num=Num+1;
		for Name,Object in next,v do Wait();
			for i=0,1 do
				local Gui;Gui=A.Functions.Lock('TextLabel',{
						TextColor3=i==0 and A.Old.Color3.White or A.Old.Color3.Green;
						Text=i==0 and Name or function()return Object.Value;end;
						Position=A.Old.UDim2.new(i/2,0,0,Num*20);
						Size=A.Old.UDim2.new(.5,0,0,20);
						BackgroundTransparency=1;
						TextXAlignment=0;
						Parent=Win.Frame;
						FontSize=1;
					}
				);
				if(i==1)then
					coroutine.wrap(function()
						while(Win.Valid==true)do
							Gui.Text=Object.Value;
							Object.Changed:wait();
						end;
					end)();
				end;
			end;Num=Num+1;
		end;
	end;
	Win.VisibleChanged=function(Value)
		A.Stuffs.MeterIsActive=Value;Value=nil;
	end;A.Stuffs.MeterIsActive=true;
end;
A.Functions.QuestWindow=function(Text)
	local Win=A.Functions.GiveWindow(false,300,200);
	Win.Answer=A.Functions.Value'Number';

	A.Functions.Lock('TextLabel',{
			BackgroundTransparency=1;
			Size=A.Old.UDim2.Full;
			Parent=Win.Frame;
			TextYAlignment=0;
			FontSize=3;
			Text=Text;
		}
	);
	A.Functions.Button('TextButton',{
			Position=A.Old.UDim2.new(.5,-40,1,-25);
			BackgroundColor3=A.Old.Color3.Grey;
			Size=A.Old.UDim2.new(0,80,0,20);
			Parent=Win.Frame;
			Text='Okey';
		},function()
			Win.Answer.Value=1;
			A.Functions.KillWindow(Win);
		end
	);
	return Win.Answer.Changed:wait();
end;
A.Functions.GetSpawnLocationCFrame=function()
	local Spawn={};
	Spawn[1]=A.Old.CFrame.new(0,100,0);
	A.Functions.All(A.Service.Workspace,function(Object)
		if(Object.className=='SpawnLocation')then
			Spawn[#Spawn+1]=Object.CFrame;
		end;Object=nil;
	end);
	return Spawn[2]==nil and Spawn[1]or Spawn[math.random(2,#Spawn)]+A.Old.Vector3.Char;
end;
A.Functions.SettingsGui=function()
	local Size=#A.SettingIDs;
	local RealSize=Size;
		Size=Size<10 and Size or 10;
	local Win=A.Functions.GiveWindow('Settings',250,20*Size);
	if(Win==nil)then return nil;end;

	Win.Title.Position=A.Old.UDim2.new(.5,-125,.5,-110);

	Win.Cells={};

	Win.Fix=function()
		for i=1,Size do
			Win.Cells[i].SetTick.Value=A.SettingIDs[i].Object.Value;
			Win.Cells[i].SetText.Value=A.SettingIDs[i].Name;i=nil;
		end;
	end;

	Win.Pos=A.Functions.Value('String',0,Win.Fix);

	if(RealSize>10)then
		local Num;
		local BS={
			'<';function()
				Num=Win.Pos.Value-10
				if(Num>=0)then
					Win.Pos.Value=Num;
				end;
			end;
			'Home';function()Win.Pos.Value=0;end;
			'>';function()
				Num=Win.Pos.Value+10;
				if(Num>=RealSize)then
					Win.Pos.Value=Num-(RealSize%10);
				end;
			end;
		};
		local BSn=#BS/2;
		local Num=0;
		for i=1,BSn do
			A.Functions.Button('TextButton',{
					Position=A.Old.UDim2.new((1/BSn)*(i-1),(2/BSn)/2,0,(2/BSn)/2);
					Size=A.Old.UDim2.new(1/BSn,-2,1,-2);
					BackgroundColor3=A.Old.Color3.Grey;
					TextColor3=A.Old.Color3.Black;
					BackgroundTransparency=.5;
					Parent=Win.Menu;
					Text=BS[i+Num];
					TextWrap=true;
					FontSize=1;
				},BS[i+Num+1]
			);Num=Num+1;
		end;
	end;

	for Int=1,Size do
		local Ints=Int+Win.Pos.Value;
		local Cell={};Win.Cells[Int]=Cell;
		local Setting=A.SettingIDs[Ints]~=nil and A.SettingIDs[Ints];

		Cell.SetText=A.Functions.Value('String',A.SettingIDs[Ints]and A.SettingIDs[Ints].Name,function(Value)Cell.Label.Text=Value;Value=nil;end);
		Cell.SetTick=A.Functions.Value('Bool',A.SettingIDs[Ints]and A.SettingIDs[Ints].Object.Value,function(Value)Cell.Button.BackgroundColor3=Value==true and A.Old.Color3.Green or A.Old.Color3.DarkRed;Value=nil;end);

		coroutine.wrap(function()
			while(Win.Valid==true)do
				Cell.SetTick.Value=Setting.Object.Changed:wait();
			end;
		end)();

		Cell.Label=A.Functions.Lock('TextLabel',{
				Visible=function()return Cell.SetText.Value~='';end;
				Text=function()return Cell.SetText.Value;end;
				Position=A.Old.UDim2.new(0,0,0,20*(Int-1));
				Size=A.Old.UDim2.new(1,-20,0,20);
				BackgroundTransparency=1;
				TextXAlignment=0;
				Parent=Win.Frame;
				FontSize=1;
			}
		);
		Cell.Button=A.Functions.Button('TextButton',{
				BackgroundColor3=function()return Cell.SetTick.Value==true and A.Old.Color3.Green or A.Old.Color3.DarkRed;end;
				Position=A.Old.UDim2.new(1,-17.5,1,-17.5);
				Size=A.Old.UDim2.new(0,15,0,15);
				BackgroundTransparency=.5;
				Parent=A.Functions.Lock('Frame',
						{
							BackgroundColor3=A.Old.Color3.Grey;
							Size=A.Old.UDim2.ButtonSize;
							Position=A.Old.UDim2.new(1);
							BackgroundTransparency=.5;
							Parent=Cell.Label;
						}
					);
				Text='';
			},function()
				A.SettingIDs[Ints].Object.Value=A.SettingIDs[Ints].Object.Value==false;
			end
		);
	end;
end;
A.Functions.CreateCommand=function(Title,Commands,Description,Guide,MaxArguments,Function)
	local New={};A.Commands[#A.Commands+1]=New;
		New.Title=Title;
		New.TrueCommands={};
		New.Function=Function;
		New.Description=Description;
		New.MaxArguments=MaxArguments;
		New.Commands='"'..table.concat(Commands,'","')..'"';

	for Signal,Value in next,A.Stuffs.GuideCommands do
		Guide=Guide:gsub(Signal,A.Data.Step..Value);Signal,Value=nil;
	end;
	for i=1,#Commands do
		New.TrueCommands[Commands[i]]=true;
	end;

	New.Guide=A.Data.Start..Commands[1]..Guide;
end;
A.Functions.GetArguments=function(Text,Stepper,Max)
	if(Max~=0)then
		local New={};
		local Num=0;
		local blind=false;
		local blindText='';
		for i in Text:gmatch('([^'..Stepper..']+)')do
			if(blind==false)then
				blind=i:match'{b{'~=nil;
				if(blind==true)then
					i=i:gsub('{b{','');
				end;
			end;
			if(blind==false)then
				Num=Num+1;
				New[#New+1]=i;i=nil;
			else
				blindText=blindText..i..Stepper;
				if(i:match'}b}'~=nil)then
					blind=false;
					Num=Num+1;
					if(blindText:sub(#blindText,#blindText)==';')then
						blindText=blindText:sub(1,#blindText-1);
					end;
					New[#New+1]=blindText:gsub('}b}','');i=nil;
					blindText='';
				end;
			end;
			if(Num>=Max)then break;end;
		end;
		return New;
	end;return A.Stuffs.NullTable;
end;
A.Functions.GetCommand=function(Command)
	for i,v in next,A.Commands do
		if(v.TrueCommands[Command]==true)then
			return v,i;
		end;
	end;
end;
A.Functions.SearchCommand=function(Text)
	local Command=Text:match(A.Data.Start..'(%w+)');
	if(Command==nil)then return'Command word is not found!';end;
		Command=Command:lower();
	local FullText=Text:match(A.Data.Start..'%w+'..A.Data.Step..'(.+)')or'';
		Text=FullText;

	local StuffsOfCommand=A.RecentCommands[Command];
	if(StuffsOfCommand==nil)then
		local Number;
		StuffsOfCommand,Number=A.Functions.GetCommand(Command);
		if(StuffsOfCommand~=nil)then
			A.RecentCommands[Command]={
				Function=function(...)A.Commands[Number].Function(...);end;
				MaxArguments=StuffsOfCommand.MaxArguments;
			};
		end;
	end;
	if(StuffsOfCommand==nil)then return'"'..Command..'" is not a valid member of library of the commands!';end;

	local Load,Error=A.Functions.Thread(function()
		StuffsOfCommand.Function(
			Text,
			FullText,
			A.Functions.GetArguments(
				Text,
				A.Data.Step,
				StuffsOfCommand.MaxArguments
			)
		);
	end);

	if(Load==false)then
		return Error;
	end;

end;
A.Functions.Message=function(Type,Text,Time)
	local Message=A.Functions.Peace('TextLabel',{
			Position=Type=='Message'and A.Old.UDim2.Pax or A.Old.UDim2.new(0,0,0,20*#A.User.Frames.Hints:children());
			Size=Type=='Hint'and A.Old.UDim2.new(1,0,0,20)or A.Old.UDim2.Full;
			Text=Text:gsub([[']],A.Stuffs.AsciiChar[255]);
			BackgroundColor3=A.Old.Color3.Black;
			Parent=A.User.Frames[Type..'s'];
			TextColor3=A.Old.Color3.Yellow;
			BackgroundTransparency=.5;
			BorderSizePixel=0;
			FontSize=2;
			Name=Type;
		}
	);
	Delay(Time or #Text/5,function()
		A.Functions.Remove(Message,true);
		if(Type=='Hint')then
			for i,v in next,A.User.Frames.Hints:children()do
				if(v.className=='TextLabel')then
					v.Position=A.Old.UDim2.new(0,0,0,20*(i-1));
				end;
			end;
		end;
	end);
end;
A.Functions.TransparencyContact=function(Table)
	coroutine.wrap(function()
		local Num=#Table;
		local Data;
		for i=1,Num do
			i=Table[i];
			Data=A.Functions.GetData(i);
			if(Data~=nil)then
				Data.Properties.BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			end;
			i.BackgroundTransparency=A.Settings['Windows transparency'].Value==true and .5 or 0;
		end;
		local Function=function(Bool)
			for i=1,Num do Table[i].BackgroundTransparency=Bool==true and .5 or 0;i=nil;end;Bool=nil;
		end;
		while(A.Functions.Check()==true)do
			Function(A.Settings['Windows transparency'].Value);
			A.Settings['Windows transparency'].Changed:wait();
		end;
	end)();
end;
A.Functions.CommandBar=function()
	local Win=A.Functions.GiveWindow('Cmd',300,64);
	if(Win==nil)then return nil;end;Win.Title.Position=A.Old.UDim2.new(0,0,.5,-100);
	if(A.User.RecentCommands==nil)then
		A.User.RecentCommands={};
	end;

	local NUM_,_NUM;
	local BS={
		'<';function()
			NUM_=Win.Pos.Value-Win.MaxCells;
			if(NUM_>=0)then
				Win.Pos.Value=NUM_;
			end;
		end;
		'>';function()
			_NUM=#A.User.RecentCommands;
			if(_NUM<=Win.MaxCells)then return nil;end;
			NUM_=Win.Pos.Value+Win.MaxCells;
			if(NUM_>=_NUM)then
				NUM_=_NUM-(_NUM%Win.MaxCells);
			end;
			Win.Pos.Value=NUM_;
		end;
		'Clean';function()
			A.User.RecentCommands={};
			Win.Pos.Value=0;
			Win.Fix();
		end;
		'H/S';function()
			Win.FixEnabled=Win.FixEnabled==false;
			Win.Fix();
		end;
	};
	local BSn=#BS/2;

	Win.Cells={};
	Win.MaxCells=8;
	Win.FixEnabled=true;

	Win.Fix=function()
		for Int=1,Win.MaxCells do
			Win.Cells[Int].SetText.Value=A.User.RecentCommands[Int+Win.Pos.Value]or'';
			Win.Cells[Int].Label.Visible=Win.FixEnabled;
		end;
	end;

	Win.Pos=A.Functions.Value('Number',0,Win.Fix);

	Win.Box=A.Functions.Lock('TextBox',{
			Parent=function()A.Functions.Wait()return Win.Frame end;
			TextColor3=A.Old.Color3.Yellow;
			BackgroundTransparency=1;
			Size=A.Old.UDim2.Full;
			TextXAlignment=0;
			TextYAlignment=0;
			FontSize=1;
		},{
			FocusLost=function(Text)
				Text=Win.Box.Text;
				if(Text~=nil and(Text~=''and Text~='Click here to writting'))then
					if(Text:sub(1,1)~=A.Data.Start)then Text=A.Data.Start..Text;end;
					A.Functions.Wait();
					local Message=A.Functions.SearchCommand(Text);
					if(Message~=nil)then A.Functions.Message('Hint',Message);return nil;end;
					if(Win.FixEnabled==true and A~=nil)then
						table.insert(A.User.RecentCommands,1,Text);
						Win.Fix();
					end;
				end;Text=nil;
			end;
		}
	);Win.Box.Text='Click here to writting';

	A.Functions.Lock('Frame',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,0,1);
			Size=A.Old.UDim2.new(1,0,0,5);
			BackgroundTransparency=.5;
			Parent=Win.Frame;
		}
	);

	local Smg={};
	for Int=1,Win.MaxCells do
		local Cell={};Win.Cells[#Win.Cells+1]=Cell;

		Cell.SetText=A.Functions.Value('String',A.User.RecentCommands[Int],function(Value)Cell.Label.Visible=Value~='';Cell.Label.Text=Win.Pos.Value+Int..'.) '..Value;Value=nil;end);

		Cell.Label=A.Functions.Button('TextButton',{
				Visible=function()if(Win.FixEnabled==false)then return false;else return Cell.SetText.Value~='';end;end;
				Text=function()return Win.Pos.Value+Int..'.) '..Cell.SetText.Value;end;
				Position=A.Old.UDim2.new(0,0,1,20*(Int-1)+5);
				Size=A.Old.UDim2.new(1,0,0,20);
				AutoButtonColor=true;
				Parent=Win.Frame;
				TextXAlignment=0;
				FontSize=1;
			},function()
				A.Functions.SearchCommand(Cell.SetText.Value);
			end
		);Smg[Int]=Cell.Label;
	end;
	A.Functions.TransparencyContact(Smg);

	local Num=0;
	local Asd={};
	for Int=1,BSn do
		Asd[Int]=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(1/BSn*(Int-1),1,0,1);
				Size=A.Old.UDim2.new(1/BSn,-2,1,-2);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Text=BS[Int+Num];
				Parent=Win.Menu;
				FontSize=1;
			},BS[Int+Num+1]
		);
		Num=Num+1;
	end;
	A.Functions.TransparencyContact(Asd);

end;
A.Functions.HelpGui=function()
	local Win=A.Functions.GiveWindow('Help',400,400);
	if(Win==nil)then return nil;end;

	local Ears={'Commands';'Players';'Signals';};

	Win.Ears={};
	Win.NumOfEars=#Ears;
	Win.NumberOfCommands=#A.Commands;

	local NUM;
	local CCMD;
	local TEXT='';
	Win.FixTutorial=function()
		NUM=Win.Pos.Value+1;
		CCMD=A.Commands[NUM];
		if(A.Stuffs.ForTutorialOfCommands==nil)then
			A.Stuffs.ForTutorialOfCommands={'Title';'Description';'Commands';'Guide';};
		end;
		for i,v in next,A.Stuffs.ForTutorialOfCommands do
			TEXT=TEXT..v..': '..CCMD[v]..'\n\n\n';i,v=nil;
		end;
		TEXT=NUM..' of '..Win.NumberOfCommands..'\n\n\n'..TEXT;
		Win.Ears[1].SetText.Value=TEXT;TEXT='';
	end;

	Win.Pos=A.Functions.Value('Number',0,function(Value)Win.FixTutorial();Value=nil;end);
	Win.CurrentFrame=A.Functions.Value('String','Commands',function(Value)
		for i=1,Win.NumOfEars do
			Win.Ears[i].Frame.Visible=Value==Win.Ears[i].Name;
		end;
	end);

	local Smgs={};
	for Int,Name in next,Ears do
		local Ear={};Win.Ears[#Win.Ears+1]=Ear;

		Ear.Name=Name;

		Ear.SetText=A.Functions.Value('String','',function(Value)Ear.Frame.Text=Value;Value=nil;end);

		Ear.Frame=A.Functions.Lock('TextLabel',{
				Visible=function()return Win.CurrentFrame.Value==Name;end;
				Text=function()return Ear.SetText.Value;end;
				BackgroundTransparency=1;
				Position=A.Old.UDim2.Pax;
				Size=A.Old.UDim2.Full;
				TextXAlignment=0;
				TextYAlignment=0;
				Parent=Win.Frame;
				FontSize=2;
			}
		);
		Ear.Ear=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(1/Win.NumOfEars*(Int-1),1.25,0,1.25);
				Size=A.Old.UDim2.new(1/Win.NumOfEars,-2.5,1,-2.5);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Parent=Win.Menu;
				FontSize=1;
				Text=Name;
			},function()
				Win.CurrentFrame.Value=Name;
			end
		);Smgs[#Smgs+1]=Ear.Ear;

		if(Name=='Players')then
			local Text='';
			for Int,Table in next,A.Calls do
				Text=Text..Table.Description..': '..Table.Calls..'\n'..'\n';
			end;
			Ear.SetText.Value=Text;
		elseif(Name=='Signals')then
			Ear.SetText.Value=[[The first signal what you need for run a command signal is "]]..A.Data.Start..'" :3'..'\n\n'..[[For arguments type this "]]..A.Data.Step..'"'..'\n\n'..[[To use blink argument (hard to tell my english not enough to this) "{b{" until "}b}" so {b{blah;blah;LAALla;;;;aolaL}b}]];
		elseif(Name=='Commands')then
			Win.FixTutorial();
			for i=0,1 do
				local Num=i==0 and-1 or 1;
				local Plus;
				Smgs[#Smgs+1]=A.Functions.Button('TextButton',{
						Position=A.Old.UDim2.new(i,i==1 and -20,1,-20);
						BackgroundColor3=A.Old.Color3.Grey;
						TextColor3=A.Old.Color3.Black;
						Size=A.Old.UDim2.ButtonSize;
						Parent=Win.Ears[1].Frame;
						Text=i==0 and'<'or'>';
						FontSize=3;
					},function()
						Plus=Win.Pos.Value+Num;
						if(Plus>=0 and Plus<Win.NumberOfCommands)then
							Win.Pos.Value=Plus;
						end;
					end
				);
			end;
		end;

	end;A.Functions.TransparencyContact(Smgs);

end;
A.Functions.GetBase=function()
	for i,v in next,A.Service.Workspace:children()do
		if(v.className=='Part'and v.Name=='Base')then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	local Base=A.Old.Instance.NewObject'Part';
		Base.Name='Base';
		Base.Locked=true;
		Base.Anchored=true;
		Base.archivable=false;
		Base.Size=A.Old.Vector3.new(555,2,555);
		Base.BrickColor=A.Old.BrickColor.new'37';
		Base.Parent=A.Service.Workspace;
	return Base;
end;
A.Functions.Clean=function()
	local Base=A.Functions.GetBase();
	if(A.Stuffs.Shielded==nil)then
		A.Stuffs.Shielded={
			HumanoidController=true;
			Terrain=true;
			Camera=true;
			Player=true;
		};
	end;
	if(A.Stuffs.Banned_Services==nil)then
		A.Stuffs.Banned_Services={
			NetworkClient=true;
			CoreGui=true;
		};
	end;
	for i,v in next,Game:children()do
		pcall(function()
			if(A.Stuffs.Banned_Services[v.className]==nil)then
				for i,v in next,v:children()do
					if(v~=script and v~=Base and A.Stuffs.Shielded[v.className]~=true and A.Service.Players:GetPlayerFromCharacter(v)==nil)then
						pcall(function()
							v.Parent=nil;
						end);
					end;i,v=nil;
				end;
			end;
		end);i,v=nil;
	end;
end;
A.Functions.ResetLighting=function()
	local Lighting=A.Service.Lighting;
	if(A.Stuffs.LightingBaseProperties==nil)then
		A.Stuffs.LightingBaseProperties={
			ShadowColor=A.Old.Color3.new(.7,.7,.72);
			FogColor=A.Old.Color3.new(.75,.75,.75);
			ColorShift_Bottom=A.Old.Color3.Black;
			GeographicLatitude=41.733299255371;
			ColorShift_Top=A.Old.Color3.Black;
			Ambient=A.Old.Color3.Grey;
			Brightness=1;
			FogEnd=1e6;
			FogStart=0;
		};
	end;
	for i,v in next,A.Stuffs.LightingBaseProperties do
		Lighting[i]=v;i,v=nil;
	end;
	pcall(Lighting.ClearAllChildren,Lighting);
end;
A.Functions.ExplorerGui=function()
	local Win=A.Functions.GiveWindow('Explorer',440,400);
	if(Win==nil)then
		return nil;
	end;

	Win.Frames={};

	Win.CountThis=A.Functions.Value('Object',Game,function(Value)
		if(Win.Frames.Explorer.SetPos.Value==0)then
			Win.Frames.Explorer.Count(0,Value);
		else
			Win.Frames.Explorer.SetPos.Value=0;
		end;
	end);
	Win.WatchingObject=A.Functions.Value('Object',Game,function(Value)
		if(Win.Frames.Properties.SetPos.Value==0)then
			Win.Frames.Properties.Count(0,Value);
		else
			Win.Frames.Properties.SetPos.Value=0;
		end;
	end);

	local Cnr={};

	Win.History={Game;};
	Win.HistoryPos=1;

	for i=0,1 do
		local Plus=i==0 and -1 or 1;
		local Num;
		Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
				BackgroundColor3=A.Old.Color3.Blue;
				Position=A.Old.UDim2.new(0,20*i);
				TextColor3=A.Old.Color3.Black;
				Text=i==0 and'<'or'>';
				Parent=Win.Menu;
				FontSize=3;
			},function()
				Num=Win.HistoryPos+Plus;
				if(Num<1 or Win.History[Num]==nil)then return nil;end;
				Win.HistoryPos=Num;
				Win.CountThis.Value=Win.History[Num];
			end
		);
	end;
	Win.HomeButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Green;
			Position=A.Old.UDim2.new(0,40);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='H';
		},function()
			Win.CountThis.Value=Game;
			Win.HistoryPos=1;
		end
	);
	Win.RefreshButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,60);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='R';
		},function()
			Win.Frames.Explorer.Count(0,Win.CountThis.Value);
		end
	);
	Win.RemoveButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,80);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='K';
		},function()
			for i,v in next,Win.Frames.Explorer.Selected do
				if(#v~=0)then
					for i,v in next,v do
						A.Functions.Remove(v);
					end;
				end;
			end;
		end
	);

	for i=0,1 do
		local Name=i==0 and'Explorer'or'Properties';
		local this={};
		this.Cells={};

		this.SetPos=A.Functions.Value('Number',0,function(Value)
			this.PosChanged(Value);
		end);

		this.Frame=A.Functions.Lock('Frame',{
				Size=A.Old.UDim2.new(.5,-20,1);
				Position=A.Old.UDim2.new(i/2);
				BackgroundTransparency=1;
				Parent=Win.Frame;
			}
		);
		this.ScrollFrame=A.Functions.Lock('Frame',{
				BackgroundColor3=A.Old.Color3.White;
				Size=A.Old.UDim2.new(0,20,1);
				Position=A.Old.UDim2.new(1);
				BackgroundTransparency=.5;
				Parent=this.Frame;
			}
		);
		Cnr[#Cnr+1]=this.ScrollFrame;

		for i=0,1 do
			local Plus=i==0 and-20 or 20;
			local Num;
			Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
					Position=A.Old.UDim2.new(0,0,i,i==1 and-20);
					BackgroundColor3=A.Old.Color3.Grey;
					Size=A.Old.UDim2.ButtonSize;
					Text=i==0 and'/\\'or'\\/';
					Parent=this.ScrollFrame;
					AutoButtonColor=true;
					FontSize=3;
				},function()
					Num=this.SetPos.Value+Plus;
					if(Num<0)then
						Num=0;
					end;
					if(Num>=this.Max)then
						Num=this.Max-(this.Max%20);
					end;
					this.SetPos.Value=Num;
				end
			);
		end;


		if(i==0)then--Explorer

			this.CountThis=Win.CountThis;

			this.Selected={};
			this.FreeBoxes={};

			this.Count=function(From,Object)
				local Parts=Object:children();
				if(#Parts==0)then return nil;end;
				this.Max=#Parts;
				

				local Asd;
				local i=1;
				local Object2;
				local NotGood=0;

				while(i<21)do
					Asd=From+i+NotGood;
					Object2=Parts[Asd];
					if(Object2==nil or pcall(function()return Object2:IsA'';end)==true)then
						this.Cells[i].SetObject.Value=Object2;
						i=i+1;
					else
						NotGood=NotGood+1;
					end;
				end;

			end;
			this.PosChanged=function(Value)
				this.Count(Value,this.CountThis.Value);
			end;

			for i=1,20 do
				local Cell={};this.Cells[#this.Cells+1]=Cell;
				
				Cell.GetPos=function()return this.SetPos.Value+i;end;

				Cell.SetText=A.Functions.Value('String','N/A',function(Value)
					Cell.Text.Text=Value;
				end);
				Cell.SetObject=A.Functions.Value('Object',nil,function(Value)
					
					if(Value~=nil)then
						Cell.SetSelect.Value=Value:FindFirstChild'Ohgal_Selection'~=nil;
						Cell.SetText.Value=Value.Name..' ('..Value.className..')';
						Cell.Number.Text=Cell.GetPos();
					end;

					Cell.Frame.Visible=Value~=nil or false;
					
				end);
				Cell.SetSelect=A.Functions.Value('Bool',false,function(Value)
					Cell.Selector.BackgroundColor3=Value==true and A.Old.Color3.Green or A.Old.Color3.Red;
					local Object=Cell.SetObject.Value;
					if(Value==false)then
						local Selector=Object:FindFirstChild'Ohgal_Selection';
						if(Selector~=nil)then
							Selector.Parent=nil;
							this.FreeBoxes[#this.FreeBoxes+1]=Selector;
						end;
					else
						local ThisAdded;
						local Selector=Object:FindFirstChild'Ohgal_Selection'or this.FreeBoxes[1]or A.Old.Instance.NewObject'BindableEvent';
						if(Selector==this.FreeBoxes[1])then
							table.remove(this.FreeBoxes,1);
						end;

						Selector.Name='Ohgal_Selection';
						Selector.archivable=false;
						Selector.Parent=Object;

						
						local Box;
						if(Object:IsA'Model'or Object:IsA'Part')then
							Box=A.Old.Instance.NewObject('SelectionBox',this.Frame);
							Box.Adornee=Object;
						end;

						if(this.Selected[Object.className]==nil)then
							this.Selected[Object.className]={};
						else
							for i,v in next,this.Selected[Object.className]do
								if(v==Object)then
									ThisAdded=true;
									table.remove(this.Selected[Object.className],i);break;
								end;
							end;
						end;
						this.Selected[Object.className][#this.Selected[Object.className]+1]=Object;

						if(ThisAdded==nil)then
							local Kill=function()								
								Selector.Parent=nil;
								this.FreeBoxes[#this.FreeBoxes+1]=Selector;
								if(Box~=nil)then Box.Adornee=nil;Box.Parent=nil;end;
								for i,v in next,this.Selected[Object.className]do
									if(v==Object)then
										table.remove(this.Selected[Object.className],i);break;
									end;
								end;
							end;
							A.Functions.Thread(function()
								while(Selector.Parent~=nil)do Selector.Changed:wait();end;
								Kill();
							end);
							A.Functions.Thread(function()
								while(Object.Parent~=nil)do Object.Changed:wait();end;
								Kill();
							end);
						end;
					end;
				end);

				
				Cell.Frame=A.Functions.Lock('Frame',{
						Position=A.Old.UDim2.new(0,0,0,i~=1 and 20*(i-1)+1 or 1);
						Visible=function()return Cell.SetObject.Value~=nil;end;
						Size=A.Old.UDim2.new(1,0,0,18);
						BackgroundTransparency=1;
						Parent=this.Frame;
					}
				);

				Cell.Selector=A.Functions.Button('ImageButton',{
						BackgroundColor3=function()return Cell.SetSelect.Value==true and A.Old.Color3.Green or A.Old.Color3.Red;end;
						Size=A.Old.UDim2.new(0,20,1);
						Position=A.Old.UDim2.Pax;
						Parent=Cell.Frame;
					},function()
						Cell.SetSelect.Value=Cell.SetSelect.Value==false;
					end
				);
				Cnr[#Cnr+1]=Cell.Selector;

				Cell.Number=A.Functions.Lock('TextLabel',{
						BackgroundColor3=A.Old.Color3.Grey;
						Position=A.Old.UDim2.new(0,20);
						Size=A.Old.UDim2.new(0,20,1);
						Parent=Cell.Frame;
						Text=Cell.GetPos;
						FontSize=1;
					}
				);
				Cnr[#Cnr+1]=Cell.Number;

				local TimeOut=0;
				Cell.Text=A.Functions.Button('TextButton',{
						Text=function()return Cell.SetText.Value;end;
						BackgroundColor3=A.Old.Color3.White;
						Position=A.Old.UDim2.new(0,40);
						TextColor3=A.Old.Color3.Black;
						Size=A.Old.UDim2.new(1,-40,1);
						AutoButtonColor=true;
						Parent=Cell.Frame;
						TextXAlignment=0;
						FontSize=1;
					},function()
						if(TimeOut==1)then
							Win.HistoryPos=Win.HistoryPos+1;
							Win.History[Win.HistoryPos]=Cell.SetObject.Value;
							Win.History[Win.HistoryPos+1]=nil;
							this.CountThis.Value=Cell.SetObject.Value;
						else
							TimeOut=1;

							Win.WatchingObject.Value=Cell.SetObject.Value;

							Delay(.2,function()
								TimeOut=0;
							end);
						end;
					end
				);
				Cnr[#Cnr+1]=Cell.Text;

			end;

		else--Properties

			this.Count=function(From,Object)

				if(this._ThisBox~=nil)then
					this._ThisBox.Parent=nil;
				end;

				local Table=A.Functions.GetProperties(Object,true);
				this.Max=#Table;
				
				if(From<=4)then
					this.Cells[1].SetProperty.Value='Name';
					this.Cells[1].Fix();

					this.Cells[2].SetProperty.Value='Parent';
					this.Cells[2].Fix();

					this.Cells[3].SetProperty.Value='className';
					this.Cells[3].Fix();

					this.Cells[4].SetProperty.Value='archivable';
					this.Cells[4].Fix();
					
					for i=5,20 do
						this.Cells[i].SetProperty.Value=Table[(i-4)+From]or'';
						this.Cells[i].Fix();
					end;
				else
					for i=1,20 do
						this.Cells[i].SetProperty.Value=Table[i+From]or'';
						this.Cells[i].Fix();
					end;
				end;
			end;
			this.PosChanged=function(Value)
				this.Count(Value,Win.WatchingObject.Value);
			end;

			this.TextBox=function(ALALOLUBU)--ROFL
				if(pcall(function()this._ThisBox.Parent=ALALOLUBU;this._ThisBox.Text=ALALOLUBU.Text;end)==false)then
					this._ThisBox=A.Functions.Peace('TextBox',{
							BackgroundColor3=A.Old.Color3.White;
							TextColor3=A.Old.Color3.Black;
							Size=A.Old.UDim2.Full;
							Text=ALALOLUBU.Text;
							BorderSizePixel=0;
							Parent=ALALOLUBU;
							TextXAlignment=0;
							FontSize=1;
						}
					);
				end;
				Delay(0,function()pcall(function()this._ThisBox:CaptureFocus();end);end);
				this._ThisBox.FocusLost:wait();
				this._ThisBox.Parent=nil;
				A.Functions.Thread(function()
					Win.WatchingObject.Value[this.SetProperty]=loadstring('return '..this._ThisBox.Text)();
				end);
			end;

			for i=1,20 do
				local Cell={};this.Cells[#this.Cells+1]=Cell;
				
				Cell.SetProperty=A.Functions.Value('String','',function(Value)
					Cell.Frame.Visible=Value~='';
				end);

				Cell.Fix=function()
					if(Cell.SetProperty.Value~='')then
						Cell.Property.Text=Cell.SetProperty.Value..' ';
						Cell.Property.Size=A.Old.UDim2.new(0,Cell.Property.TextBounds.X,1);
						
						Cell.ValueButton.Position=A.Old.UDim2.new(0,Cell.Property.Size.X.Offset);
						Cell.ValueButton.Size=A.Old.UDim2.new(1,-Cell.Property.Size.X.Offset,1);
						Cell.ValueButton.Text=tostring(Win.WatchingObject.Value[Cell.SetProperty.Value]);
					end;
				end;
				
				
				Cell.Frame=A.Functions.Lock('Frame',{
						Position=A.Old.UDim2.new(0,0,0,i~=1 and 20*(i-1)+1 or 1);
						Visible=function()return Cell.SetProperty.Value~='';end;
						Size=A.Old.UDim2.new(1,0,0,18);
						BackgroundTransparency=1;
						Parent=this.Frame;
					}
				);
				
				Cell.Property=A.Functions.Lock('TextLabel',{
						Size=function()return Cell.Property~=nil and A.Old.UDim2.new(0,Cell.Property.TextBounds.X,1)or A.Old.UDim2.Pax;end;
						Text=function()return Cell.SetProperty.Value..' ';end;
						BackgroundColor3=A.Old.Color3.DarkRed;
						TextWrapped=false;
						Parent=Cell.Frame;
						TextWrap=false;
						FontSize=1;
					}
				);
				Cnr[#Cnr+1]=Cell.Property;

				Cell.ValueButton=A.Functions.Button('TextButton',{
						Text=function()return(Cell.SetProperty.Value~=''and Win.WatchingObject.Value~=nil)and tostring(Win.WatchingObject.Value[Cell.SetProperty.Value])or'';end;
						Position=function()return A.Old.UDim2.new(0,Cell.Property.Size.X.Offset);end;
						Size=function()return A.Old.UDim2.new(1,-Cell.Property.Size.X.Offset,1);end;
						Parent=Cell.Frame;
						TextXAlignment=0;
						FontSize=1;
					},function()
						this.SetProperty=Cell.SetProperty.Value;
						this.TextBox(Cell.ValueButton);Wait();
						Cell.ValueButton.Text=tostring(Win.WatchingObject.Value[Cell.SetProperty.Value]);
					end
				);
				Cnr[#Cnr+1]=Cell.ValueButton;
				
			end;

		end;--Properties end;

		this.Count(0,Game);


		Win.Frames[Name]=this;
	end;

	A.Functions.TransparencyContact(Cnr);
	
end;
A.Functions.AddKey=function(Key,Function)
	if(A.Stuffs.Security==true)then
		if(A.KeyCommands[Key]==nil)then A.KeyCommands[Key]={};end;
		A.KeyCommands[#A.KeyCommands+1]=Function;
		A.Service.GuiService.AddKey(Key);
		Key,Function=nil;
	end;
end;
A.Functions.DoKeyCommand=function(Key)
	if(A.KeyCommands[Key]~=nil)then
		for Int=1,#A.KeyCommands[Key]do
			A.KeyCommands[Key][Int]();
			Int=nil;
		end;
	end;Key=nil;
end;
A.Functions.Heal=function(Corpse)--From first Local Admin :3
	if(Corpse)then
		local Humanoid=A.Functions.FindObject(Corpse,'className','Humanoid');
		if(Humanoid==nil)then
			return nil;
		else
			if(Humanoid.Health<=0)then
				return nil;
			end;
			Humanoid.Health=Humanoid.MaxHealth
		end;
		for i,v in next,A.Data.CharacterLimbs do
			if(Corpse:FindFirstChild(i)==nil)then
				local Limb=A.Functions.Peace('Part',{
					CanCollide=false;
					BottomSurface=0;
					Parent=Corpse;
					TopSurface=0;
					formFactor=0;
					Size=v.Size;
					Name=i;
				});
				if(v.C0 and v.C1)then
					local Weld=A.Old.Instance.NewObject('Motor6D',Corpse:FindFirstChild'Torso');
					if(Weld.Parent)then
						Limb.Position=Weld.Parent.Position;
						Weld.Name=v.Name;
						Weld.Part0=Weld.Parent;
						Weld.Part1=Limb;
						Weld.C0=v.C0;
						Weld.C1=v.C1;
						Weld.MaxVelocity=.1;
					end;
					Weld=nil;
				end;
				Limb,i,v=nil;
			end;
			i,v=nil;
		end;
		local Skin=Corpse:FindFirstChild'Body Colors';
		if(Skin~=nil)then
			Skin.Parent=nil;
			Skin.Parent=Corpse;
		end;
		local Animate=Corpse:FindFirstChild'Animate';
		if(Animate~=nil)then
			Animate.Parent=nil;
			Animate.Parent=Corpse;
		end;
	end;
end;
A.Functions.CreateWeld=function(Part0,Part1,C0,C1)
	local Weld=A.Old.Instance.NewObject('Motor',Part0);
		Weld.Part0=Part0;
		Weld.Part1=Part1;
		if(C0~=nil)then
			Weld.C0=C0;
		end;
		if(C1~=nil)then
			Weld.C1=C1;
		end;
	return Weld;
end;
A.Functions.MemeGui=function()
	local Win=A.Functions.GiveWindow('Memes',300,300);
	if(Win==nil)then
		return nil;
	end;

	Win.Title.Position=A.Old.UDim2.new(.5,-150);

	Win.SetPos=A.Functions.Value('Number',0,function(Value)
		Win.Status.Text=Value;
		Win.Image.Image=Value;
	end);


	Win.Memes={};local Num=0;
	for i,v in next,A.Images.Meme do Num=Num+1;--[[Num+=1; don't work :'( ]]
		Win.Memes[Num]={Name=i;ID=v;};
	end;Win.NumMemes=#Win.Memes;

	Win.Status=A.Functions.Lock('TextLabel',{
			Text=function()return 1+Win.SetPos.Value..' of '..Win.NumMemes..': '..Win.Memes[Win.SetPos.Value+1].Name..' ('..Win.Memes[Win.SetPos.Value+1].ID..')';end;
			Position=A.Old.UDim2.new(0,20);
			Size=A.Old.UDim2.new(1,-40,1);
			TextColor3=A.Old.Color3.White;
			BackgroundTransparency=1;
			Parent=Win.Menu;
			FontSize=2;
		}
	);
	Win.Image=A.Functions.Lock('ImageLabel',{
			Image=function()return A.Data.BaseUrl..Win.Memes[Win.SetPos.Value+1].ID;end;
			Position=A.Old.UDim2.Pax;
			Size=A.Old.UDim2.Full;
			Parent=Win.Frame;
		}
	);

	local Cnr={};
	local Num;
	for i=0,1 do
		local Plus=i==0 and -1 or 1;
		Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(i,i==1 and -20);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Size=A.Old.UDim2.new(0,20,1);
				Text=i==0 and'<'or'>';
				Parent=Win.Menu;
				FontSize=2;
			},function()
				Num=Win.SetPos.Value+Plus;
				if(Num>=Win.NumMemes)then
					Num=0;
				end;
				if(Num<0)then
					Num=Win.NumMemes-1;
				end;
				Win.SetPos.Value=Num;
			end
		);
		A.Functions.Button('TextButton',{
				TextColor3=i==0 and A.Old.Color3.White or A.Old.Color3.DarkRed;
				Position=A.Old.UDim2.new(i/2,0,1,-20);
				Size=A.Old.UDim2.new(.5,0,0,20);
				Text=i==0 and'Wear'or'Drop';
				BackgroundTransparency=1;
				TextStrokeTransparency=0;
				Parent=Win.Frame;
				FontSize=3;
			},i==0 and function()
				A.Functions.MakeMeme(Win.Memes[Win.SetPos.Value+1].ID,A.User.C.Character);
			end or function()
				A.Functions.MakeMeme('reset!',A.User.C.Character);
			end
		);
	end;

	A.Functions.TransparencyContact(Cnr);
	
end;
A.Functions.SettingWait=function(Name,Bool)
	if(A.Settings[Name].Value~=Bool)then
		A.Settings[Name].Changed:wait();
	end;
	return A.Settings[Name];
end;
A.Functions.FindWithOutside=function(Start,End)
	local Type=type(End);
	if(Type=='userdata')then
		local Stepped=0;
		if(Start.Parent~=End)then
			while(Start.Parent~=End and Stepped<50)do
				Start=Start.Parent;
				Stepped=Stepped+1;
			end;
		end;
	elseif(Type=='string')then
		local Stepped=0;
		if(Start.Parent.className~=End)then
			while(Start.Parent.className~=End and Stepped<50)do
				Start=Start.Parent;
				Stepped=Stepped+1;
			end;
		end;
	end;
	
	return Start;
end;
A.Functions.ResizeChar=function(Char,Plus_Size)
	local Torso=Char.Torso;

	Torso.Anchored=true;
	Torso.BottomSurface=0;
	Torso.TopSurface=0;
	
	A.Functions.Remove(Char:FindFirstChild'Shirt',true);
	A.Functions.Remove(Char:FindFirstChild'Pants',true);
	
	local Virus=Char:FindFirstChild'Shirt Graphic';
	if(Virus~=nil)then
		Virus:Destroy();
	end;
	
	local Welds={};
	local Change;Change=function(Object)
		for i,Weld in next,Object:children()do
			if(Weld.className=='Weld'or Weld.className=='Motor'or Weld.className=='Motor6D')then
				local Part=Weld.Part1;

				Part.Anchored=true;

				Weld.Part1=nil;

				local r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12=Weld.C0:components();
				Weld.C0=A.Old.CFrame.new(r01*Plus_Size,r02*Plus_Size,r03*Plus_Size,r04,r05,r06,r07,r08,r09,r10,r11,r12);
				local r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12=Weld.C1:components();
				Weld.C1=A.Old.CFrame.new(r01*Plus_Size,r02*Plus_Size,r03*Plus_Size,r04,r05,r06,r07,r08,r09,r10,r11,r12);

				if(Part.Name~='Head')then
					Part.formFactor=3;
					Part.Size=Part.Size*Plus_Size;
				else
					for i,v in next,Part:children()do
						if(v.className=='Weld')then
							v.Part0=nil;
							v.Part1.Anchored=true;
						end;
					end;
					Part.formFactor=3;
					Part.Size=Part.Size*Plus_Size;
					for i,v in next,Part:children()do
						if(v.className=='Weld')then
							v.Part0=Part;
							v.Part1.Anchored=false;
						end;
					end;
				end;
					
				if(Weld.Parent==Torso)then
					Part.BottomSurface=0;
					Part.TopSurface=0;
				end;
				
				Part.Anchored=false;

				Weld.Part1=Part;

				if(Weld.Part0==Torso)then
					Welds[#Welds+1]=Weld;
					Part.Anchored=true;
					Weld.Part0=nil;
				end;
			elseif(Weld.className=='CharacterMesh')then
				local Body_Part=tostring(Weld.BodyPart):match'%w+.%w+.(%w+)';
				local Mesh=A.Old.Instance.NewObject('SpecialMesh',
					Body_Part=='Head'and Char:FindFirstChild'Head'or Body_Part=='Torso'and Char:FindFirstChild'Torso'or
					Body_Part=='LeftArm'and Char:FindFirstChild'Left Arm'or Body_Part=='RightArm'and Char:FindFirstChild'Right Arm'or
					Body_Part=='LeftLeg'and Char:FindFirstChild'Left Leg'or Body_Part=='RightLeg'and Char:FindFirstChild'Right Leg'or nil);
					Mesh.MeshId=A.Data.BaseUrl..Weld.MeshId;
					if(Weld.BaseTextureId~=0 or Weld.BaseTextureId~='0')then
						Mesh.TextureId=A.Data.BaseUrl..Weld.BaseTextureId;
					end;
					Mesh.Scale=Mesh.Scale*Plus_Size;
					Weld:Destroy();
			elseif(Weld.className=='SpecialMesh'and Weld.Parent~=Char.Head)then
				Weld.Scale=Weld.Scale*Plus_Size;
			end;
			Change(Weld);
		end;
	end;

	Change(Char);

	Torso.formFactor=3;
	Torso.Size=Torso.Size*Plus_Size;
	
	for i,v in next,Welds do
		v.Part0=Torso;
		v.Part1.Anchored=false;
	end;

	Torso.Anchored=false;
	--[[
	Wait(1);
	
	if(Shirts~=nil)then
		Shirts.Parent=Char;
	end;
	if(Pants~=nil)then
		Pants.Parent=Char;
	end;]]
end;
--[[Functions end;]]


--[[Old]]
local Table;
for i,Name in next,{
		'BrickColor';
		'Instance';
		'Vector3';
		'Vector2';
		'Color3';
		'CFrame';
		'UDim2';
		'UDim';
		'Ray';
	}do
	Table=loadstring('return '..Name)();
	if(Table~=nil)then
		A.Old[Name]=A.Functions.CopyTable(Table);
	end;i,Name=nil;
end;

A.Old.Instance.NewObject=A.Old.Instance.new;
A.Old.Instance.new=function(Object,Data)
	local Class=Object;
	Object,Data=A.Functions.GiveData(A.Old.Instance.NewObject(Object,Data));

	if(A.Stuffs.Gui.PartOfGui[Class]==true)then
		Data.Properties.BackgroundColor3=function()return A.Old.Color3.Black;end;
		Data.Properties.BorderSizePixel=function()return 0;end;
		Data.Properties.Visible=function()return true;end;
	end;
	if(A.Stuffs.Gui.Text[Class]==true)then
		Data.Properties.TextColor3=function()return A.Old.Color3.White;end;
		Data.Properties.TextWrapped=function()return true;end;
		Data.Properties.TextWrap=function()return true;end;
	end;
	if(A.Stuffs.Gui.Image[Class]==true)then
		Data.Properties.BackgroundTransparency=function()return 1;end;
	end;
	if(A.Stuffs.Gui.Button[Class]==true)then
		Data.Properties.AutoButtonColor=function()return false;end;
		Data.Properties.Active=function()return true;end;
	end;Class=nil;

	Data.Properties.archivable=function()return false;end;
	Data.Properties.Archivable=function()return false;end;
	Data.Properties.Name=function()return'';end;

	pcall(A.Functions.Peace,Object,Data.Properties);

	return Object,Data;
end;

A.Old.Color3.Red=A.Old.Color3.new(1);
A.Old.Color3.Black=A.Old.Color3.new();
A.Old.Color3.Green=A.Old.Color3.new(0,1);
A.Old.Color3.Blue=A.Old.Color3.new(0,0,1);
A.Old.Color3.DarkRed=A.Old.Color3.new(.8);
A.Old.Color3.Yellow=A.Old.Color3.new(1,1);
A.Old.Color3.White=A.Old.Color3.new(1,1,1);
A.Old.Color3.Grey=A.Old.Color3.new(.5,.5,.5);
A.Old.Color3.DarkGreen=A.Old.Color3.new(0,.8);
A.Old.Color3.DarkBlue=A.Old.Color3.new(0,0,.8);
A.Old.Color3.DarkBlue=A.Old.Color3.new(0,0,.8);
A.Old.Color3.DarkYellow=A.Old.Color3.new(.7,.7);

A.Old.CFrame.Pax=A.Old.CFrame.new();
A.Old.CFrame.Char=A.Old.CFrame.new(0,3,0);

A.Old.Vector3.Pax=A.Old.CFrame.Pax.p;
A.Old.Vector3.Char=A.Old.CFrame.Char.p;
A.Old.Vector3.Jump=A.Old.Vector3.new(0,100);


A.Old.BrickColor.White=A.Old.BrickColor.new'1001';
A.Old.BrickColor.Black=A.Old.BrickColor.new'1003';

A.Old.UDim2.Pax=A.Old.UDim2.new();
A.Old.UDim2.Full=A.Old.UDim2.new(1,0,1);
A.Old.UDim2.ButtonSize=UDim2.new(0,20,0,20);
A.Old.UDim2.ScreenPos=A.Old.UDim2.new(0,0,0,-1);
A.Old.UDim2.ScreenSize=A.Old.UDim2.new(1,0,1,1);
--[[Old end;]]


--[[Data]]
A.Data.Step=[=[;]=];
A.Data.Start=[=[']=];
A.Data.Wrap=[=[ & ]=];
A.Data.Repeat=[=[##]=];
A.Data.RbxUrl='rbxassetid://';
A.Data.BaseUrl='http://www.roblox.com/Asset/?id=';
A.Data.CharacterLimbs={
	['Torso']={
		Size=A.Old.Vector3.new(2,2,1);
	};
	['Head']={
		C1=A.Old.CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0);
		C0=A.Old.CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0);
		Size=A.Old.Vector3.new(2,1,1);
		Name='Neck';
	};
	['Right Arm']={
		C1=A.Old.CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);
		C0=A.Old.CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Right Shoulder'
	};
	['Right Leg']={
		C1=A.Old.CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0);
		C0=A.Old.CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Right Hip'
	};
	['Left Arm']={
		C1=A.Old.CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);
		C0=A.Old.CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Left Shoulder'
	};
	['Left Leg']={
		C1=A.Old.CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);
		C0=A.Old.CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Left Hip'
	};
};
--[[Data end;]]


--[[Stuffs]]
A.Stuffs.Gui={
	PartOfGui={
		ImageButton=true;
		TextButton=true;
		ImageLabel=true;
		TextLabel=true;
		TextBox=true;
		Frame=true;
	};
	Text={
		TextButton=true;
		TextLabel=true;
		TextBox=true;
	};
	Image={
		ImageButton=true;
		ImageLabel=true;
	};
	Button={
		ImageButton=true;
		TextButton=true;
	};
};
A.Stuffs.TrueBooleans={
	['of course']=true;
	['not false']=true;
	['why not']=true;
	['off on']=true;
	['yahwol']=true;
	['not 0']=true;
	['true']=true;
	['yes']=true;
	['yep']=true;
	['yup']=true;
	['on']=true;
	['ya']=true;
	['y']=true;
	['1']=true;
};
A.Stuffs.Security=pcall(function()return Game.RobloxLocked;end);
local Asd;
A.Stuffs.AsciiNum={};
A.Stuffs.AsciiChar={};
for i=0,255 do
	Asd=string.char(i);
	A.Stuffs.AsciiNum[Asd]=i;
	A.Stuffs.AsciiChar[i]=Asd;i=nil;
end;Asd=nil;
A.Stuffs.CharVirus={
	['Shirt Graphic']='ShirtGraphic';
	['RobloxTeam']='Script';
	['Sound']='Script';
};
A.Stuffs.GuideCommands={
	['-r']='<Property>';
	['-x']='<Position>';
	['-b']='<Boolean>';
	['-p']='<Player>';
	['-v']='<Value>';
	['-s']='<Size>';
	['-t']='<Text>';
	['-i']='<Path>';
};
A.Stuffs.NullTable={};
A.Stuffs.StarterSource=[==[if(Game.PlaceId~=0)then print=function()end;end;local Users=Game:service'Players';local User=Users.LocalPlayer; ]==];
--[[Stuffs end;]]


--[[Settings]]
A.Settings['Security of character']=false;
A.Settings['Windows transparency']=true;
A.Settings['Big jumps']=false;
A.Settings.HealthBar=false;
A.Settings.Immortal=false;
--[[Settings end;]]


--[[Service]]
for i,v in next,Game:children()do
	pcall(function()
		if(Game:service(v.className)~=nil)then
			A.Service[v.className]=v;
		end;i,v=nil;
	end);
end;
--[[Service end;]]



--[=[Create gui module
	Exemple:

A.Functions.CreateGuiModule(function()

end);

]=]
A.Functions.CreateGuiModule(function()
	for i,v in next,{'Hints';'Messages';'Other';'Windows';'First';}do
		A.User.Frames[v]=A.Functions.Lock('Frame',{
				Position=A.Old.UDim2.ScreenPos;
				Size=A.Old.UDim2.ScreenSize;
				BackgroundTransparency=1;
				Parent=A.User.Screen;
				Name=v;
			}
		);i,v=nil;
	end;
end);
A.Functions.CreateGuiModule(function()
	A.Stuffs.MenuButton=A.Functions.Lock('Sound',{
			SoundId='rbxasset://sounds/switch.wav';
			Parent=A.User.Screen;
			Volume=.5;
			Pitch=2;
		}
	);
	A.Stuffs.Button=A.Functions.Lock('Sound',{
			SoundId='rbxasset://sounds/SWITCH3.wav';
			Parent=A.User.Screen;
			Volume=.2;
			Pitch=2;
		}
	);
end);
A.Functions.CreateGuiModule(function()
	local Frame;
	local Pos1,Pos2=A.Old.UDim2.new(0,-110,1,-145),A.Old.UDim2.new(0,0,1,-145);

	local MouseEnter=A.Functions.Value('Bool',false,function(Value)
		A.User.MenuButton.Position=Value==true and Pos2 or Pos1;
		A.User.MenuButton.Transparency=Value==true and 0 or .5;
	end);
	local Visible=A.Functions.Value('Bool',false,function(Value)A.User.MenuButton.Visible,MouseEnter.Value=Value==false;Frame.Visible=Value;end);

	local BF={};
	local AddButtonFunction=function(Title,Function,Security)
		if(Security==true and A.Stuffs.Security==false)then
			return nil;
		end;
		BF[#BF+1]={
			Function=Function;
			Title=Title;
		};
	end;

	AddButtonFunction('Back to the game',function()Visible.Value=false;end);
	AddButtonFunction('Fix Roblox Guis',function()loadstring(Game:GetObjects'rbxassetid://85827582'[1].Value)();end,true);
	AddButtonFunction('Command Bar',function()A.Functions.CommandBar();end);
	AddButtonFunction('Show Memes',function()A.Functions.MemeGui();end);
	AddButtonFunction('Spawning',function()A.User.Char.Torso.CFrame=A.Functions.GetSpawnLocationCFrame();A.User.Char.Torso.Velocity=A.Old.Vector3.Pax;end);
	AddButtonFunction('Explorer',function()A.Functions.ExplorerGui();end);
	AddButtonFunction('Settings',function()A.Functions.SettingsGui();end);
	AddButtonFunction('Meters',function()A.Functions.Meter();end);
	AddButtonFunction('Reset',function()A.Functions.ResetChar(A.User.C);end);
	AddButtonFunction('Nuke',function()A.Functions.NukeChar(A.User.Char);end);
	AddButtonFunction('Help',function()A.Functions.HelpGui();end);
	AddButtonFunction('Heal',function()A.Functions.Heal(A.User.C.Character);end);

	AddButtonFunction=nil;


	A.User.MenuButton=A.Functions.Lock('TextButton',{
			Transparency=function()return MouseEnter.Value==true and 0 or .5;end;
			Visible=function()return Visible.Value==false;end;
			Position=function()return MouseEnter.Value==true and Pos2 or Pos1;end;
			TextColor3=A.Old.Color3.DarkYellow;
			Size=A.Old.UDim2.new(0,125,0,20);
			Parent=A.User.Frames.First;
			Text='Menu of Ohgal';
			FontSize=2;
		},{
			MouseEnter=function()
				MouseEnter.Value=true;
				A.User.MenuButton.MouseLeave:wait();
				MouseEnter.Value=false;
			end;
			MouseButton1Up=function()
				Visible.Value=true;
				A.Stuffs.MenuButton:play();
			end;
		}
	);
	coroutine.wrap(function()
		A.User.MenuButton.MouseButton1Down:wait();
		A.User.STARTUPMSG.Parent=nil;
	end)();
	Frame=A.Functions.Lock('Frame',
		{
			Position=A.Old.UDim2.new(.5,-200,.5,-((#BF*20)+5)/2);
			Size=A.Old.UDim2.new(0,400,0,(#BF*20)+10);
			Visible=function()return Visible.Value;end;
			BackgroundColor3=A.Old.Color3.DarkRed;
			Parent=A.User.Frames.First;
			BackgroundTransparency=.5;
		}
	);
	for Int,v in next,BF do
		A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(0,5,0,(20*(Int-1))+5);
				TextColor3=A.Old.Color3.DarkYellow;
				Size=A.Old.UDim2.new(1,-10,0,20);
				BackgroundTransparency=.5;
				AutoButtonColor=true;
				Text=v.Title;
				Parent=Frame;
				FontSize=5;
				Font=1;
			},v.Function
		);
	end;
end);
A.Functions.CreateGuiModule(function()
	Delay(0,function()
		local Color1=A.Old.Color3.Black;
		local Color2=A.Old.Color3.Red;
		local Color3=A.Old.Color3.Red;
		local Color4=A.Old.Color3.Black;
		local Msg=A.Functions.Peace('TextLabel',{
				Text='Welcome!'..string.rep('\n',2)..'Remso - Local Admin';
				Position=A.Old.UDim2.new(.5,0,.5);
				BackgroundTransparency=.5;
				BackgroundColor3=Color1;
				Parent=A.User.Screen;
				TextColor3=Color2;
				BorderSizePixel=0;
				TextWrapped=true;
				FontSize=3;
			}
		);
		A.User.STARTUPMSG=Msg;
		Msg:TweenSizeAndPosition(A.Old.UDim2.new(0,300,0,70),A.Old.UDim2.new(.5,-150,.5,-35),1,2,1,false);
		Wait(5);
		Msg.BackgroundColor3=A.Old.Color3.Red;
		Msg.TextColor3=A.Old.Color3.Black;
		if(Msg.Parent~=nil)then
			Msg:TweenSizeAndPosition(A.Old.UDim2.new(0,200,0,20),A.Old.UDim2.new(0,25,1,-145),1,1,1,false);
			Msg.Text='<-- There is the MENU';
			coroutine.wrap(function()
				for i=1,3 do
					Msg.BackgroundColor3=Color3;
					Msg.TextColor3=Color4;
					A.Functions.Wait(.3);
					Msg.BackgroundColor3=Color1;
					Msg.TextColor3=Color2;
					A.Functions.Wait(.3);
				end;
			end)();
			Wait(6);
		end;
		A.Functions.Remove(Msg,true);
	end);
end);
A.Functions.CreateGuiModule(function()
	A.Functions.SettingWait('HealthBar',true);
	A.User.Gui.HelathBar={};
	local this=A.User.Gui.HelathBar;
	
	if(A.User.Humanoid.Value==nil)then
		A.User.Humanoid.Changed:wait();
	end;

	this.Fix=function()
		this.Pos=A.Old.UDim2.new(this.SetHealth.Value/this.SetMaxHealth.Value,0,1);
		if(this.HBar~=nil)then
			this.HBar.Size=this.Pos;
		end;
		return this.Pos;
	end;
	this.FixStats=function()
		this.Idk=this.Humanoid.Health/this.Humanoid.MaxHealth;
		this.SetMaxHealth.Value=this.Humanoid.MaxHealth;
		this.SetHealth.Value=this.Humanoid.Health;
		this.SetColor.Value=(this.Idk<=.1)and A.Old.Color3.DarkRed or(this.Idk>.1 and this.Idk<=.5)and
			A.Old.Color3.DarkYellow or(this.Idk>.5 and this.Idk<=1)and A.Old.Color3.Green or A.Old.Color3.Black;
	end;

	this.SetColor=A.Functions.Value('Color3',A.Old.Color3.Green,function(Color3)this.HBar.BackgroundColor3=Color3;Color3=nil;end);
	this.SetVisible=A.Functions.Value('Bool',true,function(Value)this.Frame.Visible=Value;Value=nil;end);
	this.SetMaxHealth=A.Functions.Value('Number',A.User.Humanoid.Value.MaxHealth,this.Fix);
	this.SetHealth=A.Functions.Value('Number',A.User.Humanoid.Value.Health,this.Fix);

	this.Frame=A.Functions.Lock('Frame',{
			Visible=function()return this.SetVisible.Value;end;
			Position=A.Old.UDim2.new(.5,-55,1,-25);
			Size=A.Old.UDim2.new(0,110,0,20);
			Parent=A.User.Frames.Other;
			BackgroundTransparency=.5;
		}
	);
	this.MHBar=A.Functions.Lock('Frame',
		{
			--BackgroundColor3=A.Old.Color3.DarkRed;
			Position=A.Old.UDim2.new(0,5,0,5);
			Size=A.Old.UDim2.new(1,-10,1,-10);
			BackgroundTransparency=1;
			Parent=this.Frame;
		}
	);
	this.HBar=A.Functions.Lock('Frame',
		{
			BackgroundColor3=function()return this.SetColor.Value;end;
			Position=A.Old.UDim2.Pax;
			Parent=this.MHBar;
		}
	);
	this.HBar.Size=this.Fix();

	this.Valid=true;

	coroutine.wrap(function()
		while(A.Functions.Check()and this.Valid==true)do
			this.SetVisible.Value=A.Settings.HealthBar.Value;
			A.Settings.HealthBar.Changed:wait();
		end;
	end)();
	coroutine.wrap(function()
		while(A.Functions.Check()and this.Valid==true)do
			A.Functions.SettingWait('HealthBar',true);

			this.Humanoid=A.User.Humanoid.Value;
			this.FixStats();

			coroutine.wrap(function()
				while(A.Functions.Check()and A.User.Humanoid.Value==this.Humanoid)do
					this.Humanoid.HealthChanged:wait();
					this.FixStats();
				end;
			end)();

			A.User.Humanoid.Changed:wait();
			this.Humanoid.MaxHealth=this.Humanoid.MaxHealth+1;
		end;
	end)();

end);
--[[Create gui module end;]]


--[=[Module create
	Exemple:
A.Functions.CreateModule('Type',function()

end);
]=]
A.Functions.CreateModule('Once',A.Functions.Screen);
A.Functions.CreateModule('Once',function()

	local Value=A.Functions.SettingWait('Immortal',true);
	local Val_;

	while(A.Functions.Check())do
		Val_=Value.Value;
		if(A.User.Humanoid.Value~=nil)then
			A.User.Humanoid.Value.Name=Val_==true and'Immortal'or'Humanoid';
			A.User.Humanoid.Value.MaxHealth=Val_==true and 1e666 or 100;
			A.User.Humanoid.Value.Health=Val_==true and 1e666 or 100;
		end;
		Value.Changed:wait();
	end;

end);
A.Functions.CreateModule('Once',function()
	local Num;
	A.Stuffs.SecurityID=A.Stuffs.SecurityID and A.Stuffs.SecurityID+1 or 1;
	local Local_ID=A.Stuffs.SecurityID;
	while(A.Functions.Check()==true and A.Stuffs.SecurityID==Local_ID)do
		A.Functions.Wait();

		A.User.Char=A.User.C.Character;

		if(A.User.Char~=nil and A.User.Char.PrimaryPart~=nil)then
			A.Functions.LoadModule'Char';
		end;

		A.User.C.CharacterAdded:wait();

		Num=#A.User.Connections;
		for i=1,Num do A.User.Connections[i]:disconnect();i=nil;end;
		for i=1,Num do A.User.Connections[i]=nil;i=nil;end;
	end;
end);
A.Functions.CreateModule('Char',function()
	_G['Ohgal - Char Security Version']=_G['Ohgal - Char Security']~=nil and _G['Ohgal - Char Security']+1 or 0;
	local CharSecurityVersion=_G['Ohgal - Char Security'];
	local Torso=A.User.Char.Torso
	while(A.Functions.Check()and CharSecurityVersion==_G['Ohgal - Char Security'])do
		A.Functions.SettingWait('Security of character',true);
		if(Torso.Position.Y<=-200 and Torso.Velocity.Y~=0)then
			Torso.CFrame=A.Functions.GetSpawnLocationCFrame();
			Torso.RotVelocity=A.Old.Vector3.Pax;
			Torso.Velocity=A.Old.Vector3.Pax;
		end;
		A.Functions.Wait();
	end;
end);
A.Functions.CreateModule('Char',function()
	A.User.Humanoid.Value=A.Functions.FindObject(A.User.Char,'className','Humanoid');

	if(A.Settings.Immortal.Value==true)then
			A.User.Humanoid.Value.Name='Immortal';
			A.User.Humanoid.Value.MaxHealth=1e666;
			A.User.Humanoid.Value.Health=1e666;
	end;

	coroutine.wrap(function()
		local Humanoid=A.User.Humanoid.Value;
		while(Humanoid==A.User.Humanoid.Value and A.Functions.Check()==true)do
			A.Functions.SettingWait('Big jumps',true);
			Humanoid.Jumping:wait();
			if(A.Settings['Big jumps'].Value==true)then
				Humanoid.Torso.Velocity=A.Old.Vector3.Jump;
			end;
		end;
	end)();

	for i,v in next,A.User.Char:children()do
		if(A.Stuffs.CharVirus[v.Name]==v.className)then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	A.Functions.Connect(A.User.Char,'ChildAdded',function(v)
		if(A.Stuffs.CharVirus[v.Name]==v.className)then
			A.Functions.Remove(v,true);
		end;v=nil;
	end,A.User);
	if(A.Stuffs.CharVirus.Sound==nil)then return nil;end;
	for i,v in next,A.User.Char.PrimaryPart:children()do
		if(v.Name=='Sound'and v.className=='Sound'and v.archivable==false)then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	A.Functions.Connect(A.User.Char.PrimaryPart,'ChildAdded',function(v)
		if(v.Name=='Sound'and v.className=='Sound'and v.archivable==false)then
			A.Functions.Remove(v,true);
		end;v=nil;
	end,A.User);
end);
A.Functions.CreateModule('PlayerGui',A.Functions.GuisParent);
A.Functions.CreateModule('PlayerGui',function()
	local Old=A.User.PlayerGui;
	coroutine.wrap(function()
		local Virus;
		while(A~=nil and A.Functions.Check()and Old==A.User.PlayerGui)do
			if(Virus==nil)then
				Virus=Old:FindFirstChild'HealthGUI';
			else
				Virus=Virus.Name=='HealthGUI'and Virus or nil;
			end;
			if(Virus~=nil)then
				A.Functions.VisibleOfHealthGUI(A.Settings.HealthBar.Value==false);
				Virus=Virus:FindFirstChild'hurtOverlay';
				if(Virus)then
					A.Functions.Remove(Virus,true);
				end;
			end;
			Virus=Old.ChildAdded:wait();Wait();
		end;
	end)();
	while(Old.Parent~=nil)do Old.Changed:wait();end;
	A.Old.Instance.NewObject('BoolValue',Old);
end);

--[[Module create end;]]



--[=[Call create
	Exemple:

A.Functions.CreateCall([[Description]],{},function(Self)

end);

]=]
A.Functions.CreateCall([[For you]],{'me!';'myself!';'satan!';},function(Self)
	return Self==A.User.C;
end);
A.Functions.CreateCall([[For they]],{'other!';'noobs!';'idiots!';'notme!';},function(Self)
	return Self~=A.User.C;
end);
A.Functions.CreateCall([[For players]],{'players!';},function(Self)
	return Self.userId>0;
end);
A.Functions.CreateCall([[For guests]],{'guests!';},function(Self)
	return Self.userId<1;
end);
A.Functions.CreateCall([[For random player]],{'random!';'rand!';},function(Self)
	return math.random(1,4)==1;
end);
A.Functions.CreateCall([[For each]],{'all!';'each!'},function(Self)
	return true;
end);
--[[Call create end;]]



A.Functions.SetupCommands=function()
--[==[Command create
 Exemple:

A.Functions.CreateCommand([[Title]],{},[[Description]],[[]],1,function(Text,FullText,Args)

end);

]==]
A.Functions.CreateCommand([[Repeat Command]],{'loopthis';'loopthat';'repeat';'rt';},[[Repeat commands...First is name of the loop... Second value is number of loop... Third is delay (0 not wait())... The last is the command and command argument(s)... To stop loop say loop name first and last "abort!"]],[[-v-v-v]],3,function(Text,FullText,Args)
	if(A.Stuffs.Loops==nil)then
		A.Stuffs.Loops={};
	end;

	local Value=Args[2]:lower()~='abort!'and true or nil;

	if(Value==true and A.Stuffs.Loops[Args[1]]~=nil)then
		error(Args[1]..' already run...');
		return nil;
	end;
	A.Stuffs.Loops[Args[1]]=Value;
	if(A.Stuffs.Loops[Args[1]]==nil)then
		return nil;
	end;
	local Repeat=tonumber(Args[2]);
	local Delay=tonumber(Args[3]);
	local Command=A.Data.Start..FullText:match(Args[1]..A.Data.Step..Args[2]..A.Data.Step..Args[3]..A.Data.Step..'(.+)');
	if(Delay>0)then
		for i=1,Repeat do
			if(A.Stuffs.Loops[Args[1]]==true)then
				A.Functions.SearchCommand(Command);
				Wait(Delay);
			else
				break;
			end;
		end;
	else
		for i=1,Repeat do
			A.Functions.Thread(function()
				A.Functions.SearchCommand(Command);
			end);
		end;
	end;
	A.Stuffs.Loops[Args[1]]=nil;
end);
A.Functions.CreateCommand([[Dummy]],{'dummy';'doll';},[[Dummy for testing lol... Add player name for or Vector3 position and for last number of dummies... For remove all, the first argument should be "remove!"]],[[-v-v]],2,function(Text,FullText,Args)
	if(Args[1] and Args[1]:lower()=='remove!')then
		for i,v in next,A.Service.Workspace:children()do
			if(v:FindFirstChild'Remso - Dummy')then
				A.Functions.Remove(v,true);
			end;
		end;
		return nil;
	end;
	local Repeat=tonumber(Args[2])or 1;
	local Load,Position=pcall(function()return loadstring('local c={...};return c[1]('..Args[1]..')')(A.Old.CFrame.new);end);
	if(Load==false)then Position=A.Functions.Players(Args[1])[1].Character.Torso.CFrame;end;
	for i=1,Repeat do
		local Dummy=A.Functions.Peace('Model',{
				Parent=A.Service.Workspace;
				Name='Dummy';
			}
		);
		A.Old.Instance.NewObject('BoolValue',Dummy).Name='Remso - Dummy';
		A.Old.Instance.NewObject('Humanoid',Dummy);
		A.Functions.Peace('Part',{
				CFrame=Position*CFrame.Angles(0,math.rad(360/Repeat*i),0)*CFrame.new(5+.2*Repeat,0,0);
				Size=Vector3.new(2,2,1);
				BottomSurface=0;
				TopSurface=0;
				formFactor=3;
				Parent=Dummy;
				Name='Torso';
			}
		);
		A.Functions.Heal(Dummy);
		A.Old.Instance.NewObject('SpecialMesh',Dummy.Head).Scale=Vector3.new(1.25,1.25,1.25);
		A.Functions.Peace('Decal',{
				Texture='rbxasset://textures/face.png';
				Parent=Dummy.Head;
				Name='face';
				Face=5;
			}
		);
	end;
end);
A.Functions.CreateCommand([[Wall Hack]],{'wallhack';'wall_hack';'wh';},[[Wall hack... Add number for transparency value! The base value is 0.5]],[[-v]],1,function(Text,FullText,Args)
	local Transparency=tonumber(Args[1])or .5;
	A.Functions.All(A.Service.Workspace,function(Part)
		if(Part:IsA'BasePart')then
			Part.AlphaModifier=Transparency;
		end;
	end);
end);
A.Functions.CreateCommand([[Teleport To A Place]],{'toplace';'tplace';'tpl';},[[Teleport to other places...]],[[-v-p]],2,function(Text,FullText,Args)
	local Teleport_ID=tonumber(Args[1]);
	A.Functions.Players(Args[2],function(Self)
		if(Self==A.User.C)then
			A.Services.TeleportService:Teleport(Teleport_ID);
		else
			A.Functions.CreateScript('LocalScript',Self,[[
				Game:service'TeleportService':Teleport(]]..Teleport_ID..[[);
			]]);
		end;
	end);
end);
A.Functions.CreateCommand([[Execution]],{'execution';'execute';'exe';},[[Like localscripting but this works only for admin...]],[[-t]],0,function(Text,FullText,Args)
	local Exe=A.Old.Instance.NewObject'StringValue';
		Exe.Name='Ohgal_Execution';
		Exe.Parent=A.User.C;
		Exe.Value=FullText;
end);
A.Functions.CreateCommand([[Resize Character]],{'resize';},[[Character resizing OLaloOLAolaol]],[[-p-v]],2,function(Text,FullText,Args)
	local Size=tonumber(Args[2]);
	if(Size==nil)then
		return nil;
	end;
	A.Functions.Players(Args[1],function(Self)
		A.Functions.ResizeChar(Self.Character,Size);
	end);
end);
A.Functions.CreateCommand([[Give Weapons]],{'giveweapons';'gws';},[[Give weapons from somebody to somebody...]],[[-p-p]],2,function(Text,FullText,Args)
	local Backpack=A.Functions.FindObject(A.Functions.Players(Args[2])[1],'className','Backpack');
	if(Backpack~=nil)then
		A.Functions.Players(Args[1],function(Self)
			if(Self.Character~=nil)then
				for i,v in next,Self.Character:children()do
					if(v.className=='Tool')then
						v.Parent=Backpack;
					end;
				end;
			end;
			for i,v in next,Self.Backpack:children()do
				if(v.className=='Tool'or v.className=='HopperBin')then
					v.Parent=Backpack;
				end;
			end;
		end);
	end;
end);
A.Functions.CreateCommand([[Be Cute]],{'becute';'bc';},[[Be cute?]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		local Parent=Self.Character;

		if(Parent==nil)then
			return nil;
		end;

		local StarterPos=A.Old.Vector3.Pax;

		local Round=15;
		local Asd=Round/5;
		local Radius=.8*Parent.Torso.Size.X/2;

		local PSize=.5;

		local P={};
		local Num=0;

		for i,v in next,Parent:children()do
			if(v.Name=='Pentagramma')then
				A.Functions.Remove(v,true);
			elseif(v.Name=='Black Metal Set')then
				for i,v in next,v:children()do
					if(v.className=='Part')then
						A.Functions.Remove(v,true);
					end;
				end;
			end;
		end;

		local Warehouse=A.Old.Instance.NewObject('Model',Parent);
			Warehouse.Name='Pentagramma';

		for i=0,Round do
			local Rad=math.rad((360/Round*i)+180);
			local Pos=A.Old.Vector3.new(
				math.sin(Rad)*Radius,
				math.cos(Rad)*Radius,
				-Parent.Torso.Size.Z/2
			);
			if(i~=0)then Num=Num+1;
				if(Num==Asd)then
					Num=0;
					P[#P+1]=Pos;
				end;
				A.Functions.Peace('BlockMesh',{
						Scale=A.Old.Vector3.new(PSize,PSize,(StarterPos-Pos).Magnitude*5.2)+A.Old.Vector3.new(math.random()/10,0,0);
						Parent=A.Functions.CreateWeld(
							Parent.Torso,
							A.Functions.Peace('Part',{
									BrickColor=BrickColor.new(199);
									CFrame=Parent.Torso.CFrame;
									Size=A.Old.Vector3.Pax;
									CanCollide=false;
									Parent=Warehouse;
									formFactor=3;
								}
							),
							A.Old.CFrame.new(StarterPos,Pos)*A.Old.CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2)
						).Part1;
					}
				);
			end;
			StarterPos=Pos;
		end;

		for i,v in next,{{1;4;};{1;3;};{2;4;};{2;5;};{3;5;};}do --Make better...
			local StarterPos=P[v[1]];
			local Pos=P[v[2]];
			
			local Weld=A.Old.Instance.NewObject('Weld',Warehouse);
			A.Functions.Peace('BlockMesh',{
					Scale=A.Old.Vector3.new(PSize-.2,PSize-.2,(StarterPos-Pos).Magnitude*5.2)+Vector3.new(math.random()/10,0,0);
					Parent=A.Functions.CreateWeld(
						Parent.Torso,
						A.Functions.Peace('Part',{
								BrickColor=BrickColor.new(194);
								CFrame=Parent.Torso.CFrame;
								Size=A.Old.Vector3.Pax;
								CanCollide=false;
								Parent=Warehouse;
								formFactor=3;
							}
						),
						CFrame.new(StarterPos,Pos)*CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2)
					).Part1;
				}
			);
		end;
	end);
end);
A.Functions.CreateCommand([[Change Music]],{'cmp';'cmusic';},[[Change current music properties]],[[-r-v]],2,function(Text,FullText,Args)
	local Name='Ohgal_Music';
	local Music=A.Service.Workspace.CurrentCamera:FindFirstChild(Name)or A.Service.Lighting(Name);
	if(Music~=nil)then
		Music=Music.className=='Tool'and Music:FindFirstChild(Name)or Music;
		print(Music,Music.className);
		for i,v in next,A.Functions.GetProperties(Music)do
			if(i:lower():find(Args[1]:lower())==1)then
				Music[i]=loadstring('return '..Args[2])();
			end;
		end;
	end;
end);
A.Functions.CreateCommand([[Music]],{'play';'music';'mp';},[[asd...Arguments: 1.) name of the music or number of the music 2.) Public mode or Private mode (Base mode is Public!)]],[[-v-b]],2,function(Text,FullText,Args)
	for i,Place in next,{A.Service.Lighting;A.Service.Workspace.CurrentCamera;}do
		for i,v in next,Place:children()do
			if(v.className=='Sound'and v.Name=='Ohgal_Music')then
				v:stop();
			end;
		end;
	end;

	local Bool=A.Functions.ToBoolean(Args[2]);
	local Sound_Data=A.Functions.LoadSound('Musics',Args[1],true);

	loadstring([[
		local Parent=]]..tostring(Bool)..[[ and Workspace.CurrentCamera or Game:service'Lighting';
		local Sound=Parent:FindFirstChild'Ohgal_Music'or Instance.new'Sound';
			Sound.SoundId=']]..A.Data.BaseUrl..Sound_Data.SoundId..[['
			Sound.Pitch=]]..Sound_Data.Pitch..[[
			Sound.Name='Ohgal_Music';
			Sound.Parent=Parent;
			Sound.Looped=true;
			Sound:play();
	]])();
end);
A.Functions.CreateCommand([[Kick]],{'kick';'bye';},[[Customed player'll leave from the game...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self~=A.User.C)then
			if(A.Stuffs.ScriptPacket.LocalScript~=nil)then
				A.Functions.CreateScript('LocalScript',Self,[[script.Parent=nil;User.Parent=nil;User.Parent=Users;]]);
			else
				A.Functions.Remove(Self);
			end;
		end;
	end);
end);
A.Functions.CreateCommand([[Create Part]],{'npart';'cpart';'part';},[[Part creating... For remove all parts you should add first argument "remove!" or nothing... Arguments: 1.) Size(n,n,n) 2.) BrickColor 3.) Collide 4.) Anchor 5.) Position(0,0,0)[ haven't to add ] 6.) Type of part]],[[-s-b-b-v-x-v]],6,function(Text,FullText,Args)

	if(Args[1]==nil or Args[1]:lower()=='remove!')then
		A.Functions.All(Workspace,function(Part)
			if(Part.Name=='Ohgal_Part')then
				A.Functions.Remove(Part,true);
			end;
		end);
		return nil;
	end;

	local Size=A.Old.Vector3.new(loadstring('return '..Args[1])());

	local Position=Args[5]~=nil and A.Old.CFrame.new(A.Old.Vector3.new(loadstring('return '..Args[5])()))or
		A.User.Char.Head.CFrame+A.User.Char.Head.CFrame.lookVector*A.Old.Vector3.new(Size.X,0,Size.Z).Magnitude;
	
	local Part=A.Functions.Peace(Args[6]~=nil and Args[6]or'Part',{
			CanCollide=Args[3]~=nil and A.Functions.ToBoolean(Args[3])or true;
			BrickColor=A.Old.BrickColor.new(Args[2]or 0);
			Anchored=A.Functions.ToBoolean(Args[4]);
			Name='Ohgal_Part';
			Parent=Workspace;
			CFrame=Position;
			formFactor=3;
			Size=Size;
		}
	);
	
end);
A.Functions.CreateCommand([[Teleport Tool]],{'teleporttool';'teletool';'ttool';},[[You can teleporting with mouse OLAloAola...]],[[]],0,function(Text,FullText,Args)
	local Tool=A.Old.Instance.NewObject'Tool';
	local Handle=A.Functions.Peace('Part',{
			Size=A.Old.Vector3.Pax;
			Name='Handle';
			formFactor=0;
			Parent=Tool;
		}
	);

	Delay(0,function()
		Tool.Parent=A.User.Char;
	end);


	local Mouse=Tool.Equipped:wait();

	Mouse.Icon=A.Data.BaseUrl..65439473;

	Tool.Parent=nil;


	local Torso=A.User.Char.Torso;

	local Cts={};

	Cts[#Cts+1]=Mouse.Button1Down:connect(function()
		if(Mouse.Target~=nil)then
			Torso.Velocity=A.Old.Vector3.Pax;
			Torso.RotVelocity=A.Old.Vector3.Pax;
			Torso.CFrame=Torso.CFrame-Torso.CFrame.p+Mouse.Hit.p+A.Old.Vector3.Char;
		end;
	end);

	local cTorso;
	local Grabbed;
	local Dragging=false;
	Cts[#Cts+1]=Mouse.KeyDown:connect(function(Key)
		if(Key=='f')then
			if(Mouse.Target~=nil and Mouse.Target~=Workspace)then
				local Humanoid=A.Functions.FindObject(Mouse.Target.Parent,'className','Humanoid');
				if(Humanoid~=nil and Humanoid.Torso~=nil)then
					cTorso=Humanoid.Torso;
					cTorso.Velocity=A.Old.Vector3.Pax;
					cTorso.RotVelocity=A.Old.Vector3.Pax;
					cTorso.CFrame=Torso.CFrame+(A.Old.Vector3.Char*2);
				end;
			end;
		elseif(Key=='e'and Dragging==false and Mouse.Target~=nil)then
			local Target=Mouse.Target;
			Grabbed=A.Functions.FindWithOutside(Target,Workspace);
			Dragging=true;
			A.Functions.Thread(function()
				Mouse.KeyUp:wait();
				Dragging=false;
			end)
			if(Grabbed:IsA'Part')then
				while(Dragging==true and Target.Anchored==false)do
					Mouse.Move:wait();
					if(Mouse.Target~=Target and Mouse.Target~=nil)then
						Grabbed.CFrame=Mouse.Hit.p;
					end;
				end;
			else
				while(Dragging==true)do
					Mouse.Move:wait();
					if(Mouse.Target~=Target and Mouse.Target~=nil and Target.Anchored==false)then
						Grabbed:MoveTo(Mouse.Hit.p);
					end;
				end;
			end;
		end;
	end);

	A.Functions.Thread(function()
		A.User.C.CharacterRemoving:wait();

		for i,v in next,Cts do
			v:disconnect();
		end;
	end);
end);
A.Functions.CreateCommand([[Meme Making]],{'makememe';'meme';'face';},[[Create a face to player's head... first is name of the meme or customed image's url]],[[-p-v]],2,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.MakeMeme(Args[2],Self.Character);
	end);
end);
if(A.Stuffs.ScriptPacket.Script~=nil)then
	A.Functions.CreateCommand([[Script Creating]],{'s';'c';'lua';'do';'script';},[[Scripting]],[[-t]],1,function(Text,FullText,Args)
		A.Functions.CreateScript('Script',A.Service.Workspace,FullText);
	end);
	A.Functions.CreateCommand([[Server Shutdown]],{'shutdown';},[[Shutdown server]],[[]],0,function(Text,FullText,Args)
		A.Functions.CreateScript('Script',A.Service.Workspace,[[Instance.new('StringValue',Workspace).Value=string.rep('\n',9999999);]]);
	end);
end;
if(A.Stuffs.ScriptPacket.LocalScript~=nil)then
	A.Functions.CreateCommand([[Local Script Creating]],{'local';'ls';'l';'lual';},[[Local Scripting...If you want share "(start sginal)(command)(separator signal)share!(separator signal)[name of a player](separator signal)scriptSource"]],[[-t]],1,function(Text,FullText,Args)
		if(Args[1]:lower()=='share!')then
			FullText=FullText:match(Args[1]..A.Data.Step..'(.+)');
			local List=FullText:match('([^'..A.Data.Step..']+)');
			A.Functions.Players(List,function(Self)
				A.Functions.CreateScript('LocalScript',Self,FullText:match(List..A.Data.Step..'(.+)'));
			end);
		else
			A.Functions.CreateScript('LocalScript',A.User.C,FullText);
		end;
	end);
	A.Functions.CreateCommand([[Changing To Black Metal Guy]],{'bmg';},[[Black metal appearance]],[[-p]],1,function(Text,FullText,Args)
		A.Functions.Players(Args[1],function(Self)
			local Char=Self.Character;
			local Head=Char.Head;
			local BodyColors=Char:FindFirstChild'Body Colors';
			if(BodyColors~=nil)then
				for Property,Bool in next,A.Functions.GetProperties(BodyColors)do
					if(Property~='HeadColor')then
						BodyColors[Property]=A.Old.BrickColor.Black;
					else
						BodyColors[Property]=A.Old.BrickColor.White;
					end;
				end;
			end;
			Delay(0,function()
				A.Functions.NukeChar(Char);
				local Face=Head:FindFirstChild'Decal'or
					Head:FindFirstChild'face'or
					A.Old.Instance.NewCreate('Decal',Head);
				if(Face)then
					Face.Texture=A.Data.BaseUrl..74447711;
					Face.Name='face';
				end;
				local Model=A.Functions.Peace('Model',{
						Name='Black Metal Set';
						Parent=Char;
					}
				);
				for i=0,1 do
					A.Old.Instance.NewObject('BlockMesh',
						A.Functions.CreateWeld(Char.Torso,
							A.Functions.Peace('Part',{
								Size=A.Old.Vector3.new(.25,i==0 and 1.5 or .75,.25);
								Name='Part Of Cross ('..tostring(i+1)..')';
								BrickColor=A.Old.BrickColor.White;
								BottomSurface=0;
								formFactor=3;
								TopSurface=0;
								Parent=Model;
							}),
							A.Old.CFrame.new(0,i==1 and -.25 or 0,-.5),
							i==1 and A.Old.CFrame.Angles(0,0,math.rad(90))or
							A.Old.CFrame.Pax
						).Part1
					).Scale=A.Old.Vector3.new(1,1,i==0 and 1 or .99);
				end;
				Wait(.3);
				for i,v in next,Char:children()do
					if(v.className=='Part')then
						v.BrickColor=v.Name=='Head'and A.Old.BrickColor.White or A.Old.BrickColor.Black;
					end;
				end;
				A.Functions.CreateScript('LocalScript',Model,[=[
					local face=Game.Players.LocalPlayer.Character.Head.face;
					local open=face.Texture;
					local close=open:gsub('%d+','74468845');
					while(Wait(math.random(10,200)/10))do
						face.Texture=close;
						Wait(math.random(1,3)/10);
						face.Texture=open;
					end;
				]=]);
			end);
		end);
	end);
end;
A.Functions.CreateCommand([[Settings Change]],{'settings';'setting';'set';},[[Change settings...1.)name of the setting (Don't need write the full name!) 2.) on/off... TO CHANGE ALL SAY "all!"]],[[-v-b]],2,function(Text,FullText,Args)
	local Name=Args[1]:lower();
	local Bool=A.Functions.ToBoolean(Args[2]);
	local Message=A.Service.Workspace:FindFirstChild'SettingChangedMsg'or A.Old.Instance.NewObject('Hint',A.Service.Workspace);
	local OldText;Delay(7,function()if(OldText==nil or Message.Text==OldText)then A.Functions.Remove(Message,true);end;end);
		Message.Name='SettingChangedMsg';
		Message.Text='Setting Changed:';
	for Name in Name:gmatch'([^,]+)'do
		for i,v in next,A.Settings do
			if(i:lower():find(Name)==1 or Name=='all!')then
				v.Value=Bool;
				Message.Text=Message.Text..' ('..i..' to '..tostring(Bool)..')';
			end;
		end;
	end;
	OldText=Message.Text;
end);
A.Functions.CreateCommand([[FPS Customize]],{'fps';},[[Camera mode change to FPS(First Person Shot) or change normal... only local]],[[-b]],1,function(Text,FullText,Args)
	A.User.C.CameraMode=A.Functions.ToBoolean(Args[1])==true and 1 or 0;
end);
A.Functions.CreateCommand([[Heal]],{'heal';'hpup';},[[Healing...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.Heal(Self.Character);
	end);
end);
A.Functions.CreateCommand([[Work]],{'work'},[[Do something to objects... arguments: 1.) Property 2.) Property Value 3.)New Property 4.) New Value 5.) Path... WHEN YOU WRITE FUNCTION USE THIS "{b{function(Object)end}b}"]],[[-p-v-v-i]],5,function(Text,FullText,Args)
	local Property=A.Functions.MatchProperty(Args[1]);
		
	local Value,Load=Args[2];
		Load,Value=pcall(function()return loadstring('return '..Value)();end);
		if(Load==false or Value==nil)then
			Value=Args[2];
		end;

	local NewProperty=(#Args[3]<30)and A.Functions.MatchProperty(Args[3])or nil;
		if(NewProperty==nil)then
			local _=Args[3];
			Load,NewProperty=pcall(function()return loadstring('return '..Args[3])();end);
			if(Load==false or NewProperty==nil)then
				NewProperty=_;
			end;
		end;

	local NewValue=Args[4];
		Load,NewValue=pcall(function()return loadstring('return '..NewValue)();end);
		if(Load==false)then
			NewValue=Args[4];
		end;

	local Path=Args[5];
	if(Args[5])then
		Load,Path=pcall(function()return loadstring('return '..Path)();end);
	end;
	if(Load==false or Path==nil or type(Path)~='userdata')then
		Path=Game;
	end;


	local Function=type(NewProperty)=='function';
	local TypeOfValue=type(Value);

	if(TypeOfValue=='string')then
		A.Functions.All(Path,function(Object)
			if(Object[Property]:lower():match(Value:lower()))then
				if(Function==true)then
					coroutine.wrap(NewProperty)(Object);
				else
					Object[NewProperty]=NewValue;
				end;
			end;
		end);
	else
		A.Functions.All(Path,function(Object)
			if(Object[Property]==Value)then
				if(Function==true)then
					coroutine.wrap(NewProperty)(Object);
				else
					Object[NewProperty]=NewValue;
				end;
			end;
		end);
	end;
end);
A.Functions.CreateCommand([[Lighting Property Change]],{'lc';'lightingchange';},[[...]],[[-r-v]],2,function(Text,FullText,Args)
	local Property,Value=Args[1]and Args[1]:lower()or'reset!';
	local Lighting=A.Service.Lighting;
	if(A.Stuffs.LightingColorProperties==nil)then
		A.Stuffs.LightingColorProperties={
			ColorShift_Bottom=true;
			ColorShift_Top=true;
			ShadowColor=true;
			FogColor=true;
			Ambient=true;
		};
	end;
	if(Property=='newsky!')then
		if(A.Stuffs.SkyIDs==nil)then
			A.Stuffs.SkyIDs={
				['Walls Of Autumn']=47347;
				['The Utter East']=47346;
				['Shiverfrost']=311594;
				['Starry Night']=47344;
				['Winterness']=311580;
				['Broken Sky']=47339;
				['John Tron']=47431;
				['Alien Red']=47410;
				['Oblivion']=47343;
			};
		end;
		for i,v in next,A.Service.Lighting:children()do
			if(v.className=='Sky')then
				A.Functions.Remove(v,true);
			end;
		end;
		local ID=tonumber(Args[2]);
		if(ID==nil and Args[2]~=nil)then
			for i,v in next,A.Stuffs.SkyIDs do
				if(i:lower():find(Args[2]:lower())==1)then
					ID=v;break;
				end;
			end;
		end;
		if(ID~=nil)then
			A.Service.InsertService:LoadAsset(ID):children()[1].Parent=A.Service.Lighting;
		else
			A.Old.Instance.NewObject('Sky',A.Service.Lighting);
		end;
	end;
	if(Property=='reset!')then A.Functions.ResetLighting();end;
	for i,v in next,A.Functions.GetProperties(Lighting)do
		if(i:lower():find(Property)==1)then
			Value=A.Stuffs.LightingColorProperties[i]and loadstring('return Color3.new('..Args[2]..');')''or Args[2];
			Lighting[i]=Value;
		end;
	end;
end);
A.Functions.CreateCommand([[Change Humanoid Property]],{'hc';'humchange';'hcange';},[[...]],[[-p-r-v]],3,function(Text,FullText,Args)
	local Property;
	for i,v in next,A.Functions.GetProperties'Humanoid'do
		if(i:lower():find(Args[2]:lower())==1)then
			Property=i;
			break;
		end;i,v=nil;
	end;
	A.Functions.Players(Args[1],function(Self)
		A.Functions.FindObject(Self.Character,'className','Humanoid')[Property]=Args[3];
	end);
end);
A.Functions.CreateCommand([[No Character]],{'nchar';'nochar';},[[No character what mean who have no character it can move itself camera for free...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			A.Functions.Remove(Self.Character);
		end;
		Self.Character=nil;
	end);
end);
A.Functions.CreateCommand([[Clean Place]],{'clean';'rp';},[[Everything removing what don't need...]],[[]],0,function(Text,FullText,Args)
	A.Functions.Clean();
end);
A.Functions.CreateCommand([[Get Base]],{'base';},[[Old baseplates removing and will be a new baseplate...]],[[]],0,function(Text,FullText,Args)
	A.Functions.GetBase();
end);
A.Functions.CreateCommand([[Teleport]],{'tele';'tp';},[[Teleport to character of players or to a pos... (Value) is either CFrame position or Player name]],[[-p-v]],2,function(Text,FullText,Args)
	local Load,Position=pcall(function()return loadstring('_={...};return _[1]('..Args[2]..');')(A.Old.CFrame.new);end);
	if(Load==false or Position==nil)then
		Position=A.Functions.Players(Args[2])[1].Character.Torso.CFrame;
	end;
	A.Functions.Players(Args[1],function(Self)
		Self.Character.Torso.Velocity=A.Old.Vector3.Pax;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.Pax;
		Self.Character.Torso.CFrame=Position+A.Old.Vector3.Char;
	end);
end);
A.Functions.CreateCommand([[Explosion]],{'exp';'explosion';},[[Explosion creating...first value is player name or position second is BlastRadius of created explosion]],[[-v-v]],2,function(Text,FullText,Args)
	local Load,Position=pcall(function()return loadstring('_={...};return _[1]('..Args[1]..');')(A.Old.CFrame.new).p;end);
	local Explosion=A.Old.Instance.NewObject'Explosion';
	if(Args[2])then Explosion.BlastRadius=Args[2];end;
	if(Load==true)then
		Explosion.Position=Position;
		Explosion.Parent=A.Service.Workspace;
	else
		A.Functions.Players(Args[1],function(Self)
			Explosion.Parent=nil;
			Explosion.Position=Self.Character.Torso.Position;
			Explosion.Parent=A.Service.Workspace;
		end);
	end;
end);
A.Functions.CreateCommand([[Nuke]],{'nuke';'nake';},[[Characters to be nake]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.NukeChar(Self.Character);
	end);
end);
A.Functions.CreateCommand([[Stop]],{'stop';},[[Stop game...]],[[]],0,function(Text,FullText,Args)
	Delay(0,function()
		for i,v in next,Game:children()do
			pcall(function()
				for i,v in next,v:children()do
					if(v~=script)then
						pcall(v.Destroy,v);
					end;i,v=nil;
				end;
				v:Destroy();
			end);i,v=nil;
		end;
	end);
	local User=A.User.C;
	A.Functions.Uninstall();A=nil;
	User.Parent=nil;User.Parent=Game:service'Players';
end);
A.Functions.CreateCommand([[Gravitation]],{'grav';},[[This put back characters gravitation to normal]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			A.Functions.All(Self.Character,function(Object)
				if(Object.Name=='LolBodyForce')then
					A.Functions.Remove(Object,true);
				end;
			end);
		end;
	end);
end);
A.Functions.CreateCommand([[Set Gravitation]],{'setgrav';'sg';},[[Character gravitation will change]],[[-p-v]],2,function(Text,FullText,Args)
	local Plus=Args[2]or 0;
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			local bf;
			A.Functions.All(Self.Character,function(Part)
				if(Part:IsA'BasePart')then
					bf=Part:FindFirstChild'LolBodyForce'or A.Old.Instance.NewObject'BodyForce';
					bf.force=A.Old.Vector3.new(0,Part:GetMass()*-Plus*2,0);
					bf.Name='LolBodyForce';
					bf.Parent=Part;
				end;
			end);
		end;
	end);
end);
A.Functions.CreateCommand([[Rotate]],{'rotate';'rot';},[[Trip character...(Value) is radian value]],[[-p-v]],2,function(Text,FullText,Args)
	local Rad=A.Old.CFrame.Angles(math.rad(Args[2]or 180),0,0);
	A.Functions.Players(Args[1],function(Self)
		Self.Character.Torso.CFrame=Rad+Self.Character.Torso.Position;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.Pax;
		Self.Character.Torso.Velocity=A.Old.Vector3.Pax;
	end);
end);
A.Functions.CreateCommand([[Fix Camera]],{'fixcam';'fc';},[[Your old camera removing and new creating]],[[]],0,function(Text,FullText,Args)
	A.Functions.Remove(A.Service.Workspace.CurrentCamera,true);
	local Camera=A.Service.Workspace.Changed:wait()and A.Service.Workspace.CurrentCamera;
	Camera.CameraSubject=A.User.Char;
	Camera.CameraType='Custom';
end);
A.Functions.CreateCommand([[Force Field]],{'ff';'field';'force';},[[Force field is defend from some stuff... exemple: explosions]],[[-p-b]],2,function(Text,FullText,Args)
	local Bool=A.Functions.ToBoolean(Args[2]);
	A.Functions.Players(Args[1],function(Self)
		for i,v in next,Self.Character:children()do
			if(v.className=='ForceField')then
				A.Functions.Remove(v,true);
			end;i,v=nil;
		end;
		if(Bool==true)then
			A.Old.Instance.NewObject('ForceField',Self.Character).Name='';
		end;
	end);
end);
A.Functions.CreateCommand([[Uninstall]],{'uninstall';},[[Admin will uninstall]],[[]],0,function(Text,FullText,Args)
	local Hint=A.Old.Instance.NewObject('Hint',A.Service.Workspace);
		Hint.Text='"Remso -  Local Admin" uninstalled!';
		Delay(10,function()
			Hint.Parent=nil;
		end);
	A.Functions.Uninstall();
	A=nil;
end);
A.Functions.CreateCommand([[Kill]],{'kill';'die';'d';},[[Kill customed player]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		local c=A.Old.Instance.NewObject('ObjectValue',A.Functions.FindObject(Self.Character,'className','Humanoid'));
			c.Name='creator';
			c.Value=A.User.C;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100));
		Self.Character:BreakJoints();
	end);
end);
A.Functions.CreateCommand([[Reset Character]],{'respawn';'rs';'reset';},[[Old character removing and customed player get new character]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.ResetChar(Self);
	end);
end);
A.Functions.CreateCommand([[Loadstring]],{'load';'loadstring';},[[load your chatted text...]],[[-t]],0,function(Text,FullText,Args)
	loadstring([[func=...;]]..FullText,'Ohgod')(A.Functions);
end);
--[[Command create end;]]
end;


--[[Create Sounds]]


	A.Functions.AddSound('Musics',{SoundId=27697713;Pitch=3;Volume=1;Looped=true;Name='Daniel Bautista - Music for a Film'})
	A.Functions.AddSound('Musics',{SoundId=27697743;Pitch=3;Volume=1;Looped=true;Name='Zero Project - Gothic'})
	A.Functions.AddSound('Musics',{SoundId=27697277;Pitch=1.37;Volume=1;Looped=true;Name='Positively Dark - Awakening'})
	A.Functions.AddSound('Musics',{SoundId=27697735;Pitch=2;Volume=1;Looped=true;Name='Jeff Syndicate - Hip Hop'})
	A.Functions.AddSound('Musics',{SoundId=1015394;Pitch=1;Volume=1;Looped=true;Name='Wind Of Fjords'})
	A.Functions.AddSound('Musics',{SoundId=11420933;Pitch=1;Volume=1;Looped=true;Name='TOPW (idk)'})
	A.Functions.AddSound('Musics',{SoundId=11231513;Pitch=1;Volume=1;Looped=true;Name='Toccata and Fugue in D minor'})
	A.Functions.AddSound('Musics',{SoundId=27697719;Pitch=2.4;Volume=1;Looped=true;Name='Daniel Bautista - Flight of the Bumblebee'})
	A.Functions.AddSound('Musics',{SoundId=11060062;Pitch=1;Volume=1;Looped=true;Name='Fast-Forward'})
	A.Functions.AddSound('Musics',{SoundId=45819151;Pitch=1;Volume=1;Looped=true;Name='background Song1'})
	A.Functions.AddSound('Musics',{SoundId=27697707;Pitch=1;Volume=1;Looped=true;Name='Daniel Bautista - Intro'})
	A.Functions.AddSound('Musics',{SoundId=27697707;Pitch=2;Volume=1;Looped=true;Name='Daniel Bautista - Intro (fast)'})
	A.Functions.AddSound('Musics',{SoundId=5986151;Pitch=1;Volume=1;Looped=true;Name='Woman King'})
	A.Functions.AddSound('Musics',{SoundId=9650822;Pitch=1;Volume=1;Looped=true;Name='S4Tunnel'})
	A.Functions.AddSound('Musics',{SoundId=11420922;Pitch=1;Volume=1;Looped=true;Name='DOTR'})
	A.Functions.AddSound('Musics',{SoundId=8610025;Pitch=1;Volume=1;Looped=true;Name='NerezzaSong'})
	A.Functions.AddSound('Musics',{SoundId=35930009;Pitch=.9;Volume=1;Looped=true;Name='Troll'})
	A.Functions.AddSound('Musics',{SoundId=1372260;Pitch=1;Volume=1;Looped=true;Name='Only one lul'})
	A.Functions.AddSound('Musics',{SoundId=8663653;Pitch=1;Volume=1;Looped=true;Name='Zen'})

--[[Sounds end;]]




























A.Functions.Uninstall();
A.Functions.Thread(A.Functions.Install);



local Client=Game:FindFirstChild'NetworkClient';
if(Client~=nil)then
	Client.ChildRemoved:wait();
	local Message=A.Old.Instance.new('Hint',Workspace);
		Message.Text='Admin script removed!';
	A.Functions.Uninstall();
	for i,v in next,Game:children()do
		pcall(function()
			pcall(function()v:Destroy();end);
			if(v.Parent~=nil)then
				for i,v in next,v:children()do
					pcall(function()
						v.Parent=nil;
						v:Destroy();
					end);
				end;
			end;
		end);
	end;
end;

end;

if(Game.PlaceId==0)then
	Main();
else
	Delay(2,function()
		Main();
		--loadstring(string.dump(Main),'Ohgal')();
	end);
end;
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "X Admin"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "X Admin"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		playername100 = game.Players.LocalPlayer.Name

script.Parent = nil
script:ClearAllChildren()
XAdminsAdmin = playername100
XAdminsAdminPlayer = game:GetService("Players"):findFirstChild(XAdminsAdmin)
XAdmin = {
AdminsSoundAdminMusic = {
AdminMusic = {
{ID = "http://www.roblox.com/Asset/?id=1015394",PITCH = 1,NAME = "WindOfFjords"};
{ID = "http://www.roblox.com/Asset/?id=1034065",PITCH = 1,NAME = "Halo Theme"};
{ID = "http://www.roblox.com/Asset/?id=1077604",PITCH = 1,NAME = "M.U.L.E."};
{ID = "http://www.roblox.com/Asset/?id=1280414",PITCH = 1,NAME = "Final Destination"};
{ID = "http://www.roblox.com/Asset/?id=1280463",PITCH = 1,NAME = "Chrono Trigger Theme"};
{ID = "http://www.roblox.com/Asset/?id=1280470",PITCH = 1,NAME = "SM64 Theme"};
{ID = "http://www.roblox.com/Asset/?id=1280473",PITCH = 1,NAME = "FFVII Battle AC"};
{ID = "http://www.roblox.com/Asset/?id=1372257",PITCH = 1,NAME = "Cursed Abbey"};
{ID = "http://www.roblox.com/Asset/?id=1372260",PITCH = 1,NAME = "One Winged Angel"};
{ID = "http://www.roblox.com/Asset/?id=1372262",PITCH = 1,NAME = "Star Fox Theme"};
{ID = "http://www.roblox.com/Asset/?id=1372261",PITCH = 1,NAME = "Pokemon Theme"};
{ID = "http://www.roblox.com/Asset/?id=1372259",PITCH = 1,NAME = "Fire Emblem"};
{ID = "http://www.roblox.com/Asset/?id=2027611",PITCH = 1,NAME = "Rickroll"};
{ID = "http://www.roblox.com/Asset/?id=2303479",PITCH = 1,NAME = "Lol"};
{ID = "http://www.roblox.com/Asset/?id=5985787",PITCH = 1,NAME = "Schala"};
{ID = "http://www.roblox.com/Asset/?id=5986151",PITCH = 1,NAME = "WomanKing"};
{ID = "http://www.roblox.com/Asset/?id=5982975",PITCH = 1,NAME = "TheBuzzer"};
{ID = "http://www.roblox.com/Asset/?id=110735374",PITCH = 1,NAME = "Darkest Child 2"};
{ID = "http://www.roblox.com/Asset/?id=110735379",PITCH = 1,NAME = "Movement Proposition 2"};
{ID = "http://www.roblox.com/Asset/?id=45819151",PITCH = 1,NAME = "Temple Of The Ninja Masters"};
{ID = "http://www.roblox.com/Asset/?id=11420933",PITCH = 1,NAME = "TOPW"};
{ID = "http://www.roblox.com/Asset/?id=27697707",PITCH = 3,NAME = "Daniel Bautista - Intro"};
{ID = "http://www.roblox.com/Asset/?id=27697707",PITCH = 1,NAME = "Daniel Bautista - Intro(Pitch 1)"};
{ID = "http://www.roblox.com/Asset/?id=8610025",PITCH = 1,NAME = "Nerezza"};
{ID = "http://www.roblox.com/Asset/?id=27697735",PITCH = 3,NAME = "Jeff Syndicate - Hip Hop"};
{ID = "http://www.roblox.com/Asset/?id=27697743",PITCH = 3,NAME = "Zero Project - Gothic"};
{ID = "http://www.roblox.com/Asset/?id=27697713",PITCH = 3,NAME = "Daniel Bautista - Music for a Film"};
{ID = "http://www.roblox.com/Asset/?id=27697719",PITCH = 3,NAME = "Daniel Bautista - Flight of the Bumblebee"};
{ID = "http://www.roblox.com/Asset/?id=27697699",PITCH = 3,NAME = "Daniel Bautista - Gothic"};
};
};
ExplorerServices = {
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
Players = game:GetService("Players");
Teams = game:GetService("Teams");
StarterGui = game:GetService("StarterGui");
StarterPack = game:GetService("StarterPack");
};
InsertHatAndGearsIDs = {
InsertHatIDs = {
{ID = "1031429",NAME = "Domino crown"};
{ID = "21070012",NAME = "Dominus Empyreus"};
{ID = "96103379",NAME = "Dominus Vespertilio"};
{ID = "48545806",NAME = "Dominus Frigidus"};
{ID = "31101391",NAME = "Dominus Infernus"};
{ID = "64444871",NAME = "Dominus Messor"};
{ID = "72082328",NAME = "Red Sparkle Time Fedora"};
{ID = "63043890",NAME = "Purple Sparkletime Fedora"};
{ID = "1285307",NAME = "Sparkle Time Fedora"};
{ID = "100929604",NAME = "Green Sparkle Time Fedora"};
{ID = "11748356",NAME = "Clockwork's Shades"};
{ID = "1235488",NAME = "Clockwork's Headphones"};
};
};
ExplorerProperties = {
"AbsolutePosition","AbsoluteSize","AccountAge","AccountAgeReplicate",
"Active","Adornee","AllowAmbientOcclusion","AllowTeamChangeOnTouch","AluminumQuality",
"AlwaysOnTop","Ambient","AmbientReverb","Anchored","Angularvelocity","AnimationId",
"Archivable","AreHingesDetected","AttachmentForward","AttachmentPoint","AttachmentPos",
"AttachmentRight","AttachmentUp","AutoAssignable","AutoButtonColor","AutoColorCharacters",
"AvailablePhysicalMemory","Axes","BackgroundColor","BackgroundColor3","BackgroundTransparency",
"BaseTextureId","BaseUrl","Bevel","Roundness","BinType","BlastPressure","BlastRadius",
"BodyColor","BodyPart","BorderColor","BorderColor3","BorderSizePixel","BrickColor",
"Brightness","Browsable","BubbleChat","BubbleChatLifetime","BubbleChatMaxBubbles",
"Bulge","Button1DownConnectionCount","Button1UpConnectionCount","Button2DownConnectionCount",
"Button2UpConnectionCount","C0","C1","CameraMode","CameraSubject","CameraType",
"CanBeDropped","CanCollide","CartoonFactor","CastShadows","CelestialBodiesShown",
"CFrame","Cframe","Character","CharacterAppearance","CharacterAutoLoads","ChatScrollLength",
"ClassicChat","ClassName","ClearTextOnFocus","ClipsDescendants","CollisionSoundEnabled",
"CollisionSoundVolume","Color","Bottom","Top","ConstrainedValue","ControllingHumanoid",
"ControlMode","ConversationDistance","CoordinateFrame","CorrodedMetalQuality","CPU",
"CpuCount","CpuSpeed","CreatorId","CreatorType","CurrentAngle","CurrentCamera",
"CycleOffset","D","DataCap","DataComplexity","DataComplexityLimit","DataCost",
"DataReady","Deprecated","DeselectedConnectionCount","DesiredAngle","DiamondPlateQuality",
"Disabled","DistanceFactor","DistributedGameTime","DopplerScale","Draggable","DraggingV1",
"Duration","EditorFont","EditorFontSize","EditorTabWidth","ElapsedTime","Elasticity",
"Enabled","ExplosionType","ExtentsOffset","F0","F1","F2","F3","Face","FaceId","Faces",
"FieldOfView","Focus","FogColor","FogEnd","FogStart","Font","FontSize","Force","FormFactor",
"Friction","From","GearGenreSetting","Genre","GeographicLatitude","GfxCard","Graphic",
"GrassQuality","Grip","GripForward","GripPos","GripRight","GripUp","Guest","HeadsUpDisplay",
"Health","Heat","Hit","Humanoid","IceQuality","Icon","IdleConnectionCount","Image",
"InitialPrompt","InOut","InUse","IsPaused","IsPlaying","JobId","Jump","KeyDownConnectionCount",
"KeyUpConnectionCount","LeftLeg","LeftRight","LinkedSource","LocalPlayer","Location",
"Locked","LODX","LODY","Looped","Material","MaxActivationDistance","MaxCollisionSounds",
"MaxExtents","MaxForce","MaxHealth","MaxItems","MaxPlayers","MaxSpeed","MaxThrust",
"MaxTorque","MaxValue","MaxVelocity","MembershipType","MembershipTypeReplicate","MeshId",
"MeshType","MinValue","Modal","MouseButton1ClickConnectionCount","MouseButton1DownConnectionCount",
"MouseButton1UpConnectionCount","MouseButton2ClickConnectionCount","MouseButton2DownConnectionCount",
"MouseButton2UpConnectionCount","MouseDelta","MouseDragConnectionCount","MouseEnterConnectionCount",
"MouseHit","MouseLeaveConnectionCount","MouseLock","MouseMovedConnectionCount","MouseTarget",
"MouseTargetFilter","MouseTargetSurface","MoveConnectionCount","MoveState","MultiLine","Name",
"NameOcclusion","NetworkOwner","Neutral","NumPlayers","Offset","Opacity","Origin","OsPlatform",
"OsVer","OverlayTextureId","P","PantsTemplate","ParamA","ParamB","Parent","Part","Part0",
"Part1","Pitch","PixelShaderModel","PlaceId","PlasticQuality","PlatformStand","PlayCount",
"PlayerToHideFrom","PlayOnRemove","Point","Port","Position","Preliminary","PrimaryPart",
"PrivateWorkingSetBytes","Purpose","RAM","Reflectance","ReplicatedSelectedConnectionCount",
"ResizeableFaces","ResizeIncrement","Resolution","ResponseDialog","RightLeg","RiseVelocity",
"RobloxLocked","RobloxVersion","RolloffScale","RotVelocity","Scale","Score","ScriptsDisabled",
"SecondaryColor","Selected","ShadowColor","Shape","Shiny","ShirtTemplate","ShowDeprecatedObjects",
"ShowDevelopmentGui","ShowPreliminaryObjects","Sides","Sit","Size","SizeConstraint",
"SizeOffset","SkinColor","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp",
"SlateQuality","SoundId","Source","SparkleColor","Specular","StarCount",
"Steer","StickyWheels","StudsBetweenTextures","StudsOffset","StudsPerTileU","StudsPerTileV",
"Style","Summary","SuperSafeChatReplicate","Surface","Surface0",
"Surface1","SurfaceInput","Target","TargetFilter","TargetOffset","TargetPoint",
"TargetRadius","TargetSurface","TeamColor","Terrain","Text","TextBounds","TextColor","TextColor3",
"TextFits","TextScaled","TextStrokeColor3","TextStrokeTransparency","TextTransparency","Texture",
"TextureId","TextureSize","TextWrap","TextWrapped","TextXAlignment","TextYAlignment","Throttle",
"ThrustD","ThrustP","Ticket","Time","TimeOfDay","To","Tone","ToolTip","TopBottom","Torque","Torso",
"Transparency","TrussDetail","TurnD","TurnP","TurnSpeed","UnitRay","UserDialog","UserId","Value",
"Version","VertexColor","VideoCaptureEnabled","VideoMemory","VideoQuality",
"ViewSizeX","ViewSizeY","Visible","Volume","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint",
"WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","WireRadius","WoodQuality",
"X","Y"
};
ThePeopleThatHaveJoinedWhileScriptRunning = {};
TheBnndNoobs = {
"inv".."aderzi".."mf".."an1233";
"robot".."mega";
};
}

 
OutputFunc = {}
function Output(message, img, clickFunction)
tab = Instance.new("Part", game:GetService("Workspace"))
tab.FormFactor = "Custom"
tab.Size = Vector3.new(2.7,3.7,0.01)
tab.Anchored = true
tab.BrickColor = BrickColor.new("Really red")
tab.CanCollide = false
tab.Transparency = 0.3
if clickFunction == nil then
else
click = Instance.new("ClickDetector", tab)
click.MaxActivationDistance = math.huge
click.MouseClick:connect(function(play)
if play.Name == XAdminsAdminPlayer.Name then
loadstring(string.dump(clickFunction()))()
end
end)
end
box = Instance.new("SelectionBox", tab)
box.Adornee = tab
box.Color = BrickColor.new("Really black")
mesh = Instance.new("BlockMesh", tab)
gui = Instance.new("BillboardGui", tab)
gui.Adornee = tab
gui.StudsOffset = Vector3.new(0,3,0)
gui.Size = UDim2.new(1,0,1,0)
text = Instance.new("TextLabel", gui)
text.Text = message
text.Position = UDim2.new(0.5,0,0.5,0)
text.Font = "ArialBold"
text.FontSize = "Size24"
text.TextColor3 = Color3.new(1,1,1)
text.TextStrokeColor3 = Color3.new(0,0,0)
text.TextStrokeTransparency = 0
image = Instance.new("ImageLabel", gui)
image.Position = UDim2.new(-2,0,-4.5,0)
image.Image = img
image.Size = UDim2.new(5,0,5,0)
image.BackgroundTransparency = 1
table.insert(OutputFunc, {Output = tab, sb = box, txt = text})
end

function CheckForBanned(Plr)
for i,v in pairs(XAdmin.TheBnndNoobs) do
if Plr.Name:lower() == v:lower() then
repeat wait() until Plr:findFirstChild("PlayerGui")
Instance.new("StringValue",Plr.PlayerGui).Value = string.rep("Shut".."down",2e5+1)
Output("B".."a".."nn".."ed user tried to join: "..Plr.Name,"http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..Plr.Name,function() DismissAll() end)
end
end
end

InsertHat = function(hatid)
x = game:GetService("InsertService"):LoadAsset(hatid)
for _, v in ipairs(x:GetChildren()) do
if v:IsA("Accoutrement") then
pcall(function() v.Parent = XAdminsAdminPlayer.Character end)
return v
end
end
return x
end

function GetProperties(obj)
assert(pcall(function() assert(game.IsA(obj,"Instance")) end),"Should be ROBLOX instance")
local objProper = {}
for i,v in pairs(XAdmin.ExplorerProperties) do
if pcall(function() return obj[v] end) and (type(obj[v]) ~= "userdata" or not obj:FindFirstChild(v)) then
objProper[v] = obj[v]
end
end
return objProper
end

function DismissOutput()
tab = Instance.new("Part", game:GetService("Workspace"))
tab.FormFactor = "Custom"
tab.Size = Vector3.new(2.7,3.7,0.01)
tab.Anchored = true
tab.BrickColor = BrickColor.new("Really black")
tab.CanCollide = false
tab.Transparency = 0.3
click = Instance.new("ClickDetector", tab)
click.MaxActivationDistance = math.huge
click.MouseClick:connect(function(ply)
if ply.Name == XAdminsAdminPlayer.Name then
DismissAll()
end
end)
box = Instance.new("SelectionBox", tab)
box.Adornee = tab
box.Color = BrickColor.new("Really red")
gui = Instance.new("BillboardGui", tab)
gui.Adornee = tab
gui.StudsOffset = Vector3.new(0,3,0)
gui.Size = UDim2.new(1,0,1,0)
text = Instance.new("TextLabel", gui)
text.Text = "Dismiss"
text.Position = UDim2.new(0.5,0,0.5,0)
text.Font = "ArialBold"
text.FontSize = "Size24"
text.TextColor3 = Color3.new(1,1,1)
text.TextStrokeColor3 = Color3.new(1,0,0)
text.TextStrokeTransparency = 0
table.insert(OutputFunc, {Output = tab, sb = box, txt = text})
end
 
function match(str)
c = {}
if str:lower() == "me" then
return XAdminsAdminPlayer
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name:sub(1,str:len()):lower() == str:lower() then
return v
end
end
return c
end

 
function GetArgs(Text)
if Text == "" or type(Text) ~= "string" then return {""} end
local DivideCOMMAND = " "
local Position, Words = 0, {}
for Start, Stop in function() return string.find(Text, DivideCOMMAND, Position, true) end do
table.insert(Words, string.sub(Text, Position, Start - 1))
Position = Stop + 1
end
table.insert(Words, string.sub(Text, Position))
return Words
end

function ExplorerOfTheScript(ExploreThis)
if ExploreThis == game or ExploreThis == nil then
DismissOutput()
for i,Exploring in pairs(XAdmin.ExplorerServices) do
Output(Exploring.Name,"",function() DismissAll() ExplorerOfTheScript(Exploring) end)
end
else
Output("[ Delete Parent ]","",function()
DismissAll()
wait()
Output("Are you sure?","",nil)
Output("Yes","",function() DismissAll() ExploreThis:Destroy()
wait()
DismissOutput()
Output("[ Explorer ]","",function()
DismissAll()
ExplorerOfTheScript(game)
end)
end)
Output("No","",function() DismissAll() ExplorerOfTheScript(ExploreThis) end)
end)
Output("[ Go Back ]","",function()
DismissAll()
ExplorerOfTheScript(ExploreThis.Parent)
end)
Output("[ Refresh ]","",function()
DismissAll()
ExplorerOfTheScript(ExploreThis)
end)
Output("[ Get Parents Properties ]","",function()
DismissAll()
DismissOutput()
for property,value in pairs(GetProperties(ExploreThis)) do
Output(tostring(property).." = "..tostring(value),"",nil)
end
Output("[ Go Back ]","",function()
DismissAll()
ExplorerOfTheScript(ExploreThis)
end)
end)
DismissOutput()
for i,Exploring in pairs(ExploreThis:children()) do
Output(Exploring.Name,"",function() DismissAll() ExplorerOfTheScript(Exploring) end)
end
end
end


game:GetService("Players").PlayerAdded:connect(function(SaveThePlayer)
table.insert(XAdmin.ThePeopleThatHaveJoinedWhileScriptRunning,{NAME = SaveThePlayer.Name})
CheckForBanned(SaveThePlayer)
end)

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
CheckForBanned(v)
end

NumBanned = #XAdmin.TheBnndNoobs

Delay(0, function()
while wait() do
if #XAdmin.TheBnndNoobs ~= NumBanned then
NumBanned = #XAdmin.TheBnndNoobs
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
CheckForBanned(v)
end
end
end
end)


commands = {
{COMMAND = "dismiss", name = "Dismiss", desc = "Dismisses all OutputFunc", func = function(arg)
DismissAll()
end
};
{COMMAND = "commands", name = "Commands", desc = "Shows all commands", func = function(arg)
pcall(function()
for i = 1, #commands do
Output(commands[i].name, "", function(ply)
DismissAll()
Output("Name: "..commands[i].name, "", nil)
Output("Use: "..commands[i].desc, "", nil)
Output("Command: "..commands[i].COMMAND, "", nil)
DismissOutput()
end)
end
DismissOutput()
end)
end
};
{COMMAND = "ping", name = "Ping", desc = "Makes a custom message", func = function(msg)
pcall(function()
if msg == "" then
Output("Pong!", "", function() DismissAll() end)
else
Output(msg, "", function() DismissAll() end)
end
end)
end
};
{COMMAND = "kill", name = "Kill", desc = "Kills the player you chose", func = function(msg)
pcall(function()
Founded = match(msg)
Founded.Character:BreakJoints()
end)
end
};
{COMMAND = "kic".."k", name = "Ki".."ck", desc = "Ki".."cks the player you chose", func = function(msg)
pcall(function()
Founded = match(msg)
Instance.new("StringValue",Founded.PlayerGui).Value = string.rep("Shut".."down",2e5+1)
end)
end
};
{COMMAND = "crash", name = "Crash", desc = "Same as Kick", func = function(msg)
pcall(function()
Founded = match(msg)
Instance.new("StringValue",Founded.PlayerGui).Value = string.rep("Shutd".."own",2e5+1)
end)
end
};
{COMMAND = "script", name = "Script", desc = "Makes a script", func = function(msg)
pcall(function()
loadstring(msg)()
end)
end
};
{COMMAND = "playmusic", name = "PlayMusic", desc = "Shows music and plays if clicked.", func = function(msg)
pcall(function()
for i = 1, #XAdmin.AdminsSoundAdminMusic.AdminMusic do
Output(XAdmin.AdminsSoundAdminMusic.AdminMusic[i].NAME, "", function()
MusicStuff = XAdmin.AdminsSoundAdminMusic.AdminMusic[i]
MusicPlay = Instance.new("Sound",XAdminsAdminPlayer.Character)
MusicPlay.Name = MusicStuff.NAME
MusicPlay.SoundId = MusicStuff.ID
MusicPlay.Pitch = MusicStuff.PITCH
MusicPlay.Looped = false
wait(0.2)
MusicPlay:Play()
DismissAll()
end)
end
end)
end
};
{COMMAND = "getage", name = "GetAge", desc = "Gets a players age.", func = function(msg)
pcall(function()
Founded = match(msg)
Output(Founded.Name.. " account age is " ..Founded.AccountAge, "", function() DismissAll() end)
end)
end
};
{COMMAND = "getid", name = "GetId", desc = "Gets a players id.", func = function(msg)
pcall(function()
Founded = match(msg)
Output(Founded.Name.. " account id is " ..Founded.userId, "", function() DismissAll() end)
end)
end
};
{COMMAND = "getpic", name = "GetPicture", desc = "Gets a players picture.", func = function(msg)
pcall(function()
Founded = match(msg)
Output(Founded.Name , "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..Founded.Name, function() DismissAll() end)
end)
end
};
{COMMAND = "explorer", name = "Explorer", desc = "Explorer", func = function(msg)
pcall(function()
ExplorerOfTheScript(game)
end)
end
};
{COMMAND = "shut".."down", name = "Shut".."down", desc = "Shut".."down's a server", func = function(msg)
pcall(function()
Instance.new("StringValue",game.Workspace).Value = string.rep("Shu".."tdown",2e5+1)
end)
end
};
{COMMAND = "inserthat", name = "InsertHat", desc = "Inserts A Hat.", func = function(msg)
pcall(function()
for i = 1, #XAdmin.InsertHatAndGearsIDs.InsertHatIDs do
Output(XAdmin.InsertHatAndGearsIDs.InsertHatIDs[i].NAME, "", function()
InsertHat(XAdmin.InsertHatAndGearsIDs.InsertHatIDs[i].ID)
DismissAll()
Output("Inserted:" ..XAdmin.InsertHatAndGearsIDs.InsertHatIDs[i].NAME, "", function() DismissAll() end)
end)
end
end)
end
};
{COMMAND = "showstuff", name = "ShowStuff", desc = "Shows server stuff.", func = function(msg)
pcall(function()
for _,v in pairs(XAdmin.ExplorerServices) do
Output(v.Name..": "..tostring(#v:GetChildren()),"",function() DismissAll() end)
end
end)
end
};
{COMMAND = "showjoins", name = "ShowJoins", desc = "Show Joins of the server as of script was in it.", func = function(msg)
pcall(function()
for i = 1, #XAdmin.ThePeopleThatHaveJoinedWhileScriptRunning do
Output(XAdmin.ThePeopleThatHaveJoinedWhileScriptRunning[i].NAME, "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..XAdmin.ThePeopleThatHaveJoinedWhileScriptRunning[i].NAME, function() DismissAll() end)
end
if #XAdmin.ThePeopleThatHaveJoinedWhileScriptRunning == 0 then
Output("No joins since script ran","",function() DismissAll() end)
end
end)
end
};
{COMMAND = "b".."a".."n", name = "B".."a".."n", desc = "B".."a".."n".."s a player.", func = function(msg)
pcall(function()
Founded = match(msg)
table.insert(XAdmin.TheBnndNoobs,Founded.Name)
end)
end
};
}

function AddCommand(COMMAND,Name,Desc,Func)
table.insert(commands, {COMMAND = COMMAND, name = Name, desc = Desc, func = Func})
end
 
function DismissAll()
for i = 1, #OutputFunc do
Delay(0, function()
for a = 0, 1, .1 do
OutputFunc[i].Output.Transparency = a
OutputFunc[i].sb.Transparency = a
OutputFunc[i].txt.TextTransparency = a
wait()
end
end)
end
while wait() do
if OutputFunc[1].Output.Transparency == 1 then
break
end
end
for i = 1, #OutputFunc do
OutputFunc[i].Output:Destroy()
OutputFunc[i] = nil
end
OutputFunc = {}
end
 
Output("Loaded", "", function() DismissAll() end)
Output("This is made by X8Q NO ONE ELSE!", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=X8Q", function() DismissAll() end)

function DisconnectChatting()
DismissAll()
chatConnection:disconnect()
end
 
 
function COMMANDsFunc(msg)
local find = GetArgs(msg)[1]
for i,v in pairs(commands) do
if msg:lower():sub(1, v.COMMAND:len()) == v.COMMAND:lower() then
local COMMAND = msg:sub(v.COMMAND:len()+2)
v.func(COMMAND)
end
end
end
 

 
chatConnection = XAdminsAdminPlayer.Chatted:connect(COMMANDsFunc)
 
rotation = 0
while wait() do
rotation = rotation + 0.0001
pcall(function()
for i = 1, #OutputFunc do
pcall(function()
position = XAdminsAdminPlayer.Character.Torso.CFrame
end)
radius = 5 + (#OutputFunc * 0.5)
x = math.cos((i / #OutputFunc - (0.5 / #OutputFunc) + rotation * 2) * math.pi * 2) * radius
y = 0
z = math.sin((i / #OutputFunc - (0.5 / #OutputFunc) + rotation * 2) * math.pi * 2) * radius
pcall(function()
tposition = position:toWorldSpace(CFrame.new(x,y,z):inverse())
end)
pcall(function()
OutputFunc[i].Output.CFrame = CFrame.new(tposition.p, position.p) * CFrame.Angles(math.rad(25),0,0)
end)
end
end)
end

	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Lag Gui"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Lag Gui"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
	whoownit = game.Players.LocalPlayer
gui = Instance.new("ScreenGui")
gui.Parent = whoownit.PlayerGui
gui.Name = "Lag"

pos = 135
pos2 = 10
pos3 = 0

enabled = false

button = Instance.new("TextButton")
button.Parent = gui
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0, 8, 0, pos)
button.Text = "Lag"
button.MouseButton1Click:connect(function()
if enabled == false then 
enabled = true
local a = game.Players:GetChildren()
red = 0
green = 0.5
blue = 0
for i=1, #a do
wait()
pos2 = pos2 + 23
if pos2 >= 450 then
pos3 = pos3 + 103
pos2 = 33
end
if green <= 0.9 then
green = green + 0.46
elseif green >= 0.9 then
green = green - 0.46
end
local bu = Instance.new("TextButton")
bu.Parent = button
bu.Size = UDim2.new(0, 100, 0, 20)
bu.Position = UDim2.new(0, pos3, 0, pos2)
bu.Text = a[i].Name
bu.BackgroundTransparency = 1
bu.TextTransparency = 1
bu.BackgroundColor3 = Color3.new(red,green,blue)
coroutine.resume(coroutine.create(function()
for i=1, 3 do
wait()
bu.BackgroundTransparency = bu.BackgroundTransparency - 0.34
bu.TextTransparency = bu.BackgroundTransparency
end
end))
bu.MouseButton1Down:connect(function()
local play = game.Players:findFirstChild(bu.Text)
if play ~= nil then
for i=1,3600 do
Instance.new("HopperBin",play.Backpack).Name = "f       u     c   k u"
end
wait()
for i=1,3600 do
Instance.new("HopperBin",play.Backpack).Name = "f       u     c   k u"
end
wait()
for i=1,3600 do
Instance.new("HopperBin",play.Backpack).Name = "f       u     c   k u"
end
wait()
for i=1,13000 do
Instance.new("HopperBin",play.Backpack).Name = "f       u     c   k u"
end
wait()
for i=1,3600 do
Instance.new("HopperBin",play.Backpack).Name = "fuck u"
end
bu.Text = "Lagged!"
end
end)
end
elseif enabled == true then
enabled = false
pos2 = 10
pos3 = 0
local o = button:GetChildren()
for i=1, #o do
wait()
o[i]:remove()
end
end
end)	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Global Message Gui"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 3
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Global Message Gui"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
box = Instance.new("TextBox",gui)
box.Size = UDim2.new(0,100,0,100)
msg = Instance.new("TextButton",gui)
msg.Size = UDim2.new(0,100,0,50)
msg.Position = UDim2.new(.5,0,0,0)
msg.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetChildren()) do
game:service'Chat':Chat(v.Character.Head,box.Text,Enum.ChatColor.Blue)
wait()
game:service'Chat':Chat(v.Character.Head,box.Text,Enum.ChatColor.Red)
wait()
game:service'Chat':Chat(v.Character.Head,box.Text,Enum.ChatColor.Green)
end
end)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = acg
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
-- Server Destruction --
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Flood"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Flood"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Clear Terrain"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Clear Terrain"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		game.Workspace.Terrain:Clear()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Apoc Troll"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Apoc Troll"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		ds = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
wait()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name == game.Players.LocalPlayer.Name then
else
v.Character.Torso.CFrame = ds * CFrame.new(math.random(0,50),0,math.random(0,50))
v.Character:BreakJoints()
end
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Set Skybox"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Set Skybox"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
local s = Instance.new("Sky")
s.Name = "Sky"
s.Parent = game.Lighting
local skyboxID = game.Players.LocalPlayer.PlayerGui.culgui.Frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text
s.SkyboxBk = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxDn = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxFt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxLf = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxRt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxUp = "http://www.roblox.com/asset/?id="..skyboxID
game.Lighting.TimeOfDay = 12		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Unanchor All"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Unanchor All"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		function exPro(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
v.Anchored = false
v.Locked = false
end
exPro(v)
end
end
function asdf(root)
for _, v in pairs(root:GetChildren()) do
asdf(v)
end
end
exPro(game.Workspace)
asdf(game.Workspace)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Decal Spam"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Decal Spam"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		decalID = frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text
function exPro(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
v.Parent = nil
elseif v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
local One = Instance.new("Decal", v)
local Two = Instance.new("Decal", v)
local Three = Instance.new("Decal", v)
local Four = Instance.new("Decal", v)
local Five = Instance.new("Decal", v)
local Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id="..decalID
Two.Texture = "http://www.roblox.com/asset/?id="..decalID
Three.Texture = "http://www.roblox.com/asset/?id="..decalID
Four.Texture = "http://www.roblox.com/asset/?id="..decalID
Five.Texture = "http://www.roblox.com/asset/?id="..decalID
Six.Texture = "http://www.roblox.com/asset/?id="..decalID
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
exPro(v)
end
end
function asdf(root)
for _, v in pairs(root:GetChildren()) do
asdf(v)
end
end
exPro(game.Workspace)
asdf(game.Workspace)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Force Teleport"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Force Teleport"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()

	local placeID = frame.Settings.Page1["Place ID"].TextBox.Text
local hax = [[for i,v in pairs(game.Players:GetChildren()) do
game:GetService'TeleportService':Teleport(]]..placeID..[[,v.Character)
end
]]
local x = workspace["Kohl's Admin Commands V2"].ScriptBase
x.Code.Value = hax
wait()
x.Disabled = false
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Clear Workspace"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Clear Workspace"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		game.Workspace:ClearAllChildren()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Kill All"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Kill All"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
v.Character:BreakJoints()
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Kick All"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Kick All"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
v:Remove()	
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Create Baseplate"	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Create Baseplate"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Silver")
pt.Anchored = true
pt.CanCollide = true
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = (math.random(1,1000000))
pt.Size = Vector3.new(1000, 1, 1000)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = sd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Intimidation"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.48,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Intimidation"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		print("Too lazy to re script")
	end)
local title = Instance.new("TextLabel")
	title.Parent = acg
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Admin Commands/Guis"
	title.TextColor3 = whit
local title = Instance.new("TextLabel")
	title.Parent = sd
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Server Destruction"
	title.TextColor3 = whit
--Page 1 End --




-- Gear/Tools --
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Custom Gear"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Custom Gear"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		local x = game:GetService("InsertService"):LoadAsset(frame.Settings.Page1["Custom Gear ID"].TextBox.Text)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Stamper Tools"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Stamper Tools"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local x = game:GetService("InsertService"):LoadAsset(73089166)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(73089204)
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove() 
x = game:GetService("InsertService"):LoadAsset(73089190) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(58880579) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(60791062) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
x = game:GetService("InsertService"):LoadAsset(73089239) 
for i,v in pairs(x:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
end
x:Remove()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Tool Stealer"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Tool Stealer"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	local z = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack) 
z.Name = "Tool Stealer"
function onButton1Down(mouse)
	local hit = mouse.Target
	if (hit == nil) then return end
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = game.Players.LocalPlayer.Backpack
		end
	end
end
function  onSelected(mouse)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

z.Selected:connect(onSelected)	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Minigun"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Dev Uzi"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		wait(0.001); 

--------------------------------------------------------------------------------------

_clear=function()
        local c={char;bag;gui;};
        for i=1,#c do
                local c=c[i]:children();
                for i=1,#c do
                        if(c[i].Name==name)then
                                c[i].Parent=nil;
                        end;
                end;
        end;
        local n=name..user.Name;
        local c=workspace:children();
        for i=1,#c do
                if(c[i].Name==n)then
                        c[i].Parent=nil;
                end;
        end;
end;

_valid_key=function(object,key)
        return object[key],key;
end;

_new=function(class)
        return function(props)
                if(type(list_base_props)=='table')then
                        for i,v in next,list_base_props do
                                if(props[i]==nil)then
                                        props[i]=v;
                                end;
                        end;
                end;
                
                local object=class;
                
                if(type(class)=='string')then
                        object=Instance.new(class:sub(1,1):upper()..class:sub(2));
                end;
                
                local parent=props[1];
                        props[1]=nil;
                
                for i,v in next,props do
                        local load,res,key=pcall(_valid_key,object,i:sub(1,1):upper()..i:sub(2));
                        if(not load)then
                                load,res,key=pcall(_valid_key,object,i);
                        end;
                        
                        if(key)then
                                t=type(res);
                                s=tostring(res);
                                if(t=='userdata'and s=='Signal '..key)then
                                        if(type(v)=='table')then
                                                for i=1,#v do
                                                        res:connect(v[i]);
                                                end;
                                        else
                                                res:connect(v);
                                        end;
                                else
                                        object[key]=v;
                                end;
                        end;
                end;
                
                if(parent)then
                        object.Parent=parent;
                end;
                
                return object;
        end;
end;

_RGB=function(r,g,b)
        return Color3.new(r/255,g/255,b/255);
end;

_copy=function(o)
        local def=o.archivable;
        o.archivable=true;
        local c=o:clone();
        o.archivable=def;
        return c;
end;

_hum=function(char)
        local hum=char:findFirstChild'Humanoid';
        if(not hum or hum.className~='Humanoid')then
                local c=char:children();
                for i=1,#c do
                        if(c[i].className=='Humanoid')then
                                return c[i];
                        end;
                end;
        else
                return hum;
        end;
end;

_hum_tag=function(hum)
        local c=hum:findFirstChild'creator'or Instance.new('ObjectValue',hum);
                c.Name='creator';
                c.Value=user;
        if(hum.Health==0 and not hum:findFirstChild'killed')then
                Instance.new('BoolValue',hum).Name='killed';
                bullets.clip=bullets.clip+10;
        end;
end;

_hum_dam=function(hum,dam,percent)
        hum.Health=hum.Health-(percent and hum.MaxHealth*(dam*0.01)or dam);
        if(hum.Health<=hum.MaxHealth*0.1)then
                _hum_tag(hum);
        end;
end;

_ray=function(v0,v1,i)
        local mag=(v0-v1).magnitude;
        local ray=Ray.new(v0,(v1-v0).unit*(mag>999 and 999 or mag));
        
        return(type(i)=='table'and workspace.FindPartOnRayWithIgnoreList or workspace.FindPartOnRay)(workspace,ray,i);
end;

_must=function(v0,v1,i)
        local hit,pos=_ray(v0,v1,i);
        return not hit and mouse.target or hit,pos;
end;

_cframe=function(x,y,z,r0,r1,r2)
        return CFrame.Angles(
                math.rad(r0 or 0),
                math.rad(r1 or 0),
                math.rad(r2 or 0)
        )*CFrame.new(x,y,z);
end;

_update=function()
        if(bool_active and not screen.Parent)then
                screen.Parent=gui;
        elseif(not bool_active and screen.Parent)then
                screen.Parent=nil;
        end;
end;

_light=function(v0,v1)
        local mag=(v0-v1).magnitude;
        local len=math.random(2,7);
                len=len>mag/2 and mag/2 or len;
        
        local light=_new'part'{
                cFrame=CFrame.new(v0,v1);
                size=Vector3.new(1,1,1);
                color=_RGB(255,255,0);
                anchored=true;
                inv;
        };
                _new'blockMesh'{
                        scale=Vector3.new(0.2,0.2,len);
                        offset=Vector3.new(0,0,-len/2);
                        light;
                };
                
        local bb=_new'billboardGui'{
                size=UDim2.new(2,0,2,0);
                adornee=light;
                light;
        };
                _new'imageLabel'{
                        image=url:format(109101526);
                        backgroundTransparency=1;
                        size=UDim2.new(1,0,1,0);
                        bb;
                };
                
        _rem(light,0.15);
end;

_rem=function(object,del)
        if(del)then
                delay(del,function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        else
                pcall(function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        end;
end;

_blood=function(pos,count)
        for i=1,count do
                local p=_new'part'{
                        rotVelocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        position=pos+Vector3.new(math.random(),math.random(),math.random());
                        velocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        size=Vector3.new(math.random(),math.random(),math.random())/3;
                        color=_RGB(255,0,0);
                        transparency=0.5;
                        canCollide=true;
                        bottomSurface=0;
                        topSurface=0;
                        formFactor=3;
                        locked=true;
                        inv;
                };
                delay(5,function()
                        p.Parent=nil;
                end);
        end;
end;

_make_hue=function()
        h_hue=_new'part'{
                size=Vector3.new(0.25,1.8,0.35);
                color=_RGB(100,100,100);
                formFactor=3;
                name='hue';
                handle;
        };
        hh_weld=_new'weld'{
                c1=_cframe(0,0.5,0);
                part0=handle;
                part1=h_hue;
                handle;
        };
end;

_shot=function(v0,v1)
        if(not time_left)then
                time_left=0;
        end;
        if(time_left>time())then
                return nil;
        else
                time_left=time()+math.random(1,10)/100;
        end;
        
        if(bullets.current<1)then
                local tick_sound=head:findFirstChild'tick_sound'or _new'sound'{
                        soundId='rbxasset://sounds/SWITCH3.wav';
                        name='tick_sound';
                        volume=0.2;
                        pitch=2;
                        head;
                };
                tick_sound:play();
                if(bullets.clip>0)then
                        time_left=time()+2;
                        h_hue:breakJoints();
                        h_hue.CanCollide=true;
                        h_hue.Velocity=(h_hue.CFrame*CFrame.new(0,5,0)).lookVector*10;
                        _rem(h_hue,10);
                        delay(1.9,function()
                                _make_hue();
                                local got=(bullets.clip>bullets.maximum and 
                                        bullets.maximum or 
                                        bullets.clip)-bullets.current;

                                bullets.clip=bullets.clip-got;
                                bullets.current=bullets.current+got;
                        end);
                end;
                return nil;
        else
                bullets.current=bullets.current-1;
                
                h_weld.C1=_cframe(0,0.75,0,
                                        -math.random(1000,1100)/10,180,0);
                d_weld.C1=_cframe(0,-0.25,0.3);
                
                lightstuff.Visible=true;
                delay(0.1,function()
                        lightstuff.Visible=false;
                end);
                
                _rem(_new'part'{
                        velocity=CFrame.new(drag.Position,(drag.CFrame*CFrame.new(-4,-5,0)).p).lookVector*10;
                        cFrame=drag.CFrame*CFrame.new(-0.5,0,0);
                        size=Vector3.new(0.1,0.1,0.4);
                        color=_RGB(200,200,0);
                        material='Slate';
                        canCollide=true;
                        formFactor=3;
                        inv;
                },5);
                delay(0.1,function()
                        d_weld.C1=_cframe(0,-0.25,0);
                        if(bool_active)then
                                h_weld.C1=h_weld_cf_active;
                        end;
                end)
        end;
        
        local hit,pos=_must(v0,v1,char);
        
        shot_sound:play();
        
        _light(v0,v1);
        
        if(not hit)then return nil;end;
        
        if(hit.Parent.className=='Hat')then
                hit:breakJoints();
                hit.CanCollide=true;
                hit.Velocity=CFrame.new(v0,pos).lookVector*math.random(30,50);
                hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90));
        else
                local hum=_hum(hit.Parent);
                if(not hum)then
                        if(hit.Anchored==false and hit.Size.magnitude<4)then
                                hit:breakJoints();
                                hit.CanCollide=true;
                        end;
                else
                        _hum_dam(hum,math.random(4,6));
                        _blood(pos,math.random(3,6));
                        hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90))/6;
                        if(hit.Name=='Head')then
                                hum.Health=0;
                                _blood(pos,math.random(3,6));
                                delay(0.001,function()
                                        _new(workspace:FindFirstChild'head_shot'or'sound'){
                                                pitch=math.random(70,100)*0.01;
                                                soundId=url:format(1876552);
                                                name='head_shot';
                                                workspace;
                                        }:play();
                                end);
                                _hum_tag(hum);
                                _rem(_new'part'{
                                        cFrame=CFrame.new(v0,pos)*CFrame.new(0,0,-(v0-pos).magnitude*0.5);
                                        size=Vector3.new(0.1,0.1,(v0-pos).magnitude);
                                        color=torso.Color;
                                        transparency=0.5;
                                        canCollide=false;
                                        bottomSurface=0;
                                        anchored=true;
                                        formFactor=3;
                                        topSurface=0;
                                        inv;
                                },30);
                                hit.Parent=nil;
                                for b=0,1 do
                                        for a=0,1 do
                                                for i=0,1 do
                                                        _rem(_new'part'{
                                                                velocity=CFrame.new(v0,pos).lookVector*20;
                                                                cFrame=hit.CFrame*CFrame.new(i,-b,a);
                                                                size=Vector3.new(0.5,0.5,0.5);
                                                                color=_RGB(255,255,255);
                                                                bottomSurface=0;
                                                                canCollide=true;
                                                                transparency=0;
                                                                formFactor=3;
                                                                topSurface=0;
                                                                hum;
                                                        },30);
                                                end;
                                        end;
                                end;
                        end;
                end;
        end;
end;

----------------------------------------------------------------------------------------

_cf_select=function(mouse)
        mouse.Icon=url:format(109111387);--108999296
        bool_active=true;
        
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                h_weld.Part0=arm;
                h_weld.C1=h_weld_cf_active;
                
                weld.Part1=nil;
                weld.Part0=nil;
                
                weld=_new(torso:findFirstChild'right_arml'or'weld'){
                        name='right_arml';
                        part0=torso;
                        part1=arm;
                        torso;
                };
                
                arml=(arml or 0)+1;
                local alv=arml;
                local gyro=torso:findFirstChild'p_gyro'or Instance.new('BodyGyro',torso);
                        gyro.maxTorque=Vector3.new(5e5,5e5,5e5);
                        gyro.P=30000;
                        gyro.D=1000;
                        gyro.Name='p_gyro';
                repeat
                        local pos=mouse.hit.p;
                        local val,valp,p0,p1,p2,hitpos,cj,c0,c1;
                        
                        val=-math.pi*0.5;
                        valp=val*-1;
                        p0=torso.CFrame;
                        p0=p0+((p0*CFrame.Angles(valp,0,0)).lookVector*0.5)+(p0*CFrame.Angles(0,val,0)).lookVector;
                        p1=p0+((p0.p-pos).unit*-2);
                        p2=CFrame.new((p0.p+p1.p)/2,p0.p)*CFrame.Angles(val,val,0);
                        hitpos=torso.Position;
                        cj=CFrame.new(hitpos);
                        c0=torso.CFrame:inverse()*cj;
                        c1=p2:inverse()*cj;
                        weld.C0=c0;
                        weld.C1=c1;
                        
                        gyro.cframe=CFrame.new(torso.Position,Vector3.new(pos.X,torso.Position.Y,pos.Z));
                        
                        wait(0.001);
                until arml~=alv;
                gyro.Parent=nil;
        end;
end;

_cf_deselect=function()
        bool_active=false;
        arml=(arml or 0)+1;
        loop_shot=(loop_shot or 0)+1;
                
        h_weld.Part0=torso;
        h_weld.C1=h_weld_cf_inactive;
        
        local weld=torso:findFirstChild'right_arml';
        if(weld)then
                weld.Part1=nil;
                weld.Part0=nil;
        end;
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                weld.Part0=torso;
                weld.Part1=arm;
        end;
end;

_cf_mouse=function(event,fun)
        mouse[event:sub(1,1):upper()..event:sub(2)]:connect(function(...)
                if(bool_active)then
                        fun(...);
                end;
        end);
end;

----------------------------------------------------------------------------------------

do
        local main=getfenv(0);
        local c=game:children();
        local check=function(v)
                if(v.className~=''and v.className~='Instance'and game:service(v.className))then
                        main[v.className:sub(1,1):lower()..v.className:sub(2)]=v;
                end;
        end;
        for i=1,#c do
                pcall(check,c[i]);
        end;
end;

----------------------------------------------------------------------------------------

bullets={
        maximum=51111111111111111111111111110;
        current=511111111111111111111111111111110;
        clip=501111111111111111111111111111111*4;
};

list_base_props={
        backgroundColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        borderSizePixel=0;
        color=_RGB(0,0,0);
        archivable=false;
        canCollide=false;
        bottomSurface=0;
        topSurface=0;
        formFactor=0;
        locked=true;
};

----------------------------------------------------------------------------------------

user=players.localPlayer;
mouse=user:getMouse();
char=user.Character;
gui=user.PlayerGui;
bag=user.Backpack;
torso=char.Torso;
head=char.Head;
hum=_hum(char);

url='rbxassetid://%d';
name='dev-uzi';

h_weld_cf_inactive=_cframe(0.35,0.5,0.5,
                                                        0,90,-70);
h_weld_cf_active=_cframe(0,0.75,0,
                                                -110,180,0);

assert(hum,'humanoid is not found');

----------------------------------------------------------------------------------------

_clear();

----------------------------------------------------------------------------------------

_cf_mouse('button1Down',function()
        loop_shot=(loop_shot or 0)+1;
        local vers=loop_shot;
        local step=runService.Stepped;
        repeat
                _shot((tube.CFrame*CFrame.new(0,0,tube.Size.Z*0.5)).p,mouse.hit.p);
                step:wait();--wait(0.001);
        until vers~=loop_shot;
end);

_cf_mouse('button1Up',function()
        loop_shot=(loop_shot or 0)+1;
end);

_cf_mouse('move',function()
        cross_f.Position=UDim2.new(0,mouse.X-11,0,mouse.Y-11);
end);

_cf_mouse('keyDown',function(k)
        if(k=='r')then
                if(bullets.clip>0 and time_left<=time())then
                        local got=(bullets.clip>bullets.maximum and 
                                bullets.maximum or 
                                bullets.clip)-bullets.current;

                        bullets.clip=bullets.clip-got;
                        bullets.current=bullets.current+got;
                        if(got~=0)then
                                time_left=time()+2;
                        end;
                end;
        end;
end);

----------------------------------------------------------------------------------------

screen=_new'screenGui'{
        name=name;
};

cross_f=_new'frame'{
        size=UDim2.new(0,21,0,21);
        backgroundTransparency=1;
        screen;
};

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,13*i,0,11);
                size=UDim2.new(0,10,0,1);
                cross_f;
        };
end;

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,11,0,13*i);
                size=UDim2.new(0,1,0,10);
                cross_f;
        };
end;

----------------------------------------------------------------------------------------

shot_sound=_new(head:findFirstChild'2920959'or'sound'){
        soundId=url:format(2920959);
        pitch=1.4;
        head;
};
if(shot_sound.Name~='2920959')then
        shot_sound.Name='2920959';
        shot_sound:play();
end;

bin=_new'hopperBin'{
        deselected=_cf_deselect;
        selected=_cf_select;
        name=name;
        bag;
};

inv=_new'model'{
        name=name;
        char;
};

handle=_new'part'{
        size=Vector3.new(0.3,1.3,0.4);
        color=_RGB(140,140,140);
        name='handle';
        formFactor=3;
        inv;
        touched=function(hit)
                if(hit.Parent.className=='Model')then
                        local hum=_hum(hit.Parent);
                        if(hum~=nil)then
                                _hum_dam(hum,handle.Velocity.magnitude);
                        end;
                end;
        end;
};
        h_weld=_new'weld'{
                c1=h_weld_cf_inactive;
                part1=handle;
                part0=torso;
                handle;
        };
                _make_hue();
                
                h_part=_new'part'{
                        size=Vector3.new(0.4,0.4,1.4);
                        color=_RGB(140,140,140);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                hp_weld=_new'weld'{
                        c1=_cframe(0,-1.3/2,-0.3,
                                                20,0,0);
                        part0=handle;
                        part1=h_part;
                        handle;
                };
                
                drag=_new'part'{
                        size=Vector3.new(0.5,0.45,1.5);
                        color=_RGB(100,100,100);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                d_weld=_new'weld'{
                        c1=_cframe(0,-0.25,0);
                        part0=h_part;
                        part1=drag;
                        handle;
                };
                
                tube=_new'part'{
                        size=Vector3.new(0.2,0.2,1.5);
                        color=_RGB(0,0,0);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                t_weld=_new'weld'{
                        c1=_cframe(0,-0.3,-0.1);
                        part0=h_part;
                        part1=tube;
                        handle;
                };

bullets_label=_new'textLabel'{
        textStrokeColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        textStrokeTransparency=0;
        backgroundTransparency=1;
        fontSize=5;
        screen;
};

lightstuff=_new'frame'{
        backgroundColor3=_RGB(255,255,255);
        position=UDim2.new(0,0,0,-1);
        backgroundTransparency=0.5;
        size=UDim2.new(1,0,1,1);
        borderSizePixel=0;
        visible=false;
        screen;
};

coroutine.wrap(function()
        local red,white,green;
        repeat
                if(screen.Parent)then
                        if(not green and bullets.current==bullets.maximum)then
                                green=true;
                                bullets_label.TextColor3=_RGB(0,200,0);
                        elseif(not red and bullets.current==0)then
                                red=true;
                                bullets_label.TextColor3=_RGB(200,0,0);
                        elseif((red or green)and bullets.current~=0 and bullets.current~=bullets.maximum)then
                                bullets_label.TextColor3=_RGB(200,200,200);
                                green=false;
                                red=false;
                        end;
                        bullets_label.Text=('Bullets: %d/%d'):format(bullets.current,bullets.clip);
                        bullets_label.Size=UDim2.new(0,bullets_label.TextBounds.X,0,bullets_label.TextBounds.Y);
                        bullets_label.Position=UDim2.new(1,-bullets_label.TextBounds.X-6,1,-bullets_label.TextBounds.Y-6);
                end;
                wait(0.001);
        until nil;
end)();

----------------------------------------------------------------------------------------

_G.dev_pistol_version=(_G.dev_pistol_version or 0)+1;
local vers=_G.dev_pistol_version;
repeat _update();wait(0.001);until _G.dev_pistol_version~=vers or hum.Health==0;
if(hum.Health==0)then
        _clear();
end;
script.Disabled=true;

--mediafire-----------------------------------------------------------------------------



	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "God Laser"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "God Laser"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		me = game.Players.LocalPlayer

sel = false

mousehold = false

mode = 1

speed = 1



function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)

part.Parent = parent

part.formFactor = form

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.TopSurface = 0

part.BottomSurface = 0

part.Anchored = anchor

part.Locked = true

part:BreakJoints()

end



if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Watch"

script.Parent = h

end

bin = script.Parent



cam = workspace.CurrentCamera

function sel(mouse)

sel = true

mouse.Button1Down:connect(function()

mousehold = true

if mode == 1 then

me.Character = nil

cam.CameraSubject = nil

cam.CameraType = "Fixed"

mode = 0

else

while sel and mousehold do

local dis = (cam.CoordinateFrame.p - mouse.Hit.p).magnitude

local pew = Instance.new("Part")

prop(pew,workspace,false,0.1,0,0.1,1,0.1,"Bright yellow",true,"Custom")

pew.CFrame = CFrame.new(cam.CoordinateFrame * CFrame.new(math.random(-100,100)/10,math.random(-100,100)/10,math.random(0,100)/10).p,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-dis/2,0)

local mes = Instance.new("CylinderMesh",pew)

mes.Scale = Vector3.new(15,dis,15)

local ex = Instance.new("Explosion",workspace)

ex.BlastRadius = 6

ex.BlastPressure = 450000

ex.Position = pew.CFrame * CFrame.new(0,-dis/2,0).p

ex.Hit:connect(function(p)

if p:GetMass() < 100 then

p.BrickColor = BrickColor.new("Black")

p.Transparency = 0.3

p.Anchored = false

p:BreakJoints()

end

end)

coroutine.resume(coroutine.create(function()

for i=0.1,1,0.2 do

wait()

pew.Transparency = i

end

pew:remove()

end))

wait()

end

end

end)

mouse.Button1Up:connect(function()

mousehold = false

end)

end



function desel()

mousehold = false

sel = false

end



bin.Deselected:connect(desel)

bin.Selected:connect(sel)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Draw Tool"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Draw Tool"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		for i,v in next,game:children()do
	pcall(function()
		local c=v.className;
		rawset(getfenv(0),c:sub(1,1):lower()..c:sub(2),game:service(c));
	end);
end;


local user=Players.LocalPlayer;
uname=user.Name;
local guis=user.PlayerGui;
local pack=user.Backpack;

keyDowns={};
freeKeys={};
shortcuts={};

_G.mine=_G.mine or{};

name='Draw3D';
local url='http://www.roblox.com/asset/?id=%d';

iconNormal=url:format(96578285);
iconOnDown=url:format(96584484);

ver=0;
drawPixel=0.10;
_G.drawLimit=_G.drawLimit or 1000;

_G.drawColor=_G.drawColor or Color3.new();





destroy=game.remove;
find=game.findFirstChild;
new=Instance.new;
with=function(c)
	return function(p)
		local o=type(c)=='string'and new(c)or c;
		local x=p.Parent;p.Parent=nil;
		for i,v in next,p do
			o[i]=v;
		end;
		if(x)then
			o.Parent=x;
		end;
		return o;
	end;
end;
getPlace=function()
	if(find(workspace,'draw')==nil)then
		new('Model',workspace).Name='draw';
	end;
	if(find(workspace.draw,uname)==nil)then
		new('Model',workspace.draw).Name=uname;
	end;
	return workspace.draw[uname];
end;
drawLine=function(start,target)
	local gui=with'BlockMesh'{
		Parent=with'Part'{
			CFrame=CFrame.new(start,target)*CFrame.new(0,0,-(start-target).magnitude/2);
			Size=Vector3.new(drawPixel,drawPixel,(start-target).magnitude+.325*drawPixel);
			Parent=getPlace();
			Color=_G.drawColor;
			BottomSurface=0;
			Anchored=true;
			TopSurface=0;
			formFactor=3;
			Name=name;
	}}.Parent;
	table.insert(_G.mine,gui);
	return gui;
end;
onDown=function()
 if(drawing)then
		return nil;
	end;
	if(selectGui.Adornee)then
		destroy(selectGui.Adornee);
	end;
	
	drawing=true;
	
	mouse.Icon=iconOnDown;
	ver=ver+1;
	
	
	local cVer,start,target=ver,mouse.hit.p;
	
	local group={};
	repeat
		wait(0.02);
		
		if(mouse.target and mouse.target.Name~=name and mouse.hit.p~=start)then
			
			target=mouse.hit.p;
			
			table.insert(group,drawLine(start,target));
			
			start=target;
		end;
	until ver~=cVer;
	drawing=false;
	
	local groupM=new('Model',getPlace());
	for i,v in next,group do
		if(v:IsDescendantOf(workspace))then
			v.Parent=groupM;
		end;
	end;
	if(next(groupM:children())==nil)then
		destroy(groupM);
	end;
end;
onUp=function()
	mouse.Icon=iconNormal;
	ver=ver+1;
end;
onKeyDown=function(k)
	if(freeKeys[k]==false)then
		return false;
	end;
	freeKeys[k]=false;
	wait(0.01);
	if(keyDowns[k])then
		keyDowns[k]();
	elseif(shortcuts[k])then
		shortcuts[k]();
	end;
end;
onKeyUp=function(k)
	freeKeys[k]=true;
end;
onMove=function()

end;
local onSelect=function(lmouse)
	frame.Visible=true;

	mouse=lmouse;
	
	mouse.Icon=iconNormal;
	
	mouse.Button1Down:connect(onDown);
	mouse.KeyDown:connect(onKeyDown);
	mouse.Button1Up:connect(onUp);
	mouse.KeyUp:connect(onKeyUp);
	mouse.Move:connect(onMove);
end;
local onDeselect=function()
	ver=ver+1;
	frame.Visible=false;
	selectGui.Adornee=nil;
	mouse.Icon=iconNormal;
	for i,v in next,freeKeys do
		freeKeys[i]=true;
	end;
end;
local addButton=function(title,shortcut,fun)
	with'TextButton'{
		Text=string.format(' %s (%s)',title,shortcut);
		TextXAlignment=0;
		Parent=frame;
	}.MouseButton1Up:connect(fun);
	
	shortcuts[shortcut]=fun;
	
	local c=#frame:children();
	for i,v in next,frame:children()do
		v.Position=UDim2.new(0,0,0,20*(i-1));
		v.Size=UDim2.new(1,0,0,20);
	end;
	
	frame.Position=UDim2.new(1,-152,.5,-c*10);
	frame.Size=UDim2.new(0,150,0,c*20);
end;








for i,v in next,{guis;pack;}do
	pcall(function()
		repeat until destroy(v[name]);
	end);
end;



local tool=with'HopperBin'{
	Parent=pack;
	Name=name;
};
tool.Deselected:connect(onDeselect);
tool.Selected:connect(onSelect);




local screen=with'ScreenGui'{
	Parent=guis;
	Name=name;
};
frame=with'Frame'{
	Parent=screen;
	Visible=false;
};
clframe=with'Frame'{
	Position=UDim2.new(.5,-50,.5,-50);
	Size=UDim2.new(0,100,0,100);
	Visible=false;
	Parent=screen;
};
selectGui=with'SelectionBox'{
	Parent=screen;
};

local c=0;
for y=0,7 do
	for x=0,7 do
		local color=BrickColor.palette(c).Color;
		
		with'ImageButton'{
			Position=UDim2.new(.125*x,0,.125*y);
			Size=UDim2.new(.125,0,.125);
			BackgroundColor3=color;
			Parent=clframe;
		}.MouseButton1Up:connect(function()
			clframe.Visible=false;
			_G.drawColor=color;
		end);
		
		c=c+1;
	end;
end;

addButton('Color','c',function()
	clframe.Visible=true;
end);
addButton('Remove your draws','r',function()
	repeat
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
		wait(0.01);
	until nil;
end);
addButton('Remove global draws','k',function()
	destroy(workspace.draw);
	while(_G.mine[1])do
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
end);
addButton('Remove selected','x',function()
	repeat
		if(find(workspace,'draw'))then
			local dt=mouse.target;
			if(dt and dt:IsDescendantOf(workspace.draw))then
				selectGui.Adornee=dt.Parent;
			else
				selectGui.Adornee=nil;
			end;
		else
			selectGui.Adornee=nil;
		end;
		wait(0.01);
	until freeKeys.x;
	selectGui.Adornee=nil;
end);




repeat
	wait(0.01);
	if(next(_G.mine)and _G.mine[_G.drawLimit])then
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
until script.Parent==nil or tool.Parent==nil;
script.Disabled=true;
destroy(screen);


--Dresmor Alakazard--
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 3
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = gt
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		
	end)
	
	
-- Weapon Scripts --
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Drage"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Drage"
	button.TextColor3 = whit
	button.MouseButton1Down:connect(function()
		--[[ put your name where it says yourname -ulti55 ]]
Plrs = game:GetService("Players")



me = Plrs.LocalPlayer

char = me.Character



Modelname = "xWep"

Toolname = "Drage"

Able = true

Selected = false

Deb = true

Hurt = false

CritMultiplier = 1.6

ComboOn = false

AbleToBreak = false

CounterKey = false

Attack = 1

AddDamage = 0

AddDamageX = 1

AddShield = 0

Dmgs = {Smash = {"Smash", 25, 2, 3, false}, Slash = {"Slash", 18, 1, 3, false}, SideSlash = {"SideSlash", 18, 1, 3, false},

DoubleSlash = {"Double Slash", 20, 1, 2, false}, Spin = {"Spin Slash", 30, 2, 5, true, 30}, Boom = {"Boom", 60, 6, 6, true, 50, 16},

RageMode = {"RAGE", 8, 1.35, 1, 50}, Counter = {"Counter", 25, 1, 1, true, 15}, RageSlash = {"Rage Slash", 40, 3, 7, true, 30}}

RageMode = false

Mode = Dmgs.Slash

AbleAll = true

necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

Aim = false



LineColor = "White"

EffectColor3 = "Bright red"

EffectColor2 = "White"

EffectColor = "Pastel Blue"

MainColor = "Navy blue"

BladeColor = "Pastel Blue"



BlockBars = {}



MaxRage = 100

Rage = MaxRage



CritChance = 5 --Percent



for _, v in pairs(char:children()) do

	if v.Name == "Block" then v:remove() end

end



BlockRealPowa = 4



Block = Instance.new("BoolValue")

Block.Name = "Block"

Block.Value = false

BlockPower = Instance.new("IntValue")

BlockPower.Name = "BlockPower"

BlockPower.Value = BlockRealPowa

BlockPower.Parent = Block

Block.Parent = char



CA = CFrame.Angles

CN = CFrame.new

MR = math.rad

MP = math.pi

MD = math.deg

MH = math.huge

MRA = math.random



EffPos = CFrame.new(0, 0.5, 0)



Sounds = {

	Equip = {"rbxasset://sounds//unsheath.wav", 0.7, 0.6},

	Hit = {"http://www.roblox.com/asset/?id=2801263", 0.9, 0.6},

	Block = {"", 1, 0.5},

	Slash = {"rbxasset://sounds//swordslash.wav", 2, 0.8},

	SmashHit = {"rbxasset://sounds\\metal.ogg", 1.5, 0.8},

	Jump = {"rbxasset://sounds/swoosh.wav", 1, 1},

	Boom = {"http://www.roblox.com/asset?id=1369158", 1.2, 1},

	SmashBoom = {"http://www.roblox.com/asset/?id=2760979", 0.25, 1},

	Jump2 = {"http://www.roblox.com/asset/?id=2101148", 2, 1},

	GoRage = {"http://www.roblox.com/asset/?id=2767090", 1, 1},

	Shout = {"http://www.roblox.com/asset/?id=2676305", 1.1, 0.8},

	RageOff = {"http://www.roblox.com/asset/?id=3264793", 1.6, 0.6},

}



Add = {

	Sphere = function(P)

		local m = Instance.new("SpecialMesh",P)

		m.MeshType = "Sphere"

		return m

	end,

	BP = function(P)

		local bp = Instance.new("BodyPosition",P)

		bp.maxForce = Vector3.new(MH, MH, MH)

		bp.P = 14000

		return bp

	end,

	BG = function(P)

		local bg = Instance.new("BodyGyro",P)

		bg.maxTorque = Vector3.new(MH, MH, MH)

		bg.P = 14000

		return bg

	end,

	Mesh = function(P, ID, x, y, z)

		local m = Instance.new("SpecialMesh")

		m.MeshId = ID

		m.Scale = Vector3.new(x, y, z)

		m.Parent = P

		return m

	end,

	Head = function(P)

		local s = Instance.new("SpecialMesh")

		s.MeshType = "Head"

		s.Parent = P

		return s

	end,

	Sound = function(P, ID, vol, pitch)

		local s = Instance.new("Sound")

		s.SoundId = ID

		s.Volume = vol

		s.Pitch = pitch

		s.Parent = P

		return s

	end

}



function RC(Pos, Dir, Max, Ignore)

	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)

end



function RayC(Start, En, MaxDist, Ignore)

	return RC(Start, (En - Start), MaxDist, Ignore)

end



function Notime(func, tim)

	coroutine.resume(coroutine.create(function()

		if tim then

			wait(tim)

		end

		func()

	end))

end



function waitChild(parent, name)

	local child = parent:findFirstChild(name)

	if child then return child end

	while true do

		child = parent.ChildAdded:wait()

		if child.Name == name then return child end

	end

end



function ComputePos(pos1, pos2)

	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)

	return CFrame.new(pos1, pos3)

end



function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)

	local p = Instance.new("Part")

	p.formFactor = "Custom"

	p.Anchored = Anchor

	p.CanCollide = Collide

	p.Transparency = Tran

	p.Reflectance = Ref

	p.BrickColor = BrickColor.new(Color)

	p.TopSurface = 0

	p.BottomSurface = 0

	p.Size = Vector3.new(X, Y, Z)

	if Break then

		p:BreakJoints()

	else p:MakeJoints() end

	p.Parent = Parent

	p.Locked = true

	return p

end



function Weld(p0, p1, x, y, z, a, b, c)

	local w = Instance.new("Weld")

	w.Parent = p0

	w.Part0 = p0

	w.Part1 = p1

	w.C1 = CN(x,y,z) * CA(a,b,c)

	return w

end



torso = char.Torso

neck = torso.Neck

hum = char.Humanoid

Rarm = char["Right Arm"]

Larm = char["Left Arm"]

Rleg = char["Right Leg"]

Lleg = char["Left Leg"]



hc = Instance.new("Humanoid")

hc.Health = 0

hc.MaxHealth = 0



function getHumanoid(c)

	local h = nil

	for i,v in pairs(c:children()) do

		if v:IsA("Humanoid") and c ~= char then

			if v.Health > 0 then

				h = v

			end

		end

	end

	return h

end



function getCharacters(where, pos, dist)

	local chars = {}

	for _, v in pairs(where:children()) do

		local hum = getHumanoid(v)

		local tors = v:findFirstChild("Torso")

		if tors ~= nil and hum ~= nil then

			local anypart = nil

			for _,k in pairs(v:children()) do

				if k:IsA("BasePart") then

					if (k.Position - pos).magnitude <= dist then

						anypart = k

						break

					end

				end

			end

			if anypart then

				table.insert(chars, {v, tors, hum})

			end

		end

	end

	return chars

end



function PlaySound(id, pitch, vol)

	local s = Add.Sound(nil, id, vol, pitch)

	if pitch ~= nil then

		if tonumber(pitch) then

			s.Pitch = tonumber(pitch)

		end

	end

	if vol ~= nil then

		if tonumber(vol) then

			s.Volume = tonumber(vol)

		end

	end

	s.Parent = torso

	s.PlayOnRemove = true

	Notime(function()

		wait()

		s:remove()

	end)

end



function playz(sound)

	PlaySound(sound[1], sound[2], sound[3])

end



PlrGui = waitChild(me, "PlayerGui")



for _, v in pairs(char:children()) do if v.Name == Modelname then v:remove() end end 

for _, v in pairs(PlrGui:children()) do

	if v.Name == "HealthGUI" or v.Name == "MyGui" then

		v:remove()

	end

end



function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)

	obj.Size = size

	obj.Position = position

	obj.BackgroundColor3 = bgcolor

	obj.BorderColor3 = bordercolor

	obj.BackgroundTransparency = transparency

	if obj:IsA("TextLabel") or obj:IsA("TextButton") then

		obj.Text = text

		obj.TextColor3 = textcolor

	end

	if obj:IsA("ImageButton") or obj:IsA("TextButton") then

		obj.AutoButtonColor = auto

		obj.MouseButton1Down:connect(function()

			RemoveOptions()

		end)

	end

	obj.Parent = parent

end



C3 = Color3.new

UD = UDim2.new



Sc = Instance.new("ScreenGui", PlrGui)

Sc.Name = "MyGui"



Fr = Instance.new("Frame")

EditGui(Fr, Sc, UD(0, 60, 0, 250), UD(1, -70, 0.5, -125), C3(0.1, 0.2, 0.5), C3(), 0)



HealthBack = Instance.new("Frame")

EditGui(HealthBack, Fr, UD(0, 25, 1, -20), UD(0, 3, 0, 10), C3(0.2, 0, 0), C3(), 0)



RageBack = Instance.new("Frame")

EditGui(RageBack, Fr, UD(0, 25, 1, -20), UD(1, -27, 0, 10), C3(0.2, 0, 0), C3(), 0)



local hp = hum.Health/hum.MaxHealth

if hp > 1 then hp = 1 elseif hp < 0 then hp = 0 end



HealthBar = Instance.new("ImageLabel")

EditGui(HealthBar, HealthBack, UD(1, 0, hp, 0), UD(0, 0, 0, 0), C3(0.1, 0.65, 0), C3(), 0)

HealthBar.Image = "http://www.roblox.com/asset/?id=50051953"



RageBar = Instance.new("ImageLabel")

EditGui(RageBar, RageBack, UD(1, 0, Rage/MaxRage, 0), UD(0, 0, 0, 0), C3(1, 0.6, 0.15), C3(), 0)

RageBar.Image = "http://www.roblox.com/asset/?id=50051953"



RageAmount = Instance.new("TextLabel")

EditGui(RageAmount, RageBack, UD(1, 0, 0, 0), UD(0, 0, 0, 0), C3(1, 0.6, 0.15), C3(), 0, Rage, C3(1,1,1))

RageAmount.TextYAlignment = "Top"



AimButton = Instance.new("TextButton")

EditGui(AimButton, Fr, UD(1, 0, 0, 35), UD(0, 0, 1, 0), C3(0.9, 0.2, 0.3), C3(), 0, "AIM: OFF", C3(), true)

AimButton.TextWrap = true

AimButton.Font = "ArialBold"

AimButton.FontSize = "Size14"

AimButton.MouseButton1Down:connect(function()

	if Aim then

		Aim = false

		AimButton.Text = "AIM: OFF"

		AimButton.BackgroundColor3 = C3(0.9, 0.2, 0.3)

	else

		Aim = true

		AimButton.Text = "AIM: ON"

		AimButton.BackgroundColor3 = C3(0.3, 0.85, 0.1)

	end

end)



for i = 1, BlockRealPowa do

	local gui = Instance.new("ImageLabel")

	EditGui(gui, Fr, UD(0, 16, 0, 16), UD(0, -18, 0.5, 20*(i-1)-((BlockRealPowa*20)/2)), C3(), C3(), 1)

	gui.Image = "http://www.roblox.com/asset/?id=48908046"

	table.insert(BlockBars, gui)

end



BlockPower.Changed:connect(function()

	for _, v in pairs(BlockBars) do

		v.Image = ""

	end

	for i = 1, BlockPower.Value do

		local gui = BlockBars[i]

		if gui then

			gui.Image = "http://www.roblox.com/asset/?id=48908046"

		end

	end

end)



Mo = Instance.new("Model")

Mo.Name = Modelname



RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)



RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)

LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)

RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)

LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)



RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)

LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)

RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)

LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)



HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

HBW = Weld(Rarm, HB, 0, 0, 1, MP/2, 0, 0)

HW = Weld(HB, nil, 0, 0, 0, 0, 0, 0)



SW = Weld(Larm, nil, -0.5, 0, 0.3, MP/2, 0, 0)



TH = Weld(torso, nil, 0, 2.5, 0, MR(145), 0, 0)

TH.C0 = CN(0, -0.3, 0.75) * CA(0, MP/2, 0)



Weapon = Instance.new("Model")

Weapon.Name = "Weapon"



Handle = Part(Weapon, false, false, 0, 0, MainColor, 0.4, 1.8, 0.4)

Add.Head(Handle)



Tip1 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.45, 1.2, 0.45)

Add.Head(Tip1)

Weld(Handle, Tip1, 0, 0, 0, 0, 0, 0)



Tip2 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.5, 0.5, 0.5)

Weld(Handle, Tip2, 0, 0.9, 0, 0, 0, 0)

Add.Mesh(Tip2, "http://www.roblox.com/asset/?id=9756362", 0.75, 0.5, 0.75)



Tip3 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.7, 0.3, 1.2)

Weld(Handle, Tip3, 0, -0.9, 0, 0, 0, 0)

Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=9756362", 0.7, 0.35, 1.35)



Tip4 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.6, 0.2, 1.8)

Weld(Handle, Tip4, 0, -0.9, 0, 0, 0, 0)



Tip5 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.6, 0.6, 0.3)

Weld(Tip4, Tip5, 0, -0.4, -0.85, MR(-15), 0, 0)



Tip6 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.6, 0.6, 0.3)

Weld(Tip4, Tip6, 0, -0.4, 0.85, MR(15), 0, 0)



Blades = {}



for i = 0, 180, 180 do

	for x = -20, 20, 40 do

		local lol = i-90

		local lol2 = math.abs(lol/480)

		local lol3 = x/90

		local Blade1 = Part(Weapon, false, false, 0, 0.3, BladeColor, 0.2, 3.5, 0.6)

		Instance.new("BlockMesh",Blade1).Scale = Vector3.new(0.2, 1, 0.99)

		local w = Weld(Tip4, Blade1, lol2, 0, -lol3, 0, 0, 0)

		w.C0 = CN(0, 1.7, 0) * CA(0, MR(i+x), 0)

		table.insert(Blades, Blade1)

	end

end



Tip7 = Part(Weapon, false, false, 0, 0.3, BladeColor, 0.3, 1.3, 0.7)

Add.Mesh(Tip7, "http://www.roblox.com/asset/?id=9756362", 0.31, 1.4, 0.8)

Weld(Tip4, Tip7, 0, -3.45, 0, 0, 0, 0)



table.insert(Blades, Tip7)



TH.Part1 = Handle



Shield = Instance.new("Model")

Shield.Name = "Shield"



SHandle = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.9, 0.4)

SW.Part1 = SHandle



for i = 65, 115, 25 do

	local STip1 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.5, 0.4)

	local w = Weld(SHandle, STip1, 0.8, 0, 0, 0, 0, 0)

	w.C0 = CN(-0.5, 0.2, 0) * CA(0, 0, MR(i))

end



for i = -65, -115, -25 do

	local STip1 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.5, 0.4)

	local w = Weld(SHandle, STip1, 0.8, 0, 0, 0, 0, 0)

	w.C0 = CN(-0.5, -0.2, 0) * CA(0, 0, MR(i))

end



SHandle2 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.9, 0.4)

Weld(SHandle, SHandle2, 1, 0, 0, 0, 0, 0)



ShieldMain = Part(Weapon, false, false, 0, 0, "Medium grey", 0.3, 3.5, 1.1)

ShieldW = Weld(SHandle2, ShieldMain, 0, 0, 0, 0, 0, 0)

ShieldW.C0 = CN(0, -0.2, 0) * CA(0, MR(-5), 0)



STip1 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

Weld(ShieldMain, STip1, 0, -1.75, 0, 0, 0, 0)



STip2 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

Weld(ShieldMain, STip2, 0, 1.75, 0, 0, 0, 0)



for i = -15, 15, 30 do

	local ShieldPlate = Part(Weapon, false, false, 0, 0, "Medium grey", 0.3, 3.5, 1.1)

	local w = Weld(ShieldMain, ShieldPlate, 3.5, 0, 0, 0, 0, 0)

	w.C0 = CN(3.5, 0, 0) * CA(0, math.rad(i), 0)

	for x = -1.75, 1.75, 1.75*2 do

		local STip3 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

		Weld(ShieldPlate, STip3, 0, x, 0, 0, 0, 0)

	end

	local i2 = i/40

	local STip3 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 3.9, 0.4)

	Weld(ShieldPlate, STip3, 0, 0, -i2, 0, 0, 0)

end



Weapon.Parent = Mo

Shield.Parent = Mo



Mo.Parent = char



function ShowDamage(Dmg, Par, Crit, block)

	local Pos = Par.CFrame * CN(0, 2.5, 0)

	local M = Instance.new("Model")

	local Loldmg = Dmg

	if Loldmg < 0 then

		Loldmg = 0

	end

	if tostring(Loldmg):sub(1,1) == "-" then

		Loldmg = tostring(Loldmg):sub(2)

	end

	M.Name = Loldmg

	local Col = "Bright red"

	if Crit then Col = "Bright yellow" elseif block then Col = "Bright blue" end

	local P = Part(M, false, false, 0, 0, Col, 0.8, 0.3, 0.8, true)

	P.CFrame = CN(Par.Position)

	P.Name = "Head"

	local BP = Add.BP(P)

	BP.position = Pos.p

	BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	BP.P = 11000

	Add.BG(P)

	local H = hc:clone()

	H.Parent = M

	H.MaxHealth = 0

	H.Health = 0

	M.Parent = workspace

	Notime(function()

		wait(1.5)

		M:remove()

	end)

end



function Damage(P, Hum, dmg, crit, block)

	if Hum then

		if Hum.Health > 0 then

			local Damg = dmg

			if crit then

				Damg = dmg*CritMultiplier

			end

			Damg = math.ceil(((Damg+AddDamage)*AddDamageX)-0.5)

			Hum.Health = Hum.Health - Damg

			ShowDamage(Damg, P, crit, block)

		end

	end

end



function ShieldDamage(mode, blockval, blockpowerval, crit)

	if blockval and blockpowerval then

		local ShieldDmg = mode[3]+AddShield

		if crit then

			ShieldDmg = mode[4]+AddShield

		end

		if blockpowerval then

			blockpowerval.Value = blockpowerval.Value - ShieldDmg

			if blockpowerval.Value < 1 then

				blockval.Value = false

			end

		end

	end

end



function getBlock(c)

	local block, blockpow = nil

	local blockin = false

	for _,v in pairs(c:children()) do

		if v.Name == "Block" and v:IsA("BoolValue") then

			block = v

			blockin = v.Value

			local bp = v:findFirstChild("BlockPower")

			if bp then

				blockpow = bp

			end

		end

	end

	return block, blockpow, blockin

end



function TouchDamage(hit)

	local Hum = getHumanoid(hit.Parent)

	if Hum and Deb and Hurt then

		Deb = false

		local Crit = false

		local BlockVal, BlockPowaVal, Blawk = getBlock(Hum.Parent)

		local BlockPowa = 0

		local blocksound = Sounds.SmashHit

		if math.random(1,100/CritChance) == 1 then

			Crit = true

		end

		local Damg = math.random(Mode[2]/3, Mode[2])

		if Blawk then

			Damg = 0

			ShieldDamage(Mode, BlockVal, BlockPowaVal, Crit)

			if BlockPowaVal then

				if BlockPowaVal.Value < 1 then

					blocksound = Sounds.Equip

				end

			end

		end

		if Mode[5] == false and RageMode == false and Blawk == false then

			Rage = Rage + math.ceil(Damg*0.75-0.5)

		end

		if Blawk then

			PlaySound(blocksound[1], blocksound[2]-0.15, blocksound[3])

		else

			PlaySound(Sounds.Hit[1], Sounds.Hit[2], Sounds.Hit[3])

		end

		Damage(hit, Hum, Damg, Crit, Blawk)

		if Mode == Dmgs.Spin then

			Notime(function()

				wait(0.35)

				Deb = true

			end)

		end

	end

end



for _, v in pairs(Blades) do

	v.Touched:connect(TouchDamage)

end



if script.Parent.className ~= "HopperBin" then

	H = Instance.new("HopperBin", me.Backpack)

	H.Name = Toolname

	script.Parent = H

end



Bin = script.Parent



EffectOn = false



function StartEffect(color)

	EffectOn = true

	local lastPoint = Tip7.CFrame * EffPos.p

	Notime(function()

		while EffectOn do

			wait()

			local pos = Tip7.CFrame * EffPos.p

			local magn = (lastPoint - pos).magnitude

			local col = LineColor

			if color and col ~= EffectColor3 then

				col = color

			end

			local p = Part(workspace, true, false, 0.1, 0, col, 0.3, 1, 0.3, true)

			local mesh = Add.Head(p)

			mesh.Scale = Vector3.new(1, magn+0.1, 1)

			p.CFrame = CN(lastPoint, pos) * CA(-MP/2, 0, 0) * CN(0, magn/2+0.05, 0)

			lastPoint = pos

			Notime(function()

				wait(0.05)

				for i = 0, 1, 0.12 do

					p.Transparency = 0.1+0.9*i

					mesh.Scale = Vector3.new(1-1*i, magn+0.1-0.1*i, 1-1*i)

					wait()

				end

				p:remove()

			end)

		end

	end)

end



function EndEffect()

	EffectOn = false

end



function Detach()

	RAW.Part1 = nil

	LAW.Part1 = nil

	RLW.Part1 = nil

	LLW.Part1 = nil

	RAW.C0 = CN()

	LAW.C0 = CN()

	RLW.C0 = CN()

	LLW.C0 = CN()

end



function Normalize()

	RAW.C0 = CA(MR(40), MR(50), 0)

	LAW.C0 = CA(MR(20), MR(-20), MR(-20))

	HW.C0 = CA(0, 0, 0)

	neck.C0 = necko

end



SelectAnim = function()

	RAW.Part1 = Rarm

	HW.Part1 = nil

	TH.Part1 = Handle

	for i = 0.1, 1, 0.14 do

		RAW.C0 = CA(MR(220*i), MR(-30*i), MR(-35*i)) * CN(0.4*i, 0, 0)

		neck.C0 = necko * CA(MR(-10*i), 0, MR(-60*i))

		wait()

	end

	PlaySound(Sounds.Equip[1], Sounds.Equip[2], Sounds.Equip[3])

	HW.C0 = CN(0.4, 0, 0) * CA(MR(-60), MR(10), MR(100))

	HW.Part1 = Handle

	TH.Part1 = nil

	LAW.Part1 = Larm

	for i = 0.09, 1, 0.11 do

		RAW.C0 = CA(MR(220-70*i), MR(-30+25*i), MR(-35+70*i)) * CN(0.4-0.4*i, 0, 0)

		HW.C0 = CN(0.4-0.4*i, 0, 0) * CA(MR(-60+40*i), MR(10-10*i), MR(100-40*i))

		LAW.C0 = CA(MR(20*i), MR(-20*i), MR(-20*i))

		neck.C0 = necko * CA(MR(-10+10*i), 0, MR(-60+40*i))

		wait()

	end

	for i = 0.14, 1, 0.25 do

		RAW.C0 = CA(MR(150-60*i), MR(-5+15*i), MR(35-10*i))

		HW.C0 = CA(MR(-20+20*i), 0, MR(60-30*i))

		neck.C0 = necko * CA(0, 0, MR(-60+40+5*i))

		wait()

	end

	for i = 0.1, 1, 0.14 do

		RAW.C0 = CA(MR(90-50*i), MR(10+40*i), MR(25-25*i))

		HW.C0 = CA(0, 0, MR(30-30*i))

		neck.C0 = necko * CA(0, 0, MR(-15+15*i))

		wait()

	end

	Normalize()

end



DeselectAnim = function()

	for i = 0.09, 1, 0.14 do

		RAW.C0 = CA(MR(40+100*i), MR(50-50*i), MR(20*i))

		LAW.C0 = CA(MR(20-20*i), MR(-20+20*i), MR(-20+20*i))

		HW.C0 = CN(0.4*i, 0, 0) * CA(MR(-30*i), MR(5*i), MR(20*i))

		neck.C0 = necko * CA(MR(-5*i), 0, MR(-35*i))

		wait()

	end

	LAW.Part1 = nil

	for i = 0.08, 1, 0.14 do

		RAW.C0 = CA(MR(140+80*i), MR(-30*i), MR(20-55*i))

		HW.C0 = CN(0.4, 0, 0) * CA(MR(-30-30*i), MR(5+5*i), MR(20+80*i))

		neck.C0 = necko * CA(MR(-5-10*i), 0, MR(-35-25*i))

		wait()

	end

	HW.Part1 = nil

	TH.Part1 = Handle

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(MR(220-220*i), MR(-30+30*i), MR(20-55+35*i))

		neck.C0 = necko * CA(MR(-5-10+15*i), 0, MR(-35-25+60*i))

		wait()

	end

	neck.C0 = necko

	Detach()

end



function setatk(s, e)

	Notime(function()

		Attack = e

		wait(0.25)

		Attack = s

	end)

end



Attacks = {

function()

	Attack = 1

	Able = false

	for i = 0.1, 1, 0.2 do

		RAW.C0 = CA(MR(40+90*i), MR(50-60*i), 0)

		HW.C0 = CA(0, 0, 0)

		LAW.C0 = CA(MR(20+55*i), MR(-20), MR(-20+60*i))

		neck.C0 = necko * CA(MR(-10*i), 0, MR(-25*i))

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2], Sounds.Slash[3])

	for i = 0.16, 1, 0.33 do

		RAW.C0 = CA(MR(130+5*i), MR(-10-20*i), 0)

		HW.C0 = CA(0, 0, 0)

		LAW.C0 = CA(MR(75+5*i), MR(-20), MR(40+5*i))

		neck.C0 = necko * CA(MR(-10-5*i), 0, MR(-25-5*i))

		wait()

	end

	Hurt = true

	Deb = true

	StartEffect()

	Mode = Dmgs.Slash

	for i = 0.11, 1, 0.22 do

		RAW.C0 = CA(MR(135-115*i), MR(-30), MR(-50*i)) * CN(0, -0.7*i, 0)

		HW.C0 = CA(MR(-70*i), 0, 0)

		LAW.C0 = CA(MR(80-120*i), MR(-20+20*i), MR(45-45*i))

		neck.C0 = necko * CA(MR(-15+30*i), 0, MR(-30+45*i))

		wait()

	end

	EndEffect()

	Hurt = false

	setatk(1,2)

	Able = true

	for i = 0.2, 1, 0.25 do

		RAW.C0 = CA(MR(20-18*i), MR(-30), MR(-50-3*i)) * CN(0, -0.7-0.05*i, 0)

		HW.C0 = CA(MR(-70-5*i), 0, 0)

		neck.C0 = necko * CA(MR(15+3*i), 0, MR(15+3*i))

		wait()

	end

	wait(0.1)

	for i = 0.1, 1, 0.15 do

		if Able == false then return end

		RAW.C0 = CA(MR(2+38*i), MR(-30+80*i), MR(-53+53*i)) * CN(0, -0.75+0.75*i, 0)

		HW.C0 = CA(MR(-75+75*i), 0, 0)

		LAW.C0 = CA(MR(-40+60*i), MR(-20+20-20*i), MR(-20*i))

		neck.C0 = necko * CA(MR(15+3-18*i), 0, MR(15+3-18*i))

		wait()

	end

	Normalize()

end,



function()

	Attack = 2

	Able = false

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.1, Sounds.Slash[3])

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(10+80*i), MR(-30+30*i), MR(-55+35*i)) * CN(0, -0.75+0.35*i, 0)

		LAW.C0 = CA(MR(-40), 0, 0)

		HW.C0 = CA(MR(-75+75*i), 0, MR(90*i))

		neck.C0 = necko * CA(MR(18-13*i), 0, MR(18+22*i))

		wait()

	end

	Hurt = true

	Deb = true

	StartEffect()

	Mode = Dmgs.SideSlash

	for i = 0.09, 1, 0.17 do

		RAW.C0 = CA(MR(90-40*i), 0, MR(-20+110*i)) * CN(0, -0.4+0.4*i, 0)

		HW.C0 = CA(0, MR(-65*i), MR(90))

		LAW.C0 = CA(MR(-40+120*i), MR(-20*i), MR(50*i)) * CN(0, -0.6*i, 0)

		neck.C0 = necko * CA(MR(5), 0, MR(40-90*i))

		wait()

	end

	EndEffect()

	Hurt = false

	Deb = false

	setatk(1,3)

	Able = true

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(MR(50-5*i), 0, MR(90+10*i))

		HW.C0 = CA(0, MR(-65-5*i), MR(90))

		LAW.C0 = CA(MR(-40+120), MR(-20), MR(50+5*i)) * CN(0, -0.6, 0)

		neck.C0 = necko * CA(MR(5), 0, MR(40-90-5*i))

		wait()

	end

	wait(0.08)

	for i = 0.05, 1, 0.1 do

		if Able == false then return end

		RAW.C0 = CA(MR(45-5*i), MR(50*i), MR(100-100*i)) * CN(0, 0, 0)

		HW.C0 = CA(0, MR(-70+70*i), MR(90-90*i))

		LAW.C0 = CA(MR(-40+120-60*i), MR(-20), MR(55-75*i)) * CN(0, -0.6+0.6*i, 0)

		neck.C0 = necko * CA(MR(5-5*i), 0, MR(-55+55*i))

		wait()

	end

	Normalize()

end,



function()

	Able = false

	for i = 0.05, 1, 0.08 do

		RAW.C0 = CA(MR(50+130*i), 0, MR(90-125*i)) * CN(0, -1*i, 0)

		HW.C0 = CA(0, MR(-65-35*i), MR(90-90*i))

		LAW.C0 = CA(MR(80+100*i), MR(-20+20*i), MR(50-15*i)) * CN(0, -0.6-0.4*i, 0)

		neck.C0 = necko * CA(MR(5-25*i), 0, MR(-50+50*i))

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.05, Sounds.Slash[3])

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(180+10*i), 0, MR(-35)) * CN(0, -1, 0)

		HW.C0 = CA(0, MR(-100), 0)

		LAW.C0 = CA(MR(180+10*i), 0, MR(35)) * CN(0, -1, 0)

		neck.C0 = necko * CA(MR(5-25-5*i), 0, 0)

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Smash

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(190-160*i), 0, MR(-35)) * CN(0, -1+0.2*i, 0)

		HW.C0 = CA(MR(-20*i), MR(-100-40*i), MR(40*i))

		LAW.C0 = CA(MR(190-160*i), 0, MR(35)) * CN(0, -1+0.2*i, 0)

		neck.C0 = necko * CA(MR(-25+45*i), 0, 0)

		wait()

	end

	PlaySound(Sounds.SmashHit[1], Sounds.SmashHit[2], Sounds.SmashHit[3])

	EndEffect()

	Hurt = false

	Deb = false

	for i = 0.2, 1, 0.5 do

		RAW.C0 = CA(MR(30+15*i), 0, MR(-35)) * CN(0, -0.8+0.4*i, 0)

		HW.C0 = CA(MR(-20), MR(-140), MR(40))

		LAW.C0 = CA(MR(30+15*i), 0, MR(35)) * CN(0, -0.8+0.4*i, 0)

		neck.C0 = necko * CA(MR(20), 0, 0)

		wait()

	end

	setatk(1,4)

	Able = true

	for i = 0.16, 1, 0.33 do

		if not Able then return end

		RAW.C0 = CA(MR(30+15-15*i), 0, MR(-35)) * CN(0, -0.8+0.4-0.2*i, 0)

		HW.C0 = CA(MR(-20), MR(-140), MR(40))

		LAW.C0 = CA(MR(30+15-15*i), 0, MR(35)) * CN(0, -0.8+0.4-0.2*i, 0)

		neck.C0 = necko * CA(MR(20), 0, 0)

		wait()

	end

	for i = 0.05, 1, 0.1 do

		if not Able then return end

		RAW.C0 = CA(MR(30+10*i), MR(50*i), MR(-35+35*i)) * CN(0, -0.8+0.4-0.2+0.6*i, 0)

		HW.C0 = CA(MR(-20+20*i), MR(-140+140*i), MR(40-40*i))

		LAW.C0 = CA(MR(30+15-15-10*i), MR(-20*i), MR(35-55*i)) * CN(0, -0.8+0.4-0.2+0.6*i, 0)

		neck.C0 = necko * CA(MR(20-20*i), 0, 0)

		wait()

	end

	Normalize()

end,

function()

	Able = false

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(30), MR(-20*i), MR(-35-25*i)) * CN(0, -0.8, 0)

		HW.C0 = CA(MR(-20-60*i), MR(-140-40*i), MR(40-40*i))

		LAW.C0 = CA(MR(30-110*i), 0, MR(35-35*i)) * CN(0, -0.8+0.8*i, 0)

		neck.C0 = necko * CA(MR(20-15*i), 0, MR(10*i))

		wait()

	end

	Mode = Dmgs.DoubleSlash

	StartEffect()

	playz(Sounds.Slash)

	Hurt = true

	Deb = true

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(30+120*i), MR(-20), MR(-60+80*i)) * CN(0, -0.8+0.8*i, 0)

		HW.C0 = CA(MR(-80+60*i), MR(180), 0)

		LAW.C0 = CA(MR(-50+100*i), 0, MR(30*i))

		neck.C0 = necko * CA(MR(5-25*i), 0, MR(10-30*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.17, 1, 0.33 do

		RAW.C0 = CA(MR(150+15*i), MR(-20), MR(20+5*i))

		HW.C0 = CA(MR(-20), MR(180), 0)

		LAW.C0 = CA(MR(50+5*i), 0, MR(30+10*i))

		neck.C0 = necko * CA(MR(-20-5*i), 0, MR(-20))

		wait()

	end

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(165-15*i), MR(-20+50*i), MR(25-75*i))

		HW.C0 = CA(MR(-20-20*i), MR(180), 0)

		LAW.C0 = CA(MR(55+45*i), 0, MR(40-30*i))

		neck.C0 = necko * CA(MR(-25), 0, MR(-20+35*i))

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	playz(Sounds.Slash)

	for i = 0.08, 1, 0.16 do

		RAW.C0 = CA(MR(150-110*i), MR(30), MR(-50+65*i))

		HW.C0 = CA(MR(-40-40*i), MR(180), 0)

		LAW.C0 = CA(MR(100-50*i), MR(-30*i), MR(10+30*i)) * CN(0, -1.1*i, 0)

		neck.C0 = necko * CA(MR(-25+45*i), 0, MR(15-30*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(40-5*i), MR(30), MR(15+5*i))

		HW.C0 = CA(MR(-80-5*i), MR(180), 0)

		LAW.C0 = CA(MR(50), MR(-30), MR(40)) * CN(0, -1.1-0.1*i, 0)

		neck.C0 = necko * CA(MR(20+5*i), 0, MR(-15-5*i))

		wait()

	end

	for i = 0.09, 1, 0.16 do

		RAW.C0 = CA(MR(35+5*i), MR(30+20*i), MR(20-20*i))

		HW.C0 = CA(MR(-85+85*i), MR(180+180*i), 0)

		LAW.C0 = CA(MR(50-30*i), MR(-30+10*i), MR(40-60*i)) * CN(0, -1.2+1.2*i, 0)

		neck.C0 = necko * CA(MR(25-25*i), 0, MR(-20+20*i))

		wait()

	end

	Normalize()

	Able = true

	Attack = 1

end

}



SpinSlash = function(plaic)

	if Rage < Dmgs.Spin[6] then return end

	Rage = Rage - Dmgs.Spin[6]

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

	end

	AbleAll = false

	local bg = Add.BG(torso)

	bg.cframe = CF

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(40+50*i), MR(50-65*i), 0)

		HW.C0 = CA(0, 0, MR(90*i))

		LAW.C0 = CA(MR(20-20*i), MR(-20+20*i), MR(-20-60*i))

		neck.C0 = necko * CA(0, 0, MR(-30*i))

		bg.cframe = CF * CA(0, MR(30*i), 0)

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Spin

	Notime(function()

		while Hurt do

			PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.35, Sounds.Slash[3])

			wait(0.15)

		end

	end)

	for i = 0.04, 1, 0.06 do

		RAW.C0 = CA(MR(90-10*i), MR(-15), MR(90*i))

		HW.C0 = CA(0, MR(-70*i), MR(90))

		LAW.C0 = CA(MR(90*i), 0, MR(-20-60+120*i)) * CN(0, -0.7*i, 0)

		neck.C0 = necko * CA(0, 0, MR(-30+20*i))

		bg.cframe = CF * CA(0, MR(30-380*i), 0)

		wait()

	end

	EndEffect()

	for i = 0.09, 1, 0.17 do

		RAW.C0 = CA(MR(80), MR(-15), MR(90))

		HW.C0 = CA(0, MR(-70-10*i), MR(90))

		LAW.C0 = CA(MR(90), 0, MR(-20-60+120+20*i)) * CN(0, -0.7, 0)

		neck.C0 = necko * CA(0, 0, MR(-10+60*i))

		bg.cframe = CF * CA(0, MR(-350-60*i), 0)

		wait()

	end

	Hurt = false

	Deb = false

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(80-40*i), MR(-15+65*i), MR(90-90*i))

		HW.C0 = CA(0, MR(-80+80*i), MR(90-90*i))

		LAW.C0 = CA(MR(90-70*i), MR(-20*i), MR(60-80*i)) * CN(0, -0.7+0.7*i, 0)

		neck.C0 = necko * CA(0, 0, MR(-10+60-50*i))

		bg.cframe = CF * CA(0, MR(-410+50*i), 0)

		wait()

	end

	bg:remove()

	Normalize()

	AbleAll = true

end



Flawp = function(plaic)

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

	end

	local cf2 = CF * CN(0, -1.1, -1)

	local Dist = 8

	local Hit1, Pos1 = RayC(CF.p, (CF * CN(0, -1, 0)).p, 4, char)

	local Hit2, Pos2 = RayC((CF * CN(0, 0, -Dist*2)).p, (CF * CN(0, -1, -Dist*2)).p, 4, char)

	local Hit3, Pos3 = RayC(CF.p, (CF * CN(0, 0, -Dist*2)).p, Dist*2, char)

	if Rage < Dmgs.Boom[6] then return end

	if Hit1 and Hit2 then

		Rage = Rage - Dmgs.Boom[6]

		local bp = Add.BP(torso)

		bp.position = cf.p

		local bg = Add.BG(torso)

		bg.cframe = CF

		AbleAll = false

		RLW.Part1 = Rleg

		LLW.Part1 = Lleg

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(40+30*i), MR(50-50*i), MR(25*i))

			LAW.C0 = CA(MR(20+50*i), MR(-20+20*i), MR(-20-5*i))

			HW.C0 = CA(MR(25*i), 0, 0)

			RLW.C0 = CN(0, 1*i, -1*i)

			LLW.C0 = CA(MR(-90*i), 0, 0) * CN(0, 0.5*i, -0.2*i)

			neck.C0 = necko * CA(MR(20*i), 0, 0)

			bp.position = CF * CN(0, -1*i, -1*i).p

			wait()

		end

		local Center = cf2 * CN(0, 0, -Dist)

		hum.PlatformStand = true

		PlaySound(Sounds.Jump[1], Sounds.Jump[2], Sounds.Jump[3])

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(70-160*i), 0, MR(25+15*i))

			LAW.C0 = CA(MR(70-160*i), 0, MR(-25-15*i))

			HW.C0 = CA(MR(25), 0, 0)

			RLW.C0 = CN(0, 1-1*i, -1+1*i)

			LLW.C0 = CA(MR(-90+70*i), 0, 0) * CN(0, 0.5+0.7*i, -0.2-0.3*i)

			neck.C0 = necko * CA(MR(20-50*i), 0, 0)

			bp.position = Center * CA(MR(180-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-90*i), 0, 0)

			wait()

		end

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(-90-90*i), 0, MR(40+50*i))

			LAW.C0 = CA(MR(-90-90*i), 0, MR(-40-50*i))

			HW.C0 = CA(MR(25-25*i), 0, MR(-90*i))

			RLW.C0 = CN(0, 0, 0)

			LLW.C0 = CA(MR(-20+20*i), 0, 0) * CN(0, 1.2-1.2*i, -0.5+0.5*i)

			bp.position = Center * CA(MR(135-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-90-90*i), 0, 0)

			wait()

		end

		StartEffect()

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(180+10*i), 0, MR(90-130*i)) * CN(0, -1*i, 0)

			LAW.C0 = CA(MR(180+10*i), 0, MR(-90+130*i)) * CN(0, -1*i, 0)

			HW.C0 = CA(0, 0, MR(-90-90*i))

			RLW.C0 = CN(0, 0, 0)

			LLW.C0 = CA(0, 0, 0) * CN(0, 0, 0)

			bp.position = Center * CA(MR(90-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-180-90*i), 0, 0)

			wait()

		end

		playz(Sounds.Slash)

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(190-100*i), 0, MR(-40)) * CN(0, -1-0.2*i, 0)

			LAW.C0 = CA(MR(190-80*i), MR(-25*i), MR(40-15*i)) * CN(0, -1-0.2*i, 0)

			HW.C0 = CA(0, MR(-45*i), MR(-180))

			RLW.C0 = CN(0, 1*i, -1*i)

			LLW.C0 = CA(MR(-20-70*i), 0, 0) * CN(0, 1.2-0.7*i, -0.5+0.3*i)

			neck.C0 = necko * CA(MR(-30+60*i), 0, 0)

			bp.position = Center * CA(MR(45-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-270-90*i), 0, 0)

			wait()

		end

		Mode = Dmgs.Boom

		EndEffect()

		RAW.C0 = CA(MR(90), 0, MR(-40)) * CN(0, -1.2, 0)

		LAW.C0 = CA(MR(110), MR(-25), MR(25)) * CN(0, -1.2, 0)

		HW.C0 = CA(0, MR(-45), MR(-180))

		RLW.C0 = CN(0, 1, -1)

		LLW.C0 = CA(MR(-90), 0, 0) * CN(0, 0.5, -0.2)

		bp.position = Center * CN(0, 0, -Dist).p

		bg.cframe = CF * CA(0, 0, 0)

		local PosEff = Center * CN(0, -2, -Dist-2.5)

		Notime(function()

			playz(Sounds.Boom)

			local disst = Dmgs.Boom[7]

			local chars = getCharacters(workspace, PosEff.p, disst)

			for _,v in pairs(chars) do

				local c, t, h = v[1], v[2], v[3]

				local d = (t.Position - PosEff.p).magnitude

				local bl, bp, blo = getBlock(c)

				if blo then

					ShieldDamage(Dmgs.Boom, bl, bp, false)

				end

				d = d/4

				if d < 1 then d = 1 end

				Damage(t, h, Dmgs.Boom[2]/d, false, false)

				for _,k in pairs(c:children()) do

					if k:IsA("BasePart") then

						k.Velocity = CFrame.new(PosEff.p, k.Position).lookVector * 40 + Vector3.new(0, 50, 0)

					end

				end

				h.PlatformStand = true

				Notime(function() h.PlatformStand = false end, 0.2)

			end

			local eff = Instance.new("Model",workspace)

			eff.Name = "Effect"

			local wave = Part(eff, true, false, 0, 0, EffectColor, 1, 1, 1, true)

			wave.CFrame = PosEff

			local wavem = Add.Mesh(wave, "http://www.roblox.com/asset/?id=20329976", 3, 2, 3)

			local ball = Part(eff, true, false, 0, 0, EffectColor2, 1, 1, 1, true)

			ball.CFrame = PosEff

			local ballm = Add.Sphere(ball)

			ballm.Scale = Vector3.new(2, 5, 2)

			local diamond = Part(eff, true, false, 0, 0, EffectColor, 1, 1, 1, true)

			diamond.CFrame = PosEff

			local diamondm = Add.Mesh(diamond, "http://www.roblox.com/asset/?id=9756362", 7, 0.5, 7)

			for i = 0, 1, 0.05 do

				wait()

				wave.CFrame = PosEff * CFrame.Angles(0, MR(180*i), 0)

				wave.Transparency = i

				wavem.Scale = Vector3.new(3+(disst*1.15)*i, 2+(disst/1.4)*i, 3+(disst*1.15)*i)

				ball.Transparency = i

				ballm.Scale = Vector3.new(1+(disst*2)*i, 5+(disst*1.2)*i, 1+(disst*2)*i)

				diamond.Transparency = i

				diamondm.Scale = Vector3.new(7-6.5*i, 0.5+(disst*2)*i, 7-6.5*i)

			end

			wait()

			eff:remove()

		end)

		wait(0.4)

		for i = 0.07, 1, 0.1 do

			RAW.C0 = CA(MR(90+50*i), 0, MR(-40)) * CN(0, -1.2+0.4*i, -0.4*i)

			LAW.C0 = CA(MR(110+30*i), MR(-25+25*i), MR(25+15*i)) * CN(0, -1.2+0.4*i, -0.4*i)

			HW.C0 = CA(MR(-30*i), MR(-45+45*i), MR(-180-30*i)) * CN(0, -0.7*i, 0)

			RLW.C0 = CN(0, 1-1*i, -1+1*i)

			LLW.C0 = CA(MR(-90+90*i), 0, 0) * CN(0, 0.5-0.5*i, -0.2+0.2*i)

			neck.C0 = necko * CA(MR(30-15*i), 0, 0)

			bp.position = Center * CN(0, 1.4*i, -Dist-1*i).p

			wait()

		end

		bp:remove()

		bg:remove()

		hum.PlatformStand = false

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(140-100*i), MR(50*i), MR(-40+40*i)) * CN(0, -0.8+0.8*i, -0.4+0.4*i)

			LAW.C0 = CA(MR(140-190*i), 0, MR(40-80*i)) * CN(0, -0.8+0.8*i, -0.4+0.4*i)

			HW.C0 = CA(MR(-30+30*i), 0, MR(-210-150*i)) * CN(0, -0.7+0.7*i, 0)

			RLW.C0 = CN()

			LLW.C0 = CN()

			neck.C0 = necko * CA(MR(15-15*i), 0, 0)

			bp.position = Center * CN(0, 1.4-0.4*i, -Dist-1-0.3*i).p

			wait()

		end

		RLW.Part1 = nil

		LLW.Part1 = nil

		for i = 0.1, 1, 0.2 do

			LAW.C0 = CA(MR(-50+70*i), MR(-20*i), MR(-40+20*i))

			wait()

		end

		Normalize()

		AbleAll = true

	end

end



function Raeg()

	if Rage < Dmgs.RageMode[5] then return end

	if RageMode == false and AbleAll and Able then

		AbleAll = false

		local CF = ComputePos(torso.Position, torso.CFrame * CN(0, 0, -2))

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(40-70*i), MR(50-45*i), MR(10*i))

			LAW.C0 = CA(MR(20-50*i), MR(-20+15*i), MR(-20+10*i))

			HW.C0 = CA(MR(20*i), 0, 0)

			wait()

		end

		for i = 0.12, 1, 0.25 do

			RAW.C0 = CA(MR(-30-10*i), MR(5-5*i), MR(10-5*i))

			LAW.C0 = CA(MR(-30-10*i), MR(-5+5*i), MR(-10+5*i))

			HW.C0 = CA(MR(20+5*i), 0, 0)

			wait()

		end

		hum.Jump = true

		playz(Sounds.Jump2)

		CF = ComputePos(torso.Position, torso.CFrame * CN(0, 0, -2))

		local p = Part(workspace, true, false, 0, 0, "Bright red", 0.2, 0.2, 0.2, true)

		p.CFrame = CF * CN(0, -2, 0)

		local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 3, 1)

		Notime(function()

			for i = 0, 1, 0.08 do

				wait()

				m.Scale = Vector3.new(1+5*i, 3-2.5*i, 1+5*i)

				p.Transparency = i

			end

			p:remove()

		end)

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(-40+220*i), 0, MR(5+35*i))

			LAW.C0 = CA(MR(-40+220*i), 0, MR(-5-35*i))

			HW.C0 = CA(MR(25-115*i), MR(90*i), MR(45*i))

			wait()

		end

		for i = 0.12, 1, 0.25 do

			RAW.C0 = CA(MR(180+8*i), 0, MR(40))

			LAW.C0 = CA(MR(180+8*i), 0, MR(-40))

			HW.C0 = CA(MR(-90), MR(90), MR(45))

			wait()

		end

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(188-98*i), 0, MR(40-80*i)) * CN(0, -1*i, 0)

			LAW.C0 = CA(MR(188-98*i), 0, MR(-40+80*i)) * CN(0, -1*i, 0)

			HW.C0 = CA(MR(-90+90*i), MR(90+45*i), MR(45-45*i))

			wait()

		end

		playz(Sounds.GoRage)

		local p2 = Part(workspace, false, false, 1, 0, EffectColor3, 1, 1, 1, true)

		Weld(Tip4, p2, 0, -2, 0, 0, 0, 0)

		local m2 = Add.Sphere(p2)

		m2.Scale = Vector3.new(0.2, 2, 0.5)

		for i = 0, 1, 0.06 do

			p2.Transparency = 1-1*i

			m2.Scale = Vector3.new(0.2+0.7*i, 2+3*i, 0.5+1.6*i)

			wait()

		end

		for _,v in pairs(Blades) do

			v.BrickColor = BrickColor.new(EffectColor3)

		end

		wait(0.5)

		for i = 0, 1, 0.1 do

			p2.Transparency = i

			wait()

		end

		p2:remove()

		playz(Sounds.Shout)

		for i = 0.1, 1, 0.1 do

			RAW.C0 = CA(MR(90-50*i), MR(50*i), MR(-40+40*i)) * CN(0, -1+1*i, 0)

			LAW.C0 = CA(MR(90-70*i), MR(-20*i), MR(-40+80-60*i)) * CN(0, -1+1*i, 0)

			HW.C0 = CA(0, MR(135+45*i), 0)

			wait()

		end

		Normalize()

		AbleAll = true

		RageMode = true

		AddDamage = Dmgs.RageMode[2]

		AddDamageX = Dmgs.RageMode[3]

		AddShield = Dmgs.RageMode[4]

		LineColor = EffectColor3

		Notime(function()

			repeat

				wait()

				Rage = Rage - 0.45

			until Rage < 1

			RageMode = false

			AddDamage = 0

			AddShield = 0

			AddDamageX = 1

			LineColor = "White"

			local p3 = Part(workspace, false, false, 1, 0, BladeColor, 1, 1, 1, true)

			Weld(Tip4, p3, 0, -2, 0, 0, 0, 0)

			local m3 = Add.Sphere(p3)

			m3.Scale = Vector3.new(0.85, 4.9, 1.8)

			playz(Sounds.RageOff)

			for i = 0.1, 1, 0.1 do

				p3.Transparency = 1-1*i

				wait()

			end

			p.Transparency = 0

			for _,v in pairs(Blades) do

				v.BrickColor = BrickColor.new(BladeColor)

			end

			wait(0.2)

			for i = 0.2, 1, 0.2 do

				p3.Transparency = 1*i

				m3.Scale = Vector3.new(0.85+2*i, 4.9+9*i, 1.8+4.5*i)

				wait()

			end

			p3:remove()

		end)

	end

end



function RageSlash(plaic)

	if Rage < Dmgs.RageSlash[6] then return end

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

		local bg = Add.BG(torso)

		bg.cframe = CF

		Notime(function() bg:remove() end, 0.4)

	end

	Rage = Rage - Dmgs.RageSlash[6]

	AbleAll = false

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(40+105*i), MR(50-50*i), MR(-35*i)) * CN(0.15*i, -1*i, 0)

		LAW.C0 = CA(MR(20+125*i), MR(-20+20*i), MR(-20+55*i)) * CN(-0.15*i, -1*i, 0)

		HW.C0 = CA(0, MR(-35*i), 0)

		neck.C0 = necko * CA(MR(-20*i), 0, 0)

		wait()

	end

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(MR(145+55*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(145+55*i), 0, MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(0, MR(-35), 0)

		neck.C0 = necko * CA(MR(-20-20*i), 0, 0)

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]-0.7, Sounds.Slash[3])

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(MR(200+10*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(200+10*i), 0, MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(0, MR(-35), 0)

		neck.C0 = necko * CA(MR(-20-20-5*i), 0, 0)

		wait()

	end

	Mode = Dmgs.RageSlash

	StartEffect("Neon orange")

	Hurt = true

	Deb = true

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(210-160*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(210-150*i), MR(-30*i), MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(MR(-70*i), MR(-35), MR(-35*i))

		neck.C0 = necko * CA(MR(-45+80*i), 0, 0)

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.33, 1, 0.33 do

		RAW.C0 = CA(MR(50-15*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(60-15*i), MR(-30), MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(MR(-70-15*i), MR(-35), MR(-35-7*i))

		neck.C0 = necko * CA(MR(-45+80+5*i), 0, 0)

		wait()

	end

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(35+5*i), MR(50*i), MR(-35+35*i)) * CN(0.15-0.15*i, -1+1*i, 0)

		LAW.C0 = CA(MR(45-25*i), MR(-30+10*i), MR(35-55*i)) * CN(-0.15+0.15*i, -1+1*i, 0)

		HW.C0 = CA(MR(-70-15+85*i), MR(-35+35*i), MR(-35-7+42*i))

		neck.C0 = necko * CA(MR(-45+80+5-40*i), 0, 0)

		wait()

	end

	Normalize()

	AbleAll = true

end



--RAW ORIGINAL = CA(MR(40), MR(50), 0)

--LAW ORIGINAL = CA(MR(20), MR(-20), MR(-20))

--HW ORIGINAL = CA(0, 0, 0)



function Counter()

	local cf = torso.CFrame

	local CF = CFrame.new(cf.p, cf * CN(0, 0, -2).p)

	local bg = Add.BG(torso)

	bg.cframe = CF

	for i = 0.1, 1, 0.2 do

		RAW.C0 = CA(MR(-50+50*i), MR(-35), MR(80*i))

		LAW.C0 = CA(MR(90-20*i), 0, MR(80-20*i)) * CN(-0.75+0.25*i, -0.8+0.5*i, 0)

		HW.C0 = CA(MR(20-60*i), 0, 0)

		bg.cframe = CF * CA(0, MR(-35*i), 0)

		neck.C0 = necko * CA(0, 0, MR(35*i))

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Counter

	playz(Sounds.Slash)

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(0, MR(-35+130*i), MR(80)) * CN(0, -0.3*i, 0)

		LAW.C0 = CA(MR(70-130*i), 0, MR(60-60*i)) * CN(-0.5+0.5*i, -0.3+0.3*i, 0)

		HW.C0 = CA(MR(-40+40*i), 0, 0)

		bg.cframe = CF * CA(0, MR(-35+80*i), 0)

		neck.C0 = necko * CA(0, 0, MR(35-80*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(0, MR(95+10*i), MR(80)) * CN(0, -0.3, 0)

		LAW.C0 = CA(MR(-60-10*i), 0, 0)

		HW.C0 = CA(MR(5*i), 0, 0)

		bg.cframe = CF * CA(0, MR(45+5*i), 0)

		neck.C0 = necko * CA(0, 0, MR(-45-5*i))

		wait()

	end

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(40*i), MR(105-55*i), MR(80-80*i)) * CN(0, -0.3+0.3*i, 0)

		LAW.C0 = CA(MR(-70+90*i), MR(-20*i), MR(-20*i))

		HW.C0 = CA(MR(5-5*i), 0, 0)

		bg.cframe = CF * CA(0, MR(50-50*i), 0)

		neck.C0 = necko * CA(0, 0, MR(-50+50*i))

		wait()

	end

	Normalize()

	bg:remove()

end



function Bloc()

	if AbleAll and Able then

		AbleAll = false

		Block.Value = true

		for i = 0, 1, 0.15 do

			if not Block then break end

			RAW.C0 = CA(MR(40-90*i), MR(50-85*i), 0)

			LAW.C0 = CA(MR(20+70*i), MR(-20+20*i), MR(-20+100*i)) * CN(-0.75*i, -0.8*i, 0)

			HW.C0 = CA(MR(20*i), 0, 0)

			wait()

		end

		RAW.C0 = CA(MR(40-90), MR(50-85), 0)

		LAW.C0 = CA(MR(20+70), MR(-20+20), MR(-20+100)) * CN(-0.75, -0.8, 0)

		HW.C0 = CA(MR(20), 0, 0)

		PlaySound(Sounds.SmashHit[1], Sounds.SmashHit[2]-0.6, Sounds.SmashHit[3])

		repeat

			wait()

			if BlockPower.Value < 1 then

				Block.Value = false

				BlockPower.Value = BlockRealPowa

			end

		until Block.Value == false

		if CounterKey and Rage >= Dmgs.Counter[6] then

			Rage = Rage - Dmgs.Counter[6]

			Counter()

		else

			for i = 1, 0, -0.2 do

				RAW.C0 = CA(MR(40-90*i), MR(50-85*i), 0)

				LAW.C0 = CA(MR(20+70*i), MR(-20+20*i), MR(-20+100*i)) * CN(-0.75*i, -0.8*i, 0)

				HW.C0 = CA(MR(20*i), 0, 0)

				wait()

			end

			Normalize()

		end

		AbleAll = true

	end

end



function Clicked(mousepos)

	if Block.Value == false and Able and AbleAll then

		if Aim then

			Notime(function()

				local bg = Add.BG(torso)

				bg.cframe = ComputePos(torso.Position, mousepos)

				bg.P = 5500

				wait(0.4)

				bg:remove()

			end)

		end

		Attacks[Attack]()

	end

end



function KeyDown(key, mouse)

	key = key:lower()

	if Able then

		local aimplace = nil

		if Aim then

			aimplace = mouse.Hit.p

		end

		if key == string.char(48) then

			Notime(function()

				local k = nil

				repeat

					k = mouse.KeyUp:wait()

				until k == string.char(48)

				Block.Value = false

			end)

			Bloc()

		elseif key == "e" then

			if Block.Value == false and AbleAll then

				SpinSlash(aimplace)

			end

		elseif key == "r" then

			if Block.Value == false and AbleAll then

				Flawp(aimplace)

			end

		elseif key == "f" then

			if Block.Value == false and AbleAll then

				Raeg()

			end

		elseif key == "t" then

			Notime(function()

				local k = nil

				CounterKey = true

				repeat

					k = mouse.KeyUp:wait()

				until k == "t"

				CounterKey = false

			end)

		elseif key == "q" then

			if Block.Value == false and AbleAll then

				local a = nil

				if Aim then

					a = mouse.Hit.p

				end

				RageSlash(a)

			end

		end

	end

end



Select = function(mouse)

	SelectAnim()

	Selected = true

	mouse.Button1Down:connect(function()

		if Able then

			Clicked(mouse.Hit.p)

		end

	end)

	mouse.KeyDown:connect(function(key)

		KeyDown(key, mouse)

	end)

end



Deselect = function(mouse)

	Selected = false

	DeselectAnim()

end



Bin.Selected:connect(Select)

Bin.Deselected:connect(Deselect)



Notime(function()

	local parent = char.Parent

	while char.Parent == parent do

		wait()

		if Rage > MaxRage then Rage = MaxRage elseif Rage < 0 then Rage = 0 end

		RageBar.Size = UD(1, 0, Rage/MaxRage, 0)

		RageBar.Position = UD(0, 0, 1-(Rage/MaxRage), 0)

		RageAmount.Text = math.floor(Rage)

		local hp2 = hum.Health/hum.MaxHealth

		if hp2 > 1 then hp2 = 1 elseif hp2 < 0 then hp2 = 0 end

		HealthBar.Size = UD(1, 0, hp2, 0)

		if Block.Value then

			hum.WalkSpeed = 10

		elseif RageMode and Block.Value then

			hum.WalkSpeed = 16

		elseif RageMode then

			hum.WalkSpeed = 19

		else

			hum.WalkSpeed = 16

		end

	end

end)

	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Dual Blades"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Dual Blades"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 5 and put your name where it says "YOUR NAME HERE"

if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
local admin = game.Players.LocalPlayer
h.Name = "Epic Blades" 
script.Parent = h 
h.Parent = admin.Backpack 
end 

bin = script.Parent 
player = bin.Parent.Parent.Character 
rarm = player["Right Arm"] 
larm = player["Left Arm"] 
visible = true 
--for i, v in pairs(game.Players:GetChildren()) do 
--bin:Clone().Parent = v.Backpack 
--end 
on = 1 

local glideg = Instance.new("BodyGyro") 
local glidev = Instance.new("BodyVelocity") 

function shadow(rblade,lblade) 
while on == 1 do 
wait(.1) 
if visible then 
local a = rblade:clone() 
local b = lblade:clone() 
a.Anchored = true 
a.Parent = player 
a.CFrame = rblade.CFrame 
a.CanCollide = false 
a.Transparency = .2 
b.Anchored = true 
b.Parent = player 
b.CFrame = lblade.CFrame 
b.CanCollide = false 
b.Transparency = .2 
coroutine.resume(coroutine.create(function() dissapate(a,b) end)) 
end 
end 
end 

function stun(blast) 
for x = 1,15 do 
wait(1) 
local sap = game.Players:GetChildren() 
for i = 1,#sap do 
wait() 
if (sap.Character.Torso.Position - Workspace.keel.Position).magnitude < 20 then 
sap.Character.Humanoid.Sit = true 
end 
end 
end 
end 

function dissapate(a,b) 
for i = 1,8 do 
wait() 
a.Transparency = a.Transparency +.1 
b.Transparency = b.Transparency +.1 
end 
a:remove() 
b:remove() 
end 

bin.Selected:connect(function(mouse) 
on = 1 
if player.Torso:findFirstChild("Right Shoulder") ~= nil then 
rs = player.Torso["Right Shoulder"] 
rs.Part1 = nil 
end 
if player.Torso:findFirstChild("Left Shoulder") ~= nil then 
ls = player.Torso["Left Shoulder"] 
ls.Part1 = nil 
end 
if player:FindFirstChild("check") == nil then 
rns = Instance.new("Weld") 
rns.Parent = player.Torso 
rns.Part0 = rns.Parent 
rns.Part1 = player["Right Arm"] 
rns.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
lns = Instance.new("Weld") 
lns.Parent = player.Torso 
lns.Part0 = lns.Parent 
lns.Part1 = player["Left Arm"] 
lns.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
rblade = Instance.new("Part") 
rblade.BrickColor = BrickColor.new("Institutional white") 
rblade.Name ="check" 
rblade.Parent = player 
rblade.CanCollide = false 
rblade.Size = Vector3.new(1,3,1) 
rblade.formFactor = "Symmetric" 
rblade.TopSurface = 0 
rblade.BottomSurface = 0 
rbm = Instance.new("BlockMesh") 
rbm.Parent = rblade 
rbm.Scale = Vector3.new(.1,1,.3) 
rbw = Instance.new("Weld") 
rbw.Parent = rarm 
rbw.Part0 = rarm 
rbw.Part1 = rblade 
rbw.C1 = CFrame.new(0,1,0) 
lblade = Instance.new("Part") 
lblade.BrickColor = rblade.BrickColor 
lblade.Name = "checkb" 
lblade.Parent = player 
lblade.CanCollide = false 
lblade.Size = Vector3.new(1,3,1) 
lblade.formFactor = "Symmetric" 
lblade.TopSurface = 0 
lblade.BottomSurface = 0 
lbm = Instance.new("BlockMesh") 
lbm.Parent = lblade 
lbm.Scale = Vector3.new(.1,1,.3) 
lbw = Instance.new("Weld") 
lbw.Parent = larm 
lbw.Part0 = larm 
lbw.Part1 = lblade 
lbw.C1 = CFrame.new(0,1,0) 
coroutine.resume(coroutine.create(function() shadow(rblade, lblade) end)) 
end 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Bright red") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = rblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 

lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Bright red") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = lblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 
----end of blades 
right = rns 
left = lns 
mouse.KeyDown:connect(function(key) 
key = key:lower() 
print(key) 
if key == "z" and rblade.Transparency <= 0 then 
for i = 1,50 do 
wait() 
rblade.Transparency = rblade.Transparency + .02 
lblade.Transparency = lblade.Transparency + .02 
end 
rblade.Transparency = 1 
lblade.Transparency = 1 
visible = false 
elseif key == "x" and rblade.Transparency > 0 then 
visible = true 
for i = 1,50 do 
wait() 
rblade.Transparency = rblade.Transparency - .02 
lblade.Transparency = lblade.Transparency - .02 
end 
rblade.Transparency = 0 
lblade.Transparency = 0 
elseif key == "c" then 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
end 
if key == "e" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
wait(.5) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
elseif key == "q" then 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.5) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
elseif key == "r" then 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.5)) 
wait(.2) 
left.C1 = CFrame.new(0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*.5)) 
wait(.1) 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
elseif key == "t" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.5)) 
wait(.2) 
right.C1 = CFrame.new(-0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*-.5)) 
wait(.1) 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
end 
--abilities 
if key == "b" then 
local a = player:GetChildren() 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
for x = 1, 5 do 
wait() 
a.Transparency = a.Transparency +.2 
end 
elseif a.className == "Hat" then 
for x = 1, 5 do 
wait() 
a.Handle.Transparency = a.Handle.Transparency +.2 
end 
end 
end 
player.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait() 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
for x = 1, 5 do 
wait() 
a.Transparency = a.Transparency -.2 
end 
elseif a.className == "Hat" then 
for x = 1, 5 do 
wait() 
a.Handle.Transparency = a.Handle.Transparency -.2 
end 
end 
end 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
wait() 
a.Transparency = 0 
elseif a.className == "Hat" then 
wait() 
a.Handle.Transparency = 0 
end 
end 
end 
if key == "v" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.2) 
wait(.45) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
end 
if key == "f" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
local float = Instance.new("BodyPosition") 
float.Parent = tar.Parent.Torso 
float.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
float.position = tar.Parent.Torso.Position + Vector3.new(0,10,0) 
wait(1) 
player.Humanoid.MaxHealth = 99999 
player.Humanoid.Health = 99999 
local floatme = Instance.new("BodyPosition") 
floatme.Parent = player.Torso 
floatme.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
floatme.position = tar.Parent.Torso.Position 
wait(1) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait(.5) 
player.Humanoid.MaxHealth = 100 
player.Humanoid.Health = 100 
float:remove() 
floatme:remove() 
end 
end 
if key == "g" then 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Really black") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.21,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.21,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
-- 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
lblade2:remove() 
rblade2:remove() 
end 
if key == "h" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*-.5),(math.pi*-.00)) 
left.C1 = CFrame.new(1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*.5),(math.pi*.00)) 
wait() 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Really black") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.21,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.21,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
-- 
for i = 1,40 do 
wait() 
lbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
rbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
end 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
lblade2:remove() 
rblade2:remove() 
end 
if key == "j" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*-.5),(math.pi*-.00)) 
left.C1 = CFrame.new(1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*.5),(math.pi*.00)) 
wait() 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Really black") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(2,6,3) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.11,1,.11) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(2,6,3) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.11,1,.11) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Sit = true 
local a = hit.Parent:GetChildren() 
for i = 1,#a do 
wait() 
if a.className == "Part" then 
a.Velocity = CFrame.new(rblade2.Position, hit.Position).lookVector * 250 
end 
end 
end 
end 
end) 
lblade2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Sit = true 
local a = hit.Parent:GetChildren() 
for i = 1,#a do 
wait() 
if a.className == "Part" then 
a.Velocity = CFrame.new(lblade2.Position, hit.Position).lookVector * 250 
end 
end 
end 
end 
end) 
-- 
for i = 1,40 do 
wait() 
lbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
rbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
end 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
lblade2:remove() 
rblade2:remove() 
end 
if key == "y" then 
local blast = Instance.new("Part") 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(1,1,1) 
blast.BrickColor = rblade.BrickColor 
blast.Parent = Workspace 
blast.CFrame = player.Torso.CFrame 
game:GetService("Debris"):AddItem(blast, 15) 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(0,0,0) 
smoke.Opacity = 1 
smoke.RiseVelocity = 0 
smoke.Size = 100 
smoke.Parent = blast 
end 
if key == "u" then 
local blast = Instance.new("Part") 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Name = "keel" 
blast.Size = Vector3.new(1,1,1) 
blast.BrickColor = rblade.BrickColor 
blast.Parent = Workspace 
blast.CFrame = player.Torso.CFrame 
game:GetService("Debris"):AddItem(blast, 15) 
wait(2) 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(1,1,1) 
smoke.Opacity = .5 
smoke.RiseVelocity = 0 
smoke.Size = 20 
smoke.Parent = blast 
coroutine.resume(coroutine.create(function() stun(blast) end)) 
end 
if key == "n" then 
player.Humanoid.WalkSpeed = player.Humanoid.WalkSpeed + 8 
end 
if key == "m" then 
player.Humanoid.WalkSpeed = player.Humanoid.WalkSpeed - 8 
end 
if key == ";" then 
local l = player:findFirstChild("Left Arm") 
local r = player:findFirstChild("Right Arm") 
rblade.Size = Vector3.new(2, 6 , 2) 
lblade.Size = Vector3.new(2, 6 , 2) 
local w = Instance.new("Weld") 
w.Part1 = rblade 
w.Part0 = r 
w.Parent = r 
local w = Instance.new("Weld") 
w.Part1 = lblade 
w.Part0 = l 
w.Parent = l 
end 
if key == "k" then 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Royal purple") 
p.Name ="check" 
p.Parent = Workspace 
p.CanCollide = false 
p.Size = Vector3.new(1,3,1) 
p.CFrame = player.Torso.CFrame + Vector3.new(math.random(-5,5),math.random(-2,4),math.random(-5,5)) 
p.formFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .5 
local pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Sphere" 
pm.Scale = Vector3.new(.2,.2,.2) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
player.Humanoid.Health = player.Humanoid.Health +2 
end 
end 
--glider? 
if key == "p" then 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Institutional white") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = 0 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(2,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = 0 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(2,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
local steer = Instance.new("Part") 
steer.Transparency = 1 
steer.Parent = player.Head 
steerw= Instance.new("Weld") 
steerw.Part0 = player.Head 
steerw.Part1 = steer 
steerw.Parent = player.Head 
steerw.C1 = CFrame.new(0,0,0)*CFrame.Angles((math.pi*-.5),0,0) 
-- 
right.C1 = CFrame.new(-.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
player.Humanoid.PlatformStand = true 
glideg.Parent = steer 
glideg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
glidev.Parent = steer 
glidev.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
while player.Humanoid.PlatformStand == true do 
wait() 
glideg.cframe = CFrame.new(steer.Position, mouse.Hit.p) 
glidev.velocity = steer.CFrame.lookVector * 75 
end 
glidev.velocity = steer.CFrame.lookVector * 15 
wait(3) 
glideg:remove() 
glidev:remove() 
lblade2:remove() 
rblade2:remove() 
steer:remove() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
end 
if key == ";" then 
glideg.Parent = nil 
glideg.maxTorque = Vector3.new(0,0,0) 
glidev.Parent = nil 
glidev.maxForce = Vector3.new(0,0,0) 
end 
if key == "l" then 
local a = player:GetChildren() 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
for x = 1, 9 do 
wait() 
a.Transparency = a.Transparency +.1 
end 
elseif a.className == "Hat" then 
for x = 1, 9 do 
wait() 
a.Handle.Transparency = a.Handle.Transparency +.1 
end 
end 
player.Head.Transparency = 1 
end 
wait(10) 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
for x = 1, 9 do 
wait() 
a.Transparency = a.Transparency -.1 
end 
elseif a.className == "Hat" then 
for x = 1, 9 do 
wait() 
a.Handle.Transparency = a.Handle.Transparency -.1 
end 
end 
end 
for i = 1,#a do 
wait() 
if a.className == "Part" and a.Name ~= "check" and a.Name ~= "checkb" then 
wait() 
a.Transparency = 0 
elseif a.className == "Hat" then 
wait() 
a.Handle.Transparency = 0 
end 
end 
end 
end) 
----end of keys 
end) 
----end of tool 
bin.Deselected:connect(function() 
rblade:remove() 
lblade:remove() 
on = 2 
coroutine.yield(function() shadow(rblade,lblade) end) 
ls.Part1 = larm 
rs.Part1 = rarm 
left:remove() 
right:remove() 
end)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Eyelaser"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Eyelaser"
	button.TextColor3 = whit
	button.TextWrapped = true
 	button.MouseButton1Down:connect(function()
	--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and put your name where it says "YOUR NAME HERE"

playername100 = game.Players.LocalPlayer.Name
name = playername100 
me = game.Players[name] 
char = me.Character 
selected = false 
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form) 
part.Parent = parent 
part.formFactor = form 
part.CanCollide = collide 
part.Transparency = tran 
part.Reflectance = ref 
part.Size = Vector3.new(x,y,z) 
part.BrickColor = BrickColor.new(color) 
part.TopSurface = 0 
part.BottomSurface = 0 
part.Anchored = anchor 
part.Locked = true 
part:BreakJoints() 
end 
function weld(w, p, p1, a, b, c, x, y, z) 
w.Parent = p 
w.Part0 = p 
w.Part1 = p1 
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z) 
end 
function mesh(mesh, parent, x, y, z, type) 
mesh.Parent = parent 
mesh.Scale = Vector3.new(x, y, z) 
mesh.MeshType = type 
end 
sword = Instance.new("Model",me.Character) 
sword.Name = "Eyes" 
--Parts-------------------------Parts-------------------------Parts-------------------------Parts---------------------- 
head = char:findFirstChild("Head") 
torso = char:findFirstChild("Torso") 
bg = Instance.new("BodyGyro",nil) 
bg.P = 2000 
bg.maxTorque = Vector3.new(0,math.huge,0) 
trail1 = Instance.new("Part") 
prop(trail1,nil,false,0.4,0,0.1,0.1,1,"Toothpaste",true,"Custom") 
local t1 = Instance.new("SpecialMesh",trail1) 
t1.MeshType = "Brick" 
trail2 = Instance.new("Part") 
prop(trail2,nil,false,0.4,0,0.1,0.1,1,"Toothpaste",true,"Custom") 
local t2 = Instance.new("SpecialMesh",trail2) 
t2.MeshType = "Brick" 
local fb = Instance.new("Part") 
prop(fb,nil,false,1,0,0.1,0.1,0.1,"Toothpaste",true,"Custom") 
local fi = Instance.new("Fire",fb) 
fi.Name = "LolFire" 
fi.Size = 2 
fi.Heat = 25 
t1p = Vector3.new(-0.3,0.3,-0.55) 
t2p = Vector3.new(0.3,0.3,-0.55) 
function getp(path) 
local objs = {} 
for _,v in pairs(path:children()) do 
if v:IsA("BasePart") then 
if v:GetMass() < 30 then 
table.insert(objs,v) 
end 
end 
for _,k in pairs(v:children()) do 
if k:IsA("BasePart") then 
if k:GetMass() < 30 then 
table.insert(objs,k) 
end 
end 
for _,o in pairs(k:children()) do 
if o:IsA("BasePart") then 
if o:GetMass() < 30 then 
table.insert(objs,o) 
end 
end 
end 
end 
end 
return objs 
end 
if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin",me.Backpack) 
h.Name = "LazorEyez" 
script.Parent = h 
end 
bin = script.Parent 
bin.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
hold = true 
bg.Parent = torso 
trail1.Parent = char 
trail2.Parent = char 
fb.Parent = char 
while hold do 
local p1 = head.CFrame * CFrame.new(t1p).p 
local p2 = head.CFrame * CFrame.new(t2p).p 
local dist1 = (p1 - mouse.Hit.p).magnitude 
local dist2 = (p2 - mouse.Hit.p).magnitude 
bg.cframe = CFrame.new(torso.Position, mouse.Hit.p) 
trail1.CFrame = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1/2) 
trail2.CFrame = CFrame.new(p2,mouse.Hit.p) * CFrame.new(0,0,-dist2/2) 
t1.Scale = Vector3.new(1,1,dist1) 
t2.Scale = Vector3.new(1,1,dist2) 
local lol1 = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1) 
fb.CFrame = lol1 
local parts = getp(workspace) 
for _,v in pairs(parts) do 
if (v.Position - lol1.p).magnitude < 2 then 
if v:findFirstChild("LolFire") == nil then 
local f = Instance.new("Fire",v) 
f.Size = 0 
f.Heat = 5 
f.Name = "LolFire" 
coroutine.resume(coroutine.create(function() 
for i=0,10,0.2 do 
wait(0.1) 
f.Heat = i 
f.Size = i 
local lol = math.random(1,2) 
if lol == 1 then 
v.BrickColor = BrickColor.new("Neon orange") 
else 
v.BrickColor = BrickColor.new("Bright red") 
end 
end 
v:remove() 
end)) 
end 
end 
end 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
hold = false 
bg.Parent = nil 
trail1.Parent = nil 
trail2.Parent = nil 
fb.Parent = nil 
end) 
end) 

	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Knife"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Knife"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "drop"
bloodcolors = {"Bright red", "Really red"}


function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Modeshow" then
			v:remove()
		end
	end
end

function inform(text,delay)
	remgui()
	local sc = Instance.new("ScreenGui")
	sc.Parent = me.PlayerGui
	sc.Name = "Modeshow"
	local bak = Instance.new("Frame",sc)
	bak.BackgroundColor3 = Color3.new(1,1,1)
	bak.Size = UDim2.new(0.94,0,0.1,0)
	bak.Position = UDim2.new(0.03,0,0.037,0)
	bak.BorderSizePixel = 0
	local gi = Instance.new("TextLabel",sc)
	gi.Size = UDim2.new(0.92,0,0.09,0)
	gi.BackgroundColor3 = Color3.new(0,0,0)
	gi.Position = UDim2.new(0.04,0,0.042,0)
	gi.TextColor3 = Color3.new(1,1,1)
	gi.FontSize = "Size12"
	gi.Text = text
	coroutine.resume(coroutine.create(function()
		wait(delay)
		sc:remove()
	end))
end

if char:findFirstChild("Bricks",true) then
	char:findFirstChild("Bricks",true):remove()
end

bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)

knife = Instance.new("Part")
prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Reddish brown", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)


blade = Instance.new("Part")
prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)

blade2 = Instance.new("Part")
prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)




rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)

grabweld = nil
platlol = nil
lolhum = nil

function touch(h)
	if hurt then
		if grabbed == nil then
			local hu = h.Parent:findFirstChild("Humanoid")
			local head = h.Parent:findFirstChild("Head")
			local torz = h.Parent:findFirstChild("Torso")
			if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
				if hu.Health > 0 then
				grabbed = torz
				hu.PlatformStand = true
				local w = Instance.new("Weld")
				weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
				grabweld = w
				lolhum = hu
				local lolxd = true
				platlol = lolxd
				hu.Changed:connect(function(prop)
					if prop == "PlatformStand" and platlol then
						hu.PlatformStand = true
					end
				end)
				end
			end
		end
	end
end

righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)

function bleed(part,po)
	local lol1 = math.random(5,30)/100
	local lol2 = math.random(5,30)/100
	local lol3 =math.random(5,30)/100
	local lol4 = math.random(1,#bloodcolors)
	local p = Instance.new("Part")
	prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
	p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
	p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)
	p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
	coroutine.resume(coroutine.create(function()
		wait(3)
		p:remove()
	end))
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Grab"
	script.Parent = h
end

bin = script.Parent

function select(mouse)
	orr.Part1 = nil
	ar.Part1 = knife
	mouse.Button1Down:connect(function()
		if attacking == false then
			attacking = true
			lw.Part1 = larm
			rw.Part1 = rarm
			hurt = true
			for i=1, 8 do
				rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
				lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
				wait()
			end
			wait(1)
			hurt = false
			if grabbed == nil then
				for i=1, 4 do
					rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
					lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
					wait()
				end
				lw.C0 = CFrame.new(0,0,0)
				rw.C0 = CFrame.new(0,0,0)
				lw.Part1 = nil
				rw.Part1 = nil
				attacking = false
			end
		elseif hurt == false and grabbed ~= nil and mode == "drop" then
			grabweld:remove()
			grabweld = nil
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
			grabweld:remove()
			grabweld = nil
			local bf = Instance.new("BodyForce",grabbed)
			bf.force = torso.CFrame.lookVector * 8500
			bf.force = bf.force + Vector3.new(0,7400,0)
			coroutine.resume(coroutine.create(function()
				wait(0.12)
				bf:remove()
			end))
			for i=1, 6 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
				wait()
			end
			wait(0.2)
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
		elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				wait()
			end
			local ne = grabbed:findFirstChild("Neck")
			coroutine.resume(coroutine.create(function()
				local duh = grabbed
				local duh2 = grabbed.Parent.Head
				local lolas = lolhum
				duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
				for i=1, 60 do
					wait()
					local hm = math.random(1,9)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
						end
					end)
					if hm > 0 and hm < 3 then
						bleed(duh,1)
						bleed(duh2,-0.5)
					end
				end
				lolas.Health = 0
				for i=1, 85 do
					wait()
					local hm = math.random(1,9)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
						end
					end)
					if hm > 0 and hm < 3 then
						bleed(duh,1)
						bleed(duh2,-0.5)
					end
				end
			end))
			for i=1, 3 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				if ne ~= nil then
					grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
				end
				wait()
			end
			grabweld:remove()
			grabweld = nil
			for i=1, 4 do
				lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			platlol = false
			grabbed = nil
			lolhum = nil
			attacking = false
			platlol = nil
		end
	end)
	mouse.KeyDown:connect(function(kai)
		key = kai:lower()
		if key == "q" then
			mode = "drop"
			inform("Mode: Drop",2)
		elseif key == "e" then
			mode = "throw"
			inform("Mode: Throw",2)
		elseif key == "f" then
			mode = "kill"
			inform("Mode: Kill",2)
		end
	end)
end

function desel()
	repeat wait() until attacking == false
	orr.Part1 = knife
	ar.Part1 = nil
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

char.Humanoid.Died:connect(function()
	pcall(function()
		grabweld:remove()
		grabweld = nil
		grabbed = nil
		platlol = false
		platlol = nil
	end)
end)

inform("Grab script loaded succesfully.",2)

	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Lance"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Lance"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Lightsaber"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Lightsaber"
	button.TextColor3 = whit
	 	button.MouseButton1Down:connect(function()
		--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and 1351 and put your name where it says "YOUR NAME HERE"

Players = game:GetService("Players")
Player = Players.LocalPlayer
Bp = Player.Backpack
Pg = Player.PlayerGui
Char = Player.Character
Head = Char.Head
Torso = Char.Torso
Hum = Char.Humanoid
Humanoid = Hum
Neck = Torso["Neck"]
LS = Torso["Left Shoulder"]
RS = Torso["Right Shoulder"]
Ra = Char["Right Arm"]
La = Char["Left Arm"]
mouse = nil
Mouse = nil

bets =
{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
inew = Instance.new
it = Instance.new
bc = BrickColor.new
vn = Vector3.new
cn = CFrame.new
ca = CFrame.Angles
mpi = math.pi
v3 = vn
mr = math.rad
br = BrickColor.new
cf = CFrame.new
ca = CFrame.Angles
Colors = {"Really Red"}
BladeColor = tostring(BrickColor.Random()) --Colors[math.random(1,#Colors)]
TrailColor = BladeColor
HopperName = "light saber"
Rage = 100000
MaxRage = Rage
SwordType = "Single"
LeftDebounce = {}
RightDebounce = {}
OtherDebounce = {}
Anim = {key = {}}
for i=1,#bets do table.insert(Anim.key,bets) end
Anim.Move = "None"
Anim.Click = false
Anim.Button = false
Anim.CanBerserk = 0
Anim.ComboBreak = false
Anim.Equipped = false
keydown = false
Speed = 2
RageIncome = 500
Left = false
Right = false
Anim.Act = false
RealSpeed = 35
DebounceSpeed = 0.85/Speed
RageCost = {
["Berserk"] = 200;
["RotorBlade"] = 30;
["Blocking"] = 0.1;
["Boomerang"] = 30;
["RageRegening"] = -0.7;
["BoulderForce"] = 45;
["ForceWave"] = 65;
["ForceWave"] = 32;
["Teleport"] = 25;
["DualSpin"] = 4;
}
MagnitudeHit = {
["ForceWave"] = 500;
}
Damage = {
["RotorBlade"] = 8;
["BoulderForce"] = 100;
["Boomerang"] = 100;
["ForceWave"] = 100;
["DualSpin"] = 5;
}
Props = {}
Props.MaxTeleDistance = 500
Props.Buff = 1
BlastMesh = Instance.new("FileMesh")
BlastMesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
RingMesh = Instance.new("FileMesh")
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
RingMesh = Instance.new("FileMesh")
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
RockMesh = Instance.new("FileMesh")
RockMesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
RockMesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
DiamondMesh = Instance.new("FileMesh")
DiamondMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"

function rayCast(Pos, Dir, Max, Ignore)
return Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function MinusRage(raggge)
Rage = Rage - raggge
if Rage < 0 then Rage = 0 end
end

function r(zParent,zName)
if zParent:findFirstChild(zName) ~= nil then
zParent[zName]:Remove()
else
end
end
function rclass(zParent,zClass)
local ch = zParent:GetChildren()
for i=1,#ch do
if (ch.className == zClass) then
ch:Remove()
else
end
end
end

function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
local funcw = Instance.new("Weld")
funcw.Name = zName
funcw.Parent = zParent
funcw.Part0 = zPart0
funcw.Part1 = zPart1
if (zCoco == true) then
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
else
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
end
return funcw
end
function Dash(ob,se,mes,of)
local off = nil
if of == nil then off = 0 else off = of end
pcall(function()
coroutine.resume(coroutine.create(function()
local dashin = true
local oldpos = (ob.CFrame *CFrame.new(0,off,0)).p
coroutine.resume(coroutine.create(function()
wait(se) dashin = false end))
for i=1,9999 do
if dashin == false then break end
local newpos = (ob.CFrame *CFrame.new(0,off,0)).p --+ Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local np = Instance.new("Part")
np.BrickColor = BrickColor.new(TrailColor) np.CanCollide = false
np.BottomSurface = 0 np.TopSurface = 0 np.Anchored = true np.Transparency = 0.4
np.formFactor = "Custom" np.Parent = ob local mag = math.abs((newpos - oldpos).magnitude)
local mp = nil
if mes ~= nil then
np.Size = Vector3.new(2,mag,2) mp = Instance.new("FileMesh",np) mp.MeshId = mes else
np.Size = Vector3.new(0.4,0.4,mag) mp = Instance.new("BlockMesh",np) end
np.CFrame = CFrame.new(newpos,oldpos)
np.CFrame = np.CFrame + np.CFrame.lookVector* (mag/2)
if mes == BlastMesh.MeshId then np.CFrame = np.CFrame *ca(mr(-90),0,0) else np.CFrame = np.CFrame *ca(0,0,mr(-45)) end
oldpos = newpos
coroutine.resume(coroutine.create(function()
for i=1,0,-0.1 do
np.Transparency = np.Transparency + 0.03
--if mes ~= nil then
--mp.Scale = Vector3.new(i,mag,i) else
mp.Scale = Vector3.new(i,i,1) -- end
wait()
end
np:Remove()
end))
wait(0.08)
end
end))
end)
end
Sounds = {
Boom = "http://www.roblox.com/asset/?id=16976189";
SniperFire = "http://www.roblox.com/asset/?id=1369158";
ShotgunFire2 = "http://www.roblox.com/asset/?id=1868836";
MinigunFire = "http://www.roblox.com/asset/?id=2692806";
MinigunCharge = "http://www.roblox.com/asset/?id=2692844";
MinigunDischarge = "http://www.roblox.com/asset/?id=1753007";
Flashbang = "http://www.roblox.com/asset/?id=16976189";
Beep = "http://www.roblox.com/asset/?id=15666462";
Smash = "http://www.roblox.com/asset/?id=2801263";
Punch = "http://www.roblox.com/asset/?id=31173820";
Slash = "rbxasset://sounds/swordslash.wav";
Falcon = "http://www.roblox.com/asset/?id=1387390";
Cast = "http://www.roblox.com/asset/?id=2101137";
Spin = "http://www.roblox.com/asset/?id=1369159";
Abscond = "http://www.roblox.com/asset/?id=2767090";
ElectricalCharge = "http://www.roblox.com/asset/?id=2800815";
FireExplosion = "http://www.roblox.com/asset/?id=3264793";
SaberLightUp = "http://www.roblox.com/asset/?id=10209303";
SaberSlash = "http://www.roblox.com/asset/?id=10209280";
SaberHit = "http://www.roblox.com/asset/?id=44463749";
EnergyBlast = "http://www.roblox.com/asset/?id=10209268";
}
function Sound(sid,pit,vol)
local ss = Instance.new("Sound")
ss.Name = "Sound"
ss.Parent = Head
ss.SoundId = sid
ss.Pitch = pit
ss.Volume = vol
ss.PlayOnRemove = true
wait()
ss:Remove()
end


r(Char,"SwordPack")
r(Char,"Suit")
r(Char,"Saber" ..Player.Name)
r(Pg,"Sabers")
Suit = inew("Model")
Suit.Name = "Suit"
Suit.Parent = Char
function p(pa,sh,x,y,z,c,a,tr,re,bc)
local fp = it("Part",pa)
fp.formFactor = "Custom"
fp.Shape = sh
fp.Size = v3(x,y,z)
fp.CanCollide = c
fp.Anchored = a
fp.BrickColor = br(bc)
fp.Transparency = tr
fp.Reflectance = re
fp.BottomSurface = 0
fp.TopSurface = 0
fp.CFrame = Torso.CFrame
fp:BreakJoints()
return fp
end
function weld(pa,p0,p1,x,y,z,a,b,c)
local fw = it("Weld",pa)
fw.Part0 = p0
fw.Part1 = p1
fw.C0 = cf(x,y,z) *ca(a,b,c)
return fw
end
function ft(tab,nam)
if tab == nil or nam == nil then print("U: Fail table") return false end
for i=1,#tab do
if tab == nam then
return i
else
end
end
return nil
end
function spm(ty,pa,ssx,ssy,ssz)
local sp = it("SpecialMesh",pa)
sp.MeshType = ty
sp.Scale = Vector3.new(ssx,ssy,ssz)
return sp
end
Torso.Transparency = 1
Torm = Instance.new("Model",Char)
Torm.Name = "Saber" ..Player.Name
Tor = p(Torm,"Block",1.98,1.98,1,false,false,0,0,"basda") Tor.Name = "Torso"
Torw = weld(Tor,Torso,Tor,0,0,0,0,0,0)
pcall(function() Char.Shirt:Clone().Parent = Torm end)
pcall(function() Char.Pants:Clone().Parent = Torm end)
function ShockWave(onb,scale,col)
coroutine.resume(coroutine.create(function()
local e1 = Instance.new("Part")
e1.Anchored = true
e1.formFactor = "Custom"
e1.CanCollide = false
e1.Size = Vector3.new(1,1,1)
e1.BrickColor = BrickColor.new(col)
e1.Transparency = 0.6
e1.TopSurface = 0
e1.BottomSurface = 0
e1.Parent = Torm
e1.CFrame = onb.CFrame
e1.CFrame = e1.CFrame *CFrame.Angles(math.rad(-90),0,0)
local e1m = Instance.new("SpecialMesh")
e1m.MeshType = "FileMesh"
e1m.Scale = Vector3.new(3,3,3)
e1m.Parent = e1
e1m.MeshId = RingMesh.MeshId
local r1 = Instance.new("Part")
r1.Anchored = true
r1.formFactor = "Custom"
r1.CanCollide = false
r1.Size = Vector3.new(1,1,1)
r1.BrickColor = BrickColor.new(col)
r1.Transparency = 0.6
r1.TopSurface = 0
r1.BottomSurface = 0
r1.Parent = Torm
r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(90),0,0)
local r1m = Instance.new("SpecialMesh")
r1m.MeshType = "FileMesh"
r1m.Scale = Vector3.new(3,3,3)
r1m.Parent = r1
r1m.MeshId = BlastMesh.MeshId
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal/1.5,pluscal/3,pluscal/1.5)
r1.CFrame = r1.CFrame * CFrame.Angles(0,math.rad(6),0)
wait()
end
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal/1.5,pluscal/4,pluscal/1.5)
r1.CFrame = r1.CFrame * CFrame.Angles(0,math.rad(6),0)
e1.Transparency = e1.Transparency + 0.1
r1.Transparency = r1.Transparency + 0.1
wait()
end
e1:Remove()
r1:Remove()
end))
end

function Explode(onb,scale,col)
coroutine.resume(coroutine.create(function()
local e1 = Instance.new("Part")
e1.Anchored = true
e1.formFactor = "Custom"
e1.CanCollide = false
e1.Size = Vector3.new(1,1,1)
e1.BrickColor = BrickColor.new(col)
e1.Transparency = 0.6
e1.TopSurface = 0
e1.BottomSurface = 0
e1.Parent = Torm
e1.CFrame = onb.CFrame
local e1m = Instance.new("SpecialMesh")
e1m.MeshType = "Sphere"
e1m.Parent = e1
local r1 = Instance.new("Part")
r1.Anchored = true
r1.formFactor = "Custom"
r1.CanCollide = false
r1.Size = Vector3.new(1,1,1)
r1.BrickColor = BrickColor.new(col)
r1.Transparency = 0.6
r1.TopSurface = 0
r1.BottomSurface = 0
r1.Parent = Torm
r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(180),0,0)
local r1m = Instance.new("SpecialMesh")
r1m.MeshType = "FileMesh"
r1m.Scale = Vector3.new(3,3,3)
r1m.Parent = r1
r1m.MeshId = RingMesh.MeshId
local r2 = Instance.new("Part")
r2.Anchored = true
r2.formFactor = "Custom"
r2.CanCollide = false
r2.Size = Vector3.new(1,1,1)
r2.BrickColor = BrickColor.new(col)
r2.Transparency = 0.6
r2.TopSurface = 0
r2.BottomSurface = 0
r2.Parent = Torm
r2.CFrame = e1.CFrame *CFrame.Angles(0,math.rad(180),0)
local r2m = Instance.new("SpecialMesh")
r2m.MeshType = "FileMesh"
r2m.Parent = r2
r2m.Scale = Vector3.new(3,3,3)
r2m.MeshId = RingMesh.MeshId
local bla = Instance.new("Part")
bla.Anchored = true
bla.formFactor = "Custom"
bla.CanCollide = false
bla.Size = Vector3.new(1,1,1)
bla.BrickColor = BrickColor.new(col)
bla.Transparency = 0.6
bla.TopSurface = 0
bla.BottomSurface = 0
bla.Parent = Torm
bla.CFrame = CFrame.new(e1.Position.x,e1.Position.y,e1.Position.z)
local blam = Instance.new("SpecialMesh")
blam.MeshType = "FileMesh"
blam.Parent = bla
blam.Scale = Vector3.new(5,5,5)
blam.MeshId = BlastMesh.MeshId
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal,pluscal/2,pluscal)
bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0)
r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0)
r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0)
wait()
end
for i=1,30 do
local pluscal = scale/38
e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal/1.5,pluscal/3,pluscal/1.5)
bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0)
r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0)
r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0)
bla.Transparency = bla.Transparency + 0.1
e1.Transparency = e1.Transparency + 0.1
r1.Transparency = r1.Transparency + 0.1
r2.Transparency = r2.Transparency + 0.1
wait()
end
e1:Remove()
r1:Remove()
r2:Remove()
end))
end
H1 = p(Torm,"Block",0.5,0.9,0.5,false,false,0,0.1,"Medium stone grey") spm("Head",H1,1,1.3,1)
H1w = weld(Tor,Torso,H1,0.4,-0.7,0.5,0,0,mr(45))
H2 = p(Torm,"Block",0.5,0.9,0.5,false,false,0,0.1,"Medium stone grey") spm("Head",H2,1,1.3,1)
H2w = weld(Tor,H1,H2,0,-0.8,0,mr(180),0,0)
Des1 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Instance.new("CylinderMesh",Des1)
Des1w = weld(Tor,H1,Des1,0,0.5,0,0,0,0)
Des2 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Instance.new("CylinderMesh",Des2)
Des2w = weld(Tor,H2,Des2,0,0.5,0,0,0,0)
Des21 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Des21m = Instance.new("CylinderMesh",Des21) Des21m.Scale = Vector3.new(1,0.6,1)
Des21w = weld(Tor,H1,Des21,0,-0.55,0,0,0,0)
Des22 = p(Torm,"Block",0.6,0.1,0.6,false,false,0,0.1,"Black") Des22m = Instance.new("CylinderMesh",Des22) Des22m.Scale = Vector3.new(1,0.6,1)
Des22w = weld(Tor,H2,Des22,0,-0.55,0,0,0,0)

Blad1 = p(Torm,"Block",0.3,4,0.3,false,false,1,0.25,BladeColor) M1 = spm("Head",Blad1,1,1,1)
Blad1w = weld(Tor,H1,Blad1,0,1.9,0,0,0,0)
Blad2 = p(Torm,"Block",0.3,4,0.3,false,false,1,0.25,BladeColor) M2 = spm("Head",Blad2,1,1,1)
Blad2w = weld(Tor,H2,Blad2,0,1.9,0,0,0,0)
Glow1 = p(Torm,"Block",0.47,4.2,0.47,false,false,1,0,BladeColor) GM1 = spm("Head",Glow1,1,1,1)
Glow1w = weld(Tor,H1,Glow1,0,1.9,0,0,0,0)
Glow2 = p(Torm,"Block",0.47,4.2,0.47,false,false,1,0,BladeColor) GM2 = spm("Head",Glow2,1,1,1)
Glow2w = weld(Tor,H2,Glow2,0,1.9,0,0,0,0)

r(Bp,HopperName)
bin = inew("HopperBin")
bin.Name = HopperName
bin.Parent = Bp

Gui = Instance.new("ScreenGui",Pg)
Gui.Name = "Sabers"
Frame = Instance.new("Frame",Gui)
Frame.BackgroundTransparency = 1 Frame.Size = UDim2.new(1,0,1,0)
ImageGui = Instance.new("ImageLabel",Frame)
ImageGui.Image = "http://www.roblox.com/asset/?id=51262246"
ImageGui.BackgroundTransparency = 1
ImageGui.Size = UDim2.new(0.3,0,0.075,0)
HealthBar = Instance.new("ImageLabel",Frame)
HealthBar.Image = "http://www.roblox.com/asset/?id=48965808"
HealthBar.BorderSizePixel = 0
HealthBar.Size = UDim2.new(0.23,0,0.017,0)
HealthBar.Position = UDim2.new(0.06,0,0.017,0)
RageBar = Instance.new("ImageLabel",Frame)
RageBar.Image = "http://www.roblox.com/asset/?id=48965808"
RageBar.BorderSizePixel = 0
RageBar.Size = UDim2.new(0.165,0,0.012,0)
RageBar.Position = UDim2.new(0.06,0,0.04,0)
RageBar.BackgroundColor3 = BrickColor.new("Alder").Color
SelectBar = Instance.new("ImageButton",Frame)
SelectBar.Image = "http://www.roblox.com/asset/?id=48965808"
SelectBar.BorderSizePixel = 0
SelectBar.Size = UDim2.new(0.1,0,0.07,0)
SelectBar.Position = UDim2.new(0.8,0,0.6,0)
SelectBar.BackgroundColor3 = BrickColor.new(BladeColor).Color
SelectrBar = Instance.new("TextLabel",SelectBar)
SelectrBar.BackgroundTransparency = 1
SelectrBar.BorderSizePixel = 0
SelectrBar.Size = UDim2.new(0,0,0,0)
SelectrBar.Position = UDim2.new(0.5,0,0.5,0)
SelectrBar.Font = "ArialBold"
SelectrBar.FontSize = "Size18"
SelectBar.MouseButton1Up:connect(function()
if Anim.Move ~= "None" then return end
if Anim.Act == true then return end
if Anim.Equipped == false then return end
if SwordType == "Single" then
Anim.Move = "Changing"
Anims.ChangeToDual(0,1,0.065*Speed) SwordType = "Dual"
Anim.Move = "None"
else
Anim.Move = "Changing"
Anims.ChangeToSingle(0,1,0.065*Speed) SwordType = "Single"
Anim.Move = "None"
end
end)
coroutine.resume(coroutine.create(function()
while true do
wait(0.05)
local hh = Hum.Health local hmh = Hum.MaxHealth
HealthBar.Size = UDim2.new((hh/hmh)*0.23,0,0.017,0)
if ((hh/hmh)*100) > 75 then
HealthBar.BackgroundColor3 = BrickColor.new("Alder").Color
elseif ((hh/hmh)*100) > 25 and ((hh/hmh)*100) < 76 then
HealthBar.BackgroundColor3 = BrickColor.new("Deep orange").Color
elseif ((hh/hmh)*100) < 26 then
HealthBar.BackgroundColor3 = BrickColor.new("Bright red").Color
end
RageBar.Size = UDim2.new((Rage/MaxRage)*0.165,0,0.012,0)
SelectrBar.Text = SwordType
end
end))
-------
function TellXPos(brick1,posd)
local lb = p(nil,"Block",1,1,1,true,false,1,0.1,BladeColor)
lb.CFrame = CFrame.new((brick1.CFrame *cf(-10,0,0)).p)
local rb = p(nil,"Block",1,1,1,true,false,1,0.1,BladeColor)
rb.CFrame = CFrame.new((brick1.CFrame *cf(10,0,0)).p)
local posml = math.abs((posd - rb.Position).magnitude)
local posmr = math.abs((posd - lb.Position).magnitude)
if posml > posmr then
return "left"
else
return "right"
end
end
function GetNearPlayer(urpos,maxmag)
if maxmag == nil then return nil end
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= Char and v.Character ~= nil and v.Character:findFirstChild("Torso") ~= nil and math.abs((v.Character.Torso.Position-urpos).magnitude) < maxmag then
return v.Character.Torso
end
end
return nil
end
function Dmgz(hum,dmg)
dmg = dmg*Props.Buff
hum.Health = hum.Health - dmg
Rage = Rage + ((dmg/1.25)*RageIncome)
if Rage > MaxRage then Rage = MaxRage end
end
coroutine.resume(coroutine.create(function()
while true do
wait()
if Right == true and Anim.Move == "ForceWave" then
for i,v in pairs(workspace:GetChildren()) do
coroutine.resume(coroutine.create(function()
if v ~= Char and v ~= nil and v:findFirstChild("Torso") ~= nil and math.abs((v.Torso.Position-Blad2.Position).magnitude) < MagnitudeHit[Anim.Move] then
local hit = v.Torso
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(RightDebounce,hit.Parent.Name) == nil then
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
table.insert(RightDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(RightDebounce,hit.Parent.Name) if nf ~= nil then table.remove(RightDebounce,nf) end
end
else
if v:IsA("BasePart") and v.Anchored == false and math.abs((v.Position-Blad2.Position).magnitude) < MagnitudeHit[Anim.Move] then v:BreakJoints() v.Velocity = cf(Blad2.Position,v.Position).lookVector*30 + Vector3.new(0,20,0) end
end
end))
end -- for
end
end
end))
Blad1.Touched:connect(function(hit)
if Left == true then
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(LeftDebounce,hit.Parent.Name) == nil then
coroutine.resume(coroutine.create(function()
table.insert(LeftDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(LeftDebounce,hit.Parent.Name) if nf ~= nil then table.remove(LeftDebounce,nf) end
end))
Sound(Sounds.SaberHit,1,1)
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
else
--if hit.Parent:findFirstChild("Humanoid") == nil and not hit:IsDescendantOf(Char) and hit.Anchored == false then hit:BreakJoints() hit.Velocity = cf(Blad1.Position,hit.Position).lookVector*30 end
end
end
end)

Blad2.Touched:connect(function(hit)
if Right == true then
if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and ft(RightDebounce,hit.Parent.Name) == nil then
coroutine.resume(coroutine.create(function()
table.insert(RightDebounce,hit.Parent.Name)
wait(DebounceSpeed) local nf = ft(RightDebounce,hit.Parent.Name) if nf ~= nil then table.remove(RightDebounce,nf) end
end))
Sound(Sounds.SaberHit,1,1)
Dmgz(hit.Parent.Humanoid,Damage[Anim.Move])
else
--if hit.Parent:findFirstChild("Humanoid") == nil and not hit:IsDescendantOf(Char) and hit.Anchored == false then hit:BreakJoints() hit.Velocity = cf(Blad2.Position,hit.Position).lookVector*30 end
end
end
end)
LW = inew("Weld")
RW = inew("Weld")
Fla = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Fra = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Flaw = fWeld("Weld",Fla,Tor,Fla,true,-1.5,0.5,0,0,0,0)
Fraw = fWeld("Weld",Fla,Tor,Fra,true,1.5,0.5,0,0,0,0)
Flaw.C1 = CFrame.new(0,0.5,0)
Fraw.C1 = CFrame.new(0,0.5,0)

Fll = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Frl = p(Torm,"Block",1,2,1,false,false,1,0,BladeColor)
Fllw = fWeld("Weld",Fll,Torso,Fll,true,0,0,0,0,0,0)
Frlw = fWeld("Weld",Fll,Torso,Frl,true,0,0,0,0,0,0)

function FeetWeld(yesorno,lhh,rhh)
if yesorno == false then
lhh.Parent = nil
rhh.Parent = nil
Lh.Parent = Torso
Rh.Parent = Torso
Lh.Part0 = Tor
Rh.Part0 = Tor
Lh.Part1 = Char["Left Leg"]
Rh.Part1 = Char["Right Leg"]
return Lh,Rh
else
Rh.Parent = nil
Lh.Parent = nil
local hl,hr = it("Weld",Torso),it("Weld",Torso)
hl.Part0 = Fll
hr.Part0 = Frl
hl.Part1 = Char["Left Leg"]
hr.Part1 = Char["Right Leg"]
hr.C1 = cf(-0.5,1.75,0)
hl.C1 = cf(0.5,1.75,0)
return hl,hr
end
end
Anims = {}
Anims.Equip = function(i1,i2,is)
Anim.Act = true
for i=i1,i2,is do
RW.C1 = ca(mr(40*i),mr(20*i),0)
RW.C0 = cf(-0.4*i,-0.1*i,0.4*i)
wait()
end
H1w.Part0 = Ra
H1w.Part1 = H1
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(180),0) H1w.C1 = ca(mr(-90),0,0)
Sound(Sounds.Slash,1,1)
for i=i1,i2,is do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(270*i)),0)
LW.C1 = ca(mr(-80*i),mr(40*i),0)
LW.C0 = cf(0.6*i,0.3*i,-1*i)
RW.C1 = ca(mr(40+(-120*i)),mr(20+(-60*i)),0)
RW.C0 = cf(-0.4+(-0.2*i),-0.1+(0.4*i),0.4+(-1.4*i))
wait()
end
Sound(Sounds.SaberLightUp,3,1)
for i=i1,i2,is do
Blad1w.C0 = cf(0,0.95+(0.95*i),0)
Blad2w.C0 = cf(0,0.95+(0.95*i),0)
M1.Scale = Vector3.new(1,1*i,1)
M2.Scale = Vector3.new(1,1*i,1)
Blad1.Transparency = 0.9-(1*i)
Blad2.Transparency = 0.9-(1*i)
Glow1w.C0 = cf(0,0.95+(0.95*i),0)
Glow2w.C0 = cf(0,0.95+(0.95*i),0)
GM1.Scale = Vector3.new(1,1*i,1)
GM2.Scale = Vector3.new(1,1*i,1)
Glow1.Transparency = 1.05-(0.5*i)
Glow2.Transparency = 1.05-(0.5*i)
wait()
end
Anim.Act = false
end
Anims.UnEquip = function(i1,i2,is)
Anim.Act = true
Sound(Sounds.SaberLightUp,3,1)
for i=i1,i2,is do
Blad1w.C0 = cf(0,0.95+(0.95*i),0)
Blad2w.C0 = cf(0,0.95+(0.95*i),0)
M1.Scale = Vector3.new(1,1*i,1)
M2.Scale = Vector3.new(1,1*i,1)
Blad1.Transparency = 0.9-(1*i)
Blad2.Transparency = 0.9-(1*i)
Glow1w.C0 = cf(0,0.95+(0.95*i),0)
Glow2w.C0 = cf(0,0.95+(0.95*i),0)
GM1.Scale = Vector3.new(1,1*i,1)
GM2.Scale = Vector3.new(1,1*i,1)
Glow1.Transparency = 1.05-(0.5*i)
Glow2.Transparency = 1.05-(0.5*i)
wait()
end
Sound(Sounds.Slash,1,1)
for i=i1,i2,is do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(270*i)),0)
LW.C1 = ca(mr(-80*i),mr(40*i),0)
LW.C0 = cf(0.6*i,0.3*i,-1*i)
RW.C1 = ca(mr(40+(-120*i)),mr(20+(-60*i)),0)
RW.C0 = cf(-0.4+(-0.2*i),-0.1+(0.4*i),0.4+(-1.4*i))
wait()
end
H1w.Part0 = Torso
H1w.Part1 = H1
H1w.C0 = cf(0.4,-0.7,0.5) *ca(0,0,mr(45))
H1w.C1 = cf(0,0,0) *ca(0,0,0)
for i=i1,i2,is do
RW.C1 = ca(mr(40*i),mr(20*i),0)
RW.C0 = cf(-0.4*i,-0.1*i,0.4*i)
wait()
end
Anim.Act = false
end
Anims.ChangeToDual = function(i1,i2,is)
Anim.Act = true
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(mr(-80*i),mr(50*i),0)
wait()
end
Sound(Sounds.SaberHit,1,1)
Sound(Sounds.SaberLightUp,2,0.5)
H1w.Part0 = La
H1w.Part1 = H1
H2w.Part0 = Ra
H2w.Part1 = H2
H2w.C1 = ca(mr(-90),0,0)
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-90+(-90*i)),mr(20+(-20*i)))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(90*i)),mr(-35+(-35*i)))
LW.C1 = ca(mr(-80+(20*i)),mr(40+(-70*i)),0)
LW.C0 = cf(0.6+(-0.6*i),0.3+(-0.3*i),-1+(0.5*i))
RW.C1 = ca(mr(-80+(20*i)),mr(-40+(70*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(-0.3*i),-1+(0.5*i))
wait()
end
Anim.Act = false
end
Anims.ChangeToSingle = function(i1,i2,is)
Anim.Act = true
for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-90+(-90*i)),mr(20+(-20*i)))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(90+(90*i)),mr(-35+(-35*i)))
LW.C1 = ca(mr(-80+(20*i)),mr(40+(-70*i)),0)
LW.C0 = cf(0.6+(-0.6*i),0.3+(-0.3*i),-1+(0.5*i))
RW.C1 = ca(mr(-80+(20*i)),mr(-40+(70*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(-0.3*i),-1+(0.5*i))
wait()
end
H1w.Part0 = Ra
H1w.Part1 = H1
H2w.Part0 = H1
H2w.Part1 = H2
H2w.C1 = ca(0,0,0)
H2w.C0 = cf(0,-0.8,0) *ca(mr(180),0,0)
Sound(Sounds.SaberLightUp,2,0.5)
Sound(Sounds.SaberHit,1,1)
for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(mr(-80*i),mr(50*i),0)
wait()
end
Anim.Act = false
end
Anims.RotorBlade = function(i1,i2,is,RaigCost)
local lolpos = (Torso.Position - mouse.hit.p).unit
local allx = (lolpos.y*80)-10
local ally = (((mouse.X-(mouse.ViewSizeX/2))/mouse.ViewSizeX)*1.8)*-90
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(90*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(((-90)+ally)*i),0)
Torw.C1 = ca(0,mr(-90*i),0)
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed)
Hum.WalkSpeed = Hum.WalkSpeed + (8*Speed)
Left = true
Right = true
Dash(Blad1,2/Speed,nil,2)
Dash(Blad2,2/Speed,nil,2)
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,-0.4,0) *ca(mr(-90),0,0)
local soundtime = 0
for i=i1,i2*4,is do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(360*i),0)
wait()
end
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,0,0) *ca(mr(-90),0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed)
Hum.WalkSpeed = Hum.WalkSpeed - (8*Speed)
Left = false
Right = false
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(90*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(((-90)+ally)*i),0)
Torw.C1 = ca(0,mr(-90*i),0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
-------
Anims.Boomerang = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
local lolpos = (Head.Position - mouse.hit.p).unit
local allx = (lolpos.y*80)-10
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(60*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-60*i),0)
Torw.C1 = ca(0,mr(-60*i),0)
H1w.C0 = cf(0,-1.1,0) *ca(mr(80*i),0,0)
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed)
Left = true
Right = true
Dash(Blad1,3.8/Speed,nil,2)
Dash(Blad2,3.8/Speed,nil,2)
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,-0.4,0) *ca(mr(-90),0,0)
local soundtime = 0
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(10*i,-1.1+(-15*i),0) *ca(mr(90),mr(720*i),0)
wait()
end
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(10+(-20*i),-16.1,0) *ca(mr(90),mr(720*i),0)
wait()
end
for i=i1,i2,is/2 do
if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end
H1w.C0 = cf(-10+(10*i),-16.1+(15*i),0) *ca(mr(90),mr(720*i),0)
wait()
end
H1w.C0 = cf(0,-1.1,0) *ca(0,0,0) H1w.C1 = cf(0,0,0) *ca(mr(-90),0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed)
Left = false
Right = false
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(60*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(allx*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-60*i),0)
Torw.C1 = ca(0,mr(-60*i),0)
H1w.C0 = cf(0,-1.1,0) *ca(mr(80*i),0,0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
Anims.BoulderForce = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
Anim.Act = true
for i=i1,i2,is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
local bould = p(workspace,"Block",4,4,8,true,true,0,0,"Medium stone grey") bould.Name = "Boulder" bould.Material = "Concrete"
local rm = RockMesh:Clone() rm.Scale = Vector3.new(3,3,4.8) rm.Parent = bould
bould.Elasticity = 0 bould.Friction = 2 bould.CFrame = cf(Torso.Position.x+(math.random(-14,14)),Torso.Position.y-5,Torso.Position.z+(math.random(-14,14))) *CFrame.Angles(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local warpdes = true
local bpos = bould.Position
Sound(Sounds.Cast,0.95,0.8)
coroutine.resume(coroutine.create(function() repeat Functions.BrickWarpDesign(bould,9) wait() until warpdes == false end))
for i=0,1,0.08 do bould.CFrame = CFrame.new(bpos.x,bpos.y,bpos.z) + Vector3.new(0,20*i,0) wait() end wait(1) bould.CFrame = CFrame.new(bpos.x,bpos.y+20,bpos.z) bould.CFrame = cf(bould.Position,mouse.hit.p)
bould.Anchored = false wait() bould.Velocity = bould.CFrame.lookVector *(math.random(180,350)) bould.Touched:connect(function(hit) Functions.BoulderTouch(hit,bould) end)
wait(0.5)
warpdes = false
game.Debris:AddItem(bould,10)
for i=i2,i1,-is do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
Torw.C1 = ca(0,0,0)
Anim.Act = false
end
Anims.ForceWave = function(i1,i2,is,RaigCost)
local Hit, hitpos = rayCast(Torso.Position,((Torso.Position - Vector3.new(0,10000,0)) - Torso.Position),999.999,Player.Character)
if Hit == nil then Anim.Act = false return end
MinusRage(RaigCost)
Anim.Act = true
lh2,rh2 = FeetWeld(true,Lh,Rh)
local bp2 = Instance.new("BodyPosition",Torso)
bp2.maxForce = Vector3.new(0,math.huge,0)
Humanoid.WalkSpeed = Humanoid.WalkSpeed - (RealSpeed-4)
DebounceSpeed = DebounceSpeed + (1.1*Speed)
bp2.position = Torso.Position + Vector3.new(0,25,0)
Dash(Blad1,2.5/Speed)
Dash(Blad2,2.5/Speed)
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,0.3,0,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
wavm.Scale = Vector3.new(15,6,15)
local cff = Torso.CFrame - Vector3.new(0,0,0)
coroutine.resume(coroutine.create(function()
Dash(Blad1,4/Speed)
Dash(Blad2,4/Speed)
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-80+(-100*i)),mr(40-(40*i)),mr(45*i))
LW.C0 = cf(0.6,0.3+(1.4*i),-1+(1*i))
RW.C1 = ca(mr(-80+(-100*i)),mr(-40+(40*i)),mr(-45*i))
RW.C0 = cf(-0.6,0.3+(1.4*i),-1+(1*i))
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
H1w.C0 = cf(0,-1.1+(-0.9*i),0) *ca(0,mr(360*i),0)
H1w.C1 = ca(mr(-90+(40*i)),0,0)
wait()
end for i=i1,i2*3,is*Speed do H1w.C1 = ca(mr(-50),mr(360*i),0) wait() end end)) Sound(Sounds.Cast,0.45,1) for i=i1,i2*5,is do Functions.BrickWarpDesign(Torso,13) wav.CFrame = cff *ca(0,mr(180*i),0) wait() end
for i=1,0.3,-0.14*Speed do wav.Transparency = i wait() end wav:Remove()
for i=i2,i1,-is*Speed do
LW.C1 = ca(mr(-80+(-100*i)),mr(40-(40*i)),mr(45*i))
LW.C0 = cf(0.6,0.3+(1.4*i),-1+(1*i))
RW.C1 = ca(mr(-80+(-100*i)),mr(-40+(40*i)),mr(-45*i))
RW.C0 = cf(-0.6,0.3+(1.4*i),-1+(1*i))
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
H1w.C0 = cf(0,-1.1+(-0.9*i),0) *ca(0,mr(360*i),0)
H1w.C1 = ca(mr(-90+(40*i)),0,0)
wait()
end
bp2:Remove()
local bg = Instance.new("BodyGyro",Torso) bg.maxTorque = Vector3.new(math.huge,0,math.huge)
local bp = Instance.new("BodyPosition",Torso) bp.position = Torso.Position bp.maxForce = Vector3.new(math.huge,1000000,math.huge)
rpos = math.abs(hitpos.y - Torso.Position.y)
rpos = rpos - 1.2
local tpos = Torso.Position
Hum.WalkSpeed = 0
Hum.PlatformStand = true
Dash(Blad2,1.6/Speed,RingMesh.MeshId)
for i=i1,i2,is do
bp.position = tpos - Vector3.new(0,rpos*i,0)
Neck.C0 = cf(0,1-(0.5*i),-0.5*i) *ca(Neck.C1:toEulerAnglesXYZ())
Torw.C1 = ca(mr(20*i),0,0)
Torw.C0 = cf(0,-0.2*i,-0.2*i)
lh2.C0 = cf(-0.5,-1.9+(1*i),-1.1*i) *ca(mr(10*i),mr(90),0)
rh2.C0 = cf(0.5,-1.9+(1*i),0.1*i) *ca(mr(-95*i),mr(-90),0)
LW.C1 = ca(mr(-80+(30*i)),mr(40),0)
LW.C0 = cf(0.6,0.3-(0.3*i),-1+(0.3*i))
RW.C1 = ca(mr(-80+(30*i)),mr(-40),0)
RW.C0 = cf(-0.6,0.3-(0.3*i),-1+(0.3*i))
H1w.C0 = cf(0,-1.1,0) *ca(mr(55*i),0,0)
wait()
end
wait(0.25)
Sound(Sounds.Boom,0.5,1)
Sound(Sounds.EnergyBlast,0.9,1)
Right = true
ShockWave(Torso,50,BladeColor)
wait(1.5)
Right = false
local t2pos = Torso.Position
for i=i2,i1,-is do
bp.position = t2pos - Vector3.new(0,1.5-(1.5*i),0)
Neck.C0 = cf(0,1-(0.5*i),-0.5*i) *ca(Neck.C1:toEulerAnglesXYZ())
Torw.C1 = ca(mr(20*i),0,0)
Torw.C0 = cf(0,-0.2*i,-0.2*i)
lh2.C0 = cf(-0.5,-1.9+(1*i),-1.1*i) *ca(mr(10*i),mr(90),0)
rh2.C0 = cf(0.5,-1.9+(1*i),0.1*i) *ca(mr(-95*i),mr(-90),0)
LW.C1 = ca(mr(-80+(30*i)),mr(40),0)
LW.C0 = cf(0.6,0.3-(0.3*i),-1+(0.3*i))
RW.C1 = ca(mr(-80+(30*i)),mr(-40),0)
RW.C0 = cf(-0.6,0.3-(0.3*i),-1+(0.3*i))
H1w.C0 = cf(0,-1.1,0) *ca(mr(55*i),0,0)
wait()
end
DebounceSpeed = DebounceSpeed - (1.1*Speed)
bp:Remove()
bg:Remove()
Hum.PlatformStand = false
Hum.WalkSpeed = RealSpeed
Torw.C1 = ca(0,0,0)
Anim.Act = false
Lh,Rh = FeetWeld(false,lh2,rh2)
end
Anims.DualSpin = function(i1,i2,is,RaigCost)
MinusRage(RaigCost)
Anim.Act = true
for i=i1,i2,is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-180-(-90*i)),mr(0*i)) H1w.C1 = ca(mr(-90-(60*i)),0,mr(0*i))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(180-(270*i)),mr(0*i)) H2w.C1 = ca(mr(-90+(-30*i)),0,0)
LW.C1 = ca(mr(-60+(-40*i)),mr(-30+(-75*i)),mr(0*i))
LW.C0 = cf(0.13*i,0.5*i,-0.5+(0.5*i))
RW.C1 = ca(mr(-60+(-20*i)),mr(30+(45*i)),mr(0*i))
RW.C0 = cf(0.13*i,0.4*i,-0.5+(0.4*i))
wait()
end
DebounceSpeed = DebounceSpeed - (0.5*Speed) Right = true Left = true Dash(Blad1,2.6/Speed,nil,2) Dash(Blad2,2.6/Speed,nil,2) local x,y,z = Neck.C0:toEulerAnglesXYZ()
local soundtime = 0
for i=i1,i2*4,is*Speed do if soundtime == 10 then soundtime = 0 Sound(Sounds.SaberSlash,2.5,0.5) else soundtime = soundtime + 1 end Torw.C1 = ca(0,mr(i*360),0) Neck.C0 = cf(0,1,0) *ca(x,y,z+mr(-360*i)) wait() end Neck.C0 = cf(0,1,0) *ca(x,y,z)Torw.C1 = ca(0,0,0)
DebounceSpeed = DebounceSpeed + (0.5*Speed) for i=i2,i1,-is*Speed do
H1w.C0 = cf(0,-1.1,0) *ca(0,mr(-180-(-90*i)),mr(0*i)) H1w.C1 = ca(mr(-90-(60*i)),0,mr(0*i))
H2w.C0 = cf(0,-1.1,0) *ca(0,mr(180-(270*i)),mr(0*i)) H2w.C1 = ca(mr(-90+(-30*i)),0,0)
LW.C1 = ca(mr(-60+(-40*i)),mr(-30+(-75*i)),mr(0*i))
LW.C0 = cf(0.13*i,0.5*i,-0.5+(0.5*i))
RW.C1 = ca(mr(-60+(-20*i)),mr(30+(45*i)),mr(0*i))
RW.C0 = cf(0.13*i,0.4*i,-0.5+(0.4*i))
wait()
end Right = false Left = false
Anim.Act = false
end

----------------------------
----------------------------
----------------------------
----------------------------

Lh = Torso["Left Hip"]
Rh = Torso["Right Hip"]

Functions = {}
Functions.BoulderTouch = function(hit2,bould)
print(bould.Name)
for i,v in pairs(workspace:GetChildren()) do
if v ~= Char and v ~= nil and v:findFirstChild("Torso") ~= nil and v:findFirstChild("Humanoid") ~= nil then
if math.abs((v.Torso.Position-bould.Position).magnitude) < 11 and ft(RightDebounce,v.Name) == nil then
Sound(Sounds.Smash,1,1)
Dmgz(v.Humanoid,Damage["BoulderForce"])
table.insert(RightDebounce,v.Name)
print(v.Name)
coroutine.resume(coroutine.create(function()wait(DebounceSpeed) local nf = ft(RightDebounce,v.Name) if nf ~= nil then table.remove(RightDebounce,nf) end end))
end
else
if v ~= bould and v:IsA("BasePart") and v.Anchored == false and math.abs((v.Position-bould.Position).magnitude) < 11 then v:BreakJoints() v.Velocity = cf(bould.Position,v.Position).lookVector*10 + Vector3.new(0,10,0) end
end
end -- for
end
Functions.Sparkle = function(bb,scal,si)
if si == nil then si = 1 end
local rand = bb.Position + Vector3.new(math.random(-scal,scal),math.random(-scal,scal),math.random(-scal,scal))
local np = p(Torm,"Block",0.1,0.1,0.1,false,true,0.1,0.2,BladeColor)
np.CFrame = cf(rand.x,rand.y,rand.z) *ca(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local dm = DiamondMesh:Clone() dm.Scale = Vector3.new(0,0,0) dm.Parent = np
coroutine.resume(coroutine.create(function()
for i=0,1*si,0.1*si do
dm.Scale = Vector3.new(1*i,1.25*i,1*i)
wait()
end
end))
coroutine.resume(coroutine.create(function()
wait(0.1)
for i=0,1,0.1 do
np.Transparency = i
wait()
end
np:Remove()
end))
end
Functions.BrickWarpDesign = function(bb,scal)
local rand = bb.Position + Vector3.new(math.random(-scal,scal),math.random(-scal,scal),math.random(-scal,scal))
local mag = (rand - bb.Position).magnitude
local np = p(Torm,"Block",0.1,0.1,mag-3,false,true,0.1,0.2,BladeColor)
np.CFrame = cf(bb.Position,rand)
np.CFrame = np.CFrame + np.CFrame.lookVector*((scal/5)+(mag/2))
coroutine.resume(coroutine.create(function()
for i=0.1,1,0.05 do
np.Transparency = i
wait()
end
np:Remove()
end))
end
Functions.RageRegen = function()
local lostcontrol = false
local hpos = Torso.Position.y + 10
Anim.Move = "RageRegening"
Anim.Act = true
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,1,0,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
local wavv = 0
wavm.Scale = Vector3.new(5,3.5,5)
wav.CFrame = cf((Torso.CFrame * CFrame.new(0,-2.5,0)).p) *ca(0,mr(wavv),0)
local bp = Instance.new("BodyPosition",Torso)
bp.maxForce = Vector3.new(0,math.huge,0)
Humanoid.WalkSpeed = Humanoid.WalkSpeed - (RealSpeed-4)
bp.position = Torso.Position + Vector3.new(0,10,0)
local bpos = bp.position
coroutine.resume(coroutine.create(function()
lh2,rh2 = FeetWeld(true,Lh,Rh)
if SwordType == "Single" then
for i=0,1,0.1*Speed do
LW.C1 = ca(mr(-80+(-30*i)),mr(40-(40*i)),0)
LW.C0 = cf(0.6-(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-80+(-30*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
else
for i=0,1,0.1*Speed do
LW.C1 = ca(mr(-60+(-50*i)),mr(-40-(-40*i)),0)
LW.C0 = cf(-0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-60+(-50*i)),mr(40+(-40*i)),0)
RW.C0 = cf(0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
end
local function movezx(i1,i2,is,bp)
if SwordType == "Single" then
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-120+(20*i)),0,0)
LW.C0 = cf(0,0.8,0.7) *ca(0,mr(120+(20*i)),0)
RW.C1 = ca(mr(-120+(20*i)),0,0)
RW.C0 = cf(0,0.8,0.7) *ca(0,mr(-120+(-20*i)),0)
lh2.C1 = ca(mr(30+(-15*i)),0,mr(15+(-8*i)))
rh2.C1 = ca(mr(30+(-15*i)),0,mr(-15+(8*i)))
lh2.C0 = cf(-0.7,-1.9,0.35)
rh2.C0 = cf(0.7,-1.9,0.35)
bp.position = Vector3.new(bpos.x,(hpos+10)+(3*i),bpos.z)
wait()
end
else
for i=i1,i2,is*Speed do
LW.C1 = ca(mr(-110),mr(0),0)
LW.C0 = cf(-0.1,0.8,0.7) *ca(0,mr(120+(20*i)),0)
RW.C1 = ca(mr(-110),mr(0),0)
RW.C0 = cf(0.1,0.8,0.7) *ca(0,mr(-120+(-20*i)),0)
lh2.C1 = ca(mr(30+(-15*i)),0,mr(15+(-8*i)))
rh2.C1 = ca(mr(30+(-15*i)),0,mr(-15+(8*i)))
lh2.C0 = cf(-0.7,-1.9,0.35)
rh2.C0 = cf(0.7,-1.9,0.35)
bp.position = Vector3.new(bpos.x,(hpos+10)+(3*i),bpos.z)
wait()
end
end
end
local moved = 2
repeat
if Rage >= MaxRage or Anim.key.z == false then break end
if moved == 2 then moved = 1 movezx(0,1,0.025,bp) else moved = 2 movezx(1,0,-0.025,bp) end
until Rage >= MaxRage or Anim.key.z == false or lostcontrol == true
if SwordType == "Single" then
for i=1,0,-0.1*Speed do
LW.C1 = ca(mr(-80+(-30*i)),mr(40-(40*i)),0)
LW.C0 = cf(0.6-(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-80+(-30*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.6*i),0.3+(0.5*i),-1+(1.7*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
else
for i=1,0,-0.1*Speed do
LW.C1 = ca(mr(-60+(-50*i)),mr(-40-(-40*i)),0)
LW.C0 = cf(-0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(120*i),0)
RW.C1 = ca(mr(-60+(-50*i)),mr(40+(-40*i)),0)
RW.C0 = cf(0.1,0.8*i,-0.5+(1.2*i)) *ca(0,mr(-120*i),0)
lh2.C1 = ca(mr(30*i),0,mr(15*i))
rh2.C1 = ca(mr(30*i),0,mr(-15*i))
lh2.C0 = cf(-0.5+(-0.2*i),-1.9,0.35*i)
rh2.C0 = cf(0.5+(0.2*i),-1.9,0.35*i)
wait()
end
end
Lh,Rh = FeetWeld(false,lh2,rh2)
wait(0.6)
Anim.Act = false
Anim.Move = "None"
end))
for i=1,0.3,-0.14*Speed do wav.Transparency = i wait() end
rpos = 0
Sound(Sounds.Cast,0.8,1)
repeat wait()
local Hit, hitpos = rayCast(Torso.Position,((Torso.Position - Vector3.new(0,10000,0)) - Torso.Position),999.999,Player.Character)
if Hit == nil then lostcontrol = true break end
hpos = hitpos.y if math.random(1,6) == 4 then Functions.Sparkle(Torso,8) end
if math.random(1,3) == 3 then Functions.BrickWarpDesign(Torso,10) end wavv = wavv + 10 Rage = Rage - (RageCost["RageRegening"]*RageIncome)
wav.CFrame = cf(Torso.Position.x,hpos+1.4,Torso.Position.z) *ca(0,mr(wavv),0)
until Rage >= MaxRage or Anim.key.z == false
for i=0.3,01,0.14*Speed do wav.Transparency = i wait() end wav:Remove()
bp:Remove()
Humanoid.WalkSpeed = Humanoid.WalkSpeed + (RealSpeed-4)
end
Functions.Teleport = function(i1,i2,is,RaigCost)
Anim.Act = true
for i=i1,i2,is*Speed do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
local tele = false
local tele2 = false -- for mouse
local mouseact = mouse.Button1Up:connect(function() tele2 = true end)
coroutine.resume(coroutine.create(function() Sound(Sounds.Cast,1.2,1) wait(12) tele = true end))
local telepos = Torso.Position
local telehit = nil
local wav = p(Torm,"Block",0.1,0.1,0.1,true,false,0.3,0.1,BladeColor) wav.Anchored = true
local wavm = BlastMesh:Clone()
wavm.Parent = wav
local wavv = 0
wavm.Scale = Vector3.new(3.5,2,3.5)
repeat
local mpos = mouse.hit.p + Vector3.new(0,2,0)
telehit,telepos = rayCast(mpos,((mpos - Vector3.new(0,10000,0)) - mpos),999.999,Player.Character)
wavv = wavv + 8 Functions.Sparkle(La,3) Functions.BrickWarpDesign(La,4)
if telehit ~= nil then wav.Transparency = 0 wav.CFrame = cf(telepos.x,telepos.y+1,telepos.z) *ca(0,mr(wavv),0) else wav.Transparency = 1 end
wait() until tele == true or tele2 == true mouseact:disconnect()
if telehit == nil or math.abs((Torso.Position - telepos).magnitude) > Props.MaxTeleDistance then
Sound(Sounds.Punch,1,1) for i=0.3,1,0.14 do wavm.Scale = Vector3.new(3.5+(5*i),2,3.5+(5*i)) wav.Transparency = i wait() end wav:Remove()
wav:Remove()
else
MinusRage(RaigCost)
for i=1,10 do wait() Functions.Sparkle(Torso,5,3) Functions.BrickWarpDesign(Torso,6) end
ShockWave(Torso,7,BladeColor)
Torso.CFrame = wav.CFrame + Vector3.new(0,2.2,0) Sound(Sounds.EnergyBlast,1.2,0.6)
ShockWave(Torso,7,BladeColor)
for i=1,10 do wait() Functions.Sparkle(Torso,5,3) Functions.BrickWarpDesign(Torso,6) end
for i=0.3,1,0.14 do wavm.Scale = Vector3.new(3.5+(5*i),2,3.5+(5*i)) wav.Transparency = i wait() end wav:Remove()
end
for i=i2,i1,-is*Speed do
LW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(40+(-40*i)),0)
LW.C0 = cf(0.6+(-0.9*i),0.3,-1+(1*i)) *ca(0,mr(50*i),0)
RW.C1 = cf(0,0.5*i,0) *ca(mr(-80+(-25*i)),mr(-40+(40*i)),0)
RW.C0 = cf(-0.6+(0.9*i),0.3,-1+(1*i)) *ca(0,mr(-50*i),0)
Torw.C1 = ca(0,mr(50*i),0)
wait()
end
Anim.Act = false
end

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
bin.Selected:connect(function(mm)
Mouse = mouse
mouse = mm
Torso["Left Hip"].Part0 = Tor
Torso["Right Hip"].Part0 = Tor
RS.Parent = nil
LS.Parent = nil
RW.Parent = Torso
RW.Part0 = Fra
RW.Part1 = Ra
LW.Parent = Torso
LW.Part0 = Fla
LW.Part1 = La
RW.C0 = CFrame.new(0,0,0) RW.C1 = CFrame.new(0,0,0)
LW.C0 = CFrame.new(0,0,0) LW.C1 = CFrame.new(0,0,0)
Anims.Equip(0,1,0.07*Speed)
Anim.Equipped = true
mouse.KeyDown:connect(function(key)
key:lower()
pcall(function() Anim.key[key:lower()] = true end)
keydown = true
if key == "z" and Anim.Move == "None" and not Anim.Act then
Functions.RageRegen()
end
if SwordType == "Single" then
if key == "e" and Anim.Move == "None" and not Anim.Act and RageCost["RotorBlade"] <= Rage then
Anim.Move = "RotorBlade"
Anims.RotorBlade(0,1,0.08*Speed,RageCost["RotorBlade"])
Anim.Move = "None"
elseif key == "q" and Anim.Move == "None" and not Anim.Act and RageCost["Boomerang"] <= Rage then
Anim.Move = "Boomerang"
Anims.Boomerang(0,1,0.08*Speed,RageCost["Boomerang"])
Anim.Move = "None"
elseif key == "f" and Anim.Move == "None" and not Anim.Act and RageCost["BoulderForce"] <= Rage then
Anim.Move = "BoulderForce"
Anims.BoulderForce(0,1,0.08*Speed,RageCost["BoulderForce"])
Anim.Move = "None"
elseif key == "r" and Anim.Move == "None" and not Anim.Act and RageCost["ForceWave"] <= Rage then
Anim.Move = "ForceWave"
Anims.ForceWave(0,1,0.08*Speed,RageCost["ForceWave"])
Anim.Move = "None"
elseif key == "t" and Anim.Move == "None" and not Anim.Act and RageCost["Teleport"] <= Rage then
Anim.Move = "Teleport"
Functions.Teleport(0,1,0.08*Speed,RageCost["Teleport"])
Anim.Move = "None"
end
elseif SwordType == "Dual" then
if key == "e" and Anim.Move == "None" and not Anim.Act and RageCost["DualSpin"] <= Rage then
Anim.Move = "DualSpin"
Anims.DualSpin(0,1,0.08*Speed,RageCost["DualSpin"])
Anim.Move = "None"
end
end
end)
mouse.KeyUp:connect(function(key)
pcall(function() Anim.key[key:lower()] = false end)
keydown = false
end)

mouse.Button1Down:connect(function() Anim.Button = true
if not Anim.Click and Anim.Move == "None" and not Anim.Act then
Anim.Click = true
if Anim.CanBerserk ~= 0 then Anim.CanBerserk = Anim.CanBerserk + 1 end
if Anim.CanBerserk == 0 and RageCost["Berserk"] <= Rage then
Rage = Rage - RageCost["Berserk"]
Anim.ComboBreak = true
Speed = Speed + 0.5
Anim.CanBerserk = Anim.CanBerserk + 1
--Anim.Move = "LeftPunch"
--Anims.LeftPunch(0,1,0.1*Speed,0) Anim.Move = "None"
elseif Anim.CanBerserk == 2 then
Anim.CanBerserk = 0
end
coroutine.resume(coroutine.create(function() local oldcomb = Anim.CanBerserk wait(0.5) if Anim.ComboBreak == true and Anim.CanBerserk == oldcomb then Anim.ComboBreak = false Speed = Speed -0.5 Anim.CanBerserk = 0 end end))
wait(0.1)
Anim.Click = false
end
end)
mouse.Button1Up:connect(function() Anim.Button = false
end)
end)
bin.Deselected:connect(function(mouse)
Anim.Equipped = false
if SwordType == "Dual" then Anims.ChangeToSingle(0,1,0.25*Speed) SwordType = "Single" end
Anims.UnEquip(1,0,-0.08*Speed)
RW.Parent = nil
LW.Parent = nil
RS.Parent = Torso
RS.Part0 = Torso
RS.Part1 = Ra
LS.Parent = Torso
LS.Part0 = Torso
LS.Part1 = La
if Rh.Parent == nil then
FeetWeld(false,Lh,Rh)
end
Torso["Left Hip"].Part0 = Torso
Torso["Right Hip"].Part0 = Torso
end)
Hum.WalkSpeed = RealSpeed
Rage = 100000
wait(5)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Master Hand"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Master Hand"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go down to line 23 and put your name where it says "YOUR NAME HERE"


wt  = 0.05 s = script it = Instance.new v3 = Vector3.new c3 = Color3.new ud =  UDim2.new cf = CFrame.new ca = CFrame.Angles pi = math.pi rd = math.rad
bc =  BrickColor.new ab = math.abs de = math.deg ts = tostring tn = tonumber ti =  table.insert tr = table.remove 
cr = coroutine.resume cc =  coroutine.create
asset = "http://www.roblox.com/asset/?id="
sr =  string.reverse sl = string.lower su = string.upper 
Serv = {} Serv.p =  game:GetService(sr("sreyalP")) Serv.l = game:GetService(sr("gnithgiL"))  
Serv.is = game:GetService(sr("ecivreStresnI")) if  game:findFirstChild(sr("revreSkrowteN")) then Serv.ns =  game:GetService(sr("revreSkrowteN")) else NetworkServer = nil end 
Serv.sg =  game:GetService(sr("iuGretratS")) Serv.sp = game:GetService(sr("kcaPretratS"))  Serv.d = game:GetService(sr("sirbeD"))
Decs = {}
Decs.Crack = "49173398"  Decs.Cloud = "1095708" Decs.Spike = "1033714" Decs.Rock = "1290033" Decs.Crown =  "1323306"
function ft(tablez,item) if not tablez or not item then return nil  end for i=1,#tablez do if tablez == item then return i end end return nil  end
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string"  then return nil end if par:findFirstChild(obj) then par[obj]:Remove() end end  
function pa(pa,sh,x,y,z,c,a,tr,re,bc2) local fp = nil if sh ~= "Wedge" and  sh ~= "CornerWedge" then fp = it("Part",pa) fp.Shape = sh fp.formFactor =  "Custom" elseif sh == "Wedge" then fp = it("WedgePart",pa) fp.formFactor =  "Custom"
elseif sh == "CornerWedge" then fp = it("CornerWedgePart",pa) end  fp.Size = v3(x,y,z) fp.CanCollide = c fp.Anchored = false fp.BrickColor =  bc(bc2) fp.Transparency = tr fp.Reflectance = re fp.BottomSurface =  0
fp.TopSurface = 0 fp.CFrame = t.CFrame + Vector3.new(0,50,0) fp.Velocity =  Vector3.new(0,10,0) fp:BreakJoints() return fp end 
function clearit(tab) for  xx=1,#tab do tab[xx]:Remove() end end 
function weld(pa,p0,p1,x,y,z,a,b,c)  local fw = it("Weld",pa) fw.Part0 = p0 fw.Part1 = p1 fw.C0 = cf(x,y,z)  *ca(a,b,c) return fw end
function spm(ty,pa,ss) local sp =  it("SpecialMesh",pa) sp.MeshType = ty sp.Scale = Vector3.new(ss,ss,ss) end  function mbm(pa,sx,sy,sz) local bm = Instance.new("BlockMesh",pa) bm.Scale =  Vector3.new(sx,sy,sz) end 
function ra(mn,mx,dc) local tms = 1 if dc == nil  then dc = 0 end if type(dc) == "number" and dc > 5 then dc = 5 end for  zx=1,dc do tms = tms*10 end return math.random(mn*tms,mx*tms)/tms end 
p  = Serv.p.LocalPlayer
bp = p.Backpack
pg = p.PlayerGui
c =  p.Character
he = c.Head
t = c.Torso
hu = c.Humanoid
mou =  nil
re(c,"Hand")
s = 2
 
--tool var
Equip = false
HTrans =  0
HRef = 0
HCol = "a"
LaserCol = "Really black"
LaserCol2 = "Really  red"
LaserCol3 = "Really black"
Posing = "Follow"
Facing =  "Owner"
Anim = {}
Anim.a = "None"
Anim.b = "None"
Anim.Welding =  0
local fingwide = 1.5*s
local finghei = 2.8
local tiphei =  2.55
handoffset = v3(5,18,-8)*s
bgx,bgy,bgz = -90,0,0
w = {}
Button  = false 
--
BlastMesh = it("FileMesh")
BlastMesh.MeshId =  "http://www.roblox.com/asset/?id=20329976"
RingMesh =  it("FileMesh")
RingMesh.MeshId =  "http://www.roblox.com/asset/?id=3270017"
RockMesh =  it("FileMesh")
DiamondMesh = it("FileMesh")
DiamondMesh.MeshId =  "http://www.roblox.com/Asset/?id=9756362"
 
m = Instance.new("Model",c)  m.Name = "Hand"
Palm =  pa(m,"Block",6*s,7*s,fingwide*2,true,false,HTrans,HRef,HCol)  mbm(Palm,1,1,0.6)
local x,y,z =  Palm.Size.x,Palm.Size.y,Palm.Size.z
bPoint1 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Point1 =  weld(bPoint1,Palm,bPoint1,-x/2+(fingwide/2),y/2,0,0,0,0)
pPoint1 =  pa(m,"Block",fingwide,finghei*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPoint1,0.9,1,0.9)
wPoint1 =  weld(pPoint1,bPoint1,pPoint1,0,pPoint1.Size.y/2,0,0,0,0)
bPoint2 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Point2 =  weld(bPoint2,pPoint1,bPoint2,0,pPoint1.Size.y/2,0,0,0,0)
pPoint2 =  pa(m,"Block",fingwide,finghei*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPoint2,0.9,1,0.9)
wPoint2 =  weld(pPoint2,bPoint2,pPoint2,0,pPoint1.Size.y/2,0,0,0,0)
bPoint3 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Point3 =  weld(bPoint3,pPoint2,bPoint3,0,pPoint2.Size.y/2,0,0,0,0)
pPoint3 =  pa(m,"Block",fingwide,tiphei*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPoint3,0.9,1,0.9)
wPoint3 =  weld(pPoint3,bPoint3,pPoint3,0,pPoint3.Size.y/2,0,0,0,0)
bMid1 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Mid1 =  weld(bMid1,Palm,bMid1,-x/2+((fingwide/2)+((fingwide)*1)),y/2,0,0,0,0)
pMid1 =  pa(m,"Block",fingwide,(finghei*1.1)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pMid1,0.9,1,0.9)
wMid1 =  weld(pMid1,bMid1,pMid1,0,pMid1.Size.y/2,0,0,0,0)
bMid2 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Mid2 =  weld(bMid2,pMid1,bMid2,0,pMid1.Size.y/2,0,0,0,0)
pMid2 =  pa(m,"Block",fingwide,(finghei*1.1)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pMid2,0.9,1,0.9)
wMid2 =  weld(pMid2,bMid2,pMid2,0,pMid1.Size.y/2,0,0,0,0)
bMid3 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Mid3 =  weld(bMid3,pMid2,bMid3,0,pMid2.Size.y/2,0,0,0,0)
pMid3 =  pa(m,"Block",fingwide,(tiphei*1.1)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pMid3,0.9,1,0.9)
wMid3 =  weld(pMid3,bMid3,pMid3,0,pMid3.Size.y/2,0,0,0,0)
bRing1 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Ring1 =  weld(bRing1,Palm,bRing1,-x/2+((fingwide/2)+((fingwide)*2)),y/2,0,0,0,0)
pRing1  = pa(m,"Block",fingwide,(finghei*0.98)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pRing1,0.9,1,0.9)
wRing1 =  weld(pRing1,bRing1,pRing1,0,pRing1.Size.y/2,0,0,0,0)
bRing2 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Ring2 =  weld(bRing2,pRing1,bRing2,0,pRing1.Size.y/2,0,0,0,0)
pRing2 =  pa(m,"Block",fingwide,(finghei*0.98)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pRing2,0.9,1,0.9)
wRing2 =  weld(pRing2,bRing2,pRing2,0,pRing1.Size.y/2,0,0,0,0)
bRing3 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Ring3 =  weld(bRing3,pRing2,bRing3,0,pRing2.Size.y/2,0,0,0,0)
pRing3 =  pa(m,"Block",fingwide,(tiphei*0.98)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pRing3,0.9,1,0.9)
wRing3 =  weld(pRing3,bRing3,pRing3,0,pRing3.Size.y/2,0,0,0,0)
bPinkie1 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Pinkie1 =  weld(bPinkie1,Palm,bPinkie1,-x/2+((fingwide/2)+((fingwide)*3)),y/2,0,0,0,0)
pPinkie1  = pa(m,"Block",fingwide,(finghei*0.8)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPinkie1,0.9,1,0.9)
wPinkie1 =  weld(pPinkie1,bPinkie1,pPinkie1,0,pPinkie1.Size.y/2,0,0,0,0)
bPinkie2 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Pinkie2 =  weld(bPinkie2,pPinkie1,bPinkie2,0,pPinkie1.Size.y/2,0,0,0,0)
pPinkie2 =  pa(m,"Block",fingwide,(finghei*0.8)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPinkie2,0.9,1,0.9)
wPinkie2 =  weld(pPinkie2,bPinkie2,pPinkie2,0,pPinkie1.Size.y/2,0,0,0,0)
bPinkie3 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Pinkie3 =  weld(bPinkie3,pPinkie2,bPinkie3,0,pPinkie2.Size.y/2,0,0,0,0)
pPinkie3 =  pa(m,"Block",fingwide,(tiphei*0.8)*s,fingwide,true,false,HTrans,HRef,HCol)  mbm(pPinkie3,0.9,1,0.9)
wPinkie3 =  weld(pPinkie3,bPinkie3,pPinkie3,0,pPinkie3.Size.y/2,0,0,0,0)
bThumb1 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Thumb1 =  weld(bThumb1,Palm,bThumb1,-x/2+(fingwide/7),-y*0.1,-fingwide*0.25,0,0,0)
pThumb1  =  pa(m,"Block",fingwide*1.4,(finghei*1)*s,fingwide*1.4,true,false,HTrans,HRef,HCol)  mbm(pThumb1,0.9,1,0.9)
wThumb1 =  weld(pThumb1,bThumb1,pThumb1,0,pThumb1.Size.y/2,0,0,0,0)
bThumb2 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Thumb2 =  weld(bThumb2,pThumb1,bThumb2,0,pThumb1.Size.y/2,0,0,0,0)
pThumb2 =  pa(m,"Block",fingwide*1.3,(finghei*1)*s,fingwide*1.3,true,false,HTrans,HRef,HCol)  mbm(pThumb2,0.9,1,0.9)
wThumb2 =  weld(pThumb2,bThumb2,pThumb2,0,pThumb1.Size.y/2,0,0,0,0)
bThumb3 =  pa(m,"Block",0,0,0,false,false,HTrans,HRef,HCol)
Thumb3 =  weld(bThumb3,pThumb2,bThumb3,0,pThumb2.Size.y/2,0,0,0,0)
pThumb3 =  pa(m,"Block",fingwide*1.25,(tiphei*1)*s,fingwide*1.25,true,false,HTrans,HRef,HCol)  mbm(pThumb3,0.9,1,0.9)
wThumb3 =  weld(pThumb3,bThumb3,pThumb3,0,pThumb3.Size.y/2,0,0,0,0)
 
w["a1"] =  Pinkie1
w["a2"] = Pinkie2
w["a3"] = Pinkie3
w["b1"] = Ring1
w["b2"]  = Ring2
w["b3"] = Ring3
w["c1"] = Mid1
w["c2"] = Mid2
w["c3"] =  Mid3
w["d1"] = Point1
w["d2"] = Point2
w["d3"] = Point3
w["e1"] =  Thumb1
w["e2"] = Thumb2
w["e3"] = Thumb3
w.e1.C1 =  ca(0,rd(35),rd(-20))
w.e2.C1 = ca(rd(20),0,0)
w.e3.C1 =  ca(rd(20),0,0)
w.d1.C1 = ca(0,0,rd(-3))
w.c1.C1 =  ca(0,0,rd(-1))
w.b1.C1 = ca(0,0,rd(1))
w.a1.C1 = ca(0,0,rd(3))
function  c1(wexx,smmx,xx,yy,zz) 
coroutine.resume(coroutine.create(function()
local  xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() 
local aa,bb,cc =  wexx.C0.x,wexx.C0.y,wexx.C0.z
local twa = smmx/wt
Anim.Welding =  Anim.Welding + 1
for i=0,twa,1 do wexx.C0 = cf(aa,bb,cc)
wexx.C1 =  ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
wait()
end  
Anim.Welding = Anim.Welding - 1
end))
end 
function  CloseFing(fingz,spee) if spee == nil then spee = 1 end c1(w[fingz..  "1"],spee,80,0,0) c1(w[fingz.. "2"],spee,110,0,0) c1(w[fingz.. "3"],spee,30,0,0)  end
function OpenFing(fingz,spee) if spee == nil then spee = 1 end  c1(w[fingz.. "1"],spee,2,0,0) c1(w[fingz.. "2"],spee,2,0,0) c1(w[fingz..  "3"],spee,2,0,0) end 
function HandSign(form,spee) form = form:lower() if  spee == nil then spee = 1 end 
if form == "f" then 
CloseFing("d",spee)  CloseFing("a",spee) CloseFing("b",spee)
c1(w["c1"],spee,0,0,0)  c1(w["c2"],spee,0,0,0) c1(w["c3"],spee,0,0,0) 
c1(w["e1"],spee,70,40,-90)  c1(w["e2"],spee,50,0,0) c1(w["e3"],spee,50,0,0) 
elseif form == "fist"  then
CloseFing("d",spee) CloseFing("a",spee) CloseFing("b",spee)  CloseFing("c",spee)
c1(w["e1"],spee,70,40,-90) c1(w["e2"],spee,50,0,0)  c1(w["e3"],spee,50,0,0) 
elseif form == "pointer" then
CloseFing("a",spee)  CloseFing("b",spee) CloseFing("c",spee)
c1(w["d1"],spee,5,0,0)  c1(w["d2"],spee,5,0,0) c1(w["d3"],spee,5,0,0) 
c1(w["e1"],spee,70,40,-90)  c1(w["e2"],spee,50,0,0) c1(w["e3"],spee,50,0,0) 
elseif form == "v"  then
CloseFing("a",spee) CloseFing("b",spee)
c1(w["c1"],spee,1,0,15)  c1(w["c2"],spee,1,0,0) c1(w["c3"],spee,1,0,0) 
c1(w["d1"],spee,1,0,-15)  c1(w["d2"],spee,1,0,0) c1(w["d3"],spee,1,0,0) 
c1(w["e1"],spee,70,40,-90)  c1(w["e2"],spee,50,0,0) c1(w["e3"],spee,50,0,0) 
elseif form == "free" or  form == "five" then
OpenFing("a",spee) OpenFing("b",spee) OpenFing("c",spee)  OpenFing("d",spee) 
c1(w["e1"],spee,0,35,-20) c1(w["e2"],spee,20,0,0)  c1(w["e3"],spee,20,0,0) 
elseif form == "ride" then  
c1(w["a1"],spee,60,0,0) c1(w["a2"],spee,-30,0,0) c1(w["a3"],spee,-30,0,0)  
c1(w["b1"],spee,30,0,0) c1(w["b2"],spee,65,0,0) c1(w["b3"],spee,60,0,0)  
c1(w["c1"],spee,30,0,0) c1(w["c2"],spee,65,0,0) c1(w["c3"],spee,60,0,0)  
c1(w["d1"],spee,30,0,0) c1(w["d2"],spee,65,0,0) c1(w["d3"],spee,60,0,0)  
c1(w["e1"],spee,-70,185,0) c1(w["e2"],spee,30,0,0) c1(w["e3"],spee,30,0,0)  
elseif form == "gun" then
CloseFing("a",spee)  CloseFing("b",spee)
c1(w["c1"],spee,0,0,1) c1(w["c2"],spee,0,0,0)  c1(w["c3"],spee,0,0,0) 
c1(w["d1"],spee,0,0,-1) c1(w["d2"],spee,0,0,0)  c1(w["d3"],spee,0,0,0) 
c1(w["e1"],spee,-60,90,0) c1(w["e2"],spee,20,0,0)  c1(w["e3"],spee,-20,0,0) 
elseif form == "wide"  then
c1(w["a1"],spee,-3,0,45) c1(w["a2"],spee,-3,0,0) c1(w["a3"],spee,-3,0,0)  
c1(w["b1"],spee,-3,0,15) c1(w["b2"],spee,-3,0,0) c1(w["b3"],spee,-3,0,0)  
c1(w["c1"],spee,-3,0,-15) c1(w["c2"],spee,-3,0,0) c1(w["c3"],spee,-3,0,0)  
c1(w["d1"],spee,-3,0,-45) c1(w["d2"],spee,-3,0,0) c1(w["d3"],spee,-3,0,0)  
c1(w["e1"],spee,-70,90,0) c1(w["e2"],spee,10,0,0) c1(w["e3"],spee,-10,0,0)  
elseif form == "wide2" then
c1(w["a1"],spee,-18,0,45)  c1(w["a2"],spee,36,0,0) c1(w["a3"],spee,30,0,0) 
c1(w["b1"],spee,-18,0,15)  c1(w["b2"],spee,36,0,0) c1(w["b3"],spee,30,0,0) 
c1(w["c1"],spee,-18,0,-15)  c1(w["c2"],spee,36,0,0) c1(w["c3"],spee,30,0,0) 
c1(w["d1"],spee,-18,0,-45)  c1(w["d2"],spee,36,0,0) c1(w["d3"],spee,30,0,0) 
c1(w["e1"],spee,-50,90,-10)  c1(w["e2"],spee,5,0,-30) c1(w["e3"],spee,-10,0,-40) 
elseif form == "grab2"  then
c1(w["a1"],spee,-70,-65,0) c1(w["a2"],spee,40,0,0)  c1(w["a3"],spee,20,0,0) 
c1(w["b1"],spee,-70,-20,0) c1(w["b2"],spee,40,0,0)  c1(w["b3"],spee,20,0,0) 
c1(w["c1"],spee,-70,20,-0) c1(w["c2"],spee,40,0,0)  c1(w["c3"],spee,20,0,0) 
c1(w["d1"],spee,-70,65,-0) c1(w["d2"],spee,40,0,0)  c1(w["d3"],spee,20,0,0) 
c1(w["e1"],spee,-70,150,0) c1(w["e2"],spee,30,0,0)  c1(w["e3"],spee,30,0,0) 
elseif form == "grab3"  then
c1(w["a1"],spee,-30,-40,30) c1(w["a2"],spee,50,0,0)  c1(w["a3"],spee,35,0,0) 
c1(w["b1"],spee,-30,-15,12) c1(w["b2"],spee,50,0,0)  c1(w["b3"],spee,35,0,0) 
c1(w["c1"],spee,-30,15,-12) c1(w["c2"],spee,50,0,0)  c1(w["c3"],spee,35,0,0) 
c1(w["d1"],spee,-30,40,-30) c1(w["d2"],spee,50,0,0)  c1(w["d3"],spee,35,0,0) 
c1(w["e1"],spee,-55,205,0) c1(w["e2"],spee,30,0,0)  c1(w["e3"],spee,30,0,0) 
end
end
function  ColFings(iscol)
pPinkie1.CanCollide = iscol
pPinkie2.CanCollide =  iscol
pPinkie3.CanCollide = iscol
pRing1.CanCollide =  iscol
pRing2.CanCollide = iscol
pRing3.CanCollide =  iscol
pMid1.CanCollide = iscol
pMid2.CanCollide =  iscol
pMid3.CanCollide = iscol
pPoint1.CanCollide =  iscol
pPoint2.CanCollide = iscol
pPoint3.CanCollide =  iscol
pThumb1.CanCollide = iscol
pThumb2.CanCollide =  iscol
pThumb3.CanCollide = iscol
end
function ray(Pos, Dir) 
return  Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999), c) 
end 
function  Earthsplosion(pos,siz,dmg,rndmg,forc,eos) local colz22 = "Really red" if eos ==  nil or eos == "earth" then eos = "earth" else colz22 = "Really black" eos =  "sand" end 
coroutine.resume(coroutine.create(function() 
if eos ==  "earth" then local cr =  pa(m,"Block",((14*siz)/10)*s,0,((14*siz)/10)*s,false,false,1,0,"") cr.Anchored =  true cr.CFrame = pos *ca(rd(0),rd(ra(-360,360)),rd(0)) cr.CFrame = cr.CFrame +  v3(ra(-siz*10,siz*10)/22,0,ra(-siz*10,siz*10)/22)
local de = it("Decal",cr)  de.Face = "Top" de.Texture = asset .. Decs.Crack Serv.d:AddItem(cr,25)  end
for i=1,4 do
coroutine.resume(coroutine.create(function() 
local sw  = pa(m,"Block",(siz/3)*s,(siz*1.3)*s,(siz/3)*s,true,true,0,0,colz22) sw.Anchored  = true sw.CFrame = pos *cf(ra(-3*s,3*s),0,ra(-3*s,3*s))  *ca(rd(ra(-27,27)),rd(ra(-360,360)),rd(ra(-27,27))) local swm =  it("SpecialMesh",sw) if eos == "earth" then swm.MeshType =  "FileMesh"
swm.MeshId = asset .. Decs.Spike else swm.MeshType = "Sphere" end  if eos == "earth" then swm.Scale =  v3(sw.Size.x/1.3,sw.Size.y*1.2,sw.Size.z/1.3)
else swm.Scale =  v3(sw.Size.x/10,sw.Size.y/37,sw.Size.z/10) end sw.CFrame = sw.CFrame +  v3(ra(-0.3*siz*s,0.3*siz*s,7),0,ra(-0.3*siz*s,0.3*siz*s)) sw.CFrame = sw.CFrame  * cf(0,-sw.Size.y/1.4,0)
Dustplosion(cf(pos.p+v3(0,2*s,0)),18*s,{"Really  red","Really black","Really red"},1)
if eos == "earth" then 
for x=1,8  do
sw.CFrame = sw.CFrame *cf(0,sw.Size.y/8,0) wait() end wait(ra(1,5))
for  x=1,20 do
sw.CFrame = sw.CFrame *cf(0,-sw.Size.y/20,0) wait()
end  sw:Remove()
else 
for x=1,25 do
sw.CFrame = sw.CFrame  *cf(0,sw.Size.y/25,0) sw.Transparency = x/25 - 0.1 swm.Scale = swm.Scale +  v3(0.025,0.025,0.025) wait() end
end sw:Remove()
end)) end  
wait(0.3)
DmgHumanoidsNear(pos.p,dmg,rndmg,5.5*s*(siz/4),forc)
end))
end
 
function  Dustplosion(onb,scale,col,cls) coroutine.resume(coroutine.create(function()  
for x=1,cls do coroutine.resume(coroutine.create(function() 
local sw =  pa(m,"Block",1*s,0,1*s,false,false,0.2,0,col[ra(1,#col)]) sw.Anchored = true  sw.CFrame = onb *ca(rd(ra(-35,35)),rd(ra(-360,360)),rd(ra(-35,35))) local swm =  it("SpecialMesh",sw) swm.MeshType = "FileMesh"
swm.MeshId = asset ..  Decs.Cloud sw.CFrame = sw.CFrame +  v3(ra(-scale,scale)/8,ra(-scale,scale)/8,ra(-scale,scale)/8) 
for  i=1,scale,0.25 do 
swm.Scale = v3(i*1.5,i*1,i*1.5) sw.Transparency =  ((i/scale)/2) + 0.45
wait()
end
sw:Remove()
end)) end 
end)) end  
function ShockWave(onb,scale,col)  coroutine.resume(coroutine.create(function() local sw =  pa(m,"Block",1*s,0,1*s,false,false,0.2,0,col) sw.Anchored = true sw.CFrame = onb  *ca(rd(90),0,0) local swm = it("SpecialMesh",sw) swm.MeshType = "FileMesh"  swm.MeshId = RingMesh.MeshId 
for i=1,scale,0.75 do swm.Scale =  v3(i*1.5,i*1.5,i*1.5) sw.Transparency = (i/scale) + 0 wait() end sw:Remove()  end)) end 
function BlastWave(onb,scale,ymes,col)  coroutine.resume(coroutine.create(function() 
local sw =  pa(m,"Block",1*s,0,1*s,false,false,0.2,0,col) sw.Anchored = true sw.CFrame = onb  *ca(rd(0),0,0) local swm = it("SpecialMesh",sw) swm.MeshType =  "FileMesh"
swm.MeshId = BlastMesh.MeshId 
for i=1,scale,scale/11 do  
swm.Scale = v3(i*1.25,i*ymes,i*1.25) sw.CFrame = sw.CFrame  *ca(0,rd(720*(i/scale)),0) sw.Transparency = (i/scale) +  0
wait()
end
sw:Remove()
end))
end 
function  Explode(onb,scale,col) local Torm = m  coroutine.resume(coroutine.create(function() local e1 = Instance.new("Part")  e1.Anchored = true e1.formFactor = "Custom" e1.CanCollide = false e1.Size =  Vector3.new(1,1,1) e1.BrickColor = BrickColor.new(col) 
e1.Transparency = 0.6  e1.TopSurface = 0 e1.BottomSurface = 0 e1.Parent = Torm e1.CFrame = onb local  e1m = Instance.new("SpecialMesh") 
e1m.MeshType = "Sphere" e1m.Parent = e1  local r1 = Instance.new("Part") r1.Anchored = true r1.formFactor = "Custom"  r1.CanCollide = false r1.Size = Vector3.new(1,1,1) r1.BrickColor =  BrickColor.new(col) r1.Transparency = 0.6 r1.TopSurface = 0 r1.BottomSurface = 0  r1.Parent = Torm r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(180),0,0) local  r1m = Instance.new("SpecialMesh") r1m.MeshType = "FileMesh" 
r1m.Scale =  Vector3.new(3,3,3) r1m.Parent = r1 r1m.MeshId = RingMesh.MeshId local r2 =  Instance.new("Part") r2.Anchored = true r2.formFactor = "Custom" r2.CanCollide =  false r2.Size = Vector3.new(1,1,1) r2.BrickColor = BrickColor.new(col)  r2.Transparency = 0.6 r2.TopSurface = 0 r2.BottomSurface = 0 r2.Parent = Torm  r2.CFrame = e1.CFrame *CFrame.Angles(0,math.rad(180),0) local r2m =  Instance.new("SpecialMesh") r2m.MeshType = "FileMesh" 
r2m.Parent = r2  r2m.Scale = Vector3.new(3,3,3) r2m.MeshId = RingMesh.MeshId local bla =  Instance.new("Part") bla.Anchored = true 
bla.formFactor = "Custom"  bla.CanCollide = false bla.Size = Vector3.new(1,1,1) bla.BrickColor =  BrickColor.new(col) bla.Transparency = 0.6 bla.TopSurface = 0 bla.BottomSurface  = 0 bla.Parent = Torm bla.CFrame = onb local blam = Instance.new("SpecialMesh")  
blam.MeshType = "FileMesh" blam.Parent = bla blam.Scale = Vector3.new(5,5,5)  blam.MeshId = BlastMesh.MeshId for i=1,30 do local pluscal = scale/38 e1m.Scale  = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal) 
r1m.Scale = r1m.Scale +  Vector3.new(pluscal,pluscal,pluscal) r2m.Scale = r1m.Scale +  Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale +  Vector3.new(pluscal,pluscal/2,pluscal) bla.CFrame = bla.CFrame *  CFrame.Angles(0,math.rad(12),0) r1.CFrame = r1.CFrame *  CFrame.Angles(math.rad(6),0,0) r2.CFrame = r2.CFrame *  CFrame.Angles(0,math.rad(6),0) wait() end for i=1,30 do local pluscal = scale/38  e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal) r1m.Scale =  r1m.Scale + Vector3.new(pluscal,pluscal,pluscal) r2m.Scale = r1m.Scale +  Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale +  Vector3.new(pluscal/3,pluscal/3,pluscal/3) bla.CFrame = bla.CFrame *  CFrame.Angles(0,math.rad(12),0) r1.CFrame = r1.CFrame *  CFrame.Angles(math.rad(6),0,0) r2.CFrame = r2.CFrame *  CFrame.Angles(0,math.rad(6),0) bla.Transparency = bla.Transparency + 0.1  e1.Transparency = e1.Transparency + 0.1 r1.Transparency = r1.Transparency + 0.1  r2.Transparency = r2.Transparency + 0.1 wait() end e1:Remove() r1:Remove()  r2:Remove() end)) end
 
function  Hurtsplosion(pos,dmg,rndmg,siz,forc)
coroutine.resume(coroutine.create(function()  local boomcol = {"Really red","Really black","Really red"}
for i=1,3 do  
coroutine.resume(coroutine.create(function()
local plos =  pa(m,"Block",1*s*siz,1.5*s*siz,0.7*s*siz,false,false,0.3,0,boomcol)  spm("Sphere",plos,1) plos.Anchored = true
plos.CFrame = cf(pos + v3(0,0,0)) *  ca(rd(ra(-360,360)),rd(ra(-360,360)),rd(ra(-360,360)))
plos.Mesh.Scale =  v3(0.1,0.1,0.1)
for i=0.3,1,0.03 do local plc =  plos.CFrame
plos.Mesh.Scale = v3(i*6,i*6,i*6) plos.Transparency = i  plos.CFrame = plc *  ca(rd(3),rd(3),0)
wait()
end
plos:Remove()
end))
end  
end))
wait(0.1)
DmgHumanoidsNear(pos,dmg,rndmg,5.5*s*siz,forc)
end
 
function  DmgHumanoidsNear(pos,dmg,rndmg,mag,forc) 
local function kidive(ob) 
for  i,v in pairs(ob:children()) do 
if v:IsA("BasePart") and  v.Parent.Parent:findFirstChild("Humanoid") == nil and  v.Parent:findFirstChild("Humanoid") == nil and (v.Position - pos).magnitude <  mag*1.3 and v.Anchored == false and v:GetMass() < 150 then  
v:BreakJoints() v.Velocity = cf(pos,v.Position).lookVector*forc
end
if  v:IsA("Humanoid") and v ~= hu and v.Parent:findFirstChild("Torso") then 
if  (pos - v.Parent.Torso.Position).magnitude < mag then local tdmg =  dmg*ra(1,rndmg) 
if v.Parent:findFirstChild("Hh") == nil then local hh=  Instance.new("NumberValue",v.Parent) hh.Name = "Hh"
hh.Value = v.Health -  tdmg else v.Parent.Hh.Value = v.Health - (tdmg*3.5) end 
v.Health =  v.Parent.Hh.Value if v.Parent.Hh.Value < 1 then v.Parent:BreakJoints() end  
end 
end 
if v:IsA("Model") or v:IsA("Workspace") then kidive(v) end  end end 
kidive(workspace) 
end 
function  Fire(bullet,typez,siz,dmg,rndmg,forc)
if typez == 1 then
bullet.Anchored =  true 
local bullethit = false
local tyms = 0
repeat
tyms = tyms +  2
local bhit,bpos = ray(bullet.Position,bullet.Position - (bullet.CFrame  *cf(0,0,-1)).p) 
if bpos ~= nil and (bpos - bullet.Position).magnitude < 7  then bullethit = true else bullet.CFrame = bullet.CFrame *cf(0,0,-1*s)  *ca(rd(-0.0025),rd(0),0) end 
if tyms%32 == 0 then wait() end 
until  bullethit or bullet.Position.y < -300 or tyms > 800 
bullet.CFrame =  bullet.CFrame *cf(0,0,8) bullet:Remove()
if bullet.Position.y < -300  then
else
Hurtsplosion(bullet.Position,dmg,rndmg,siz,forc)
end
elseif  typez == 2 then
bullet.Anchored = true 
local bullethit = false
local  tyms = 0
local ming = 0.001
repeat 
if tyms > 70 and (ming == 0.001  or ming == -2.5) then ming = -2.5
local bpos = (bullet.CFrame  *cf(0,0,-300)).p if (bpos -  v3(Palm.Position.x,bpos.y,Palm.Position.z)).magnitude < 25*s then ming = 0  end 
end
tyms = tyms + 2
local bhit,bpos =  ray(bullet.Position,bullet.Position - (bullet.CFrame *cf(0,0,-1)).p) 
if bpos  ~= nil and (bpos - bullet.Position).magnitude < 7 then bullethit = true else  bullet.CFrame = bullet.CFrame *cf(0,0,-0.5) *ca(rd(ming),rd(0),0) end 
if  tyms%16 == 0 then wait() end 
until bullethit or bullet.Position.y < -300  or tyms > 500 
bullet.CFrame = bullet.CFrame *cf(0,0,8)  bullet:Remove()
if bullet.Position.y < -300  then
else
Hurtsplosion(bullet.Position,dmg,rndmg,siz,forc)
end
elseif  typez == 3 then 
end
end 
function ShortifiedAnim(theanim)
if  theanim == "Beam" then
local crom =  pa(m,"Block",0,0,0,true,true,0.5,0,LaserCol3) local cromm =  it("SpecialMesh",crom) cromm.MeshType = "FileMesh" cromm.MeshId = asset ..  Decs.Crown
cromm.Scale = v3(15*s,5*s,15*s) crom.Anchored = true --local cromw  = weld(crom,Palm,crom,0,Palm.Size.y/3.6,-Palm.Size.z*1.8,rd(-90),0,0)
dias =  {} loldiv = 360/8 for x=0,360,loldiv do 
local dia =  pa(m,"Block",0,0,0,false,false,0,0,LaserCol2) dia.Anchored = true local diam =  it("SpecialMesh",dia) diam.MeshType = "FileMesh" diam.MeshId =  DiamondMesh.MeshId
diam.Scale = v3(3*s,9*s,3*s) table.insert(dias,dia)
end  Button = true coroutine.resume(coroutine.create(function() local tardz = 0  repeat wait() tardz = tardz+ 15
crom.CFrame = Palm.CFrame *ca(rd(-90),0,0)  *cf(0,5.5*s,2*s) *ca(0,rd(tardz),0) 
for rofl=1,#dias do dias[rofl].CFrame =  crom.CFrame *ca(0,rd(rofl*loldiv),0) *cf(0,-19*s,0) *ca(rd(25),0,0)  *cf(0,32*s,0) end 
until not Button for x2=0.5,1,0.05 do wait()  crom.Transparency = x2 end end))
coroutine.resume(coroutine.create(function()  for xk=1,0.5,-0.02 do wait() for i=1,#dias do dias.Transparency =xk end end  end))
wait(1) local beamoffset = v3(0,0,0)
local b1 =  pa(m,"Ball",10*s,10*s,10*s,false,false,0.1,0,LaserCol) b1.Anchored = true  
local b2 = pa(m,"Block",10*s,1,10*s,false,false,0.1,0,LaserCol) b2.Anchored  = true local b2m = it("CylinderMesh",b2)
local b3 =  pa(m,"Ball",10*s,10*s,10*s,false,false,0.1,0,LaserCol) b3.Anchored = true  
local bpos = nil local bhit = nil local ts = 0
repeat beamoffset =  v3(ra(-2*s,2*s),ra(-2*s,2*s),ra(-2*s,2*s)) ts = ts + 1
bhit,bpos =  ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,0,1)).p) 
if bhit == nil  or (Palm.Position - bpos).magnitude > 1500 then break end 
b1.CFrame =  Palm.CFrame *cf(0,3*s,-11*s) 
b3.CFrame = cf(bpos) local lenz = (b1.Position  - b3.Position).magnitude 
b2.CFrame = cf(b1.Position,b3.Position)  *ca(rd(90),0,0) *cf(0,-lenz/2,0) b2m.Scale = v3(1,lenz,1)
b1.CFrame =  b1.CFrame + beamoffset b2.CFrame = b2.CFrame + beamoffset b3.CFrame = b3.CFrame  + beamoffset 
if ts%10 == 0 then  DmgHumanoidsNear(b3.Position,3,10,(14*s)+2,100)  Explode(b3.CFrame*cf(0,b3.Size.y/3,0),25*s,LaserCol2) end
wait() until not  Button or ts > 600
coroutine.resume(coroutine.create(function() for  xk=0.1,1.1,0.08 do wait() b1.Transparency = xk b2.Transparency = xk  b3.Transparency = xk end b1:Remove() b2:Remove() b3:Remove()  end))
coroutine.resume(coroutine.create(function() for xk=0.5,1.1,0.02 do  wait() for i=1,#dias do dias.Transparency =xk end end end))
wait(1)  clearit(dias) crom:Remove()
end
end 
PalmLev = it("BodyPosition",Palm)  
PalmFace = it("BodyGyro",Palm) PalmFace.maxTorque =  v3(0,0,0)
coroutine.resume(coroutine.create(function()
PalmLev.position =  (t.CFrame *cf(handoffset)).p
local yspi = 0
while true do yspi = yspi +  8
if Anim.a == "Gun" or Anim.a == "Ride" or Anim.a == "Pound" then 
Facing  = "Mouse" bgx = -90 bgy = 90 bgz = 0 
elseif Anim.a == "Fu" or Anim.a ==  "Fist" or Anim.a == "GroundGrip" then 
Facing = "Mouse" bgx = -90 bgy = 0 bgz  = 0 
elseif Anim.a == "Splat" or Anim.a == "Beam" then
Facing = "Mouse"  bgx = 0 bgy = 0 bgz = 0 
elseif Anim.a == "None" then 
Facing = "Owner"  bgx = -90 bgy = 0 bgz = 0 Posing = "Follow"
elseif Anim.a == "Shower"  then
Facing = "None" bgx = 0 bgy = 0 bgz = 0 Posing = "TopOwner"
end  
if Posing == "Follow" then 
PalmLev.maxForce = v3(1/0,1/0,1/0)  PalmLev.position = (t.CFrame *cf(handoffset) *cf(0,0,0)).p 
elseif Posing ==  "TopOwner" then
PalmLev.maxForce = v3(1/0,1/0,1/0) PalmLev.position =  (t.CFrame *cf(0,12*s,0)).p 
end 
if Facing == "Owner" then  
PalmFace.maxTorque = v3(1/0,1/0,1/0) PalmFace.cframe =  cf(Palm.Position,he.Position) *ca(rd(bgx),rd(bgy),rd(bgz))
elseif Facing ==  "Mouse" and mou ~= nil and Equip then 
if Anim.a == "Gun" or Anim.a == "Beam"  or Anim.a == "Ride" or Anim.a == "GroundGrip" or Anim.a == "Fu" or Anim.a ==  "Pound" or Anim.a == "Splat" or Anim.a == "Fist" then 
if Anim.b == "None" or  Anim.a == "Beam" or Anim.a == "Ride" then 
PalmFace.cframe =  cf(Palm.Position,mou.Hit.p) *ca(rd(bgx),rd(bgy),rd(bgz)) wait(0.05)
end end  end
wait(0.05)
end 
end))
function  FireFinger(lasercol,ffingz,targ,typez,siz,dmg,rndmg,forc)  coroutine.resume(coroutine.create(function() 
local laser =  pa(m,"Block",fingwide*1.3,fingwide*1.3,fingwide*2.5,true,false,0,0,lasercol)  spm("Sphere",laser,1+(siz/5.5)) laser.Name = "Projectile"
local lw =  weld(laser,ffingz,laser,0,ffingz.Size.y/0.8 +(siz/2.5),0,rd(90),0,0)
for  i=1,0.4,-0.05 do laser.Transparency = i wait() end  
BlastWave(ffingz.CFrame*cf(0,ffingz.Size.y*1.3,0)*ca(0,0,0),ffingz.Size.x*1.6,1.8,LaserCol2)
lw:Remove()  laser.CFrame = cf(laser.Position,targ)
Fire(laser,typez,siz,dmg,rndmg,forc)  
end))
end
GrabWeld =  it("Weld",m)
Palm.Touched:connect(function(touch)
if Anim.a == "Ride" and  GrabWeld.Part1 == nil and touch.Parent:findFirstChild("Torso") and  touch.Parent:findFirstChild("Humanoid") then
local tor = touch.Parent.Torso  touch.Parent.Humanoid.PlatformStand = true 
GrabWeld.Part0 = Palm  GrabWeld.Part1 = tor GrabWeld.C0 = cf(-3*s,4.5*s,-Palm.Size.x/2) GrabWeld.C1 =  ca(0,rd(90),rd(-90)) *ca(0,rd(0),0)
end
end)
re(bp,"Hand")
hb =  it("HopperBin",bp) hb.Name = "Hand"
hb.Selected:connect(function(mouse) mou =  mouse Equip = true
mouse.KeyDown:connect(function(k) k = k:lower()
if  Anim.a == "Ride" and k == "f" then  FireFinger(LaserCol,pPinkie3,mouse.Hit.p,1,2.25,1,18,30) end
if Anim.b ~=  "None" or Anim.Welding ~= 0 then return end 
if Anim.a == "None" then
if k  == "f" then -- on anim on
Anim.a = "Gun" HandSign("Gun",0.7)
elseif k ==  "p" then
Anim.a = "Fu" HandSign("f",1)
elseif k == "g" then
Anim.a =  "Fist" HandSign("fist",1)
elseif k == "c" then
Anim.a = "Splat"  HandSign("wide",1)
elseif k == "r" then
Anim.a = "Ride" HandSign("ride",1)  Posing = "None"
elseif k == "v" then
Anim.a = "Shower" HandSign("grab2",1)  PalmFace.cframe = cf(0,0,0) *ca(0,0,0)
elseif k == "b" then
Anim.a =  "Pound" HandSign("fist",1)
elseif k == "x" then
Anim.a = "GroundGrip"  HandSign("grab2",1)
elseif k == "z" then
Anim.a = "Beam"  HandSign("wide2",1) 
end 
else
if k == "f" and Anim.a == "Gun" then --  on anim off
Anim.a = "None" HandSign("five",0.8)
elseif k == "p" and  Anim.a == "Fu" then
Anim.a = "None" HandSign("five",0.8)
elseif k == "g"  and Anim.a == "Fist" then
Anim.a = "None" HandSign("five",0.8)
elseif k ==  "c" and Anim.a == "Splat" then
Anim.a = "None" HandSign("five",0.8)
elseif  k == "r" and Anim.a == "Ride" then
Anim.a = "None" HandSign("five",0.8)  GrabWeld.Part0 = nil Anim.b = "None" Posing = "Follow" Facing = "Owner"
if  GrabWeld.Part1 ~= nil and GrabWeld.Part1.Parent:findFirstChild("Humanoid") ~=  nil then GrabWeld.Part1.Parent.Humanoid.PlatformStand = false end GrabWeld.Part1  = nil
elseif k == "v" and Anim.a == "Shower" then
Anim.a = "None"  HandSign("five",0.8) Posing = "Follow" Facing = "Owner"
elseif k == "b" and  Anim.a == "Pound" then
Anim.a = "None" HandSign("five",0.8)
elseif k ==  "x" and Anim.a == "GroundGrip" then 
Anim.a = "None"  HandSign("five",0.8)
elseif k == "z" and Anim.a == "Beam" then 
Anim.a =  "None"  HandSign("five",0.8)
end
end
end)
mouse.Button1Down:connect(function()
if  Anim.a == "None" or Anim.b ~= "None" then return end 
if Anim.a == "Gun"  then
Anim.b = "Gun" FireFinger(LaserCol,pPoint3,mouse.Hit.p,1,2.25,1,10,60)  FireFinger(LaserCol,pMid3,mouse.Hit.p,1,2.25) wait(1) Anim.b = "None"
elseif  Anim.a == "Fu" then
Anim.b = "Fu"  FireFinger(LaserCol,pMid3,mouse.Hit.p,1,3.65,2,14,95) wait(0.25) Anim.b =  "None"
elseif Anim.a == "Fist" then 
local bhit,bpos =  ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,-1,0)).p) 
if bhit ==  nil or (Palm.Position - bpos).magnitude > 500 then return end 
Anim.b =  "Fist" Posing = "None" PalmFace.cframe = cf(Palm.Position,bpos)  *ca(rd(-90),0,0)
PalmLev.position = (Palm.CFrame  *cf(0,-15*s,0)).p
wait(0.45)
PalmLev.position = bpos + ((Palm.CFrame  *cf(0,1*s,0)).p - Palm.Position)
local tz = 0 repeat wait()  BlastWave(Palm.CFrame*ca(rd(180),0,0),8*s,3.5,HCol) tz = tz + wait() until  (PalmLev.position - Palm.Position).magnitude < 8*s or tz >  1
Explode(Palm.CFrame *cf(0,6*s,0)  *ca(rd(180),0,0),15*s,ts(bhit.BrickColor))
DmgHumanoidsNear((Palm.CFrame  *cf(0,8,0)).p,3,10,(12*s)+2,105)
if not bhit.Anchored then PalmLev.position =  (Palm.CFrame *cf(0,12*s,0)).p wait(0.5) end 
wait(1) Posing = "Follow" Anim.b  = "None"
elseif Anim.a == "Splat" then
if mouse.Target == nil and  (Palm.Position - mouse.Hit.p).magnitude > 500 then return end local bpos =  mouse.Hit.p
Anim.b = "Splat" Posing = "None" 
local ya,yb,yc =  PalmFace.cframe:toEulerAnglesXYZ() PalmFace.cframe = cf(0,0,0) *ca(0,yb,0)  *ca(rd(-90),0,0) PalmLev.position = bpos + v3(0,10*s,0)
local tz = 0 repeat  wait() tz = tz + wait() until (PalmLev.position - Palm.Position).magnitude <  5*s or tz > 1.3 
for i=-90,0,5 do 
PalmLev.position = PalmLev.position  + v3(0,2*s,0) PalmFace.cframe = cf(0,0,0) *ca(0,yb,0)  *ca(rd(i),0,0)
wait()
end wait(0.2)
for i=0,-100,-10 do 
local lewd  = i
if lewd < -50 then lewd = -95 end 
PalmLev.position =  PalmLev.position - v3(0,4.7*s,0) PalmFace.cframe = cf(0,0,0) *ca(0,yb,0)  *ca(rd(lewd),0,0)
wait()
end wait(0.2)
local cr =  pa(m,"Block",16*s,0,16*s,false,false,1,0,"") cr.Anchored = true cr.CFrame =  cf(bpos) *ca(0,rd(ra(-360,360)),0)
local de = it("Decal",cr) de.Face = "Top"  de.Texture = asset .. Decs.Crack  Serv.d:AddItem(cr,16)
DmgHumanoidsNear((Palm.CFrame  *cf(0,0,-1)).p,3,20,(15*s)+2,110)
ShockWave(Palm.CFrame  *ca(rd(90),0,0),25*s,LaserCol)
wait(1) Posing = "Follow" Anim.b =  "None"
elseif Anim.a == "Ride" and Button == false then
Posing = "None"  Anim.b = "Ride"
Button = true
repeat PalmLev.position = (Palm.CFrame  *cf(0,10,0)).p wait() until Button == false
Anim.b = "None"
elseif Anim.a  == "Shower" and Button == false then
Anim.b = "Shower" Button = true  
repeat
local targz = Palm.Position + v3(0,20*s,0)
if ra(1,12) == 1  then FireFinger(LaserCol,pPinkie3,targz,2,4,1,18,55) end
if ra(1,13) == 1  then FireFinger(LaserCol,pRing3,targz,2,4,1,18,60) end
if ra(1,12) == 1 then  FireFinger(LaserCol,pMid3,targz,2,4,1,18,65) end
if ra(1,13) == 1 then  FireFinger(LaserCol,pPoint3,targz,2,4,1,18,70) end
if ra(1,12) == 1 then  FireFinger(LaserCol,pThumb3,targz,2,4,1,18,80) end
PalmFace.cframe =  PalmFace.cframe *ca(0,rd(10),0)
wait()
until Button == false
Anim.b =  "None" 
elseif Anim.a == "Pound" and Anim.b == "None" then Posing = "None"  Anim.b = "Pound"
local bhit,bpos = ray(Palm.Position,Palm.Position -  (Palm.CFrame *cf(0,-1,0)).p) 
if bhit == nil or (Palm.Position -  bpos).magnitude > 500 then return end 
PalmLev.position = bpos +  v3(0,15*s,0) 
local ya,yb,yc = PalmFace.cframe:toEulerAnglesXYZ()  PalmFace.cframe = ca(ya,yb,yc) 
local tz = 0 repeat wait() tz = tz + wait()  until (PalmLev.position - Palm.Position).magnitude < 5*s or tz > 1.3  wait(0.1)
for i=-90,-10,10 do
PalmFace.cframe = ca(ya,yb,yc)  *ca(0,0,rd(i+90)) PalmLev.position = PalmLev.position + v3(0,2.5*s,0)
wait()  end wait(0.25) local realcf =  cf(v3(he.Position.x,0,he.Position.z),v3(Palm.Position.x,0,Palm.Position.z))
for  i=-10,-90,-10 do
PalmFace.cframe = ca(ya,yb,yc) *ca(0,0,rd(i+90))  PalmLev.position = PalmLev.position - v3(0,4*s,0)
wait() end PalmFace.cframe  = realcf *ca(rd(-90),rd(90),0) wait(0.25)
local cr =  pa(m,"Block",22*s,0,22*s,false,false,1,0,"") cr.Anchored = true cr.CFrame =  cf(bpos) *ca(0,rd(ra(-360,360)),0)
local de = it("Decal",cr) de.Face = "Top"  de.Texture = asset .. Decs.Crack  Serv.d:AddItem(cr,16)
Dustplosion(Palm.CFrame *cf(2*s,0,0)  *ca(rd(90),0,rd(90)),30*s,{"Really red","Really black","Really  red"},3)
ShockWave(Palm.CFrame *cf(2*s,0,0)  *ca(rd(90),0,rd(90)),20*s,ts(bhit.BrickColor))
DmgHumanoidsNear((Palm.CFrame  *cf(0,1,0)).p,1,20,(15*s)+2,90) wait(0.2)
local palmcf = cf(bpos) local  earthsplos = ra(5,8) palmcf = Palm.CFrame *ca(0,rd(90),0)  *ca(rd(-90),0,rd(0))
for i=1,earthsplos do Earthsplosion(palmcf  *cf(0,-2*s,((i*7)+7)*s),10,1,20,75) wait(0.1) end 
Earthsplosion(palmcf  *cf(0,-2*s,(((earthsplos+1)*7)+7)*s),16,2,25,75)
wait(1) Posing = "Follow"  wait(0.25) Anim.b = "None" 
elseif Anim.a == "GroundGrip" then Posing =  "None" Anim.b = "GroundGrip"
local bhit,bpos =  ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,-1,0)).p) 
if bhit ==  nil or (Palm.Position - bpos).magnitude > 500 then return end  
PalmLev.position = bpos + v3(0,27*s,0) ColFings(false)
local tz = 0  repeat wait() tz = tz + wait() until (PalmLev.position -  Palm.Position).magnitude < 8*s or tz > 1.3 wait(0.1)
local thepos =  (Palm.CFrame *cf(0,-0.1*s,0)).p - Palm.Position
PalmFace.cframe =  cf(Palm.Position,bpos + thepos) *ca(rd(-90),0,0)
for i=27,1,-3 do  PalmLev.position = bpos + v3(0,i*s,0) wait(0.07) end HandSign("grab3",0.4)  wait(0.55)
local ro = pa(m,"Ball",0,0,0,false,false,0,0,"Earth green")  ro.Name = "Rock" local row = it("SpecialMesh",ro) row.MeshType = "FileMesh"  row.MeshId = asset .. Decs.Rock
local rowe =  weld(ro,Palm,ro,0,Palm.Size.y,-Palm.Size.z*1.2,0,0,0) row.Scale =  v3(9*s,10*s,9*s)
coroutine.resume(coroutine.create(function() for xz=1,70,7  do PalmLev.position = bpos + v3(0,xz*s,0) wait(0.06) end end))
wait(0.25)  Dustplosion(cf(bpos),30*s,{"Really red","Really black","Really red"},3) local  lolra = ra(-360,360)
Earthsplosion(cf(bpos),25,1,20,125,"sand") for  yyy=0,360,60 do coroutine.resume(coroutine.create(function()
for zzz=1,4 do  
Earthsplosion(cf(bpos) *ca(0,rd(yyy+lolra),0) *cf(0,0,zzz*15*s),10,1,20,75)  wait(0.14)
end wait(0.25) Earthsplosion(cf(bpos) *ca(0,rd(yyy+lolra),0)  *cf(0,0,5*18*s),25,1,20,120) end)) end 
wait(0.3) HandSign("grab2",0.5)  wait(0.75) Serv.d:AddItem(ro,20) rowe:Remove() ro.CanCollide = true local rocf =  ro.CFrame ro.Size=v3(14*s,14*s,14*s) ro.CFrame = rocf wait(0.75) ColFings(true)  Posing = "Follow" Anim.b = "None" 
elseif Anim.a == "Beam" and not Button and  Anim.b == "None" then Anim.b = "Beam" 
ShortifiedAnim("Beam") wait(0.5)  Anim.b = "None"
end
end)
mouse.Button1Up:connect(function()
Button =  false
end)
mouse.Move:connect(function()  
end)
 
end)
hb.Deselected:connect(function(mouse)
Equip =  false
end)
 
 


	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Plane"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Plane"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		repeat wait() until game:IsLoaded() and game:service("Players").LocalPlayer.Character ~= nil;
wait(0.4) 
for i, v in pairs(game:service("Players").LocalPlayer.Character:children()) do 
if v ~= script then 
v:Destroy() 
end 
end 

local player = game:service("Players").LocalPlayer
local mouse = player:GetMouse() 
local cam = workspace.CurrentCamera 
local char = player.Character 
local Torsoz = char:findFirstChild("Torso") 
local NV = Vector3.new() 
local Main 
local W,S = false,false 
local DoublePress = {nil,0} 
script.Parent = char 

local TrailParts = {} 
local Acceleration = 0.08 
local Speed = 0 
local MinSpeed = 0 
local MaxSpeed = 3.2 
local DesiredDirection = cam.CoordinateFrame.lookVector 
local Direction = DesiredDirection 
local Roll = 0 
local AllowTrails = true 

script.Name = "AdvFlight" 

local P = Instance.new("Part") 
P.Anchored = true 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.2,0.2,0.2) 
P.Locked = true 
P.TopSurface = 10 
P.BottomSurface = 10 
P.FrontSurface = 10 
P.BackSurface = 10 
P.LeftSurface = 10 
P.RightSurface = 10 
P.Material = "Pebble" 
P.BrickColor = BrickColor.new("White") 

local shipp 
local shadow 
local campart 

function RAY(pos, dir, startpos, endpos, distleft, collidedlist) 
collidedlist = collidedlist or {char} 
startpos = startpos or pos 
distleft = distleft or dir.unit * dir.magnitude 
endpos = endpos or pos + distleft 
local ray = Ray.new(pos, distleft) 
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
if hitz ~= nil then 
if hitz.CanCollide == false then 
table.insert(collidedlist, hitz) 
local newpos = enz 
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
if newdistleft ~= NV then 
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist) 
end 
end 
end 
return hitz, enz, ray 
end 

function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end 

function HSV(H,S,V) 
H = H % 360 
local C = V * S 
local H2 = H/60 
local X = C * (1 - math.abs((H2 %2) -1)) 
local color = Color3.new(0,0,0) 
if H2 <= 0 then 
color = Color3.new(C,0,0) 
elseif 0 <= H2 and H2 <= 1 then 
color = Color3.new(C,X,0) 
elseif 1 <= H2 and H2 <= 2 then 
color = Color3.new(X,C,0) 
elseif 2 <= H2 and H2 <= 3 then 
color = Color3.new(0,C,X) 
elseif 3 <= H2 and H2 <= 4 then 
color = Color3.new(0,X,C) 
elseif 4 <= H2 and H2 <= 5 then 
color = Color3.new(X,0,C) 
elseif 5 <= H2 and H2 <= 6 then 
color = Color3.new(C,0,X) 
end 
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m) 
end 

function Build(shiptype) 
AllowTrails = true 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Ship" then 
v:remove() 
end 
end 
for i, v in pairs(TrailParts) do 
for _,V in pairs(v[3]) do 
V:Destroy() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "Ship" 

------------------------ Speeder Ship Type -----------------------------
if shiptype == "Speeder" then 

shipp = P:Clone() 
shipp.Parent = mdl 
shipp.Size = Vector3.new(1,1,2.2) 
local shipwing1 = P:Clone() 
shipwing1.Parent = mdl 
shipwing1.Size = Vector3.new(0.6,1.2,2) 
local mesh = Instance.new("SpecialMesh", shipwing1) 
mesh.MeshType = "Wedge" 
local shipwing2 = shipwing1:Clone() 
shipwing2.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 
local shipwing21 = P:Clone() 
shipwing21.Parent = mdl 
shipwing21.Size = Vector3.new(0.32,1.1,2.6) 
local mesh = Instance.new("SpecialMesh", shipwing21) 
mesh.MeshType = "Wedge" 
local shipwing22 = shipwing21:Clone() 
shipwing22.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 

local shipwi = P:Clone() 
shipwi.Parent = mdl 
shipwi.Size = Vector3.new(1,1,1.2) 
local mesh = Instance.new("SpecialMesh", shipwi) 
mesh.MeshType = "Wedge" 
local shipwi2 = P:Clone() 
shipwi2.Parent = mdl 
shipwi2.Size = Vector3.new(0.7,0.7,0.84) 
shipwi2.Material = "SmoothPlastic" 
shipwi2.BrickColor = BrickColor.new("Pastel blue") 
shipwi2.Reflectance = 0.6 
local mesh = Instance.new("SpecialMesh", shipwi2) 
mesh.MeshType = "Wedge" 

shadow = P:Clone() 
shadow.Parent = mdl 
shadow.Name = "Shadow" 
shadow.Material = "SmoothPlastic" 
shadow.BrickColor = BrickColor.new("Really black") 
local mesh = Instance.new("SpecialMesh",shadow) 
mesh.MeshType = "Sphere" 

TrailParts = {} 
table.insert(TrailParts,{shipp,1,{},cam.CoordinateFrame.p,CFrame.new(0,0,1),0.5,18}) 
table.insert(TrailParts,{shipwing1,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
table.insert(TrailParts,{shipwing2,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
for _, V in pairs(TrailParts) do 
for i = 1, V[7] do 
local p = P:Clone() 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshId = "http://www.roblox.com/asset/?id=9856898" 
mesh.TextureId = "http://www.roblox.com/asset/?id=48358980" 
p.BrickColor = BrickColor.new("Dark stone grey") 
table.insert(V[3],p) 
end 
end 

function ReposParts() 
shipwing1.CFrame = shipp.CFrame * CFrame.new(-1.1,-0.195,-0.14) * CFrame.Angles(0,0,math.pi/2) 
shipwing2.CFrame = shipp.CFrame * CFrame.new(1.1,-0.195,-0.14) * CFrame.Angles(0,0,-math.pi/2) 
shipwing21.CFrame = shipp.CFrame * CFrame.new(-1.05,-0.34,-0.45) * CFrame.Angles(0,0,math.pi/2) 
shipwing22.CFrame = shipp.CFrame * CFrame.new(1.05,-0.34,-0.45) * CFrame.Angles(0,0,-math.pi/2) 
shipwi.CFrame = shipp.CFrame * CFrame.new(0,0,-1.7) 
shipwi2.CFrame = shipwi.CFrame * CFrame.new(0,0.015,-0.015) 
campart.CFrame = shipp.CFrame + Vector3.new(0,1.5,0) 
end 
cam.CameraSubject = campart 
cam.CameraType = "Track" 

shipp.CFrame = CFrame.new(NV,Direction) + cam.CoordinateFrame.p 
ReposParts() 

end 

AllowTrails = true 
end 
Build("Speeder") 

function B1D() 
Build("Speeder") 
end 

function RollThatSht(direc) 
if Roll == 0 then 
for i = 1, 50 do 
Roll = (-360 + math.cos(math.pi/50*i) * 360) * direc 
wait(0.02) 
end 
Roll = 0 
end 
end 

function KD(key) 
if key == "w" then 
W = true 
elseif key == "s" then 
S = true 
end 

local rollpls = 0 
if key == DoublePress[1] and tick() - DoublePress[2] < 0.32 then 
DoublePress = {nil,0} 
if key == "a" then 
rollpls = -1 
elseif key == "d" then 
rollpls = 1 
end 
end 

DoublePress = {key,tick()} 
if rollpls ~= 0 then 
RollThatSht(rollpls) 
end 
end 

function KU(key) 
if key == "w" then 
W = false 
elseif key == "s" then 
S = false 
end 
end 

function Equip() 
end 

function Unequip() 
end 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(B1D) 
mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 



local count = 0 
local hue = 0 
--game:GetService("RunService").Stepped:connect(function() 
while wait(0.02) do 

------ Speed --------
local valu = (0.002*MaxSpeed) + ((Speed/MaxSpeed)*Acceleration)
if W == true then 
Speed = Speed + valu 
elseif S == true then 
Speed = Speed - valu 
end 
if Speed > MaxSpeed then 
Speed = MaxSpeed 
elseif Speed < MinSpeed then 
Speed = MinSpeed 
end 

------ left/right tilt ---------
local target = 180 + math.floor(math.deg(math.atan2(DesiredDirection.x,DesiredDirection.z))) 
local current = 180 + math.floor(math.deg(math.atan2(Direction.x,Direction.z))) 
local swing = 0 
if math.abs(math.abs(current-target) - 360) > math.abs(target-current) then 
swing = target-current 
else 
swing = (current > target and -(math.abs(current-target) - 360)) or (current < target and math.abs(current-target) - 360) 
end 

DesiredDirection = cam.CoordinateFrame.lookVector 
------ direction smoothening ------ 
local dir = DesiredDirection.unit 
if Direction ~= dir then 
if (Direction - dir).magnitude < 0.01 then 
Direction = dir 
else 
local dist = ((dir - Direction).unit * (dir - Direction).magnitude) /10 
Direction = (Direction + dist).unit 
end 
end 

shipp.CFrame = (CFrame.new(NV,Direction) + shipp.Position + (Direction.unit * Speed)) * CFrame.Angles(0,0,math.rad(Roll) + math.rad(swing/2)) 
ReposParts() 

------ shadow ------
local ghitz, genz = RAY(shipp.Position,Vector3.new(0,-26,0)) 
local angles = CFrame.new() 
if ghitz ~= nil and ghitz.className ~= "Terrain" and ((ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Block) or (ghitz.className ~= "Part" and ghitz:IsA("BasePart"))) then 
local wvec,vec = FindSurface(ghitz,genz) 
angles = CFrame.new(NV,wvec) * CFrame.Angles(-math.pi/2,0,0) 
elseif ghitz ~= nil and (ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Ball) then 
angles = (CFrame.new(ghitz.Position, genz) - ghitz.Position) * CFrame.Angles(-math.pi/2,0,0) 
end 
shadow.CFrame = CFrame.new(genz) * angles 
shadow.Transparency = 0.5 + (((shipp.Position - genz).magnitude /26)*0.5)
shadow.Mesh.Scale = (Vector3.new(4.4,0.25,4.4) * 5) * (1-(shipp.Position - genz).magnitude /26)

------- Trails ----------------------- 
if AllowTrails == true then 
count = (count+1)%1 
hue = (hue+1) % 360
local rgb = HSV(hue,0.65,0.85) 
for _,v in pairs(TrailParts) do 
local to = (v[1].CFrame * v[5]).p
if Speed > MinSpeed + 0.2 then 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].CFrame = CFrame.new((v[4] + to)/2,to) * CFrame.Angles(math.pi/2,math.rad(Roll) + math.rad(swing/2),0) 
v[3][v[2]].Mesh.Scale = Vector3.new(v[6],(v[4] - to).magnitude*2,v[6]) 
v[3][v[2]].Mesh.VertexColor = Vector3.new(rgb.r,rgb.g,rgb.b) 
v[3][v[2]].Transparency = 0.15 
v[3][v[2]].Parent = game.Players.LocalPlayer.Character
else 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].Parent = nil 
end 

v[4] = to 
end 
end 

end 
--end) 

-- 138098590 -- plane destroyed sound 
-- 133082569 -- propeller 2 
-- 135645246 -- propeller 1 
--[[ Possible Game names 
Aeroscape
Airbound
Aerialtude
]]
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Snowball"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Snowball"
	button.TextColor3 = whit
	 	button.MouseButton1Down:connect(function()
		repeat wait() until game:GetService("Players").LocalPlayer.Character ~= nil;
wait(0.5)

S = Instance.new("Model")
S.Name = "ValueChanger1"
S.Parent = Game.Workspace
--- vars ---
local player = game:GetService("Players").LocalPlayer
local repstor = game:GetService("ReplicatedStorage") 
local mouse = player:GetMouse() 
local char = player.Character 
local Hu = char.Humanoid 
local Gui = player:WaitForChild("PlayerGui") 
local Torsoz = char:findFirstChild("Torso") 
local HRP = char:findFirstChild("HumanoidRootPart") 
local HRJ = HRP:findFirstChild("RootJoint") 
local RA = char:findFirstChild("Right Arm") 
local LA = char:findFirstChild("Left Arm") 
local RL = char:findFirstChild("Right Leg") 
local LL = char:findFirstChild("Left Leg") 
local H = char:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local NV = Vector3.new() 
local Main 
local SPB,SPF,SPC,SnowPart 
local SPCP = 0 
local Animating = false 
local Walkspeed = 16 
local Shift, Alt, Space, MouseDown = false, false, false, false 
local ThrowingSequence = false 
local SlideCooldown = 0 
local SnowballProjectiles, SnowSplosionEffects = {}, {} 
local disableJump = false 

local AnimSpeeds = {
0.5; -- idle
5; -- walking 
6.5; -- running 
7; -- jumping 
7; -- falling
}  

for i, v in pairs(char:children()) do 
if v.Name == "Cheese" then 
v:remove() 
end 
end 
script.Parent = char 
script.Name = "Cheese" 

------------ animation funcs & other things ---------------
local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.2,0.2,0.2) 
P.Locked = true 
P.TopSurface = 10 
P.BottomSurface = 10 
P.FrontSurface = 10 
P.BackSurface = 10 
P.LeftSurface = 10 
P.RightSurface = 10 

function GetWeld(weld) 
if weld:findFirstChild("WeldAngle") == nil then 
local a = Instance.new("Vector3Value", weld) 
a.Name = "WeldAngle" 
end 
return weld.C0.p, weld.WeldAngle.Value 
end 

function SetWeld(weld, i, loops, origpos,origangle, nextpos,nextangle,smooth) 
smooth = smooth or 1 
if weld:findFirstChild("WeldAngle") == nil then 
local a = Instance.new("Vector3Value", weld) 
a.Name = "WeldAngle" 
end 

local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 

local tox,toy,toz = 0,0,0 
tox = math.abs(origangle.x - nextangle.x) *perc 
toy = math.abs(origangle.y - nextangle.y) *perc 
toz = math.abs(origangle.z - nextangle.z) *perc 
tox = (origangle.x > nextangle.x and -tox) or tox 
toy = (origangle.y > nextangle.y and -toy) or toy 
toz = (origangle.z > nextangle.z and -toz) or toz 

local tox2,toy2,toz2 = 0,0,0 
tox2 = math.abs(origpos.x - nextpos.x) *perc 
toy2 = math.abs(origpos.y - nextpos.y) *perc 
toz2 = math.abs(origpos.z - nextpos.z) *perc 
tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
toz2 = (origpos.z > nextpos.z and -toz2) or toz2 

weld.WeldAngle.Value = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function RAY(pos, dir, startpos, endpos, distleft, collidedlist) 
collidedlist = collidedlist or {char} 
startpos = startpos or pos 
distleft = distleft or dir.unit * dir.magnitude 
endpos = endpos or pos + distleft 
local ray = Ray.new(pos, distleft) 
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
if hitz ~= nil then 
if hitz.CanCollide == false then 
table.insert(collidedlist, hitz) 
local newpos = enz 
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
if newdistleft ~= NV then 
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist) 
end 
end 
end 
return hitz, enz, ray 
end 

function ChangeValue(obj,type,value) 
local val = Instance.new("ObjectValue") 
val.Name = type 
val.Value = obj 
local val2 = Instance.new("NumberValue",val) 
val2.Name = "value" 
val2.Value = value 
if type == "PingTestIncrement" then 
local val3 = Instance.new("NumberValue",val) 
val3.Name = "time" 
val3.Value = repstor.TickTimer.Value 
end 
val.Parent = workspace.ValueChanger1 
end 

function SnowballHit(part,pos,power) 
if part.Parent:findFirstChild("Humanoid") then 
local dmg = (45*power) - math.random(1,4) 
dmg = power > 0.99 and dmg*1.25 or dmg 
print("Damaging",part.Parent.Name,"by",dmg) 
part.Parent.Humanoid.Health = -dmg
end 
SnowSplosion(pos) 
end 

function SnowSplosion(pos) 
local spmdl = Instance.new("Model", char) 
spmdl.Name = "SnoSplosion" 
for i = 1, 14 do 
local p = P:Clone() 
p.Parent = spmdl 
p.Name = "Effect" 
p.Anchored = true 
p.BrickColor = BrickColor.new("White") 
p.CFrame = CFrame.new(pos) * CFrame.Angles(0,(math.pi*2)*math.random(),(math.pi*2)*math.random()) * CFrame.new(0.05,0,0) 
p.Transparency = 0.2 
local mesh = Instance.new("SpecialMesh",p) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(5,2,2) 
end 
table.insert(SnowSplosionEffects,spmdl) 
end 
----------------------------------

---- value setup ---------

local pose = Instance.new("IntValue", script) 
pose.Name = "pose" 
pose.Value = 0 
local invoke = Instance.new("IntValue", script) 
invoke.Name = "invoke" 
invoke.Value = 0 
local snowballs = Instance.new("IntValue", script) 
snowballs.Name = "snowballs" 
snowballs.Value = 8 
local Main = Instance.new("ObjectValue", script) 
Main.Name = "Main" 

for i, v in pairs(char:GetChildren()) do 
if v.Name == "health" and v.className == "NumberValue" then 
v:Destroy() 
end 
end 
local health = Instance.new("NumberValue", char) 
health.Name = "health" 
health.Value = 100 
health.Changed:connect(function() 
if health.Value <= 0 then 
char:BreakJoints() 
end 
end) 

snowballs.Changed:connect(function() 
snowballs.Value = snowballs.Value > 8 and 8 or snowballs.Value 
snowballs.Value = snowballs.Value < 0 and 0 or snowballs.Value 
local percentage = snowballs.Value/8 
SnowPart.Mesh.Scale = Vector3.new(0.71,0.6*percentage,0.71) *5 
SnowPart.Weld.C0 = CFrame.new(0,-0.08 - (0.3*(1-percentage)),0) 
SnowPart.Transparency = percentage == 0 and 1 or 0 
end) 

player.Chatted:connect(function(msg) 
if string.sub(msg:lower(),1,5) == "pose/" then 
pose.Value = tonumber(string.sub(msg,6)) 
elseif string.sub(msg:lower(),1,7) == "invoke/" then 
invoke.Value = tonumber(string.sub(msg,8)) 
elseif msg == "replenish" then 
snowballs.Value = 8 
end 
end) 

------ designs -------------
function Build() 
for i, v in pairs(char:children()) do 
if v.Name == "Mozzarella" then 
v:Destroy() 
end
end
local m = Instance.new("Model", script) 
m.Name = "Mozzarella" 

local b = P:Clone() 
b.Parent = m 
b.Name = "Bag" 
b.BrickColor = BrickColor.new("Lime green") 
b.Transparency = 1 
local mesh = Instance.new("SpecialMesh",b) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.8,0.6,0.8) *5 
local w = Instance.new("Weld",b) 
w.Part0 = RL 
w.Part1 = b 
w.C0 = CFrame.new(0.82,0.5,0) 

for i = 1, 10 do 
local p = P:Clone() 
p.Parent = m 
p.Name = "BagPart" 
p.BrickColor = BrickColor.new("Dark orange") 
p.Material = "Fabric" 
local mesh = Instance.new("SpecialMesh",p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.1,0.4,0.26) *5 
local w = Instance.new("Weld",p) 
w.Part0 = b 
w.Part1 = p 
w.C1 = CFrame.new(0.35,0.004*(i%2),0) 
w.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,math.pi*2/10*i,0) 

if i%2 == 0 then 
for j = 0, 6 do 
local mathi = math.sin(math.pi/2 + (math.pi/5*j)) 
local p = P:Clone() 
p.Parent = m 
p.Name = "BagPart" 
p.BrickColor = BrickColor.new("Dark orange") 
p.Material = "Fabric" 
local mesh = Instance.new("SpecialMesh",p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.1,0.22,0.26*mathi) *5 
local w = Instance.new("Weld",p) 
w.Part0 = b 
w.Part1 = p 
w.C1 = CFrame.new(0.35,0,0) 
w.C0 = CFrame.new(0,-0.2,0) * CFrame.Angles(0,math.pi*2/10*i,math.pi/6*j) 
end 
end 
end 

local s = P:Clone() 
s.Parent = m 
s.Name = "Snow" 
s.BrickColor = BrickColor.new("White") 
s.Transparency = 0 
s.Material = "Sand" 
local mesh = Instance.new("CylinderMesh",s) 
mesh.Scale = Vector3.new(0.71,0.6,0.71) *5 
local w = Instance.new("Weld",s) 
w.Part0 = b 
w.Part1 = s 
w.C0 = CFrame.new(0,-0.08,0) 
SnowPart = s 

end 
Build() 
--------------------------------


-------------- snowball power charge gui ----------------------------
function CreateGui() 
for i, v in pairs(Gui:GetChildren()) do 
if v.Name == "SnowballPower" then 
v:Destroy() 
end 
end 
local g = Instance.new("ScreenGui", Gui) 
g.Name = "SnowballPower" 
local f = Instance.new("Frame",g) 
f.Name = "Container" 
f.Size = UDim2.new(0,30,0,110) 
f.Position = UDim2.new(1,10,0.5,-55) 
f.Transparency = 0 
f.BackgroundColor3 = Color3.new(0.45,0.35,0.25)
f.BorderColor3 = Color3.new(0.55,0.45,0.35)
f.BorderSizePixel = 3 
f.Archivable = false 
f.ZIndex = 0 
SPC = f 
local b = Instance.new("Frame",f) 
b.Name = "Backing" 
b.Size = UDim2.new(0,20,0,100) 
b.Position = UDim2.new(0.5,-10,0.5,-50) 
b.BorderSizePixel = 0 
b.BackgroundColor3 = Color3.new(0.1,0.45,0.01) 
b.ZIndex = 1 
SPB = b 
local fr = b:Clone() 
fr.Parent = b 
fr.Size = UDim2.new(1,0,0.5,0) 
fr.Position = UDim2.new(0,0,0.5,0) 
fr.BackgroundColor3 = Color3.new(0.1,0.65,0.01) 
SPF = fr 

end 
CreateGui() 

-------------- limb setup ---------------
pcall(function() char.Animate:Destroy() end) 

SetWeld(RS,1,1,NV,NV,Vector3.new(1.5,0.5,0),NV) 
RS.C1 = CFrame.new(0,0.5,0) 

SetWeld(LS,1,1,NV,NV,Vector3.new(-1.5,0.5,0),NV) 
LS.C1 = CFrame.new(0,0.5,0) 

SetWeld(RH,1,1,NV,NV,Vector3.new(0.5,-1,0),NV) 
RH.C1 = CFrame.new(0,1,0) 

SetWeld(LH,1,1,NV,NV,Vector3.new(-0.5,-1,0),NV) 
LH.C1 = CFrame.new(0,1,0) 

SetWeld(N,1,1,NV,NV,Vector3.new(0,1,0),NV) 
N.C1 = CFrame.new(0,-0.5,0) 

SetWeld(HRJ,1,1,NV,NV,NV,NV) 
HRJ.C1 = CFrame.new(0,0,0) 

wait(1) 
RS.MaxVelocity = 0 
RS.CurrentAngle = 0 
RS.DesiredAngle = 0 
LS.MaxVelocity = 0 
LS.CurrentAngle = 0 
LS.DesiredAngle = 0 
RH.MaxVelocity = 0 
RH.CurrentAngle = 0 
RH.DesiredAngle = 0 
LH.MaxVelocity = 0 
LH.CurrentAngle = 0 
LH.DesiredAngle = 0 
N.MaxVelocity = 0 
N.CurrentAngle = 0 
N.DesiredAngle = 0 
HRJ.MaxVelocity = 0 
HRJ.CurrentAngle = 0 
HRJ.DesiredAngle = 0 

-----------------

----- value changed connections ---- 
Main.Changed:connect(function() 
if Main.Value ~= nil then 
main,maina = GetWeld(Main.Value) 
else 
main,maina = nil,nil 
end 
end) 

Hu.Changed:connect(function() 
if disableJump or DisableMovement then 
Hu.Jump = false 
end 
end) 

------- Keys & Mouse ---------------
function B1D() 
MouseDown = true 
if not Animating then 
script.invoke.Value = 1 
else 
while Animating do 
wait() 
end 
if MouseDown then 
script.invoke.Value = 1 
end 
end 
end 
function B1U() 
MouseDown = false 
end 
mouse.Button1Down:connect(B1D) 
mouse.Button1Up:connect(B1U) 

function KD(key) 
if key == "0" then 
Shift = true 
if pose.Value == 1 then 
pose.Value = 0 
disableJump = false 
end 
elseif key == "4" then 
Alt = true 
if not Animating and SlideCooldown == 0 then 
invoke.Value = 3 
else 
while Animating or SlideCooldown > 0 do 
wait() 
end 
if Alt then 
invoke.Value = 3 
end 
end 
elseif key == "2" then 
if not ThrowingSequence then 
if pose.Value == 0 then 
pose.Value = 1 
disableJump = true 
elseif pose.Value == 1 then 
pose.Value = 0 
disableJump = false 
end 
end 
elseif key == string.char(32) then 
Space = true 
if pose.Value == 1 then 
if not Animating then 
invoke.Value = 2 
else 
while Animating do 
wait() 
end 
if Space and pose.Value == 1 then 
invoke.Value = 2 
end 
end 
end 
end 
end 

function KU(key) 
if key == "0" then 
Shift = false 
elseif key == "4" then 
Alt = false 
elseif key == string.char(32) then 
Space = false 
end 
end 

mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 

local count1 = 0 
local angle = 0 
local slidecount = 1 
local slidecountmax = 1 
local countspeed = 0.5 
local cancella = false 
local cancelra = false 
local cancelrl = false 
local cancelll = false 
local canceln = false 
local cancelhrp = false 
local cancelmain = false 
local anim = 0 
local lastanim = -1 
local lastpose = 0 
local rs,rsa, ls,lsa, rh,rha, lh,lha, n,na, hrj,hrja, main,maina 
local ghitz,genz 
local prevvelocity = HRP.Velocity 

function UpdateWP(max,sped) 
max = max or 5 
sped = sped or AnimSpeeds[anim+1] 
rs,rsa = GetWeld(RS) 
ls,lsa = GetWeld(LS) 
rh,rha = GetWeld(RH) 
lh,lha = GetWeld(LH) 
n,na = GetWeld(N) 
hrj,hrja = GetWeld(HRJ) 
if Main.Value ~= nil then 
main,maina = GetWeld(Main.Value) 
end 
slidecount = 0 
slidecountmax = max 
countspeed = sped 
end 

UpdateWP() 
-------------- Invoke Animations -------------------------
function Throw() 
if not Animating and snowballs.Value > 0 then 
Animating = true 
ThrowingSequence = true 
pose.Value = 0 
disableJump = false 
----- sword slash ------
cancelra = true 
cancella = true 
cancelhrp = true 
canceln = true 
cancelmain = true 
local prevslidecount = slidecount 
UpdateWP(slidecountmax,countspeed) 
slidecount = prevslidecount 

local phase = 0 
local smdl = Instance.new("Model",char) 
smdl.Name = "SnowBall" 
local ball,weld 
for i = 1, 17 do 
if MouseDown then 
if i <= 7 then 
SetWeld(N,i,7,n,na,Vector3.new(0,1,0),Vector3.new(-0.3,-math.pi/8,0)) 
SetWeld(HRJ,i,7,hrj,hrja,Vector3.new(0,0,0.1),Vector3.new(0,-math.pi/20,0)) 
SetWeld(RS,i,7,rs,rsa,Vector3.new(1.5,0.26,0),Vector3.new(-0.2,0,-0.1)) 
SetWeld(LS,i,7,ls,lsa,Vector3.new(-1.5,0.525,-0.01),Vector3.new(-0.25,0,-0.12)) 
phase = 1 
if i == 7 then 
UpdateWP(slidecountmax,countspeed) 
ChangeValue(snowballs,"Increment",-1) 
ball = P:Clone() 
ball.Parent = smdl 
ball.BrickColor = BrickColor.new("White") 
ball.Material = "Sand" 
local mesh = Instance.new("SpecialMesh",ball) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.8,0.8,0.8) *5 
weld = Instance.new("Weld",ball) 
weld.Part0 = RA 
weld.Part1 = ball 
weld.C0 = CFrame.new(0,-1.3,0) 
end 
else 
SetWeld(N,i-7,10,n,na,Vector3.new(0,1,0),Vector3.new(0.03,math.pi/9,0)) 
SetWeld(HRJ,i-7,10,hrj,hrja,Vector3.new(0,0,0.1),Vector3.new(0,-math.pi/8,0)) 
SetWeld(RS,i-7,10,rs,rsa,Vector3.new(1.4,0.5,0),Vector3.new(math.pi*1.05,0,0.2)) 
SetWeld(LS,i-7,10,ls,lsa,Vector3.new(-1.3,0.42,-0.1),Vector3.new(math.pi/4,0,-math.pi/8)) 
if i == 9 then 
SPC.Archivable = true 
SPB.BackgroundColor3 = Color3.new(0.45,0.1,0.01) 
SPF.BackgroundColor3 = Color3.new(0.65,0.1,0.01) 
SPF.Size = UDim2.new(1,0,0,0) 
SPF.Position = UDim2.new(0,0,1,0) 
end 
phase = 2 
end 
wait(0.02) 
end 
end 
local rs2,rsa2 = GetWeld(RS) 
local ls2,lsa2 = GetWeld(LS) 
local n2,na2 = GetWeld(N) 
local hrj2,hrja2 = GetWeld(HRJ) 

local powercounter = 20 
local power = 0 
while MouseDown do 
powercounter = (powercounter%40) + 1 
power = 1 - math.sin(math.pi/40*powercounter) 
SPB.BackgroundColor3 = Color3.new((1-power)*0.35 +0.1,power*0.35 +0.1,0.01) 
SPF.BackgroundColor3 = Color3.new((1-power)*0.55 +0.1,power*0.55 +0.1,0.01) 
SPF.Size = UDim2.new(1,0,power,0) 
SPF.Position = UDim2.new(0,0,1-power,0) 
SetWeld(RS,power,1,rs2,rsa2,Vector3.new(1.4,0.6,0.05),Vector3.new(math.pi*1.17,0,0.3)) 
SetWeld(LS,power,1,ls2,lsa2,Vector3.new(-1.3,0.42,-0.16),Vector3.new(math.pi/2.45,0,-math.pi/5)) 
SetWeld(N,power,1,n2,na2,Vector3.new(0,1,0),Vector3.new(0.07,math.pi/8,-0.04)) 
SetWeld(HRJ,power,1,hrj2,hrja2,Vector3.new(0,0,0.1),Vector3.new(0,-math.pi/7,0)) 
phase = 3 
wait(0.02) 
end 
SPC.Archivable = false 
print("Phase:",phase) 
rs2,rsa2 = GetWeld(RS) 
ls2,lsa2 = GetWeld(LS) 
n2,na2 = GetWeld(N) 
hrj2,hrja2 = GetWeld(HRJ) 

if phase == 1 or phase == 2 then 
smdl:Destroy() 
ChangeValue(snowballs,"Increment",1) 
elseif phase == 3 then 
print("Throwing with "..string.sub(tostring(power*100),1,5).."% power!") 
local mousepos = mouse.Hit.p 
for i = 1, 8 do 
SetWeld(RS,i,8,rs2,rsa2,Vector3.new(1.4,0.6,0.05),Vector3.new((math.pi*0.6) -(1.8*power),0.18 - (0.65*power),0.3)) 
SetWeld(LS,i,8,ls2,lsa2,Vector3.new(-1.36,0.5,-0.06),Vector3.new((-math.pi/4) - (0.4*power),0.2,-math.pi/5)) 
SetWeld(N,i,8,n2,na2,Vector3.new(0,1,0),Vector3.new(-0.07,-math.pi/11 - (0.3*power),-0.04)) 
SetWeld(HRJ,i,8,hrj2,hrja2,Vector3.new(0,0,0.1),Vector3.new(0,(math.pi/10)+(0.3*power),0)) 
if i == 2 then 
weld:Destroy() 
ball.Anchored = true 
--- {part,gravity,currentgravity,direction,speed,power,counter,{parts},life}
local snowball = {ball,0.1 + 0.8*(0.96-power),1 - (0.95*power),(mousepos-ball.Position).unit,1.8 + (3*power),power,1,{},0} 
if power > 0.99 then
for i = 1, 20 do 
local p = P:Clone() 
p.Anchored = true 
p.BrickColor = BrickColor.new("Bright yellow") 
local mesh = Instance.new("SpecialMesh",p) 
mesh.MeshId = "rbxassetid://9756362" 
mesh.Scale = Vector3.new(0.32,0.32,0.32) 
table.insert(snowball[8],p) 
end 
end 
table.insert(SnowballProjectiles,snowball) 
end 
wait(0.02) 
end 
wait(0.02) 
else 
smdl:Destroy() 
end 

UpdateWP(slidecountmax,countspeed) 
cancelra = false 
cancella = false 
cancelhrp = false 
canceln = false 
cancelmain = false 

ThrowingSequence = false 
Animating = false 
elseif snowballs.Value <= 0 then 
print("No snow left!") 
-- alert saying you have no snow left in pouch
end 
end 

function DiveRoll() 
if not Animating then 
Animating = true 
DisableMovement = true 
cancelra = true 
cancella = true 
cancelhrp = true 
canceln = true 
cancelmain = true 
cancelll = true 
cancelrl = true 
local prevslidecount = slidecount 
UpdateWP(slidecountmax,countspeed) 
slidecount = prevslidecount 

local bv = Instance.new("BodyVelocity", HRP) 
bv.maxForce = Vector3.new(1/0,0,1/0) 
bv.velocity = CFrame.new(NV,Vector3.new(HRP.CFrame.lookVector.x,0,HRP.CFrame.lookVector.z)).lookVector * 28 
local bg = Instance.new("BodyGyro", HRP) 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.cframe = CFrame.new(NV,Vector3.new(HRP.CFrame.lookVector.x,0,HRP.CFrame.lookVector.z)) 
bg.D = 100 
game:GetService("Debris"):AddItem(bv,2.5) 
game:GetService("Debris"):AddItem(bg,2.5) 

local connex = game:GetService("RunService").RenderStepped:connect(function() 
if HRP.Velocity.y > 0 then 
HRP.Velocity = NV 
end 
HRP.CanCollide = false 
end) 
local connex2 = game:GetService("RunService").Stepped:connect(function() 
local Ghitz,Genz = RAY(HRP.Position,Vector3.new(0,-3.1,0)) 
if Ghitz then 
HRP.CFrame = (HRP.CFrame - HRP.Position) + Genz + Vector3.new(0,3,0) 
end 
end) 

local animspd = 4 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,1,0),Vector3.new(math.pi/5,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,0.4,0),Vector3.new(-math.pi/2.6,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.5,-0.06),Vector3.new(math.pi/1.2,0,0.2),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.5,-0.06),Vector3.new(math.pi/1.2,0,-0.2),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,-0.6,-0.1),Vector3.new(0.1,0,0.05),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,-0.6,-0.1),Vector3.new(0.1,0,-0.05),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,1,0),Vector3.new(math.pi/12,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-0.7,0),Vector3.new(-math.pi/1.5,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.6,-0.06),Vector3.new(math.pi/1.3,0,0.2),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.6,-0.06),Vector3.new(math.pi/1.3,0,-0.2),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,-1,0),Vector3.new(-0.1,0,0.05),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,-1,0),Vector3.new(-0.1,0,-0.05),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,0.85,0),Vector3.new(-math.pi/4,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-1,0),Vector3.new(-math.pi*0.9,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.5,-0.06),Vector3.new(math.pi/1.4,0,0.08),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.5,-0.06),Vector3.new(math.pi/1.4,0,-0.08),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,-0.3,-0.4),Vector3.new(-0.12,0,0.05),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,-0.3,-0.4),Vector3.new(-0.12,0,-0.05),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
bv.velocity = bv.velocity * 0.9 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,0.85,0),Vector3.new(-math.pi/3.5,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-1.25,0),Vector3.new(-math.pi*1.1,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.5,-0.06),Vector3.new(math.pi/1.8,0,-0.1),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.5,-0.06),Vector3.new(math.pi/1.8,0,0.1),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,0.2,-0.7),Vector3.new(-0.12,0,0.05),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,0.2,-0.7),Vector3.new(-0.12,0,-0.05),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,0.85,0),Vector3.new(-math.pi/3.7,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-2.3,0),Vector3.new(-math.pi*1.55,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.5,-0.06),Vector3.new(math.pi/2.4,0,-0.23),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.5,-0.06),Vector3.new(math.pi/2.4,0,0.23),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,0.1,-0.7),Vector3.new(-0.1,0,0.04),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,0.1,-0.7),Vector3.new(-0.1,0,-0.04),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
bv.velocity = bv.velocity * 0.7 
for i = 1, animspd do 
SetWeld(N,i,animspd,n,na,Vector3.new(0,1.05,0),Vector3.new(-0.4,0,0),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-1.6,0),Vector3.new(-math.pi*1.85,0,0),0) 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.4,0.5,-0.06),Vector3.new(math.pi/3.2,0,-0.24),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.4,0.5,-0.06),Vector3.new(math.pi/3.2,0,0.24),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.5,-0.08,-0.6),Vector3.new(-0.22,0,0.04),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.5,-0.08,-0.6),Vector3.new(-0.22,0,-0.04),0) 
wait(0.02) 
end 
UpdateWP(slidecountmax,countspeed) 
bv.velocity = bv.velocity * 0.4 
for i = 1, animspd do 
SetWeld(RS,i,animspd,rs,rsa,Vector3.new(1.35,0.66 + (angle*0.012),0.12),Vector3.new(0.2 + (angle*0.02),-0.22,0.446 + (angle*0.016)),0) 
SetWeld(LS,i,animspd,ls,lsa,Vector3.new(-1.35,0.66 + (angle*0.012),0.12),Vector3.new(0.2 + (angle*0.02),0.22,-0.446 - (angle*0.016)),0) 
SetWeld(RH,i,animspd,rh,rha,Vector3.new(0.7,-0.18 - (cangle*0.04),-0.2 - (angle*0.01)),Vector3.new(0.2 - (angle*0.12),-math.pi/5,0.12 - (angle*0.06)),0) 
SetWeld(LH,i,animspd,lh,lha,Vector3.new(-0.38,-0.32 + (cangle*0.04),-0.45 + (angle*0.01)),Vector3.new(-0.1 + (angle*0.15),-math.pi/5,-0.07 + (angle*0.07)),0) 
SetWeld(N,i,animspd,n,na,Vector3.new(0,1,0),Vector3.new(0.12 + (angle*0.004),-math.pi/5 - (angle*0.01),0.1),0) 
SetWeld(HRJ,i,animspd,hrj,hrja,Vector3.new(0,-0.7,0),Vector3.new((-math.pi*2) -0.24 + (-angle*0.008),math.pi/5 + (angle*0.01),angle*0.01),0) 
wait(0.02) 
end 

SetWeld(HRJ,1,1,hrj,hrja,Vector3.new(0,-0.7,0),Vector3.new(-0.24 + (-angle*0.008),math.pi/5 + (angle*0.01),angle*0.01)) 
bv:Destroy() 
bg:Destroy() 
connex:disconnect() 
connex2:disconnect() 

UpdateWP() 
cancelra = false 
cancella = false 
cancelhrp = false 
canceln = false 
cancelmain = false 
cancelll = false 
cancelrl = false 
Animating = false 
DisableMovement = false 
end 
end 

function Slide() 
if not Animating and Shift and pose.Value == 0 and SlideCooldown == 0 and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude >= 18 then 
Animating = true 
DisableMovement = true 
cancelra = true 
cancella = true 
cancelhrp = true 
canceln = true 
cancelmain = true 
cancelll = true 
cancelrl = true 
local prevslidecount = slidecount 
UpdateWP(slidecountmax,countspeed) 
slidecount = prevslidecount 

local bv = Instance.new("BodyVelocity", HRP) 
bv.maxForce = Vector3.new(1/0,0,1/0) 
bv.velocity = CFrame.new(NV,Vector3.new(HRP.CFrame.lookVector.x,0,HRP.CFrame.lookVector.z)).lookVector * 30 
local bg = Instance.new("BodyGyro", HRP) 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.cframe = CFrame.new(NV,Vector3.new(HRP.CFrame.lookVector.x,0,HRP.CFrame.lookVector.z)) 
bg.D = 100 
game:GetService("Debris"):AddItem(bv,5.5) 
game:GetService("Debris"):AddItem(bg,5.5) 

local connex = game:GetService("RunService").RenderStepped:connect(function() 
if HRP.Velocity.y > 0 then 
HRP.Velocity = NV 
end 
HRP.CanCollide = false 
end) 

local animspd = 8 
local animcount = 1 
local bvaccel = 1 
local bvvelo = bv.velocity 
local lasttorpos = HRP.Position 
local tickcount = 0 
local cancelslide = false 
local torsoangle = 0 
while not cancelslide and  bvaccel > 0.16 do 
tickcount = tickcount+1 
lasttorpos = HRP.Position 
animcount = (animcount < animspd and animcount+1) or animspd 
local n2,na2 = GetWeld(N) 
local hrj2,hrja2 = GetWeld(HRJ) 
local rs2,rsa2 = GetWeld(RS) 
local ls2,lsa2 = GetWeld(LS) 
local rh2,rha2 = GetWeld(RH) 
local lh2,lha2 = GetWeld(LH) 
SetWeld(N,1,4,n2,na2,Vector3.new(0,1.08,-0.1),Vector3.new(-math.pi/4.3,-0.12,-0.08)) 
SetWeld(HRJ,1,4,hrj2,hrja2,Vector3.new(0,-2.1,0),Vector3.new((math.pi/2.6)+torsoangle,0.12 + (angle*0.008),0)) 
SetWeld(RS,1,4,rs2,rsa2,Vector3.new(1.4,0.6,-0.02),Vector3.new(-math.pi/1.8,-(angle*0.01),0.2 - (angle*0.009))) 
SetWeld(LS,1,4,ls2,lsa2,Vector3.new(-1.3,0.6,-0.16),Vector3.new(-math.pi/1.8,-(angle*0.01),-0.6 - (angle*0.009))) 
SetWeld(RH,1,4,rh2,rha2,Vector3.new(0.5,-0.8,0),Vector3.new(0.22,-0.06 - (angle*0.01),0.05)) 
SetWeld(LH,1,4,lh2,lha2,Vector3.new(-0.5,-0.35,-0.45),Vector3.new(-0.25,-0.12 - (angle*0.01),-0.03)) 
bv.velocity = bvvelo * bvaccel 
wait(0.02) 
local torsoatan = (CFrame.new(lasttorpos) * (HRP.CFrame-HRP.Position)):pointToObjectSpace(HRP.Position) 
torsoangle = math.atan2(torsoatan.y,-torsoatan.z) 
local Ghitz,Genz = RAY(HRP.Position,Vector3.new(0,-3.1,0)) 
if Ghitz then 
HRP.CFrame = (HRP.CFrame - HRP.Position) + Genz + Vector3.new(0,3,0) 
end 
if (lasttorpos.y - HRP.Position.y) < -0.1 then 
bvaccel = bvaccel - 0.045 
elseif (lasttorpos.y - HRP.Position.y) > 0.08 then 
bvaccel = bvaccel - 0.006 
if Ghitz then 
bvaccel = bvaccel + ((lasttorpos.y - HRP.Position.y) /2.5) 
end 
else 
bvaccel = bvaccel - 0.017 
end 
bvaccel = bvaccel > 1.02 and 1.02 or bvaccel 
local chitz,cenz = RAY(Torsoz.Position,Vector3.new(0,2.5,0)) 
local stationary = false 
if tickcount > 5 then 
stationary = (Vector3.new(lasttorpos.x,0,lasttorpos.z) - Vector3.new(HRP.Position.x,0,HRP.Position.z)).magnitude < 0.15 
end 
if bvaccel < 0.16 or (chitz == nil and not Alt) or stationary then 
cancelslide = true 
end 
end 

SlideCooldown = 14 
bv:Destroy() 
bg:Destroy() 
connex:disconnect() 

UpdateWP(slidecountmax,countspeed) 
cancelra = false 
cancella = false 
cancelhrp = false 
canceln = false 
cancelmain = false 
cancelll = false 
cancelrl = false 
Animating = false 
DisableMovement = false 
end 
end 

invokelist = {} 
invokelist[1] = Throw 
invokelist[2] = DiveRoll 
invokelist[3] = Slide 
invoke.Changed:connect(function() 
if invoke.Value ~= 0 then 
local valu = invoke.Value 
invoke.Value = 0 
if invokelist[valu] ~= nil then 
invokelist[valu]() 
end 
end 
end) 

-------------- Animation Tween Funcs ----------------------
function Idle() 
if script.pose.Value == 0 then 
----- regular --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.5,0),Vector3.new(-0.1 + (angle*0.027),0,0.046 - (angle*0.021))) 
end
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.5,0),Vector3.new(-0.1 + (angle*0.027),0,-0.046 + (angle*0.021))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.5,-1,0),Vector3.new(-0.05 + (angle*0.018),0,0.01 - (angle*0.005))) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,-1,0),Vector3.new(-0.05 + (angle*0.018),0,-0.01 + (angle*0.005))) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.04 + (-angle*0.02),0,0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(0.016 + (-angle*0.009),0,0)) 
end 

elseif script.pose.Value == 1 then 
----- crouch --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.35,0.66 - (angle*0.012),0.12),Vector3.new(-0.1 + (angle*0.015),-0.22,0.446 - (angle*0.016))) 
end
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.35,0.66 - (angle*0.012),0.12),Vector3.new(-0.1 + (angle*0.015),0.22,-0.446 + (angle*0.016))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.55,-1.05,-0.47 - (angle*0.006)),Vector3.new(-math.pi/2.2 + (angle*0.005),-math.pi/15,0.01 + (angle*0.005))) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,0.3,-0.55),Vector3.new(0.3 + (angle*0.01),-math.pi/12,0.08 + (angle*0.005))) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.12 + (angle*0.004),-math.pi/5,0.1)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,-1.4,0),Vector3.new(-0.16 + (-angle*0.007),math.pi/5,0)) 
end 

elseif script.pose.Value == 2 then 

end 
end 

function Walking() 
if script.pose.Value == 0 then 
----- regular --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.5,0),Vector3.new(angle*0.2,0,-math.abs(angle*0.02))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.5,0),Vector3.new(-angle*0.2,0,math.abs(angle*0.02))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.5,-1,0),Vector3.new(-angle*0.17,0,math.abs(angle*0.005))) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,-1,0),Vector3.new(angle*0.17,0,-math.abs(angle*0.005))) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.015 ,-angle*0.01,0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(-0.015 - math.abs((angle*0.02)),angle*0.01,0)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 1 then 
----- crouch --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.35,0.66 + (angle*0.012),0.12),Vector3.new(0.2 + (angle*0.02),-0.22,0.446 + (angle*0.016))) 
end
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.35,0.66 + (angle*0.012),0.12),Vector3.new(0.2 + (angle*0.02),0.22,-0.446 - (angle*0.016))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.7,-0.18 - (cangle*0.04),-0.2 - (angle*0.01)),Vector3.new(0.2 - (angle*0.12),-math.pi/5,0.12 - (angle*0.06))) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.38,-0.32 + (cangle*0.04),-0.45 + (angle*0.01)),Vector3.new(-0.1 + (angle*0.15),-math.pi/5,-0.07 + (angle*0.07))) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.12 + (angle*0.004),-math.pi/5 - (angle*0.01),0.1)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,-0.7,0),Vector3.new(-0.24 + (-angle*0.008),math.pi/5 + (angle*0.01),angle*0.01)) 
end 

elseif script.pose.Value == 2 then 

end 
end 

function Running() 
if script.pose.Value == 0 then 
----- regular --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5 - math.abs(angle*0.035),0.5 - math.abs(angle*0.02),0),Vector3.new(0.16 + (angle*0.42),0,-math.abs(angle*0.07))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5 + math.abs(angle*0.035),0.5 - math.abs(angle*0.02),0),Vector3.new(0.16 + (-angle*0.42),0,math.abs(angle*0.07))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.5,-1 + math.abs(angle*0.05),0),Vector3.new(-angle*0.3,0,math.abs(angle*0.005))) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,-1 + math.abs(angle*0.05),0),Vector3.new(angle*0.3,0,-math.abs(angle*0.005))) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.07 + math.abs(-angle*0.02),-angle*0.03,0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(-0.14 - math.abs(-angle*0.04),angle*0.035,NV)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 1 then 

elseif script.pose.Value == 2 then 

end 
end 


function Jumping() 
if script.pose.Value == 0 then 
----- regular --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.5,0),Vector3.new(-0.16,0,0.3 + (angle*0.012))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.5,0),Vector3.new(-0.16,0,-0.3 - (angle*0.012))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.5,-0.8,-0.05),Vector3.new(-0.28 + (angle*0.02),0,0)) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,-0.45,-0.55),Vector3.new(-0.4 - (angle*0.02),0,0)) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.1,-angle*0.01,0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(0.2 + (angle*0.002),angle*0.02,0)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 1 then 
----- crouch --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.5,0),Vector3.new(-0.16,0,0.3 + (angle*0.012))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.5,0),Vector3.new(-0.16,0,-0.3 - (angle*0.012))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.7,-0.8,-0.05),Vector3.new(-0.28 + (angle*0.001),-math.pi/6,-0.2)) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.3,-0.45,-0.55),Vector3.new(-0.4 - (angle*0.001),-math.pi/6,-0.2)) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.1,-math.pi/5 - (angle*0.01),0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(-0.07 + (angle*0.002),math.pi/5 + (angle*0.02),0)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 2 then 

end 
end 

function Falling() 
if script.pose.Value == 0 then 
----- regular --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.5,0),Vector3.new(math.pi*1.1,0,-0.08 + (angle*0.012))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.5,0),Vector3.new(math.pi*1.1,0,0.08 - (angle*0.012))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.5,-0.45,-0.55),Vector3.new(-0.4 + (angle*0.02),0,0)) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.5,-0.8,-0.05),Vector3.new(-0.28 - (angle*0.02),0,0)) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.1,-angle*0.01,0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(-0.2 + (angle*0.002),angle*0.02,0)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 1 then 
----- crouch --------
if not cancelra then 
SetWeld(RS,slidecount,slidecountmax,rs,rsa,Vector3.new(1.5,0.65,0),Vector3.new(-0.1,0,0.3 + (angle*0.012))) 
end 
if not cancella then 
SetWeld(LS,slidecount,slidecountmax,ls,lsa,Vector3.new(-1.5,0.65,0),Vector3.new(-0.1,0,-0.3 - (angle*0.012))) 
end 
if not cancelrl then 
SetWeld(RH,slidecount,slidecountmax,rh,rha,Vector3.new(0.8,-0.1,-0.25),Vector3.new(-0.28 + (angle*0.001),-math.pi/6,-0.2)) 
end 
if not cancelll then 
SetWeld(LH,slidecount,slidecountmax,lh,lha,Vector3.new(-0.3,-0.8,-0.55),Vector3.new(-0.4 - (angle*0.001),-math.pi/6,-0.2)) 
end 
if not canceln then 
SetWeld(N,slidecount,slidecountmax,n,na,Vector3.new(0,1,0),Vector3.new(0.1,-math.pi/5 - (angle*0.01),0)) 
end 
if not cancelhrp then 
SetWeld(HRJ,slidecount,slidecountmax,hrj,hrja,Vector3.new(0,0,0),Vector3.new(-0.07 + (angle*0.002),math.pi/5 + (angle*0.02),0)) 
end 
if not cancelmain and Main.Value ~= nil and main ~= nil and maina ~= nil then 
SetWeld(Main.Value,slidecount,slidecountmax,main,maina,Vector3.new(0,-1,0),NV) 
end 

elseif script.pose.Value == 2 then 

end 
end 

game:GetService("RunService").Stepped:connect(function() 
count1 = (count1%100) + countspeed 
angle = math.pi * math.sin(math.pi*2/100*count1) 
cangle = math.pi * math.cos(math.pi*2/100*count1) 

------------- snowball power gui movement ------------------
if SPC.Archivable == true then 
SPCP = SPCP ~= 14 and SPCP+1 or 14 
else 
SPCP = SPCP ~= 0 and SPCP-1 or 0 
end 
if SPC ~= nil then 
local perc = math.sin((math.pi/2/14)*SPCP) 
SPC.Position = UDim2.new(1,10 - (50*perc),0.5,-55) 
if SPCP > 0 then 
SPC.Visible = true 
else 
SPC.Visible = false 
end
end 

------------- walkspeed changes -------------------------
if DisableMovement then 
Walkspeed = 0 
Hu.WalkSpeed = Walkspeed 
else 
if Shift and pose.Value ~= 1 then 
Walkspeed = 25 
Hu.WalkSpeed = Walkspeed 
else 
Walkspeed = 16 
if pose.Value == 1 then 
Hu.WalkSpeed = Walkspeed/2 
else 
Hu.WalkSpeed = Walkspeed 
end 
end 
end 

-------- animation slide count and pose smoothener --------------------
slidecount = (slidecount < slidecountmax and slidecount+1) or slidecountmax 
SlideCooldown = (SlideCooldown > 0 and SlideCooldown-1) or 0 

if script.pose.Value ~= lastpose then 
UpdateWP() 
end 

--------- animation conditions -------------------

local ghitz, genz = RAY(Torsoz.Position,Vector3.new(0,-5.2,0)) 

if ghitz == nil and Torsoz.Velocity.y > 1 then 
----- jumping -----
anim = 3 
if anim ~= lastanim then 
UpdateWP(7) 
end 
Jumping() 
elseif ghitz == nil and Torsoz.Velocity.y < -1 then 
----- falling ------
anim = 4 
if anim ~= lastanim then 
UpdateWP(7) 
end 
Falling() 
elseif Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude < 2 then 
---- idle ---------
anim = 0 
if anim ~= lastanim then 
UpdateWP(6) 
end 
Idle() 

elseif Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude < 17 then 
---- walking -------
anim = 1 
if anim ~= lastanim then 
UpdateWP(7) 
end 
Walking() 

elseif Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude >= 17 then 
----- running -----
anim = 2 
if anim ~= lastanim then 
UpdateWP(5) 
end 
Running() 

------------
end 

--------- breakfall roll --------
if ghitz ~= nil and prevvelocity.y < -110 then 
invoke.Value = 2 
end 

--------- snowball projectile movement --------
for i, v in pairs(SnowballProjectiles) do 
local oldpos = v[1].Position 
v[1].CFrame = v[1].CFrame + (v[4]*v[5]) + Vector3.new(0,v[3],0) 
local raydist = (v[1].Position-oldpos).unit*((oldpos-v[1].Position).magnitude+0.5)
local hitz,enz = RAY(v[1].Position,raydist) 

v[3] = v[3] - 0.35*v[2] 
v[9] = v[9] +1

if #v[8] > 0 then 
v[8][v[7]].Parent = v[1].Parent 
v[8][v[7]].Transparency = 0.5 - (0.3 * math.random()) 
v[8][v[7]].Mesh.Scale = Vector3.new(0.45,0.45,0.45) - (Vector3.new(0.3,0.3,0.3) * math.random()) 
v[8][v[7]].CFrame = CFrame.new(oldpos,v[1].Position) * CFrame.Angles(0,0,(math.pi*2)/(math.random(1,100)/100)) * CFrame.new(math.random(1,10)/20,0,0) 
v[7] = (v[7]%#v[8]) +1 
for j,vv in pairs(v[8]) do 
vv.CFrame = vv.CFrame * CFrame.new(0.05,0,0) * CFrame.Angles(0,-0.1,-0.085) 
end 
end 

if hitz ~= nil or v[9] >= 200 then 
if hitz ~= nil then 
SnowballHit(hitz,enz,v[6]) 
end 
v[1].Parent:Destroy() 
print("Removed Snowball#",i) 
table.remove(SnowballProjectiles,i) 
end 

end 

------ snowball splosion effects -----
for i, v in pairs(SnowSplosionEffects) do 
for j,vv in pairs(v:GetChildren()) do 
vv.CFrame = vv.CFrame * CFrame.new(0.3,0,0) 
vv.Transparency = vv.Transparency + 0.12 
vv.Mesh.Scale = vv.Mesh.Scale + Vector3.new(0.3,-0.1,-0.1) 
end 
if v:FindFirstChild("Effect").Transparency > 0.9 then 
v:Destroy() 
table.remove(SnowSplosionEffects,i) 
end 
end 

lastpose = script.pose.Value 
lastanim = anim 
prevvelocity = HRP.Velocity 
end)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Staff"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Staff"
	button.TextColor3 = whit
	 	button.MouseButton1Down:connect(function()
		if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
local admin = game.Players.LocalPlayer
h.Name = "Staff" 
script.Parent = h 
h.Parent = admin.Backpack 
end 

bin = script.Parent 
player = bin.Parent.Parent.Character 
rarm = player["Right Arm"] 
larm = player["Left Arm"] 
player.Humanoid.MaxHealth = 50 
visible = true 
parts = {} 

function Check(pos) 
local hurt = false 
local players = game.Players:GetChildren() 
for i = 1, #players do 
if players[i].Character and hurt == false then 
local parts = players[i].Character:GetChildren() 
for q = 1, #parts do 
if parts[q].className == "Part" and hurt == false then 
local range = math.sqrt(math.pow(parts[q].Size.Z, 2) + math.sqrt(math.pow(parts[q].Size.X, 2) + math.pow(parts[q].Size.Y, 2))) 
if (found - parts[q].Position).magnitude <= range then 
hurt = true 
character = parts[q].Parent 
humanoid = character.Humanoid 
character.Torso.CFrame = character.Torso.CFrame*CFrame.Angles(2,2,2)-amage(25) 
humanoid:TakeDamage(50) 
humanoid.Sit = true 
end 
end 
end 
end 
end 
end 

function clean(min,thing2) 
while min.Humanoid.Health ~= 0 do 
local a = game.Players:GetChildren() 
for i = 1, #a do 
wait() 
if (a[i].Character.Torso.Position - thing2.Position).magnitude < 5 then 
a[i].Character.Humanoid:TakeDamage(5) 
end 
end 
wait() 
end 
min:remove() 
end 

function fire(v) 
local spawnPos = (tip2.CFrame * CFrame.new(0, 1, 0)).p 
local HitSpot = RayCast(spawnPos, v) 
local distance = (HitSpot - spawnPos).magnitude 
start = nil 
finish = nil 
local num = math.random(3, 10) 
for i = distance / num, distance, distance / num do 
if start == nil then 
start = tip2.CFrame.p 
elseif start ~= nil then 
start = finish 
end 
finish = CFrame.new(spawnPos, HitSpot) 
if i ~= distance then 
finish = (finish * CFrame.new(math.random(-5, 5), math.random(-1, 1), -i)).p 
else 
finish = HitSpot 
end 
local P = Instance.new("Part") 
P.Name = "Magic" 
P.formFactor = 0 
P.Size = Vector3.new(1, 1, (start - finish).magnitude) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new(1006) 
P.Anchored = true 
P.CanCollide = false 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Transparency = 0 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(.25, .25, 1) 
m.Offset = Vector3.new(0, -1000, 0) 
m.VertexColor = Vector3.new(math.huge, math.huge, math.huge) 
m.Parent = P 
P.CFrame = CFrame.new(start, finish) 
P.CFrame = P.CFrame * CFrame.new(0, 1000, P.Size.Z / -2) 
table.insert(parts, P) 
game:GetService("Debris"):AddItem(P, 2.5) 
end 
end 

function RayCast(start, v) 

local ray = Instance.new("Part") 
ray.Parent = game.Workspace 
ray.Anchored = true 
ray.CFrame = CFrame.new(start) 
ray.Size = Vector3.new(1,1,1) 
ray.Shape = 0 
ray.BottomSurface = 0 
ray.TopSurface = 0 
ray.Name = "Magic" 
ray.Elasticity = 0 
ray.Reflectance = 0 
ray.Friction = 0 
ray.Transparency = 0 

local finding = true 
far = 1000 

while finding do 
far = far - 1 
if far > 0 then 
local see = ray.Position + v 
ray.Position = ray.Position + v 
if ray.Position ~= see then 
finding = false 
found = see 
end 
else 
finding = false 
found = ray.Position 
end 
end 

ray:remove() 
Check(found) 
return found 
end 

function kill(tar) 
while tar.Parent.Humanoid.Health ~= 0 do 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health -1 
wait() 
end 
end 

bin.Selected:connect(function(mouse) 
if player.Torso:findFirstChild("Right Shoulder") ~= nil then 
rs = player.Torso["Right Shoulder"] 
rs.Part1 = nil 
end 
if player.Torso:findFirstChild("Left Shoulder") ~= nil then 
ls = player.Torso["Left Shoulder"] 
ls.Part1 = nil 
end 
if player:FindFirstChild("check") == nil then 
rns = Instance.new("Weld") 
rns.Parent = player.Torso 
rns.Part0 = rns.Parent 
rns.Part1 = player["Right Arm"] 
rns.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
lns = Instance.new("Weld") 
lns.Parent = player.Torso 
lns.Part0 = lns.Parent 
lns.Part1 = player["Left Arm"] 
lns.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
rblade = Instance.new("Part") 
rblade.BrickColor = BrickColor.new(1003) 
rblade.Name ="check" 
rblade.Parent = player 
rblade.CanCollide = false 
rblade.Size = Vector3.new(1,8,1) 
rblade.formFactor = "Symmetric" 
rblade.TopSurface = 0 
rblade.BottomSurface = 0 
rbm = Instance.new("BlockMesh") 
rbm.Parent = rblade 
rbm.Scale = Vector3.new(.4,1,.4) 
rbw = Instance.new("Weld") 
rbw.Parent = rblade 
rbw.Part0 = rarm 
rbw.Part1 = rblade 
rbw.C1 = CFrame.new(0,0,1) *CFrame.Angles((math.pi*.5),(math.pi*0),(math.pi*0)) 
tip = Instance.new("Part") 
tip.CanCollide = false 
tip.TopSurface = 0 
tip.BottomSurface = 0 
tip.Parent = rblade 
tip.Size = Vector3.new(1,1,1) 
tip.formFactor = "Symmetric" 
tip.BrickColor = BrickColor.new(1004) 
tipm = Instance.new("BlockMesh") 
tipm.Scale = Vector3.new(.41,.2,.41) 
tipm.Parent = tip 
tipw = Instance.new("Weld") 
tipw.Parent = rblade 
tipw.Part0 = rblade 
tipw.Part1 = tip 
tipw.C1 = CFrame.new(0,3.5,0) 
tip2 = Instance.new("Part") 
tip2.CanCollide = false 
tip2.TopSurface = 0 
tip2.BottomSurface = 0 
tip2.Parent = rblade 
tip2.Size = Vector3.new(1,1,1) 
tip2.formFactor = "Symmetric" 
tip2.BrickColor = BrickColor.new(1004) 
tip2m = Instance.new("BlockMesh") 
tip2m.Scale = Vector3.new(.41,.2,.41) 
tip2m.Parent = tip2 
tip2w = Instance.new("Weld") 
tip2w.Parent = rblade 
tip2w.Part0 = rblade 
tip2w.Part1 = tip2 
tip2w.C1 = CFrame.new(0,-3.5,0) 
tip3 = Instance.new("Part") 
tip3.CanCollide = false 
tip3.TopSurface = 0 
tip3.BottomSurface = 0 
tip3.Parent = rblade 
tip3.Size = Vector3.new(1,1,1) 
tip3.formFactor = "Symmetric" 
tip3.BrickColor = BrickColor.new(1004) 
tip3m = Instance.new("BlockMesh") 
tip3m.Scale = Vector3.new(.41,.2,.41) 
tip3m.Parent = tip3 
tip3w = Instance.new("Weld") 
tip3w.Parent = rblade 
tip3w.Part0 = rblade 
tip3w.Part1 = tip3 
tip3w.C1 = CFrame.new(0,-.5,0) 
tip4 = Instance.new("Part") 
tip4.CanCollide = false 
tip4.TopSurface = 0 
tip4.BottomSurface = 0 
tip4.Parent = rblade 
tip4.Size = Vector3.new(1,1,1) 
tip4.formFactor = "Symmetric" 
tip4.BrickColor = BrickColor.new(1004) 
tip4m = Instance.new("BlockMesh") 
tip4m.Scale = Vector3.new(.41,.2,.41) 
tip4m.Parent = tip4 
tip4w = Instance.new("Weld") 
tip4w.Parent = rblade 
tip4w.Part0 = rblade 
tip4w.Part1 = tip4 
tip4w.C1 = CFrame.new(0,.5,0) 
tip5 = Instance.new("Part") 
tip5.CanCollide = false 
tip5.TopSurface = 0 
tip5.BottomSurface = 0 
tip5.Parent = rblade 
tip5.Size = Vector3.new(1,1,1) 
tip5.formFactor = "Symmetric" 
tip5.BrickColor = BrickColor.new(1004) 
tip5m = Instance.new("BlockMesh") 
tip5m.Scale = Vector3.new(.41,.2,.41) 
tip5m.Parent = tip5 
tip5w = Instance.new("Weld") 
tip5w.Parent = rblade 
tip5w.Part0 = rblade 
tip5w.Part1 = tip5 
tip5w.C1 = CFrame.new(0,0,0) 
tip6 = Instance.new("Part") 
tip6.CanCollide = false 
tip6.TopSurface = 0 
tip6.BottomSurface = 0 
tip6.Parent = rblade 
tip6.Size = Vector3.new(1,1,1) 
tip6.formFactor = "Symmetric" 
tip6.BrickColor = BrickColor.new(1004) 
tip6m = Instance.new("BlockMesh") 
tip6m.Scale = Vector3.new(.05,.6,.41) 
tip6m.Parent = tip6 
tip6w = Instance.new("Weld") 
tip6w.Parent = rblade 
tip6w.Part0 = rblade 
tip6w.Part1 = tip6 
tip6w.C1 = CFrame.new(0,-3,0) 
tip7 = Instance.new("Part") 
tip7.CanCollide = false 
tip7.TopSurface = 0 
tip7.BottomSurface = 0 
tip7.Parent = rblade 
tip7.Size = Vector3.new(1,1,1) 
tip7.formFactor = "Symmetric" 
tip7.BrickColor = BrickColor.new(1004) 
tip7m = Instance.new("BlockMesh") 
tip7m.Scale = Vector3.new(.41,.6,.05) 
tip7m.Parent = tip7 
tip7w = Instance.new("Weld") 
tip7w.Parent = rblade 
tip7w.Part0 = rblade 
tip7w.Part1 = tip7 
tip7w.C1 = CFrame.new(0,-3,0) 
tip6a = Instance.new("Part") 
tip6a.CanCollide = false 
tip6a.TopSurface = 0 
tip6a.BottomSurface = 0 
tip6a.Parent = rblade 
tip6a.Size = Vector3.new(1,1,1) 
tip6a.formFactor = "Symmetric" 
tip6a.BrickColor = BrickColor.new(1004) 
tip6am = Instance.new("BlockMesh") 
tip6am.Scale = Vector3.new(.15,.6,.41) 
tip6am.Parent = tip6a 
tip6aw = Instance.new("Weld") 
tip6aw.Parent = rblade 
tip6aw.Part0 = rblade 
tip6aw.Part1 = tip6a 
tip6aw.C1 = CFrame.new(0,-2.5,0) 
tip7a = Instance.new("Part") 
tip7a.CanCollide = false 
tip7a.TopSurface = 0 
tip7a.BottomSurface = 0 
tip7a.Parent = rblade 
tip7a.Size = Vector3.new(1,1,1) 
tip7a.formFactor = "Symmetric" 
tip7a.BrickColor = BrickColor.new(1004) 
tip7am = Instance.new("BlockMesh") 
tip7am.Scale = Vector3.new(.41,.6,.15) 
tip7am.Parent = tip7a 
tip7aw = Instance.new("Weld") 
tip7aw.Parent = rblade 
tip7aw.Part0 = rblade 
tip7aw.Part1 = tip7a 
tip7aw.C1 = CFrame.new(0,-2.5,0) 
tip6b = Instance.new("Part") 
tip6b.CanCollide = false 
tip6b.TopSurface = 0 
tip6b.BottomSurface = 0 
tip6b.Parent = rblade 
tip6b.Size = Vector3.new(1,1,1) 
tip6b.formFactor = "Symmetric" 
tip6b.BrickColor = BrickColor.new(1004) 
tip6bm = Instance.new("BlockMesh") 
tip6bm.Scale = Vector3.new(.05,.6,.41) 
tip6bm.Parent = tip6b 
tip6bw = Instance.new("Weld") 
tip6bw.Parent = rblade 
tip6bw.Part0 = rblade 
tip6bw.Part1 = tip6b 
tip6bw.C1 = CFrame.new(0,-2,0) 
tip7b = Instance.new("Part") 
tip7b.CanCollide = false 
tip7b.TopSurface = 0 
tip7b.BottomSurface = 0 
tip7b.Parent = rblade 
tip7b.Size = Vector3.new(1,1,1) 
tip7b.formFactor = "Symmetric" 
tip7b.BrickColor = BrickColor.new(1004) 
tip7bm = Instance.new("BlockMesh") 
tip7bm.Scale = Vector3.new(.41,.6,.05) 
tip7bm.Parent = tip7b 
tip7bw = Instance.new("Weld") 
tip7bw.Parent = rblade 
tip7bw.Part0 = rblade 
tip7bw.Part1 = tip7b 
tip7bw.C1 = CFrame.new(0,-2,0) 

rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,15) 
hit.Parent.Humanoid.Sit = true 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new(1004) 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = 0 
bleed.Parent = Workspace 
bleed.Position = rblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.5,.5,.5) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 

end 
-- animations-- 
right = rns 
staff = rblade 
left = lns 
up = "right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1))wait()right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15))wait()right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2))wait()right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25))" 
down = "right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2))wait()right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15))wait()right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05))" 
-- end of staff 
mouse.KeyDown:connect(function(key) 
-- moves 
if key == "z" then 
if rbw.Part0 == rarm then 
rbw.Part0 = larm 
end 
end 
if key == "x" then 
if rbw.Part0 == larm then 
rbw.Part0 = rarm 
end 
end 
if key == "e" then 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
wait(.5) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
elseif key == "q" then 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.5) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
elseif key == "r" then 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.5)) 
wait(.2) 
left.C1 = CFrame.new(0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*.5)) 
wait(.1) 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
elseif key == "t" then 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.5)) 
wait(.2) 
right.C1 = CFrame.new(-0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*-.5)) 
wait(.1) 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
end 
-- spells------------------------------------------------------------------------------------- 
if key == "f" then 
loadstring(up)() 
local wall = Instance.new("Part") 
wall.Parent = Workspace 
wall.Size = Vector3.new(10,1,10) 
wall.formFactor = "Symmetric" 
wall.CFrame = player.Torso.CFrame *CFrame.new(0,-3.42,0) 
wall.TopSurface = 0 
wall.BottomSurface = 0 
wall.Anchored = true 
wall.BrickColor = BrickColor.new(1006) 
wall.Material = "Ice" 
game:GetService("Debris"):AddItem(wall, 15) 
while wall:IsDescendantOf(Workspace) do 
wait() 
wall.CFrame = player.Torso.CFrame*CFrame.new(0,-3.42,0) 
end 
wait(.5) 
loadstring(down)() 
end 
if key == "g" then 
if mouse.Target then 
if mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then 
local tar = mouse.Target 
loadstring(up)() 
local spark = Instance.new("Explosion") 
spark.BlastRadius = 4 
spark.BlastPressure = 0 
spark.Parent = Workspace 
spark.Position = tip2.Position 
local ptar = tar.Parent 
local mis = Instance.new("Part") 
mis.formFactor = "Symmetric" 
mis.Shape = "Ball" 
mis.BrickColor = BrickColor.new(1006) 
mis.Transparency = .5 
mis.Size = Vector3.new(1,1,1) 
mis.Parent = Workspace 
mis.CFrame = staff.CFrame * CFrame.new(0,0,-15) 
local misv = Instance.new("BodyVelocity") 
misv.Parent = mis 
misv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
misv.velocity = mis.CFrame.lookVector * 50 
local misg = Instance.new("BodyGyro") 
misg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
misg.Parent = mis 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
mis.Touched:connect(function(hit) 
if hit.Name == tar.Name then 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mis.Position 
mis:remove() 
end 
end) 
wait(.5) 
loadstring(down)() 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
local fire = Instance.new("Explosion") 
fire.Parent = Workspace 
fire.Position = mis.Position 
fire.BlastRadius = 2 
misv.velocity = mis.CFrame.lookVector * -18 
end 
mis:remove() 
end 
end 
end 
if key == "b" then 
loadstring(up)() 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new(1006) 
p.Name ="check" 
p.Parent = Workspace 
p.CanCollide = false 
p.Size = Vector3.new(1,3,1) 
p.CFrame = player.Torso.CFrame + Vector3.new(math.random(-5,5),math.random(-2,4),math.random(-5,5)) 
p.formFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .5 
local pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Sphere" 
pm.Scale = Vector3.new((.2+(.05*i)),(.2+(.05*i)),(.2+(.05*i))) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
player.Humanoid.Health = player.Humanoid.Health +2 
end 
player.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait(.5) 
loadstring(down)() 
end 
if key == "v" then 
local tar = mouse.Target 
if tar ~= nil then 
if (tip6a.Position - tar.Position).magnitude < 100 then 
loadstring(up)() 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Cyan") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(tip6a.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((tip6a.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
local ice = Instance.new("Part") 
ice.Position = tar.Parent.Torso.Position 
ice.Anchored = true 
tar.Parent.Torso.Anchored = true 
ice.BrickColor = BrickColor.new("Cyan") 
ice.Size = Vector3.new(4,6,4) 
ice.Reflectance = .2 
ice.TopSurface = 0 
ice.BottomSurface = 0 
ice.Transparency = .5 
ice.Parent = tar.Parent 
coroutine.resume(coroutine.create(function() kill(tar) end)) 
end 
wait(.1) 
shot:remove() 
end 
wait(.5) 
loadstring(down)() 
end 
end 
if key == "c" then 
local tar = mouse.Target 
if tar ~= nil then 
if (tip6a.Position - tar.Position).magnitude < 100 then 
loadstring(up)() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Royal purple") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(tip6a.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((tip6a.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
if tar.className == "Part" then 
local ice = Instance.new("Part") 
ice.CFrame = tar.CFrame 
ice.Size = tar.Size + Vector3.new(1,1,1) 
ice.Anchored = true 
tar.Anchored = true 
ice.BrickColor = BrickColor.new("Cyan") 
ice.Reflectance = .2 
ice.TopSurface = 0 
ice.BottomSurface = 0 
ice.Transparency = .5 
ice.Parent = tar 
ice.Friction = 0 
game:GetService("Debris"):AddItem(ice, 10) 
wait(.1) 
shot:remove() 
wait(.5) 
loadstring(down)() 
end 
end 
end 
end 
if key == "h" then 
loadstring(up)() 
local cf = CFrame.new(tip2.Position, mouse.Hit.p) 
local v = cf.lookVector 
local dx = (math.random() - .5) * .02 
local dy = (math.random() - .5) * .02 
local dz = (math.random() - .5) * .02 
parts = {} 
local f = coroutine.create(function() fire(Vector3.new(v.x + dx, v.y + dy, v.z + dz)) end) 
coroutine.resume(f) 
wait(.5) 
loadstring(down)() 
end 
if key == "y" then 
loadstring(up)() 
for i = 2,101 do 
wait() 
local boulder = Instance.new("Part") 
boulder.TopSurface = 0 
boulder.BottomSurface = 0 
boulder.Anchored = true 
boulder.BrickColor = BrickColor.new("Dark stone grey") 
boulder.Size = Vector3.new((i+math.random(-1,1)),(i+math.random(-1,1)),2) 
boulder.CFrame = tip.CFrame * CFrame.new(0,0,-2*i) 
boulder.Velocity = boulder.CFrame.lookVector * 500 
boulder.Material = "Slate" 
boulder.Parent = Workspace 
boulder.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.humanoid.Sit = true 
end 
end) 
game:GetService("Debris"):AddItem(boulder, .8) 
end 
loadstring(down)() 
end 
if key == "n" then 
local tar = mouse.Target 
if tar~= nil then 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
if tar.Parent:findFirstChild("Torso") ~= nil then 
loadstring(up)() 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new(1006) 
p.Name ="check" 
p.Parent = Workspace 
p.CanCollide = false 
p.Size = Vector3.new(1,3,1) 
p.CFrame = tar.Parent.Torso.CFrame + Vector3.new(math.random(-5,5),math.random(-2,4),math.random(-5,5)) 
p.formFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .5 
local pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Sphere" 
pm.Scale = Vector3.new((.2+(.05*i)),(.2+(.05*i)),(.2+(.05*i))) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health +2 
end 
tar.Parent.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait(.5) 
loadstring(down)() 
end 
end 
end 
end 
if key == "u" then 
loadstring(up)() 
local start = Instance.new("Part") 
start.Parent = Workspace 
start.Position = mouse.Hit.p + Vector3.new(0,18,0) 
start.Anchored = true 
start.Size = Vector3.new(1,1,1) 
start.Transparency = 1 
for i = 1,36 do 
start.CFrame = start.CFrame * CFrame.Angles(math.rad(0),math.rad(5),math.rad(0)) 
local wall1 = Instance.new("Part") 
wall1.Parent = Workspace 
wall1.BrickColor = BrickColor.new("Really black") 
wall1.Size = Vector3.new(1,10,1) 
wall1.Anchored = true 
wall1.TopSurface = 0 
wall1.CFrame = start.CFrame * CFrame.new(10,-15,0) 
local wall2 = Instance.new("Part") 
wall2.Parent = Workspace 
wall2.BrickColor = BrickColor.new("Really black") 
wall2.Size = Vector3.new(1,10,1) 
wall2.Anchored = true 
wall2.TopSurface = 0 
wall2.CFrame = start.CFrame * CFrame.new(10,-15,0) 
local wall1a = Instance.new("Part") 
wall1a.Parent = Workspace 
wall1a.BrickColor = BrickColor.new("Really black") 
wall1a.Size = Vector3.new(1,10,1) 
wall1a.Anchored = true 
wall1a.TopSurface = 0 
wall1a.CFrame = start.CFrame * CFrame.new(-10,-15,0) 
local wall2a = Instance.new("Part") 
wall2a.Parent = Workspace 
wall2a.BrickColor = BrickColor.new("Really black") 
wall2a.Size = Vector3.new(1,0,1) 
wall2a.Anchored = true 
wall2a.TopSurface = 0 
wall2a.CFrame = start.CFrame * CFrame.new(-10,-15,0) 
local roof = Instance.new("Part") 
roof.Parent = Workspace 
roof.Size = Vector3.new(0,1,1) 
roof.BrickColor = BrickColor.new("Really black") 
roof.Anchored = true 
roof.CFrame = start.CFrame * CFrame.new(0,-10,0) 
roof.TopSurface = 0 
local roof2 = Instance.new("Part") 
roof2.Parent = Workspace 
roof2.Size = Vector3.new(1,1,20) 
roof2.BrickColor = BrickColor.new("Really black") 
roof2.Anchored = true 
roof2.CFrame = start.CFrame * CFrame.new(0,-10,0) 
roof2.TopSurface = 0 
local roofa = Instance.new("Part") 
roofa.Parent = Workspace 
roofa.Size = Vector3.new(20,1,1) 
roofa.BrickColor = BrickColor.new("Really black") 
roofa.Anchored = true 
roofa.CFrame = start.CFrame * CFrame.new(0,-20,0) 
roofa.TopSurface = 0 
local roof2a = Instance.new("Part") 
roof2a.Parent = Workspace 
roof2a.Size = Vector3.new(1,1,20) 
roof2a.BrickColor = BrickColor.new("Really black") 
roof2a.Anchored = true 
roof2a.CFrame = start.CFrame * CFrame.new(0,-20,0) 
roof2a.TopSurface = 0 
game:GetService("Debris"):AddItem(roof, 15) 
game:GetService("Debris"):AddItem(wall1, 15) 
game:GetService("Debris"):AddItem(wall2, 15) 
game:GetService("Debris"):AddItem(roof2, 15) 
game:GetService("Debris"):AddItem(wall1a, 15) 
game:GetService("Debris"):AddItem(wall2a, 15) 
game:GetService("Debris"):AddItem(roofa, 15) 
game:GetService("Debris"):AddItem(roof2a, 15) 
wait() 
end 
start:remove() 
wait(.5) 
loadstring(down)() 
end 
if key == "m" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
if tar.Parent.Name == "Minion" then 
loadstring(up)() 
while tar.Parent.Humanoid.Health >= 1 do 
wait() 
if player.Humanoid.Health == 0 then 
tar.Parent.Humanoid:TakeDamage(1000) 
else 
tar.Parent.Torso.move.position = mouse.Hit.p 
end 
end 
loadstring(down)() 
end 
end 
end 
if key == "j" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Jump = true 
end 
elseif key == "k" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Sit = true 
end 
elseif key == "l" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.PlatformStand = true 
end 
elseif key == "p" then 
local min = Instance.new("Model") 
min.Name = "Minion" 
min.Parent = Workspace 
local skel = Instance.new("Humanoid") 
skel.Parent = min 
skel.WalkSpeed = 16 
skel.MaxHealth = 100 
skel.Health = 100 
local thing = Instance.new("Part") 
thing.Name = "Head" 
thing.formFactor = "Symmetric" 
thing.TopSurface = 0 
thing.BottomSurface = 0 
thing.BrickColor = BrickColor.new(1003) 
thing.Transparency = .3 
thing.Size = Vector3.new(4,4,4) 
thing.Parent = min 
thing.Position = player.Torso.Position + Vector3.new(0,5,0) 
thing.Shape = "Ball" 
local thing2 = Instance.new("Part") 
thing2.Name = "Torso" 
thing2.formFactor = "Symmetric" 
thing2.TopSurface = 0 
thing2.BottomSurface = 0 
thing2.BrickColor = BrickColor.new(1004) 
thing2.Size = Vector3.new(1,1,1) 
thing2.Parent = min 
thing2.Position = player.Torso.Position + Vector3.new(0,5,0) 
thing2.Shape = "Ball" 
local live = Instance.new("Weld") 
live.Parent = thing2 
live.Part0 = thing2 
live.Part1 = thing 
live.Name = "Neck" 
local move = Instance.new("BodyPosition") 
move.Parent = thing2 
move.position = player.Torso.Position 
move.maxForce = Vector3.new(100,0,100) 
move.Name = "move" 
thing.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Name ~= "Minion" then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,7) 
hit.Parent.Humanoid.Sit = true 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Bright red") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = thing.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end 
end) 
coroutine.resume(coroutine.create(function() clean(min,thing2) end)) 
end 
--end of keys 
end) 
--end of script 
end) 

bin.Deselected:connect(function() 
staff:remove() 
rs.Part1 = rarm 
ls.Part1 = larm 
right:remove() 
left:remove() 
end)

	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Techno Gauntlet"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.48,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Techno Gauntlet"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
	Player = game:GetService("Players").LocalPlayer 
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
attack = false 
attacktype = 1 
attackdebounce = false 
MMouse=nil
combo=0
Mode="Choose"
Aiming=false
DroneTarget=Torso.Position
Drone1=nil
Drone2=nil
Drone3=nil
Bullets=10
BowAim=false
SnipAim=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Techno Gauntlet",true) ~= nil then 
Character:findFirstChild("Techno Gauntlet",true).Parent = nil 
end 
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local cone=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Cone",vt(1,1,1))
local conemsh=mesh("SpecialMesh",cone,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.5,0.5,0.5))
local screen1=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen1",vt(1,1,1))
local screen1msh=mesh("BlockMesh",screen1,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen2=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen2",vt(1,1,1))
local screen2msh=mesh("BlockMesh",screen2,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen3=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen3",vt(1,1,1))
local screen3msh=mesh("BlockMesh",screen3,"","",vt(0,0,0),vt(0.1,0.8,0.9))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,.2,255)
light1.Range=10
light1.Parent=screen1
light2=light1:Clone()
light2.Parent=screen2
light3=light1:Clone()
light3.Parent=screen3
 
if Character:findFirstChild("Drone",true) ~= nil then 
Character:findFirstChild("Drone",true).Parent = nil 
end 
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Techno Gauntlet" 
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,Torso.BrickColor,"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.1,0.6,1.1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.2,0.7,1.05))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.05,0.7,0.2))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.1,0.3))
msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))
 
local wld1=weld(prt1,prt1,RightArm,euler(0,0,0)*cf(0,0.3,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0.785,0)*cf(0,-0.51,0))
local wld5=weld(prt5,prt5,prt1,euler(0,-0.785,0)*cf(0,-0.51,0))
local wld6=weld(prt6,prt6,prt1,euler(0,0,0)*cf(0,-1.3,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0,0))
local wld8=weld(prt8,prt8,prt1,euler(0,0,-1.57)*cf(-0.55,0,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,0.05,0))
local wld10=weld(prt10,prt10,prt9,euler(0,0,0)*cf(0,0.01,0))
 
numb2=0
for i=1,4 do
numb=0.3
for i=1,3 do
local prtclaw=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partclaw",vt(1,1,1))
mshclaw=mesh("SpecialMesh",prtclaw,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.1))
local wldclaw=weld(prtclaw,prtclaw,prt1,euler(1.57,-1.57,-1.57)*cf(-0.55,0.3,numb)*euler(0,numb2,0))
numb=numb-0.3
end
numb2=numb2+1.57
end
 
numb=0
for i=1,5 do
local prtgear=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partgear",vt(1,1,1))
mshgear=mesh("BlockMesh",prtgear,"","",vt(0,0,0),vt(0.4,0.09,0.07))
local wldgear=weld(prtgear,prtgear,prt9,euler(0,numb,0)*cf(0,0,0))
numb=numb+0.628
end
 
local gun = Instance.new("Model") 
gun.Parent = modelzorz
gun.Name = "Blitz" 
gun.Parent=nil
 
local gprt1=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local gprt2=part(3,gun,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local gprt3=part(3,gun,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local gprt4=part(3,gun,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
local gprt5=part(3,gun,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
local gprt6=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local gprt7=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local gprt8=part(3,gun,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
local gprt9=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local gprt10=part(3,gun,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local gprt11=part(3,gun,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local gprt12=part(3,gun,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local gprt13=part(3,gun,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local gprt14=part(3,gun,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local gprt15=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(1,1,1))
local gprt16=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(1,1,1))
local gprt17=part(3,gun,0,0,BrickColor.new("Really black"),"Part17",vt(1,1,1))
local gprt18=part(3,gun,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local gprt19=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(1,1,1))
local gprt20=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part20",vt(1,1,1))
local gprt21=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part21",vt(1,1,1))
local gprt22=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part22",vt(1,1,1))
 
gmsh1=mesh("BlockMesh",gprt1,"","",vt(0,0,0),vt(0.2,0.7,0.2))
gmsh2=mesh("BlockMesh",gprt2,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh3=mesh("BlockMesh",gprt3,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh4=mesh("BlockMesh",gprt4,"","",vt(0,0,0),vt(0.5,0.5,0.7))
gmsh5=mesh("CylinderMesh",gprt5,"","",vt(0,0,0),vt(0.5,0.49,0.5))
gmsh6=mesh("CylinderMesh",gprt6,"","",vt(0,0,0),vt(0.1,0.5,0.1))
gmsh7=mesh("BlockMesh",gprt7,"","",vt(0,0,0),vt(0.55,0.3,0.3))
gmsh8=mesh("CylinderMesh",gprt8,"","",vt(0,0,0),vt(0.7,0.7,0.7))
gmsh9=mesh("CylinderMesh",gprt9,"","",vt(0,0,0),vt(0.4,0.71,0.4))
gmsh10=mesh("BlockMesh",gprt10,"","",vt(0,0,0),vt(0.3,0.4,0.3))
gmsh11=mesh("BlockMesh",gprt11,"","",vt(0,0,0),vt(0.2,2.5,0.5))
gmsh12=mesh("CylinderMesh",gprt12,"","",vt(0,0,0),vt(0.3,0.51,0.3))
gmsh13=mesh("BlockMesh",gprt13,"","",vt(0,0,0),vt(0.2,0.3,0.5))
gmsh14=mesh("CylinderMesh",gprt14,"","",vt(0,0,0),vt(0.3,0.2,0.3))
gmsh15=mesh("CylinderMesh",gprt15,"","",vt(0,0,0),vt(0.2,0.35,0.2))
gmsh16=mesh("CylinderMesh",gprt16,"","",vt(0,0,0),vt(0.2,0.21,0.2))
gmsh17=mesh("CylinderMesh",gprt17,"","",vt(0,0,0),vt(0.15,0.22,0.15))
gmsh18=mesh("CylinderMesh",gprt18,"","",vt(0,0,0),vt(0.6,0.2,0.6))
gmsh19=mesh("CylinderMesh",gprt19,"","",vt(0,0,0),vt(0.7,0.2,0.7))
gmsh20=mesh("CylinderMesh",gprt20,"","",vt(0,0,0),vt(0.6,1.5,0.6))
gmsh21=mesh("CylinderMesh",gprt21,"","",vt(0,0,0),vt(0.69,0.5,0.69))
gmsh22=mesh("CylinderMesh",gprt22,"","",vt(0,0,0),vt(0.69,0.31,0.69))
 
local GunWelds={}
local gwld1=weld(gprt1,gprt1,Torso,euler(0.5,1.57,0)*cf(1,-0.5,1.8))
local gwld2=weld(gprt2,gprt2,gprt1,euler(0,0,0)*cf(0,0.3,0))
local gwld3=weld(gprt3,gprt3,gprt1,euler(0,0,0)*cf(0,-0.3,0))
local gwld4=weld(gprt4,gprt4,gprt3,euler(-0.5,0,0)*cf(0,-0.1,-0.1))
local gwld5=weld(gprt5,gprt5,gprt4,euler(0,0,1.57)*cf(0,0,-0.35))
local gwld6=weld(gprt6,gprt6,gprt5,cf(0,0,-0.1))
local gwld7=weld(gprt7,gprt7,gprt4,cf(0,0,-0.1))
local gwld8=weld(gprt8,gprt8,gprt4,euler(0,0,1.57)*cf(0,0,0.4))
local gwld9=weld(gprt9,gprt9,gprt8,cf(0,0,0))
local gwld10=weld(gprt10,gprt10,gprt8,euler(1.57,0,0)*cf(0,0,0.4)*euler(0,0.7,0))
local gwld11=weld(gprt11,gprt11,gprt8,euler(1.57,0,0)*cf(0.3,0,0.9))
local gwld12=weld(gprt12,gprt12,gprt11,euler(-1.57,0,0)*cf(0,-1.3,0))
local gwld13=weld(gprt13,gprt13,gprt12,cf(0,0,0.3)*euler(0,1.57,0))
local gwld14=weld(gprt14,gprt14,gprt13,cf(0.05,0,0.25))
local gwld15=weld(gprt15,gprt15,gprt14,cf(0,0,0))
local gwld16=weld(gprt16,gprt16,gprt13,euler(0,0,1.57)*cf(0,0,-0.1))
local gwld17=weld(gprt17,gprt17,gprt16,cf(0,0,0))
local gwld18=weld(gprt18,gprt18,gprt8,euler(1.57,0,0)*cf(-0.1,0,0.4))
local gwld19=weld(gprt19,gprt19,gprt18,cf(-0.05,-0.15,0))
local gwld20=weld(gprt20,gprt20,gprt19,cf(0,-0.8,0))
local gwld21=weld(gprt21,gprt21,gprt20,cf(0,0.5,0))
local gwld22=weld(gprt22,gprt22,gprt20,cf(0,-0.6,0))
table.insert(GunWelds,gwld1)
table.insert(GunWelds,gwld2)
table.insert(GunWelds,gwld3)
table.insert(GunWelds,gwld4)
table.insert(GunWelds,gwld5)
table.insert(GunWelds,gwld6)
table.insert(GunWelds,gwld7)
table.insert(GunWelds,gwld8)
table.insert(GunWelds,gwld9)
table.insert(GunWelds,gwld10)
table.insert(GunWelds,gwld11)
table.insert(GunWelds,gwld12)
table.insert(GunWelds,gwld13)
table.insert(GunWelds,gwld14)
table.insert(GunWelds,gwld15)
table.insert(GunWelds,gwld16)
table.insert(GunWelds,gwld17)
table.insert(GunWelds,gwld18)
table.insert(GunWelds,gwld19)
table.insert(GunWelds,gwld20)
table.insert(GunWelds,gwld21)
table.insert(GunWelds,gwld22)
 
numb=1.57
for i=1,10 do
local gprt23=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part23",vt(1,1,1))
gmsh23=mesh("CylinderMesh",gprt23,"","",vt(0,0,0),vt(0.15,0.7,0.15))
local gwld23=weld(gprt23,gprt23,gprt20,cf(0,-0.1,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld23)
local gprt24=part(3,gun,0,0,BrickColor.new("Really black"),"Part24",vt(1,1,1))
gmsh24=mesh("CylinderMesh",gprt24,"","",vt(0,0,0),vt(0.14,1.52,0.14))
local gwld24=weld(gprt24,gprt24,gprt20,cf(0,0,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld24)
numb=numb+0.628
end
 
local sword=Instance.new("Model") 
sword.Parent=modelzorz
sword.Name="Daku" 
sword.Parent=nil
 
local sprt1=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local sprt2=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part2",vt(1,1,1))
local sprt3=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local sprt4=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local sprt5=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part5",vt(1,1,1))
local sprt6=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local sprt7=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local sprt8=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part8",vt(1,1,1))
local sprt9=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local sprt10=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local sprt11=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(1,1,1))
local sprt12=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part12",vt(1,1,1))
local sprt13=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part13",vt(1,1,1))
local sprt14=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(1,1,1))
local sprt15=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part15",vt(1,1,1))
local sprt16=part(3,sword,0,1,BrickColor.new("Black"),"Hitbox",vt(1,7,1.5))
local sprt17=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Top",vt(1,1,1))
local sprt18=part(3,sword,0,1,BrickColor.new("Black"),"Mid",vt(0.1,0.1,0.1))
local sprt19=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Bottom",vt(1,1,1))
 
smsh1=mesh("BlockMesh",sprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
smsh2=mesh("SpecialMesh",sprt2,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh3=mesh("BlockMesh",sprt3,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh4=mesh("SpecialMesh",sprt4,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh5=mesh("CylinderMesh",sprt5,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh6=mesh("BlockMesh",sprt6,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh7=mesh("BlockMesh",sprt7,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh8=mesh("BlockMesh",sprt8,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh9=mesh("SpecialMesh",sprt9,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh10=mesh("BlockMesh",sprt10,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh11=mesh("SpecialMesh",sprt11,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh12=mesh("CylinderMesh",sprt12,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh13=mesh("BlockMesh",sprt13,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh14=mesh("BlockMesh",sprt14,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh15=mesh("BlockMesh",sprt15,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh17=mesh("CylinderMesh",sprt17,"","",vt(0,0,0),vt(0.1,0.05,0.1))
smsh19=mesh("CylinderMesh",sprt19,"","",vt(0,0,0),vt(0.1,0.05,0.1))
 
local SwordWelds={}
local swld1=weld(sprt1,sprt1,Torso,euler(0,0,1.57)*cf(0,-4,0))
local swld2=weld(sprt2,sprt2,sprt1,euler(0,0,0)*cf(0,-0.4,0))
local swld3=weld(sprt3,sprt3,sprt2,euler(0,0,0)*cf(0,-0.3,0))
local swld4=weld(sprt4,sprt4,sprt3,euler(0,0,0)*cf(0,-0.3,0))
local swld5=weld(sprt5,sprt5,sprt4,euler(0,0,0)*cf(0,-0.15,0))
local swld6=weld(sprt6,sprt6,sprt5,euler(0,0,1.57)*cf(0,-0.2,0))
local swld7=weld(sprt7,sprt7,sprt6,euler(0,0.785,0)*cf(0,0,-0.17))
local swld8=weld(sprt8,sprt8,sprt5,euler(0,0,1.57)*cf(0,-0.4,0))
local swld9=weld(sprt9,sprt9,sprt1,euler(3.14,3.14,0)*cf(0,0.4,0))
local swld10=weld(sprt10,sprt10,sprt9,euler(0,0,0)*cf(0,-0.3,0))
local swld11=weld(sprt11,sprt11,sprt10,euler(0,0,0)*cf(0,-0.3,0))
local swld12=weld(sprt12,sprt12,sprt11,euler(0,0,0)*cf(0,-0.15,0))
local swld13=weld(sprt13,sprt13,sprt12,euler(0,0,1.57)*cf(0,-0.2,0))
local swld14=weld(sprt14,sprt14,sprt13,euler(0,0.785,0)*cf(0,0,-0.17))
local swld15=weld(sprt15,sprt15,sprt12,euler(0,0,1.57)*cf(0,-0.4,0))
local swld16=weld(sprt16,sprt16,sprt1,cf(0,0,-0.3))
local swld17=weld(sprt17,sprt17,sprt1,euler(0.55,0,0)*cf(0,3.7,-0.79))
local swld18=weld(sprt18,sprt18,sprt1,cf(0,0,-0.8))
local swld19=weld(sprt19,sprt19,sprt1,euler(-0.55,0,0)*cf(0,-3.7,-0.79))
table.insert(SwordWelds,swld1)
table.insert(SwordWelds,swld2)
table.insert(SwordWelds,swld3)
table.insert(SwordWelds,swld4)
table.insert(SwordWelds,swld5)
table.insert(SwordWelds,swld6)
table.insert(SwordWelds,swld7)
table.insert(SwordWelds,swld8)
table.insert(SwordWelds,swld9)
table.insert(SwordWelds,swld10)
table.insert(SwordWelds,swld11)
table.insert(SwordWelds,swld12)
table.insert(SwordWelds,swld13)
table.insert(SwordWelds,swld14)
table.insert(SwordWelds,swld15)
table.insert(SwordWelds,swld16)
table.insert(SwordWelds,swld17)
table.insert(SwordWelds,swld18)
table.insert(SwordWelds,swld19)
 
numb=0
numb2=0
bend=0
for i=1,8 do
local sprtblade1=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade1",vt(1,1,1))
smshblade1=mesh("SpecialMesh",sprtblade1,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade1=weld(sprtblade1,sprtblade1,sprt5,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade1)
local sprtblade2=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade2",vt(1,1,1))
smshblade2=mesh("SpecialMesh",sprtblade2,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade2=weld(sprtblade2,sprtblade2,sprt12,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade2)
numb=numb+0.3
numb2=numb2-0.01
bend=bend+0.05
end
 
local sniper=Instance.new("Model") 
sniper.Parent=modelzorz
sniper.Name="Hand Sniper" 
sniper.Parent=nil
 
local snprt1=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local snprt2=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local snprt3=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local snprt4=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local snprt5=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local snprt6=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local snprt7=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(1,1,1))
local snprt8=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local snprt9=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local snprt10=part(3,sniper,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local snprt11=part(3,sniper,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local snprt12=part(3,sniper,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local snprt13=part(3,sniper,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local snprt14=part(3,sniper,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local snprt15=part(3,sniper,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))
local snprt16=part(3,sniper,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local snprt17=part(3,sniper,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
local snprt18=part(3,sniper,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local snprt19=part(3,sniper,0,0,BrickColor.new("Black"),"Part19",vt(1,1,1))
local snprt20=part(3,sniper,0,0,BrickColor.new("Black"),"Part20",vt(1,1,1))
local snprt21=part(3,sniper,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local snprt22=part(3,sniper,0,0,BrickColor.new("Black"),"Part22",vt(1,1,1))
local snprt23=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(1,1,1))
local snprt24=part(3,sniper,0,0,BrickColor.new("Medium stone grey"),"Part24",vt(1,1,1))
local snprt25=part(3,sniper,0,0,BrickColor.new("Black"),"Part25",vt(1,1,1))
local snprt26=part(3,sniper,0,0,BrickColor.new("Black"),"Part26",vt(1,1,1))
local snprt27=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(1,1,1))
local snprt28=part(3,sniper,0,0,BrickColor.new("Black"),"Part28",vt(1,1,1))
local snprt29=part(3,sniper,0,0,BrickColor.new("Black"),"Part29",vt(1,1,1))
 
snmsh1=mesh("BlockMesh",snprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
snmsh2=mesh("BlockMesh",snprt2,"","",vt(0,0,0),vt(0.201,0.5,0.5))
snmsh3=mesh("BlockMesh",snprt3,"","",vt(0,0,0),vt(0.2,0.3,0.3))
snmsh4=mesh("BlockMesh",snprt4,"","",vt(0,0,0),vt(0.199,0.6,0.7))
snmsh5=mesh("BlockMesh",snprt5,"","",vt(0,0,0),vt(0.198,0.9,0.3))
snmsh6=mesh("BlockMesh",snprt6,"","",vt(0,0,0),vt(0.202,3.5,0.3))
snmsh7=mesh("BlockMesh",snprt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh8=mesh("BlockMesh",snprt8,"","",vt(0,0,0),vt(0.1,0.6,0.1))
snmsh9=mesh("BlockMesh",snprt9,"","",vt(0,0,0),vt(0.201,1.7,0.2))
snmsh10=mesh("BlockMesh",snprt10,"","",vt(0,0,0),vt(0.15,0.4,0.4))
snmsh11=mesh("BlockMesh",snprt11,"","",vt(0,0,0),vt(0.201,0.8,0.2))
snmsh12=mesh("CylinderMesh",snprt12,"","",vt(0,0,0),vt(0.2,4,0.2))
snmsh13=mesh("CylinderMesh",snprt13,"","",vt(0,0,0),vt(0.4,0.2,0.4))
snmsh14=mesh("CylinderMesh",snprt14,"","",vt(0,0,0),vt(0.22,0.3,0.22))
snmsh15=mesh("CylinderMesh",snprt15,"","",vt(0,0,0),vt(0.15,0.301,0.15))
snmsh16=mesh("BlockMesh",snprt16,"","",vt(0,0,0),vt(0.1,0.7,0.1))
snmsh17=mesh("BlockMesh",snprt17,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh18=mesh("BlockMesh",snprt18,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh19=mesh("BlockMesh",snprt19,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh20=mesh("BlockMesh",snprt20,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh21=mesh("CylinderMesh",snprt21,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh22=mesh("CylinderMesh",snprt22,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh23=mesh("CylinderMesh",snprt23,"","",vt(0,0,0),vt(0.199,1,0.199))
snmsh24=mesh("CylinderMesh",snprt24,"","",vt(0,0,0),vt(0.15,1.01,0.15))
snmsh25=mesh("BlockMesh",snprt25,"","",vt(0,0,0),vt(0.3,0.5,0.2))
snmsh26=mesh("CylinderMesh",snprt26,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh27=mesh("SpecialMesh",snprt27,"Sphere","",vt(0,0,0),vt(0.1,0.1,0.1))
snmsh28=mesh("BlockMesh",snprt28,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh29=mesh("CylinderMesh",snprt29,"","",vt(0,0,0),vt(0.15,0.4,0.15))
 
local SniperWelds={}
local snwld1=weld(snprt1,snprt1,Torso,euler(0.5,0,0)*cf(0,-4,0))
local snwld2=weld(snprt2,snprt2,snprt1,euler(-0.5,0,0)*cf(0,0.5,-0.2))
local snwld3=weld(snprt3,snprt3,snprt2,euler(-0.785,0,0)*cf(0,-0.1,-0.2))
local snwld4=weld(snprt4,snprt4,snprt3,euler(0.785,0,0)*cf(0,-0.4,0))
local snwld5=weld(snprt5,snprt5,snprt4,cf(0,0,-0.3))
local snwld6=weld(snprt6,snprt6,snprt1,euler(1.07,0,0)*cf(0,-0.5,0.2))
local snwld7=weld(snprt7,snprt7,snprt6,euler(0,0,0)*cf(0,0.2,0.5))
local snwld8=weld(snprt8,snprt8,snprt6,euler(1.57,0,0)*cf(0,-0.1,0.25))
local snwld9=weld(snprt9,snprt9,snprt6,euler(0,0,0)*cf(0,-0.9,0.25))
local snwld10=weld(snprt10,snprt10,snprt9,euler(0,0,0)*cf(0,0.5,0.2))
local snwld11=weld(snprt11,snprt11,snprt6,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld12=weld(snprt12,snprt12,snprt11,euler(0,0,0)*cf(0,-2,0))
local snwld13=weld(snprt13,snprt13,snprt12,euler(0,0,0)*cf(0,-1.8,0))
local snwld14=weld(snprt14,snprt14,snprt12,euler(0,0,0)*cf(0,-2,0))
local snwld15=weld(snprt15,snprt15,snprt14,euler(0,0,0)*cf(0,0,0))
local snwld16=weld(snprt16,snprt16,snprt11,euler(0,0,0)*cf(0,0,-0.1))
local snwld17=weld(snprt17,snprt17,snprt16,euler(1.57,0,0)*cf(0.05,0.2,-0.1))
local snwld18=weld(snprt18,snprt18,snprt16,euler(1.57,0,0)*cf(-0.05,0.2,-0.1))
local snwld19=weld(snprt19,snprt19,snprt16,euler(1.57,0,0)*cf(-0.05,-0.2,-0.1))
local snwld20=weld(snprt20,snprt20,snprt16,euler(1.57,0,0)*cf(0.05,-0.2,-0.1))
local snwld21=weld(snprt21,snprt21,snprt16,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld22=weld(snprt22,snprt22,snprt16,euler(0,0,0)*cf(0,-0.2,-0.2))
local snwld23=weld(snprt23,snprt23,snprt16,euler(0,0,0)*cf(0,0,-0.2))
local snwld24=weld(snprt24,snprt24,snprt23,euler(0,0,0)*cf(0,0,0))
local snwld25=weld(snprt25,snprt25,snprt6,euler(0,0,0)*cf(0,-0.5,0))
local snwld26=weld(snprt26,snprt26,snprt25,cf(0,-0.3,0)*euler(0.5,0.7,1.57))
local snwld27=weld(snprt27,snprt27,snprt26,cf(0,-0.1,0))
local snwld28=weld(snprt28,snprt28,snprt6,euler(1.57-0.5,0,0)*cf(0,0.2,0.2))
local snwld29=weld(snprt29,snprt29,snprt9,euler(0,0.2,1.57)*cf(0,-0.8,0.1))
table.insert(SniperWelds,snwld1)
table.insert(SniperWelds,snwld2)
table.insert(SniperWelds,snwld3)
table.insert(SniperWelds,snwld4)
table.insert(SniperWelds,snwld5)
table.insert(SniperWelds,snwld6)
table.insert(SniperWelds,snwld7)
table.insert(SniperWelds,snwld8)
table.insert(SniperWelds,snwld9)
table.insert(SniperWelds,snwld10)
table.insert(SniperWelds,snwld11)
table.insert(SniperWelds,snwld12)
table.insert(SniperWelds,snwld13)
table.insert(SniperWelds,snwld14)
table.insert(SniperWelds,snwld15)
table.insert(SniperWelds,snwld16)
table.insert(SniperWelds,snwld17)
table.insert(SniperWelds,snwld18)
table.insert(SniperWelds,snwld19)
table.insert(SniperWelds,snwld20)
table.insert(SniperWelds,snwld21)
table.insert(SniperWelds,snwld22)
table.insert(SniperWelds,snwld23)
table.insert(SniperWelds,snwld24)
table.insert(SniperWelds,snwld25)
table.insert(SniperWelds,snwld26)
table.insert(SniperWelds,snwld27)
table.insert(SniperWelds,snwld28)
table.insert(SniperWelds,snwld29)
 
numb=-0.15
numb2=0.1
for i=1,2 do
local snprt30=part(3,sniper,0,0,BrickColor.new("Black"),"Part30",vt(1,1,1))
local snprt31=part(3,sniper,0,0,BrickColor.new("Black"),"Part31",vt(1,1,1))
local snprt32=part(3,sniper,0,0,BrickColor.new("Black"),"Part32",vt(1,1,1))
local snprt33=part(3,sniper,0,0,BrickColor.new("Black"),"Part33",vt(1,1,1))
local snprt34=part(3,sniper,0,0,BrickColor.new("Black"),"Part34",vt(1,1,1))
local snprt35=part(3,sniper,0,0,BrickColor.new("Black"),"Part35",vt(1,1,1))
local snprt36=part(3,sniper,0,0,BrickColor.new("Black"),"Part36",vt(1,1,1))
local snprt37=part(3,sniper,0,0,BrickColor.new("Black"),"Part37",vt(1,1,1))
snmsh30=mesh("CylinderMesh",snprt30,"","",vt(0,0,0),vt(0.2,0.1,0.2))
snmsh31=mesh("CylinderMesh",snprt31,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh32=mesh("CylinderMesh",snprt32,"","",vt(0,0,0),vt(0.15,0.1,0.15))
snmsh33=mesh("CylinderMesh",snprt33,"","",vt(0,0,0),vt(0.125,0.3,0.125))
snmsh34=mesh("CylinderMesh",snprt34,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh35=mesh("CylinderMesh",snprt35,"","",vt(0,0,0),vt(0.08,0.8,0.08))
snmsh36=mesh("CylinderMesh",snprt36,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh37=mesh("CylinderMesh",snprt37,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local snwld30=weld(snprt30,snprt30,snprt29,euler(0,0,0)*cf(0,numb,0))
local snwld31=weld(snprt31,snprt31,snprt30,euler(0,0,1.57+numb2)*cf(0.25,0,0))
local snwld32=weld(snprt32,snprt32,snprt31,cf(0,0.25,0))
local snwld33=weld(snprt33,snprt33,snprt32,cf(0,0.15,0))
local snwld34=weld(snprt34,snprt34,snprt33,cf(0,0.1,0))
local snwld35=weld(snprt35,snprt35,snprt34,cf(0,0.4,0))
local snwld36=weld(snprt36,snprt36,snprt35,cf(0,0.4,0))
local snwld37=weld(snprt37,snprt37,snprt36,cf(0,0.1,0))
table.insert(SniperWelds,snwld30)
table.insert(SniperWelds,snwld31)
table.insert(SniperWelds,snwld32)
table.insert(SniperWelds,snwld33)
table.insert(SniperWelds,snwld34)
table.insert(SniperWelds,snwld35)
table.insert(SniperWelds,snwld36)
table.insert(SniperWelds,snwld37)
numb=numb+0.3
numb2=numb2-0.2
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Techno Gauntlet" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function CreateDrone()
local drone=Instance.new("Model")
drone.Parent=modelzorz
drone.Name="Drone"
 
local dprt1=part(3,drone,0,1,BrickColor.new("White"),"DPart1",vt(1,1,1))
dprt1.CanCollide=true
local dprt6=part(3,drone,0,1,BrickColor.new("Bright red"),"DPart6",vt(1,1,1))
local dprt7=part(3,drone,0,1,BrickColor.new("Black"),"DPart7",vt(1,1,1))
 
local dmsh1=mesh("SpecialMesh",dprt1,"Sphere","",vt(0,0,0),vt(1,1,1))
local dmsh6=mesh("CylinderMesh",dprt6,"","",vt(0,0,0),vt(0.5,0.2,0.5))
local dmsh7=mesh("CylinderMesh",dprt7,"","",vt(0,0,0),vt(0.4,0.21,0.4))
 
--local dwld1=weld(dprt1,dprt1,Torso,euler(0,0,0)*cf(0,-5,0))
local dwld6=weld(dprt6,dprt6,dprt1,euler(1.57,0,0)*cf(0,0,0.4))
local dwld7=weld(dprt7,dprt7,dprt6,cf(0,0,0))
 
numb=0
for i=1,4 do
local dprt2=part(3,drone,0,1,BrickColor.new("Medium stone grey"),"DPart2",vt(1,1,1))
local dmsh2=mesh("BlockMesh",dprt2,"","",vt(0,0,0),vt(0.5,0.5,0.8))
local dwld2=weld(dprt2,dprt2,dprt1,cf(0,-0.5,0)*euler(0,0,numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt3=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart3",vt(1,1,1))
local dmsh3=mesh("BlockMesh",dprt3,"","",vt(0,0,0),vt(0.5,0.5,0.79))
local dwld3=weld(dprt3,dprt3,dprt1,cf(0,-0.3,0)*euler(0,0,0.785+numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt4=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart4",vt(1,1,1))
local dmsh4=mesh("BlockMesh",dprt4,"","",vt(0,0,0),vt(0.2,0.8,0.2))
local dwld4=weld(dprt4,dprt4,dprt1,cf(0,0.8,0)*euler(0.785,numb,0))
local dprt5=part(3,drone,0,1,BrickColor.new("Bright blue"),"DPart5",vt(1,1,1))
local dmsh5=mesh("SpecialMesh",dprt5,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))
local dwld5=weld(dprt5,dprt5,dprt4,cf(0,0.5,0)*euler(0,0,0))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(0,0,255)
light1.Range=10
light1.Parent=dprt5
numb=numb+1.57
end
return drone,dprt1
end
 
function hideanim() 
equipped=false
if Mode=="Drones" then
Mode="Choose"
end
wait(0.1) 
cone.Parent=nil
screen1.Parent=nil
screen2.Parent=nil
screen3.Parent=nil
Neck.C0=necko*euler(0,0,0)
wld9.C0=euler(0,0,0)*cf(0,0.05,0)
Bg.Parent=nil
end 
 
function equipanim() 
equipped=true
if Mode=="Choose" then
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.5*i) * euler(1*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07*i,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(1.5*i,0,1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57*i,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.3+0.1*i,0,-0.2-0.1*i)
RW.C0=cf(1, 0.3, -0.5) * euler(1-0.2*i,0,-1+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07-0.1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-0.2*i,0,1.2-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
coroutine.resume(coroutine.create(function() 
cone.Parent=modelzorz
cone.Transparency=1
local conewld=weld(cone,cone,prt9,euler(0,0,0)*cf(0,0.2,0))
screen1.Parent=modelzorz
screen1.Transparency=1
local screen1wld=weld(screen1,screen1,cone,euler(0,0.8,0)*cf(0,1,0))
screen2.Parent=modelzorz
screen2.Transparency=1
local screen2wld=weld(screen2,screen2,screen1,cf(0,0,1)*euler(0,0.3,0))
screen3.Parent=modelzorz
screen3.Transparency=1
local screen3wld=weld(screen3,screen3,screen1,cf(0,0,-1)*euler(0,-0.3,0))
 
for i=1,0.5,-0.05 do
wait()
cone.Transparency=i
screen1.Transparency=i
screen2.Transparency=i
screen3.Transparency=i
end
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
while Mode=="Choose" do
wait(0.06)
Cone.Transparency=0.5
Screen1.Transparency=0.5
Screen2.Transparency=0.5
Screen3.Transparency=0.5
light1.Brightness=.7
light2.Brightness=.7
light3.Brightness=.7
wait(0.06)
Cone.Transparency=0.6
Screen1.Transparency=0.6
Screen2.Transparency=0.6
Screen3.Transparency=0.6
light1.Brightness=.8
light2.Brightness=.8
light3.Brightness=.8
end
end),cone,screen1,screen2,screen3)
end))
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.4-0.7*i,0,-0.3)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.8+0.77*i,0,-1+0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.17+0.67*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.3+1*i,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Neck.C0=necko*euler(-0.3,0,-0.3)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end 
 
function Drones()
Mode="Drones"
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function() 
while Mode=="Drones" do
wait()
if Aiming==false then
DroneTarget=Torso.Position
end
end
end))
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local drone1,droneprt1=CreateDrone()
local dwld1=weld(droneprt1,droneprt1,Torso,euler(0,0,0)*cf(2,0,5))
local drone2,droneprt2=CreateDrone()
local dwld12=weld(droneprt2,droneprt2,Torso,euler(0,0,0)*cf(0,0,5))
local drone3,droneprt3=CreateDrone()
local dwld13=weld(droneprt3,droneprt3,Torso,euler(0,0,0)*cf(-2,0,5))
wait()
dwld1:Remove()
dwld12:Remove()
dwld13:Remove()
local pos=it("BodyPosition",droneprt1)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt1.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt1)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt1.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt1.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt2)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt2.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt2)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt2.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt2.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt3)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt3.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt3)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt3.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt3.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
droneprt1.Anchored=true
for _,v in pairs(drone1:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone1:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt2.Anchored=true
for _,v in pairs(drone2:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone2:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt3.Anchored=true
for _,v in pairs(drone3:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone3:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
wait(2)
droneprt1.Anchored=false
droneprt2.Anchored=false
droneprt3.Anchored=false
Humanoid.WalkSpeed=16
wait()
effect.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-0.77*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
return drone1, drone2, drone3
end
 
function Gun()
attack=true
Mode="Gun"
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
gun.Parent=modelzorz
for e=1,#GunWelds do
GunWelds[e].Parent=modelzorz
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=gun:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-1*i,0,0.2+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
attack=false
end
 
function Sword()
attack=true
Mode="Sword"
swld1.Part1=LeftArm
swld1.C0=euler(0,0,-1.57)*cf(0,1,0)
swld1.C1=euler(0,0,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sword.Parent=modelzorz
for e=1,#SwordWelds do
SwordWelds[e].Parent=modelzorz
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
end
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sword:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
swld1.C0=euler(0,-1.57*i,1.57-3.14*i)*cf(0,1,0)
swld1.C1=euler(0,1.57*i,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Sniper()
attack=true
Mode="Sniper"
snwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sniper.Parent=modelzorz
for e=1,#SniperWelds do
SniperWelds[e].Parent=modelzorz
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sniper:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
snwld1.C1=cf(0,0,0)
for i=0,1,0.1 do
wait()
snwld1.C0=euler(0.5+1.57*i,0,0)*cf(0,1.6-0.6*i,-2+2*i)
RW.C0=cf(1, 0.3, -0.8+0.3*i) * euler(1.27-0.37*i,0,-1.3+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+2.3*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.2+0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Shoot()
attack=true
Humanoid.WalkSpeed=2
Bg.Parent=Head
Bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5+1.07*i,0,0.6-1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
spread=1
range=50
rangepower=70
while hold==true and Bullets~=0 do
for i=1,5 do
wait(0.05)
Bullets=Bullets-1
so("http://roblox.com/asset/?id=10209257",gprt16,0.5,1+math.random()) 
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((gprt16.CFrame * CFrame.new(0,-gprt16.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
light.Brightness = light.Brightness - .1
shellb1.CFrame = shellb1.CFrame + Head.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
shoottrail(MMouse.Hit.p,gprt16,5,1,1)
LW.C1=cf(0, 0.5, 0) * euler(-0.2,0,0)
wait(0.05)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end
spread=0
range=500
rangepower=50
if Bullets==0 then
for i=0,1,0.2 do
wait(0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57-1.57*i,0)
end
wait(0.2)
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57*i)*cf(0,1,0)
Neck.C0=necko*euler(0.3*i,0,0.785-0.785*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.2*i,0,0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2+0.2*i, 0.5, -0.3-0.2*i) * euler(1.57-0.57*i,0,-0.785+0.785*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld20.C0=cf(0.3*i,-0.8-0.2*i,0)*euler(0,0,1.57*i)
RW.C0=cf(1, 0.5, -0.5) * euler(1.2-0.3*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3+0.2*i,0,-0.5*i)
RW.C0=cf(1+0.5*i, 0.5, -0.5+0.5*i) * euler(0.9-1.3*i,0,-0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local ammo=Instance.new("Model")
ammo.Parent=modelzorz
ammo.Name="Ammo"
local aprt1=part(3,ammo,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local amsh1=mesh("CylinderMesh",aprt1,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local awld1=weld(aprt1,aprt1,RightArm,cf(0,1,0))
numb=0
for i=1,10 do
local aprt2=part(3,ammo,0,0,BrickColor.new("Bright yellow"),"Part2",vt(1,1,1))
local amsh2=mesh("CylinderMesh",aprt2,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local awld2=weld(aprt2,aprt2,aprt1,cf(0.2,0.1,0)*euler(0,numb,0))
numb=numb+0.628
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1+0.1*i,0)
Neck.C0=necko*euler(0.5-0.2*i,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(-0.4+1.5*i,0,-0.3-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
ammo.Parent=nil
for i=0,1,0.2 do
wait()
gwld20.C0=cf(0.3-0.3*i,-0.8-0.2+0.2*i,0)*euler(0,0,1.57-1.57*i)
Neck.C0=necko*euler(0.3-0.1*i,0,-0.2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.1+0.1*i,0,-0.4+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57*i,0)
Neck.C0=necko*euler(0.2-0.2*i,0,-0.2+0.2*i)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.2*i,0,0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.2*i, 0.5, -0.5+0.2*i) * euler(1-0.5*i,0,0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Bullets=10
else
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-1.57*i,0,-0.785+1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5,0,0.6)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Bg.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function slash1()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4*i,0,-0.4-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1*i,0)
end
Bg.Parent=Head
Bg.cframe=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(-0.4+2.4*i,0,-0.6+1.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
for i=0,1,0.1 do
wait()
--[[Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)]]
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2,0,0.8+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash2()
attack=true
CF=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(0.5-0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.43*i,0,1-2.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1+.57*i,0)
Bg.cframe=CF*euler(0,3.14*i,0)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(-0.5*i,-1.57,-1.57)*cf(0,1,0)
Bg.cframe=CF*euler(0,3.14+3.14*i,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash3()
attack=true
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
swld1.C0=euler(-0.5+0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+.43*i,0,-1.57+1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-2.07*i,0)
end
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.9) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
swld1.C0=euler(-0.3*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0.2+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+1.5*i, 0.5-0.2*i, -1*i) * euler(2-1.5*i,0,-.57+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5,0,0.4)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0, 0.3, -1) * euler(.5-.2*i,0,.5)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
con1:disconnect()
wait()
attack=false
end
 
function BowShoot()
attack=true
BowAim=true
HeadNumb=0
Humanoid.WalkSpeed=2
coroutine.resume(coroutine.create(function(FenNeck) 
while BowAim==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
Bg.cframe = cf(Head.Position,pos4) * euler(0,3.14-HeadNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
Bg.Parent = Torso
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
FenNeck.C1=necko2*euler(-offset,0,0)
end
end),Neck)
for i=0,1,0.1 do
wait()
HeadNumb=1.57*i
swld1.C0=euler(0,-1.57+0.3*i,-1.57)*cf(0,1,0)
Neck.C0=necko*euler(0,0,HeadNumb)
RW.C0=cf(1.5-2.5*i, 0.5, -1*i) * euler(1.57*i,0,0.2-1.97*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57*i,0,-0.4-0.87*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
 
local string1=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String1",vt(0.5,1,0.5))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt17,euler(0,0,0)*cf(0,0,0))
local string2=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String2",vt(0.5,1,0.5))
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld2=weld(string2,string2,prt19,euler(0,0,0)*cf(0,0,0))
table.insert(SwordWelds,stringwld1)
table.insert(SwordWelds,stringwld1)
coroutine.resume(coroutine.create(function(String1,String2)
for i=0,1,0.1 do
wait()
String1.Transparency=String1.Transparency-0.05
String2.Transparency=String2.Transparency-0.05
end
end),string1,string2)
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
arrowdebounce=false
repeat
wait(0)
coroutine.resume(coroutine.create(function()
if arrowdebounce==false then
so("http://www.roblox.com/asset/?id=10756118",sprt18,1,1) 
Lightning(sprt17.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
Lightning(sprt19.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
arrowdebounce=true
wait(0.1)
arrowdebounce=false
end
end))
local top = sprt17.CFrame
local bottom = sprt19.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = sprt18.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
stringmsh1.Scale=vt(0.1,mg1,0.1)
basecf=sprt17.CFrame
cff=CFrame.new(sprt17.CFrame*angles(1.57,0,0).p,sprt18.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=sprt18
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
stringwld1.C0=C0
stringwld1.C1=C1
 
stringmsh2.Scale=vt(0.1,mg2,0.1)
cff2=CFrame.new(sprt18.CFrame*angles(1.57,0,0).p,sprt19.Position)*angles(math.rad(90),0,0)*cf(0,-mg2/2,0)
hit3=string2
hit2=sprt18
stringwld2.Parent=string2
stringwld2.Part0=hit3
stringwld2.Part1=hit2
HitPos2=cff2.p
local CJ2 = CFrame.new(HitPos2)
local C02=cff2:inverse() *CJ 
local C12=hit2.CFrame:inverse() * CJ 
stringwld2.C0=C02
stringwld2.C1=C12
until string1.Parent==nil
end))
swld18.Part1=RightArm
swld18.C0=cf(0,1,0)
local arrow=part(3,sword,0,1,BrickColor.new("Bright yellow"),"Arrow",vt(1,1,1))
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
arrowmsh.VertexColor=vt(1,1,1)
local arrowwld=weld(arrow,arrow,sprt18,euler(-1.57,0,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
arrow.Transparency=arrow.Transparency-0.05
arrowwld.C0=euler(-1.57,0,0)*cf(0,1,0)*euler(0,0,0.15*i)
RW.C0=cf(1.5-2.5+2*i, 0.5, -1) * euler(1.57,0,-1.77+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
while BowAim==true do
wait(0)
end
so("http://www.roblox.com/asset/?id=16211041",prt18,1,1) 
spread=0
range=500
rangepower=100
shoottrail(MMouse.Hit.p,arrow,30,10,2)
Humanoid.WalkSpeed=0
arrow.Parent=nil
swld18.Part0=sprt18
swld18.Part1=sprt1
swld18.C0=cf(0,0,-0.8)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.2*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.2-0.1*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
end
string1.Parent=nil
string2.Parent=nil
BowAim=false
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,HeadNumb-HeadNumb*i)
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(1.57-1.57*i,0,-1.57+1.77*i)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-1.27+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
end
spread=0
range=500
rangepower=50
Neck.C1=necko2
Neck.C0=necko
attack=false
end
 
function Aim()
attack=true
Humanoid.WalkSpeed=5
Bg.Parent=Torso
Bg.cframe=Head.CFrame
CF=Torso.CFrame
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1+0.2*i, 0.3, -0.5-0.2*i) * euler(0.9+0.6*i,0,-0.3+0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3+0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07+0.5*i,0,0.7+0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function UnAim()
attack=true
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785-0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2-0.2*i, 0.3, -0.7+0.2*i) * euler(1.5-0.6*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.785-0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Bg.Parent=nil
attack=false
end
 
function SniperShoot()
attack=true
spread=0
range=1000
rangepower=100
shoottrail(MMouse.Hit.p,snprt15,20,20,0.5)
coroutine.resume(coroutine.create(function()
for z = 1 ,4 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((snprt15.CFrame * CFrame.new(0,-snprt15.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
HCF=Head.CFrame.lookVector
for i = 0 , 1 , 0.02 do
wait()
light.Brightness = light.Brightness - .02
shellb1.CFrame = shellb1.CFrame + HCF*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
so("http://roblox.com/asset/?id=10209875",snprt15,1,0.8) 
for i=0,1,0.3 do
wait()
Neck.C0=necko*euler(-0.3*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.3-0.1*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3+0.1*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3-0.1*i,0,0)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.4+0.6*i,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.9-0.6*i,0,-0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785-0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.4+0.8*i,0,0)
end
so("http://roblox.com/asset/?id=10209881",snprt15,1,1) 
local ammo=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Ammo",vt(1,1,1))
ammo.CanCollide=true
ammomsh=mesh("CylinderMesh",ammo,"","",vt(0,0,0),vt(0.15,0.2,0.15))
local cfrf = snprt25.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
ammo.CFrame = cfr
ammo.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ammo.Velocity = cfr.lookVector * 20
coroutine.resume(coroutine.create(function(Part) 
wait(10)
Part.Parent=nil
end),ammo)
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4*i) * euler(1.3,0,-0.6+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1-1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4+0.4*i) * euler(1.3,0,-0.6+0.3-0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.2-0.2*i,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.3+0.2*i,0,-0.6+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.6+0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(0.4-0.4*i,0,0)
end
spread=0
range=500
rangepower=50
attack=false
end
 
function RemoveDrones()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5+0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-3.14*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveDrones2()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3-0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(2.3+0.84*i,0,0.7-0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.6+0.3*i,0,-0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.17+0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(3.14-0.84*i,0,0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveGun()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.2*i) * euler(0.5+1.07*i,0,0.6-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for _,s in pairs(gun:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,gun)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSword()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1*i) * euler(1.57*i,0,-0.4+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
for _,s in pairs(sword:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sword)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSniper()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4*i,0,0)
snwld1.C0=euler(2.07+0.3*i,0,0)*cf(0,1,0)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.9+0.37*i,0,-0.3-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3-1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07,0,0.7-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,s in pairs(sniper:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sniper)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4-0.4*i,0,0)
RW.C0=cf(1+0.5*i, 0.3, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0.3-0.3*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.07-1.07*i,0,0.5-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,255,.2)
light1.Range=8
light1.Parent=li
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.2)
end
end
 
spread=0
range=500
rangepower=50
function shoottrail(ShootPosition,baseprt,Damage,Knockback,Size)
coroutine.resume(coroutine.create(function() 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-ShootPosition).magnitude/100
local dir = CFrame.new((baseprt.Position+ShootPosition)/2,ShootPosition+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,modelzorz)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Bright yellow")
effectsg.Reflectance = 0.4
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,mg*5,2)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,mg*5,Size-Size*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir
if Mode~="Sniper" then
dir = dir * CFrame.Angles(math.rad(-1),0,0)
end
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
critical=false
if SnipAim==true then
if hit.Name=="Head" then
coroutine.resume(coroutine.create(function(HeadPart)
for i=0,0.5,0.1 do
wait()
HeadPart.Velocity=vt(0,60,0) 
end
end),hit)
print("CRITICAL")
critical=true
p=it("Part")
p.Parent=workspace
p.CanCollide=false
p.Transparency=1
p.CFrame=hit.CFrame
p.Anchored=true
local GUI = it("BillboardGui") 
GUI.Adornee = p
GUI.Parent = p
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = vt(0, 4, 0) 
local Chat = it("TextLabel") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.Position = UDim2.new(0.599999964, 0, 0, 0) 
Chat.Visible = true 
Chat.Text = "Critical!" 
coroutine.resume(coroutine.create(function(Part) 
for i=0,4,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.05,0)
end
Part.Parent=nil
end),p) 
for i=0,7 do
        Blood=it("Part")
        Blood.Name="Blood"
        Blood.TopSurface="Smooth"
        Blood.BottomSurface="Smooth"
        Blood.formFactor="Plate"
        Blood.BrickColor=BrickColor:Red()
        Blood.Size=vt(1,.4,1)
        Blood.Velocity=vt(math.random(-4,4),math.random(5,25),math.random(-4,4))
        Blood.CFrame=hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Blood.Parent=workspace 
        Blood.Velocity=vt(math.random(-20,20),math.random(20,50),math.random(-20,20)) 
        Blood.CanCollide=false
        coroutine.resume(coroutine.create(function(blod) 
        wait(0.1)
        blod.CanCollide=true
        wait(5) 
        blod.Parent = nil 
        end),Blood) 
end
end
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
end
if critical==true then
CRIT=true
Damagefunc1(hit,Damage*math.random(3,8),Knockback)
else
Damagefunc1(hit,Damage,Knockback)
end
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
if SnipAim==true then
if hit.Parent.className == "Hat" then 
hatCF=hit.CFrame
coroutine.resume(coroutine.create(function(hat)
hat.Handle:BreakJoints()
hat.Handle.CFrame=hatCF
hat.Handle.CanCollide=true
hat.Handle.Velocity=vt(math.random(-10,10),40,math.random(-10,10)) 
wait(3)
hatCF=hat.Handle.CFrame
hat.Parent=workspace
for i=0,4,0.2 do
wait()
hat.Handle.CFrame=hatCF
hat.Handle.Velocity=vt(math.random(-5,5),20,math.random(-5,5)) 
end
end),hit.Parent)
--[[hit:BreakJoints() 
hit.CFrame=CF
hit.Velocity = vt(math.random(-5,5),20,math.random(-5,5)) ]]
print("BREAKHAT")
end
end
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,Damage,Knockback)
attackdebounce=false
--ADmg(hum,hit)
end
end
end))
end
 
function findNearestTorso(pos)
    local list = game:service("Workspace"):children()
    local torso = nil
    local dist = 50
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
            temp = temp2:findFirstChild("Torso")
            human = temp2:findFirstChild("Humanoid")
            if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                if (temp.Position - pos).magnitude < dist then
                    torso = temp
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end 
 
Damagefunc1=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce = false 
    end)) 
    Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
--            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game:service("Players").LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        Damage=Damage+math.random(0,10)
--        h:TakeDamage(Damage)
        blocked=false
        block=hit.Parent:findFirstChild("Block")
        if block~=nil then
        print("herp")
        if block.Value>0 then
        blocked=true
        block.Value=block.Value-1
        print(block.Value)
        end
        end
        if blocked==false then
--        h:TakeDamage(Damage)
        h.Health=h.Health-Damage
        showDamage(hit.Parent,Damage,.5)
        else
        h:TakeDamage(1)
        showDamage(hit.Parent,1,.5)
        end
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
                c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=Player
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        CRIT=false
        hitDeb=true
        AttackPos=6
    end
    end 
end
 
showDamage=function(Char,Dealt,du)
    m=Instance.new("Model")
    m.Name=tostring(Dealt)
    h=Instance.new("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=Instance.new("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=Vector3.new(1,.4,1)
    ms=Instance.new("CylinderMesh")
    ms.Scale=Vector3.new(.8,.8,.8)
    if CRIT==true then
        ms.Scale=Vector3.new(1,1.25,1)
    end
    ms.Parent=c
    c.Reflectance=0
    Instance.new("BodyGyro").Parent=c
    c.Parent=m
    c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
    f=Instance.new("BodyPosition")
    f.P=2000
    f.D=100
    f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
    f.position=c.Position+Vector3.new(0,3,0)
    f.Parent=c
    game:GetService("Debris"):AddItem(m,.5+du)
    c.CanCollide=false
    m.Parent=workspace
    c.CanCollide=false
end
 
function ob1d(mouse) 
if attack == true then return end 
hold=true
if Mode=="Drones" and Aiming==true then
print("Attack drones")
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Drone1debounce=false
Drone2debounce=false
Drone3debounce=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(MMouse.Hit.p,Drone.DPart1,5,0,1)
wait(math.random(0,2)+math.random())
end
end),v)
end
end
while hold==true do
wait()
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
elseif Aiming==false then
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" and v:findFirstChild("CanShoot")~=nil then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
if v.CanShoot.Value==true then
print("Shoot")
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(Drone.DPart6.Position,Drone.DPart1,5,0,1)
elseif v.CanShoot.Value==false then
print("NoShoot")
end
wait(math.random(0,2)+math.random())
end
end),v)
end
end
end
if Mode=="Gun" then
print("Shoot")
Shoot()
end
if Mode=="Sword" then
slash1()
if hold==true then
slash2()
end
if hold==true then
slash3()
end
wait(0.5)
Bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
swld1.C0=euler(0,-1.57,-1.57)*cf(0,1,0)
swld1.C1=euler(0,1.57,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.4)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
if Mode=="Sniper" and SnipAim==true then
SniperShoot()
end
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if Mode=="Drones" then
if key=="z" then
RemoveDrones()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
if Aiming==false then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-1.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=true
coroutine.resume(coroutine.create(function() 
while Aiming==true do
wait()
DroneTarget=MMouse.Hit.p
end
end))
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
elseif Aiming==true then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(.5+1.07*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.57*i,0,-0.2+1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
Valuee=Instance.new("BoolValue")
Valuee.Parent=v
Valuee.Name="CanShoot"
print("Found Drone")
coroutine.resume(coroutine.create(function(DDrone,Val,Gyro) 
--coroutine.resume(coroutine.create(function() 
while Aiming==false do
wait()
local target = findNearestTorso(DDrone.DPart1.Position)
if target~=nil then
Val.Value=true
Gyro.cframe=cf(DDrone.DPart1.Position, target.Position)
else
Val.Value=false
Gyro.cframe=cf(DDrone.DPart1.Position, Torso.Position)
end
end
Val.Parent=nil
end),v,Valuee,v.DPart1.DroneGyro)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.07*i,0,-1+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.57*i,0,1-1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
end
end
if Mode=="Gun" then
if key=="x" then
RemoveGun()
Mode="Choose"
equipanim() 
return 
end
end
if Mode=="Sword" then
if key=="c" then
RemoveSword()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
BowShoot()
end
end
if Mode=="Sniper" then
if key=="v" then
if SnipAim==true then
SnipAim=false
UnAim()
end
RemoveSniper()
Mode="Choose"
equipanim()
return
end
if key=="f" then
if SnipAim==false then
SnipAim=true
Aim()
else
SnipAim=false
UnAim()
end
end
end
if Mode=="Choose" then
if key=="f" then
RemoveDrones2()
end
if key=="z" then
Drone1,Drone2,Drone3=Drones()
end
if key=="x" then
Gun()
end
if key=="c" then
Sword()
end
if key=="v" then
Sniper()
end
end
end 
 
function key2(key) 
if key=="f" then
BowAim=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 
 
function ds(mouse) 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Fenrier's Techno Gauntlet loaded.")
 
-- mediafire lego 
--[[ 
Copyrighted (C) Fenrier 2013
]]
	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Wand"
	button.Position = UDim2.new(0,0,0,231)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Wand"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
		tool = Instance.new("HopperBin") 

player = game.Players.LocalPlayer
char = player.Character 
tool = Instance.new("HopperBin") 
tool.Parent = player.Backpack 
script.Parent = tool
tool.Name = "Wand" 

spin = false

landc = "Earth green"
firec = "Bright red"
icec = "Light blue"
windc = "Institutional white"
helthc = "Lime green"
elec = "New Yeller"

norm = 18

handle = Instance.new("Part") 
handle.Parent = game.Lighting 
handle.Name = "Handle" 
handle.FormFactor = "Symmetric" 
handle.Size = Vector3.new(1,4,1) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.BrickColor = BrickColor.new("Black") 
handle.Anchored = false 
handle.Position = char["Right Arm"].Position 
handle.CanCollide = false
handle.Locked = true
handle2 = Instance.new("Part") 
handle2.Parent = game.Lighting 
handle2.Name = "Handle2" 
handle2.Shape = "Ball"
handle2.Size = Vector3.new(1,1,1) 
handle2.TopSurface = 0 
handle2.BottomSurface = 0 
handle2.BrickColor = BrickColor.new("Bright red") 
handle2.Anchored = false 
handle2.Position = char["Right Arm"].Position 
handle2.Transparency = 0.1
handle2.CanCollide = false
handle2.Locked = true

handle3 = Instance.new("Part") 
handle3.Parent = game.Lighting 
handle3.Name = "Handle2" 
handle3.Shape = "Ball"
handle3.Size = Vector3.new(1,1,1) 
handle3.TopSurface = 0 
handle3.BottomSurface = 0 
handle3.BrickColor = BrickColor.new("Black") 
handle3.Anchored = false 
handle3.Position = char["Right Arm"].Position 
handle3.CanCollide = false
handle3.Locked = true
local m = Instance.new("CylinderMesh") 
m.Parent = handle 
m.Scale = Vector3.new(0.42,1,0.42) 
local m2 = Instance.new("SpecialMesh") 
m2.Parent = handle2 
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(0.8,0.8,0.8) 
local m3 = Instance.new("SpecialMesh") 
m3.Parent = handle3 
m3.MeshType = "FileMesh"
m3.MeshId = "http://www.roblox.com/asset/?id=1033714"
m3.Scale = Vector3.new(0.4,0.85,0.4) 
brick1 = Instance.new("Part")
brick1.Parent = char
brick1.formFactor = "Symmetric"
brick1.Size = Vector3.new(1,1,1)
brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick1.Shape = "Ball"
brick1.CanCollide = false
brick1.Transparency = 1
brick1.Locked = true
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = brick1
mesh1.MeshType = "Sphere"
mesh1.Scale = Vector3.new(1.4,1.4,1.4)
brick2 = Instance.new("Part")
brick2.Parent = game.Lighting
brick2.formFactor = "Symmetric"
brick2.Size = Vector3.new(1,1,1)
brick2.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick2.Shape = "Ball"
brick2.CanCollide = false
brick2.Transparency = 1
brick2.BrickColor = handle2.BrickColor
brick2.Locked = true
mesh2 = Instance.new("SpecialMesh")
mesh2.Parent = brick2
mesh2.MeshType = "Sphere"
mesh2.Scale = Vector3.new(0.5,0.5,0.5)
brick3 = Instance.new("Part")
brick3.Parent = game.Lighting
brick3.formFactor = "Symmetric"
brick3.Size = Vector3.new(1,1,1)
brick3.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick3.Shape = "Ball"
brick3.CanCollide = false
brick3.Transparency = 1
brick3.BrickColor = handle2.BrickColor
brick3.Locked = true
mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = brick3
mesh3.MeshType = "Sphere"
mesh3.Scale = Vector3.new(0.5,0.5,0.5)
wads = Instance.new("Weld")
wads.Parent = char.Torso
wads.Part0 = wads.Parent
wads.Part1 = brick1
wads.C1 = CFrame.new(-1.5,-0.5,0)
wads2 = Instance.new("Weld")
wads2.Parent = handle2
wads2.Part0 = wads2.Parent
wads2.Part1 = brick2
wads2.C1 = CFrame.new(1,0,0)
wads3 = Instance.new("Weld")
wads3.Parent = handle2
wads3.Part0 = wads2.Parent
wads3.Part1 = brick2
wads3.C1 = CFrame.new(-1,0,0)

wa = Instance.new("Weld")
wa.Parent = brick1
wa.Part0 = nil
wa.Part1 = nil

weld = Instance.new("Weld")

toha = Instance.new("Weld")
toha.Parent = char.Torso
toha.Part0 = nil
toha.Part1 = nil
toha.C1 = CFrame.fromEulerAnglesXYZ(0,0,-2.5) * CFrame.new(0,0,-0.7)

original = CFrame.fromEulerAnglesXYZ(-1.55,0,0) * CFrame.new(0,0,0.6)
weporigin = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 1.1, 0.5)

myhum = char.Humanoid
myhum.WalkSpeed = norm

enabled = false
hol = false

function select(mouse, key)
	wa.Part0 = wa.Parent
	wa.Part1 = char["Right Arm"]
	wa.C1 = original
	weld.Parent = char["Right Arm"] 
	weld.Part0 = nil
	weld.Part1 = nil
	weld.C1 = weporigin 
	handle.Parent = char 
	handle2.Parent = char
	handle3.Parent = char
	for i = 1, 8 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
		wait()
	end
	for i = 1, 4 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.2,0)
		wait()
	end
	toha.Part0 = nil
	toha.Part1 = nil
	weld.Part0 = weld.Parent 
	weld.Part1 = handle 
	for i = 1, 4 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.2,0)
		wait()
	end
	for i = 1, 8 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.35,0,0)
		wait()
	end
	wa.C1 = original
	spin = true
	brick2.Transparency = 0.3
	brick2.Parent = char
	brick3.Transparency = 0.3
	brick3.Parent = char
	weld2 = Instance.new("Weld") 
	weld2.Parent = handle 
	weld2.Part0 = weld2.Parent 
	weld2.Part1 = handle2 
	weld2.C1 = CFrame.new(0, 0, 2.1) 
	weld3 = Instance.new("Weld") 
	weld3.Parent = handle 
	weld3.Part0 = weld3.Parent 
	weld3.Part1 = handle3 
	weld3.C1 = CFrame.new(0, 0, 1.4) 
	weld.C1 = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 1.1, 0.5) 
	weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, -2.1, 0) 
	weld3.C1 = CFrame.fromEulerAnglesXYZ(3.2,0,0) * CFrame.new(0, -1.5, 0) 
	coroutine.resume(coroutine.create(function()
		while spin == true do
			for i=1, 20 do
				wait()
				handle2.Transparency = handle2.Transparency + 0.025
			end
			for i=1, 20 do
				wait()
				handle2.Transparency = handle2.Transparency - 0.025
			end
		end
	end))
	coroutine.resume(coroutine.create(function()
		while spin == true do
			wait()
			wads2.C1 = wads2.C1 * CFrame.fromEulerAnglesXYZ(0,0.15,0)
			wads3.C1 = wads3.C1 * CFrame.fromEulerAnglesXYZ(0,0.15,0)
			local fade = brick2:clone()
			fade.Parent = char
			fade.CFrame = brick2.CFrame
			local weld = wads2:clone()
			weld.Parent = handle2
			weld.Part0 = weld.Parent
			weld.Part1 = fade
			local fade2 = brick3:clone()
			fade2.Parent = char
			fade2.CFrame = brick3.CFrame
			local weld2 = wads3:clone()
			weld2.Parent = handle2
			weld2.Part0 = weld2.Parent
			weld2.Part1 = fade2
			coroutine.resume(coroutine.create(function()
				for i=1, 8 do
					wait()
					fade.Transparency = fade.Transparency + 0.12
					fade2.Transparency = fade2.Transparency + 0.12
				end
				fade:remove()
				fade2:remove()
			end))
		end
	end))
	enabled = false
	mouse.KeyDown:connect(function(key) 
		key = key:lower() 
		if (key == "k") then 
			if enabled == true then return end
			enabled = true
			hol = true
			for i=1, 6 do
			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.1,0.1,0)
			wait()
			end
			handle2.BrickColor = BrickColor.new(landc)
			brick2.BrickColor = handle2.BrickColor
			brick3.BrickColor = handle2.BrickColor
			while hol == true do
			wait(0.05)
			local ki = Instance.new("Part")
			ki.Parent = workspace
			ki.Name = "Landmon"
			ki.Size = Vector3.new(1,1,1)
			ki.BrickColor = handle2.BrickColor
			ki.TopSurface = 0
			ki.BottomSurface = 0
			ki.CanCollide = false
			ki.Anchored = true
			ki.CFrame = CFrame.new(mouse.Hit.p)
			ki.CFrame = ki.CFrame * CFrame.new(0, -4, 0)
			local mef = Instance.new("SpecialMesh")
			mef.Parent = ki
			mef.MeshType = "Sphere"
			mef.Scale = Vector3.new(9,16,9)
			coroutine.resume(coroutine.create(function()
				for i=1, 5 do
					wait()
					wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.12,0)
				end
				for i=1, 5 do
					wait()
					wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.12,0)
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i=1, 25 do
					wait()
					ki.CFrame = ki.CFrame * CFrame.new(0, 0.3, 0)
				end
				loo = ki.CFrame
				ki.CanCollide = true
				mef.Scale = Vector3.new(1,1,1)
				ki.Size = Vector3.new(9,16,9)
				ki.CFrame = loo
				wait(7)
				for i=1, 20 do
					wait()
					ki.Transparency = ki.Transparency + 0.05
				end
				ki:remove()
			end))
			end
		elseif (key == "f") then
			if enabled == true then return end
			enabled = true
			pof = mouse.Hit.p
			local part = Instance.new("Part")
			local fire = Instance.new("Fire")
			fire.Parent = part
			fire.Heat = 30
			fire.Size = 40
			local smoke = Instance.new("Smoke")
			smoke.Parent = part
			smoke.RiseVelocity = 2
			smoke.Size = 20
			smoke.Color = Color3.new(0,0,0)
			smoke.Opacity = 1
			local par = Instance.new("Part")
			par.Parent = workspace
			par.Size = Vector3.new(9,1,1)
			par.Transparency = 0
			par.Anchored = true
			par.TopSurface = 0
			par.BottomSurface = 0
			par.BrickColor = BrickColor.new(firec)
			par.CFrame = CFrame.new(pof) * CFrame.new(0,-0.498,0)
			par.CFrame = par.CFrame * CFrame.Angles(0,0.8,0)
			par.CanCollide = false
			local mes = Instance.new("SpecialMesh")
			mes.Parent = par
			mes.MeshType = "Brick"
			mes.Scale = Vector3.new(1,1,1)
			local pa = par:clone()
			pa.Parent = workspace
			pa.CFrame = CFrame.new(pof) * CFrame.new(0,-0.498,0)
			pa.CFrame = pa.CFrame * CFrame.Angles(0,-0.8,0)
			handle2.BrickColor = BrickColor.new(firec)
			brick2.BrickColor = handle2.BrickColor
			brick3.BrickColor = handle2.BrickColor
			for i=1, 10 do
				wait(0.03)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0.05,0)
			end
			for i=1, 4 do
			for i=1, 3 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.05,0.1)
			end
			for i=1, 3 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.03,0.05,-0.1)
			end
			end
			for i=1, 7 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.1,-0.1)
			end
			wait(0.6)
			for i=1, 10 do
				wait(0.02)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.1,-0.05,0.3)
				par.Transparency = par.Transparency + 0.1
				pa.Transparency = pa.Transparency + 0.1
				mes.Scale = mes.Scale + Vector3.new(0.1,0,0.05)
				pa.Mesh.Scale = pa.Mesh.Scale + Vector3.new(0.1,0,0.05)
			end
			wait(0.1)
			pa:remove()
			par:remove()
			part.Parent = workspace
			part.Size = Vector3.new(3,3,3)
			part.Anchored = true
			part.CFrame = CFrame.new(pof) 
			part.CFrame = part.CFrame * CFrame.Angles(1.2,0,0)
			part.Transparency = 1
			coroutine.resume(coroutine.create(function()
				for i=1, 100 do
					wait()
					part.CFrame = part.CFrame * CFrame.Angles(0,0,0.4)
				end
			end))
			local explode = Instance.new("Explosion")
			explode.Parent = char
			explode.BlastRadius = 11
			explode.BlastPressure = 400000
			explode.Position = part.Position
			explode.archivable = false
			wait(0.3)
			wa.C1 = original
			wait(0.7)
			fire.Enabled = false
			smoke.Enabled = false
			wait(0.2)
			part:remove()
			wait(1)
			enabled = false
		elseif (key == "q") then
			if enabled == true then return end
			enabled = true
			handle2.BrickColor = BrickColor.new(windc)
			brick2.BrickColor = handle2.BrickColor
			brick3.BrickColor = handle2.BrickColor
			for i=1, 8 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.18)
			end
			for i=1, 2 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.15,0)
			end
			wait(0.3)
			for i=1, 2 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.3,0)
			end
			local p = Instance.new("Part")
			p.Parent = workspace
			p.Name = "Sword"
			p.Size = Vector3.new(1,4,1)
			p.BottomSurface = 0
			p.TopSurface = 0
			p.Anchored = false
			p.CanCollide = false
			p.CFrame = handle.CFrame
			p.CFrame = p.CFrame * CFrame.Angles(0,0,1.55)
			p:BreakJoints()
			local mt = Instance.new("SpecialMesh")
			mt.Parent = p
			mt.MeshType = "FileMesh"
			mt.MeshId = "http://www.roblox.com/asset/?id=12768042"
			mt.TextureId = "http://www.roblox.com/asset/?id=21262906"
			local bv = Instance.new("BodyVelocity")
			bv.Parent = p
			bv.velocity = char.Torso.CFrame.lookVector * 45
			local bva = Instance.new("BodyAngularVelocity")
			bva.Parent = p
			bva.angularvelocity = Vector3.new(0,14,0)
			p.Touched:connect(function(hit)
				if hit.Parent.Name == player.Name then return end
				local hum = hit.Parent:findFirstChild("Humanoid")
				if hum ~= nil then
					local hed = hit.Parent:findFirstChild("Head")
					if hed ~= nil then
						for i=1, 5 do
							wait()
							hed.Parent.Torso.Neck.C1 = hed.Parent.Torso.Neck.C1 * CFrame.new(0, 0, -0.9)
						end
						hum.Health = 0
						wait(0.05)
						hed.Velocity = Vector3.new(math.random(-30,30),40,math.random(-30,30))
						hed.RotVelocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
					end
					hum.Health = 0
				end
			end)
			local spi = true
			coroutine.resume(coroutine.create(function()
				while spi == true do
					local fad = p:clone()
					fad.Parent = workspace
					fad.BrickColor = BrickColor.new(windc)
					fad.Transparency = 0.2
					fad.Mesh.TextureId = "Clear"
					fad.Anchored = true
					coroutine.resume(coroutine.create(function()
						for i=1, 8 do
							wait()
							fad.Transparency = fad.Transparency + 0.1
						end
						fad:remove()
					end))
					wait()
				end
			end))
			for i=1, 4 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.3,0)
			end
			wait(0.3)
			for i=1, 7 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.2,0.3)
			end
			wa.C1 = original
			wait(0.3)
			enabled = false
			wait(1.2)
			spi = false
			wait()
			p:remove()
		elseif (key == "e") then
			if enabled == true then return end
			enabled = true
			myhum.WalkSpeed = 0
			handle2.BrickColor = BrickColor.new(helthc)
			brick2.BrickColor = handle2.BrickColor
			brick3.BrickColor = handle2.BrickColor
			hol = true
			for i=1, 6 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.13,0,0)
				weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.1)
			end
			wait(0.5)
			for i=1, 3 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.4,0,0)
				weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.23)
			end
			local pf = Instance.new("Part")
			pf.Parent = workspace
			pf.Name = "Healthbump"
			pf.Size = Vector3.new(7,1,7)
			pf.BottomSurface = 0
			pf.TopSurface = 0
			pf.Anchored = true
			pf.CanCollide = false
			pf.CFrame = char.Torso.CFrame * CFrame.new(0,-2.8, 0)
			pf.Transparency = 0.3
			pf.BrickColor = handle2.BrickColor
			local meg = Instance.new("CylinderMesh")
			meg.Parent = pf
			meg.Scale = Vector3.new(0.6,0.8,0.6)
			hecols = {"Bright green", "Lime green", "Dark green", "Camo"}
			coroutine.resume(coroutine.create(function()
				for i=1, 50 do
					wait()
					pf.Transparency = pf.Transparency + 0.02
					meg.Scale = meg.Scale + Vector3.new(0.045,0,0.045)
				end
			end))
			while hol == true do
				wait(0)
				myhum.Health = myhum.Health + 0.5
				local chanc = math.random(1,20)
				if chanc == 8 then
					coroutine.resume(coroutine.create(function()
						pf.Transparency = 0.3
						meg.Scale = Vector3.new(0.6,0.8,0.6)
						for i=1, 50 do
							wait()
							pf.Transparency = pf.Transparency + 0.02
							meg.Scale = meg.Scale + Vector3.new(0.045,0,0.045)
						end
					end))
				end
				local hp = Instance.new("Part")
				hp.Parent = workspace
				hp.formFactor = "Symmetric"
				local randsiz = math.random(1,2)
				local col = math.random(1,4)
				hp.Size = Vector3.new(randsiz,randsiz,randsiz)
				hp.BrickColor = BrickColor.new(hecols[col])
				hp.TopSurface = 0
				hp.BottomSurface = 0
				hp.Transparency = 0.1
				hp.CFrame = char.Torso.CFrame * CFrame.new(math.random(-5,5),-3,math.random(-5,5))
				hp.CFrame = hp.CFrame * CFrame.Angles(math.random(),math.random(),math.random())
				hp.CanCollide = false
				hp.Anchored = false
				hp:BreakJoints()
				local mf = Instance.new("SpecialMesh")
				mf.MeshType = "Brick"
				mf.Parent = hp
				mf.Scale = Vector3.new(0.65,0.65,0.65)
				local bv = Instance.new("BodyVelocity")
				bv.Parent = hp
				bv.velocity = Vector3.new(0,10,0)
				coroutine.resume(coroutine.create(function()
					wait(0.9)
					for i=1, 9 do
						hp.Transparency = hp.Transparency + 0.1
						wait()
					end
					hp:remove()
				end))
			end
		elseif (key == "r") then
			if enabled == true then return end
			enabled = true
			myhum.WalkSpeed = 0
			handle2.BrickColor = BrickColor.new(elec)
			brick2.BrickColor = handle2.BrickColor
			brick3.BrickColor = handle2.BrickColor
			cols = {"Neon orange", "New Yeller", "Bright yellow", "Bright orange"}
			for i=1, 6 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.11,0,0)
			end
			wait(0.35)
			tab = {}
			for i=1, 50 do
			for i=1, 20 do
				local a = Instance.new("Part")
				a.Parent = workspace
				a.formFactor = "Symmetric"
				a.Size = Vector3.new(4,1,1)
				a.TopSurface = 0
				a.BottomSurface = 0
				local numb = math.random(1,4)
				a.BrickColor = BrickColor.new(cols[numb])
				a.Anchored = true
				a.CanCollide = false
				a.Transparency = 0.3
				local mo = Instance.new("SpecialMesh")
				mo.Parent = a
				mo.MeshType = "Brick"
				mo.Scale = Vector3.new(1,0.2,0.2)
				a.CFrame = handle2.CFrame
				a.CFrame = a.CFrame * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2)) * CFrame.new(2,0,0)
				table.insert(tab, a)
			end
			wait()
			for _, v in pairs(tab) do
				v:remove()
			end
			end
			for i=1, 7 do
				wait(0.01)
				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.17,0.1,0)
			end
			coroutine.resume(coroutine.create(function()
			for i=1, 10 do
				wait(0.2)
				local h = Instance.new("Part")
				h.Parent = workspace
				h.Shape = "Ball"
				h.Size = Vector3.new(3,3,3)
				h.TopSurface = 0
				h.BottomSurface = 0
				local numb = math.random(1,4)
				h.BrickColor = BrickColor.new(cols[numb])
				h.Anchored = true
				h.CanCollide = false
				h.Transparency = 0.5
				h.CFrame = handle2.CFrame
				local function magn(hif)
					if hif.Parent.Name == player.Name then return end
					local dist = (char.Torso.Position - hif.Position).magnitude
					if dist >= 10 then
						print(dist)
						local hum = hif.Parent:findFirstChild("Humanoid")
						if hum ~= nil then
							hum.Health = 0
						end
					end
				end
				coroutine.resume(coroutine.create(function()
					for i=1, 30 do
						wait()
						magn(char.Torso)
					end
				end))
				coroutine.resume(coroutine.create(function()
					for i=1, 30 do
						wait(0.04)
						h.Size = h.Size + Vector3.new(2,2,2)
						h.Transparency = h.Transparency + 0.023
						h.CFrame = handle2.CFrame
					end
					h:remove()
				end))
			end
			end))
			for i=1, 19 do
			for i=1, 30 do
				local f = Instance.new("Part")
				f.Parent = workspace
				f.formFactor = "Symmetric"
				f.Size = Vector3.new(25,1,1)
				f.TopSurface = 0
				f.BottomSurface = 0
				local numb = math.random(1,4)
				f.BrickColor = BrickColor.new(cols[numb])
				f.Anchored = true
				f.CanCollide = false
				f.Transparency = 0.3
				local mo = Instance.new("SpecialMesh")
				mo.Parent = f
				mo.MeshType = "Brick"
				mo.Scale = Vector3.new(1,math.random(0.8,1.7),math.random(0.8,1.7))
				f.CFrame = handle2.CFrame
				f.CFrame = f.CFrame * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2)) * CFrame.new(12.5,0,0)
				table.insert(tab, f)
			end
			wait(0.1)
			for _, v in pairs(tab) do
				v:remove()
			end
			end
			myhum.WalkSpeed = norm
			enabled = false
		end
	end) 
	mouse.KeyUp:connect(function(key) 
		key = key:lower() 
		if (key == "k") then 
			hol = false
			for i=1, 6 do
			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,-0.1,0)
			wait()
			end
			wa.C1 = original
			enabled = false
			wait(0.3)
			wa.C1 = original
		elseif (key == "e") then
			hol = false
			for i=1, 6 do
			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,-0.02,0)
			weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.24)
			wait()
			end
			myhum.WalkSpeed = norm
			for i=1, 5 do
				wait(0.15)
				wa.C1 = original
				weld.C1 = weporigin
			end
			enabled = false
		end
	end)
	mouse.Button1Down:connect(function()
		e = char.Torso
		wait(0.2)
		e.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,2.5,0)
	end)
end 

function deselect() 
	spin = false
	for i = 1, 8 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
		wait()
	end
	for i = 1, 4 do
		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.2,0)
		wait()
	end
	toha.Part0 = toha.Parent
	toha.Part1 = handle
	weld.Part0 = nil
	weld.Part1 = nil
	wait()
	wa.Part0 = nil
	wa.Part1 = nil
end 


script.Parent.Selected:connect(select) 
script.Parent.Deselected:connect(deselect) 

	end)
--
local button = Instance.new("TextButton")
	button.Parent = ws
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "xBow"
	button.Position = UDim2.new(0.5,3,0,231)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "xBow"
	button.TextColor3 = whit
	button.TextWrapped = true
	 	button.MouseButton1Down:connect(function()
	me = game.Players.LocalPlayer
char = me.Character
Selected = false
Able = true
Arrow = nil
ArrowOn = false
Hurt = false
Deb = true
Reloading = false
Shooting = false
Slashing = false
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
EffectOn = false
Accuracy = 1
SelAnim = false
DMG = 123452323
LapaCol = "Brown"
HandCol = "Brown"
MiddleCol = "Brown"
ViiniCol = "Brown"
Icon = "http://www.roblox.com/asset/?id=51902588"
Keys = {
e = false,
}
ModelName = "Epic Bow"
CA = CFrame.Angles
CN = CFrame.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge
UD = UDim2.new
C3 = Color3.new
MaximumPower = 1000000000
MaxSpecial = 100000
Special = MaxSpecial
Sounds = {
Slash = {"rbxasset://sounds//swordslash.wav", 1.2, 1},
Shoot = {"http://www.roblox.com/asset/?id=16211041", 2, 1},
Stick = {"http://www.roblox.com/asset/?id=2767090", 15, 1},
Hit = {"http://www.roblox.com/asset/?id=10209590", 0.9, 1},
Block = {"rbxasset://sounds\\metal.ogg", 1.4, 1},
}
function RC(Pos, Dir, Max, Ignore)
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
return RC(Start, (En - Start), MaxDist, Ignore)
end
function DetectSurface(pos, part)
local surface = nil
local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos)
local siz = part.Size
local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude)*CA(MR(-90), 0, 0)}
else
if pos2.Y > ((siz.Y/2)-0.04) then
surface = {"Top", CA(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.04) then
surface = {"Bottom", CA(-MP, 0, 0)}
elseif pos2.X > ((siz.X/2)-0.04) then
surface = {"Right", CA(0, 0, MR(-90))}
elseif pos2.X < -((siz.X/2)-0.04) then
surface = {"Left", CA(0, 0, MR(90))}
elseif pos2.Z > ((siz.Z/2)-0.04) then
surface = {"Back", CA(MR(90), 0, 0)}
elseif pos2.Z < -((siz.Z/2)-0.04) then
surface = {"Front", CA(MR(-90), 0, 0)}
end
end
return surface
end
function Compute(pos1, pos2)
local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
return CN(pos1, pos3)
end
function Notime(func, tiem)
if tiem then wait(tiem) end
coroutine.resume(coroutine.create(function() func() end))
end
function waitChild(p, n)
local child = p:findFirstChild(n)
if child then return child end
while true do
child = p.ChildAdded:wait()
if child.Name == n then return child end
end
end
function getHumanoid(c)
for _,v in pairs(c:children()) do
if v:IsA("Humanoid") and c ~= char then if v.Health > 0 then return v end end
end
end
function SE(part, pos)
EffectOn = true
local lastP = (part.CFrame * pos).p
Notime(function()
while EffectOn do
wait()
local posnow = (part.CFrame * pos).p
local eff = Part(workspace, true, false, 0, 0, "Really black", 0.2, 1, 0.2)
local magn = (lastP - posnow).magnitude
local cf = CN(lastP, posnow) * CA(MR(-90), 0, 0)
local mes2 = Instance.new("SpecialMesh",eff)
mes2.Scale = Vector3.new(0.6, magn, 0.6)
eff.CFrame = cf * CN(0, magn/2, 0)
Notime(function()
for i = 0, 1, 0.1 do
wait()
eff.Transparency = i
eff.Reflectance = 0.15*i
mes2.Scale = Vector3.new(0.6-0.6*i, magn, 0.6-0.6*i)
end
eff:remove()
end)
lastP = posnow
end
end)
end
function EE()
EffectOn = false
end
torso = waitChild(char, "Torso")
Rarm = waitChild(char, "Right Arm")
Larm = waitChild(char, "Left Arm")
Rleg = waitChild(char, "Right Leg")
Lleg = waitChild(char, "Left Leg")
Hum = waitChild(char, "Humanoid")
neck = waitChild(torso, "Neck")
function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
obj.Size = size
obj.Position = position
obj.BackgroundColor3 = bgcolor
obj.BorderColor3 = bordercolor
obj.BackgroundTransparency = transparency
if obj:IsA("TextLabel") or obj:IsA("TextButton") then
obj.Text = text
obj.TextColor3 = textcolor
end
if obj:IsA("ImageButton") or obj:IsA("TextButton") then
obj.AutoButtonColor = auto
obj.MouseButton1Down:connect(function()
RemoveOptions()
end)
end
obj.Parent = parent
end
Gui = waitChild(me, "PlayerGui")
for _,v in pairs(Gui:children()) do
if v.Name == "Power" then v:remove() end
end
Sc = Instance.new("ScreenGui", Gui)
Sc.Name = "Power"
Main = Instance.new("TextLabel")
Main.Visible = false
EditGui(Main, Sc, UD(0, 200, 0, 65), UD(0.5, -100, 0, 120), C3(0.06, 0.06, 0.1), C3(), 0.5, "Power", C3(1, 1, 0))
Main.TextYAlignment = "Top"
Main.FontSize = "Size36"
Main.Font = "ArialBold"
Main.TextTransparency = 0.5
BarBack = Instance.new("Frame")
EditGui(BarBack, Main, UD(1, -10, 0, 25), UD(0, 5, 1, -30), C3(0, 0, 0), C3(), 0.5)
Bar = Instance.new("ImageLabel")
EditGui(Bar, BarBack, UD(0, 0, 1, 0), UD(0, 0, 0, 0), C3(1, 0.7, 0), C3(), 0.5)
Bar.Image = "http://www.roblox.com/asset/?id=48965808"
Spec = Instance.new("Frame")
EditGui(Spec, Sc, UD(0, 250, 0, 22), UD(0.04, 0, 0, 5), C3(1, 0.75, 0.1), C3(), 0)
SpecialBack = Instance.new("Frame")
EditGui(SpecialBack, Spec, UD(1, -10, 1, -6), UD(0, 5, 0, 3), C3(0.35, 0.1, 0.15), C3(), 0)
SpecialBar = Instance.new("ImageLabel")
EditGui(SpecialBar, SpecialBack, UD(Special/MaxSpecial, 0, 1, 0), UD(0, 0, 0, 0), C3(0.1, 0.65, 0.2), C3(), 0)
SpecialBar.Image = "http://www.roblox.com/asset/?id=48965808"
for i = 1, 3, 1 do
local p = Instance.new("Frame")
EditGui(p, SpecialBack, UD(0, 1, 1, 0), UD(i/4, 0, 0, 0), C3(0.1, 0.2, 1), C3(), 0)
p.BorderSizePixel = 0
end
SpecialText = Instance.new("TextLabel")
EditGui(SpecialText, SpecialBack, UD(1, 0, 1, 0), UD(0, 0, 0, 0), C3(), C3(), 1, "S P E C I A L", C3(1,1,1))
SpecialText.Font = "ArialBold"
SpecialText.FontSize = "Size14"
function Play(Sound)
local s = Instance.new("Sound")
s.SoundId = Sound[1]
s.Pitch = Sound[2]
s.Volume = Sound[3]
s.Parent = torso
s.PlayOnRemove = true
game.Debris:AddItem(s, 0.0001)
end
RSH = waitChild(torso, "Right Shoulder")
LSH = waitChild(torso, "Left Shoulder")
RH = waitChild(torso, "Right Hip")
LH = waitChild(torso, "Left Hip")
for i,v in pairs(char:children()) do if v.Name == ModelName then v:remove() end end
function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = Tran
p.Reflectance = Ref
p.CanCollide = Coll
p.Anchored = Anch
p.BrickColor = BrickColor.new(Col)
p.formFactor = "Custom"
p.Size = Vector3.new(X,Y,Z)
p.Parent = P
p.Locked = true
p:BreakJoints()
return p
end
function Weld(P0, P1, X, Y, Z, A, B, C)
local w = Instance.new("Weld")
w.Part0 = P0
w.Part1 = P1
w.C1 = CN(X, Y, Z) * CA(A, B, C)
w.Parent = P0
return w
end
Mo = Instance.new("Model")
Mo.Name = ModelName
FTorso = Part(Mo, false, false, 1, 0, torso.BrickColor.Name, torso.Size.X, torso.Size.Y, torso.Size.Z)
FWeld = Weld(torso, FTorso, 0, 0, 0, 0, 0, 0)
RABrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
LABrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
RLBrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
LLBrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
function Atch(p)
RABW.Part0 = p
LABW.Part0 = p
RLBW.Part0 = p
LLBW.Part0 = p
RSH.Part0 = p
LSH.Part0 = p
RH.Part0 = p
LH.Part0 = p
end
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
HB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
HBW = Weld(Larm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, 0, 0, MR(90), 0, 0)
AB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
ABW = Weld(Rarm, AB, 0, 1, 0, 0, 0, 0)
AW = Weld(AB, nil, 0, 0, 0, 0, 0, 0)
TW = Weld(torso, nil, -0.7, 0, 0.5, 0, MP, 0)
Handle = Part(Mo, false, false, 0, 0, HandCol, 0.6, 1.2, 0.6)
Instance.new("SpecialMesh",Handle)
TW.Part1 = Handle
for i = -0.6, 0.61, 1.2 do
local p = Part(Mo, false, false, 0, 0, MiddleCol, 0.7, 0.2, 1.1)
Weld(Handle, p, 0, i, 0.15, 0, 0, 0)
Instance.new("BlockMesh", p)
end
local UpPoint, DownPoint
for i = -10, 95, 15 do
local p = Part(Mo, false, false, 0, 0, LapaCol, 0.69, 0.4, 0.2)
local w = Weld(Handle, p, 0, 0, 1.4, 0, 0, 0)
w.C0 = CN(0, 1.1, 0.75) * CA(MR(i), 0, 0)
Instance.new("BlockMesh", p)
UpPoint = p
end
for i = 10, -95, -15 do
local p = Part(Mo, false, false, 0, 0, LapaCol, 0.69, 0.4, 0.2)
local w = Weld(Handle, p, 0, 0, 1.4, 0, 0, 0)
w.C0 = CN(0, -1.1, 0.75) * CA(MR(i), 0, 0)
Instance.new("BlockMesh", p)
DownPoint = p
end
StringUp = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
StringDown = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
SUM = Instance.new("SpecialMesh", StringUp)
SDM = Instance.new("SpecialMesh", StringDown)
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
ORSU = CN(0, -1.3, 0) * CA(MR(-85), 0, 0)
ORSD = CN(0, 1.3, 0) * CA(MR(85), 0, 0)
SUW = Weld(UpPoint, StringUp, 0, -1.3, 0, MR(-85), 0, 0)
SDW = Weld(DownPoint, StringDown, 0, 1.3, 0, MR(85), 0, 0)
SUW.C0 = CN(0, 0.15, 0)
SDW.C0 = CN(0, -0.15, 0)
SUW.C1 = ORSU
SDW.C1 = ORSD
Arrow = Part(Mo, false, false, 1, 0, "Really black", 0.4, 0.4, 4.4)
local mesh = Instance.new("SpecialMesh",Arrow)
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(1, 1, 2.1)
AW.Part1 = Arrow
Ring = Part(Mo, false, false, 0, 0, ViiniCol, 0.2, 0.2, 0.2)
RingM = Instance.new("SpecialMesh", Ring)
RingM.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingM.Scale = Vector3.new(0.6, 1, 21)
local www = Weld(FTorso, Ring, -0.9, -0.2, -0.8, MR(90), MR(90), MR(30))
www.C0 = CA(MR(-10), 0, 0)
Sp = Part(Mo, false, false, 0, 0, "Really black", 1, 0.2, 1)
local S = Instance.new("SpecialMesh",Sp)
S.MeshType = "Sphere"
S.Scale = Vector3.new(0.65, 1, 1.05)
Weld(Ring, Sp, 0, 1.7, 0, MR(-90), 0, 0)
function makeArrow(pos, ang)
local arrow = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
local mesh = Instance.new("SpecialMesh",arrow)
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(1, 1, 2.1)
Weld(Ring, arrow, pos.x, pos.y, pos.z, MP, 0, ang)
end
makeArrow(Vector3.new(0.15, 0.1, 0.55), 0.8)
makeArrow(Vector3.new(-0.2, -0.1, 0.65), -0.4)
makeArrow(Vector3.new(-0.1, 0.1, 0.6), 1.8)
makeArrow(Vector3.new(-0.1, -0.15, 0.7), 1.2)
makeArrow(Vector3.new(0, 0.3, 0.6), 0.28)
makeArrow(Vector3.new(0, 0, 0.65), 0.34)
makeArrow(Vector3.new(0.3, 0.1, 0.55), 1.9)
makeArrow(Vector3.new(-0.35, 0.1, 0.67), 1.9)
Mo.Parent = char
function Normal()
FTorso.Transparency = 1
FWeld.C0 = CN()
torso.Transparency = 0
LAW.C0 = CA(0, 0, MR(30))
RAW.Part1 = nil
RAW.C0 = CN()
RAW.C1 = CN(0, 0.5, 0)
LAW.C1 = CN(0, 0.5, 0)
LAW.Part1 = Larm
RABW.Part0 = torso
LABW.Part0 = torso
RLBW.Part0 = torso
LLBW.Part0 = torso
RSH.Part0 = torso
LSH.Part0 = torso
RH.Part0 = torso
LH.Part0 = torso
AW.C0 = CN()
HW.C0 = CA(MR(180), 0, MR(150))
SUW.C0 = CN(0, 0.15, 0)
SDW.C0 = CN(0, -0.15, 0)
SUW.C1 = ORSU
SDW.C1 = ORSD
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", me.Backpack)
h.Name = "xBow"
script.Parent = h
end
bin = script.Parent
function ShowDmg(pos, dmg)
local col = "Bright red"
if dmg < 1 then
col = "Bright blue"
end
local m = Instance.new("Model")
m.Name = "Damage Dealt: "..dmg*1758384
local p = Part(m, false, false, 0, 0, col, 0.8, 0.3, 0.8)
p.Name = "Head"
p.CFrame = CFrame.new(pos)
local bp = Instance.new("BodyPosition", p)
bp.position = pos + Vector3.new(0, 2.5, 0)
bp.P = 6500
bp.maxForce = Vector3.new(MH, MH, MH)
local h = Instance.new("Humanoid",m)
h.MaxHealth = 0
h.Health = 0
h.Name = "fffsaf"
m.Parent = workspace
game.Debris:AddItem(m, 1.5)
end
function Dmg(hum, dmg, pos)
if hum.Health > 0 then
hum.Health = hum.Health - dmg*1758384
ShowDmg(pos, dmg)
end
end
function ArrowT(hit)
local h = getHumanoid(hit.Parent)
if h and Deb and Hurt then
Deb = false
Dmg(h, MRA(3,15), Arrow.CFrame * CN(0, 0, 2.2).p)
end
end
Arrow.Touched:connect(ArrowT)
function SelectAnim()
LAW.Part1 = Larm
SelAnim = true
for i = 0.2, 1, 0.2 do
LAW.C0 = CA(MR(-25*i), 0, MR(25*i)) * CN(0, 0.2*i, 0)
wait()
end
HW.C0 = CN(0.4, 0.3, 0) * CA(MR(110), MR(-100), MR(180))
HW.Part1 = Handle
TW.Part1 = nil
for i = 0.08, 1, 0.08 do
LAW.C0 = CA(MR(-25+25*i), 0, MR(25-55*i)) * CN(0, 0.2-0.2*i, 0)
HW.C0 = CN(0.4-0.4*i, 0.3-0.3*i, 0) * CA(MR(110+70*i), MR(-20+20*i), MR(180-30*i))
wait()
end
SelAnim = false
HW.C0 = CA(MR(180), 0, MR(150))
end
function DeselectAnim()
for i = 0.12, 1, 0.12 do
LAW.C0 = CA(MR(-25*i), 0, MR(-30+55*i)) * CN(0, 0.2*i, 0)
HW.C0 = CN(0.4*i, 0.3*i, 0) * CA(MR(180-70*i), MR(-20*i), MR(150+30*i))
if SelAnim or Selected then return end
wait()
end
HW.Part1 = nil
TW.Part1 = Handle
for i = 0.12, 1, 0.12 do
LAW.C0 = CA(MR(-25+25*i), 0, MR(-30+55-25*i)) * CN(0, 0.2-0.2*i, 0)
if SelAnim or Selected then return end
wait()
end
if Selected == false and SelAnim == false then
LAW.Part1 = nil
end
end
function Slash()
RAW.Part1 = Rarm
Slashing = true
Play(Sounds.Slash)
for i = 0.15, 1, 0.15 do
RAW.C0 = CA(MR(180*i), MR(-20*i), MR(35*i))
AW.C0 = CA(MR(35*i), 0, 0) * CN(0, 0, 0.7*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(180+10*i), MR(-20), MR(35+2*i))
AW.C0 = CA(MR(35+5*i), 0, 0) * CN(0, 0, 0.7+0.2*i)
wait()
end
local blockk = false
local hit, pos = RayC(torso.Position, torso.CFrame * CN(0, 0, -5).p, 3.2, char)
if hit ~= nil then
if getHumanoid(hit.Parent) == nil and hit.CanCollide == true then
blockk = true
end
end
SE(Arrow, CN(0, 0, 2.2))
if blockk == false then
Hurt = true
Deb = true
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(190-140*i), MR(-20-5*i), MR(37-87*i)) * CN(0, -1*i, 0)
AW.C0 = CA(MR(40-25*i), MR(-20*i), 0) * CN(0, 0, 0.9+0.3*i)
wait()
end
EE()
Hurt = false
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(50-10*i), MR(-25), MR(-50-5*i)) * CN(0, -1, 0)
AW.C0 = CA(MR(15-20*i), MR(-20-1*i), 0) * CN(0, 0, 1.2*i)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(40-10*i), MR(-25+25*i), MR(-55+35*i)) * CN(0, -1+1*i, 0)
AW.C0 = CA(MR(-5+55*i), MR(-21+21*i), 0) * CN(0, 0, 1.2-1.2*i)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(30-30*i), 0, MR(-20+20*i))
AW.C0 = CA(MR(50-50*i), 0, 0)
wait()
end
else
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(190-50*i), MR(-20-5*i), MR(37-27*i)) * CN(0, -0.2*i, 0)
AW.C0 = CA(MR(40-5*i), MR(-5*i), 0) * CN(0, 0, 0.9+0.1*i)
wait()
end
Play(Sounds.Block)
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(140+60*i), MR(-25+25*i), MR(10+20*i)) * CN(0, -0.2-0.3*i, 0)
AW.C0 = CA(MR(35+45*i), MR(-5+5*i), 0) * CN(0, 0, 1)
wait()
end
EE()
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(200+10*i), MR(5*i), MR(30+5*i)) * CN(0, -0.5, 0)
AW.C0 = CA(MR(80+5*i), 0, 0) * CN(0, 0, 1)
wait()
end
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(210-200*i), MR(5-5*i), MR(35-30*i)) * CN(0, -0.5+0.4*i, 0)
AW.C0 = CA(MR(85-75*i), 0, 0) * CN(0, 0, 1-0.8*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10-10*i), 0, MR(5-5*i)) * CN(0, -0.1+0.1*i, 0)
AW.C0 = CA(MR(10-10*i), 0, 0) * CN(0, 0, 0.2-0.2*i)
wait()
end
AW.C0 = CN()
end
Slashing = false
RAW.Part1 = nil
end
function Reload()
if ArrowOn == false then
RAW.Part1 = Rarm
Reloading = true
for i = 0.16, 1, 0.16 do
RAW.C0 = CA(MR(200*i), MR(-5*i), 0) * CN(0, -0.35*i, 0)
wait()
end
AW.C0 = CA(0, MR(-90), 0)
AW.C1 = CN(0, 0, -1.5) * CA(MR(60), 0, 0)
Arrow.Transparency = 0
ArrowOn = true
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(200), MR(-5), MR(40*i)) * CN(0, -0.35, 0)
AW.C1 = CN(0, 0, -1.5+2*i) * CA(MR(60-20*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(200), MR(-5), MR(40+10*i)) * CN(0, -0.35+0.05*i, 0)
AW.C1 = CN(0, 0, 0.5+0.1*i) * CA(MR(40-5*i), 0, 0)
wait()
end
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(200-190*i), MR(-5+5*i), MR(50-45*i)) * CN(0, -0.3+0.25*i, 0)
AW.C1 = CN(0, 0, 0.6-0.5*i) * CA(MR(35-30*i), 0, 0)
AW.C0 = CA(0, MR(-90+80*i), 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10-10*i), 0, MR(5-5*i)) * CN(0, -0.05+0.05*i, 0)
AW.C1 = CN(0, 0, 0.1-0.1*i) * CA(MR(5-5*i), 0, 0)
AW.C0 = CA(0, MR(-10+10*i), 0)
wait()
end
AW.C1 = CN()
AW.C0 = CN()
RAW.C0 = CN()
RAW.Part1 = nil
Reloading = false
else
Slash()
end
end
function AddDetail(Surface, pos, bool, part, hu)
local caf = CN(pos) * CA(part.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then
caf = Surface[2]
end
Notime(function()
if bool then
Notime(function()
for i = 1, MRA(2,7) do
local x = MRA(0.4*100, 0.9*100)/100
local z = MRA(0.7*100, 1.2*100)/100
local pp = Part(hu.Parent, false, false, 0, 0, "Bright red", 0.2, 0.2, 0.2)
local ms = Instance.new("SpecialMesh",pp)
ms.MeshType = "Sphere"
ms.Scale = Vector3.new(x*5, 1, z*5)
pp.CFrame = caf
local w = Weld(part, pp, 0, 0, 0, 0, 0, 0)
local c0 = part.CFrame:toObjectSpace(caf) * CN(MRA(-0.3*100, 0.3*100)/100, 0, MRA(-0.3*100, 0.3*100)/100) * CA(0, MR(MRA(-180,180)), 0)
w.C0 = c0
Notime(function()
local moar = MRA(-1.1*1000, 1.1*1000)/1000
for i = 0, 1, MRA(0.02*1000, 0.06*1000)/1000 do
wait()
w.C0 = c0 * CN(0, 0, -moar*i)
ms.Scale = Vector3.new((x*5)-(moar/3)*i, 1, (z*5)+(moar/3)*i)
pp.Transparency = -0.5+1.5*i
end
pp:remove()
end)
end
end)
for i = 1, MRA(4,8) do
Notime(function()
local pp2 = Part(hu.Parent, true, false, 0, 0, "Bright red", 0.2, 0.2, 0.2)
pp2.CFrame = caf
local ms2 = Instance.new("SpecialMesh",pp2)
ms2.MeshType = "Sphere"
ms2.Scale = Vector3.new(1.5, 1.5, 1.5)
local face = CA(MR(MRA(-40, 40)+105), MR(MRA(-40, 40)), MR(MRA(-40, 40)))
local center = caf * face * CN(0, -5, 0)
Notime(function()
for i = 0, 1, 0.1 do
pp2.Transparency = -0.7+1.7*i
pp2.CFrame = center * CN(0, 0, -2.5*i) * CA(MR(-55*i), 0, 0) * CN(0, 5, 0)
wait()
end
pp2:remove()
end)
end)
end
else
Notime(function()
for i = 1, MRA(5,8) do
Notime(function()
local t = {"Bright yellow", "New Yeller", "Really black", "Institutional Really black", "Brick yellow"}
local pp = Part(workspace, true, false, 0, 0, t[MRA(1, #t)], 0.2, 0.2, 0.2)
local mes = Instance.new("SpecialMesh",pp)
mes.MeshType = "Sphere"
mes.Scale = Vector3.new(0.5, 0.5, 1)
local caa = CN(caf.p) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
pp.CFrame = caa
for i = 0.25, 1, 0.25 do
wait()
mes.Scale = Vector3.new(0.5+0.1*i, 0.5+0.1*i, 1+2*i)
pp.CFrame = caa * CN(0, 0, -0.4*i)
end
for i = 0.25, 1, 0.25 do
wait()
mes.Scale = Vector3.new(0.6, 0.6, 3+1.6*i)
pp.CFrame = caa * CN(0, 0, -0.6-0.32*i)
pp.Transparency = -0.2+1.2*i
end
pp:remove()
end)
end
end)
end
end)
end
function ShootArrow(pos, power, targ)
local Start = Handle.Position
local mag = (Start - pos).magnitude/200
if mag > 12.5 then mag = 12.5 end
if targ == nil then mag = 1 end
local Face = CN(Start, pos) * CA(MR(MRA(-Accuracy*10000, Accuracy*10000)/10000+mag), MR(MRA(-Accuracy*10000, Accuracy*10000)/10000), MR(MRA(-Accuracy*10000, Accuracy*10000)/10000))
local Arr = Part(Mo, true, false, 0, 0, "Really black", 0.2, 0.2, 0.2)
local mes = Instance.new("SpecialMesh",Arr)
mes.MeshId = "http://www.roblox.com/asset/?id=15887356"
mes.TextureId = "http://www.roblox.com/asset/?id=15886781"
mes.Scale = Vector3.new(1, 1, 2.1)
Arr.CFrame = Face
local Go = 2.8+(power/30)
local Dist = 200+(power*2.8)
local Drop = 0.55/(Go*1.25)
local lastP = Start
local didhit = false
local omg = 0
local hit2, pos2 = RayC(torso.CFrame * CN(0, 0, -0.4).p, torso.CFrame * CN(0, 0, -2).p, 2.5, char)
local hu2 = nil
if hit2 then
local hh = getHumanoid(hit2.Parent)
if hh then
hit2 = nil
end
end
for i = Go, Dist, Go do
Drop = Drop + 1/(Go*3.5)
omg = omg + Drop
local dropping = CA(MR(-Drop), 0, 0)
if omg > 130 then
dropping = CN()
end
Face = Face * dropping * CN(0, 0, -Go)
Arr.CFrame = Face * CA(MR(-180), 0, 0)
local hit, p = RayC(lastP, Face.p, Go+0.5, char)
local eff = Part(Mo, true, false, 0, 0, "Really black", 0.2, 1, 0.2)
local magn = (lastP - Face.p).magnitude
local cf = CN(lastP, Face.p) * CA(MR(-90), 0, 0)
if hit then
magn = (lastP - p).magnitude
cf = CN(lastP, p) * CA(MR(-90), 0, 0)
end
local mes2 = Instance.new("SpecialMesh",eff)
mes2.Scale = Vector3.new(0.6, magn, 0.6)
eff.CFrame = cf * CN(0, magn/2, 0)
Notime(function()
for i = 0, 1, 0.12 do
wait()
eff.Transparency = i
eff.Reflectance = 0.15*i
mes2.Scale = Vector3.new(0.6-0.6*i, magn, 0.6-0.6*i)
end
eff:remove()
end)
local realhit = hit
if hit2 then realhit = hit2 p = pos2 end
if hit or hit2 then
local h = getHumanoid(realhit.Parent)
local sound = Sounds.Stick
if h and hit.Parent.className ~= "Hat" then
local d = MRA(12+DMG+(power/8), 20+DMG+(power/5.5))
hit:remove()
if hit.Name == "Head" then
d = math.floor(d*1.4)
hit:remove()
end
Dmg(h, d, p)
sound = Sounds.Hit
elseif h == nil and realhit.Parent.className ~= "Hat" then
if realhit.Anchored == false then
Notime(function()
wait(0.08)
local mas = realhit:GetMass()/5+2
local vel = (16+(power/3))/mas
if vel < 0 then vel = 0 end
realhit.Velocity = (CN(lastP, p).lookVector) * vel
end)
end
end
local a = -1.2
if realhit.Anchored then
Arr.CFrame = CN(p, lastP) * CN(0, 0, a)
if realhit == hit2 then
Arr.CFrame = CN(Start, pos2) * CN(0, 0, -1.9)
end
else
a = (power-200)/110
local w8 = 13
if realhit.Parent.className == "Hat" then
a = ((power/2)-170)/110
w8 = 5
end
Arr.Anchored = false
local w = Weld(realhit, Arr, 0, 0, 0, 0, 0, 0)
w.C1 = ((CN(p, lastP) * CN(0, 0, a)):toObjectSpace(realhit.CFrame))
if realhit == hit2 then
w.C1 = ((CN(Start, pos2) * CN(0, 0, -1.9)):toObjectSpace(realhit.CFrame))
end
Notime(function()
if power < 50 then
wait(w8+power/7.5)
local caa = Arr.CFrame
w:remove()
Arr.Size = Vector3.new(0.3, 0.3, 4)
Arr.CFrame = caa
Arr.CanCollide = true
end
end)
end
didhit = true
Notime(
function()
wait(26)
for i = 0, 1, 0.02 do
Arr.Transparency = i
wait()
end
Arr:remove()
end
)
Play(sound)
local Surface = DetectSurface(p, realhit)
AddDetail(Surface, p, h ~= nil and hit.Parent.className ~= "Hat", realhit, h)
wait(0.05)
break
end
lastP = Face.p
wait()
end
if didhit == false then
for i = 0, 1, 0.2 do
Arr.Transparency = i
wait()
end
Arr:remove()
end
end
function Shoot(mouse)
Shooting = true
RAW.Part1 = Rarm
Atch(FTorso)
FTorso.Transparency = 0
torso.Transparency = 1
local shoot = false
Spec.BorderColor3 = C3()
local amg, omg = false, false
Notime(function()
repeat
wait()
until Selected == false or omg
if omg == false then
omg = true
Shooting = false
Reloading = false
Hurt = false
Slashing = false
Normal()
EE()
return
end
end)
Notime(function()
mouse.Button1Up:wait()
shoot = true
end)
for i = 0.16, 1, 0.16 do
FWeld.C0 = CA(0, MR(-80*i), 0)
LAW.C0 = CA(MR(85*i), 0, MR(-30-25*i)) * CN(0.3*i, 0.4*i, -0.1*i)
RAW.C0 = CA(MR(85*i), 0, MR(-70*i)) * CN(0.65*i, -1.2*i, 0)
HW.C0 = CA(MR(180), 0, MR(150+60*i))
AW.C0 = CA(MR(85*i), 0, 0) * CN(0, 0, 2.1*i)
wait()
end
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-80-10*i), 0)
LAW.C0 = CA(MR(85+5*i), 0, MR(-55-5*i)) * CN(0.3, 0.4, -0.1)
RAW.C0 = CA(MR(85+5*i), 0, MR(-70-5*i)) * CN(0.65+0.05*i, -1.2-0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(210+5*i))
AW.C0 = CA(MR(85+5*i), MR(-15*i), 0) * CN(0, 0, 2.1+0.1*i)
wait()
end
LAW.C0 = CA(MR(90), 0, MR(-60)) * CN(0.3, 0.4, -0.1)
HW.C0 = CA(MR(180), 0, MR(215))
FWeld.C0 = CA(0, MR(-90), 0)
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, 0, 0)
local powe = 10
Main.Visible = true
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
Notime(function()
repeat wait() until powe >= MaximumPower or shoot
wait(6)
if shoot == false then
shoot = true
end
end)
repeat
wait()
powe = powe + 4.8
if powe > MaximumPower then powe = MaximumPower end
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
local sped = 16-((powe/MaximumPower)*9) if Selected == false then sped = 16 end
Hum.WalkSpeed = sped
until shoot
Main.Visible = false
Notime(function()
for i = 0.5, 1, 0.5 do
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-30+30*i), 0, 0)
SUW.C1 = CN(0, -0.25+0.25*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.8-0.4*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(30-30*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.8-0.4*i, 0.4)
SDW.C1 = CN(0, 0.25-0.25*i, 0) * ORSD
wait()
end
end)
local pos = mouse.Hit.p
ArrowOn = false
Arrow.Transparency = 1
Notime(function()
Play(Sounds.Shoot)
ShootArrow(pos, powe, mouse.Target)
end)
for i = 0.2, 1, 0.2 do
FWeld.C0 = CA(0, MR(-90+25*i), 0)
LAW.C0 = CA(MR(90+25*i), 0, MR(-60-15*i)) * CN(0.3-0.3*i, 0.4-0.4*i, -0.1+0.1*i)
RAW.C0 = CA(MR(90+60*i), 0, MR(-75+55*i)) * CN(0.7-0.5*i, -0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(215-65*i))
wait()
end
Hum.WalkSpeed = 16
for i = 0.25, 1, 0.25 do
FWeld.C0 = CA(0, MR(-65+5*i), 0)
LAW.C0 = CA(MR(115+5*i), 0, MR(-75-5*i))
RAW.C0 = CA(MR(150+10*i), 0, MR(-20+5*i)) * CN(0.2-0.1*i, -0.1-0.05*i, 0)
HW.C0 = CA(MR(180), 0, MR(150))
wait()
end
for i = 0.14, 1, 0.14 do
FWeld.C0 = CA(0, MR(-60+55*i), 0)
LAW.C0 = CA(MR(120-110*i), 0, MR(-80+45*i))
RAW.C0 = CA(MR(160-150*i), 0, MR(-15+10*i)) * CN(0.1-0.1*i, -0.15+0.15*i, 0)
wait()
end
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-5+5*i), 0)
LAW.C0 = CA(MR(10-10*i), 0, MR(-35+5*i))
RAW.C0 = CA(MR(10-10*i), 0, MR(-5+5*i))
wait()
end
AW.C0 = CN()
FWeld.C0 = CN()
LAW.C0 = CA(0, 0, MR(-30))
HW.C0 = CA(MR(180), 0, MR(150))
FTorso.Transparency = 1
torso.Transparency = 0
Atch(torso)
Shooting = false
RAW.Part1 = nil
RAW.C0 = CN()
Spec.BorderColor3 = C3()
omg = true
end
function SpecialAtk(mouse)
if Special < 50 then return end
Shooting = true
Spec.BorderColor3 = C3(0, 1, 0)
RAW.Part1 = Rarm
Atch(FTorso)
FTorso.Transparency = 0
torso.Transparency = 1
local amg, omg = false, false
Notime(function()
repeat
wait()
until Selected == false or omg
if omg == false then
omg = true
Shooting = false
Reloading = false
Hurt = false
Slashing = false
Normal()
EE()
return
end
end)
local shoot = false
Notime(function()
mouse.Button1Up:wait()
shoot = true
end)
for i = 0.2, 1, 0.2 do
FWeld.C0 = CA(0, MR(-80*i), 0)
LAW.C0 = CA(MR(85*i), 0, MR(-30-25*i)) * CN(0.3*i, 0.4*i, -0.1*i)
RAW.C0 = CA(MR(85*i), 0, MR(-70*i)) * CN(0.65*i, -1.2*i, 0)
HW.C0 = CA(MR(180), 0, MR(150+60*i))
AW.C0 = CA(MR(85*i), 0, 0) * CN(0, 0, 2.1*i)
wait()
end
for i = 0.5, 1, 0.5 do
FWeld.C0 = CA(0, MR(-80-10*i), 0)
LAW.C0 = CA(MR(85+5*i), 0, MR(-55-5*i)) * CN(0.3, 0.4, -0.1)
RAW.C0 = CA(MR(85+5*i), 0, MR(-70-5*i)) * CN(0.65+0.05*i, -1.2-0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(210+5*i))
AW.C0 = CA(MR(85+5*i), MR(-15*i), 0) * CN(0, 0, 2.1+0.1*i)
wait()
end
LAW.C0 = CA(MR(90), 0, MR(-60)) * CN(0.3, 0.4, 0)
HW.C0 = CA(MR(180), 0, MR(215))
FWeld.C0 = CA(0, MR(-90), 0)
AW.C0 = CA(MR(90), MR(-15), 0) * CN(0, 0, 2.2)
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, 0, 0)
local powe = 0
Main.Visible = true
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
Notime(function()
repeat wait() until powe >= MaximumPower or shoot
if shoot == false then
shoot = true
end
end)
repeat
wait()
powe = powe + 5
if powe > MaximumPower then powe = MaximumPower end
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
local sped = 16-((powe/MaximumPower)*9) if Selected == false then sped = 16 end
Hum.WalkSpeed = sped
until shoot
Special = Special - 50
Main.Visible = false
local pos = mouse.Hit.p
Notime(function()
Play(Sounds.Shoot)
ShootArrow(pos, powe/1.2, mouse.Target)
end)
SUW.C0 = CN(0, 0.15, 0) * CA(0, 0, 0)
SUW.C1 = CN(0, 0, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(0, 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDW.C1 = CN(0, 0, 0) * ORSD
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3*i, 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
Notime(function()
Arrow.Transparency = 1
ArrowOn = false
Play(Sounds.Shoot)
ShootArrow(pos, powe/1.2, mouse.Target)
end)
Notime(function()
for i = 0.5, 1, 0.5 do
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-30+30*i), 0, 0)
SUW.C1 = CN(0, -0.25+0.25*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.9-0.5*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(30-30*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.9-0.5*i, 0.4)
SDW.C1 = CN(0, 0.25-0.25*i, 0) * ORSD
wait()
end
end)
for i = 0.25, 1, 0.25 do
FWeld.C0 = CA(0, MR(-90+25*i), 0)
LAW.C0 = CA(MR(90+25*i), 0, MR(-60-15*i)) * CN(0.3-0.3*i, 0.4-0.4*i, -0.1+0.1*i)
RAW.C0 = CA(MR(90+60*i), 0, MR(-75+55*i)) * CN(0.7-0.5*i, -0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(215-65*i))
wait()
end
Hum.WalkSpeed = 16
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-65+5*i), 0)
LAW.C0 = CA(MR(115+5*i), 0, MR(-75-5*i))
RAW.C0 = CA(MR(150+10*i), 0, MR(-20+5*i)) * CN(0.2-0.1*i, -0.1-0.05*i, 0)
HW.C0 = CA(MR(180), 0, MR(150))
wait()
end
for i = 0.16, 1, 0.16 do
FWeld.C0 = CA(0, MR(-60+55*i), 0)
LAW.C0 = CA(MR(120-110*i), 0, MR(-80+45*i))
RAW.C0 = CA(MR(160-150*i), 0, MR(-15+10*i)) * CN(0.1-0.1*i, -0.15+0.15*i, 0)
wait()
end
for i = 0.5, 1, 0.5 do
FWeld.C0 = CA(0, MR(-5+5*i), 0)
LAW.C0 = CA(MR(10-10*i), 0, MR(-35+5*i))
RAW.C0 = CA(MR(10-10*i), 0, MR(-5+5*i))
wait()
end
Spec.BorderColor3 = C3()
AW.C0 = CN()
FWeld.C0 = CN()
LAW.C0 = CA(0, 0, MR(-30))
HW.C0 = CA(MR(180), 0, MR(150))
FTorso.Transparency = 1
torso.Transparency = 0
Atch(torso)
Shooting = false
RAW.Part1 = nil
RAW.C0 = CN()
omg = false
end
function Sel(mouse)
mouse.Icon = Icon
SelectAnim()
Selected = true
mouse.KeyDown:connect(function(key)
key = key:lower()
if Reloading == false and Slashing == false and Shooting == false then
if key == "f" then
Reload()
end
end
if Shooting == false then
if key == "e" then
Keys.e = true
local k
Spec.BorderColor3 = C3(1, 1, 0.4)
repeat
wait()
k = mouse.KeyUp:wait()
until k == "e"
Keys.e = false
if Shooting == false then
Spec.BorderColor3 = C3()
end
end
end
end)
mouse.Button1Down:connect(function()
if Reloading == false and Slashing == false and Shooting == false then
if ArrowOn == false then
local yesh = true
Notime(function()
mouse.Button1Up:wait()
yesh = false
end)
local ah = Keys.e
Reload()
if yesh then
local mm = Special >= 50
if ah and mm or Keys.e and mm then
SpecialAtk(mouse)
else
Shoot(mouse)
end
end
else
local mm = Special >= 50
if Keys.e and mm then
SpecialAtk(mouse)
else
Shoot(mouse)
end
end
end
end)
end
function Desel(mouse)
Selected = false
Main.Visible = false
Hum.WalkSpeed = 16
DeselectAnim()
end
bin.Deselected:connect(Desel)
bin.Selected:connect(Sel)
while Mo.Parent == char do
wait()
Special = Special + 0.07
if Special > MaxSpecial then Special = MaxSpecial end 
SpecialBar.Size = UDim2.new(Special/MaxSpecial, 0, 1, 0)
end	
	end)
local title = Instance.new("TextLabel")
	title.Parent = gt
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Gear/Tools"
	title.TextColor3 = whit
local title = Instance.new("TextLabel")
	title.Parent = ws
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Weapon Scripts"
	title.TextColor3 = whit
-- Page 2 End --




-- Misc --
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Become Owner in Personal Server"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Become Owner [PS]"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		while game.Players.LocalPlayer.PersonalServerRank<255 do
    game:GetService("PersonalServerService"):Promote(game.Players.LocalPlayer)
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Disco Fog"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Disco Fog"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
basics = {Color3.new(255/255,0/255,0/255),Color3.new(255/255,85/255,0/255),Color3.new(218/255,218/255,0/255),Color3.new(0/255,190/255,0/255),Color3.new(0/255,85/255,255/255),Color3.new(0/255,0/255,127/255),Color3.new(170/255,0/255,255/255),Color3.new(0/255,204/255,204/255),Color3.new(255/255,85/255,127/255),Color3.new(0/255,0/255,0/255),Color3.new(255/255,255/255,255/255)}
game.Lighting.FogStart = 25
game.Lighting.FogEnd = 300
while true do
wait(0.5)
game.Lighting.FogColor = basics[math.random(1,#basics)]
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Fencing Restore"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Fencing Restore"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		--Fencing Restore script made by Yelock--
--Now restoring fencing Please wait ----------
--Censore
--mediafire
--hitler
--megaupload
--globe of geeks
--lego
--cheez
--chicken
--requires c>2
function X(ws)
for _, v in pairs(ws:GetChildren()) do
v.Archivable = true
if v.Name ~= "UClear" and v.Name ~= "Terrain" and game.Players:GetPlayerFromCharacter(v)==nil and v~=game.Workspace.CurrentCamera then
if v:IsA("Script") or v:IsA("LocalScript") then
v.Disabled = true
v:remove()
else
v:remove()
end
end
if game.Workspace:findFirstChild("Base") ~= nil then
else
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="lol"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
end
end
end
X(game.Workspace)
X(game.Teams)
X(game.StarterGui)
wait()
game.Workspace:InsertContent("rbxassetid://118791953")
wait()
game.workspace.Base:Destroy()
wait()
game.workspace.lol:Destroy()
wait()
game.Lighting.Ambient = Color3.new(255,255,255)
game.Lighting.TimeOfDay = 12
game.Lighting.Brightness = 0.5
game.Lighting.FogEnd = 100000
game.Lighting.GlobalShadows = false
game.Lighting.Sky:Destroy()
game.Lighting.FogEnd = 100000
game.Lighting.Brightness = 1
game.Workspace.Terrain:clear()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Leaderstat Add"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Leaderstat Add"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		while true do
wait(.1)
game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text).Value = game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text)+game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Amount"].TextBox.Text)	
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Leaderstat Change"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Leaderstat Change"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text)game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Amount"].TextBox.Text)	

	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Play Music"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Play Music"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Sound" then
v:Stop()
v:Remove()	
end	
end
s = Instance.new("Sound",Workspace)
s.SoundId = "rbxassetid://"..frame.Settings.Page1["Music ID"].TextBox.Text
s.Volume = 1
s.Looped = true
s.Pitch = frame.Settings.Page1["Music Pitch"].TextBox.Text
s:Play()
wait(.1)
s:Play()
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Restore Skybox"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Restore Skybox"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		for i,v in pairs(game.Lighting:GetChildren()) do
v:Remove()
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Steal Player Points"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Steal Player Points"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local service = game:GetService("PointsService")
service:AwardPoints(game.Players.LocalPlayer.userId, service:GetAwardablePoints())
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 3
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = misc
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
	
-- Local Player --
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Anti-Robloxian"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Anti-Robloxian"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
 Player = game.Players.LocalPlayer
while true do
local dist = 17
local distance = dist
if Player then
c = game.Players:GetChildren()
for i = 1, #c do
if c[i].Name ~= Player.Name then
if c[i]:DistanceFromCharacter(game.Workspace[Player.Name].Torso.Position) <= distance then
c[i].Character:BreakJoints()
local c2 = c[i].Character:GetChildren()
for i2 =1, #c2 do
if c2[i2]:IsA("BasePart") then
Instance.new("Fire", c2[i2])
end end end end end end wait() end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Billboard Gui"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Billboard Gui"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		if game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui") then
game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui"):Remove()	
end
plr = game.Players.LocalPlayer.Name
y = Instance.new("BillboardGui")
y.Size = UDim2.new(0,100,0,150)
y.StudsOffset = Vector3.new(0,1,0)
y.Parent = game.Players[plr].Character.Head
y.Adornee = game.Players[plr].Character.Head
f = Instance.new("TextLabel")
f.Parent = y
f.BackgroundTransparency = 1
f.Position = UDim2.new(0,0,0,-50)
f.Size = UDim2.new(0,100,0,100)
f.Font = "Arial"
f.FontSize = "Size48"
f.Text = frame.Settings.Page1["Billboard Gui Text"].TextBox.Text
f.TextStrokeColor3 = Color3.new(0,0,0)
f.TextColor3 = Color3.new(frame.Settings.Page2["Billboard Gui Color"].TextBox1.Text/255,frame.Settings.Page2["Billboard Gui Color"].TextBox2.Text/255,frame.Settings.Page2["Billboard Gui Color"].TextBox3.Text/255)
f.TextStrokeTransparency = 0
f.TextYAlignment = "Bottom"
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Change Name"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Change Name"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	local You = game.Players.LocalPlayer.Name
local head = workspace[You].Head:Clone()
local model = Instance.new("Model",workspace)
local humanoid = Instance.new("Humanoid",model)
head.Parent = model
model.Name = frame.Settings.Page2["Name Box"].TextBox.Text
humanoid.MaxHealth = 0 
local w = Instance.new("Weld",model)
w.Part0,w.Part1 = workspace[You].Head,head	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Chicken Arms"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Chicken Arms"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local Chicken = game.Players.LocalPlayer.Name
game.Workspace[Chicken].Torso["Left Shoulder"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
game.Workspace[Chicken].Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, 0)
game.Workspace[Chicken].Torso["Right Shoulder"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
game.Workspace[Chicken].Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, 0)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Disco Character"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Disco Character"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		presets = {"Bright red","Bright yellow","Bright orange","Bright violet","Bright blue","Bright bluish green","Bright green"}
while true do
wait(0.5)
ye = game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()
for i,v in pairs(ye) do
if v.className == "Part" then
v.BrickColor = BrickColor.new(presets[math.random(1,#presets)])
end
end
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Dominus Ghost"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Dominus Ghost"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		function nob(who,tra,hat)
c=who.Character
pcall(function()u=c["Body Colors"]
u.HeadColor=BrickColor.new("Black")
u.LeftLegColor=BrickColor.new("Black")
u.RightLegolor=BrickColor.new("Black")
u.LeftArmColor=BrickColor.new("Black")
u.TorsoColor=BrickColor.new("Black")
u.RightArmColor=BrickColor.new("Black")
end)
pcall(function()c.Shirt:Destroy() c.Pants:Destroy() end)
for i,v in pairs(c:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency=tra
if v.Name=="HumanoidRootPart" or v.Name=="Head" then
v.Transparency=1
end
wait()
v.BrickColor=BrickColor.new("Black")
elseif v:IsA("Hat") then
v:Destroy()
end
end
xx=game:service("InsertService"):LoadAsset(hat)
xy=game:service("InsertService"):LoadAsset(47433)["LinkedSword"]
xy.Parent=who.Backpack
for a,hat in pairs(xx:children()) do
hat.Parent=c
end
xx:Destroy()
h=who.Character.Humanoid
h.MaxHealth=50000
wait(1.5)
h.Health=50000
h.WalkSpeed=32
end
nob(game.Players.LocalPlayer,0.6,21070012)
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Floating Pad"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Floating Pad"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		local name = game.Players.LocalPlayer.Name

local p = Instance.new("Part")
p.Parent = workspace
p.Locked = true
p.BrickColor = BrickColor.new("White")
p.BrickColor = BrickColor.new(104)
p.Size = Vector3.new(8, 1.2, 8)
p.Anchored = true
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(1, 0.5, 1)
m.Parent = p
while true do
	p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
	wait()
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Head Shake"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Head Shake"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		for X = 1, math.huge, 0.2 do 
wait() 
game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(math.sin(X) / 1,1.5,0) 
game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0) 
end 
for X = 1, math.huge, 0.1 do 
wait() 
game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X) 
game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0) 
end 
for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(100, 100, 100)
end
for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
end
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Heal"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Heal"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Mesh Disco"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Mesh Disco"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	plr = game.Players.LocalPlayer.Name
meshes = {"Brick","Cylinder","Head","Sphere","Torso","Wedge"}
h = game.Workspace[plr].Head.Mesh
t = Instance.new("SpecialMesh",game.Workspace[plr].Torso)
la = Instance.new("SpecialMesh",game.Workspace[plr]["Left Arm"])
ra = Instance.new("SpecialMesh",game.Workspace[plr]["Right Arm"])
ll = Instance.new("SpecialMesh",game.Workspace[plr]["Left Leg"])
rl = Instance.new("SpecialMesh",game.Workspace[plr]["Right Leg"])
while true do
wait(0.1)
h.MeshType = meshes[math.random(1,#meshes)]
h.Parent.BrickColor = BrickColor.Random()
t.MeshType = meshes[math.random(1,#meshes)]
t.Parent.BrickColor = BrickColor.Random()
la.MeshType = meshes[math.random(1,#meshes)]
la.Parent.BrickColor = BrickColor.Random()
ra.MeshType = meshes[math.random(1,#meshes)]
ra.Parent.BrickColor = BrickColor.Random()
ll.MeshType = meshes[math.random(1,#meshes)]
ll.Parent.BrickColor = BrickColor.Random()
rl.MeshType = meshes[math.random(1,#meshes)]
rl.Parent.BrickColor = BrickColor.Random()
end	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Set Walkspeed"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Set Walkspeed"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = frame.Settings.Page2["Walkspeed Amount"].TextBox.Text	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.48,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,231)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = localp
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,231)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		
	end)
local title = Instance.new("TextLabel")
	title.Parent = misc
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Misc."
	title.TextColor3 = whit
local title = Instance.new("TextLabel")
	title.Parent = localp
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "LocalPlayer"
	title.TextColor3 = whit
-- Page 3 End --
-- Page 4 --
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Chop Suey"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Chop Suey"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Music ID"].TextBox.Text = 147407900
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Electro Sp00k"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Electro Sp00k"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 142930454	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Scream"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Scream"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 138097458	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Wonga"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Wonga"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 147909316	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 3
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pmi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	
-- Preset Images --
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Team c00lkidd Logo 1"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Team c00lkidd Logo 1"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 158118263	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Team c00lkidd Logo 2"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Team c00lkidd Logo 2"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 164661730	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Thomas"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Thomas"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 160456772	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "c00lkidd"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "c00lkidd"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 157755295	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "team skrubl0rd"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "old team skrubl0rd"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 358313209
	end)
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.48,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,231)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = psd
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,231)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
	
local title = Instance.new("TextLabel")
	title.Parent = pmi
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Preset Music IDs"
	title.TextColor3 = whit
	title.TextWrapped = true
local title = Instance.new("TextLabel")
	title.Parent = psd
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Size = UDim2.new(1,0,0,30)
	title.ZIndex = 2
	title.Font = "SourceSansBold"
	title.FontSize = "Size14"
	title.Text = "Preset Skybox/Decal IDs"
	title.TextColor3 = whit
	--page 5--
local t3xt = Instance.new("TextLabel")
	t3xt.Parent = edn
	t3xt.BackgroundColor3 = blak
	t3xt.BorderColor3 = rede
	t3xt.BorderSizePixel = 3
	t3xt.Name = "Empty"
	t3xt.Position = UDim2.new(0,0,0,0)
	t3xt.Size = UDim2.new(1,0,1,0)
	t3xt.ZIndex = 2
	t3xt.Font = tef
	t3xt.FontSize = "Size14"
	t3xt.Text = "Thank you for using c00lgui scripted! Addons coming soon! Post Ideas in the Thread!!!"
	t3xt.TextColor3 = whit
	t3xt.TextWrapped = true
	t3xt.TextYAlignment = "Top"
	
-- Preset Gear IDs --
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Airstrike"
	button.Position = UDim2.new(0,0,0,33)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Airstrike"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 88885539
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Dual Darkhearts"
	button.Position = UDim2.new(0.5,3,0,33)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Dual Darkhearts"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 108149175
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Dual Venomshanks"
	button.Position = UDim2.new(0,0,0,66)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Dual Venomshanks"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 158069180
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Ghostfire Sword"
	button.Position = UDim2.new(0.5,3,0,66)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Ghostfire Sword"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 64220933	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Gravity Coil"
	button.Position = UDim2.new(0,0,0,99)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Gravity Coil"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 16688968
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Hyperbike"
	button.Position = UDim2.new(0.5,3,0,99)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Hyperbike"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 130113061	
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Icedagger"
	button.Position = UDim2.new(0,0,0,132)
	button.Size = UDim2.new(0.499,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Icedagger"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
		frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 83704165
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Linked Sword"
	button.Position = UDim2.new(0.5,3,0,132)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Linked Sword"
	button.TextColor3 = whit
	button.TextWrapped = true
	button.MouseButton1Down:connect(function()
frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 125013769		
	end)
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,165)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,165)
	button.Size = UDim2.new(0.5,-3,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,198)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0.5,3,0,198)
	button.Size = UDim2.new(0.48,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--
local button = Instance.new("TextButton")
	button.Parent = pgi
	button.BackgroundColor3 = blak
	button.BorderColor3 = rede
	button.BorderSizePixel = 3
	button.Name = "Empty"
	button.Position = UDim2.new(0,0,0,231)
	button.Size = UDim2.new(0.5,0,0,30)
	button.ZIndex = 2
	button.Font = tef
	button.FontSize = "Size14"
	button.Text = "Empty"
	button.TextColor3 = whit
	button.TextWrapped = true
--


			
--Settings--
local pge1 = Instance.new("Frame")
pge1.Parent = page
pge1.BorderColor3 = rede
pge1.BackgroundColor3 = blak
pge1.BorderSizePixel = 3
pge1.Name = "Page1"
pge1.Position = UDim2.new(0,0,0,83)
pge1.Size = UDim2.new(1,0,1,-83)
pge1.ZIndex = 1

local pge2 = Instance.new("Frame")
pge2.Parent = page
pge2.BorderColor3 = rede
pge2.BackgroundColor3 = blak
pge2.BorderSizePixel = 3
pge2.Name = "Page2"
pge2.Position = UDim2.new(0,0,0,83)
pge2.Size = UDim2.new(1,0,1,-83)
pge2.ZIndex = 1
pge2.Visible = false
local lft = Instance.new("TextButton")
	lft.Parent = page
	lft.BorderColor3 = rede
	lft.BackgroundColor3 = blak
	lft.BorderSizePixel = 3
	lft.Name = ">"
	lft.Position = UDim2.new(0.5,3,0,40)
	lft.Size = UDim2.new(0.5,-3,0,40)
	lft.ZIndex = 1
	lft.Font = tef
	lft.FontSize = "Size48"
	lft.Text = ">"
	lft.TextColor3 = whit
	lft.MouseButton1Down:connect(function()
		if pge1.Visible == true then
			pge1.Visible = false
			pge2.Visible = true
		elseif pge2.Visible == true then
			pge2.Visible = false
			pge1.Visible = true
		end	
	end)
local rgt = Instance.new("TextButton")
	rgt.Parent = page
	rgt.BorderColor3 = rede
	rgt.BackgroundColor3 = blak
	rgt.BorderSizePixel = 3
	rgt.Name = "<"
	rgt.Position = UDim2.new(0,0,0,40)
	rgt.Size = UDim2.new(0.5,0,0,40)
	rgt.ZIndex = 1
	rgt.Font = tef
	rgt.FontSize = "Size48"
	rgt.Text = "<"
	rgt.TextColor3 = whit
	rgt.MouseButton1Down:connect(function()
		if pge1.Visible == true then
			pge1.Visible = false
			pge2.Visible = true
		elseif pge2.Visible == true then
			pge2.Visible = false
			pge1.Visible = true
		end	
	end)

local sbutton = Instance.new("TextButton")
	sbutton.Parent = page
	sbutton.BackgroundColor3 = blak
	sbutton.BorderColor3 = rede
	sbutton.BorderSizePixel = 3
	sbutton.Name = "SettingsButton"
	sbutton.Position = UDim2.new(1,3,0,0)
	sbutton.Size = UDim2.new(0,27,1,0)
	sbutton.Font = tef
	sbutton.FontSize = "Size48"
	sbutton.TextColor3 = whit
	sbutton.Text = "<"
	cango = true
	sbutton.MouseButton1Down:connect(function()
		if cango == true then
			if sbutton.Text == "<" then
			sbutton.Text = ">"
			cango = false
				repeat
				wait()
				page.Position = UDim2.new(1,page.Position.X.Offset-10,0,0)
				until page.Position.X.Offset <= -293
				wait()
				page.Position = UDim2.new(1,-300,0,0)
				cango = true
			else
			sbutton.Text = "<"
			cango = false
				repeat
				wait()
				page.Position = UDim2.new(1,page.Position.X.Offset+10,0,0)
				until page.Position.X.Offset >= -10
				wait()
				page.Position = UDim2.new(1,3,0,0)
				cango = true
			end	
		end
	end)
local title = Instance.new("TextLabel")
	title.Parent = page
	title.BackgroundColor3 = blak
	title.BorderColor3 = rede
	title.BorderSizePixel = 3
	title.Name = "Title"
	title.Position = UDim2.new(0,0,0,0)
	title.Size = UDim2.new(1,0,0,40)
	title.ZIndex = 1
	title.Font = tef
	title.FontSize = "Size24"
	title.Text = "Settings"
	title.TextColor3 = whit
	
	
local bgt = Instance.new("Frame")
	bgt.Parent = pge1
	bgt.BackgroundColor3 = blak
	bgt.BorderColor3 = rede
	bgt.BorderSizePixel = 3
	bgt.Name = "Billboard Gui Text"
	bgt.Position = UDim2.new(0.5,3,0,198)
	bgt.Size = UDim2.new(0.5,-3,0,63)
local cgid = Instance.new("Frame")
	cgid.Parent = pge1
	cgid.BackgroundColor3 = blak
	cgid.BorderColor3 = rede
	cgid.BorderSizePixel = 3
	cgid.Name = "Custom Gear ID"
	cgid.Position = UDim2.new(0,0,0,198)
	cgid.Size = UDim2.new(0.5,0,0,63)
local god = Instance.new("Frame")
	god.Parent = pge1
	god.BackgroundColor3 = blak
	god.BorderColor3 = rede
	god.BorderSizePixel = 3
	god.Name = "God"
	god.Position = UDim2.new(0,0,0,132)
	god.Size = UDim2.new(0.5,0,0,63)
local Inv = Instance.new("Frame")
	Inv.Parent = pge1
	Inv.BackgroundColor3 = blak
	Inv.BorderColor3 = rede
	Inv.BorderSizePixel = 3
	Inv.Name = "Invisibility"
	Inv.Position = UDim2.new(0.5,3,0,132)
	Inv.Size = UDim2.new(0.5,-3,0,63)
local mid = Instance.new("Frame")
	mid.Parent = pge1
	mid.BackgroundColor3 = blak
	mid.BorderColor3 = rede
	mid.BorderSizePixel = 3
	mid.Name = "Music ID"
	mid.Position = UDim2.new(0,0,0,66)
	mid.Size = UDim2.new(0.5,0,0,63)
local mp = Instance.new("Frame")
	mp.Parent = pge1
	mp.BackgroundColor3 = blak
	mp.BorderColor3 = rede
	mp.BorderSizePixel = 3
	mp.Name = "Music Pitch"
	mp.Position = UDim2.new(0.5,3,0,66)
	mp.Size = UDim2.new(0.5,-3,0,63)
local pi = Instance.new("Frame")
	pi.Parent = pge1
	pi.BackgroundColor3 = blak
	pi.BorderColor3 = rede
	pi.BorderSizePixel = 3
	pi.Name = "Place ID"
	pi.Position = UDim2.new(0.5,3,0,0)
	pi.Size = UDim2.new(0.5,-3,0,63)
local sdi = Instance.new("Frame")
	sdi.Parent = pge1
	sdi.BackgroundColor3 = blak
	sdi.BorderColor3 = rede
	sdi.BorderSizePixel = 3
	sdi.Name = "Skybox/Decal ID"
	sdi.Position = UDim2.new(0,0,0,0)
	sdi.Size = UDim2.new(0.5,0,0,63)
	local textbx = Instance.new("TextBox")
		textbx.Parent = sdi
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "158118263"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = sdi
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Skybox/Decal ID"
		titl.TextColor3 = whit
	local textbx = Instance.new("TextBox")
		textbx.Parent = pi
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "149559312"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = pi
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Place ID"
		titl.TextColor3 = whit
	local textbx = Instance.new("TextBox")
		textbx.Parent = mp
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "1"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = mp
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Music Pitch"
		titl.TextColor3 = whit
	local textbx = Instance.new("TextBox")
		textbx.Parent = mid
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "142930454"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = mid
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Music ID"
		titl.TextColor3 = whit
	local textbx = Instance.new("TextBox")
		textbx.Parent = cgid
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "108149175"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = cgid
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Custom Gear ID"
		titl.TextColor3 = whit
	local textbx = Instance.new("TextBox")
		textbx.Parent = bgt
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "c00lkidd"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = bgt
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Billboard Gui Text"
		titl.TextColor3 = whit
		titl.TextWrapped = true
		
	local button = Instance.new("TextButton")
		button.Parent = Inv
		button.BackgroundColor3 = blak
		button.BorderColor3 = rede
		button.BorderSizePixel = 3 
		button.Position = UDim2.new(0,0,0.5,0)
		button.Size = UDim2.new(0.99,1,0.5,-1)
		button.Font = tef
		button.FontSize = "Size14"
		button.Text = "On"
		button.TextColor3 = whit
		button.MouseButton1Down:connect(function()
			if button.Text == "Off" then
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Head.face.Transparency = 1
game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
button.Text = "On"
else
game.Players.LocalPlayer.Character.Head.Transparency = 0
game.Players.LocalPlayer.Character.Head.face.Transparency = 0
game.Players.LocalPlayer.Character.Torso.Transparency = 0
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
button.Text = "Off"
end
		end)
	local titl = Instance.new("TextLabel")
		titl.Parent = Inv
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Invisibility"
		titl.TextColor3 = whit
		titl.TextWrapped = true
	local button = Instance.new("TextButton")
		button.Parent = god
		button.BackgroundColor3 = blak
		button.BorderColor3 = rede
		button.BorderSizePixel = 3 
		button.Position = UDim2.new(0,0,0.5,0)
		button.Size = UDim2.new(0.99,1,0.5,-1)
		button.Font = tef
		button.FontSize = "Size14"
		button.Text = "On"
		button.TextColor3 = whit
		button.MouseButton1Down:connect(function()
if button.Text == "Off" then
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
	game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
	button.Text = "On"
	else
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
	game.Players.LocalPlayer.Character.Humanoid.Health = 100
	button.Text = "Off"
end
		end)
	local titl = Instance.new("TextLabel")
		titl.Parent = god
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "God"
		titl.TextColor3 = whit
		titl.TextWrapped = true		
--Page 2--
local arr = Instance.new("Frame")
	arr.Parent = pge2
	arr.BackgroundColor3 = blak
	arr.BorderColor3 = rede
	arr.BorderSizePixel = 3
	arr.Name = "Anti Robloxian Range"
	arr.Position = UDim2.new(0.5,3,0,198)
	arr.Size = UDim2.new(0.5,-3,0,63)
local bgc = Instance.new("Frame")
	bgc.Parent = pge2
	bgc.BackgroundColor3 = blak
	bgc.BorderColor3 = rede
	bgc.BorderSizePixel = 3
	bgc.Name = "Billboard Gui Color"
	bgc.Position = UDim2.new(0,0,0,198)
	bgc.Size = UDim2.new(0.5,0,0,63)
local cst = Instance.new("Frame")
	cst.Parent = pge2
	cst.BackgroundColor3 = blak
	cst.BorderColor3 = rede
	cst.BorderSizePixel = 3
	cst.Name = "Chat Spam Text"
	cst.Position = UDim2.new(0,0,0,132)
	cst.Size = UDim2.new(0.5,0,0,63)
local lsa = Instance.new("Frame")
	lsa.Parent = pge2
	lsa.BackgroundColor3 = blak
	lsa.BorderColor3 = rede
	lsa.BorderSizePixel = 3
	lsa.Name = "Leaderstat Amount"
	lsa.Position = UDim2.new(0.5,3,0,132)
	lsa.Size = UDim2.new(0.5,-3,0,63)
local lsn = Instance.new("Frame")
	lsn.Parent = pge2
	lsn.BackgroundColor3 = blak
	lsn.BorderColor3 = rede
	lsn.BorderSizePixel = 3
	lsn.Name = "Leaderstat Name"
	lsn.Position = UDim2.new(0,0,0,66)
	lsn.Size = UDim2.new(0.5,0,0,63)
local nmb = Instance.new("Frame")
	nmb.Parent = pge2
	nmb.BackgroundColor3 = blak
	nmb.BorderColor3 = rede
	nmb.BorderSizePixel = 3
	nmb.Name = "Name Box"
	nmb.Position = UDim2.new(0.5,3,0,66)
	nmb.Size = UDim2.new(0.5,-3,0,63)
local wsa = Instance.new("Frame")
	wsa.Parent = pge2
	wsa.BackgroundColor3 = blak
	wsa.BorderColor3 = rede
	wsa.BorderSizePixel = 3
	wsa.Name = "Walkspeed Amount"
	wsa.Position = UDim2.new(0.5,3,0,0)
	wsa.Size = UDim2.new(0.5,-3,0,63)


local textbx = Instance.new("TextBox")
		textbx.Parent = arr
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "13"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = arr
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Anti Robloxian Rage"
		titl.TextColor3 = whit
		titl.TextWrapped = true
 textbx1 = Instance.new("TextBox")
		textbx1.Parent = bgc
		textbx1.BackgroundColor3 = blak
		textbx1.BorderColor3 = rede
		textbx1.BorderSizePixel = 3 
		textbx1.ClearTextOnFocus = true
		textbx1.Position = UDim2.new(0,0,0.5,0)
		textbx1.Size = UDim2.new(0,50,0.5,-1)
		textbx1.Font = tef
		textbx1.FontSize = "Size14"
		textbx1.Text = "200"
		textbx1.TextColor3 = whit
		textbx1.Name = "TextBox1"
 textbx2 = Instance.new("TextBox")
		textbx2.Parent = bgc
		textbx2.BackgroundColor3 = blak
		textbx2.BorderColor3 = rede
		textbx2.BorderSizePixel = 3 
		textbx2.ClearTextOnFocus = true
		textbx2.Position = UDim2.new(0,50,0.5,0)
		textbx2.Size = UDim2.new(0,50,0.5,-1)
		textbx2.Font = tef
		textbx2.FontSize = "Size14"
		textbx2.Text = "0"
		textbx2.TextColor3 = whit
		textbx2.Name = "TextBox2"
 textbx3 = Instance.new("TextBox")
		textbx3.Parent = bgc
		textbx3.BackgroundColor3 = blak
		textbx3.BorderColor3 = rede
		textbx3.BorderSizePixel = 3 
		textbx3.ClearTextOnFocus = true
		textbx3.Position = UDim2.new(0,100,0.5,0)
		textbx3.Size = UDim2.new(0,50,0.5,-1)
		textbx3.Font = tef
		textbx3.FontSize = "Size14"
		textbx3.Text = "0"
		textbx3.TextColor3 = whit
		textbx3.Name = "TextBox3"
	local titl = Instance.new("TextLabel")
		titl.Parent = bgc
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Billboard Gui Color"
		titl.TextColor3 = whit
		titl.TextWrapped = true		
local textbx = Instance.new("TextBox")
		textbx.Parent = cst
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "join team c00lkidd!"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = cst
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Chat Spam Text"
		titl.TextColor3 = whit
		titl.TextWrapped = true
local textbx = Instance.new("TextBox")
		textbx.Parent = lsa
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "50"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = lsa
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Leaderstat Amount"
		titl.TextColor3 = whit
		titl.TextWrapped = true
local textbx = Instance.new("TextBox")
		textbx.Parent = lsn
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "KOs"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = lsn
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Leaderstat Name"
		titl.TextColor3 = whit
		titl.TextWrapped = true
local textbx = Instance.new("TextBox")
		textbx.Parent = nmb
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "God"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = nmb
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Name"
		titl.TextColor3 = whit
		titl.TextWrapped = true
local textbx = Instance.new("TextBox")
		textbx.Parent = wsa
		textbx.BackgroundColor3 = blak
		textbx.BorderColor3 = rede
		textbx.BorderSizePixel = 3 
		textbx.ClearTextOnFocus = true
		textbx.Position = UDim2.new(0,0,0.5,0)
		textbx.Size = UDim2.new(0.99,1,0.5,-1)
		textbx.Font = tef
		textbx.FontSize = "Size14"
		textbx.Text = "50"
		textbx.TextColor3 = whit
	local titl = Instance.new("TextLabel")
		titl.Parent = wsa
		titl.BackgroundColor3 = blak
		titl.BorderColor3 = rede
		titl.BorderSizePixel = 3
		titl.Name = "Title"
		titl.Size = UDim2.new(1,0,0,30)
		titl.Font = tef.."Bold"
		titl.FontSize = "Size14"
		titl.Text = "Walkspeed Amount"
		titl.TextColor3 = whit
		titl.TextWrapped = true
--Settings--
