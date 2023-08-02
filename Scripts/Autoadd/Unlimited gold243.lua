local args = {
    [1] = "Buy",
    [2] = -9999999999999999,
    [3] = "Steel"
}

game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer(unpack(args))

--I have another script that lets you upgrade your damage, but it's ineffective.  If you want it, dm me on discord or just rspy.