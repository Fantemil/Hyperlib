getgenv().autofarm = false





local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()




local w = library:CreateWindow("Toys Trading") -- Creates the window

local b = w:CreateFolder("Open Gui") -- Creates the folder(U will put here your buttons,etc)

b:Label("By Saiky#2827",{
   TextSize = 25; -- Self Explaining
   TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
   BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
   
})

b:Toggle("Autofarm",function(bool)
   getgenv().autofarm = bool
   print(shared.toggle)
   if bool then
       auto()
           end
end)



b:DestroyGui()



 function auto()
   
     spawn(function()

while autofarm == true do

               local args = {
                    [1] = "purchase",
                               [2] = 10001,
                             [3] = 1
                               }

               game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))



               local args = {
   [1] = "purchase",
   [2] = 10001,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))



local args = {
   [1] = "purchase",
   [2] = 10001,
   [3] = 1
}



local args = {
   [1] = "purchase",
   [2] = 10001,
   [3] = 1
}



local args = {
   [1] = "purchase",
   [2] = 10001,
   [3] = 1
}



local args = {
   [1] = {
       ["10001"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10084,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10084
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()




local args = {
   [1] = {
       ["10084"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10100,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10100
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))





local args = {
   [1] = {
       ["10104"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))




local args = {
   [1] = 10012,
   [2] = true
}



local args = {
   [1] = {
       ["10100"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10026,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10026
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = {
       ["10151"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10070,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10070
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))




local args = {
   [1] = 10080
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = "sell",
   [2] = 10080,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))



game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()



local args = {
   [1] = {
       ["10070"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10069,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
wait()


local args = {
   [1] = 10069
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = {
       ["10015"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))



local args = {
   [1] = 10081,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10081
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))



local args = {
   [1] = 10069
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = "sell",
   [2] = 10069,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))


game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()


local args = {
   [1] = 10107
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = "sell",
   [2] = 10107,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))


game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()


local args = {
   [1] = 10098
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = "sell",
   [2] = 10098,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))


game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()


local args = {
   [1] = {
       ["10095"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10083,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10083
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = {
       ["10012"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10081,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10081
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = {
       ["10019"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10047,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10047
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = {
       ["10059"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10108,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10108
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = {
       ["10030"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10113,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10113
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = {
       ["10026"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))


local args = {
   [1] = 10108,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))


local args = {
   [1] = 10108
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10005"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10030,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10030
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10023"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10073,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10073
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10108"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10053,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10053
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10110"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10053,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10053
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10081"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10105,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10105
}
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10113"] = 3
   }
}


game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10131"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10112,
   [2] = true
}

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10112
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = "sell",
   [2] = 10071,
   [3] = 1
}

game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = {
       ["10053"] = 3
   }
}

game:GetService("ReplicatedStorage").Functions.Fuse.FuseRF:InvokeServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10063,
   [2] = true
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
   [1] = 10063
}

game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.PickAndDrop.SellRE:FireServer()

wait()

end

   

wait()
end)
end