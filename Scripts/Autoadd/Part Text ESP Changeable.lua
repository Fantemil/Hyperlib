local ores={
  "YourPartHere";
  "YourPartHere";
  "YourPartHere";
}
_G.infiniteLoop = true;
while _G.infiniteLoop == true do
    for __,v in pairs(game.Workspace.Mine:GetChildren()) do
        if v and v:IsA("BasePart")  and table.find(ores, v.Name) then
            local a = Instance.new("BillboardGui",v)
            a.Size = UDim2.new(1,0, 1,0)
            a.Name = "A"
            a.AlwaysOnTop = true
            local b = Instance.new("Frame",a)
            b.Size = UDim2.new(1,0, 1,0)
            b.BackgroundTransparency = 1
            b.BorderSizePixel = 0
            local c = Instance.new("TextLabel",b)
            c.Text = v.Name
            c.Size = UDim2.new(1,0, 1,0)
            c.BackgroundTransparency = 1
            c.BorderSizePixel = 0
            local c = Instance.new("Highlight")
        end
    end
wait(5)
end