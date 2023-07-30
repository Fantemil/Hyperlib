local d = Instance.new("ScreenGui",game.CoreGui)
d.Name = "BrawlStarser"
local b = Instance.new("TextBox",d)
b.Size = UDim2.new(0,60,0,60)
b.Position = UDim2.new(0.5,0,0.5,0)
b.Active = true
b.ClearTextOnFocus = false
b.TextScaled = true
b.Text = ""
b.PlaceholderText = "Speed"
b.PlaceholderColor3 = Color3.new(0,0,0)

b.FocusLost:Connect(function(s,k)
if s == true and tonumber(b.Text) then

for i, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
v:AdjustSpeed(b.Text)
end
d:Destroy()

end
end)