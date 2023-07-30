--[[
Made by Rouxhaver
When two people execute the script they can use the text box to chat with each other privately and uncensored
Note: only works on the newer bubble chat and not the old one and long messages get tagged
]]

a = "的"
b = "一"
c = "是"
d = "不"
e = "了"
f = "人"
g = "我"
h = "在"
i = "有"
j = "他"
k = "这"
l = "为"
m = "之"
n = "大"
o = "来"
p = "以"
q = "个"
r = "中"
s = "上"
t = "们"
u = "到"
v = "说"
w = "国"
x = "和"
y = "地"
z = "也"

function convert(str)
	str = str:lower()
	return str:gsub("a",a):gsub("b",b):gsub("c",c):gsub("d",d):gsub("e",e):gsub("f",f):gsub("g",g):gsub("h",h):gsub("i",i):gsub("j",j):gsub("k",k):gsub("l",l):gsub("m",m):gsub("n",n):gsub("o",o):gsub("p",p):gsub("q",q):gsub("r",r):gsub("s",s):gsub("t",t):gsub("u",u):gsub("v",v):gsub("w",w):gsub("x",x):gsub("y",y):gsub("z",z)
end

function unconvert(str)
	str = str:lower()
	return str:gsub(a,"a"):gsub(b,"b"):gsub(c,"c"):gsub(d,"d"):gsub(e,"e"):gsub(f,"f"):gsub(g,"g"):gsub(h,"h"):gsub(i,"i"):gsub(j,"j"):gsub(k,"k"):gsub(l,"l"):gsub(m,"m"):gsub(n,"n"):gsub(o,"o"):gsub(p,"p"):gsub(q,"q"):gsub(r,"r"):gsub(s,"s"):gsub(t,"t"):gsub(u,"u"):gsub(v,"v"):gsub(w,"w"):gsub(x,"x"):gsub(y,"y"):gsub(z,"z")
end

function chat(str)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str,"All")
end

player = game:GetService("Players").LocalPlayer

SG = Instance.new("ScreenGui",player.PlayerGui)

frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.2,0)
frame.AnchorPoint = Vector2.new(0.5,0.5)
frame.Position = UDim2.new(0.5,0,0.8,0)
frame.Active = true
frame.Draggable = true
frame.BackgroundColor3 = Color3.new(0.14902, 0.8, 1)

textbox = Instance.new("TextBox",frame)
textbox.AnchorPoint = Vector2.new(0.5,0.5)
textbox.Size = UDim2.new(0.95,0,0.65,0)
textbox.Position = UDim2.new(0.5,0,0.6,0)
textbox.TextScaled = true
textbox.BackgroundColor3 = Color3.new(1,1,1)
textbox.Text = "Text"
textbox.TextColor3 = Color3.new(0, 0, 0)

title = Instance.new("TextLabel",frame)
title.Size = UDim2.new(0.3,0,0.3,0)
title.TextScaled = true
title.Text = "hacker chat"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(0, 0, 0)

closebutton = Instance.new("TextButton",frame)
closebutton.Size = UDim2.new(0.15,0,0.25,0)
closebutton.AnchorPoint = Vector2.new(1,0)
closebutton.TextScaled = true
closebutton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
closebutton.Text = "X"
closebutton.Position = UDim2.new(1,0,0,0)
closebutton.TextColor3 = Color3.new(1, 1, 1)

ui = Instance.new("UIAspectRatioConstraint",frame)
ui.AspectRatio = 4

closebutton.MouseButton1Up:Connect(function()
	SG:Destroy()
end)

textbox.FocusLost:Connect(function()
	chat("三"..convert(textbox.Text))
end)

player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.ChildAdded:Connect(function(msg)
	wait(1)
	local message = msg.TextLabel.Text
	if message:match("三") then
		msg.TextLabel.TextColor3 = Color3.new(1, 0.85098, 0)
		message = unconvert(message:gsub("三",""))
		msg.TextLabel.Text = message
	end
end)

Coregui = game:GetService("CoreGui")
if Coregui:FindFirstChild("BubbleChat") then
	Coregui.BubbleChat.DescendantAdded:Connect(function(bubble)
		wait(1)
		if bubble:IsA("TextLabel") then
			if bubble.Text:match("三") then
				bubble.Parent.BackgroundColor3 = Color3.new(1, 0.85098, 0)
				bubble.Text = unconvert(bubble.Text:gsub("三",""))
			end
		end
	end)
end