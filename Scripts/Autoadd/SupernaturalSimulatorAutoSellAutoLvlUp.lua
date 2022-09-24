getgenv().AutoMuscle = true
getgenv().AutoSell = true


local Remote = game:GetService("ReplicatedStorage").RemoteEvent

while task.wait() do
 if AutoMuscle then
   local args = {
       [1] = {
           [1] = "GainMuscle"
       }
   }
   
   game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))    
 end

   if AutoSell then
       local args = {
           [1] = {
               [1] = "SellMuscle"
           }
       }
       
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
   end
end