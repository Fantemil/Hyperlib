getgenv().printidentity = function()
  print("Current identity is " .. "0")
end
while wait(0.1) do 
  printidentity()
end