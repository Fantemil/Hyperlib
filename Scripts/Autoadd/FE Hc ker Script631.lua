--[[

Made by Rouxhaver

When two people execute the script they can use the text box to chat with each other privately and uncensored

Note: only works on the newer bubble chat and not the old one and long messages get tagged

]]

Â a = "ç"

b = "ä¸"

c = "æ¯"

d = "ä¸"

e = "äº"

f = "äºº"

g = "æ"

h = "å¨"

i = "æ"

j = "ä»"

k = "è¿"

l = "ä¸º"

m = "ä¹"

n = "å¤§"

o = "æ¥"

p = "ä»¥"

q = "ä¸ª"

r = "ä¸­"

s = "ä¸"

t = "ä»¬"

u = "å°"

v = "è¯´"

w = "å½"

x = "å"

y = "å°"

z = "ä¹"

Â function convert(str)

str = str:lower()

return str:gsub("a",a):gsub("b",b):gsub("c",c):gsub("d",d):gsub("e",e):gsub("f",f):gsub("g",g):gsub("h",h):gsub("i",i):gsub("j",j):gsub("k",k):gsub("l",l):gsub("m",m):gsub("n",n):gsub("o",o):gsub("p",p):gsub("q",q):gsub("r",r):gsub("s",s):gsub("t",t):gsub("u",u):gsub("v",v):gsub("w",w):gsub("x",x):gsub("y",y):gsub("z",z)

end

Â function unconvert(str)

str = str:lower()

return str:gsub(a,"a"):gsub(b,"b"):gsub(c,"c"):gsub(d,"d"):gsub(e,"e"):gsub(f,"f"):gsub(g,"g"):gsub(h,"h"):gsub(i,"i"):gsub(j,"j"):gsub(k,"k"):gsub(l,"l"):gsub(m,"m"):gsub(n,"n"):gsub(o,"o"):gsub(p,"p"):gsub(q,"q"):gsub(r,"r"):gsub(s,"s"):gsub(t,"t"):gsub(u,"u"):gsub(v,"v"):gsub(w,"w"):gsub(x,"x"):gsub(y,"y"):gsub(z,"z")

end

Â function chat(str)

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str,"All")

end

Â player = game:GetService("Players").LocalPlayer

Â SG = Instance.new("ScreenGui",player.PlayerGui)

Â frame = Instance.new("Frame",SG)

frame.Size = UDim2.new(0.2,0,0.2,0)

frame.AnchorPoint = Vector2.new(0.5,0.5)

frame.Position = UDim2.new(0.5,0,0.8,0)

frame.Active = true

frame.Draggable = true

frame.BackgroundColor3 = Color3.new(0.14902, 0.8, 1)

Â textbox = Instance.new("TextBox",frame)

textbox.AnchorPoint = Vector2.new(0.5,0.5)

textbox.Size = UDim2.new(0.95,0,0.65,0)

textbox.Position = UDim2.new(0.5,0,0.6,0)

textbox.TextScaled = true

textbox.BackgroundColor3 = Color3.new(1,1,1)

textbox.Text = "Text"

textbox.TextColor3 = Color3.new(0, 0, 0)

Â title = Instance.new("TextLabel",frame)

title.Size = UDim2.new(0.3,0,0.3,0)

title.TextScaled = true

title.Text = "hacker chat"

title.BackgroundTransparency = 1

title.TextColor3 = Color3.new(0, 0, 0)

Â closebutton = Instance.new("TextButton",frame)

closebutton.Size = UDim2.new(0.15,0,0.25,0)

closebutton.AnchorPoint = Vector2.new(1,0)

closebutton.TextScaled = true

closebutton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)

closebutton.Text = "X"

closebutton.Position = UDim2.new(1,0,0,0)

closebutton.TextColor3 = Color3.new(1, 1, 1)

Â ui = Instance.new("UIAspectRatioConstraint",frame)

ui.AspectRatio = 4

Â closebutton.MouseButton1Up:Connect(function()

SG:Destroy()

end)

Â textbox.FocusLost:Connect(function()

chat("ä¸"..convert(textbox.Text))

end)

Â player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.ChildAdded:Connect(function(msg)

wait(1)

local message = msg.TextLabel.Text

if message:match("ä¸") then

msg.TextLabel.TextColor3 = Color3.new(1, 0.85098, 0)

message = unconvert(message:gsub("ä¸",""))

msg.TextLabel.Text = message

end

end)

Â Coregui = game:GetService("CoreGui")

if Coregui:FindFirstChild("BubbleChat") then

Coregui.BubbleChat.DescendantAdded:Connect(function(bubble)

wait(1)

if bubble:IsA("TextLabel") then

if bubble.Text:match("ä¸") then

bubble.Parent.BackgroundColor3 = Color3.new(1, 0.85098, 0)

bubble.Text = unconvert(

end

end

end)

end