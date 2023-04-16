if disable then disable() end
local OreDeposits = workspace:WaitForChild("WORKSPACE_Interactables"):WaitForChild("Mining"):WaitForChild("OreDeposits")
local Storage = Instance.new("Folder",game:GetService("CoreGui"))
local connections = {}

local function highlight(model)
   if model:IsA("Model") then
       local OreRemaining = model:WaitForChild("DepositInfo"):WaitForChild("OreRemaining")
       local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Storage)
       BoxHandleAdornment.Adornee = model
       BoxHandleAdornment.AlwaysOnTop = true
       BoxHandleAdornment.ZIndex = 2
       BoxHandleAdornment.Transparency = OreRemaining.Value <= 0 and 1 or 0.5
       BoxHandleAdornment.Size = model:FindFirstChildWhichIsA("BasePart").Size
       BoxHandleAdornment.Color = model:FindFirstChild(model.Parent.Name.."Ore").BrickColor or BrickColor.new("Medium green")
       connections[model] = OreRemaining:GetPropertyChangedSignal("Value"):Connect(function()
           if OreRemaining.Value <= 0 then
               BoxHandleAdornment.Transparency = 1
               return
           end
           BoxHandleAdornment.Transparency = 0.5
       end)
   end
end

local function init(Folder)
   connections[Folder] = Folder.ChildAdded:Connect(highlight)
   for i,v in next, Folder:GetChildren() do
       highlight(v)
   end
end

for i,v in next, OreDeposits:GetChildren() do
   if v:IsA("Folder") then
       init(v)
   end
end

getgenv().disable = function()
   for i,v in next, connections do
       v:Disconnect()
   end
   Storage:Destroy()
end