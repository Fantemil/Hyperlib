local FaucetModule = require(game:GetService("ReplicatedStorage").Modules.ActionModules.GameplayMechanics.FaucetHandler)
local DoughFolder = game:GetService("Workspace").GrabbableAssets.Dough
local GameplayFolder = game:GetService("Workspace").GameplayAssets
spawn(function()
   FaucetModule.open()
end)
wait(1)
game:GetService("Workspace").GrabbableAssets.Bread.ChildAdded:Connect(function(child)
   wait(0.5)
   firetouchinterest(game:GetService("Workspace").BasicOven.Mechanisms.OvenHitbox,child,0)
   firetouchinterest(game:GetService("Workspace").BasicOven.Mechanisms.OvenHitbox,child,1)
   repeat wait() until child.Color == Color3.new(188/255, 155/255, 93/255)
   firetouchinterest(game:GetService("Workspace").CollectionRegion.CollectionPoint,child,0)
   firetouchinterest(game:GetService("Workspace").CollectionRegion.CollectionPoint,child,1)
end)

game:GetService('RunService').Stepped:connect(function()
   local Dough = DoughFolder:FindFirstChild("FlourPart")
   if Dough and GameplayFolder:FindFirstChild("WaterDroplet") then
       firetouchinterest(Dough,GameplayFolder:FindFirstChild("WaterDroplet"),0)
       firetouchinterest(Dough,GameplayFolder:FindFirstChild("WaterDroplet"),1)
   end
end)

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
   v:Disable()
end