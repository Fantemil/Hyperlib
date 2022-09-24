getgenv().Enabled = true; --// Can be changed to false

--// Variables
local getupvalue = debug.getupvalue or getupvalue;
if (not getupvalue) then return; end;
local Service = setmetatable({},{__index = function(t,k) return game:GetService(k) end});
local Weight = Service.Players.LocalPlayer.Backpack:WaitForChild('Weight');
local Add_Strength = Service.ReplicatedStorage:WaitForChild('addStrength');
local Value = math.pow(10,8); --// Dont change
local Key;
local C_Function;
--// Function grab
for _,Conn in next,getconnections(Weight.Activated) do
    C_Function = Conn.Function;
end;
--// Main Loop
while getgenv().Enabled do task.wait(.01);
    Key = getupvalue(C_Function,5);
    Add_Strength:FireServer(Key,Weight.Handle,Value);
end;