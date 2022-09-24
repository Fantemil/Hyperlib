--Kat Radio Script by Kaid#0001

local UI = game:GetObjects("rbxassetid://7118181510")[1]
if syn and syn.protect_gui then
   syn.protect_gui(UI)
end
UI.Parent = game:GetService("CoreGui")

wait()

UI.Main.Text.Text = "Custom Radio Gui By Kaid#0001\n\nJoin discord.gg/hatsune"

--Drag Script
local a=game:GetService("UserInputService")local b=UI.Main;local c;local d;local e;local f;local function g(h)local i=h.Position-e;b.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end;b.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 then c=true;e=h.Position;f=b.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)b.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement then d=h end end)a.InputChanged:Connect(function(h)if h==d and c then g(h)end end)

--Close Button
UI.Main.CloseGui.MouseButton1Down:Connect(function()
   UI.Main.Visible = false
   UI.OpenButton.Position = UI.Main.Position
   UI.OpenButton.Visible = true
end)

--Open Button
UI.OpenButton.OpenGui.MouseButton1Down:Connect(function()
   UI.Main.Visible = true
   UI.OpenButton.Visible = false
end)

--Play Button
UI.Main.Play.MouseButton1Down:Connect(function()
   game:GetService("ReplicatedStorage").GameEvents.Gameplay.PlayRadio:FireServer({tonumber(UI.Main.Input.Text),1})
end)