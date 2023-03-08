local ohTable1 = {
 ["merchant"] = "spring_shop_pineapple",
 ["offerId"] = 2,
 ["amount"] = 6
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(ohTable1)