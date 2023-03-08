local bodyScales = {"BodyWidthScale", "BodyTypeScale", "BodyHeightScale", "HeadScale"}
for _, v in pairs(bodyScales) do
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", v, 9e25)
end