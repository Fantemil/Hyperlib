local args = {
   [1] = "YOUR USERNAME HERE"
}


local function dothing()
   while wait(0.1) do
   game:GetService("ReplicatedStorage").CompletedPullUp:FireServer(unpack(args))
   end
end

while wait(0.5) do
   dothing()
end