getgenv().Start = true
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GingerbreadMarkers = ReplicatedStorage.Resources.IceSkating.GingerbreadMarkers


for i, v in pairs(debug.getupvalue(require(ReplicatedStorage.Fsys).load("RouterClient").init, 4)) do
   v.Name = i
end
spawn(function()
   while wait() and Start do
       pcall(function()
           for i,v in pairs(GingerbreadMarkers:GetChildren()) do
               if v:IsA("BasePart") then
                   ReplicatedStorage.API:FindFirstChild("WinterEventAPI/PickUpGingerbread"):InvokeServer(v.Name)
               end
           end
           ReplicatedStorage.API:FindFirstChild("WinterEventAPI/RedeemPendingGingerbread"):FireServer()
           ReplicatedStorage.API:FindFirstChild("WinterEventAPI/SubmitIceSkatingTime"):FireServer(0)
       end)
   end
end)