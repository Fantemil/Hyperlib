local args = {
   [1] = "Sell",
   [2] = {
       [1] = {
           ["onlyId"] = "15823026.4166416",
           ["Level"] = math.huge,
           ["ItemId"] = "weapon003"
           }                    
          }                      
         }
          
game:GetService("ReplicatedStorage").Events.WeaponSell:InvokeServer(unpack(args))