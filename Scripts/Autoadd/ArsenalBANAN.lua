 for i,v in pairs(workspace.Bananas:GetChildren()) do
   if v.Transparency == 0 then
       a = Instance.new("BillboardGui", v)
       a.Size = UDim2.new(0,20,0,20)
       a.AlwaysOnTop = true
       b = Instance.new("TextLabel", a)
       b.Size = UDim2.new(0,20,0,20)
       b.Text = "Banana"
       b.BackgroundTransparency = 1
       b.TextColor3 = Color3.fromRGB(255,255,255)
       b.TextStrokeTransparency = 0
   end
   
   v:GetPropertyChangedSignal("Transparency"):Connect(function()
       v.BillboardGui:Destroy()
   end)
end