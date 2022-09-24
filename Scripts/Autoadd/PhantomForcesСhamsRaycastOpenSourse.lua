local plr = game.Players.LocalPlayer

local l_character = plr.Character or plr.CharacterAdded:wait()
local f_team
local e_team
local e_plrlist
local rs = game:GetService("RunService")
local camera = workspace.CurrentCamera
local pfId = 292439477
local pId = game.PlaceId
local is_pf = pfId == pId


local function geteplrlist()
  local t = {}
   if is_pf then
       local team_color_to_string = tostring(game.Players.LocalPlayer.TeamColor)
           if team_color_to_string == "Bright orange" then
               t = workspace.Players["Bright blue"]:GetChildren()
           else
               t = workspace.Players["Bright orange"]:GetChildren()
           end
   elseif not is_pf then
       if #game.Teams:GetChildren() > 0 then
           for i,v in next, game.Players:GetPlayers() do
               if v.Team~=game.Players.LocalPlayer.Team then
                   table.insert(t,v)
               end
           end
       else
           for i,v in next, game.Players:GetPlayers() do
               if v ~= game.Players.LocalPlayer then
                   table.insert(t,v)
                   end
               end
           end
       end
   return t
end

rs.Stepped:Connect(function()
e_plrlist = geteplrlist()
end)

local function check_for_esp(c_model)
  if not c_model then
      return
   else
       returnv = false
       for i,v in next, c_model:GetDescendants() do
          if v:IsA("BoxHandleAdornment") then
               returnv = true
               break
               end
           end
       return returnv
   end
end

local function remove_esp(c_model)
  for i,v in next, c_model:GetDescendants() do
      if v:IsA("BoxHandleAdornment") then
          v:Destroy()
      end
  end
end




local function cast_ray(body_part)
  local rp = RaycastParams.new()
  rp.FilterDescendantsInstances = l_character:GetDescendants()
  rp.FilterType = Enum.RaycastFilterType.Blacklist
 
  local rcr = workspace:Raycast(camera.CFrame.Position, (body_part.Position - camera.CFrame.Position).Unit * 15000,rp)
  if rcr and rcr.Instance:IsDescendantOf(body_part.Parent) then
      return true
  else
      return false
  end
end

local function create_esp(c_model)
   if not c_model then
       return
   else
      if check_for_esp(c_model) then
          for i,v in next, c_model:GetChildren() do
             if v:IsA("BasePart") and v:FindFirstChild("BoxHandleAdornment") then
                 local walt = v:FindFirstChild("BoxHandleAdornment")
                  if cast_ray(v) then
                      walt.Color3 = Color3.fromRGB(0,255,0)
                  else
                      walt.Color3 = Color3.fromRGB(255,0,0)
                   end
               end
           end
       else
          for i,v in next, c_model:GetChildren() do
              if v:IsA("BasePart") then
                  local b = Instance.new("BoxHandleAdornment")
                  b.Parent = v
                  b.Adornee = v
                  b.AlwaysOnTop = true
                  b.Size = v.Size
                  b.ZIndex = 2
                  b.Transparency = 0.5
              end
          end
      end
   end
end

setfpscap(10000)

rs.RenderStepped:Connect(function()
  for i,v in next, e_plrlist do
      if is_pf then
           create_esp(v)
      else
           create_esp(v.Character)
       end
   end
end)