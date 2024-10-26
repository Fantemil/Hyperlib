local gui = Instance.new("ScreenGui")
gui.Name = "Xymatekidd Gui"
gui.Parent = game.CoreGui

local fr = Instance.new("Frame")
fr.Size = UDim2.new(0.8, 0, 0.5, 0)
fr.Position = UDim2.new(0.1, 0, 0.3, 0)
fr.BackgroundColor3 = Color3.new(255, 215, 0)
fr.BorderColor3 = Color3.new(0, 0, 0)
fr.BorderSizePixel = 1
fr.Active = true
fr.BackgroundTransparency = 0 
fr.Draggable = true
fr.Parent = gui                                                                 local co = Instance.new("TextBox")
co.Size = UDim2.new(0.6, 0, 0.2, 0)
co.Position = UDim2.new(0.3, 0, 0.0, 0)
co.BackgroundColor3 = Color3.new(0, 0, 0)
co.BorderColor3 = Color3.new(0, 0, 0)
co.BorderSizePixel = 1                                              co.Active = no      
co.Text = "Xymatekidd Public Edition V0.0.0.1"
co.TextColor3 = Color3.new(255, 215, 0)
co.BackgroundTransparency = 0
co.Font = Enum.Font.Code
co.TextSize = 17
co.Parent = fr                                                                 local gui = Instance.new("ScreenGui",game.CoreGui)
local im = Instance.new("ImageLabel")
im.Size = UDim2.new(0.3, 0, 0.4, 0)
im.Position = UDim2.new(0.0, 0, 0.0, 0)
im.BackgroundColor3 = Color3.new(0, 0, 0)
im.ImageColor3 = Color3.new(255, 255, 255)
im.Image = "rbxassetid://18659328580"
im.ImageTransparency = 0
im.Parent = fr


im.BackgroundTransparency = 0                                local re = Instance.new("TextButton")
re.Size = UDim2.new(0.3, 0, 0.2, 0)
re.Position = UDim2.new(0.6, 0, 0.6, 0)
re.BackgroundColor3 = Color3.new(0, 0, 0)
re.BorderColor3 = Color3.new(0, 0, 0)
re.BorderSizePixel = 1
re.Text = "Skybox"
re.BackgroundTransparency = 0 
re.TextColor3 = Color3.new(255, 215, 0)
re.Font = Enum.Font.Code                                              re.TextSize = 17
re.Parent = fr                                                                  re.MouseButton1Down:Connect(function()
--Change the IDs with your--
--Dark Exploitz--
s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=118707288566534"
s.SkyboxDn = "http://www.roblox.com/asset/?id=118707288566534"
s.SkyboxFt = "http://www.roblox.com/asset/?id=118707288566534"
s.SkyboxLf = "http://www.roblox.com/asset/?id=118707288566534"
s.SkyboxRt = "http://www.roblox.com/asset/?id=118707288566534"
s.SkyboxUp = "http://www.roblox.com/asset/?id=118707288566534"
s.Parent = game.Lighting
end)                                                                                 local pl = Instance.new("TextButton")
pl.Size = UDim2.new(0.3, 0, 0.2, 0)
pl.Position = UDim2.new(0.1, 0, 0.6, 0)
pl.BackgroundColor3 = Color3.new(0, 0, 0)
pl.BorderColor3 = Color3.new(0, 0, 0)
pl.BorderSizePixel = 1
pl.Text = "Hint"
pl.BackgroundTransparency = 0 
pl.TextColor3 = Color3.new(255, 215, 0)
pl.Font = Enum.Font.Code                                           pl.TextSize = 17
pl.Parent = fr                                                             pl.MouseButton1Down:Connect(function()
local function write(text,object)
			if object:IsA("Hint") == true then
				local count = object:FindFirstChild("Count")
				if count == nil then
					count = Instance.new("NumberValue")
					count.Parent = object
					count.Name = "Count"
					count.Value = count.Value + 1
				else
					count.Value = count.Value + 1
				end
				local startcount = count.Value
				for i = 1,#text do
					if count.Value == startcount then
						local letter = string.sub(text,i,i)
						object.Text = string.sub(text,1,i)
						wait(0.001)
					else
						break
					end
				end
			end
		end
		local bro = Instance.new("Hint",workspace)
		write("team Xymatekidd join today!!!",bro)
end)                                                                                 local ui = Instance.new("TextButton")
ui.Size = UDim2.new(0.3, 0, 0.2, 0)
ui.Position = UDim2.new(0.4, 0, 0.3, 0)
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BorderColor3 = Color3.new(0, 0, 0)
ui.BorderSizePixel = 1
ui.Text = "Massage"
ui.BackgroundTransparency = 0 
ui.TextColor3 = Color3.new(255, 215, 0)
ui.Font = Enum.Font.Code                                          ui.TextSize = 15
ui.Parent = fr                                                                  ui.MouseButton1Down:Connect(function()
while wait(0.1) do
       msg = Instance.new("Message",workspace)
       msg.Text = " Team Xymatekidd was here1!1!1!!1"
       wait(0)
       msg:Destroy()
   end
end)