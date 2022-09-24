local types = {
    "BodyWidthScale",
    "BodyProportionScale",
    "BodyTypeScale",
    "BodyHeightScale"
 }
 
 game:FindService("ReplicatedStorage").UpdateAvatar:FireServer("scale",unpack(types),9e24)