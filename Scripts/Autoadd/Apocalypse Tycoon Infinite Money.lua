_G.toggle = true --true is on | false is off

pcall(function()
   while _G.toggle do wait()
       local args = {
           [1] = game:GetService("Players").LocalPlayer
       }
       
       game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService"):WaitForChild("RF"):WaitForChild("PayIncome"):InvokeServer(unpack(args))
   end
end)