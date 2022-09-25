local color = BrickColor.new(50,0,250)
local transparency = .8


local function _ESP(c)
  repeat wait() until c.PrimaryPart ~= nil
  for i,p in pairs(c:GetChildren()) do
    if p.ClassName == "Part" or p.ClassName == "MeshPart" then
      if p:FindFirstChild("shit") then p.shit:Destroy() end
      local a = Instance.new("BoxHandleAdornment",p)
      a.Name = "shit"
      a.Size = p.Size
      a.Color = color
      a.Transparency = transparency
      a.AlwaysOnTop = true    
      a.Visible = true    
      a.Adornee = p
      a.ZIndex = true    

    end
  end
end
local function ESP()
    for i,v in pairs(workspace.Players:GetChildren()) do
        for j,k in pairs(v:GetChildren()) do
           if k.ClassName == "Model" then
               print('yes')
               _ESP(k)
            end
        end
        v.ChildAdded:Connect(function(instance)
           _ESP(instance) 
        end)
    end
 end
ESP()