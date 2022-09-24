-- made by iiiSealGamerxxx#0089
function authchar()
authargs = {
   [1] = "KuID"
}

game:GetService("ReplicatedStorage"):FindFirstChild("b\7\n\7\n\7"):FireServer(unpack(authargs))
end

for i = 0, 10 do
   game.RunService.RenderStepped:Connect(function(step)
       authchar()
   end)
   end