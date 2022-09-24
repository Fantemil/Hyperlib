local args = {
   [1] = "Currency",
   [2] = "CurrencyIdFree",
   [3] = 9e9
}

game:GetService("ReplicatedStorage").CorePackageScripts.RemoteEvents.ClientToServer.PlayerPickedUpCurrency:FireServer(unpack(args))