game:GetService("CoreGui").Codex.gui.navbar.main.codexIcon.Image = [[rbxassetid://18135302048]]
wait(0)
game:GetService("CoreGui").Codex.gui.navbar.main.title.Text = "CubiX Android"
wait(0)
game:GetService("CoreGui").Codex.gui.navbar.main.container.editor.text.Text = "Script Editor"
wait(0)
game:GetService("CoreGui").Codex.gui.navbar.main.container.console.text.Text = "Lua Console"
wait(0)
local cle = Instance.new('TextButton')

cle.Name = [[cle]]
cle.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.290196)
cle.BorderSizePixel = 0
cle.Position = UDim2.new(0, 0, 100, 0)
cle.Size = UDim2.new(0, 50, 0, 50)
cle.Parent = game:GetService("CoreGui").Codex.gui.tabs.console.buttons
cle.Text = [[]]
cle.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)

local cornr = Instance.new('UICorner')
cornr.Parent = cle
cornr.Name = [[cornr]]



local icn = Instance.new('ImageLabel')

icn.Name = [[icn]]
icn.AnchorPoint = Vector2.new(0.5, 0.5)
icn.BackgroundTransparency = 1
icn.Parent = cle
icn.BorderSizePixel = 0
icn.Position = UDim2.new(0.5, 0, 0.5, 0)
icn.Size = UDim2.new(0, 28, 0, 28)
icn.Image = [[rbxassetid://18142593358]]
icn.ImageColor3 = Color3.new(0.623529, 0.643137, 0.729412)

local function Lo()
game:GetService("CoreGui").Codex.gui.tabs.console.content.ChildAdded:Connect(function(child)
    if child:IsA("TextLabel") then
        setclipboard(child.Text)
      end
end)
end

cle.MouseButton1Click:Connect(Lo)
