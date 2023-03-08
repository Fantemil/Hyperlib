for i,v in pairs(workspace:GetDescendants()) do
if v.Name == "TouchInterest" and v.Parent.Name == "Part" then
    
    local m = Instance.new("TextLabel")

local aaa = Instance.new("BillboardGui")

aaa.MaxDistance = math.huge

aaa.AlwaysOnTop = true
aaa.Size = UDim2.new(3, 0, 3, 0)

        m.Parent = aaa 
    m.BorderSizePixel = 0
        
        m.Text = "!"
m.Size = UDim2.new(.69, 0, .69, 0)
m.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
aaa.Parent = v.Parent
                    end
                end
            
 

        