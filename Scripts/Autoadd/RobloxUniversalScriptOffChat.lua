local plr = game.Players.LocalPlayer

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)

plr.PlayerGui:WaitForChild("BubbleChat").ChildAdded:Connect(function(v)
   game:GetService("RunService").RenderStepped:Wait()
   if v:IsA("BillboardGui") then
       repeat v:Destroy() until not v:IsDescendantOf(plr)
   end
end)