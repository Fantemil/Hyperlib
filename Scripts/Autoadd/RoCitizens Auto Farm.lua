getgenv().AutoFarm = true -- false/off true/on
spawn(function()
while AutoFarm do task.wait(0.1)
   pcall(function()

local args = {
   [1] = "Food Clerk",
   [2] = "Nomburger"
}

game:GetService("ReplicatedStorage").Modules.Work.Working.Relays.StartShift:InvokeServer(unpack(args))
wait()
local args = {
   [1] = "Nurse",
   [2] = "Hospital"
}

game:GetService("ReplicatedStorage").Modules.Work.Working.Relays.StartShift:InvokeServer(unpack(args))
end) end end)
spawn(function()
while AutoFarm do task.wait()
   pcall(function()
for i,v in pairs(game:GetService("Workspace").WorkEnvironments["Nomburger_Food Clerk"]:GetChildren()) do
      if v.Name == "Station" then
        Customer = v.Customers:FindFirstChild("Customer")


                  workspace.WorkEnvironments["Nomburger_Food Clerk"].EnvironmentHandler.CompleteOrder:FireServer(v, Customer)
                  wait()
              end end
end) end end)
spawn(function()
while AutoFarm do task.wait()
   pcall(function()
for i ,v in pairs(game:GetService("Workspace").WorkEnvironments["Hospital_Nurse"]:GetChildren()) do
if v.Name == "Station" then
Money  =  v.Patients:FindFirstChild("Patient")

game:GetService("ReplicatedStorage").Relays.Work.FulfillPatient:FireServer(Money, "Success")
wait()
end end end) end end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
   local vu = game:GetService("VirtualUser")
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)