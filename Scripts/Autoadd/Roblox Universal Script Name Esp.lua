local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
 local h = cr:WaitForChild("Humanoid")
 local hrp = cr:WaitForChild("Head")

 local text = Drawing.new("Text")
 text.Visible = false
 text.Center = true
 text.Outline = false 
 text.Font = 3
 text.Size = 16.16
 text.Color = Color3.new(170,170,170)

 local conection
 local conection2
 local conection3

 local function dc()
  text.Visible = false
  text:Remove()
  if conection then
   conection:Disconnect()
   conection = nil 
  end
  if conection2 then
   conection2:Disconnect()
   conection2 = nil 
  end
  if conection3 then
   conection3:Disconnect()
   conection3 = nil 
  end
 end

 conection2 = cr.AncestryChanged:Connect(function(_,parent)
  if not parent then
   dc()
  end
 end)

 conection3 = h.HealthChanged:Connect(function(v)
  if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
   dc()
  end
 end)

 conection = rs.RenderStepped:Connect(function()
  local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
  if hrp_onscreen then
   text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
   text.Text = "[ "..p.Name.." ]"
   text.Visible = true
  else
   text.Visible = false
  end
 end)
end

local function p_added(p)
 if p.Character then
  esp(p,p.Character)
 end
 p.CharacterAdded:Connect(function(cr)
  esp(p,cr)
 end)
end

for i,p in next, ps:GetPlayers() do 
 if p ~= lp then
  p_added(p)
 end
end

ps.PlayerAdded:Connect(p_added)