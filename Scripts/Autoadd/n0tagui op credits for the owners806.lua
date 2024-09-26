-- Open source

-- CriaÃ§Ã£o da ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- CriaÃ§Ã£o do Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 200, 0, 300)
mainFrame.Position = UDim2.new(0.5, -100, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)

mainFrame.Parent = screenGui

-- CriaÃ§Ã£o da TextLabel no topo
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "n0tagui v2 OP [Pocket]"
titleLabel.Parent = mainFrame

-- CriaÃ§Ã£o do ScrollingFrame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, -30)
scrollingFrame.Position = UDim2.new(0, 0, 0, 30)
scrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 500)
scrollingFrame.ScrollBarThickness = 23
scrollingFrame.Parent = mainFrame

-- Adicionando TextButtons ao ScrollingFrame um por um
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.8, 0, 0, 50)
button1.Position = UDim2.new(0.1, 0, 0, 0)
button1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button1.TextColor3 = Color3.fromRGB(255, 255, 255)
button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
button1.Text = "Decal Spam"
button1.Parent = scrollingFrame

local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.8, 0, 0, 50)
button2.Position = UDim2.new(0.1, 0, 0, 60)
button2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
button2.Text = "Skybox"
button2.Parent = scrollingFrame

local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0.8, 0, 0, 50)
button3.Position = UDim2.new(0.1, 0, 0, 120)
button3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button3.TextColor3 = Color3.fromRGB(255, 255, 255)
button3.BorderColor3 = Color3.fromRGB(0, 0, 0)
button3.Text = "Close"
button3.Parent = scrollingFrame

local button4 = Instance.new("TextButton")
button4.Size = UDim2.new(0.8, 0, 0, 50)
button4.Position = UDim2.new(0.1, 0, 0, 180)
button4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button4.TextColor3 = Color3.fromRGB(255, 255, 255)
button4.BorderColor3 = Color3.fromRGB(0, 0, 0)
button4.Text = "Particles Lite"
button4.Parent = scrollingFrame

local button5 = Instance.new("TextButton")
button5.Size = UDim2.new(0.8, 0, 0, 50)
button5.Position = UDim2.new(0.1, 0, 0, 240)
button5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button5.TextColor3 = Color3.fromRGB(255, 255, 255)
button5.BorderColor3 = Color3.fromRGB(0, 0, 0)
button5.Text = "n0tagui v7"
button5.Parent = scrollingFrame

local button6 = Instance.new("TextButton")
button6.Size = UDim2.new(0.8, 0, 0, 50)
button6.Position = UDim2.new(0.1, 0, 0, 300)
button6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button6.TextColor3 = Color3.fromRGB(255, 255, 255)
button6.BorderColor3 = Color3.fromRGB(0, 0, 0)
button6.Text = "Hint"
button6.Parent = scrollingFrame

local button7 = Instance.new("TextButton")
button7.Size = UDim2.new(0.8, 0, 0, 50)
button7.Position = UDim2.new(0.1, 0, 0, 360)
button7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button7.TextColor3 = Color3.fromRGB(255, 255, 255)
button7.BorderColor3 = Color3.fromRGB(0, 0, 0)
button7.Text = "IY + NA"
button7.Parent = scrollingFrame

-- CriaÃ§Ã£o do novo botÃ£o
local button8 = Instance.new("TextButton")
button8.Size = UDim2.new(0.8, 0, 0, 50)
button8.Position = UDim2.new(0.1, 0, 0, 420)
button8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button8.TextColor3 = Color3.fromRGB(255, 255, 255)
button8.BorderColor3 = Color3.fromRGB(0, 0, 0)
button8.Text = "antiskid[removes hint...]"
button8.Parent = scrollingFrame

-- CriaÃ§Ã£o do novo botÃ£o
local button9 = Instance.new("TextButton")
button9.Size = UDim2.new(0.8, 0, 0, 50)
button9.Position = UDim2.new(0.1, 0, 0, 480) -- Ajuste a posiÃ§Ã£o conforme necessÃ¡rio
button9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button9.TextColor3 = Color3.fromRGB(255, 255, 255)
button9.BorderColor3 = Color3.fromRGB(0, 0, 0)
button9.Text = "Page 2"
button9.Parent = scrollingFrame


function sklb()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/pedroluckygod/Yes/main/page2"))()
end
-- ConexÃ£o do novo botÃ£o com a funÃ§Ã£o

-- DefiniÃ§Ã£o da nova funÃ§Ã£o
function antiskid()
    
    for i,v in pairs(game.Workspace:GetDescendants()) do
      if v:IsA("Message") or v:IsA("Hint") or v:IsA("Sound") or v:IsA("Decal") or v:IsA("ParticleEmitter") then do
        v:Destroy()
      end
      end
      for a,b in pairs(game.Lighting:GetDescendants()) do
        if b:IsA("Sky") then do
          b:Destroy()
        end
        end
        end
        end
      end



function ds()
  local ID =18512422227
function spamDecal(v)
    if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("rbxassetid://"..Id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
function decalspam(id) --use this function, not the one on top
    Id = id
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("rbxassetid://"..id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
end
 
decalspam(ID)
end

function sk()
  game.Lighting:ClearAllChildren()
wait(0.3)
  
  local newSkyboxId = "rbxassetid://18512422227"
local skyboxProps = {"SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp"}

local sky = game.Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", game.Lighting)
for _, prop in ipairs(skyboxProps) do sky[prop] = newSkyboxId 
  
end
end

function pt()
  screenGui:Destroy()
end

function ptl()
  local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Head)
pe.Texture = "rbxassetid://18512422227"
pe.VelocitySpread = 200
se = Instance.new("ParticleEmitter",v.Character.Head)
se.Texture = "rbxassetid://18512422227"
se.VelocitySpread = 200
fe = Instance.new("ParticleEmitter",v.Character.Head)
fe.Texture = "rbxassetid://18512422227"
fe.VelocitySpread = 200
end
end

function th()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/pedroluckygod/Yes/main/notaguiv7.txt"))()
end

function h()
  local ht = Instance.new("Hint",game.Workspace)
  ht.Text = "team n0taPlayer join today!!1!"
end

function iyna()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end

-- ConexÃ£o dos botÃµes com as funÃ§Ãµes





button1.MouseButton1Down:Connect(ds)
button2.MouseButton1Down:Connect(sk)
button3.MouseButton1Down:Connect(pt)
button4.MouseButton1Down:Connect(ptl)
button5.MouseButton1Down:Connect(th)
button6.MouseButton1Down:Connect(h)
button7.MouseButton1Down:Connect(iyna)
button8.MouseButton1Down:Connect(antiskid)
button9.MouseButton1Down:Connect(sklb)



local dragging = false
local dragInput, mousePos, framePos

local function update(input)
    local delta = input.Position - mousePos
    mainFrame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        framePos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)